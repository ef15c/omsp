!! (SYMFILE #omspt 0x00030300 #omspt.%main 1 #omspt.Mod)
!! (GLOBAL #P #omspt.P ?1 #Texts 17 #Writer (RECORD #Texts.Writer 20 VOID
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
!! (GLOBAL #T #omspt.T ?12 #Texts 8 #Text (POINTER))
!! (TARGET =12 ?13 #Texts 9 #TextDesc (RECORD #Texts.TextDesc 24 VOID
!!     (FIELD #len* 0 INTEGER)
!!     (FIELD #changed* 4 BOOLEAN)
!!     (FIELD #notify* 8 ?14 #Texts 10 #Notifier (PROC 4 VOID
!!         (PARAM #T 12 =12)
!!         (PARAM #op 16 INTEGER)
!!         (PARAM #beg 20 INTEGER)
!!         (PARAM #end 24 INTEGER)))
!!     (FIELD #trailer 12 =10)
!!     (FIELD #pce 16 =10)
!!     (FIELD #org 20 INTEGER)))
!! (GLOBAL #name #omspt.name !15 (ARRAY 32 CHAR))
!! (GLOBAL #ext #omspt.ext =15)
!! (DEF !16 (FLEX CHAR))
!! (DEF !17 (FLEX CHAR))
!! (PROCEDURE #getExt 7 #omspt.getExt !18 (PROC 4 VOID
!!     (CPARAM #name 12 =16)
!!     (VPARAM #ext 20 =17))
!!   (LOCAL #end -4 INTEGER)
!!   (LOCAL #i -8 INTEGER)
!!   (LOCAL #j -12 INTEGER))
!! (CHKSUM 0x69201dab)
!! 
MODULE omspt 0x69201dab 25
IMPORT Texts 0x2d7a25ad
IMPORT Oberon 0x7fd79012
IMPORT Args 0x2c825acd
IMPORT Strings 0x373ab110
IMPORT OMSPTool 0x0b1c54a6
ENDHDR

PROC omspt.getExt 12 4 0x00500001
!   PROCEDURE getExt(name: ARRAY OF CHAR; VAR ext: ARRAY OF CHAR);
LINE 7
!   BEGIN end := Strings.Length(name);
LINE 9
LDLW 16
LDLW 12
GLOBAL Strings.Length
CALLW 2
STLW -4
!     i := end; REPEAT DEC(i) UNTIL (i < 0) OR (name[i] = "."); j := 0;
LINE 10
LDLW -4
STLW -8
LABEL L4
DECL -8
LDLW -8
JLTZ L5
LDLW 12
LDLW -8
LDLW 16
BOUND 10
LDIC
CONST 46
JNEQ L4
LABEL L5
CONST 0
STLW -12
!     IF i >= 0 THEN WHILE i <= end DO ext[j] := name[i]; INC(i); INC(j) END;
LINE 11
LDLW -8
JLTZ L9
LABEL L10
LDLW -8
LDLW -4
JGT L9
LDLW 12
LDLW -8
LDLW 16
BOUND 11
LDIC
LDLW 20
LDLW -12
LDLW 24
BOUND 11
STIC
INCL -8
INCL -12
JUMP L10
LABEL L9
!     ext[j] := 0X
LINE 13
CONST 0
LDLW 20
LDLW -12
LDLW 24
BOUND 13
STIC
RETURN
END

PROC omspt.%main 0 5 0
! BEGIN NEW(T); Texts.Open(T, ".params"); Texts.OpenWriter(P);
LINE 16
CONST 24
GLOBAL Texts.TextDesc
GLOBAL NEW
CALLW 2
STGW omspt.T
CONST 8
GLOBAL omspt.%1
LDGW omspt.T
GLOBAL Texts.Open
CALL 3
GLOBAL Texts.Writer
GLOBAL omspt.P
GLOBAL Texts.OpenWriter
CALL 2
!   IF Args.argc = 2 THEN Args.GetArg(1, name);
LINE 17
LDGW Args.argc
CONST 2
JNEQ L15
CONST 32
GLOBAL omspt.name
CONST 1
GLOBAL Args.GetArg
CALL 3
!     Texts.WriteString(P, name); Texts.WriteLn(P);
LINE 18
CONST 32
GLOBAL omspt.name
GLOBAL Texts.Writer
GLOBAL omspt.P
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL omspt.P
GLOBAL Texts.WriteLn
CALL 2
!     Texts.Append(T, P.buf); Oberon.SetPar(T, 0);
LINE 19
LDGW omspt.P
LDGW omspt.T
GLOBAL Texts.Append
CALL 2
CONST 0
LDGW omspt.T
GLOBAL Oberon.SetPar
CALL 2
!     getExt(name, ext);
LINE 20
CONST 32
GLOBAL omspt.ext
CONST 32
GLOBAL omspt.name
GLOBAL omspt.getExt
CALL 4
!     IF ext = ".sms" THEN OMSPTool.DecSym
LINE 21
CONST 5
GLOBAL omspt.%2
CONST 32
GLOBAL omspt.ext
GLOBAL COMPARE
CALLW 4
JNEQZ L18
GLOBAL OMSPTool.DecSym
CALL 0
RETURN
LABEL L18
!     ELSIF ext = ".mpc" THEN OMSPTool.DecObj
LINE 22
CONST 5
GLOBAL omspt.%3
CONST 32
GLOBAL omspt.ext
GLOBAL COMPARE
CALLW 4
JNEQZ L15
GLOBAL OMSPTool.DecObj
CALL 0
LABEL L15
RETURN
END

! Global variables
GLOVAR omspt.P 20
GLOVAR omspt.T 4
GLOVAR omspt.name 32
GLOVAR omspt.ext 32

! Global pointer map
DEFINE omspt.%gcmap
WORD GC_BASE
WORD omspt.P
WORD 0x00000023
WORD GC_POINTER
WORD omspt.T
WORD GC_END

! String ".params"
DEFINE omspt.%1
STRING 2E706172616D7300

! String ".sms"
DEFINE omspt.%2
STRING 2E736D7300

! String ".mpc"
DEFINE omspt.%3
STRING 2E6D706300

! End of file
