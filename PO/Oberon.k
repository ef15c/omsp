!! (SYMFILE #Oberon 0x00030300 #Oberon.%main 1 #Oberon.Mod)
!! (GLOBAL #Log- #Oberon.Log ?1 #Texts 8 #Text (POINTER))
!! (TARGET =1 ?2 #Texts 9 #TextDesc (RECORD #Texts.TextDesc 24 VOID
!!     (FIELD #len* 0 INTEGER)
!!     (FIELD #changed* 4 BOOLEAN)
!!     (FIELD #notify* 8 ?3 #Texts 10 #Notifier (PROC 4 VOID
!!         (PARAM #T 12 =1)
!!         (PARAM #op 16 INTEGER)
!!         (PARAM #beg 20 INTEGER)
!!         (PARAM #end 24 INTEGER)))
!!     (FIELD #trailer 12 ?4 #Texts 1 #Piece (POINTER))
!!     (FIELD #pce 16 =4)
!!     (FIELD #org 20 INTEGER)))
!! (TARGET =4 ?5 #Texts 2 #PieceDesc (RECORD #Texts.PieceDesc 24 VOID
!!     (FIELD #f 0 ?6 #POFiles 1 #File (POINTER))
!!     (FIELD #off 4 INTEGER)
!!     (FIELD #len 8 INTEGER)
!!     (FIELD #col 12 INTEGER)
!!     (FIELD #prev 16 =4)
!!     (FIELD #next 20 =4)))
!! (TARGET =6 ?7 #POFiles 2 #FileDesc (RECORD #POFiles.FileDesc 68 VOID
!!     (FIELD #file 0 ?8 #Files 1 #File (POINTER))
!!     (FIELD #tmpName 4 ?9 #POFiles 4 ANON (ARRAY 32 CHAR))
!!     (FIELD #name 36 =9)))
!! (TARGET =8 ?10 #Files 2 #FileDesc (RECORD #Files.FileDesc 8 VOID
!!     (FIELD #file- 0 SYSTEM.LONGPTR)))
!! (GLOBAL #Par- #Oberon.Par !11 (RECORD #Oberon.%1 8 VOID
!!     (FIELD #text* 0 =1)
!!     (FIELD #pos* 4 INTEGER)))
!! (PROCEDURE #SetPar* 13 #Oberon.SetPar !12 (PROC 2 VOID
!!     (PARAM #T 12 =1)
!!     (PARAM #pos 16 INTEGER)))
!! (PROCEDURE #OpenLog* 17 #Oberon.OpenLog !13 (PROC 1 VOID
!!     (PARAM #T 12 =1)))
!! (PROCEDURE #GetSelection* 21 #Oberon.GetSelection !14 (PROC 4 VOID
!!     (VPARAM #text 12 =1)
!!     (VPARAM #beg 16 INTEGER)
!!     (VPARAM #end 20 INTEGER)
!!     (VPARAM #time 24 INTEGER)))
!! (PROCEDURE #Collect* 25 #Oberon.Collect !15 (PROC 1 VOID
!!     (PARAM #count 12 INTEGER)))
!! (CHKSUM 0x7fd79012)
!! 
MODULE Oberon 0x7fd79012 29
IMPORT Texts 0x04379426
ENDHDR

PROC Oberon.SetPar 0 3 0x00100001
!   PROCEDURE SetPar*(T: Texts.Text; pos: INTEGER);
LINE 13
!   BEGIN Par.text := T; Par.pos := pos
LINE 14
LDLW 12
STGW Oberon.Par
LDLW 16
GLOBAL Oberon.Par
STNW 4
RETURN
END

PROC Oberon.OpenLog 0 2 0x00100001
!   PROCEDURE OpenLog*(T: Texts.Text);
LINE 17
!   BEGIN Log := T
LINE 18
LDLW 12
STGW Oberon.Log
RETURN
END

PROC Oberon.GetSelection 0 0 0x00f00001
!   PROCEDURE GetSelection* (VAR text: Texts.Text; VAR beg, end, time: INTEGER);
LINE 21
RETURN
END

PROC Oberon.Collect 0 0 0
!   PROCEDURE Collect* (count: INTEGER);
LINE 25
RETURN
END

! Global variables
GLOVAR Oberon.Log 4
GLOVAR Oberon.Par 8

! Global pointer map
DEFINE Oberon.%gcmap
WORD GC_POINTER
WORD Oberon.Log
WORD GC_POINTER
WORD Oberon.Par
WORD GC_END

! Descriptor for *anon*
DEFINE Oberon.%1
WORD 0x00000003
WORD 0
WORD Oberon.%1.%anc

DEFINE Oberon.%1.%anc
WORD Oberon.%1

! End of file
