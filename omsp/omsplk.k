!! (SYMFILE #omsplk 0x00030300 #omsplk.%main 1 #omsplk.Mod)
!! (GLOBAL #P #omsplk.P ?1 #Texts 17 #Writer (RECORD #Texts.Writer 20 VOID
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
!! (GLOBAL #T #omsplk.T ?12 #Texts 8 #Text (POINTER))
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
!! (GLOBAL #i #omsplk.i INTEGER)
!! (GLOBAL #name #omsplk.name !15 (ARRAY 32 CHAR))
!! (CHKSUM 0x46aa0215)
!! 
MODULE omsplk 0x46aa0215 12
IMPORT Texts 0x04379426
IMPORT Oberon 0x7fd79012
IMPORT Args 0x2c825acd
IMPORT OMSPL 0x0255a436
ENDHDR

PROC omsplk.%main 4 5 0
! BEGIN NEW(T); Texts.Open(T, ".params"); Texts.OpenWriter(P);
LINE 7
CONST 24
GLOBAL Texts.TextDesc
GLOBAL NEW
CALLW 2
STGW omsplk.T
CONST 8
GLOBAL omsplk.%1
LDGW omsplk.T
GLOBAL Texts.Open
CALL 3
GLOBAL Texts.Writer
GLOBAL omsplk.P
GLOBAL Texts.OpenWriter
CALL 2
!   FOR i := 1 TO Args.argc - 1 DO Args.GetArg(i, name);
LINE 8
LDGW Args.argc
DEC
STLW -4
CONST 1
STGW omsplk.i
LABEL L2
LDGW omsplk.i
LDLW -4
JGT L3
CONST 32
GLOBAL omsplk.name
LDGW omsplk.i
GLOBAL Args.GetArg
CALL 3
!     Texts.WriteString(P, name); Texts.WriteLn(P)
LINE 9
CONST 32
GLOBAL omsplk.name
GLOBAL Texts.Writer
GLOBAL omsplk.P
GLOBAL Texts.WriteString
CALL 4
GLOBAL Texts.Writer
GLOBAL omsplk.P
GLOBAL Texts.WriteLn
CALL 2
!   FOR i := 1 TO Args.argc - 1 DO Args.GetArg(i, name);
LINE 8
LDGW omsplk.i
INC
STGW omsplk.i
JUMP L2
LABEL L3
!   END; Texts.Append(T, P.buf); Oberon.SetPar(T, 0);
LINE 10
LDGW omsplk.P
LDGW omsplk.T
GLOBAL Texts.Append
CALL 2
CONST 0
LDGW omsplk.T
GLOBAL Oberon.SetPar
CALL 2
!   OMSPL.Link
LINE 11
GLOBAL OMSPL.Link
CALL 0
RETURN
END

! Global variables
GLOVAR omsplk.P 20
GLOVAR omsplk.T 4
GLOVAR omsplk.i 4
GLOVAR omsplk.name 32

! Global pointer map
DEFINE omsplk.%gcmap
WORD GC_BASE
WORD omsplk.P
WORD 0x00000023
WORD GC_POINTER
WORD omsplk.T
WORD GC_END

! String ".params"
DEFINE omsplk.%1
STRING 2E706172616D7300

! End of file
