!! (SYMFILE #SystemLog 0x00030300 #SystemLog.%main 1 #SystemLog.Mod)
!! (GLOBAL #W #SystemLog.W ?1 #Texts 17 #Writer (RECORD #Texts.Writer 20 VOID
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
!! (DEF !12 (FLEX CHAR))
!! (PROCEDURE #DebugHex* 6 #SystemLog.DebugHex !13 (PROC 3 VOID
!!     (CPARAM #msg 12 =12)
!!     (PARAM #v 20 INTEGER)))
!! (DEF !14 (FLEX CHAR))
!! (PROCEDURE #DebugInt* 12 #SystemLog.DebugInt !15 (PROC 5 VOID
!!     (CPARAM #msg 12 =14)
!!     (PARAM #v 20 LONGINT)
!!     (PARAM #l 28 INTEGER)))
!! (DEF !16 (FLEX CHAR))
!! (PROCEDURE #DebugString* 18 #SystemLog.DebugString !17 (PROC 4 VOID
!!     (CPARAM #msg 12 =16)
!!     (CPARAM #v 20 =16)))
!! (DEF !18 (FLEX CHAR))
!! (PROCEDURE #DebugChar* 24 #SystemLog.DebugChar !19 (PROC 3 VOID
!!     (CPARAM #msg 12 =18)
!!     (PARAM #v 20 CHAR)))
!! (DEF !20 (FLEX CHAR))
!! (PROCEDURE #DebugBool* 38 #SystemLog.DebugBool !21 (PROC 3 VOID
!!     (CPARAM #msg 12 =20)
!!     (PARAM #b 20 BOOLEAN)))
!! (CHKSUM 0x7825850f)
!! 
MODULE SystemLog 0x7825850f 46
IMPORT Texts 0x04379426
IMPORT Oberon 0x7fd79012
ENDHDR

PROC SystemLog.DebugHex 0 5 0x00100001
!   PROCEDURE DebugHex*(msg: ARRAY OF CHAR; v: INTEGER);
LINE 6
!    Texts.WriteString(W, msg); Texts.WriteString(W, " = "); Texts.WriteHex(W, v);
LINE 8
LDLW 16
LDLW 12
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
CONST 4
GLOBAL SystemLog.%1
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
LDLW 20
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteHex
CALL 3
!     Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 9
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteLn
CALL 2
LDGW SystemLog.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

PROC SystemLog.DebugInt 0 5 0x00100001
!   PROCEDURE DebugInt*(msg: ARRAY OF CHAR; v: LONGINT; l: INTEGER);
LINE 12
!    Texts.WriteString(W, msg); Texts.WriteString(W, " = "); Texts.WriteInt(W, v, l);
LINE 14
LDLW 16
LDLW 12
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
CONST 4
GLOBAL SystemLog.%1
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
LDLW 28
LDLQ 20
CONVQN
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteInt
CALL 4
!     Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 15
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteLn
CALL 2
LDGW SystemLog.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

PROC SystemLog.DebugString 0 5 0x00500001
!   PROCEDURE DebugString*(msg, v: ARRAY OF CHAR);
LINE 18
!    Texts.WriteString(W, msg); Texts.WriteString(W, " = "); Texts.WriteString(W, v);
LINE 20
LDLW 16
LDLW 12
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
CONST 4
GLOBAL SystemLog.%1
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
LDLW 24
LDLW 20
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
!     Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 21
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteLn
CALL 2
LDGW SystemLog.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

PROC SystemLog.DebugChar 0 5 0x00100001
!   PROCEDURE DebugChar*(msg: ARRAY OF CHAR; v: CHAR);
LINE 24
!    Texts.WriteString(W, msg); Texts.WriteString(W, " = "); Texts.Write(W, v);
LINE 26
LDLW 16
LDLW 12
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
CONST 4
GLOBAL SystemLog.%1
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
LDLC 20
ALIGNC
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.Write
CALL 3
!     Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 27
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteLn
CALL 2
LDGW SystemLog.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

PROC SystemLog.DebugBool 0 5 0x00100001
!   PROCEDURE DebugBool*(msg: ARRAY OF CHAR; b: BOOLEAN);
LINE 38
!     Texts.WriteString(W, msg); Texts.WriteString(W, " = ");
LINE 40
LDLW 16
LDLW 12
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
CONST 4
GLOBAL SystemLog.%1
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
!     IF b THEN Texts.WriteString(W, "TRUE") ELSE Texts.WriteString(W, "FALSE") END;
LINE 41
LDLC 20
JEQZ L6
CONST 5
GLOBAL SystemLog.%2
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
JUMP L4
LABEL L6
CONST 6
GLOBAL SystemLog.%3
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteString
CALL 4
LABEL L4
!     Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf)
LINE 42
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.WriteLn
CALL 2
LDGW SystemLog.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

PROC SystemLog.%main 0 3 0
! BEGIN Texts.OpenWriter(W)
LINE 45
GLOBAL Texts.Writer
GLOBAL SystemLog.W
GLOBAL Texts.OpenWriter
CALL 2
RETURN
END

! Global variables
GLOVAR SystemLog.W 20

! Global pointer map
DEFINE SystemLog.%gcmap
WORD GC_BASE
WORD SystemLog.W
WORD 0x00000023
WORD GC_END

! String " = "
DEFINE SystemLog.%1
STRING 203D2000

! String "TRUE"
DEFINE SystemLog.%2
STRING 5452554500

! String "FALSE"
DEFINE SystemLog.%3
STRING 46414C534500

! End of file
