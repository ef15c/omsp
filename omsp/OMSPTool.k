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
!! (GLOBAL #mcode #OMSPTool.mcode ?12 #OMSPA 1 #ModuleCode (RECORD #OMSPA.ModuleCode 96004 VOID
!!     (FIELD #pc* 0 INTEGER)
!!     (FIELD #code* 4 ?13 #OMSPA 2 ANON (ARRAY 32000 BYTE))
!!     (FIELD #pos* 32004 ?14 #OMSPA 3 ANON (ARRAY 16000 INTEGER))))
!! (PROCEDURE #Read 9 #OMSPTool.Read !15 (PROC 3 VOID
!!     (VPARAM #R 12 =3)
!!     (VPARAM #n 20 INTEGER))
!!   (LOCAL #b -1 BYTE))
!! (PROCEDURE #ReadWord 15 #OMSPTool.ReadWord !16 (PROC 3 VOID
!!     (VPARAM #R 12 =3)
!!     (VPARAM #n 20 INTEGER))
!!   (LOCAL #b1 -1 BYTE)
!!   (LOCAL #b2 -2 BYTE))
!! (PROCEDURE #ReadType 21 #OMSPTool.ReadType !17 (PROC 2 VOID
!!     (VPARAM #R 12 =3))
!!   (LOCAL #key -4 INTEGER)
!!   (LOCAL #len -8 INTEGER)
!!   (LOCAL #size -12 INTEGER)
!!   (LOCAL #off -16 INTEGER)
!!   (LOCAL #ref -20 INTEGER)
!!   (LOCAL #class -24 INTEGER)
!!   (LOCAL #form -28 INTEGER)
!!   (LOCAL #readonly -32 INTEGER)
!!   (LOCAL #name -64 !18 (ARRAY 32 CHAR))
!!   (LOCAL #modname -96 =18))
!! (PROCEDURE #DecSym* 70 #OMSPTool.DecSym !19 (PROC 0 VOID)
!!   (LOCAL #class -4 INTEGER)
!!   (LOCAL #k -8 INTEGER)
!!   (LOCAL #name -40 !20 (ARRAY 32 CHAR))
!!   (LOCAL #F -44 =4)
!!   (LOCAL #R -56 =3)
!!   (DEF ?21 #Texts 11 #Reader (RECORD #Texts.Reader 32 VOID
!!       (FIELD #eot* 0 BOOLEAN)
!!       (FIELD #col* 4 INTEGER)
!!       (FIELD #ref 8 =10)
!!       (FIELD #org 12 INTEGER)
!!       (FIELD #off 16 INTEGER)
!!       (FIELD #rider 20 =3)))
!!   (LOCAL #S -148 ?22 #Texts 13 #Scanner (RECORD #Texts.Scanner 92 =21
!!       (FIELD #eot* 0 BOOLEAN)
!!       (FIELD #col* 4 INTEGER)
!!       (FIELD #ref 8 =10)
!!       (FIELD #org 12 INTEGER)
!!       (FIELD #off 16 INTEGER)
!!       (FIELD #rider 20 =3)
!!       (FIELD #nextCh* 32 CHAR)
!!       (FIELD #line* 36 INTEGER)
!!       (FIELD #class* 40 INTEGER)
!!       (FIELD #i* 44 INTEGER)
!!       (FIELD #x* 48 REAL)
!!       (FIELD #c* 52 CHAR)
!!       (FIELD #len* 56 INTEGER)
!!       (FIELD #s* 60 ?23 #Texts 14 ANON (ARRAY 32 CHAR)))))
!! (DEF !24 (FLEX CHAR))
!! (PROCEDURE #fixup 115 #OMSPTool.fixup !25 (PROC 4 VOID
!!     (CPARAM #msg 12 =24)
!!     (VPARAM #R 20 =3))
!!   (LOCAL #data -4 INTEGER)
!!   (LOCAL #mno -5 BYTE))
!! (PROCEDURE #DecObj* 127 #OMSPTool.DecObj !26 (PROC 0 VOID)
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #n -8 INTEGER)
!!   (LOCAL #key -12 INTEGER)
!!   (LOCAL #size -16 INTEGER)
!!   (LOCAL #adr -20 INTEGER)
!!   (LOCAL #data -24 INTEGER)
!!   (LOCAL #bl -25 BYTE)
!!   (LOCAL #ch -26 CHAR)
!!   (LOCAL #name -58 !27 (ARRAY 32 CHAR))
!!   (LOCAL #F -64 =4)
!!   (LOCAL #R -76 =3)
!!   (LOCAL #S1 -168 =22))
!! (CHKSUM 0x0b1c54a6)
!! 
MODULE OMSPTool 0x0b1c54a6 209
IMPORT POFiles 0x49659f59
IMPORT Texts 0x2d7a25ad
IMPORT Oberon 0x7fd79012
IMPORT OMSPB 0x1605559e
IMPORT OMSPA 0x66d26050
IMPORT OMSPD 0x66c3fc6a
IMPORT TextsEx 0x5b129e9d
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
JGEQ L36
LDLC -1
LDLW 20
STOREW
RETURN
LABEL L36
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
JGEQZ L69
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
JEQZ L72
CONST 0
STLW -28
JUMP L67
LABEL L72
LDLW -20
UMINUS
STLW -28
JUMP L67
LABEL L69
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
!       Files.ReadNum(R, size); Texts.WriteString(W, "  size = "); Texts.WriteInt(W, size, 1);
LINE 30
LOCAL -12
LDLW 16
LDLW 12
GLOBAL POFiles.ReadNum
CALL 3
CONST 10
GLOBAL OMSPTool.%2
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
!       IF form = B.Pointer THEN ReadType(R)
LINE 31
LDLW -28
CONST 7
JNEQ L40
LDLW 16
LDLW 12
GLOBAL OMSPTool.ReadType
CALL 2
JUMP L52
LABEL L40
!       ELSIF form = B.Array THEN
LINE 32
LDLW -28
CONST 12
JNEQ L42
!         ReadType(R); Files.ReadNum(R, len);
LINE 33
LDLW 16
LDLW 12
GLOBAL OMSPTool.ReadType
CALL 2
LOCAL -8
LDLW 16
LDLW 12
GLOBAL POFiles.ReadNum
CALL 3
!         Texts.WriteString(W, "  len = "); Texts.WriteInt(W, len, 1);
LINE 34
CONST 9
GLOBAL OMSPTool.%3
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
JUMP L52
LABEL L42
!       ELSIF form = B.Record THEN
LINE 35
LDLW -28
CONST 13
JNEQ L44
!         ReadType(R); (*base type*) Texts.Write(W, "{"); 
LINE 36
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
LINE 37
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
LINE 38
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
LABEL L45
!         WHILE class # 0 DO (*fields*)
LINE 40
LDLW -24
JEQZ L47
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
JEQZ L50
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
JUMP L48
LABEL L50
!           ELSE Texts.WriteString(W, " --")
LINE 43
CONST 4
GLOBAL OMSPTool.%6
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LABEL L48
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
JUMP L45
LABEL L47
!         Texts.Write(W, "}")
LINE 47
CONST 125
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
JUMP L52
LABEL L44
!       ELSIF form = B.Proc THEN
LINE 48
LDLW -28
CONST 10
JNEQ L52
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
JNEQ L55
CONST 6
GLOBAL OMSPTool.%7
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LABEL L55
!         Files.ReadInt(R, off); Texts.WriteString(W, " UR"); TextsEx.WriteHexVLen(W, off, 4, FALSE);
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
GLOBAL TextsEx.WriteHexVLen
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
LABEL L56
!         WHILE class # 0 DO
LINE 52
LDLW -24
JEQZ L58
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
JNEQ L61
CONST 35
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LABEL L61
!           Read(R, off); IF off # -1 THEN Texts.WriteString(W, " R"); Texts.WriteInt(W, off, 1) END;
LINE 55
LOCAL -16
LDLW 16
LDLW 12
GLOBAL OMSPTool.Read
CALL 3
LDLW -16
CONST -1
JEQ L64
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
LABEL L64
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
JUMP L56
LABEL L58
!         Texts.Write(W, ")")
LINE 58
CONST 41
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LABEL L52
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
JEQZ L67
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
LABEL L67
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

PROC OMSPTool.DecSym 148 5 OMSPTool.DecSym.%map
!   PROCEDURE DecSym*;  (*decode symbol file*)
LINE 70
!   BEGIN Texts.OpenScanner(S, Oberon.Par.text, Oberon.Par.pos); Texts.Scan(S);
LINE 75
GLOBAL Oberon.Par
LDNW 4
LDGW Oberon.Par
GLOBAL Texts.Scanner
LOCAL -148
GLOBAL Texts.OpenScanner
CALL 4
GLOBAL Texts.Scanner
LOCAL -148
GLOBAL Texts.Scan
CALL 2
!     IF S.class = Texts.Name THEN
LINE 76
LDLW -108
CONST 1
JNEQ L75
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
JEQZ L78
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
CONST 1
JNEQ L81
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
LABEL L82
!           WHILE class # 0 DO
LINE 86
LDLW -4
JEQZ L76
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
JNEQ L87
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
LABEL L88
!               WHILE class # 0 DO  (*pointer base fixup*)
LINE 91
LDLW -4
JEQZ L90
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
JUMP L88
LABEL L90
!               Texts.Write(W, ")")
LINE 94
CONST 41
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
JUMP L97
LABEL L87
!             ELSIF class = B.Const THEN
LINE 95
LDLW -4
CONST 1
JNEQ L92
!               IF Form = B.String THEN Files.ReadInt(R, k); Texts.WriteInt(W, k DIV 10000H, 6); (*len*) k := k MOD 10000H
LINE 96
LDGW OMSPTool.Form
CONST 11
JNEQ L95
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.ReadInt
CALL 3
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
JUMP L93
LABEL L95
!               ELSE Files.ReadNum(R, k)
LINE 97
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.ReadNum
CALL 3
LABEL L93
!               END; Texts.WriteInt(W, k, 8);
LINE 98
CONST 8
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
JUMP L97
LABEL L92
!             ELSIF class = B.Var THEN
LINE 99
LDLW -4
CONST 2
JNEQ L97
!               Files.ReadNum(R, k); Texts.WriteInt(W, k, 6) (*exno*)
LINE 100
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL POFiles.ReadNum
CALL 3
CONST 6
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
LABEL L97
!             Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf);
LINE 102
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
!             Read(R, class)
LINE 103
LOCAL -4
GLOBAL POFiles.Rider
LOCAL -56
GLOBAL OMSPTool.Read
CALL 3
JUMP L82
LABEL L81
!         ELSE Texts.WriteString(W, " bad symfile version")
LINE 105
CONST 21
GLOBAL OMSPTool.%13
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
JUMP L76
LABEL L78
!       ELSE Texts.WriteString(W, " not found")
LINE 107
CONST 11
GLOBAL OMSPTool.%14
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LABEL L76
!       Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 109
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
LABEL L75
RETURN
END

PROC OMSPTool.fixup 8 6 0x00500001
!   PROCEDURE fixup(msg: ARRAY OF CHAR; VAR R: Files.Rider);
LINE 115
!     Texts.WriteString(W, "fixup "); Texts.WriteString(W, msg); Texts.WriteString(W, " chains"); Texts.WriteLn(W);
LINE 118
CONST 7
GLOBAL OMSPTool.%15
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LDLW 16
LDLW 12
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 8
GLOBAL OMSPTool.%16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!     ReadWord(R, data);
LINE 119
LOCAL -4
LDLW 24
LDLW 20
GLOBAL OMSPTool.ReadWord
CALL 3
LABEL L98
!     WHILE data # 0 DO TextsEx.WriteHexVLen(W, data, 4, FALSE);
LINE 120
LDLW -4
JEQZ L100
CONST 0
ALIGNC
CONST 4
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL TextsEx.WriteHexVLen
CALL 5
!       Files.ReadByte(R, mno); Texts.WriteInt(W, mno, 6); Texts.Write(W, 9X);
LINE 121
LOCAL -5
LDLW 24
LDLW 20
GLOBAL POFiles.ReadByte
CALL 3
CONST 6
LDLC -5
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
!       ReadWord(R, data); TextsEx.WriteHexVLen(W, data, 4, FALSE); Texts.WriteLn(W);
LINE 122
LOCAL -4
LDLW 24
LDLW 20
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 0
ALIGNC
CONST 4
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL TextsEx.WriteHexVLen
CALL 5
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!       ReadWord(R, data)
LINE 123
LOCAL -4
LDLW 24
LDLW 20
GLOBAL OMSPTool.ReadWord
CALL 3
JUMP L98
LABEL L100
RETURN
END

PROC OMSPTool.DecObj 172 7 OMSPTool.DecObj.%map
!   PROCEDURE DecObj*;   (*decode object file*)
LINE 127
!   BEGIN Texts.OpenScanner(S1, Oberon.Par.text, Oberon.Par.pos); Texts.Scan(S1);
LINE 134
GLOBAL Oberon.Par
LDNW 4
LDGW Oberon.Par
GLOBAL Texts.Scanner
LOCAL -168
GLOBAL Texts.OpenScanner
CALL 4
GLOBAL Texts.Scanner
LOCAL -168
GLOBAL Texts.Scan
CALL 2
!     IF S1.class = Texts.Name THEN
LINE 135
LDLW -128
CONST 1
JNEQ L103
!       Texts.WriteString(W, "decode "); Texts.WriteString(W, S1.s); F := Files.Old(S1.s);
LINE 136
CONST 8
GLOBAL OMSPTool.%11
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 32
LOCAL -108
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 32
LOCAL -108
GLOBAL POFiles.Old
CALLW 2
STLW -64
!       IF F # NIL THEN
LINE 137
LDLW -64
JEQZ L106
!         A.Init(mcode);
LINE 138
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPTool.mcode
GLOBAL OMSPA.Init
CALL 2
!         Files.Set(R, F, 0); Files.ReadString(R, name); Texts.WriteLn(W); Texts.WriteString(W, name);
LINE 139
CONST 0
LDLW -64
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Set
CALL 4
CONST 32
LOCAL -58
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.ReadString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
CONST 32
LOCAL -58
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!         Files.ReadInt(R, key); Texts.WriteHex(W, key); Files.ReadByte(R, bl);
LINE 140
LOCAL -12
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.ReadInt
CALL 3
LDLW -12
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteHex
CALL 3
LOCAL -25
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.ReadByte
CALL 3
!         ReadWord(R, size); Texts.WriteString(W, " Flash"); Texts.WriteInt(W, size, 6);
LINE 141
LOCAL -16
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 7
GLOBAL OMSPTool.%17
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 6
LDLW -16
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
!         Texts.WriteLn(W);
LINE 142
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         IF bl = 1 THEN Texts.WriteString(W, "code executed from RAM"); Texts.WriteLn(W); END;
LINE 143
LDLC -25
CONST 1
JNEQ L109
CONST 23
GLOBAL OMSPTool.%18
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L109
!         Texts.Append(Oberon.Log, W.buf); ASSERT(size < 100000);
LINE 144
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
LDLW -16
CONST 100000
JLT L111
CONST 0
CONST 144
GLOBAL EASSERT
CALL 2
LABEL L111
!         Texts.WriteString(W, "imports:"); Texts.WriteLn(W); Files.ReadString(R, name);
LINE 145
CONST 9
GLOBAL OMSPTool.%19
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
CONST 32
LOCAL -58
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.ReadString
CALL 4
LABEL L112
!         WHILE name[0] # 0X DO
LINE 146
LDLC -58
JEQZ L114
!           Texts.Write(W, 9X); Texts.WriteString(W, name);
LINE 147
CONST 9
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 32
LOCAL -58
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!           Files.ReadInt(R, key); Texts.WriteHex(W, key); Texts.WriteLn(W);
LINE 148
LOCAL -12
GLOBAL POFiles.Rider
LOCAL -76
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
!           Files.ReadString(R, name)
LINE 149
CONST 32
LOCAL -58
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.ReadString
CALL 4
JUMP L112
LABEL L114
!         Texts.WriteString(W, "type descriptors"); Texts.WriteLn(W);
LINE 152
CONST 17
GLOBAL OMSPTool.%20
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         ReadWord(R, n); size := n; n := n DIV 2; i := 0;
LINE 153
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
LDLW -8
STLW -16
LDLW -8
CONST 2
DIV
STLW -8
CONST 0
STLW -4
LABEL L115
!         WHILE i < n DO ReadWord(R, data); TextsEx.WriteHexVLen(W, data, 4, FALSE); INC(i) END;
LINE 154
LDLW -4
LDLW -8
JGEQ L117
LOCAL -24
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 0
ALIGNC
CONST 4
LDLW -24
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL TextsEx.WriteHexVLen
CALL 5
INCL -4
JUMP L115
LABEL L117
!         Texts.WriteLn(W);
LINE 155
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         Texts.WriteString(W, "data"); ReadWord(R, data); Texts.WriteInt(W, data, 6); Texts.WriteLn(W);
LINE 156
CONST 5
GLOBAL OMSPTool.%21
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
LOCAL -24
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 6
LDLW -24
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         Texts.WriteString(W, "strings"); Texts.WriteLn(W);
LINE 157
CONST 8
GLOBAL OMSPTool.%22
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         ReadWord(R, n); i := 0; INC(size, n);
LINE 158
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 0
STLW -4
LOCAL -16
DUP 0
LOADW
LDLW -8
PLUS
SWAP
STOREW
LABEL L118
!         WHILE i < n DO Files.Read(R, ch); IF ch=0X THEN ch := "|" END; Texts.Write(W, ch); INC(i) END ;
LINE 159
LDLW -4
LDLW -8
JGEQ L120
LOCAL -26
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Read
CALL 3
LDLC -26
JNEQZ L123
CONST 124
STLC -26
LABEL L123
LDLC -26
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
INCL -4
JUMP L118
LABEL L120
!         Texts.WriteLn(W);
LINE 160
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         ReadWord(R, mcode.pc); i := 0;
LINE 162
GLOBAL OMSPTool.mcode
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 0
STLW -4
LABEL L124
!         WHILE i < mcode.pc DO Files.ReadByte(R, mcode.code[i]); INC(i) END;
LINE 163
LDLW -4
LDGW OMSPTool.mcode
JGEQ L126
GLOBAL OMSPTool.mcode
CONST 4
OFFSET
LDLW -4
CONST 32000
BOUND 163
OFFSET
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.ReadByte
CALL 3
INCL -4
JUMP L124
LABEL L126
!         Texts.WriteString(W, "vector table"); Texts.WriteLn(W);
LINE 165
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
!         Files.ReadByte(R, bl); i := 0;
LINE 166
LOCAL -25
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.ReadByte
CALL 3
CONST 0
STLW -4
LABEL L127
!         WHILE i < bl DO ReadWord(R, data); TextsEx.WriteHexVLen(W, data, 4, FALSE); INC(i);
LINE 167
LDLW -4
LDLC -25
JGEQ L129
LOCAL -24
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 0
ALIGNC
CONST 4
LDLW -24
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL TextsEx.WriteHexVLen
CALL 5
INCL -4
!           IF i MOD 16 = 0 THEN Texts.WriteLn(W) END
LINE 168
LDLW -4
CONST 16
MOD
JNEQZ L127
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
JUMP L127
LABEL L129
!         Texts.WriteLn(W);
LINE 170
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         Texts.WriteString(W, "entries"); Texts.WriteLn(W);
LINE 172
CONST 8
GLOBAL OMSPTool.%24
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         ReadWord(R, n); i := 0;
LINE 173
LOCAL -8
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 0
STLW -4
LABEL L133
!         WHILE i < n DO
LINE 174
LDLW -4
LDLW -8
JGEQ L135
!           Files.Read(R, ch); ReadWord(R, adr); Texts.Write(W, " "); Texts.Write(W, ch); TextsEx.WriteHexVLen(W, adr, 4, FALSE); INC(i)
LINE 175
LOCAL -26
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Read
CALL 3
LOCAL -20
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LDLC -26
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 0
ALIGNC
CONST 4
LDLW -20
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL TextsEx.WriteHexVLen
CALL 5
INCL -4
JUMP L133
LABEL L135
!         Texts.WriteLn(W);
LINE 177
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!       fixup("procedures", R);
LINE 179
GLOBAL POFiles.Rider
LOCAL -76
CONST 11
GLOBAL OMSPTool.%25
GLOBAL OMSPTool.fixup
CALL 4
!       fixup("handlers", R);
LINE 180
GLOBAL POFiles.Rider
LOCAL -76
CONST 9
GLOBAL OMSPTool.%26
GLOBAL OMSPTool.fixup
CALL 4
!       fixup("data", R);
LINE 181
GLOBAL POFiles.Rider
LOCAL -76
CONST 5
GLOBAL OMSPTool.%21
GLOBAL OMSPTool.fixup
CALL 4
!       fixup("constants", R);
LINE 182
GLOBAL POFiles.Rider
LOCAL -76
CONST 10
GLOBAL OMSPTool.%27
GLOBAL OMSPTool.fixup
CALL 4
!       fixup("types", R);
LINE 183
GLOBAL POFiles.Rider
LOCAL -76
CONST 6
GLOBAL OMSPTool.%28
GLOBAL OMSPTool.fixup
CALL 4
!         ReadWord(R, data); Texts.WriteString(W, "entry = "); TextsEx.WriteHexVLen(W, data, 4, FALSE); Texts.WriteLn(W);
LINE 184
LOCAL -24
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPTool.ReadWord
CALL 3
CONST 9
GLOBAL OMSPTool.%29
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 0
ALIGNC
CONST 4
LDLW -24
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL TextsEx.WriteHexVLen
CALL 5
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         Files.Read(R, ch);
LINE 185
LOCAL -26
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Read
CALL 3
!         IF ch # "O" THEN Texts.WriteString(W, "format error"); Texts.WriteLn(W) END;
LINE 186
LDLC -26
CONST 79
JEQ L138
CONST 13
GLOBAL OMSPTool.%30
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L138
!         Texts.WriteString(W, "code");  Texts.WriteInt(W, mcode.pc, 6); Texts.WriteLn(W); 
LINE 188
CONST 5
GLOBAL OMSPTool.%31
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
CONST 6
LDGW OMSPTool.mcode
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteInt
CALL 4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!         i := 0;
LINE 189
CONST 0
STLW -4
LABEL L139
!         WHILE i < mcode.pc DO
LINE 190
LDLW -4
LDGW OMSPTool.mcode
JGEQ L104
!           TextsEx.WriteHexVLen(W, i, 4, FALSE);
LINE 191
CONST 0
ALIGNC
CONST 4
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL TextsEx.WriteHexVLen
CALL 5
!            Texts.Write(W, 9X); adr := i + 2;
LINE 192
CONST 9
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
LDLW -4
CONST 2
PLUS
STLW -20
!           D.opcode(W, mcode.code, i, 0); Texts.WriteLn(W);
LINE 193
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
!           FOR n := adr TO i - 2 BY 2 DO (*print operation data*)
LINE 194
LDLW -4
CONST 2
MINUS
STLW -172
LDLW -20
STLW -8
LABEL L142
LDLW -8
LDLW -172
JGT L139
!             TextsEx.WriteHexVLen(W, n, 4, FALSE);
LINE 195
CONST 0
ALIGNC
CONST 4
LDLW -8
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL TextsEx.WriteHexVLen
CALL 5
!             Texts.Write(W, 9X); Texts.WriteString(W, "    ");
LINE 196
CONST 9
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.Write
CALL 3
CONST 5
GLOBAL OMSPTool.%32
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!             data := mcode.code[n+1]*100H + mcode.code[n];
LINE 197
GLOBAL OMSPTool.mcode
CONST 4
OFFSET
LDLW -8
INC
CONST 32000
BOUND 197
OFFSET
LOADC
CONST 256
TIMES
GLOBAL OMSPTool.mcode
CONST 4
OFFSET
LDLW -8
CONST 32000
BOUND 197
OFFSET
LOADC
PLUS
STLW -24
!             TextsEx.WriteHexVLen(W, data, 4, FALSE); Texts.WriteLn(W)
LINE 198
CONST 0
ALIGNC
CONST 4
LDLW -24
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL TextsEx.WriteHexVLen
CALL 5
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteLn
CALL 2
!           FOR n := adr TO i - 2 BY 2 DO (*print operation data*)
LINE 194
LDLW -8
CONST 2
PLUS
STLW -8
JUMP L142
LABEL L106
!       ELSE Texts.WriteString(W, " not found"); Texts.WriteLn(W)
LINE 201
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
LABEL L104
!       Texts.Append(Oberon.Log, W.buf)
LINE 203
LDGW OMSPTool.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
LABEL L103
RETURN
END

PROC OMSPTool.%main 0 5 0
! BEGIN Texts.OpenWriter(W); Texts.WriteString(W, "OMSPTool 10.06.24");
LINE 207
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.OpenWriter
CALL 2
CONST 18
GLOBAL OMSPTool.%33
GLOBAL Texts.Writer
GLOBAL OMSPTool.W
GLOBAL Texts.WriteString
CALL 4
!   Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 208
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
GLOVAR OMSPTool.mcode 96004

! Global pointer map
DEFINE OMSPTool.%gcmap
WORD GC_BASE
WORD OMSPTool.W
WORD 0x00000023
WORD GC_END

! String "  form = "
DEFINE OMSPTool.%1
STRING 2020666F726D203D2000

! String "  size = "
DEFINE OMSPTool.%2
STRING 202073697A65203D2000

! String "  len = "
DEFINE OMSPTool.%3
STRING 20206C656E203D2000

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

! String "fixup "
DEFINE OMSPTool.%15
STRING 66697875702000

! String " chains"
DEFINE OMSPTool.%16
STRING 20636861696E7300

! String " Flash"
DEFINE OMSPTool.%17
STRING 20466C61736800

! String "code executed from RAM"
DEFINE OMSPTool.%18
STRING 636F64652065786563757465642066726F6D2052414D00

! String "imports:"
DEFINE OMSPTool.%19
STRING 696D706F7274733A00

! String "type descriptors"
DEFINE OMSPTool.%20
STRING 747970652064657363726970746F727300

! String "data"
DEFINE OMSPTool.%21
STRING 6461746100

! String "strings"
DEFINE OMSPTool.%22
STRING 737472696E677300

! String "vector table"
DEFINE OMSPTool.%23
STRING 766563746F72207461626C6500

! String "entries"
DEFINE OMSPTool.%24
STRING 656E747269657300

! String "procedures"
DEFINE OMSPTool.%25
STRING 70726F6365647572657300

! String "handlers"
DEFINE OMSPTool.%26
STRING 68616E646C65727300

! String "constants"
DEFINE OMSPTool.%27
STRING 636F6E7374616E747300

! String "types"
DEFINE OMSPTool.%28
STRING 747970657300

! String "entry = "
DEFINE OMSPTool.%29
STRING 656E747279203D2000

! String "format error"
DEFINE OMSPTool.%30
STRING 666F726D6174206572726F7200

! String "code"
DEFINE OMSPTool.%31
STRING 636F646500

! String "    "
DEFINE OMSPTool.%32
STRING 2020202000

! String "OMSPTool 10.06.24"
DEFINE OMSPTool.%33
STRING 4F4D5350546F6F6C2031302E30362E323400

! Pointer maps
DEFINE OMSPTool.DecSym.%map
WORD -44
WORD -48
WORD -140
WORD -120
WORD GC_END

DEFINE OMSPTool.DecObj.%map
WORD -64
WORD -68
WORD -160
WORD -140
WORD GC_END

! End of file
