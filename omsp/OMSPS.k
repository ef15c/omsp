!! (SYMFILE #OMSPS 0x00030300 #OMSPS.%main 1 #OMSPS.Mod)
!! (CONST #IdLen* INTCONST 32)
!! (CONST #NKW INTCONST 34)
!! (CONST #maxExp INTCONST 38)
!! (CONST #stringBufSize* INTCONST 1024)
!! (CONST #null INTCONST 0)
!! (CONST #times* INTCONST 1)
!! (CONST #rdiv* INTCONST 2)
!! (CONST #div* INTCONST 3)
!! (CONST #mod* INTCONST 4)
!! (CONST #and* INTCONST 5)
!! (CONST #plus* INTCONST 6)
!! (CONST #minus* INTCONST 7)
!! (CONST #or* INTCONST 8)
!! (CONST #eql* INTCONST 9)
!! (CONST #neq* INTCONST 10)
!! (CONST #lss* INTCONST 11)
!! (CONST #geq* INTCONST 12)
!! (CONST #gtr* INTCONST 13)
!! (CONST #leq* INTCONST 14)
!! (CONST #in* INTCONST 15)
!! (CONST #is* INTCONST 16)
!! (CONST #arrow* INTCONST 17)
!! (CONST #period* INTCONST 18)
!! (CONST #emark* INTCONST 19)
!! (CONST #char* INTCONST 20)
!! (CONST #int* INTCONST 21)
!! (CONST #false* INTCONST 23)
!! (CONST #true* INTCONST 24)
!! (CONST #nil* INTCONST 25)
!! (CONST #string* INTCONST 26)
!! (CONST #not* INTCONST 27)
!! (CONST #lparen* INTCONST 28)
!! (CONST #lbrak* INTCONST 29)
!! (CONST #lbrace* INTCONST 30)
!! (CONST #ident* INTCONST 31)
!! (CONST #if* INTCONST 32)
!! (CONST #while* INTCONST 34)
!! (CONST #repeat* INTCONST 35)
!! (CONST #case* INTCONST 36)
!! (CONST #for* INTCONST 37)
!! (CONST #comma* INTCONST 40)
!! (CONST #colon* INTCONST 41)
!! (CONST #becomes* INTCONST 42)
!! (CONST #upto* INTCONST 43)
!! (CONST #rparen* INTCONST 44)
!! (CONST #rbrak* INTCONST 45)
!! (CONST #rbrace* INTCONST 46)
!! (CONST #then* INTCONST 47)
!! (CONST #of* INTCONST 48)
!! (CONST #do* INTCONST 49)
!! (CONST #to* INTCONST 50)
!! (CONST #by* INTCONST 51)
!! (CONST #semicolon* INTCONST 52)
!! (CONST #end* INTCONST 53)
!! (CONST #bar* INTCONST 54)
!! (CONST #else* INTCONST 55)
!! (CONST #elsif* INTCONST 56)
!! (CONST #until* INTCONST 57)
!! (CONST #return* INTCONST 58)
!! (CONST #array* INTCONST 60)
!! (CONST #record* INTCONST 61)
!! (CONST #pointer* INTCONST 62)
!! (CONST #const* INTCONST 63)
!! (CONST #type* INTCONST 64)
!! (CONST #var* INTCONST 65)
!! (CONST #procedure* INTCONST 66)
!! (CONST #begin* INTCONST 67)
!! (CONST #import* INTCONST 68)
!! (CONST #module* INTCONST 69)
!! (CONST #eot INTCONST 70)
!! (TYPE #Ident* !1 (ARRAY 32 CHAR))
!! (GLOBAL #ival- #OMSPS.ival INTEGER)
!! (GLOBAL #slen- #OMSPS.slen INTEGER)
!! (GLOBAL #id- #OMSPS.id =1)
!! (GLOBAL #str- #OMSPS.str !2 (ARRAY 1024 CHAR))
!! (GLOBAL #errcnt- #OMSPS.errcnt INTEGER)
!! (GLOBAL #ch #OMSPS.ch CHAR)
!! (GLOBAL #errpos #OMSPS.errpos INTEGER)
!! (GLOBAL #R #OMSPS.R ?3 #Texts 11 #Reader (RECORD #Texts.Reader 32 VOID
!!     (FIELD #eot* 0 BOOLEAN)
!!     (FIELD #col* 4 INTEGER)
!!     (FIELD #ref 8 ?4 #Texts 1 #Piece (POINTER))
!!     (FIELD #org 12 INTEGER)
!!     (FIELD #off 16 INTEGER)
!!     (FIELD #rider 20 ?5 #POFiles 6 #Rider (RECORD #POFiles.Rider 12 VOID
!!         (FIELD #eof* 0 BOOLEAN)
!!         (FIELD #res* 4 INTEGER)
!!         (FIELD #base 8 ?6 #POFiles 1 #File (POINTER))))))
!! (TARGET =6 ?7 #POFiles 2 #FileDesc (RECORD #POFiles.FileDesc 68 VOID
!!     (FIELD #file 0 ?8 #Files 1 #File (POINTER))
!!     (FIELD #tmpName 4 ?9 #POFiles 4 ANON (ARRAY 32 CHAR))
!!     (FIELD #name 36 =9)))
!! (TARGET =8 ?10 #Files 2 #FileDesc (RECORD #Files.FileDesc 8 VOID
!!     (FIELD #file- 0 SYSTEM.LONGPTR)))
!! (TARGET =4 ?11 #Texts 2 #PieceDesc (RECORD #Texts.PieceDesc 24 VOID
!!     (FIELD #f 0 =6)
!!     (FIELD #off 4 INTEGER)
!!     (FIELD #len 8 INTEGER)
!!     (FIELD #col 12 INTEGER)
!!     (FIELD #prev 16 =4)
!!     (FIELD #next 20 =4)))
!! (GLOBAL #W #OMSPS.W ?12 #Texts 17 #Writer (RECORD #Texts.Writer 20 VOID
!!     (FIELD #buf* 0 ?13 #Texts 15 #Buffer (POINTER))
!!     (FIELD #col* 4 INTEGER)
!!     (FIELD #rider 8 =5)))
!! (TARGET =13 ?14 #Texts 16 #BufDesc (RECORD #Texts.BufDesc 12 VOID
!!     (FIELD #len* 0 INTEGER)
!!     (FIELD #header 4 =4)
!!     (FIELD #last 8 =4)))
!! (GLOBAL #k #OMSPS.k INTEGER)
!! (GLOBAL #KWX #OMSPS.KWX !15 (ARRAY 10 INTEGER))
!! (GLOBAL #keyTab #OMSPS.keyTab !16 (ARRAY 34 !17 (RECORD #OMSPS.%44 16 VOID
!!       (FIELD #sym 0 INTEGER)
!!       (FIELD #id 4 !18 (ARRAY 12 CHAR)))))
!! (PROCEDURE #CopyId* 50 #OMSPS.CopyId !19 (PROC 1 VOID
!!     (VPARAM #ident 12 =1)))
!! (PROCEDURE #Pos* 54 #OMSPS.Pos !20 (PROC 0 INTEGER))
!! (DEF !21 (FLEX CHAR))
!! (PROCEDURE #Mark* 58 #OMSPS.Mark !22 (PROC 2 VOID
!!     (CPARAM #msg 12 =21))
!!   (LOCAL #p -4 INTEGER))
!! (DEF !23 (FLEX CHAR))
!! (PROCEDURE #DebugHex* 68 #OMSPS.DebugHex !24 (PROC 3 VOID
!!     (CPARAM #msg 12 =23)
!!     (PARAM #v 20 INTEGER))
!!   (LOCAL #p -4 INTEGER))
!! (DEF !25 (FLEX CHAR))
!! (PROCEDURE #DebugString* 75 #OMSPS.DebugString !26 (PROC 4 VOID
!!     (CPARAM #msg 12 =25)
!!     (CPARAM #v 20 =25))
!!   (LOCAL #p -4 INTEGER))
!! (PROCEDURE #Identifier 82 #OMSPS.Identifier !27 (PROC 1 VOID
!!     (VPARAM #sym 12 INTEGER))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #k -8 INTEGER))
!! (PROCEDURE #String 97 #OMSPS.String !28 (PROC 0 VOID)
!!   (LOCAL #i -4 INTEGER))
!! (PROCEDURE #HexString 109 #OMSPS.HexString !29 (PROC 0 VOID)
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #m -8 INTEGER)
!!   (LOCAL #n -12 INTEGER))
!! (PROCEDURE #Number 129 #OMSPS.Number !30 (PROC 1 VOID
!!     (VPARAM #sym 12 INTEGER))
!!   (CONST #max INTCONST 2147483647)
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #k -8 INTEGER)
!!   (LOCAL #n -12 INTEGER)
!!   (LOCAL #h -16 INTEGER)
!!   (LOCAL #d -80 !31 (ARRAY 16 INTEGER)))
!! (PROCEDURE #comment 160 #OMSPS.comment !32 (PROC 0 VOID))
!! (PROCEDURE #Get* 174 #OMSPS.Get !33 (PROC 1 VOID
!!     (VPARAM #sym 12 INTEGER)))
!! (DEF ?34 #Texts 8 #Text (POINTER))
!! (PROCEDURE #Init* 229 #OMSPS.Init !35 (PROC 2 VOID
!!     (PARAM #T 12 =34)
!!     (PARAM #pos 16 INTEGER)))
!! (TARGET =34 ?36 #Texts 9 #TextDesc (RECORD #Texts.TextDesc 24 VOID
!!     (FIELD #len* 0 INTEGER)
!!     (FIELD #changed* 4 BOOLEAN)
!!     (FIELD #notify* 8 ?37 #Texts 10 #Notifier (PROC 4 VOID
!!         (PARAM #T 12 =34)
!!         (PARAM #op 16 INTEGER)
!!         (PARAM #beg 20 INTEGER)
!!         (PARAM #end 24 INTEGER)))
!!     (FIELD #trailer 12 =4)
!!     (FIELD #pce 16 =4)
!!     (FIELD #org 20 INTEGER)))
!! (DEF !38 (FLEX CHAR))
!! (PROCEDURE #EnterKW 233 #OMSPS.EnterKW !39 (PROC 3 VOID
!!     (PARAM #sym 12 INTEGER)
!!     (CPARAM #name 16 =38)))
!! (CHKSUM 0x208dfe13)
!! 
MODULE OMSPS 0x208dfe13 278
IMPORT Texts 0x2d7a25ad
IMPORT Oberon 0x7fd79012
ENDHDR

PROC OMSPS.CopyId 0 3 0x00100001
!   PROCEDURE CopyId*(VAR ident: Ident);
LINE 50
!   BEGIN ident := id
LINE 51
LDLW 12
GLOBAL OMSPS.id
CONST 32
FIXCOPY
RETURN
END

PROC OMSPS.Pos 0 3 0
!   PROCEDURE Pos*(): INTEGER;
LINE 54
!   BEGIN RETURN Texts.Pos(R) - 1
LINE 55
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Pos
CALLW 2
DEC
RETURN
END

PROC OMSPS.Mark 4 5 0x00100001
!   PROCEDURE Mark*(msg: ARRAY OF CHAR);
LINE 58
!   BEGIN p := Pos();
LINE 60
GLOBAL OMSPS.Pos
CALLW 0
STLW -4
!     IF (p > errpos) & (errcnt < 25) THEN
LINE 61
LDLW -4
LDGW OMSPS.errpos
JLEQ L47
LDGW OMSPS.errcnt
CONST 25
JGEQ L47
!       Texts.WriteLn(W); Texts.WriteString(W, "  pos "); Texts.WriteInt(W, p, 1); Texts.Write(W, " ");
LINE 62
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteLn
CALL 2
CONST 7
GLOBAL OMSPS.%1
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteInt
CALL 4
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.Write
CALL 3
!       Texts.WriteString(W, msg); Texts.Append(Oberon.Log, W.buf)
LINE 63
LDLW 16
LDLW 12
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteString
CALL 4
LDGW OMSPS.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
LABEL L47
!     INC(errcnt); errpos := p + 4
LINE 65
LDGW OMSPS.errcnt
INC
STGW OMSPS.errcnt
LDLW -4
CONST 4
PLUS
STGW OMSPS.errpos
RETURN
END

PROC OMSPS.DebugHex 4 5 0x00100001
!   PROCEDURE DebugHex*(msg: ARRAY OF CHAR; v: INTEGER);
LINE 68
!   BEGIN p := Pos();
LINE 70
GLOBAL OMSPS.Pos
CALLW 0
STLW -4
!     Texts.WriteLn(W); Texts.WriteString(W, msg); Texts.WriteString(W, " at pos "); Texts.WriteInt(W, p, 1); Texts.Write(W, " ");
LINE 71
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteLn
CALL 2
LDLW 16
LDLW 12
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteString
CALL 4
CONST 9
GLOBAL OMSPS.%2
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteInt
CALL 4
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.Write
CALL 3
!     Texts.WriteHex(W, v); Texts.Append(Oberon.Log, W.buf)
LINE 72
LDLW 20
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteHex
CALL 3
LDGW OMSPS.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

PROC OMSPS.DebugString 4 5 0x00500001
!   PROCEDURE DebugString*(msg, v: ARRAY OF CHAR);
LINE 75
!   BEGIN p := Pos();
LINE 77
GLOBAL OMSPS.Pos
CALLW 0
STLW -4
!     Texts.WriteLn(W); Texts.WriteString(W, msg); Texts.WriteString(W, " at pos "); Texts.WriteInt(W, p, 1); Texts.Write(W, " ");
LINE 78
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteLn
CALL 2
LDLW 16
LDLW 12
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteString
CALL 4
CONST 9
GLOBAL OMSPS.%2
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteString
CALL 4
CONST 1
LDLW -4
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteInt
CALL 4
CONST 32
ALIGNC
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.Write
CALL 3
!     Texts.WriteString(W, v); Texts.Append(Oberon.Log, W.buf)
LINE 79
LDLW 24
LDLW 20
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.WriteString
CALL 4
LDGW OMSPS.W
LDGW Oberon.Log
GLOBAL Texts.Append
CALL 2
RETURN
END

PROC OMSPS.Identifier 8 5 0x00100001
!   PROCEDURE Identifier(VAR sym: INTEGER);
LINE 82
!   BEGIN i := 0;
LINE 84
CONST 0
STLW -4
LABEL L49
!       IF i < IdLen-1 THEN id[i] := ch; INC(i) END ;
LINE 86
LDLW -4
CONST 31
JGEQ L59
LDGC OMSPS.ch
GLOBAL OMSPS.id
LDLW -4
CONST 32
BOUND 86
STIC
INCL -4
LABEL L59
!       Texts.Read(R, ch)
LINE 87
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
!     UNTIL (ch # "_") & ((ch < "0") OR (ch > "9") & (ch < "A") OR (ch > "Z") & (ch < "a") OR (ch > "z"));
LINE 88
LDGC OMSPS.ch
CONST 95
JEQ L49
LDGC OMSPS.ch
CONST 48
JLT L50
LDGC OMSPS.ch
CONST 57
JLEQ L53
LDGC OMSPS.ch
CONST 65
JLT L50
LABEL L53
LDGC OMSPS.ch
CONST 90
JLEQ L52
LDGC OMSPS.ch
CONST 97
JLT L50
LABEL L52
LDGC OMSPS.ch
CONST 122
JLEQ L49
LABEL L50
!     id[i] := 0X; 
LINE 89
CONST 0
GLOBAL OMSPS.id
LDLW -4
CONST 32
BOUND 89
STIC
!     IF i < 10 THEN k := KWX[i-1];  (*search for keyword*)
LINE 90
LDLW -4
CONST 10
JGEQ L62
GLOBAL OMSPS.KWX
LDLW -4
DEC
CONST 10
BOUND 90
LDIW
STLW -8
LABEL L63
!       WHILE (id # keyTab[k].id) & (k < KWX[i]) DO INC(k) END ;
LINE 91
GLOBAL OMSPS.keyTab
LDLW -8
CONST 34
BOUND 91
CONST 16
TIMES
OFFSET
CONST 4
OFFSET
CONST 12
SWAP
CONST 32
GLOBAL OMSPS.id
GLOBAL COMPARE
CALLW 4
JEQZ L65
LDLW -8
GLOBAL OMSPS.KWX
LDLW -4
CONST 10
BOUND 91
LDIW
JGEQ L65
INCL -8
JUMP L63
LABEL L65
!       IF k < KWX[i] THEN sym := keyTab[k].sym ELSE sym := ident END
LINE 92
LDLW -8
GLOBAL OMSPS.KWX
LDLW -4
CONST 10
BOUND 92
LDIW
JGEQ L69
GLOBAL OMSPS.keyTab
LDLW -8
CONST 34
BOUND 92
CONST 4
TIMES
LDIW
LDLW 12
STOREW
RETURN
LABEL L69
CONST 31
LDLW 12
STOREW
RETURN
LABEL L62
!     ELSE sym := ident
LINE 93
CONST 31
LDLW 12
STOREW
RETURN
END

PROC OMSPS.String 4 4 0
!   PROCEDURE String;
LINE 97
!   BEGIN i := 0; Texts.Read(R, ch);
LINE 99
CONST 0
STLW -4
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
LABEL L70
!     WHILE ~R.eot & (ch # 22X) DO
LINE 100
LDGC OMSPS.R
JNEQZ L72
LDGC OMSPS.ch
CONST 34
JEQ L72
!       IF ch >= " " THEN
LINE 101
LDGC OMSPS.ch
CONST 32
JLT L75
!         IF i < stringBufSize-1 THEN str[i] := ch; INC(i) ELSE Mark("string too long") END ;
LINE 102
LDLW -4
CONST 1023
JGEQ L78
LDGC OMSPS.ch
GLOBAL OMSPS.str
LDLW -4
CONST 1024
BOUND 102
STIC
INCL -4
JUMP L75
LABEL L78
CONST 16
GLOBAL OMSPS.%3
GLOBAL OMSPS.Mark
CALL 2
LABEL L75
!       Texts.Read(R, ch)
LINE 104
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
JUMP L70
LABEL L72
!     str[i] := 0X; INC(i); Texts.Read(R, ch); slen := i
LINE 106
CONST 0
GLOBAL OMSPS.str
LDLW -4
CONST 1024
BOUND 106
STIC
INCL -4
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
LDLW -4
STGW OMSPS.slen
RETURN
END

PROC OMSPS.HexString 12 4 0
!   PROCEDURE HexString;
LINE 109
!   BEGIN i := 0; Texts.Read(R, ch);
LINE 111
CONST 0
STLW -4
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
LABEL L80
!     WHILE ~R.eot & (ch # "$") DO
LINE 112
LDGC OMSPS.R
JNEQZ L82
LDGC OMSPS.ch
CONST 36
JEQ L82
LABEL L83
!       WHILE ~R.eot  & (ch <= " ") DO Texts.Read(R, ch) END ;  (*skip*)
LINE 113
LDGC OMSPS.R
JNEQZ L85
LDGC OMSPS.ch
CONST 32
JGT L85
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
JUMP L83
LABEL L85
!       IF ("0" <= ch) & (ch <= "9") THEN m := ORD(ch) - 30H
LINE 114
LDGC OMSPS.ch
CONST 48
JLT L89
LDGC OMSPS.ch
CONST 57
JGT L89
LDGC OMSPS.ch
CONST 48
MINUS
STLW -8
JUMP L87
LABEL L89
!       ELSIF ("A" <= ch) & (ch <= "F") THEN m := ORD(ch) - 37H
LINE 115
LDGC OMSPS.ch
CONST 65
JLT L92
LDGC OMSPS.ch
CONST 70
JGT L92
LDGC OMSPS.ch
CONST 55
MINUS
STLW -8
JUMP L87
LABEL L92
!       ELSE m := 0; Mark("hexdig expected")
LINE 116
CONST 0
STLW -8
CONST 16
GLOBAL OMSPS.%4
GLOBAL OMSPS.Mark
CALL 2
LABEL L87
!       Texts.Read(R, ch);
LINE 118
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
!       IF ("0" <= ch) & (ch <= "9") THEN n := ORD(ch) - 30H
LINE 119
LDGC OMSPS.ch
CONST 48
JLT L96
LDGC OMSPS.ch
CONST 57
JGT L96
LDGC OMSPS.ch
CONST 48
MINUS
STLW -12
JUMP L94
LABEL L96
!       ELSIF ("A" <= ch) & (ch <= "F") THEN n := ORD(ch) - 37H
LINE 120
LDGC OMSPS.ch
CONST 65
JLT L99
LDGC OMSPS.ch
CONST 70
JGT L99
LDGC OMSPS.ch
CONST 55
MINUS
STLW -12
JUMP L94
LABEL L99
!       ELSE n := 0; Mark("hexdig expected")
LINE 121
CONST 0
STLW -12
CONST 16
GLOBAL OMSPS.%4
GLOBAL OMSPS.Mark
CALL 2
LABEL L94
!       IF i < stringBufSize THEN str[i] := CHR(m*10H + n); INC(i) ELSE Mark("hex string too long") END ;
LINE 123
LDLW -4
CONST 1024
JGEQ L103
LDLW -8
CONST 16
TIMES
LDLW -12
PLUS
CONVNC
GLOBAL OMSPS.str
LDLW -4
CONST 1024
BOUND 123
STIC
INCL -4
JUMP L101
LABEL L103
CONST 20
GLOBAL OMSPS.%5
GLOBAL OMSPS.Mark
CALL 2
LABEL L101
!       Texts.Read(R, ch)
LINE 124
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
JUMP L80
LABEL L82
!     Texts.Read(R, ch); slen := i  (*no 0X appended!*)
LINE 126
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
LDLW -4
STGW OMSPS.slen
RETURN
END

PROC OMSPS.Number 80 5 0x00100001
!   PROCEDURE Number(VAR sym: INTEGER);
LINE 129
!   BEGIN ival := 0; i := 0; n := 0; k := 0;
LINE 133
CONST 0
STGW OMSPS.ival
CONST 0
STLW -4
CONST 0
STLW -12
CONST 0
STLW -8
LABEL L105
!       IF n < 16 THEN d[n] := ORD(ch)-30H; INC(n) ELSE Mark("too many digits"); n := 0 END ;
LINE 135
LDLW -12
CONST 16
JGEQ L112
LDGC OMSPS.ch
CONST 48
MINUS
LOCAL -80
LDLW -12
CONST 16
BOUND 135
STIW
INCL -12
JUMP L110
LABEL L112
CONST 16
GLOBAL OMSPS.%6
GLOBAL OMSPS.Mark
CALL 2
CONST 0
STLW -12
LABEL L110
!       Texts.Read(R, ch)
LINE 136
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
!     UNTIL (ch < "0") OR (ch > "9") & (ch < "A") OR (ch > "F");
LINE 137
LDGC OMSPS.ch
CONST 48
JLT L106
LDGC OMSPS.ch
CONST 57
JLEQ L107
LDGC OMSPS.ch
CONST 65
JLT L106
LABEL L107
LDGC OMSPS.ch
CONST 70
JLEQ L105
LABEL L106
!     IF (ch = "H") OR (ch = "X") THEN  (*hex*)
LINE 138
LDGC OMSPS.ch
CONST 72
JEQ L122
LDGC OMSPS.ch
CONST 88
JNEQ L123
LABEL L122
!       REPEAT h := d[i];
LINE 139
LOCAL -80
LDLW -4
CONST 16
BOUND 139
LDIW
STLW -16
!         IF h >= 10 THEN h := h-7 END ;
LINE 140
LDLW -16
CONST 10
JLT L128
LDLW -16
CONST 7
MINUS
STLW -16
LABEL L128
!         k := k*10H + h; INC(i) (*no overflow check*)
LINE 141
LDLW -8
CONST 16
TIMES
LDLW -16
PLUS
STLW -8
INCL -4
!       UNTIL i = n;
LINE 142
LDLW -4
LDLW -12
JNEQ L122
!       IF ch = "X" THEN sym := char;
LINE 143
LDGC OMSPS.ch
CONST 88
JNEQ L131
CONST 20
LDLW 12
STOREW
!         IF k < 100H THEN ival := k ELSE Mark("illegal value"); ival := 0 END
LINE 144
LDLW -8
CONST 256
JGEQ L134
LDLW -8
STGW OMSPS.ival
JUMP L129
LABEL L134
CONST 14
GLOBAL OMSPS.%7
GLOBAL OMSPS.Mark
CALL 2
CONST 0
STGW OMSPS.ival
JUMP L129
LABEL L131
!       ELSE sym := int; ival := k
LINE 145
CONST 21
LDLW 12
STOREW
LDLW -8
STGW OMSPS.ival
LABEL L129
!       Texts.Read(R, ch)
LINE 147
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
RETURN
LABEL L123
!         IF d[i] < 10 THEN
LINE 150
LOCAL -80
LDLW -4
CONST 16
BOUND 150
LDIW
CONST 10
JGEQ L118
!           IF k <= (max-d[i]) DIV 10 THEN k := k*10 + d[i] ELSE Mark("too large"); k := 0 END
LINE 151
LDLW -8
CONST 2147483647
LOCAL -80
LDLW -4
CONST 16
BOUND 151
LDIW
MINUS
CONST 10
DIV
JGT L121
LDLW -8
CONST 10
TIMES
LOCAL -80
LDLW -4
CONST 16
BOUND 151
LDIW
PLUS
STLW -8
JUMP L116
LABEL L121
CONST 10
GLOBAL OMSPS.%8
GLOBAL OMSPS.Mark
CALL 2
CONST 0
STLW -8
JUMP L116
LABEL L118
!         ELSE Mark("bad integer")
LINE 152
CONST 12
GLOBAL OMSPS.%9
GLOBAL OMSPS.Mark
CALL 2
LABEL L116
!         INC(i)
LINE 154
INCL -4
!       UNTIL i = n;
LINE 155
LDLW -4
LDLW -12
JNEQ L123
!       sym := int; ival := k
LINE 156
CONST 21
LDLW 12
STOREW
LDLW -8
STGW OMSPS.ival
RETURN
END

PROC OMSPS.comment 0 4 0
!   PROCEDURE comment;
LINE 160
!   BEGIN Texts.Read(R, ch);
LINE 161
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
LABEL L136
!       WHILE ~R.eot & (ch # "*") DO
LINE 163
LDGC OMSPS.R
JNEQZ L141
LDGC OMSPS.ch
CONST 42
JEQ L141
!         IF ch = "(" THEN Texts.Read(R, ch);
LINE 164
LDGC OMSPS.ch
CONST 40
JNEQ L144
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
!           IF ch = "*" THEN comment END
LINE 165
LDGC OMSPS.ch
CONST 42
JNEQ L136
GLOBAL OMSPS.comment
CALL 0
JUMP L136
LABEL L144
!         ELSE Texts.Read(R, ch)
LINE 166
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
JUMP L136
LABEL L141
!       WHILE ch = "*" DO Texts.Read(R, ch) END
LINE 169
LDGC OMSPS.ch
CONST 42
JNEQ L151
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
JUMP L141
LABEL L151
!     UNTIL (ch = ")") OR R.eot;
LINE 170
LDGC OMSPS.ch
CONST 41
JEQ L137
LDGC OMSPS.R
JEQZ L136
LABEL L137
!     IF ~R.eot THEN Texts.Read(R, ch) ELSE Mark("unterminated comment") END
LINE 171
LDGC OMSPS.R
JNEQZ L154
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
RETURN
LABEL L154
CONST 21
GLOBAL OMSPS.%10
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPS.Get 0 4 0x00100001
!   PROCEDURE Get*(VAR sym: INTEGER);
LINE 174
LABEL L155
!       WHILE ~R.eot & (ch <= " ") DO Texts.Read(R, ch) END;
LINE 177
LDGC OMSPS.R
JNEQZ L159
LDGC OMSPS.ch
CONST 32
JGT L159
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
JUMP L155
LABEL L159
!       IF R.eot THEN sym := eot
LINE 178
LDGC OMSPS.R
JEQZ L172
CONST 70
LDLW 12
STOREW
JUMP L161
LABEL L172
!       ELSIF ch < "A" THEN
LINE 179
LDGC OMSPS.ch
CONST 65
JGEQ L174
!         IF ch < "0" THEN
LINE 180
LDGC OMSPS.ch
CONST 48
JGEQ L177
!           IF ch = 22X THEN String; sym := string
LINE 181
LDGC OMSPS.ch
CONST 34
JNEQ L180
GLOBAL OMSPS.String
CALL 0
CONST 26
LDLW 12
STOREW
JUMP L161
LABEL L180
!           ELSIF ch = "#" THEN Texts.Read(R, ch); sym := neq
LINE 182
LDGC OMSPS.ch
CONST 35
JNEQ L182
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 10
LDLW 12
STOREW
JUMP L161
LABEL L182
!           ELSIF ch = "$" THEN HexString; sym := string
LINE 183
LDGC OMSPS.ch
CONST 36
JNEQ L184
GLOBAL OMSPS.HexString
CALL 0
CONST 26
LDLW 12
STOREW
JUMP L161
LABEL L184
!           ELSIF ch = "&" THEN Texts.Read(R, ch); sym := and
LINE 184
LDGC OMSPS.ch
CONST 38
JNEQ L186
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 5
LDLW 12
STOREW
JUMP L161
LABEL L186
!           ELSIF ch = "(" THEN Texts.Read(R, ch); 
LINE 185
LDGC OMSPS.ch
CONST 40
JNEQ L188
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
!             IF ch = "*" THEN sym := null; comment ELSE sym := lparen END
LINE 186
LDGC OMSPS.ch
CONST 42
JNEQ L191
CONST 0
LDLW 12
STOREW
GLOBAL OMSPS.comment
CALL 0
JUMP L161
LABEL L191
CONST 28
LDLW 12
STOREW
JUMP L161
LABEL L188
!           ELSIF ch = ")" THEN Texts.Read(R, ch); sym := rparen
LINE 187
LDGC OMSPS.ch
CONST 41
JNEQ L193
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 44
LDLW 12
STOREW
JUMP L161
LABEL L193
!           ELSIF ch = "*" THEN Texts.Read(R, ch); sym := times
LINE 188
LDGC OMSPS.ch
CONST 42
JNEQ L195
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 1
LDLW 12
STOREW
JUMP L161
LABEL L195
!           ELSIF ch = "+" THEN Texts.Read(R, ch); sym := plus
LINE 189
LDGC OMSPS.ch
CONST 43
JNEQ L197
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 6
LDLW 12
STOREW
JUMP L161
LABEL L197
!           ELSIF ch = "," THEN Texts.Read(R, ch); sym := comma
LINE 190
LDGC OMSPS.ch
CONST 44
JNEQ L199
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 40
LDLW 12
STOREW
JUMP L161
LABEL L199
!           ELSIF ch = "-" THEN Texts.Read(R, ch); sym := minus
LINE 191
LDGC OMSPS.ch
CONST 45
JNEQ L201
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 7
LDLW 12
STOREW
JUMP L161
LABEL L201
!           ELSIF ch = "." THEN Texts.Read(R, ch);
LINE 192
LDGC OMSPS.ch
CONST 46
JNEQ L203
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
!             IF ch = "." THEN Texts.Read(R, ch); sym := upto ELSE sym := period END
LINE 193
LDGC OMSPS.ch
CONST 46
JNEQ L206
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 43
LDLW 12
STOREW
JUMP L161
LABEL L206
CONST 18
LDLW 12
STOREW
JUMP L161
LABEL L203
!           ELSIF ch = "/" THEN Texts.Read(R, ch); sym := rdiv
LINE 194
LDGC OMSPS.ch
CONST 47
JNEQ L208
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 2
LDLW 12
STOREW
JUMP L161
LABEL L208
!           ELSIF ch = "!" THEN Texts.Read(R, ch); sym := emark
LINE 195
LDGC OMSPS.ch
CONST 33
JNEQ L210
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 19
LDLW 12
STOREW
JUMP L161
LABEL L210
!           ELSE Texts.Read(R, ch); (* % ' *) sym := null
LINE 196
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 0
LDLW 12
STOREW
JUMP L161
LABEL L177
!         ELSIF ch < ":" THEN Number(sym)
LINE 198
LDGC OMSPS.ch
CONST 58
JGEQ L212
LDLW 12
GLOBAL OMSPS.Number
CALL 1
JUMP L161
LABEL L212
!         ELSIF ch = ":" THEN Texts.Read(R, ch);
LINE 199
LDGC OMSPS.ch
CONST 58
JNEQ L214
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
!           IF ch = "=" THEN Texts.Read(R, ch); sym := becomes ELSE sym := colon END 
LINE 200
LDGC OMSPS.ch
CONST 61
JNEQ L217
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 42
LDLW 12
STOREW
JUMP L161
LABEL L217
CONST 41
LDLW 12
STOREW
JUMP L161
LABEL L214
!         ELSIF ch = ";" THEN Texts.Read(R, ch); sym := semicolon
LINE 201
LDGC OMSPS.ch
CONST 59
JNEQ L219
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 52
LDLW 12
STOREW
JUMP L161
LABEL L219
!         ELSIF ch = "<" THEN  Texts.Read(R, ch);
LINE 202
LDGC OMSPS.ch
CONST 60
JNEQ L221
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
!           IF ch = "=" THEN Texts.Read(R, ch); sym := leq ELSE sym := lss END
LINE 203
LDGC OMSPS.ch
CONST 61
JNEQ L224
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 14
LDLW 12
STOREW
JUMP L161
LABEL L224
CONST 11
LDLW 12
STOREW
JUMP L161
LABEL L221
!         ELSIF ch = "=" THEN Texts.Read(R, ch); sym := eql
LINE 204
LDGC OMSPS.ch
CONST 61
JNEQ L226
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 9
LDLW 12
STOREW
JUMP L161
LABEL L226
!         ELSIF ch = ">" THEN Texts.Read(R, ch);
LINE 205
LDGC OMSPS.ch
CONST 62
JNEQ L228
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
!           IF ch = "=" THEN Texts.Read(R, ch); sym := geq ELSE sym := gtr END
LINE 206
LDGC OMSPS.ch
CONST 61
JNEQ L231
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 12
LDLW 12
STOREW
JUMP L161
LABEL L231
CONST 13
LDLW 12
STOREW
JUMP L161
LABEL L228
!         ELSE (* ? @ *) Texts.Read(R, ch); sym := null
LINE 207
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
CONST 0
LDLW 12
STOREW
JUMP L161
LABEL L174
!       ELSIF ch < "[" THEN Identifier(sym)
LINE 209
LDGC OMSPS.ch
CONST 91
JGEQ L233
LDLW 12
GLOBAL OMSPS.Identifier
CALL 1
JUMP L161
LABEL L233
!       ELSIF ch < "a" THEN
LINE 210
LDGC OMSPS.ch
CONST 97
JGEQ L235
!         IF ch = "[" THEN sym := lbrak
LINE 211
LDGC OMSPS.ch
CONST 91
JNEQ L238
CONST 29
LDLW 12
STOREW
JUMP L236
LABEL L238
!         ELSIF ch = "]" THEN  sym := rbrak
LINE 212
LDGC OMSPS.ch
CONST 93
JNEQ L240
CONST 45
LDLW 12
STOREW
JUMP L236
LABEL L240
!         ELSIF ch = "^" THEN sym := arrow
LINE 213
LDGC OMSPS.ch
CONST 94
JNEQ L242
CONST 17
LDLW 12
STOREW
JUMP L236
LABEL L242
!         ELSE (* _ ` *) sym := null
LINE 214
CONST 0
LDLW 12
STOREW
LABEL L236
!         Texts.Read(R, ch)
LINE 216
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
JUMP L161
LABEL L235
!       ELSIF ch < "{" THEN Identifier(sym) ELSE
LINE 217
LDGC OMSPS.ch
CONST 123
JGEQ L244
LDLW 12
GLOBAL OMSPS.Identifier
CALL 1
JUMP L161
LABEL L244
!         IF ch = "{" THEN sym := lbrace
LINE 218
LDGC OMSPS.ch
CONST 123
JNEQ L164
CONST 30
LDLW 12
STOREW
JUMP L162
LABEL L164
!         ELSIF ch = "}" THEN sym := rbrace
LINE 219
LDGC OMSPS.ch
CONST 125
JNEQ L166
CONST 46
LDLW 12
STOREW
JUMP L162
LABEL L166
!         ELSIF ch = "|" THEN sym := bar
LINE 220
LDGC OMSPS.ch
CONST 124
JNEQ L168
CONST 54
LDLW 12
STOREW
JUMP L162
LABEL L168
!         ELSIF ch = "~" THEN  sym := not
LINE 221
LDGC OMSPS.ch
CONST 126
JNEQ L170
CONST 27
LDLW 12
STOREW
JUMP L162
LABEL L170
!         ELSE sym := null
LINE 222
CONST 0
LDLW 12
STOREW
LABEL L162
!         Texts.Read(R, ch)
LINE 224
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
LABEL L161
!     UNTIL sym # null
LINE 226
LDLW 12
LOADW
JEQZ L155
RETURN
END

PROC OMSPS.Init 0 5 0x00100001
!   PROCEDURE Init*(T: Texts.Text; pos: INTEGER);
LINE 229
!   BEGIN errpos := pos; errcnt := 0; Texts.OpenReader(R, T, pos); Texts.Read(R, ch)
LINE 230
LDLW 16
STGW OMSPS.errpos
CONST 0
STGW OMSPS.errcnt
LDLW 16
LDLW 12
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.OpenReader
CALL 4
GLOBAL OMSPS.ch
GLOBAL Texts.Reader
GLOBAL OMSPS.R
GLOBAL Texts.Read
CALL 3
RETURN
END

PROC OMSPS.EnterKW 0 7 0x00200001
!   PROCEDURE EnterKW(sym: INTEGER; name: ARRAY OF CHAR);
LINE 233
!   BEGIN keyTab[k].id := name; keyTab[k].sym := sym; INC(k)
LINE 234
GLOBAL OMSPS.keyTab
LDGW OMSPS.k
CONST 34
BOUND 234
CONST 16
TIMES
OFFSET
CONST 4
OFFSET
CONST 12
SWAP
LDLW 20
LDLW 16
CONST 1
CONST 1
GLOBAL FLEXASSIGN
CALL 6
LDLW 12
GLOBAL OMSPS.keyTab
LDGW OMSPS.k
CONST 34
BOUND 234
CONST 4
TIMES
STIW
LDGW OMSPS.k
INC
STGW OMSPS.k
RETURN
END

PROC OMSPS.%main 0 4 0
! BEGIN Texts.OpenWriter(W); k := 0; KWX[0] := 0; KWX[1] := 0;
LINE 237
GLOBAL Texts.Writer
GLOBAL OMSPS.W
GLOBAL Texts.OpenWriter
CALL 2
CONST 0
STGW OMSPS.k
CONST 0
STGW OMSPS.KWX
CONST 0
GLOBAL OMSPS.KWX
STNW 4
!   EnterKW(if, "IF");
LINE 238
CONST 3
GLOBAL OMSPS.%11
CONST 32
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(do, "DO");
LINE 239
CONST 3
GLOBAL OMSPS.%12
CONST 49
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(of, "OF");
LINE 240
CONST 3
GLOBAL OMSPS.%13
CONST 48
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(or, "OR");
LINE 241
CONST 3
GLOBAL OMSPS.%14
CONST 8
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(to, "TO");
LINE 242
CONST 3
GLOBAL OMSPS.%15
CONST 50
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(in, "IN");
LINE 243
CONST 3
GLOBAL OMSPS.%16
CONST 15
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(is, "IS");
LINE 244
CONST 3
GLOBAL OMSPS.%17
CONST 16
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(by, "BY");
LINE 245
CONST 3
GLOBAL OMSPS.%18
CONST 51
GLOBAL OMSPS.EnterKW
CALL 3
!   KWX[2] := k;
LINE 246
LDGW OMSPS.k
GLOBAL OMSPS.KWX
STNW 8
!   EnterKW(end, "END");
LINE 247
CONST 4
GLOBAL OMSPS.%19
CONST 53
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(nil, "NIL");
LINE 248
CONST 4
GLOBAL OMSPS.%20
CONST 25
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(var, "VAR");
LINE 249
CONST 4
GLOBAL OMSPS.%21
CONST 65
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(div, "DIV");
LINE 250
CONST 4
GLOBAL OMSPS.%22
CONST 3
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(mod, "MOD");
LINE 251
CONST 4
GLOBAL OMSPS.%23
CONST 4
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(for, "FOR");
LINE 252
CONST 4
GLOBAL OMSPS.%24
CONST 37
GLOBAL OMSPS.EnterKW
CALL 3
!   KWX[3] := k;
LINE 253
LDGW OMSPS.k
GLOBAL OMSPS.KWX
STNW 12
!   EnterKW(else, "ELSE");
LINE 254
CONST 5
GLOBAL OMSPS.%25
CONST 55
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(then, "THEN");
LINE 255
CONST 5
GLOBAL OMSPS.%26
CONST 47
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(true, "TRUE");
LINE 256
CONST 5
GLOBAL OMSPS.%27
CONST 24
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(type, "TYPE");
LINE 257
CONST 5
GLOBAL OMSPS.%28
CONST 64
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(case, "CASE");
LINE 258
CONST 5
GLOBAL OMSPS.%29
CONST 36
GLOBAL OMSPS.EnterKW
CALL 3
!   KWX[4] := k;
LINE 259
LDGW OMSPS.k
GLOBAL OMSPS.KWX
STNW 16
!   EnterKW(elsif, "ELSIF");
LINE 260
CONST 6
GLOBAL OMSPS.%30
CONST 56
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(false, "FALSE");
LINE 261
CONST 6
GLOBAL OMSPS.%31
CONST 23
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(array, "ARRAY");
LINE 262
CONST 6
GLOBAL OMSPS.%32
CONST 60
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(begin, "BEGIN");
LINE 263
CONST 6
GLOBAL OMSPS.%33
CONST 67
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(const, "CONST");
LINE 264
CONST 6
GLOBAL OMSPS.%34
CONST 63
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(until, "UNTIL");
LINE 265
CONST 6
GLOBAL OMSPS.%35
CONST 57
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(while, "WHILE");
LINE 266
CONST 6
GLOBAL OMSPS.%36
CONST 34
GLOBAL OMSPS.EnterKW
CALL 3
!   KWX[5] := k;
LINE 267
LDGW OMSPS.k
GLOBAL OMSPS.KWX
STNW 20
!   EnterKW(record, "RECORD");
LINE 268
CONST 7
GLOBAL OMSPS.%37
CONST 61
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(repeat, "REPEAT");
LINE 269
CONST 7
GLOBAL OMSPS.%38
CONST 35
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(return, "RETURN");
LINE 270
CONST 7
GLOBAL OMSPS.%39
CONST 58
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(import, "IMPORT");
LINE 271
CONST 7
GLOBAL OMSPS.%40
CONST 68
GLOBAL OMSPS.EnterKW
CALL 3
!   EnterKW(module, "MODULE");
LINE 272
CONST 7
GLOBAL OMSPS.%41
CONST 69
GLOBAL OMSPS.EnterKW
CALL 3
!   KWX[6] := k;
LINE 273
LDGW OMSPS.k
GLOBAL OMSPS.KWX
STNW 24
!   EnterKW(pointer, "POINTER");
LINE 274
CONST 8
GLOBAL OMSPS.%42
CONST 62
GLOBAL OMSPS.EnterKW
CALL 3
!   KWX[7] := k; KWX[8] := k;
LINE 275
LDGW OMSPS.k
GLOBAL OMSPS.KWX
STNW 28
LDGW OMSPS.k
GLOBAL OMSPS.KWX
STNW 32
!   EnterKW(procedure, "PROCEDURE");
LINE 276
CONST 10
GLOBAL OMSPS.%43
CONST 66
GLOBAL OMSPS.EnterKW
CALL 3
!   KWX[9] := k
LINE 277
LDGW OMSPS.k
GLOBAL OMSPS.KWX
STNW 36
RETURN
END

! Global variables
GLOVAR OMSPS.ival 4
GLOVAR OMSPS.slen 4
GLOVAR OMSPS.id 32
GLOVAR OMSPS.str 1024
GLOVAR OMSPS.errcnt 4
GLOVAR OMSPS.ch 1
GLOVAR OMSPS.errpos 4
GLOVAR OMSPS.R 32
GLOVAR OMSPS.W 20
GLOVAR OMSPS.k 4
GLOVAR OMSPS.KWX 40
GLOVAR OMSPS.keyTab 544

! Global pointer map
DEFINE OMSPS.%gcmap
WORD GC_BASE
WORD OMSPS.R
WORD 0x00000109
WORD GC_BASE
WORD OMSPS.W
WORD 0x00000023
WORD GC_END

! String "  pos "
DEFINE OMSPS.%1
STRING 2020706F732000

! String " at pos "
DEFINE OMSPS.%2
STRING 20617420706F732000

! String "string too long"
DEFINE OMSPS.%3
STRING 737472696E6720746F6F206C6F6E6700

! String "hexdig expected"
DEFINE OMSPS.%4
STRING 68657864696720657870656374656400

! String "hex string too long"
DEFINE OMSPS.%5
STRING 68657820737472696E6720746F6F206C6F6E6700

! String "too many digits"
DEFINE OMSPS.%6
STRING 746F6F206D616E792064696769747300

! String "illegal value"
DEFINE OMSPS.%7
STRING 696C6C6567616C2076616C756500

! String "too large"
DEFINE OMSPS.%8
STRING 746F6F206C6172676500

! String "bad integer"
DEFINE OMSPS.%9
STRING 62616420696E746567657200

! String "unterminated comment"
DEFINE OMSPS.%10
STRING 756E7465726D696E6174656420636F6D6D656E7400

! String "IF"
DEFINE OMSPS.%11
STRING 494600

! String "DO"
DEFINE OMSPS.%12
STRING 444F00

! String "OF"
DEFINE OMSPS.%13
STRING 4F4600

! String "OR"
DEFINE OMSPS.%14
STRING 4F5200

! String "TO"
DEFINE OMSPS.%15
STRING 544F00

! String "IN"
DEFINE OMSPS.%16
STRING 494E00

! String "IS"
DEFINE OMSPS.%17
STRING 495300

! String "BY"
DEFINE OMSPS.%18
STRING 425900

! String "END"
DEFINE OMSPS.%19
STRING 454E4400

! String "NIL"
DEFINE OMSPS.%20
STRING 4E494C00

! String "VAR"
DEFINE OMSPS.%21
STRING 56415200

! String "DIV"
DEFINE OMSPS.%22
STRING 44495600

! String "MOD"
DEFINE OMSPS.%23
STRING 4D4F4400

! String "FOR"
DEFINE OMSPS.%24
STRING 464F5200

! String "ELSE"
DEFINE OMSPS.%25
STRING 454C534500

! String "THEN"
DEFINE OMSPS.%26
STRING 5448454E00

! String "TRUE"
DEFINE OMSPS.%27
STRING 5452554500

! String "TYPE"
DEFINE OMSPS.%28
STRING 5459504500

! String "CASE"
DEFINE OMSPS.%29
STRING 4341534500

! String "ELSIF"
DEFINE OMSPS.%30
STRING 454C53494600

! String "FALSE"
DEFINE OMSPS.%31
STRING 46414C534500

! String "ARRAY"
DEFINE OMSPS.%32
STRING 415252415900

! String "BEGIN"
DEFINE OMSPS.%33
STRING 424547494E00

! String "CONST"
DEFINE OMSPS.%34
STRING 434F4E535400

! String "UNTIL"
DEFINE OMSPS.%35
STRING 554E54494C00

! String "WHILE"
DEFINE OMSPS.%36
STRING 5748494C4500

! String "RECORD"
DEFINE OMSPS.%37
STRING 5245434F524400

! String "REPEAT"
DEFINE OMSPS.%38
STRING 52455045415400

! String "RETURN"
DEFINE OMSPS.%39
STRING 52455455524E00

! String "IMPORT"
DEFINE OMSPS.%40
STRING 494D504F525400

! String "MODULE"
DEFINE OMSPS.%41
STRING 4D4F44554C4500

! String "POINTER"
DEFINE OMSPS.%42
STRING 504F494E54455200

! String "PROCEDURE"
DEFINE OMSPS.%43
STRING 50524F43454455524500

! Descriptor for *anon*
DEFINE OMSPS.%44
WORD 0
WORD 0
WORD OMSPS.%44.%anc

DEFINE OMSPS.%44.%anc
WORD OMSPS.%44

! End of file
