!! (SYMFILE #OMSPTool 0x00030300 #OMSPTool.%main 1 #OMSPTool.Mod)
!! (GLOBAL #W #OMSPTool.W ?1 #Texts 17 #Writer (RECORD #Texts.Writer 20 VOID
!!     (FIELD #buf* 0 ?2 #Texts 15 #Buffer (POINTER))
!!     (FIELD #col* 4 INTEGER)
!!     (FIELD #rider 8 ?3 #POFiles 6 #Rider (RECORD #POFiles.Rider 12 VOID
!!         (FIELD #eof* 0 BOOLEAN)
!!         (FIELD #res* 4 INTEGER)
!!         (FIELD #base 8 ?4 #POFiles 1 #File (POINTER))))))
!! (TARGET =4 ?5 #POFiles 2 #FileDesc (RECORD #POFiles.FileDesc 68 VOID
!!     (FIELD #file 0 ?6 #Files 1 #File (POINTER))
!!     (FIELD #tmpName 4 ?7 #POFiles 4 ANON (ARRAY 32 CHAR))
!!     (FIELD #name 36 =7)))
!! (TARGET =6 ?8 #Files 2 #FileDesc (RECORD #Files.FileDesc 8 VOID
!!     (FIELD #file- 0 SYSTEM.LONGPTR)))
!! (TARGET =2 ?9 #Texts 16 #BufDesc (RECORD #Texts.BufDesc 12 VOID
!!     (FIELD #len* 0 INTEGER)
!!     (FIELD #header 4 ?10 #Texts 1 #Piece (POINTER))
!!     (FIELD #last 8 =10)))
!! (TARGET =10 ?11 #Texts 2 #PieceDesc (RECORD #Texts.PieceDesc 24 VOID
!!     (FIELD #f 0 =4)
!!     (FIELD #off 4 INTEGER)
!!     (FIELD #len 8 INTEGER)
!!     (FIELD #col 12 INTEGER)
!!     (FIELD #prev 16 =10)
!!     (FIELD #next 20 =10)))
!! (GLOBAL #Form #OMSPTool.Form INTEGER)
!! (GLOBAL #mcode #OMSPTool.mcode ?12 #OMSPA 1 #ModuleCode (RECORD #OMSPA.ModuleCode 32004 VOID
!!     (FIELD #pc* 0 INTEGER)
!!     (FIELD #code* 4 ?13 #OMSPA 2 ANON (ARRAY 32000 BYTE))))
!! (PROCEDURE #Read 9 #OMSPTool.Read !14 (PROC 3 VOID
!!     (VPARAM #R 12 =3)
!!     (VPARAM #n 20 INTEGER))
!!   (LOCAL #b -1 BYTE))
!! (PROCEDURE #ReadWord 15 #OMSPTool.ReadWord !15 (PROC 3 VOID
!!     (VPARAM #R 12 =3)
!!     (VPARAM #n 20 INTEGER))
!!   (LOCAL #b1 -1 BYTE)
!!   (LOCAL #b2 -2 BYTE))
!! (PROCEDURE #ReadType 21 #OMSPTool.ReadType !16 (PROC 2 VOID
!!     (VPARAM #R 12 =3))
!!   (LOCAL #key -4 INTEGER)
!!   (LOCAL #len -8 INTEGER)
!!   (LOCAL #size -12 INTEGER)
!!   (LOCAL #off -16 INTEGER)
!!   (LOCAL #ref -20 INTEGER)
!!   (LOCAL #class -24 INTEGER)
!!   (LOCAL #form -28 INTEGER)
!!   (LOCAL #readonly -32 INTEGER)
!!   (LOCAL #name -64 !17 (ARRAY 32 CHAR))
!!   (LOCAL #modname -96 =17))
!! (PROCEDURE #DecSym* 70 #OMSPTool.DecSym !18 (PROC 0 VOID)
!!   (LOCAL #class -4 INTEGER)
!!   (LOCAL #k -8 INTEGER)
!!   (LOCAL #name -40 !19 (ARRAY 32 CHAR))
!!   (LOCAL #F -44 =4)
!!   (LOCAL #R -56 =3)
!!   (DEF ?20 #Texts 11 #Reader (RECORD #Texts.Reader 32 VOID
!!       (FIELD #eot* 0 BOOLEAN)
!!       (FIELD #col* 4 INTEGER)
!!       (FIELD #ref 8 =10)
!!       (FIELD #org 12 INTEGER)
!!       (FIELD #off 16 INTEGER)
!!       (FIELD #rider 20 =3)))
!!   (LOCAL #S -152 ?21 #Texts 13 #Scanner (RECORD #Texts.Scanner 96 =20
!!       (FIELD #eot* 0 BOOLEAN)
!!       (FIELD #col* 4 INTEGER)
!!       (FIELD #ref 8 =10)
!!       (FIELD #org 12 INTEGER)
!!       (FIELD #off 16 INTEGER)
!!       (FIELD #rider 20 =3)
!!       (FIELD #nextCh* 32 CHAR)
!!       (FIELD #line* 36 INTEGER)
!!       (FIELD #class* 40 INTEGER)
!!       (FIELD #i* 44 LONGINT)
!!       (FIELD #x* 52 REAL)
!!       (FIELD #c* 56 CHAR)
!!       (FIELD #len* 60 INTEGER)
!!       (FIELD #s* 64 ?22 #Texts 14 ANON (ARRAY 32 CHAR)))))
!! (PROCEDURE #DecObj* 113 #OMSPTool.DecObj !23 (PROC 0 VOID)
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #n -8 INTEGER)
!!   (LOCAL #key -12 INTEGER)
!!   (LOCAL #adr -16 INTEGER)
!!   (LOCAL #data -20 INTEGER)
!!   (LOCAL #size -24 INTEGER)
!!   (LOCAL #no -28 INTEGER)
!!   (LOCAL #bl -29 BYTE)
!!   (LOCAL #ch -30 CHAR)
!!   (LOCAL #name -62 !24 (ARRAY 32 CHAR))
!!   (LOCAL #F -68 =4)
!!   (LOCAL #R -80 =3)
!!   (LOCAL #S1 -176 =21))
!! (CHKSUM 0x54c78450)
!! 
MODULE OMSPTool 0x54c78450 210
IMPORT POFiles 0x1834a231
IMPORT Texts 0x04379426
IMPORT Oberon 0x7fd79012
IMPORT OMSPB 0x44d6da02
IMPORT OMSPA 0x18385547
IMPORT OMSPD 0x66c3fc6a
ENDHDR

PROC OMSPTool.Read 4 4 0x00500001
!   PROCEDURE Read(VAR R: Files.Rider; VAR n: INTEGER);
LINE 9
!   BEGIN Files.ReadByte(R, b);
LINE 11
LOCAL -1
LDLW 16
LDLW 12
GLOBAL POFiles.ReadByte
CALL 3
!     IF b < 80H THEN n := b ELSE n := b - 100H END
LINE 12
LDLC -1
CONST 128
JGEQ L27
LDLC -1
LDLW 20
STOREW
RETURN
LABEL L27
LDLC -1
CONST 256
MINUS
LDLW 20
STOREW
RETURN
END

PROC OMSPTool.ReadWord 4 4 0x00500001
!   PROCEDURE ReadWord(VAR R: Files.Rider; VAR n: INTEGER);
LINE 15
!   BEGIN Files.ReadByte(R, b1); Files.ReadByte(R, b2);
LINE 17
LOCAL -1
LDLW 16
LDLW 12
GLOBAL POFiles.ReadByte
CALL 3
LOCAL -2
LDLW 16
LDLW 12
GLOBAL POFiles.ReadByte
CALL 3
!     n := b1 + b2*100H
LINE 18
LDLC -1
LDLC -2
CONST 256
TIMES
PLUS
LDLW 20
STOREW
RETURN
END

PROC OMSPTool.ReadType 96 6 0x00100001
!   PROCEDURE ReadType(VAR R: Files.Rider);
LINE 21
!   BEGIN Read(R, ref); Texts.Write(W, " "); Texts.Write(W, "[");
LINE 25
LOCAL -20
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 91
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
!     IF ref < 0 THEN Texts.Write(W, "^"); Texts.WriteInt(W, -ref, 1);
LINE 26
LDLW -20
JGEQZ L60
CONST 94
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 1
LDLW -20
UMINUS
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!       IF -ref IN {B.Array, B.Record} THEN form := 0 ELSE form := -ref END
LINE 27
CONST 1
LDLW -20
UMINUS
CONST 32
BOUND 27
LSL
CONST 12288
BITAND
JEQZ L63
CONST 0
STLW -28
JUMP L58
LABEL L63
LDLW -20
UMINUS
STLW -28
JUMP L58
LABEL L60
!     ELSE Texts.WriteInt(W, ref, 1);
LINE 28
CONST 1
LDLW -20
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!       Read(R, form); Texts.WriteString(W, "  form = "); Texts.WriteInt(W, form, 1);
LINE 29
LOCAL -28
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
CONST 10
GLOBAL OMSPTool.%1
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -28
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!       IF form = B.Pointer THEN ReadType(R)
LINE 30
LDLW -28
CONST 7
JNEQ L31
LDLW 16
LDLW 12
GLOBAL OMSPTool.ReadType
CALL 2
JUMP L43
LABEL L31
!       ELSIF form = B.Array THEN
LINE 31
LDLW -28
CONST 12
JNEQ L33
!         ReadType(R); Files.ReadNum(R, len); Texts.WriteString(W, "  len = "); Texts.WriteInt(W, len, 1);
LINE 32
LDLW 16
LDLW 12
GLOBAL OMSPTool.ReadType
CALL 2
LOCAL -8
LDLW 16
LDLW 12
GLOBAL POFiles.ReadNum
CALL 3
CONST 9
GLOBAL OMSPTool.%2
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!         Files.ReadNum(R, size); Texts.WriteString(W, "  size = "); Texts.WriteInt(W, size, 1);
LINE 33
LOCAL -12
LDLW 16
LDLW 12
GLOBAL POFiles.ReadNum
CALL 3
CONST 10
GLOBAL OMSPTool.%3
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -12
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
JUMP L43
LABEL L33
!       ELSIF form = B.Record THEN
LINE 34
LDLW -28
CONST 13
JNEQ L35
!         ReadType(R); (*base type*) Texts.Write(W, "{"); 
LINE 35
LDLW 16
LDLW 12
GLOBAL OMSPTool.ReadType
CALL 2
CONST 123
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
!         Files.ReadNum(R, off); Texts.WriteString(W, "  exno = "); Texts.WriteInt(W, off, 1); 
LINE 36
LOCAL -16
LDLW 16
LDLW 12
GLOBAL POFiles.ReadNum
CALL 3
CONST 10
GLOBAL OMSPTool.%4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!         Files.ReadNum(R, off); Texts.WriteString(W, "  extlev = "); Texts.WriteInt(W, off, 1);
LINE 37
LOCAL -16
LDLW 16
LDLW 12
GLOBAL POFiles.ReadNum
CALL 3
CONST 12
GLOBAL OMSPTool.%5
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!         Files.ReadNum(R, size); Texts.WriteString(W, "  size = "); Texts.WriteInt(W, size, 1);
LINE 38
LOCAL -12
LDLW 16
LDLW 12
GLOBAL POFiles.ReadNum
CALL 3
CONST 10
GLOBAL OMSPTool.%3
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -12
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!         Texts.Write(W, " "); Texts.Write(W, "{"); Read(R, class);
LINE 39
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 123
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LOCAL -24
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
LABEL L36
!         WHILE class # 0 DO (*fields*)
LINE 40
LDLW -24
JEQZ L38
!           Files.ReadString(R, name);
LINE 41
CONST 32
LOCAL -64
LDLW 16
LDLW 12
GLOBAL POFiles.ReadString
CALL 4
!           IF name[0] # 0X THEN Texts.Write(W, " "); Texts.WriteString(W, name); ReadType(R)
LINE 42
LDLC -64
JEQZ L41
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 32
LOCAL -64
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LDLW 16
LDLW 12
GLOBAL OMSPTool.ReadType
CALL 2
JUMP L39
LABEL L41
!           ELSE Texts.WriteString(W, " --")
LINE 43
CONST 4
GLOBAL OMSPTool.%6
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LABEL L39
!           Files.ReadNum(R, off); Texts.WriteInt(W, off, 4); Read(R, class)
LINE 45
LOCAL -16
LDLW 16
LDLW 12
GLOBAL POFiles.ReadNum
CALL 3
CONST 4
LDLW -16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
LOCAL -24
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
JUMP L36
LABEL L38
!         Texts.Write(W, "}")
LINE 47
CONST 125
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
JUMP L43
LABEL L35
!       ELSIF form = B.Proc THEN
LINE 48
LDLW -28
CONST 10
JNEQ L43
!         ReadType(R); Read(R, class); IF class = 1 THEN Texts.WriteString(W, " leaf") END;
LINE 49
LDLW 16
LDLW 12
GLOBAL OMSPTool.ReadType
CALL 2
LOCAL -24
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
LDLW -24
CONST 1
JNEQ L46
CONST 6
GLOBAL OMSPTool.%7
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LABEL L46
!         Files.ReadInt(R, off); Texts.WriteString(W, " UR"); Texts.WriteHexVLen(W, off, 4, FALSE);
LINE 50
LOCAL -16
LDLW 16
LDLW 12
GLOBAL POFiles.ReadInt
CALL 3
CONST 4
GLOBAL OMSPTool.%8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 0
ALIGNC
CONST 4
LDLW -16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHexVLen
CALL 5
!         Texts.Write(W, "("); Read(R, class);
LINE 51
CONST 40
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LOCAL -24
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
LABEL L47
!         WHILE class # 0 DO
LINE 52
LDLW -24
JEQZ L49
!           Texts.WriteString(W, " class = "); Texts.WriteInt(W, class, 1); Read(R, readonly);
LINE 53
CONST 10
GLOBAL OMSPTool.%9
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -24
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
LOCAL -32
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
!           IF readonly = 1 THEN Texts.Write(W, "#") END;
LINE 54
LDLW -32
CONST 1
JNEQ L52
CONST 35
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LABEL L52
!           Read(R, off); IF off # -1 THEN Texts.WriteString(W, " R"); Texts.WriteInt(W, off, 1) END;
LINE 55
LOCAL -16
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
LDLW -16
CONST -1
JEQ L55
CONST 3
GLOBAL OMSPTool.%10
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
LABEL L55
!           ReadType(R); Read(R, class)
LINE 56
LDLW 16
LDLW 12
GLOBAL OMSPTool.ReadType
CALL 2
LOCAL -24
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
JUMP L47
LABEL L49
!         Texts.Write(W, ")")
LINE 58
CONST 41
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LABEL L43
!       Files.ReadString(R, modname);
LINE 60
CONST 32
LOCAL -96
LDLW 16
LDLW 12
GLOBAL POFiles.ReadString
CALL 4
!       IF modname[0] # 0X THEN
LINE 61
LDLC -96
JEQZ L58
!         Files.ReadInt(R, key); Files.ReadString(R, name);
LINE 62
LOCAL -4
LDLW 16
LDLW 12
GLOBAL POFiles.ReadInt
CALL 3
CONST 32
LOCAL -64
LDLW 16
LDLW 12
GLOBAL POFiles.ReadString
CALL 4
!         Texts.Write(W, " "); Texts.WriteString(W, modname); Texts.Write(W, "."); Texts.WriteString(W, name);
LINE 63
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 32
LOCAL -96
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 46
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 32
LOCAL -64
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!         Texts.WriteHex(W, key)
LINE 64
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHex
CALL 3
LABEL L58
!     Form := form; Texts.Write(W, "]")
LINE 67
LDLW -28
STGW OMSPTool.Form
CONST 93
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
RETURN
END

PROC OMSPTool.DecSym 152 5 OMSPTool.DecSym.%map
!   PROCEDURE DecSym*;  (*decode symbol file*)
LINE 70
!   BEGIN Texts.OpenScanner(S, Oberon.Par.text, Oberon.Par.pos); Texts.Scan(S);
LINE 75
GLOBAL Oberon.Par
LDNW 4
LDGW Oberon.Par
GLOBAL Texts.Scanner
LOCAL -152
GLOBAL Texts.OpenScanner
CALL 4
GLOBAL Texts.Scanner
LOCAL -152
GLOBAL Texts.Scan
CALL 2
!     IF S.class = Texts.Name THEN
LINE 76
LDLW -112
CONST 1
JNEQ L66
!       Texts.WriteString(W, "decode "); Texts.WriteString(W, S.s);
LINE 77
CONST 8
GLOBAL OMSPTool.%11
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 32
LOCAL -88
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!       Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf);
LINE 78
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
!       F := Files.Old(S.s);
LINE 79
CONST 32
LOCAL -88
GLOBAL POFiles.Old
CALLW 2
STLW -44
!       IF F # NIL THEN
LINE 80
LDLW -44
JEQZ L69
!         Files.Set(R, F, 0); Files.ReadInt(R, k); Files.ReadInt(R, k);
LINE 81
CONST 0
LDLW -44
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.Set
CALL 4
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.ReadInt
CALL 3
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.ReadInt
CALL 3
!         Files.ReadString(R, name); Texts.WriteString(W, name); Texts.WriteHex(W, k);
LINE 82
CONST 32
LOCAL -40
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.ReadString
CALL 4
CONST 32
LOCAL -40
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHex
CALL 3
!         Read(R, class); Texts.WriteInt(W, class, 3); (*sym file version*)
LINE 83
LOCAL -4
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL OMSPTool.Read
CALL 3
CONST 3
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!         IF class = B.versionkey THEN
LINE 84
LDLW -4
CONST 3
JNEQ L72
!           Texts.WriteLn(W); Read(R, class);
LINE 85
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LOCAL -4
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL OMSPTool.Read
CALL 3
LABEL L73
!           WHILE class # 0 DO
LINE 86
LDLW -4
JEQZ L67
!             Texts.WriteInt(W, class, 4); Files.ReadString(R, name); Texts.Write(W, " "); Texts.WriteString(W, name);
LINE 87
CONST 4
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
CONST 32
LOCAL -40
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.ReadString
CALL 4
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 32
LOCAL -40
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!             ReadType(R);
LINE 88
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL OMSPTool.ReadType
CALL 2
!             IF class = B.Typ THEN
LINE 89
LDLW -4
CONST 5
JNEQ L78
!               Texts.Write(W, "("); Read(R, class);
LINE 90
CONST 40
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LOCAL -4
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL OMSPTool.Read
CALL 3
LABEL L79
!               WHILE class # 0 DO  (*pointer base fixup*)
LINE 91
LDLW -4
JEQZ L81
!                 Texts.WriteString(W, " ->"); Texts.WriteInt(W, class, 4); Read(R, class)
LINE 92
CONST 4
GLOBAL OMSPTool.%12
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 4
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
LOCAL -4
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL OMSPTool.Read
CALL 3
JUMP L79
LABEL L81
!               Texts.Write(W, ")")
LINE 94
CONST 41
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
JUMP L85
LABEL L78
!             ELSIF class = B.Const THEN Files.ReadNum(R, k); Texts.WriteInt(W, k, 8)
LINE 95
LDLW -4
CONST 1
JNEQ L83
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.ReadNum
CALL 3
CONST 8
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
JUMP L85
LABEL L83
!             ELSIF class IN {B.Var, B.StoredConst} THEN Files.ReadNum(R, k);
LINE 96
CONST 1
LDLW -4
CONST 32
BOUND 96
LSL
CONST 516
BITAND
JEQZ L85
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.ReadNum
CALL 3
!               IF Form = B.String THEN Texts.WriteInt(W, k DIV 10000H, 6); (*len*) k := k MOD 10000H END;
LINE 97
LDGW OMSPTool.Form
CONST 11
JNEQ L88
CONST 6
LDLW -8
CONST 65536
DIV
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
LDLW -8
CONST 65536
MOD
STLW -8
LABEL L88
!               Texts.WriteInt(W, k, 6) (*exno*)
LINE 98
CONST 6
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
LABEL L85
!             Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf);
LINE 100
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
!             Read(R, class)
LINE 101
LOCAL -4
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL OMSPTool.Read
CALL 3
JUMP L73
LABEL L72
!         ELSE Texts.WriteString(W, " bad symfile version")
LINE 103
CONST 21
GLOBAL OMSPTool.%13
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
JUMP L67
LABEL L69
!       ELSE Texts.WriteString(W, " not found")
LINE 105
CONST 11
GLOBAL OMSPTool.%14
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LABEL L67
!       Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 107
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
LABEL L66
RETURN
END

PROC OMSPTool.DecObj 184 7 OMSPTool.DecObj.%map
!   PROCEDURE DecObj*;   (*decode object file*)
LINE 113
!   BEGIN Texts.OpenScanner(S1, Oberon.Par.text, Oberon.Par.pos); Texts.Scan(S1);
LINE 120
GLOBAL Oberon.Par
LDNW 4
LDGW Oberon.Par
GLOBAL Texts.Scanner
LOCAL -176
GLOBAL Texts.OpenScanner
CALL 4
GLOBAL Texts.Scanner
LOCAL -176
GLOBAL Texts.Scan
CALL 2
!     IF S1.class = Texts.Name THEN
LINE 121
LDLW -136
CONST 1
JNEQ L91
!       Texts.WriteString(W, "decode "); Texts.WriteString(W, S1.s); F := Files.Old(S1.s);
LINE 122
CONST 8
GLOBAL OMSPTool.%11
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 32
LOCAL -112
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 32
LOCAL -112
GLOBAL POFiles.Old
CALLW 2
STLW -68
!       IF F # NIL THEN
LINE 123
LDLW -68
JEQZ L94
!         Files.Set(R, F, 0); Files.ReadString(R, name); Texts.WriteLn(W); Texts.WriteString(W, name);
LINE 124
CONST 0
LDLW -68
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.Set
CALL 4
CONST 32
LOCAL -62
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
CONST 32
LOCAL -62
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!         Files.ReadInt(R, key); Texts.WriteHex(W, key); Files.ReadByte(R, bl); Texts.WriteLn(W);
LINE 125
LOCAL -12
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadInt
CALL 3
LDLW -12
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHex
CALL 3
LOCAL -29
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadByte
CALL 3
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         IF bl IN {2..3} THEN bl := bl MOD 2;
LINE 126
CONST 1
LDLC -29
CONST 32
BOUND 126
LSL
CONST 12
BITAND
JEQZ L97
LDLC -29
CONST 2
MOD
STLC -29
!           IF bl = 1 THEN Texts.WriteString(W, "code executed from RAM"); Texts.WriteLn(W); END;
LINE 127
LDLC -29
CONST 1
JNEQ L100
CONST 23
GLOBAL OMSPTool.%15
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L100
!           Texts.Append(Oberon.Log, W.buf);
LINE 128
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
!           Texts.WriteString(W, "imports:"); Texts.WriteLn(W); Files.ReadString(R, name);
LINE 129
CONST 9
GLOBAL OMSPTool.%16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
CONST 32
LOCAL -62
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadString
CALL 4
LABEL L101
!           WHILE name[0] # 0X DO
LINE 130
LDLC -62
JEQZ L103
!             Texts.Write(W, 9X); Texts.WriteString(W, name);
LINE 131
CONST 9
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 32
LOCAL -62
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!             Files.ReadInt(R, key); Texts.WriteHex(W, key); Texts.WriteLn(W);
LINE 132
LOCAL -12
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadInt
CALL 3
LDLW -12
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHex
CALL 3
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!             Files.ReadString(R, name)
LINE 133
CONST 32
LOCAL -62
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadString
CALL 4
JUMP L101
LABEL L103
!           END; Texts.WriteLn(W);
LINE 134
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!           Files.Read(R, ch); no := 0;
LINE 135
LOCAL -30
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.Read
CALL 3
CONST 0
STLW -28
LABEL L104
!           WHILE ~R.eof & (ch # 0X) DO Texts.WriteString(W, "section "); Texts.WriteInt(W, no, 5);
LINE 136
LDLC -80
JNEQZ L106
LDLC -30
JEQZ L106
CONST 9
GLOBAL OMSPTool.%17
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 5
LDLW -28
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!             Texts.Write(W, 09X); Texts.Write(W, ch);
LINE 137
CONST 9
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LDLC -30
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
!             Files.ReadString(R, name); ReadWord(R, size);
LINE 138
CONST 32
LOCAL -62
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadString
CALL 4
LOCAL -24
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL OMSPTool.ReadWord
CALL 3
!             Texts.WriteInt(W, size, 5); Texts.Write(W, 09X);
LINE 139
CONST 5
LDLW -24
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
CONST 9
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
!             Texts.WriteString(W, name); Texts.WriteLn(W);
LINE 140
CONST 32
LOCAL -62
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!             IF ch = "c" THEN (*code section*) A.Init(mcode); (*read code*)
LINE 141
LDLC -30
CONST 99
JNEQ L109
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPTool.mcode
GLOBAL OMSPA.Init
CALL 2
!               FOR i := 0 TO size - 1 DO Files.ReadByte(R, mcode.code[i]) END;
LINE 142
LDLW -24
DEC
STLW -180
CONST 0
STLW -4
LABEL L110
LDLW -4
LDLW -180
JGT L111
GLOBAL OMSPTool.mcode
CONST 4
OFFSET
LDLW -4
CONST 32000
BOUND 142
OFFSET
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadByte
CALL 3
INCL -4
JUMP L110
LABEL L111
!               i := 0;
LINE 143
CONST 0
STLW -4
LABEL L112
!               WHILE i < size DO
LINE 144
LDLW -4
LDLW -24
JGEQ L137
!                 Texts.WriteHexVLen(W, i, 4, FALSE);
LINE 145
CONST 0
ALIGNC
CONST 4
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHexVLen
CALL 5
!                 Texts.Write(W, 9X); adr := i + 2;
LINE 146
CONST 9
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LDLW -4
CONST 2
PLUS
STLW -16
!                 D.opcode(W, mcode.code, i, 0); Texts.WriteLn(W);
LINE 147
CONST 0
LOCAL -4
GLOBAL OMSPTool.mcode
CONST 4
OFFSET
CONST 32000
SWAP
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL OMSPD.opcode
CALL 6
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!                 FOR n := adr TO i - 2 BY 2 DO (*print operation data*)
LINE 148
LDLW -4
CONST 2
MINUS
STLW -184
LDLW -16
STLW -8
LABEL L115
LDLW -8
LDLW -184
JGT L112
!                   Texts.WriteHexVLen(W, n, 4, FALSE);
LINE 149
CONST 0
ALIGNC
CONST 4
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHexVLen
CALL 5
!                   Texts.Write(W, 9X); Texts.WriteString(W, "    ");
LINE 150
CONST 9
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 5
GLOBAL OMSPTool.%18
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!                   data := mcode.code[n+1]*100H + mcode.code[n];
LINE 151
GLOBAL OMSPTool.mcode
CONST 4
OFFSET
LDLW -8
INC
CONST 32000
BOUND 151
OFFSET
LOADC
CONST 256
TIMES
GLOBAL OMSPTool.mcode
CONST 4
OFFSET
LDLW -8
CONST 32000
BOUND 151
OFFSET
LOADC
PLUS
STLW -20
!                   Texts.WriteHexVLen(W, data, 4, FALSE); Texts.WriteLn(W)
LINE 152
CONST 0
ALIGNC
CONST 4
LDLW -20
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHexVLen
CALL 5
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!                 FOR n := adr TO i - 2 BY 2 DO (*print operation data*)
LINE 148
LDLW -8
CONST 2
PLUS
STLW -8
JUMP L115
LABEL L109
!             ELSIF ch = "v" THEN i := 0;
LINE 155
LDLC -30
CONST 118
JNEQ L118
CONST 0
STLW -4
LABEL L119
!               WHILE i < size DIV 2 DO ReadWord(R, adr); Texts.WriteHexVLen(W, adr, 4, FALSE);
LINE 156
LDLW -4
LDLW -24
CONST 2
DIV
JGEQ L121
LOCAL -16
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 0
ALIGNC
CONST 4
LDLW -16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHexVLen
CALL 5
!                 IF (i + 1) MOD 10H = 0 THEN Texts.WriteLn(W) END; INC(i)
LINE 157
LDLW -4
INC
CONST 16
MOD
JNEQZ L124
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L124
INCL -4
JUMP L119
LABEL L121
!               IF i MOD 10H # 0 THEN Texts.WriteLn(W) END
LINE 159
LDLW -4
CONST 16
MOD
JEQZ L137
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
JUMP L137
LABEL L118
!             ELSIF ch = "s" THEN i := 0;
LINE 160
LDLC -30
CONST 115
JNEQ L129
CONST 0
STLW -4
LABEL L130
!               WHILE i < size DO Files.Read(R, ch); IF ch = 0X THEN ch := "|" END;
LINE 161
LDLW -4
LDLW -24
JGEQ L132
LOCAL -30
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.Read
CALL 3
LDLC -30
JNEQZ L135
CONST 124
STLC -30
LABEL L135
!                 Texts.Write(W, ch); INC(i)
LINE 162
LDLC -30
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
INCL -4
JUMP L130
LABEL L132
!               Texts.WriteLn(W)
LINE 164
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
JUMP L137
LABEL L129
!             ELSIF ch # "r" THEN i := 0;
LINE 165
LDLC -30
CONST 114
JEQ L137
CONST 0
STLW -4
LABEL L138
!               WHILE i < size DO Files.ReadByte(R, bl); Texts.WriteHexVLen(W, bl, 2, FALSE);
LINE 166
LDLW -4
LDLW -24
JGEQ L140
LOCAL -29
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadByte
CALL 3
CONST 0
ALIGNC
CONST 2
LDLC -29
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHexVLen
CALL 5
!                 IF (i + 1) MOD 10H = 0 THEN Texts.WriteLn(W) END; INC(i)
LINE 167
LDLW -4
INC
CONST 16
MOD
JNEQZ L143
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L143
INCL -4
JUMP L138
LABEL L140
!               IF i MOD 10H # 0 THEN Texts.WriteLn(W) END
LINE 169
LDLW -4
CONST 16
MOD
JEQZ L137
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L137
!             Texts.WriteString(W, "fixups:"); Texts.WriteLn(W);
LINE 171
CONST 8
GLOBAL OMSPTool.%19
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!             ReadWord(R, adr);
LINE 172
LOCAL -16
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL OMSPTool.ReadWord
CALL 3
LABEL L147
!             WHILE adr # 0 DO Texts.WriteHexVLen(W, adr, 4, FALSE); Texts.Write(W, 09X);
LINE 173
LDLW -16
JEQZ L149
CONST 0
ALIGNC
CONST 4
LDLW -16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHexVLen
CALL 5
CONST 9
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
!               Files.ReadByte(R, bl); Texts.Write(W, "s"); Texts.WriteInt(W, bl, 1);
LINE 174
LOCAL -29
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadByte
CALL 3
CONST 115
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 1
LDLC -29
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!               ReadWord(R, n); Texts.Write(W, "."); Texts.WriteInt(W, n, 1);
LINE 175
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 46
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 1
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!               ReadWord(R, n);
LINE 176
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL OMSPTool.ReadWord
CALL 3
!               IF n # 0 THEN IF n >= 8000H THEN DEC(n, 10000H) END;
LINE 177
LDLW -8
JEQZ L152
LDLW -8
CONST 32768
JLT L155
LDLW -8
CONST 65536
MINUS
STLW -8
LABEL L155
!                 IF n > 0 THEN  Texts.Write(W, "+") END;
LINE 178
LDLW -8
JLEQZ L158
CONST 43
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LABEL L158
!                 Texts.WriteInt(W, n, 1)
LINE 179
CONST 1
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
LABEL L152
!               Files.ReadByte(R, bl); ReadWord(R, n);
LINE 181
LOCAL -29
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.ReadByte
CALL 3
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL OMSPTool.ReadWord
CALL 3
!               IF bl # 0FFH THEN Texts.WriteString(W, "-s");
LINE 182
LDLC -29
CONST 255
JEQ L161
CONST 3
GLOBAL OMSPTool.%20
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!                 Texts.WriteInt(W, bl, 1); Texts.Write(W, "."); Texts.WriteInt(W, n, 1)
LINE 183
CONST 1
LDLC -29
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
CONST 46
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 1
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
LABEL L161
!               Texts.WriteLn(W);
LINE 185
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!               ReadWord(R, adr)
LINE 186
LOCAL -16
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL OMSPTool.ReadWord
CALL 3
JUMP L147
LABEL L149
!             Texts.WriteLn(W);
LINE 188
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!             INC(no); Files.Read(R, ch)
LINE 189
INCL -28
LOCAL -30
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.Read
CALL 3
JUMP L104
LABEL L106
!           Texts.WriteString(W, "entries:"); Texts.WriteLn(W);
LINE 191
CONST 9
GLOBAL OMSPTool.%21
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!           ReadWord(R, n); i := 0;
LINE 192
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 0
STLW -4
LABEL L163
!           WHILE i < n DO
LINE 193
LDLW -4
LDLW -8
JGEQ L165
!             ReadWord(R, no); Texts.WriteInt(W, no, 5);
LINE 194
LOCAL -28
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 5
LDLW -28
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!             IF (i + 1) MOD 10 = 0 THEN Texts.WriteLn(W) END;
LINE 195
LDLW -4
INC
CONST 10
MOD
JNEQZ L168
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L168
!             INC(i)
LINE 196
INCL -4
JUMP L163
LABEL L165
!           IF i MOD 10 # 0 THEN Texts.WriteLn(W) END;
LINE 198
LDLW -4
CONST 10
MOD
JEQZ L171
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L171
!           Files.Read(R, ch); IF ch # "O" THEN Texts.WriteString(W, "format error"); Texts.WriteLn(W) END;
LINE 199
LOCAL -30
GLOBAL POFiles.Rider
LOCAL -80
GLOBAL POFiles.Read
CALL 3
LDLC -30
CONST 79
JEQ L92
CONST 13
GLOBAL OMSPTool.%22
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
JUMP L92
LABEL L97
!         ELSE Texts.WriteString(W, " bad version"); Texts.WriteLn(W)
LINE 200
CONST 13
GLOBAL OMSPTool.%23
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
JUMP L92
LABEL L94
!       ELSE Texts.WriteString(W, " not found"); Texts.WriteLn(W)
LINE 202
CONST 11
GLOBAL OMSPTool.%14
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L92
!       Texts.Append(Oberon.Log, W.buf)
LINE 204
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
LABEL L91
RETURN
END

PROC OMSPTool.%main 0 5 0
! BEGIN Texts.OpenWriter(W); Texts.WriteString(W, "OMSPTool 21.10.25");
LINE 208
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.OpenWriter
CALL 2
CONST 18
GLOBAL OMSPTool.%24
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!   Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 209
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

! Global variables
GLOVAR OMSPTool.W 20
GLOVAR OMSPTool.Form 4
GLOVAR OMSPTool.mcode 32004

! Global pointer map
DEFINE OMSPTool.%gcmap
WORD GC_BASE
WORD OMSPTool.W
WORD 0x00000023
WORD GC_END

! String "  form = "
DEFINE OMSPTool.%1
STRING 2020666F726D203D2000

! String "  len = "
DEFINE OMSPTool.%2
STRING 20206C656E203D2000

! String "  size = "
DEFINE OMSPTool.%3
STRING 202073697A65203D2000

! String "  exno = "
DEFINE OMSPTool.%4
STRING 202065786E6F203D2000

! String "  extlev = "
DEFINE OMSPTool.%5
STRING 20206578746C6576203D2000

! String " --"
DEFINE OMSPTool.%6
STRING 202D2D00

! String " leaf"
DEFINE OMSPTool.%7
STRING 206C65616600

! String " UR"
DEFINE OMSPTool.%8
STRING 20555200

! String " class = "
DEFINE OMSPTool.%9
STRING 20636C617373203D2000

! String " R"
DEFINE OMSPTool.%10
STRING 205200

! String "decode "
DEFINE OMSPTool.%11
STRING 6465636F64652000

! String " ->"
DEFINE OMSPTool.%12
STRING 202D3E00

! String " bad symfile version"
DEFINE OMSPTool.%13
STRING 206261642073796D66696C652076657273696F6E00

! String " not found"
DEFINE OMSPTool.%14
STRING 206E6F7420666F756E6400

! String "code executed from RAM"
DEFINE OMSPTool.%15
STRING 636F64652065786563757465642066726F6D2052414D00

! String "imports:"
DEFINE OMSPTool.%16
STRING 696D706F7274733A00

! String "section "
DEFINE OMSPTool.%17
STRING 73656374696F6E2000

! String "    "
DEFINE OMSPTool.%18
STRING 2020202000

! String "fixups:"
DEFINE OMSPTool.%19
STRING 6669787570733A00

! String "-s"
DEFINE OMSPTool.%20
STRING 2D7300

! String "entries:"
DEFINE OMSPTool.%21
STRING 656E74726965733A00

! String "format error"
DEFINE OMSPTool.%22
STRING 666F726D6174206572726F7200

! String " bad version"
DEFINE OMSPTool.%23
STRING 206261642076657273696F6E00

! String "OMSPTool 21.10.25"
DEFINE OMSPTool.%24
STRING 4F4D5350546F6F6C2032312E31302E323500

! Pointer maps
DEFINE OMSPTool.DecSym.%map
WORD -44
WORD -48
WORD -144
WORD -124
WORD GC_END

DEFINE OMSPTool.DecObj.%map
WORD -68
WORD -72
WORD -168
WORD -148
WORD GC_END

! End of file
