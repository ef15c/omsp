!! (SYMFILE #TextOutput 0x00030300 #TextOutput.%main 1 #TextOutput.Mod)
!! (PROCEDURE #SetOutCol 4 #TextOutput.SetOutCol !1 (PROC 1 VOID
!!     (PARAM #col 12 BYTE))
!!   (LOCAL #r -1 BYTE)
!!   (LOCAL #g -2 BYTE)
!!   (LOCAL #b -3 BYTE))
!! (DEF ?2 #Texts 8 #Text (POINTER))
!! (PROCEDURE #Insert* 18 #TextOutput.Insert !3 (PROC 3 VOID
!!     (PARAM #T 12 =2)
!!     (PARAM #beg 16 INTEGER)
!!     (PARAM #end 20 INTEGER))
!!   (LOCAL #R -32 ?4 #Texts 11 #Reader (RECORD #Texts.Reader 32 VOID
!!       (FIELD #eot* 0 BOOLEAN)
!!       (FIELD #col* 4 INTEGER)
!!       (FIELD #ref 8 ?5 #Texts 1 #Piece (POINTER))
!!       (FIELD #org 12 INTEGER)
!!       (FIELD #off 16 INTEGER)
!!       (FIELD #rider 20 ?6 #POFiles 6 #Rider (RECORD #POFiles.Rider 12 VOID
!!           (FIELD #eof* 0 BOOLEAN)
!!           (FIELD #res* 4 INTEGER)
!!           (FIELD #base 8 ?7 #POFiles 1 #File (POINTER))))))
!!   (LOCAL #nextCh -33 CHAR)
!!   (LOCAL #col -34 BYTE))
!! (TARGET =7 ?8 #POFiles 2 #FileDesc (RECORD #POFiles.FileDesc 68 VOID
!!     (FIELD #file 0 ?9 #Files 1 #File (POINTER))
!!     (FIELD #tmpName 4 ?10 #POFiles 4 ANON (ARRAY 32 CHAR))
!!     (FIELD #name 36 =10)))
!! (TARGET =9 ?11 #Files 2 #FileDesc (RECORD #Files.FileDesc 8 VOID
!!     (FIELD #file- 0 SYSTEM.LONGPTR)))
!! (TARGET =5 ?12 #Texts 2 #PieceDesc (RECORD #Texts.PieceDesc 24 VOID
!!     (FIELD #f 0 =7)
!!     (FIELD #off 4 INTEGER)
!!     (FIELD #len 8 INTEGER)
!!     (FIELD #col 12 INTEGER)
!!     (FIELD #prev 16 =5)
!!     (FIELD #next 20 =5)))
!! (TARGET =2 ?13 #Texts 9 #TextDesc (RECORD #Texts.TextDesc 24 VOID
!!     (FIELD #len* 0 INTEGER)
!!     (FIELD #changed* 4 BOOLEAN)
!!     (FIELD #notify* 8 ?14 #Texts 10 #Notifier (PROC 4 VOID
!!         (PARAM #T 12 =2)
!!         (PARAM #op 16 INTEGER)
!!         (PARAM #beg 20 INTEGER)
!!         (PARAM #end 24 INTEGER)))
!!     (FIELD #trailer 12 =5)
!!     (FIELD #pce 16 =5)
!!     (FIELD #org 20 INTEGER)))
!! (PROCEDURE #DisplayText* 29 #TextOutput.DisplayText !15 (PROC 4 VOID
!!     (PARAM #T 12 =2)
!!     (PARAM #op 16 INTEGER)
!!     (PARAM #beg 20 INTEGER)
!!     (PARAM #end 24 INTEGER)))
!! (DEF !16 (FLEX CHAR))
!! (PROCEDURE #Text* 34 #TextOutput.Text !17 (PROC 2 =2
!!     (CPARAM #fname 12 =16))
!!   (LOCAL #T -4 =2))
!! (CHKSUM 0x525ffdd0)
!! 
MODULE TextOutput 0x525ffdd0 39
IMPORT Out 0x66adaa46
IMPORT Texts 0x2d7a25ad
ENDHDR

PROC TextOutput.SetOutCol 4 3 0
!   PROCEDURE SetOutCol(col: BYTE);
LINE 4
!     r := ASR(col, 5) MOD 8;
LINE 7
LDLC 12
CONST 5
ASR
CONST 8
MOD
CONVNC
STLC -1
!     IF ODD(r) THEN r := LSL(r, 5) + 1FH ELSE r := LSL(r, 5) END;
LINE 8
LDLC -1
CONST 1
BITAND
JEQZ L4
LDLC -1
CONST 5
LSL
CONST 31
PLUS
CONVNC
STLC -1
JUMP L2
LABEL L4
LDLC -1
CONST 5
LSL
CONVNC
STLC -1
LABEL L2
!     g := ASR(col, 2) MOD 8;
LINE 9
LDLC 12
CONST 2
ASR
CONST 8
MOD
CONVNC
STLC -2
!     IF ODD(g) THEN g := LSL(g, 5) + 1FH ELSE g := LSL(g, 5) END;
LINE 10
LDLC -2
CONST 1
BITAND
JEQZ L7
LDLC -2
CONST 5
LSL
CONST 31
PLUS
CONVNC
STLC -2
JUMP L5
LABEL L7
LDLC -2
CONST 5
LSL
CONVNC
STLC -2
LABEL L5
!     b := col MOD 4;
LINE 11
LDLC 12
CONST 4
MOD
STLC -3
!     IF ODD(b) THEN b := LSL(b, 6) + 3FH ELSE b := LSL(b, 5) END;
LINE 12
LDLC -3
CONST 1
BITAND
JEQZ L10
LDLC -3
CONST 6
LSL
CONST 63
PLUS
CONVNC
STLC -3
JUMP L8
LABEL L10
LDLC -3
CONST 5
LSL
CONVNC
STLC -3
LABEL L8
!     Out.Char(1BX); Out.String("[38;2;");
LINE 13
CONST 27
ALIGNC
GLOBAL Out.Char
CALL 1
CONST 7
GLOBAL TextOutput.%1
GLOBAL Out.String
CALL 2
!     Out.Int(r, 1); Out.Char(";"); Out.Int(g, 1); Out.Char(";");
LINE 14
CONST 1
LDLC -1
GLOBAL Out.Int
CALL 2
CONST 59
ALIGNC
GLOBAL Out.Char
CALL 1
CONST 1
LDLC -2
GLOBAL Out.Int
CALL 2
CONST 59
ALIGNC
GLOBAL Out.Char
CALL 1
!     Out.Int(b, 1); Out.Char("m")
LINE 15
CONST 1
LDLC -3
GLOBAL Out.Int
CALL 2
CONST 109
ALIGNC
GLOBAL Out.Char
CALL 1
RETURN
END

PROC TextOutput.Insert 36 5 0x00110801
!   PROCEDURE Insert* (T: Texts.Text; beg, end: INTEGER);
LINE 18
!   BEGIN col := 255;
LINE 20
CONST 255
STLC -34
!     Texts.OpenReader(R, T, beg);
LINE 21
LDLW 16
LDLW 12
GLOBAL Texts.Reader
LOCAL -32
GLOBAL Texts.OpenReader
CALL 4
LABEL L11
!     WHILE beg <= end DO Texts.Read(R, nextCh);
LINE 22
LDLW 16
LDLW 20
JGT L13
LOCAL -33
GLOBAL Texts.Reader
LOCAL -32
GLOBAL Texts.Read
CALL 3
!       IF col # R.col THEN col := R.col; SetOutCol(col) END;
LINE 23
LDLC -34
LDLW -28
JEQ L16
LDLW -28
CONVNC
STLC -34
LDLC -34
GLOBAL TextOutput.SetOutCol
CALL 1
LABEL L16
!       IF nextCh # Texts.CR THEN Out.Char(nextCh) ELSE Out.Ln END;
LINE 24
LDLC -33
CONST 10
JEQ L19
LDLC -33
ALIGNC
GLOBAL Out.Char
CALL 1
JUMP L17
LABEL L19
GLOBAL Out.Ln
CALL 0
LABEL L17
!       INC(beg)
LINE 25
INCL 16
JUMP L11
LABEL L13
RETURN
END

PROC TextOutput.DisplayText 0 4 0x00100001
!   PROCEDURE DisplayText* (T: Texts.Text; op: INTEGER; beg, end: INTEGER);
LINE 29
!   BEGIN ASSERT(op = Texts.insert);
LINE 30
LDLW 16
CONST 1
JEQ L21
CONST 0
CONST 30
GLOBAL EASSERT
CALL 2
LABEL L21
!     Insert(T, beg, end)
LINE 31
LDLW 24
LDLW 20
LDLW 12
GLOBAL TextOutput.Insert
CALL 3
RETURN
END

PROC TextOutput.Text 4 4 0x00110001
!   PROCEDURE Text* (fname: ARRAY OF CHAR): Texts.Text;
LINE 34
!   BEGIN NEW(T); T.notify := DisplayText; Texts.Open(T, fname); RETURN T
LINE 36
CONST 24
GLOBAL Texts.TextDesc
GLOBAL NEW
CALLW 2
STLW -4
GLOBAL TextOutput.DisplayText
LDLW -4
NCHECK 36
STNW 8
LDLW 16
LDLW 12
LDLW -4
GLOBAL Texts.Open
CALL 3
LDLW -4
RETURN
END

! String "[38;2;"
DEFINE TextOutput.%1
STRING 5B33383B323B00

! End of file
