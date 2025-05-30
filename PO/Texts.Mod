MODULE Texts;
  IMPORT Files := POFiles;

  CONST (*scanner symbol classes*)
    Inval* = 0;         (*invalid symbol*)
    Name* = 1;          (*name s (length len)*)
    String* = 2;        (*literal string s (length len)*)
    Int* = 3;           (*integer i (decimal or hexadecimal)*)
    Real* = 4;          (*real number x*)
    Char* = 6;          (*special character c*)

    TAB* = 9X; CR* = 0AX;
    TextTag = 0F1X;
    replace* = 0; insert* = 1; delete* = 2; unmark* = 3;  (*op-codes*)

  TYPE Piece = POINTER TO PieceDesc;
    PieceDesc = RECORD
      f: Files.File;
      off, len: INTEGER;
      col: INTEGER;
      prev, next: Piece
    END;

    Text* = POINTER TO TextDesc;
    Notifier* = PROCEDURE (T: Text; op: INTEGER; beg, end: INTEGER);
    TextDesc* = RECORD
      len*: INTEGER;
      changed*: BOOLEAN;
      notify*: Notifier;
      trailer: Piece;
      pce: Piece;  (*cache*)
      org: INTEGER (*cache*)
    END;

    Reader* = RECORD
      eot*: BOOLEAN;
      col*: INTEGER;
      ref: Piece;
      org: INTEGER;
      off: INTEGER;
      rider: Files.Rider
    END;

    Scanner* = RECORD (Reader)
      nextCh*: CHAR;
      line*, class*: INTEGER;
      i*: INTEGER;
      x*: REAL;
      c*: CHAR;
      len*: INTEGER;
      s*: ARRAY 32 OF CHAR
    END;

    Buffer* = POINTER TO BufDesc;
    BufDesc* = RECORD
      len*: INTEGER;
      header, last: Piece
    END;

    Writer* = RECORD
      buf*: Buffer;
      col*: INTEGER;
      rider: Files.Rider
    END;     

  VAR TrailerFile: Files.File;

  (* -------------------- Filing ------------------------*)

  PROCEDURE Trailer(): Piece;
    VAR Q: Piece;
  BEGIN NEW(Q);
    Q.f := TrailerFile; Q.off := -1; Q.len := 1; Q.col := 0; RETURN Q
  END Trailer;

  PROCEDURE Load* (VAR R: Files.Rider; T: Text);
    VAR Q, q, p: Piece;
      off, len: INTEGER; bt: BYTE;
      f: Files.File;
  BEGIN f := Files.Base(R); Q := Trailer(); p := Q;
    Files.ReadInt(R, off); Files.ReadInt(R, len);
    WHILE len # 0 DO
      NEW(q); q.len := len;
      Files.ReadByte(R, bt); q.col := bt;
      q.f := f; q.off := off; off := off + q.len;
      p.next := q; q.prev := p; p := q; Files.ReadInt(R, len)
    END;
    p.next := Q; Q.prev := p;
    T.trailer := Q; Files.ReadInt(R, T.len); (*Files.Set(R, f, Files.Pos(R) + T.len)*)
  END Load;

  PROCEDURE Open* (T: Text; name: ARRAY OF CHAR);
    VAR f: Files.File; R: Files.Rider; Q, q: Piece;
      tag: CHAR; len: INTEGER;
  BEGIN f := Files.Old(name);
    IF f # NIL THEN
      Files.Set(R, f, 0); Files.Read(R, tag); 
      IF tag = TextTag THEN Load(R, T)
      ELSE (*Ascii file*)
        len := Files.Length(f); Q := Trailer();
        NEW(q); q.col := 0E3H; q.f := f; q.off := 0; q.len := len;
        Q.next := q; q.prev := Q; q.next := Q; Q.prev := q; T.trailer := Q; T.len := len
      END
    ELSE (*create new text*)
      Q := Trailer(); Q.next := Q; Q.prev := Q; T.trailer := Q; T.len := 0
    END ;
    T.changed := FALSE; T.org := -1; T.pce := T.trailer (*init cache*)
  END Open;

  (* -------------------- Editing ----------------------- *)

  PROCEDURE OpenBuf* (B: Buffer);
  BEGIN NEW(B.header); (*null piece*)
    B.last := B.header; B.len := 0
  END OpenBuf;

  PROCEDURE FindPiece (T: Text; pos: INTEGER; VAR org: INTEGER; VAR pce: Piece);
    VAR p: Piece; porg: INTEGER;
  BEGIN p := T.pce; porg := T.org;
    IF pos >= porg THEN
      IF  pos >= porg + p.len THEN REPEAT INC(porg, p.len); p := p.next UNTIL (pos < porg + p.len) OR (p = T.pce) END
(*WHILE pos >= porg + p.len DO INC(porg, p.len); p := p.next END*)
    ELSE (*p := p.prev; DEC(porg, p.len);*)
      REPEAT p := p.prev; DEC(porg, p.len) UNTIL (pos >= porg) OR (p = T.pce) 
(*WHILE pos < porg DO p := p.prev; DEC(porg, p.len) END*)
    END ;
    T.pce := p; T.org := porg;  (*update cache*)
    pce := p; org := porg
  END FindPiece;

  PROCEDURE SplitPiece (p: Piece; off: INTEGER; VAR pr: Piece);
    VAR q: Piece;
  BEGIN
    IF off > 0 THEN NEW(q);
      q.col := p.col;
      q.len := p.len - off;
      q.f := p.f; q.off := p.off + off;
      p.len := off;
      q.next := p.next; p.next := q;
      q.prev := p; q.next.prev := q;
      pr := q
    ELSE pr := p
    END
  END SplitPiece;

  PROCEDURE Insert* (T: Text; pos: INTEGER; B: Buffer);
    VAR pl, pr, p, qb, qe: Piece; org, end: INTEGER;
  BEGIN
    FindPiece(T, pos, org, p); SplitPiece(p, pos - org, pr);
    IF T.org >= org THEN T.org := org - p.prev.len; T.pce := p.prev END ;
    pl := pr.prev; qb := B.header.next;
    IF (qb # NIL) & (qb.f = pl.f) & (qb.off = pl.off + pl.len)
        & (qb.col = pl.col) THEN
      pl.len := pl.len + qb.len; qb := qb.next
    END;
    IF qb # NIL THEN qe := B.last;
      qb.prev := pl; pl.next := qb; qe.next := pr; pr.prev := qe
    END;
    T.len := T.len + B.len; end := pos + B.len;
    B.last := B.header; B.last.next := NIL; B.len := 0;
    T.changed := TRUE;
    IF T.notify # NIL THEN  T.notify(T, insert, pos, end) END
  END Insert;

  PROCEDURE Append* (T: Text; B: Buffer);
  BEGIN Insert(T, T.len, B)
  END Append;

  (* ------------------ Access: Readers ------------------------- *)

  PROCEDURE OpenReader* (VAR R: Reader; T: Text; pos: INTEGER);
    VAR p: Piece; org: INTEGER;
  BEGIN FindPiece(T, pos, org, p);
    R.ref := p; R.org := org; R.off := pos - org;
    Files.Set(R.rider, p.f, p.off + R.off); R.eot := FALSE
  END OpenReader;

  PROCEDURE Read* (VAR R: Reader; VAR ch: CHAR);
  BEGIN Files.Read(R.rider, ch);
    R.col := R.ref.col;
    INC(R.off);
    IF R.off = R.ref.len THEN
      IF R.ref.f = TrailerFile THEN R.eot := TRUE END;
      R.ref := R.ref.next; R.org := R.org + R.off; R.off := 0;
      Files.Set(R.rider, R.ref.f, R.ref.off)
    END
  END Read;

  PROCEDURE Pos* (VAR R: Reader): INTEGER;
  BEGIN RETURN R.org + R.off
  END Pos;  

  (* ------------------ Access: Scanners (NW) ------------------------- *)

  PROCEDURE OpenScanner* (VAR S: Scanner; T: Text; pos: INTEGER);
  BEGIN OpenReader(S, T, pos); S.line := 0; S.nextCh := " "
  END OpenScanner;

  (*floating point formats:
    x = 1.m * 2^(e-127)   bit 0: sign, bits 1- 8: e, bits  9-31: m
    x = 1.m * 2^(e-1023)  bit 0: sign, bits 1-11: e, bits 12-63: m *)

  PROCEDURE Ten*(n: INTEGER): REAL;
    VAR t, p: REAL;
  BEGIN t := 1.0; p := 10.0;   (*compute 10^n *)
    WHILE n > 0 DO
      IF ODD(n) THEN t := p * t END ;
      p := p*p; n := n DIV 2
    END ;
    RETURN t
  END Ten;

  PROCEDURE Scan* (VAR S: Scanner);
    CONST maxExp = 38; maxM = 16777216; (*2^24*)
    VAR ch: CHAR;
      neg, negE, hex: BOOLEAN;
      i, j, h, d, e, n, s: INTEGER;
      x: REAL;
  BEGIN ch := S.nextCh; i := 0;
    WHILE (ch = " ") OR (ch = TAB) OR (ch = CR) DO
      IF ch = CR THEN INC(S.line) END ;
      Read(S, ch)
    END ;
    IF ("A" <= ch) & (ch <= "Z") OR ("a" <= ch) & (ch <= "z") THEN (*name*)
      REPEAT S.s[i] := ch; INC(i); Read(S, ch)
      UNTIL ((ch # "_") & ((ch < "0") & (ch # ".") OR ("9" < ch) & (ch < "A") OR ("Z" < ch) & (ch < "a") OR ("z" < ch))) OR (i = 31);
      S.s[i] := 0X; S.len := i; S.class := Name
    ELSIF ch = 22X THEN (*string*)
      Read(S, ch);
      WHILE (ch # 22X) & (ch >= " ") & (i # 31) DO S.s[i] := ch; INC(i); Read(S, ch) END;
      S.s[i] := 0X; S.len := i+1; Read(S, ch); S.class := String
    ELSE hex := FALSE;
      IF ch = "-" THEN neg := TRUE; Read(S, ch) ELSE neg := FALSE END ;
      IF ("0" <= ch) & (ch <= "9") THEN (*number*)
        n := ORD(ch) - 30H; h := n; Read(S, ch);
        WHILE ("0" <= ch) & (ch <= "9") OR ("A" <= ch) & (ch <= "F") DO
          IF ch <= "9" THEN d := ORD(ch) - 30H ELSE d := ORD(ch) - 37H; hex := TRUE END ;
          n := 10*n + d; h := 10H*h + d; Read(S, ch)
        END ;
        IF ch = "H" THEN (*hex integer*) Read(S, ch); S.i := h; S.class := Int  (*neg?*)
        ELSIF ch = "." THEN (*real number*)
          Read(S, ch); x := 0.0; e := 0; j := 0;
          WHILE ("0" <= ch) & (ch <= "9") DO  (*fraction*)
            h := 10*n + (ORD(ch) - 30H);
            IF h < maxM THEN n := h; INC(j) END ;
            Read(S, ch)
          END ;
          IF ch = "E" THEN (*scale factor*)
            s := 0; Read(S, ch);
            IF ch = "-" THEN negE := TRUE; Read(S, ch)
            ELSE negE := FALSE;
              IF ch = "+" THEN Read(S, ch) END
            END ;
            WHILE ("0" <= ch) & (ch <= "9") DO
              s := s*10 + ORD(ch) - 30H; Read(S, ch)
            END ;
            IF negE THEN DEC(e, s) ELSE INC(e, s) END ;
          END ;
          x := FLT(n); DEC(e, j);
          IF e < 0 THEN
            IF e >= -maxExp THEN x := x / Ten(-e) ELSE x := 0.0 END
          ELSIF e > 0 THEN
            IF e <= maxExp THEN x := Ten(e) * x ELSE x := 0.0 END
          END ;
          IF neg THEN S.x := -x ELSE S.x := x END ;
          IF hex THEN S.class := 0 ELSE S.class := Real END
        ELSE (*decimal integer*)
          IF neg THEN S.i := -n ELSE S.i := n END;
          IF hex THEN S.class := Inval ELSE S.class := Int END
        END
      ELSE (*special character*) S.class := Char;
        IF neg THEN S.c := "-" ELSE S.c := ch; Read(S, ch) END
      END
    END ;
    S.nextCh := ch
  END Scan;

  (* --------------- Access: Writers (NW) ------------------ *)

  PROCEDURE OpenWriter* (VAR W: Writer);
  BEGIN NEW(W.buf);
    OpenBuf(W.buf); W.col := 1FH;
    Files.Set(W.rider, Files.New(""), 0)
  END OpenWriter;

  PROCEDURE Write* (VAR W: Writer; ch: CHAR);
    VAR p: Piece;
  BEGIN
    IF W.buf.last.col # W.col THEN
      NEW(p); p.f := Files.Base(W.rider); p.off := Files.Pos(W.rider); p.len := 0;
      p.col := W.col;
      p.next := NIL; W.buf.last.next := p;
      p.prev := W.buf.last; W.buf.last := p
    END;
    Files.Write(W.rider, ch);
    INC(W.buf.last.len); INC(W.buf.len)
  END Write;

  PROCEDURE WriteString* (VAR W: Writer; s: ARRAY OF CHAR);
    VAR i: INTEGER;
  BEGIN i := 0;
    WHILE s[i] >= " " DO Write(W, s[i]); INC(i) END
  END WriteString;

  PROCEDURE WriteInt* (VAR W: Writer; x, n: INTEGER);
    VAR i: INTEGER; x0: INTEGER;
      a: ARRAY 10 OF CHAR;
  BEGIN
    IF ROR(x, 31) = 1 THEN WriteString(W, " -2147483648")
    ELSE i := 0;
      IF x < 0 THEN DEC(n); x0 := -x ELSE x0 := x END;
      REPEAT
        a[i] := CHR(x0 MOD 10 + 30H); x0 := x0 DIV 10; INC(i)
      UNTIL x0 = 0;
      WHILE n > i DO Write(W, " "); DEC(n) END;
      IF x < 0 THEN Write(W, "-") END;
      REPEAT DEC(i); Write(W, a[i]) UNTIL i = 0
    END
  END WriteInt;

  PROCEDURE WriteHex* (VAR W: Writer; x: INTEGER);
    VAR i: INTEGER; y: INTEGER;
      a: ARRAY 10 OF CHAR;
  BEGIN i := 0; Write(W, " ");
    REPEAT y := x MOD 10H;
      IF y < 10 THEN a[i] := CHR(y + 30H) ELSE a[i] := CHR(y + 37H) END;
      x := x DIV 10H; INC(i)
    UNTIL i = 8;
    REPEAT DEC(i); Write(W, a[i]) UNTIL i = 0
  END WriteHex;

  PROCEDURE WriteLn* (VAR W: Writer);
  BEGIN Write(W, CR)
  END WriteLn;

BEGIN TrailerFile := Files.New("")
END Texts.
