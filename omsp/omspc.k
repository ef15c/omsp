!! (SYMFILE #omspc 0x00030300 #omspc.%main 1 #omspc.Mod)
!! (GLOBAL #P #omspc.P ?1 #Texts 17 #Writer (RECORD #Texts.Writer 20 VOID
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
!! (GLOBAL #T #omspc.T ?12 #Texts 8 #Text (POINTER))
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
!! (GLOBAL #i #omspc.i INTEGER)
!! (GLOBAL #name #omspc.name !15 (ARRAY 32 CHAR))
!! (CHKSUM 0x0a43a7b9)
!! 
MODULE omspc 0x0a43a7b9 12
IMPORT Texts 0x04379426
IMPORT Oberon 0x7fd79012
IMPORT Args 0x2c825acd
IMPORT OMSPP 0x0ba6dc24
ENDHDR

PROC omspc.%main 4 5 0
! BEGIN NEW(T); Texts.Open(T, ".params"); Texts.OpenWriter(P);
LINE 7
CONST 24
GLOBAL Texts.TextDesc
GLOBAL NEW
CALLW 2
STGW omspc.T
CONST 8
GLOBAL omspc.%1
LDGW omspc.T
GLOBAL Texts.Open
CALL 3
GLOBAL Texts.Writer
GLOBAL omspc.P
GLOBAL Texts.OpenWriter
CALL 2
!   FOR i := 1 TO Args.argc - 1 DO Args.GetArg(i, name);
LINE 8
LDGW Args.argc
DEC
STLW -4
CONST 1
STGW omspc.i
LABEL L2
LDGW omspc.i
LDLW -4
JGT L3
CONST 32
GLOBAL omspc.name
LDGW omspc.i
GLOBAL Args.GetArg
CALL 3
!     Texts.WriteString(P, name); Texts.WriteLn(P)
LINE 9
CONST 32
GLOBAL omspc.name
GLOBAL Texts.Writer
GLOBAL omspc.P
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL omspc.P
GLOBAL Texts.WriteLn
CALL 2
!   FOR i := 1 TO Args.argc - 1 DO Args.GetArg(i, name);
LINE 8
LDGW omspc.i
INC
STGW omspc.i
JUMP L2
LABEL L3
!   END; Texts.Append(T, P.buf); Oberon.SetPar(T, 0);
LINE 10
LDGW omspc.P
LDGW omspc.T
GLOBAL Texts.Append
CALL 2
CONST 0
LDGW omspc.T
GLOBAL Oberon.SetPar
CALL 2
!   OMSPP.Compile
LINE 11
GLOBAL OMSPP.Compile
CALL 0
RETURN
END

! Global variables
GLOVAR omspc.P 20
GLOVAR omspc.T 4
GLOVAR omspc.i 4
GLOVAR omspc.name 32

! Global pointer map
DEFINE omspc.%gcmap
WORD GC_BASE
WORD omspc.P
WORD 0x00000023
WORD GC_POINTER
WORD omspc.T
WORD GC_END

! String ".params"
DEFINE omspc.%1
STRING 2E706172616D7300

! End of file
