!! (SYMFILE #OMSPL 0x00030300 #OMSPL.%main 1 #OMSPL.Mod)
!! (CONST #noerr INTCONST 0)
!! (CONST #nofile INTCONST 1)
!! (CONST #duphandler INTCONST 2)
!! (CONST #badkey INTCONST 3)
!! (CONST #badfile INTCONST 4)
!! (CONST #nospace INTCONST 5)
!! (CONST #nopar INTCONST 6)
!! (CONST #noinit INTCONST 7)
!! (CONST #notsupported INTCONST 8)
!! (CONST #RAMOrigin INTCONST 512)
!! (CONST #FlashEnd INTCONST 65536)
!! (TYPE #Module !1 (POINTER))
!! (TARGET =1 !2 (RECORD #OMSPL.ModDesc 328 VOID
!!     (FIELD #name 0 !3 (ARRAY 32 CHAR))
!!     (FIELD #next 32 =1)
!!     (FIELD #key 36 INTEGER)
!!     (FIELD #num 40 INTEGER)
!!     (FIELD #size 44 INTEGER)
!!     (FIELD #data 48 INTEGER)
!!     (FIELD #conststo 52 INTEGER)
!!     (FIELD #codeexe 56 INTEGER)
!!     (FIELD #codesto 60 INTEGER)
!!     (FIELD #codesize 64 INTEGER)
!!     (FIELD #codeseg 68 BYTE)
!!     (FIELD #ent 72 !4 (ARRAY 64 INTEGER))))
!! (TYPE #ModuleName =3)
!! (TYPE #ModDesc =2)
!! (TYPE #Segment !5 (POINTER))
!! (TARGET =5 !6 (RECORD #OMSPL.SegmentDesc 65544 VOID
!!     (FIELD #origin 0 INTEGER)
!!     (FIELD #allocPtr 4 INTEGER)
!!     (FIELD #m 8 !7 (ARRAY 65536 BYTE))))
!! (TYPE #SegmentDesc =6)
!! (GLOBAL #first #OMSPL.first =1)
!! (GLOBAL #last #OMSPL.last =1)
!! (GLOBAL #RAMAllocPtr #OMSPL.RAMAllocPtr INTEGER)
!! (GLOBAL #RAMLimit #OMSPL.RAMLimit INTEGER)
!! (GLOBAL #limit #OMSPL.limit INTEGER)
!! (GLOBAL #res #OMSPL.res INTEGER)
!! (GLOBAL #Flash #OMSPL.Flash =5)
!! (GLOBAL #vector #OMSPL.vector !8 (ARRAY 32 INTEGER))
!! (GLOBAL #importing #OMSPL.importing =3)
!! (GLOBAL #imported #OMSPL.imported =3)
!! (GLOBAL #W #OMSPL.W ?9 #Texts 17 #Writer (RECORD #Texts.Writer 20 VOID
!!     (FIELD #buf* 0 ?10 #Texts 15 #Buffer (POINTER))
!!     (FIELD #col* 4 INTEGER)
!!     (FIELD #rider 8 ?11 #POFiles 6 #Rider (RECORD #POFiles.Rider 12 VOID
!!         (FIELD #eof* 0 BOOLEAN)
!!         (FIELD #res* 4 INTEGER)
!!         (FIELD #base 8 ?12 #POFiles 1 #File (POINTER))))))
!! (TARGET =12 ?13 #POFiles 2 #FileDesc (RECORD #POFiles.FileDesc 68 VOID
!!     (FIELD #file 0 ?14 #Files 1 #File (POINTER))
!!     (FIELD #tmpName 4 ?15 #POFiles 4 ANON (ARRAY 32 CHAR))
!!     (FIELD #name 36 =15)))
!! (TARGET =14 ?16 #Files 2 #FileDesc (RECORD #Files.FileDesc 8 VOID
!!     (FIELD #file- 0 SYSTEM.LONGPTR)))
!! (TARGET =10 ?17 #Texts 16 #BufDesc (RECORD #Texts.BufDesc 12 VOID
!!     (FIELD #len* 0 INTEGER)
!!     (FIELD #header 4 ?18 #Texts 1 #Piece (POINTER))
!!     (FIELD #last 8 =18)))
!! (TARGET =18 ?19 #Texts 2 #PieceDesc (RECORD #Texts.PieceDesc 24 VOID
!!     (FIELD #f 0 =12)
!!     (FIELD #off 4 INTEGER)
!!     (FIELD #len 8 INTEGER)
!!     (FIELD #col 12 INTEGER)
!!     (FIELD #prev 16 =18)
!!     (FIELD #next 20 =18)))
!! (PROCEDURE #GetWordAt 32 #OMSPL.GetWordAt !20 (PROC 1 INTEGER
!!     (PARAM #adr 12 INTEGER)))
!! (PROCEDURE #PutWordAt 37 #OMSPL.PutWordAt !21 (PROC 2 VOID
!!     (PARAM #adr 12 INTEGER)
!!     (PARAM #val 16 INTEGER)))
!! (PROCEDURE #EmitWord 42 #OMSPL.EmitWord !22 (PROC 1 VOID
!!     (PARAM #val 12 INTEGER)))
!! (DEF !23 (FLEX CHAR))
!! (DEF !24 (FLEX CHAR))
!! (PROCEDURE #MakeFileName 46 #OMSPL.MakeFileName !25 (PROC 6 VOID
!!     (VPARAM #FName 12 =23)
!!     (CPARAM #name 20 =24)
!!     (CPARAM #ext 28 =24))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #j -8 INTEGER))
!! (DEF !26 (FLEX CHAR))
!! (PROCEDURE #ThisFile 54 #OMSPL.ThisFile !27 (PROC 2 =12
!!     (CPARAM #name 12 =26))
!!   (LOCAL #F -4 =12)
!!   (LOCAL #filename -36 =3))
!! (DEF !28 (FLEX CHAR))
!! (PROCEDURE #error 61 #OMSPL.error !29 (PROC 3 VOID
!!     (PARAM #n 12 INTEGER)
!!     (CPARAM #name 16 =28)))
!! (DEF !30 (FLEX CHAR))
!! (PROCEDURE #Check 65 #OMSPL.Check !31 (PROC 2 VOID
!!     (CPARAM #s 12 =30))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #ch -5 CHAR))
!! (DEF !32 (FLEX =1))
!! (PROCEDURE #fixupFlash 78 #OMSPL.fixupFlash !33 (PROC 6 VOID
!!     (VPARAM #R 12 =11)
!!     (CPARAM #import 20 =32)
!!     (PARAM #destbase 28 INTEGER)
!!     (PARAM #fixbase 32 INTEGER))
!!   (LOCAL #adr -4 INTEGER)
!!   (LOCAL #ofs -8 INTEGER)
!!   (LOCAL #dest -12 INTEGER)
!!   (LOCAL #nadr -16 INTEGER)
!!   (LOCAL #mno -17 BYTE)
!!   (LOCAL #impmod -24 =1))
!! (DEF !34 (FLEX CHAR))
!! (PROCEDURE #LinkOne 93 #OMSPL.LinkOne !35 (PROC 3 VOID
!!     (CPARAM #name 12 =34)
!!     (VPARAM #newmod 20 =1))
!!   (LOCAL #mod -4 =1)
!!   (LOCAL #impmod -8 =1)
!!   (LOCAL #i -12 INTEGER)
!!   (LOCAL #n -16 INTEGER)
!!   (LOCAL #key -20 INTEGER)
!!   (LOCAL #impkey -24 INTEGER)
!!   (LOCAL #nofimps -28 INTEGER)
!!   (LOCAL #flashSize -32 INTEGER)
!!   (LOCAL #f -36 INTEGER)
!!   (LOCAL #w -40 INTEGER)
!!   (LOCAL #ch -41 CHAR)
!!   (LOCAL #adr -48 INTEGER)
!!   (LOCAL #ofs -52 INTEGER)
!!   (LOCAL #nadr -56 INTEGER)
!!   (LOCAL #dest -60 INTEGER)
!!   (LOCAL #name1 -92 =3)
!!   (LOCAL #impname -124 =3)
!!   (LOCAL #F -128 =12)
!!   (LOCAL #R -140 =11)
!!   (LOCAL #import -204 !36 (ARRAY 16 =1))
!!   (LOCAL #mno -205 BYTE)
!!   (LOCAL #nv -206 BYTE)
!!   (LOCAL #codeseg -207 BYTE)
!!   (LOCAL #vec -336 !37 (ARRAY 32 INTEGER)))
!! (PROCEDURE #Link* 210 #OMSPL.Link !38 (PROC 0 VOID)
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #x -8 INTEGER)
!!   (LOCAL #vecsize -12 INTEGER)
!!   (LOCAL #isrtrap -16 INTEGER)
!!   (LOCAL #count -20 INTEGER)
!!   (LOCAL #F -24 =12)
!!   (LOCAL #R -36 =11)
!!   (DEF ?39 #Texts 11 #Reader (RECORD #Texts.Reader 32 VOID
!!       (FIELD #eot* 0 BOOLEAN)
!!       (FIELD #col* 4 INTEGER)
!!       (FIELD #ref 8 =18)
!!       (FIELD #org 12 INTEGER)
!!       (FIELD #off 16 INTEGER)
!!       (FIELD #rider 20 =11)))
!!   (LOCAL #S -128 ?40 #Texts 13 #Scanner (RECORD #Texts.Scanner 92 =39
!!       (FIELD #eot* 0 BOOLEAN)
!!       (FIELD #col* 4 INTEGER)
!!       (FIELD #ref 8 =18)
!!       (FIELD #org 12 INTEGER)
!!       (FIELD #off 16 INTEGER)
!!       (FIELD #rider 20 =11)
!!       (FIELD #nextCh* 32 CHAR)
!!       (FIELD #line* 36 INTEGER)
!!       (FIELD #class* 40 INTEGER)
!!       (FIELD #i* 44 INTEGER)
!!       (FIELD #x* 48 REAL)
!!       (FIELD #c* 52 CHAR)
!!       (FIELD #len* 56 INTEGER)
!!       (FIELD #s* 60 ?41 #Texts 14 ANON (ARRAY 32 CHAR))))
!!   (LOCAL #M -132 =1)
!!   (LOCAL #p -136 =1)
!!   (LOCAL #name -168 =3))
!! (CHKSUM 0x0d8b0c43)
!! 
MODULE OMSPL 0x0d8b0c43 293
IMPORT Modules 0x2949f19d
IMPORT OMSPG 0x0f07326b
IMPORT POFiles 0x49659f59
IMPORT FilesEx 0x00aa80f7
IMPORT Texts 0x2d7a25ad
IMPORT Oberon 0x7fd79012
ENDHDR

PROC OMSPL.GetWordAt 0 4 0
!   PROCEDURE GetWordAt(adr: INTEGER): INTEGER;
LINE 32
!     RETURN 0 + Flash.m[adr] + 100H*Flash.m[adr + 1]
LINE 33
LDGW OMSPL.Flash
NCHECK 33
CONST 8
OFFSET
LDLW 12
CONST 65536
BOUND 33
OFFSET
LOADC
LDGW OMSPL.Flash
NCHECK 33
CONST 8
OFFSET
LDLW 12
INC
CONST 65536
BOUND 33
OFFSET
LOADC
CONST 256
TIMES
PLUS
RETURN
END

PROC OMSPL.PutWordAt 0 4 0
!   PROCEDURE PutWordAt(adr, val: INTEGER);
LINE 37
!   BEGIN Flash.m[adr] := val MOD 100H; val := val DIV 100H;
LINE 38
LDLW 16
CONST 256
MOD
CONVNC
LDGW OMSPL.Flash
NCHECK 38
CONST 8
OFFSET
LDLW 12
CONST 65536
BOUND 38
OFFSET
STOREC
LDLW 16
CONST 256
DIV
STLW 16
!     Flash.m[adr + 1] := val MOD 100H;
LINE 39
LDLW 16
CONST 256
MOD
CONVNC
LDGW OMSPL.Flash
NCHECK 39
CONST 8
OFFSET
LDLW 12
INC
CONST 65536
BOUND 39
OFFSET
STOREC
RETURN
END

PROC OMSPL.EmitWord 0 3 0
!   PROCEDURE EmitWord(val: INTEGER);
LINE 42
!   BEGIN PutWordAt(Flash.allocPtr, val); INC(Flash.allocPtr, 2);
LINE 43
LDLW 12
LDGW OMSPL.Flash
NCHECK 43
LDNW 4
GLOBAL OMSPL.PutWordAt
CALL 2
LDGW OMSPL.Flash
NCHECK 43
DUP 0
LDNW 4
CONST 2
PLUS
SWAP
STNW 4
RETURN
END

PROC OMSPL.MakeFileName 8 4 0x01500001
!   PROCEDURE MakeFileName(VAR FName: ARRAY OF CHAR; name, ext: ARRAY OF CHAR);
LINE 46
!   BEGIN i := 0; j := 0;  (*assume name suffix less than 4 characters*)
LINE 48
CONST 0
STLW -4
CONST 0
STLW -8
LABEL L20
!     WHILE (i < 32-5) & (name[i] > 0X) DO FName[i] := name[i]; INC(i) END ;
LINE 49
LDLW -4
CONST 27
JGEQ L22
LDLW 20
LDLW -4
LDLW 24
BOUND 49
LDIC
JLEQZ L22
LDLW 20
LDLW -4
LDLW 24
BOUND 49
LDIC
LDLW 12
LDLW -4
LDLW 16
BOUND 49
STIC
INCL -4
JUMP L20
LABEL L22
!     REPEAT FName[i]:= ext[j]; INC(i); INC(j) UNTIL ext[j] = 0X;
LINE 50
LDLW 28
LDLW -8
LDLW 32
BOUND 50
LDIC
LDLW 12
LDLW -4
LDLW 16
BOUND 50
STIC
INCL -4
INCL -8
LDLW 28
LDLW -8
LDLW 32
BOUND 50
LDIC
JNEQZ L22
!     FName[i] := 0X
LINE 51
CONST 0
LDLW 12
LDLW -4
LDLW 16
BOUND 51
STIC
RETURN
END

PROC OMSPL.ThisFile 36 7 0x00110001
!   PROCEDURE ThisFile(name: ARRAY OF CHAR): Files.File;
LINE 54
!   BEGIN MakeFileName(filename, name, ".mpc"); F := Files.Old(filename)
LINE 57
CONST 5
GLOBAL OMSPL.%1
LDLW 16
LDLW 12
CONST 32
LOCAL -36
GLOBAL OMSPL.MakeFileName
CALL 6
CONST 32
LOCAL -36
GLOBAL POFiles.Old
CALLW 2
STLW -4
!     RETURN F
LINE 58
LDLW -4
RETURN
END

PROC OMSPL.error 0 7 0x00200001
!   PROCEDURE error(n: INTEGER; name: ARRAY OF CHAR);
LINE 61
!   BEGIN res := n; importing := name
LINE 62
LDLW 12
STGW OMSPL.res
CONST 32
GLOBAL OMSPL.importing
LDLW 20
LDLW 16
CONST 1
CONST 1
GLOBAL FLEXASSIGN
CALL 6
RETURN
END

PROC OMSPL.Check 8 3 0x00100001
!   PROCEDURE Check(s: ARRAY OF CHAR);
LINE 65
!   BEGIN ch := s[0]; res := 1; i := 1;
LINE 67
LDLW 12
CONST 0
LDLW 16
BOUND 67
LDIC
STLC -5
CONST 1
STGW OMSPL.res
CONST 1
STLW -4
!     IF (ch >= "A") & (ch <= "Z") OR (ch >= "a") & (ch <= "z") THEN
LINE 68
LDLC -5
CONST 65
JLT L42
LDLC -5
CONST 90
JLEQ L27
LABEL L42
LDLC -5
CONST 97
JLT L28
LDLC -5
CONST 122
JGT L28
LABEL L27
!       REPEAT ch := s[i]; INC(i)
LINE 69
LDLW 12
LDLW -4
LDLW 16
BOUND 69
LDIC
STLC -5
INCL -4
!       UNTIL ~((ch >= "0") & (ch <= "9") OR (ch >= "A") & (ch <= "Z")
LINE 70
LDLC -5
CONST 48
JLT L35
LDLC -5
CONST 57
JLEQ L31
LABEL L35
LDLC -5
CONST 65
JLT L33
LDLC -5
CONST 90
JLEQ L31
LABEL L33
LDLC -5
CONST 97
JLT L32
LDLC -5
CONST 122
JLEQ L31
LABEL L32
LDLC -5
CONST 46
JNEQ L30
LABEL L31
LDLW -4
CONST 32
JNEQ L27
LABEL L30
!       IF (i < 32) & (ch = 0X) THEN res := 0 END
LINE 72
LDLW -4
CONST 32
JGEQ L28
LDLC -5
JNEQZ L28
CONST 0
STGW OMSPL.res
LABEL L28
RETURN
END

PROC OMSPL.fixupFlash 24 4 0x00500801
!   PROCEDURE fixupFlash(VAR R: Files.Rider; import: ARRAY OF Module; destbase, fixbase: INTEGER);
LINE 78
!     FilesEx.ReadHalfWord(R, adr);
LINE 81
LOCAL -4
LDLW 16
LDLW 12
GLOBAL FilesEx.ReadHalfWord
CALL 3
LABEL L45
!     WHILE adr # 0 DO Files.ReadByte(R, mno); FilesEx.ReadHalfWord(R, dest); FilesEx.ReadHalfWord(R, ofs);
LINE 82
LDLW -4
JEQZ L47
LOCAL -17
LDLW 16
LDLW 12
GLOBAL POFiles.ReadByte
CALL 3
LOCAL -12
LDLW 16
LDLW 12
GLOBAL FilesEx.ReadHalfWord
CALL 3
LOCAL -8
LDLW 16
LDLW 12
GLOBAL FilesEx.ReadHalfWord
CALL 3
!       IF mno = 0 THEN (*current module*) INC(dest, destbase)
LINE 83
LDLC -17
JNEQZ L50
LOCAL -12
DUP 0
LOADW
LDLW 28
PLUS
SWAP
STOREW
JUMP L48
LABEL L50
!       ELSE (*imported*) impmod :=  import[mno - 1]; dest := impmod.ent[dest]
LINE 84
LDLW 20
LDLC -17
DEC
LDLW 24
BOUND 84
LDIW
STLW -24
LDLW -24
NCHECK 84
CONST 72
OFFSET
LDLW -12
CONST 64
BOUND 84
LDIW
STLW -12
LABEL L48
!       END; INC(dest, ofs);
LINE 85
LOCAL -12
DUP 0
LOADW
LDLW -8
PLUS
SWAP
STOREW
LABEL L51
!       REPEAT INC(adr, fixbase);
LINE 86
LOCAL -4
DUP 0
LOADW
LDLW 32
PLUS
SWAP
STOREW
!         nadr := GetWordAt(adr); PutWordAt(adr, dest); adr := nadr
LINE 87
LDLW -4
GLOBAL OMSPL.GetWordAt
CALLW 1
STLW -16
LDLW -12
LDLW -4
GLOBAL OMSPL.PutWordAt
CALL 2
LDLW -16
STLW -4
!       UNTIL nadr = 0;
LINE 88
LDLW -16
JNEQZ L51
!       FilesEx.ReadHalfWord(R, adr) (*go to next chain*)
LINE 89
LOCAL -4
LDLW 16
LDLW 12
GLOBAL FilesEx.ReadHalfWord
CALL 3
JUMP L45
LABEL L47
RETURN
END

PROC OMSPL.LinkOne 344 7 OMSPL.LinkOne.%map
!   PROCEDURE LinkOne(name: ARRAY OF CHAR; VAR newmod: Module);
LINE 93
!   BEGIN mod := first; error(noerr, name); nofimps := 0; flashSize := LSL(1, 31) - 1;
LINE 109
LDGW OMSPL.first
STLW -4
LDLW 16
LDLW 12
CONST 0
GLOBAL OMSPL.error
CALL 3
CONST 0
STLW -28
CONST -2147483649
STLW -32
!     key := 0; codeseg := 0FFH; f := 0;
LINE 110
CONST 0
STLW -20
CONST 255
STLC -207
CONST 0
STLW -36
LABEL L53
!     WHILE (mod # NIL) & (name # mod.name) DO mod := mod.next END ;
LINE 111
LDLW -4
JEQZ L55
CONST 32
LDLW -4
NCHECK 111
LDLW 16
LDLW 12
GLOBAL COMPARE
CALLW 4
JEQZ L55
LDLW -4
NCHECK 111
LDNW 32
STLW -4
JUMP L53
LABEL L55
!     IF mod = NIL THEN (*link*)
LINE 112
LDLW -4
JNEQZ L59
!       Check(name);
LINE 113
LDLW 16
LDLW 12
GLOBAL OMSPL.Check
CALL 2
!       IF res = noerr THEN F := ThisFile(name) ELSE F := NIL END ;
LINE 114
LDGW OMSPL.res
JNEQZ L62
LDLW 16
LDLW 12
GLOBAL OMSPL.ThisFile
CALLW 2
STLW -128
JUMP L60
LABEL L62
CONST 0
STLW -128
LABEL L60
!       IF F # NIL THEN
LINE 115
LDLW -128
JEQZ L65
!         Files.Set(R, F, 0); Files.ReadString(R, name1); Files.ReadInt(R, key); Files.ReadByte(R, codeseg);
LINE 116
CONST 0
LDLW -128
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.Set
CALL 4
CONST 32
LOCAL -92
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.ReadString
CALL 4
LOCAL -20
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.ReadInt
CALL 3
LOCAL -207
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.ReadByte
CALL 3
!         FilesEx.ReadHalfWord(R, flashSize); importing := name1;
LINE 117
LOCAL -32
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
GLOBAL OMSPL.importing
LOCAL -92
CONST 32
FIXCOPY
!         Files.ReadString(R, impname);   (*imports*)
LINE 118
CONST 32
LOCAL -124
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.ReadString
CALL 4
LABEL L66
!         WHILE (impname[0] # 0X) & (res = noerr) DO
LINE 119
LDLC -124
JEQZ L63
LDGW OMSPL.res
JNEQZ L63
!           Files.ReadInt(R, impkey);
LINE 120
LOCAL -24
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.ReadInt
CALL 3
!           LinkOne(impname, impmod); import[nofimps] := impmod; INC(nofimps);
LINE 121
LOCAL -8
CONST 32
LOCAL -124
GLOBAL OMSPL.LinkOne
CALL 3
LDLW -8
LOCAL -204
LDLW -28
CONST 16
BOUND 121
STIW
INCL -28
!           IF res = noerr THEN importing := name1;
LINE 122
LDGW OMSPL.res
JNEQZ L66
GLOBAL OMSPL.importing
LOCAL -92
CONST 32
FIXCOPY
!             IF impmod.key # impkey THEN error(badkey, name1); imported := impname END;
LINE 123
LDLW -8
NCHECK 123
LDNW 36
LDLW -24
JEQ L74
CONST 32
LOCAL -92
CONST 3
GLOBAL OMSPL.error
CALL 3
GLOBAL OMSPL.imported
LOCAL -124
CONST 32
FIXCOPY
LABEL L74
!             Files.ReadString(R, impname)
LINE 124
CONST 32
LOCAL -124
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.ReadString
CALL 4
JUMP L66
LABEL L65
!       ELSE error(nofile, name)
LINE 127
LDLW 16
LDLW 12
CONST 1
GLOBAL OMSPL.error
CALL 3
LABEL L63
!       IF res = noerr THEN
LINE 129
LDGW OMSPL.res
JNEQZ L78
!         IF flashSize < limit - Flash.allocPtr THEN (*allocate*)
LINE 130
LDLW -32
LDGW OMSPL.limit
LDGW OMSPL.Flash
NCHECK 130
LDNW 4
MINUS
JGEQ L81
!           f := Flash.allocPtr; NEW(mod);
LINE 131
LDGW OMSPL.Flash
NCHECK 131
LDNW 4
STLW -36
CONST 328
GLOBAL OMSPL.ModDesc
GLOBAL NEW
CALLW 2
STLW -4
!           Flash.allocPtr := (f + flashSize + (G.WordSize - 1) ) DIV G.WordSize*G.WordSize; mod.size := Flash.allocPtr - f;
LINE 132
LDLW -36
LDLW -32
PLUS
INC
CONST 2
DIV
CONST 2
TIMES
LDGW OMSPL.Flash
NCHECK 132
STNW 4
LDGW OMSPL.Flash
NCHECK 132
LDNW 4
LDLW -36
MINUS
LDLW -4
NCHECK 132
STNW 44
!           IF first = NIL THEN mod.num := 1; first := mod ELSE mod.num := last.num + 1; last.next := mod END;
LINE 133
LDGW OMSPL.first
JNEQZ L84
CONST 1
LDLW -4
NCHECK 133
STNW 40
LDLW -4
STGW OMSPL.first
JUMP L82
LABEL L84
LDGW OMSPL.last
NCHECK 133
LDNW 40
INC
LDLW -4
NCHECK 133
STNW 40
LDLW -4
LDGW OMSPL.last
NCHECK 133
STNW 32
LABEL L82
!           last := mod; mod.next := NIL
LINE 134
LDLW -4
STGW OMSPL.last
CONST 0
LDLW -4
NCHECK 134
STNW 32
JUMP L78
LABEL L81
!         ELSE error(nospace, name1)
LINE 135
CONST 32
LOCAL -92
CONST 5
GLOBAL OMSPL.error
CALL 3
LABEL L78
!       IF res = noerr THEN (*read file*)
LINE 138
LDGW OMSPL.res
JNEQZ L87
!         mod.name := name;
LINE 139
CONST 32
LDLW -4
NCHECK 139
LDLW 16
LDLW 12
CONST 1
CONST 1
GLOBAL FLEXASSIGN
CALL 6
!         i := 0; REPEAT INC(i) UNTIL mod.name[i] = 0X; REPEAT mod.name[i] := 0X; INC(i) UNTIL i=32;
LINE 140
CONST 0
STLW -12
LABEL L88
INCL -12
LDLW -4
NCHECK 140
LDLW -12
CONST 32
BOUND 140
LDIC
JNEQZ L88
LABEL L90
CONST 0
LDLW -4
NCHECK 140
LDLW -12
CONST 32
BOUND 140
STIC
INCL -12
LDLW -12
CONST 32
JNEQ L90
!         mod.key := key; mod.codeseg := codeseg;
LINE 141
LDLW -20
LDLW -4
NCHECK 141
STNW 36
LDLC -207
LDLW -4
NCHECK 141
CONST 68
STIC
!         mod.conststo := f; (*const section storage address*)
LINE 142
LDLW -36
LDLW -4
NCHECK 142
STNW 52
!         FilesEx.ReadHalfWord(R, n); (*size of type descriptors*)
LINE 143
LOCAL -16
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
LABEL L92
!         WHILE n > 0 DO FilesEx.ReadHalfWord(R, w); PutWordAt(f, w); INC(f, G.WordSize); DEC(n, G.WordSize) END;  (*type descriptors*)
LINE 144
LDLW -16
JLEQZ L94
LOCAL -40
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
LDLW -40
LDLW -36
GLOBAL OMSPL.PutWordAt
CALL 2
LDLW -36
CONST 2
PLUS
STLW -36
LDLW -16
CONST 2
MINUS
STLW -16
JUMP L92
LABEL L94
!         FilesEx.ReadHalfWord(R, n); (*size of data*)
LINE 145
LOCAL -16
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
!         mod.data := RAMAllocPtr; INC(RAMAllocPtr, n); (*note: data is never initialized*)
LINE 146
LDGW OMSPL.RAMAllocPtr
LDLW -4
NCHECK 146
STNW 48
GLOBAL OMSPL.RAMAllocPtr
DUP 0
LOADW
LDLW -16
PLUS
SWAP
STOREW
!         IF RAMAllocPtr >= RAMLimit THEN error(nospace, name1) END
LINE 147
LDGW OMSPL.RAMAllocPtr
LDGW OMSPL.RAMLimit
JLT L87
CONST 32
LOCAL -92
CONST 5
GLOBAL OMSPL.error
CALL 3
LABEL L87
!       IF res = noerr THEN (*continue reading*)
LINE 149
LDGW OMSPL.res
JNEQZ L100
!         FilesEx.ReadHalfWord(R, n); (*size of stored constants*)
LINE 150
LOCAL -16
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
LABEL L101
!         WHILE n > 0 DO Files.Read(R, ch); Flash.m[f] := ORD(ch); INC(f); DEC(n) END;
LINE 151
LDLW -16
JLEQZ L103
LOCAL -41
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.Read
CALL 3
LDLC -41
CONVNC
LDGW OMSPL.Flash
NCHECK 151
CONST 8
OFFSET
LDLW -36
CONST 65536
BOUND 151
OFFSET
STOREC
INCL -36
DECL -16
JUMP L101
LABEL L103
!         WHILE f MOD G.WordSize # 0 DO Flash.m[f] := 0FFH; INC(f) END; (*align to G.WordSize*)
LINE 152
LDLW -36
CONST 2
MOD
JEQZ L106
CONST 255
LDGW OMSPL.Flash
NCHECK 152
CONST 8
OFFSET
LDLW -36
CONST 65536
BOUND 152
OFFSET
STOREC
INCL -36
JUMP L103
LABEL L106
!         FilesEx.ReadHalfWord(R, n); (*In MSP430 implementation, program size is counted in bytes*)
LINE 153
LOCAL -16
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
!         mod.codesto := f; mod.codesize := n;
LINE 154
LDLW -36
LDLW -4
NCHECK 154
STNW 60
LDLW -16
LDLW -4
NCHECK 154
STNW 64
!         IF codeseg = 1 THEN mod.codeexe := RAMAllocPtr; INC(RAMAllocPtr, n)
LINE 155
LDLC -207
CONST 1
JNEQ L109
LDGW OMSPL.RAMAllocPtr
LDLW -4
NCHECK 155
STNW 56
GLOBAL OMSPL.RAMAllocPtr
DUP 0
LOADW
LDLW -16
PLUS
SWAP
STOREW
JUMP L107
LABEL L109
!         ELSE mod.codeexe := Flash.origin + f END;
LINE 156
LDGW OMSPL.Flash
NCHECK 156
LOADW
LDLW -36
PLUS
LDLW -4
NCHECK 156
STNW 56
LABEL L107
!         WHILE n > 0 DO FilesEx.ReadHalfWord(R, w); PutWordAt(f, w); INC(f, G.WordSize); DEC(n, G.WordSize) END ;  (*program code*)
LINE 157
LDLW -16
JLEQZ L112
LOCAL -40
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
LDLW -40
LDLW -36
GLOBAL OMSPL.PutWordAt
CALL 2
LDLW -36
CONST 2
PLUS
STLW -36
LDLW -16
CONST 2
MINUS
STLW -16
JUMP L107
LABEL L112
!         Files.ReadByte(R, nv); (*number of entries in vector table*)
LINE 158
LOCAL -206
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.ReadByte
CALL 3
!         FOR i := 0 TO nv - 1 DO FilesEx.ReadHalfWord(R, w); vec[i] := w END; (*module vector table*)
LINE 159
LDLC -206
DEC
STLW -340
CONST 0
STLW -12
LABEL L113
LDLW -12
LDLW -340
JGT L114
LOCAL -40
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
LDLW -40
LOCAL -336
LDLW -12
CONST 32
BOUND 159
STIW
INCL -12
JUMP L113
LABEL L114
!         FilesEx.ReadHalfWord(R, n); (*number of entries*)
LINE 160
LOCAL -16
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
!         FOR i := 0 TO n - 1 DO Files.Read(R, ch); FilesEx.ReadHalfWord(R, w); (*entries*)
LINE 161
LDLW -16
DEC
STLW -344
CONST 0
STLW -12
LABEL L115
LDLW -12
LDLW -344
JGT L116
LOCAL -41
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.Read
CALL 3
LOCAL -40
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
!           IF ch = "c" THEN (*code*) INC(w, mod.codeexe)
LINE 162
LDLC -41
CONST 99
JNEQ L121
LOCAL -40
DUP 0
LOADW
LDLW -4
NCHECK 162
LDNW 56
PLUS
SWAP
STOREW
JUMP L117
LABEL L121
!           ELSIF ch = "d" THEN (*data*) INC(w, mod.data)
LINE 163
LDLC -41
CONST 100
JNEQ L123
LOCAL -40
DUP 0
LOADW
LDLW -4
NCHECK 163
LDNW 48
PLUS
SWAP
STOREW
JUMP L117
LABEL L123
!           ELSE ASSERT(ch = "k"); (*constant*) INC(w, Flash.origin + mod.conststo)
LINE 164
LDLC -41
CONST 107
JEQ L119
CONST 0
CONST 164
GLOBAL EASSERT
CALL 2
LABEL L119
LOCAL -40
DUP 0
LOADW
LDGW OMSPL.Flash
NCHECK 164
LOADW
LDLW -4
NCHECK 164
LDNW 52
PLUS
PLUS
SWAP
STOREW
LABEL L117
!           END; mod.ent[i] := w
LINE 165
LDLW -40
LDLW -4
NCHECK 165
CONST 72
OFFSET
LDLW -12
CONST 64
BOUND 165
STIW
!         FOR i := 0 TO n - 1 DO Files.Read(R, ch); FilesEx.ReadHalfWord(R, w); (*entries*)
LINE 161
INCL -12
JUMP L115
LABEL L116
!         fixupFlash(R, import, mod.codeexe, mod.codesto); (*fixup procedures*)
LINE 167
LDLW -4
NCHECK 167
LDNW 60
LDLW -4
NCHECK 167
LDNW 56
CONST 16
LOCAL -204
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL OMSPL.fixupFlash
CALL 6
!         FilesEx.ReadHalfWord(R, i); (*fixup handlers*)
LINE 169
LOCAL -12
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
LABEL L124
!         WHILE i # 0 DO Files.ReadByte(R, mno); ASSERT(mno = 0); FilesEx.ReadHalfWord(R, dest);
LINE 170
LDLW -12
JEQZ L126
LOCAL -205
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.ReadByte
CALL 3
LDLC -205
JEQZ L128
CONST 0
CONST 170
GLOBAL EASSERT
CALL 2
LABEL L128
LOCAL -60
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
!           FilesEx.ReadHalfWord(R, ofs); ASSERT(ofs = 0); INC(dest, mod.codeexe);
LINE 171
LOCAL -52
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
LDLW -52
JEQZ L130
CONST 0
CONST 171
GLOBAL EASSERT
CALL 2
LABEL L130
LOCAL -60
DUP 0
LOADW
LDLW -4
NCHECK 171
LDNW 56
PLUS
SWAP
STOREW
LABEL L131
!           REPEAT DEC(i, 100H);
LINE 172
LDLW -12
CONST 256
MINUS
STLW -12
!             IF vector[i] # 0FFFFH THEN
LINE 173
GLOBAL OMSPL.vector
LDLW -12
CONST 32
BOUND 173
LDIW
CONST 65535
JEQ L135
!               Texts.WriteString(W, "interrupt vector number"); Texts.WriteInt(W, i, 3); error(duphandler, name1)
LINE 174
CONST 24
GLOBAL OMSPL.%2
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
CONST 3
LDLW -12
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteInt
CALL 4
CONST 32
LOCAL -92
CONST 2
GLOBAL OMSPL.error
CALL 3
LABEL L135
!             vector[i] := dest; i := vec[i]
LINE 176
LDLW -60
GLOBAL OMSPL.vector
LDLW -12
CONST 32
BOUND 176
STIW
LOCAL -336
LDLW -12
CONST 32
BOUND 176
LDIW
STLW -12
!           UNTIL i = 0;
LINE 177
LDLW -12
JNEQZ L131
!           FilesEx.ReadHalfWord(R, i) (*go to next chain*)
LINE 178
LOCAL -12
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
JUMP L124
LABEL L126
!         FilesEx.ReadHalfWord(R, adr); (*fixup data*)
LINE 181
LOCAL -48
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
LABEL L136
!         WHILE adr # 0 DO Files.ReadByte(R, mno); FilesEx.ReadHalfWord(R, dest); FilesEx.ReadHalfWord(R, ofs);
LINE 182
LDLW -48
JEQZ L138
LOCAL -205
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.ReadByte
CALL 3
LOCAL -60
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
LOCAL -52
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
!           IF mno = 0 THEN (*current module*) INC(dest, mod.data)
LINE 183
LDLC -205
JNEQZ L141
LOCAL -60
DUP 0
LOADW
LDLW -4
NCHECK 183
LDNW 48
PLUS
SWAP
STOREW
JUMP L139
LABEL L141
!           ELSE (*imported*) impmod :=  import[mno - 1]; dest := impmod.ent[dest]
LINE 184
LOCAL -204
LDLC -205
DEC
CONST 16
BOUND 184
LDIW
STLW -8
LDLW -8
NCHECK 184
CONST 72
OFFSET
LDLW -60
CONST 64
BOUND 184
LDIW
STLW -60
LABEL L139
!           END; INC(dest, ofs);
LINE 185
LOCAL -60
DUP 0
LOADW
LDLW -52
PLUS
SWAP
STOREW
LABEL L142
!           REPEAT INC(adr, mod.codesto);
LINE 186
LOCAL -48
DUP 0
LOADW
LDLW -4
NCHECK 186
LDNW 60
PLUS
SWAP
STOREW
!             nadr := GetWordAt(adr); PutWordAt(adr, dest); adr := nadr
LINE 187
LDLW -48
GLOBAL OMSPL.GetWordAt
CALLW 1
STLW -56
LDLW -60
LDLW -48
GLOBAL OMSPL.PutWordAt
CALL 2
LDLW -56
STLW -48
!           UNTIL adr = 0;
LINE 188
LDLW -48
JNEQZ L142
!           FilesEx.ReadHalfWord(R, adr) (*go to next chain*)
LINE 189
LOCAL -48
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
JUMP L136
LABEL L138
!         fixupFlash(R, import, Flash.origin + mod.conststo, mod.codesto); (*fixup constants in code space*)
LINE 192
LDLW -4
NCHECK 192
LDNW 60
LDGW OMSPL.Flash
NCHECK 192
LOADW
LDLW -4
NCHECK 192
LDNW 52
PLUS
CONST 16
LOCAL -204
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL OMSPL.fixupFlash
CALL 6
!         fixupFlash(R, import, mod.data, mod.conststo); (*fixup variables in constant space*)
LINE 193
LDLW -4
NCHECK 193
LDNW 52
LDLW -4
NCHECK 193
LDNW 48
CONST 16
LOCAL -204
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL OMSPL.fixupFlash
CALL 6
!         fixupFlash(R, import, Flash.origin + mod.conststo, mod.conststo); (*fixup constants in constants space*)
LINE 194
LDLW -4
NCHECK 194
LDNW 52
LDGW OMSPL.Flash
NCHECK 194
LOADW
LDLW -4
NCHECK 194
LDNW 52
PLUS
CONST 16
LOCAL -204
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL OMSPL.fixupFlash
CALL 6
!         FilesEx.ReadHalfWord(R, w);
LINE 196
LOCAL -40
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL FilesEx.ReadHalfWord
CALL 3
!         IF GetWordAt(mod.codesto + w) = 4130H THEN (*module init is empty*)
LINE 197
LDLW -4
NCHECK 197
LDNW 60
LDLW -40
PLUS
GLOBAL OMSPL.GetWordAt
CALLW 1
CONST 16688
JNEQ L146
!           DEC(mod.codesize, 2); mod.ent[0] := -1; (*mark init address as invalid*)
LINE 198
LDLW -4
NCHECK 198
DUP 0
LDNW 64
CONST 2
MINUS
SWAP
STNW 64
CONST -1
LDLW -4
NCHECK 198
STNW 72
!           IF codeseg = 1 THEN DEC(RAMAllocPtr, 2) ELSE DEC(Flash.allocPtr, 2) END
LINE 199
LDLC -207
CONST 1
JNEQ L149
LDGW OMSPL.RAMAllocPtr
CONST 2
MINUS
STGW OMSPL.RAMAllocPtr
JUMP L146
LABEL L149
LDGW OMSPL.Flash
NCHECK 199
DUP 0
LDNW 4
CONST 2
MINUS
SWAP
STNW 4
LABEL L146
!         Files.Read(R, ch);
LINE 202
LOCAL -41
GLOBAL POFiles.Rider
LOCAL -140
GLOBAL POFiles.Read
CALL 3
!         IF ch # "O" THEN mod := NIL; error(badfile, name) END
LINE 203
LDLC -41
CONST 79
JEQ L100
CONST 0
STLW -4
LDLW 16
LDLW 12
CONST 4
GLOBAL OMSPL.error
CALL 3
LABEL L100
!       IF res >= badkey THEN importing := name END
LINE 205
LDGW OMSPL.res
CONST 3
JLT L59
CONST 32
GLOBAL OMSPL.importing
LDLW 16
LDLW 12
CONST 1
CONST 1
GLOBAL FLEXASSIGN
CALL 6
LABEL L59
!     newmod := mod
LINE 207
LDLW -4
LDLW 20
STOREW
RETURN
END

PROC OMSPL.Link 168 7 OMSPL.Link.%map
!   PROCEDURE Link*;  (*link multiple object files together and create a single MSP430 TI-TXT file M.txt from them*)
LINE 210
!   BEGIN Texts.OpenScanner(S, Oberon.Par.text, Oberon.Par.pos); Texts.Scan(S); res := noerr; count := 0;
LINE 216
GLOBAL Oberon.Par
LDNW 4
LDGW Oberon.Par
GLOBAL Texts.Scanner
LOCAL -128
GLOBAL Texts.OpenScanner
CALL 4
GLOBAL Texts.Scanner
LOCAL -128
GLOBAL Texts.Scan
CALL 2
CONST 0
STGW OMSPL.res
CONST 0
STLW -20
!     Flash := SYSTEM.VAL(Segment, Modules.AllocPtr); FOR i := 0 TO 31 DO vector[i] := 0FFFFH END;
LINE 217
LDGW Modules.AllocPtr
STGW OMSPL.Flash
CONST 0
STLW -4
LABEL L156
LDLW -4
CONST 31
JGT L157
CONST 65535
GLOBAL OMSPL.vector
LDLW -4
CONST 32
BOUND 217
STIW
INCL -4
JUMP L156
LABEL L157
!     IF S.class = Texts.Int THEN  vecsize := S.i; Texts.Scan(S) ELSE vecsize := 0; res := nopar END;
LINE 218
LDLW -88
CONST 3
JNEQ L160
LDLW -84
STLW -12
GLOBAL Texts.Scanner
LOCAL -128
GLOBAL Texts.Scan
CALL 2
JUMP L158
LABEL L160
CONST 0
STLW -12
CONST 6
STGW OMSPL.res
LABEL L158
!     IF S.class = Texts.Int THEN  limit := S.i - vecsize; Flash.origin := FlashEnd - S.i; Flash.allocPtr := 0; Texts.Scan(S) ELSE res := nopar END;
LINE 219
LDLW -88
CONST 3
JNEQ L163
LDLW -84
LDLW -12
MINUS
STGW OMSPL.limit
CONST 65536
LDLW -84
MINUS
LDGW OMSPL.Flash
NCHECK 219
STOREW
CONST 0
LDGW OMSPL.Flash
NCHECK 219
STNW 4
GLOBAL Texts.Scanner
LOCAL -128
GLOBAL Texts.Scan
CALL 2
JUMP L161
LABEL L163
CONST 6
STGW OMSPL.res
LABEL L161
!     IF (res = noerr) & (S.class = Texts.Int) THEN RAMLimit := RAMOrigin + S.i; RAMAllocPtr := RAMOrigin; Texts.Scan(S) ELSE res := nopar END;
LINE 220
LDGW OMSPL.res
JNEQZ L166
LDLW -88
CONST 3
JNEQ L166
LDLW -84
CONST 512
PLUS
STGW OMSPL.RAMLimit
CONST 512
STGW OMSPL.RAMAllocPtr
GLOBAL Texts.Scanner
LOCAL -128
GLOBAL Texts.Scan
CALL 2
JUMP L164
LABEL L166
CONST 6
STGW OMSPL.res
LABEL L164
!     IF (res = noerr) & (S.class = Texts.Name) THEN first := NIL; last := NIL;
LINE 221
LDGW OMSPL.res
JNEQZ L170
LDLW -88
CONST 1
JNEQ L170
CONST 0
STGW OMSPL.first
CONST 0
STGW OMSPL.last
LABEL L171
!       REPEAT LinkOne(S.s, M); Texts.Scan(S) UNTIL (S.class # Texts.Name) OR (res # noerr);
LINE 222
LOCAL -132
CONST 32
LOCAL -68
GLOBAL OMSPL.LinkOne
CALL 3
GLOBAL Texts.Scanner
LOCAL -128
GLOBAL Texts.Scan
CALL 2
LDLW -88
CONST 1
JNEQ L172
LDGW OMSPL.res
JEQZ L171
LABEL L172
!       IF res = noerr THEN Texts.WriteString(W, "  linking");
LINE 223
LDGW OMSPL.res
JNEQZ L176
CONST 10
GLOBAL OMSPL.%3
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
!         (*prolog*) vector[31] := Flash.origin + Flash.allocPtr; p := first;
LINE 224
LDGW OMSPL.Flash
NCHECK 224
LOADW
LDGW OMSPL.Flash
NCHECK 224
LDNW 4
PLUS
GLOBAL OMSPL.vector
STNW 124
LDGW OMSPL.first
STLW -136
!         (*MOV RAMLimit, SP*) EmitWord(4031H); EmitWord(RAMLimit);
LINE 225
CONST 16433
GLOBAL OMSPL.EmitWord
CALL 1
LDGW OMSPL.RAMLimit
GLOBAL OMSPL.EmitWord
CALL 1
LABEL L177
!         WHILE p # NIL DO (*fixup*) Texts.Write(W, " "); Texts.WriteString(W, p.name);
LINE 226
LDLW -136
JEQZ L176
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.Write
CALL 3
CONST 32
LDLW -136
NCHECK 226
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
!           IF p.codeseg = 1 THEN (*module executed from RAM*) Texts.Write(W, "*");
LINE 227
LDLW -136
NCHECK 227
CONST 68
LDIC
CONST 1
JNEQ L182
CONST 42
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.Write
CALL 3
!             (*MOV p.codesize DIV 2,R15*) EmitWord(403FH); EmitWord(p.codesize DIV 2);
LINE 229
CONST 16447
GLOBAL OMSPL.EmitWord
CALL 1
LDLW -136
NCHECK 229
LDNW 64
CONST 2
DIV
GLOBAL OMSPL.EmitWord
CALL 1
!             (*MOV Flash.origin + p.codesto,R14*) EmitWord(403EH);  EmitWord(Flash.origin + p.codesto);
LINE 230
CONST 16446
GLOBAL OMSPL.EmitWord
CALL 1
LDGW OMSPL.Flash
NCHECK 230
LOADW
LDLW -136
NCHECK 230
LDNW 60
PLUS
GLOBAL OMSPL.EmitWord
CALL 1
!             (*MOV @R14+,p.codeexe - (Flash.origin + p.codesto)(R14) - 2*) EmitWord(4EBEH); EmitWord(p.codeexe - Flash.origin - p.codesto - 2);
LINE 231
CONST 20158
GLOBAL OMSPL.EmitWord
CALL 1
LDLW -136
NCHECK 231
LDNW 56
LDGW OMSPL.Flash
NCHECK 231
LOADW
MINUS
LDLW -136
NCHECK 231
LDNW 60
MINUS
CONST 2
MINUS
GLOBAL OMSPL.EmitWord
CALL 1
!             (*SUB #1,R15*) EmitWord(831FH);
LINE 232
CONST 33567
GLOBAL OMSPL.EmitWord
CALL 1
!             (*JNE #-4*2*) EmitWord(23FCH)
LINE 233
CONST 9212
GLOBAL OMSPL.EmitWord
CALL 1
LABEL L182
!           INC(count); IF count MOD 8 = 0 THEN count := 0; Texts.WriteLn(W) END;
LINE 235
INCL -20
LDLW -20
CONST 8
MOD
JNEQZ L185
CONST 0
STLW -20
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L185
!           IF p.ent[0] >= 0 THEN (*init code present: CALL p.ent[0]*); EmitWord(12B0H); EmitWord(p.ent[0]) END;
LINE 236
LDLW -136
NCHECK 236
LDNW 72
JLTZ L188
CONST 4784
GLOBAL OMSPL.EmitWord
CALL 1
LDLW -136
NCHECK 236
LDNW 72
GLOBAL OMSPL.EmitWord
CALL 1
LABEL L188
!           p := p.next
LINE 237
LDLW -136
NCHECK 237
LDNW 32
STLW -136
JUMP L177
LABEL L176
!       IF (res = noerr) & (M.ent[0] < 0) THEN error(noinit, M.name) END;
LINE 240
LDGW OMSPL.res
JNEQZ L191
LDLW -132
NCHECK 240
LDNW 72
JGEQZ L191
CONST 32
LDLW -132
NCHECK 240
CONST 7
GLOBAL OMSPL.error
CALL 3
LABEL L191
!       IF res = noerr THEN
LINE 241
LDGW OMSPL.res
JNEQZ L210
!         MakeFileName(name, S.s, ".txt"); F := Files.New(name); Files.Set(R, F, 0);
LINE 242
CONST 5
GLOBAL OMSPL.%4
CONST 32
LOCAL -68
CONST 32
LOCAL -168
GLOBAL OMSPL.MakeFileName
CALL 6
CONST 32
LOCAL -168
GLOBAL POFiles.New
CALLW 2
STLW -24
CONST 0
LDLW -24
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL POFiles.Set
CALL 4
!         i := 32 - vecsize DIV 2; isrtrap := -1; (*install default ISR trap if required*)
LINE 244
CONST 32
LDLW -12
CONST 2
DIV
MINUS
STLW -4
CONST -1
STLW -16
LABEL L211
!           IF vector[i] = 0FFFFH THEN (*isrtrap is needed*) isrtrap := Flash.origin + Flash.allocPtr;
LINE 246
GLOBAL OMSPL.vector
LDLW -4
CONST 32
BOUND 246
LDIW
CONST 65535
JNEQ L216
LDGW OMSPL.Flash
NCHECK 246
LOADW
LDGW OMSPL.Flash
NCHECK 246
LDNW 4
PLUS
STLW -16
!             EmitWord(0D032H); EmitWord( 0010H); EmitWord(3FFDH) END;
LINE 247
CONST 53298
GLOBAL OMSPL.EmitWord
CALL 1
CONST 16
GLOBAL OMSPL.EmitWord
CALL 1
CONST 16381
GLOBAL OMSPL.EmitWord
CALL 1
LABEL L216
!           INC(i)
LINE 248
INCL -4
!         UNTIL (i >= 31) OR (isrtrap > 0);
LINE 249
LDLW -4
CONST 31
JGEQ L212
LDLW -16
JLEQZ L211
LABEL L212
!         i := 0; Files.Write(R, "@"); FilesEx.WriteHexHalfWord(R, Flash.origin); FilesEx.WriteLn(R); (*code*)
LINE 252
CONST 0
STLW -4
CONST 64
ALIGNC
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL POFiles.Write
CALL 3
LDGW OMSPL.Flash
NCHECK 252
LOADW
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteHexHalfWord
CALL 3
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteLn
CALL 2
LABEL L217
!         WHILE i < Flash.allocPtr DO
LINE 253
LDLW -4
LDGW OMSPL.Flash
NCHECK 253
LDNW 4
JGEQ L219
!           FilesEx.WriteHex(R, Flash.m[i]); Files.Write(R, " "); INC(i);
LINE 254
LDGW OMSPL.Flash
NCHECK 254
CONST 8
OFFSET
LDLW -4
CONST 65536
BOUND 254
OFFSET
LOADC
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteHex
CALL 3
CONST 32
ALIGNC
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL POFiles.Write
CALL 3
INCL -4
!           IF i MOD 16 = 0 THEN FilesEx.WriteLn(R) END
LINE 255
LDLW -4
CONST 16
MOD
JNEQZ L217
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteLn
CALL 2
JUMP L217
LABEL L219
!         IF i MOD 16 # 0 THEN FilesEx.WriteLn(R) END;
LINE 257
LDLW -4
CONST 16
MOD
JEQZ L225
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteLn
CALL 2
LABEL L225
!         i := 0; x := 32 - vecsize DIV 2; Files.Write(R, "@"); FilesEx.WriteHexHalfWord(R, FlashEnd - x*2); FilesEx.WriteLn(R); (*vector table*)
LINE 259
CONST 0
STLW -4
CONST 32
LDLW -12
CONST 2
DIV
MINUS
STLW -8
CONST 64
ALIGNC
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL POFiles.Write
CALL 3
CONST 65536
LDLW -8
CONST 2
TIMES
MINUS
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteHexHalfWord
CALL 3
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteLn
CALL 2
LABEL L226
!         WHILE x < 32 DO IF vector[x] = 0FFFFH THEN vector[x] := isrtrap END;
LINE 260
LDLW -8
CONST 32
JGEQ L228
GLOBAL OMSPL.vector
LDLW -8
CONST 32
BOUND 260
LDIW
CONST 65535
JNEQ L231
LDLW -16
GLOBAL OMSPL.vector
LDLW -8
CONST 32
BOUND 260
STIW
LABEL L231
!           FilesEx.WriteHex(R, vector[x] MOD 100H); Files.Write(R, " ");
LINE 261
GLOBAL OMSPL.vector
LDLW -8
CONST 32
BOUND 261
LDIW
CONST 256
MOD
CONVNC
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteHex
CALL 3
CONST 32
ALIGNC
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL POFiles.Write
CALL 3
!           FilesEx.WriteHex(R, vector[x] DIV 100H MOD 100H); Files.Write(R, " ");
LINE 262
GLOBAL OMSPL.vector
LDLW -8
CONST 32
BOUND 262
LDIW
CONST 256
DIV
CONST 256
MOD
CONVNC
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteHex
CALL 3
CONST 32
ALIGNC
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL POFiles.Write
CALL 3
!           INC(i,2); IF i MOD 16 = 0 THEN FilesEx.WriteLn(R) END;
LINE 263
LDLW -4
CONST 2
PLUS
STLW -4
LDLW -4
CONST 16
MOD
JNEQZ L234
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteLn
CALL 2
LABEL L234
!           INC(x)
LINE 264
INCL -8
JUMP L226
LABEL L228
!         IF i MOD 16 # 0 THEN FilesEx.WriteLn(R) END;
LINE 266
LDLW -4
CONST 16
MOD
JEQZ L237
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteLn
CALL 2
LABEL L237
!         Files.Write(R, "q"); FilesEx.WriteLn(R);
LINE 267
CONST 113
ALIGNC
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL POFiles.Write
CALL 3
GLOBAL POFiles.Rider
LOCAL -36
GLOBAL FilesEx.WriteLn
CALL 2
!         Files.Register(F);
LINE 268
LDLW -24
GLOBAL POFiles.Register
CALL 1
!         IF count MOD 8 # 0 THEN count := 0; Texts.WriteLn(W) END;
LINE 269
LDLW -20
CONST 8
MOD
JEQZ L240
CONST 0
STLW -20
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteLn
CALL 2
LABEL L240
!         Texts.WriteString(W, "    flash"); Texts.WriteInt(W, Flash.allocPtr, 5);
LINE 270
CONST 10
GLOBAL OMSPL.%5
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
CONST 5
LDGW OMSPL.Flash
NCHECK 270
LDNW 4
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteInt
CALL 4
!         Texts.WriteString(W, ", data"); Texts.WriteInt(W, RAMAllocPtr - RAMOrigin, 5);
LINE 271
CONST 7
GLOBAL OMSPL.%6
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
CONST 5
LDGW OMSPL.RAMAllocPtr
CONST 512
MINUS
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteInt
CALL 4
!         Texts.WriteString(W, ", stack"); Texts.WriteInt(W, RAMLimit - RAMAllocPtr, 5);
LINE 272
CONST 8
GLOBAL OMSPL.%7
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
CONST 5
LDGW OMSPL.RAMLimit
LDGW OMSPL.RAMAllocPtr
MINUS
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteInt
CALL 4
!         Texts.WriteString(W, " bytes")
LINE 273
CONST 7
GLOBAL OMSPL.%8
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
JUMP L168
LABEL L210
!         Texts.WriteString(W, "Link error:  "); Texts.WriteString(W, importing);
LINE 275
CONST 14
GLOBAL OMSPL.%9
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
CONST 32
GLOBAL OMSPL.importing
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
!         IF res = nofile THEN Texts.WriteString(W, " module not found")
LINE 276
LDGW OMSPL.res
CONST 1
JNEQ L196
CONST 18
GLOBAL OMSPL.%10
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
JUMP L168
LABEL L196
!         ELSIF res = duphandler THEN Texts.WriteString(W, " duplicate interrupt handler")
LINE 277
LDGW OMSPL.res
CONST 2
JNEQ L198
CONST 29
GLOBAL OMSPL.%11
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
JUMP L168
LABEL L198
!         ELSIF res = badkey THEN Texts.WriteString(W, " imports ");
LINE 278
LDGW OMSPL.res
CONST 3
JNEQ L200
CONST 10
GLOBAL OMSPL.%12
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
!           Texts.WriteString(W, imported); Texts.WriteString(W, " with bad key")
LINE 279
CONST 32
GLOBAL OMSPL.imported
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
CONST 14
GLOBAL OMSPL.%13
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
JUMP L168
LABEL L200
!         ELSIF res = badfile THEN Texts.WriteString(W, " corrupted obj file")
LINE 280
LDGW OMSPL.res
CONST 4
JNEQ L202
CONST 20
GLOBAL OMSPL.%14
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
JUMP L168
LABEL L202
!         ELSIF res = nospace THEN Texts.WriteString(W, " insufficient space")
LINE 281
LDGW OMSPL.res
CONST 5
JNEQ L204
CONST 20
GLOBAL OMSPL.%15
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
JUMP L168
LABEL L204
!         ELSIF res = noinit THEN Texts.WriteString(W, " top module init code missing")
LINE 282
LDGW OMSPL.res
CONST 7
JNEQ L206
CONST 30
GLOBAL OMSPL.%16
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
JUMP L168
LABEL L206
!         ELSIF res = notsupported THEN Texts.WriteString(W, " not supported feature")
LINE 283
LDGW OMSPL.res
CONST 8
JNEQ L168
CONST 23
GLOBAL OMSPL.%17
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
JUMP L168
LABEL L170
!     ELSE Texts.WriteString(W, "Usage: OMSPL.Link VectorTableSize FlashSize RAMSize [module...] topmodule")
LINE 286
CONST 74
GLOBAL OMSPL.%18
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
LABEL L168
!     Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 288
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteLn
CALL 2
LDGW OMSPL.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

PROC OMSPL.%main 0 5 0
! BEGIN Texts.OpenWriter(W); Texts.WriteString(W, "OMSP linker  AP 6.8.20 / CS 19.04.25");
LINE 291
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.OpenWriter
CALL 2
CONST 37
GLOBAL OMSPL.%19
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteString
CALL 4
!   Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf);
LINE 292
GLOBAL Texts.Writer
GLOBAL OMSPL.W
GLOBAL Texts.WriteLn
CALL 2
LDGW OMSPL.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

! Global variables
GLOVAR OMSPL.first 4
GLOVAR OMSPL.last 4
GLOVAR OMSPL.RAMAllocPtr 4
GLOVAR OMSPL.RAMLimit 4
GLOVAR OMSPL.limit 4
GLOVAR OMSPL.res 4
GLOVAR OMSPL.Flash 4
GLOVAR OMSPL.vector 128
GLOVAR OMSPL.importing 32
GLOVAR OMSPL.imported 32
GLOVAR OMSPL.W 20

! Global pointer map
DEFINE OMSPL.%gcmap
WORD GC_POINTER
WORD OMSPL.first
WORD GC_POINTER
WORD OMSPL.last
WORD GC_POINTER
WORD OMSPL.Flash
WORD GC_BASE
WORD OMSPL.W
WORD 0x00000023
WORD GC_END

! String ".mpc"
DEFINE OMSPL.%1
STRING 2E6D706300

! String "interrupt vector number"
DEFINE OMSPL.%2
STRING 696E7465727275707420766563746F72206E756D62657200

! String "  linking"
DEFINE OMSPL.%3
STRING 20206C696E6B696E6700

! String ".txt"
DEFINE OMSPL.%4
STRING 2E74787400

! String "    flash"
DEFINE OMSPL.%5
STRING 20202020666C61736800

! String ", data"
DEFINE OMSPL.%6
STRING 2C206461746100

! String ", stack"
DEFINE OMSPL.%7
STRING 2C20737461636B00

! String " bytes"
DEFINE OMSPL.%8
STRING 20627974657300

! String "Link error:  "
DEFINE OMSPL.%9
STRING 4C696E6B206572726F723A202000

! String " module not found"
DEFINE OMSPL.%10
STRING 206D6F64756C65206E6F7420666F756E6400

! String " duplicate interrupt handler"
DEFINE OMSPL.%11
STRING 206475706C696361746520696E746572727570742068616E646C657200

! String " imports "
DEFINE OMSPL.%12
STRING 20696D706F7274732000

! String " with bad key"
DEFINE OMSPL.%13
STRING 207769746820626164206B657900

! String " corrupted obj file"
DEFINE OMSPL.%14
STRING 20636F72727570746564206F626A2066696C6500

! String " insufficient space"
DEFINE OMSPL.%15
STRING 20696E73756666696369656E7420737061636500

! String " top module init code missing"
DEFINE OMSPL.%16
STRING 20746F70206D6F64756C6520696E697420636F6465206D697373696E6700

! String " not supported feature"
DEFINE OMSPL.%17
STRING 206E6F7420737570706F72746564206665617475726500

! String "Usage: OMSPL.Link VectorTableSize FlashSize RAMSize [module...] topmodule"
DEFINE OMSPL.%18
STRING 55736167653A204F4D53504C2E4C696E6B20566563746F725461626C6553697A
STRING 6520466C61736853697A652052414D53697A65205B6D6F64756C652E2E2E5D20
STRING 746F706D6F64756C6500

! String "OMSP linker  AP 6.8.20 / CS 19.04.25"
DEFINE OMSPL.%19
STRING 4F4D5350206C696E6B65722020415020362E382E3230202F2043532031392E30
STRING 342E323500

! Descriptor for ModDesc
DEFINE OMSPL.ModDesc
WORD 0x00000201
WORD 0
WORD OMSPL.ModDesc.%anc

DEFINE OMSPL.ModDesc.%anc
WORD OMSPL.ModDesc

! Descriptor for SegmentDesc
DEFINE OMSPL.SegmentDesc
WORD 0
WORD 0
WORD OMSPL.SegmentDesc.%anc

DEFINE OMSPL.SegmentDesc.%anc
WORD OMSPL.SegmentDesc

! Pointer maps
DEFINE OMSPL.LinkOne.%map
WORD 12
WORD 20
WORD -4
WORD -8
WORD -128
WORD -132
WORD GC_BLOCK
WORD -204
WORD 16
WORD GC_END

DEFINE OMSPL.Link.%map
WORD -24
WORD -28
WORD -120
WORD -100
WORD -132
WORD -136
WORD GC_END

! End of file
