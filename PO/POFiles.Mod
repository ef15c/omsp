MODULE POFiles;
  IMPORT SYSTEM, FileDir, Files, Conv;

  TYPE
      File*    = POINTER TO FileDesc;

    Rider* =
      RECORD eof*: BOOLEAN;
        res*: INTEGER;
        base: File
      END ;

    FileDesc =
      RECORD file: Files.File;
        tmpName, name: ARRAY 32 OF CHAR
      END ;

  VAR tempNameIdx: BYTE;
    tfn: ARRAY 32 OF CHAR; tf: File;

  PROCEDURE MakeTempName*(VAR tn: ARRAY OF CHAR);
    VAR nn: ARRAY 4 OF CHAR;
      i: INTEGER;
  BEGIN Conv.ConvInt(tempNameIdx, nn); INC(tempNameIdx);
    tn := ".noname"; i := 0;
    WHILE (i < LEN(nn)) & (nn[i] # 0X) DO tn[i + 7] := nn[i]; INC(i) END;
    tn[i + 7] := 0X
  END MakeTempName;
  
  PROCEDURE Old*(name: ARRAY OF CHAR): File;
    VAR f: File;
  BEGIN 
    IF name[0] = 0X THEN f := NIL
    ELSE NEW(f); f.name := name; f.tmpName := name;
      f.file := Files.Open(name, "rb+");
      IF f.file = NIL THEN f := NIL END
    END;
    
    RETURN f
  END Old;

  PROCEDURE New*(name: ARRAY OF CHAR): File;
    VAR f: File;
  BEGIN NEW(f); f.name := name;
    MakeTempName(f.tmpName); f.file := Files.Open(f.tmpName, "wb+");
    IF f.file = NIL THEN f := NIL END;
    
    RETURN f
  END New;
  
  PROCEDURE Register*(f: File);
    VAR res: INTEGER;
  BEGIN Files.Close(f.file);
    IF f.name # f.tmpName THEN
      res := FileDir.remove(f.name);
      res := FileDir.rename(f.tmpName, f.name); ASSERT(res = 0);
    END; f.file := NIL; f.name := ""; f.tmpName := ""
  END Register;
  
  PROCEDURE Close*(f: File);
  BEGIN Files.Close(f.file); f.file := NIL; f.name := ""; f.tmpName := ""
  END Close;

(*---------------------------Read---------------------------*)

  PROCEDURE Set*(VAR r: Rider; f: File; pos: INTEGER);
  BEGIN  r.eof := FALSE; r.res := 0;
    IF f # NIL THEN
      r.base := f; Files.Seek(f.file, pos, Files.SeekSet)
    ELSE r.base:= NIL
    END
  END Set;

  PROCEDURE Pos*(VAR r: Rider): INTEGER;
  BEGIN RETURN Files.Tell(r.base.file)
  END Pos;

  PROCEDURE Base*(VAR r: Rider): File;
  BEGIN RETURN r.base
  END Base;

  PROCEDURE Length*(f: File): INTEGER;
    VAR l, cp: INTEGER;
  BEGIN cp := Files.Tell(f.file);
    Files.Seek(f.file, 0, Files.SeekEnd); l := Files.Tell(f.file);
    Files.Seek(f.file, cp, Files.SeekSet)
    
    RETURN l
  END Length;

  PROCEDURE ReadByte*(VAR r: Rider; VAR x: BYTE);
    VAR ch: CHAR;
  BEGIN 
    IF ~Files.Eof(r.base.file) THEN Files.ReadChar(r.base.file, ch)
    ELSE ch := 0X; r.eof := TRUE
    END;
    x := ORD(ch)
  END ReadByte;

  PROCEDURE Read*(VAR r: Rider; VAR ch: CHAR);
    (*same as ReadByte*)
  BEGIN 
    IF ~Files.Eof(r.base.file) THEN Files.ReadChar(r.base.file, ch)
    ELSE ch := 0X; r.eof := TRUE
    END
  END Read;
  
  PROCEDURE ReadInt*(VAR R: Rider; VAR x: INTEGER);
    VAR x0, x1, x2, x3: BYTE;
  BEGIN ReadByte(R, x0); ReadByte(R, x1); ReadByte(R, x2); ReadByte(R, x3);
    x := ((x3 * 100H + x2) * 100H + x1) * 100H + x0
  END ReadInt;

  PROCEDURE ReadSet*(VAR R: Rider; VAR s: SET);
    VAR n: INTEGER;
  BEGIN ReadInt(R, n); s := SYSTEM.VAL(SET, n)
  END ReadSet;

  PROCEDURE ReadString*(VAR R: Rider; VAR x: ARRAY OF CHAR);
    VAR i: INTEGER; ch: CHAR;
  BEGIN i := 0; Read(R, ch);
    WHILE ch # 0X DO
      IF i < LEN(x)-1 THEN x[i] := ch; INC(i) END ;
      Read(R, ch)
    END ;
    x[i] := 0X
  END ReadString;

  PROCEDURE ReadNum*(VAR R: Rider; VAR x: INTEGER);
    VAR n, y: INTEGER; b: BYTE;
  BEGIN n := 32; y := 0; ReadByte(R, b);
    WHILE b >= 80H DO y := ROR(y + b-80H, 7); DEC(n, 7); ReadByte(R, b) END ;
    IF n <= 4 THEN x := ROR(y + b MOD 10H, 4) ELSE x := ASR(ROR(y + b, 7), n-7) END
  END ReadNum;

  (*---------------------------Write---------------------------*)

  PROCEDURE Write*(VAR r: Rider; ch: CHAR);
  BEGIN Files.WriteChar(r.base.file, ch) (*same as WriteByte*)
  END Write;

  PROCEDURE WriteByte*(VAR r: Rider; x: BYTE);
  BEGIN Files.WriteChar(r.base.file, CHR(x))
  END WriteByte;

  PROCEDURE WriteInt*(VAR R: Rider; x: INTEGER);
  BEGIN WriteByte(R, x MOD 100H);
    WriteByte(R, x DIV 100H MOD 100H);
    WriteByte(R, x DIV 10000H MOD 100H);
    WriteByte(R, x DIV 1000000H MOD 100H)
  END WriteInt;

  PROCEDURE WriteSet*(VAR R: Rider; s: SET);
  BEGIN WriteInt(R, ORD(s))
  END WriteSet;

  PROCEDURE WriteString*(VAR R: Rider; x: ARRAY OF CHAR);
    VAR i: INTEGER; ch: CHAR;
  BEGIN i := 0;
    REPEAT ch := x[i]; Write(R, ch); INC(i) UNTIL ch = 0X
  END WriteString;

  PROCEDURE WriteNum*(VAR R: Rider; x: INTEGER);
  BEGIN
    WHILE (x < -40H) OR (x >= 40H) DO WriteByte(R, x MOD 80H + 80H); x := ASR(x, 7) END ;
    WriteByte(R, x MOD 80H)
  END WriteNum;

BEGIN
  REPEAT MakeTempName(tfn); tf := Old(tfn);
    IF tf # NIL THEN Files.Close(tf.file);
      tf := New(tfn); Files.Close(tf.file) (*clear temporary file*)
    END
  UNTIL tempNameIdx = 0
END POFiles.

