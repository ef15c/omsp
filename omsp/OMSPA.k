!! (SYMFILE #OMSPA 0x00030300 #OMSPA.%main 1 #OMSPA.Mod)
!! (CONST #maxCode* INTCONST 32000)
!! (CONST #PC* INTCONST 0)
!! (CONST #SP* INTCONST 1)
!! (CONST #SR* INTCONST 2)
!! (CONST #CG1* INTCONST 2)
!! (CONST #CG2* INTCONST 3)
!! (CONST #NE* INTCONST 0)
!! (CONST #EQ* INTCONST 1)
!! (CONST #NC* INTCONST 2)
!! (CONST #C* INTCONST 3)
!! (CONST #N* INTCONST 4)
!! (CONST #GE* INTCONST 5)
!! (CONST #L* INTCONST 6)
!! (CONST #AL* INTCONST 7)
!! (CONST #NV* INTCONST 8)
!! (CONST #Rm* SET 0)
!! (CONST #Im* SET 16)
!! (CONST #IRm* SET 32)
!! (CONST #IRAm* SET 48)
!! (CONST #Rdm* SET 0)
!! (CONST #Idm* SET 128)
!! (CONST #Register* INTCONST 0)
!! (CONST #Indexed* INTCONST 1)
!! (CONST #Symbolic* INTCONST 2)
!! (CONST #Absolute* INTCONST 3)
!! (CONST #Indirect* INTCONST 4)
!! (CONST #IndirectIncr* INTCONST 5)
!! (CONST #Immediate* INTCONST 6)
!! (CONST #Undefined* INTCONST 255)
!! (CONST #Byte* SET 64)
!! (CONST #Word* SET 0)
!! (CONST #JMPh* INTCONST 32)
!! (CONST #MOV* INTCONST 4)
!! (CONST #ADD* INTCONST 5)
!! (CONST #ADDC* INTCONST 6)
!! (CONST #SUBC* INTCONST 7)
!! (CONST #SUB* INTCONST 8)
!! (CONST #CMP* INTCONST 9)
!! (CONST #DADD* INTCONST 10)
!! (CONST #BIT* INTCONST 11)
!! (CONST #BIC* INTCONST 12)
!! (CONST #BIS* INTCONST 13)
!! (CONST #XOR* INTCONST 14)
!! (CONST #AND* INTCONST 15)
!! (CONST #RRC* INTCONST 32)
!! (CONST #SWPB* INTCONST 33)
!! (CONST #RRA* INTCONST 34)
!! (CONST #SXT* INTCONST 35)
!! (CONST #PUSH* INTCONST 36)
!! (CONST #CALL* INTCONST 37)
!! (CONST #RETI* INTCONST 38)
!! (CONST #POP* INTCONST 256)
!! (CONST #RLA* INTCONST 257)
!! (CONST #RLC* INTCONST 258)
!! (CONST #NOP0* INTCONST 259)
!! (CONST #RET* INTCONST 384)
!! (CONST #CLRC* INTCONST 385)
!! (CONST #MUL* INTCONST 0)
!! (CONST #NEG* INTCONST 1)
!! (CONST #DIv* INTCONST 2)
!! (CONST #MOd* INTCONST 3)
!! (TYPE #ModuleCode* !1 (RECORD #OMSPA.ModuleCode 96004 VOID
!!     (FIELD #pc* 0 INTEGER)
!!     (FIELD #code* 4 !2 (ARRAY 32000 BYTE))
!!     (FIELD #pos* 32004 !3 (ARRAY 16000 INTEGER))))
!! (TYPE #Item* !4 (RECORD #OMSPA.Item 8 VOID
!!     (FIELD #reg* 0 BYTE)
!!     (FIELD #am* 1 BYTE)
!!     (FIELD #ofs* 4 INTEGER)))
!! (TYPE #GetOffsetProc* !5 (PROC 2 INTEGER
!!     (VPARAM #x 12 =4)))
!! (TYPE #AllocRegisterProc* !6 (PROC 0 INTEGER))
!! (TYPE #FreeRegisterProc* !7 (PROC 1 VOID
!!     (PARAM #r 12 INTEGER)))
!! (GLOBAL #getOfs #OMSPA.getOfs =5)
!! (GLOBAL #allocR #OMSPA.allocR =6)
!! (GLOBAL #freeR #OMSPA.freeR =7)
!! (GLOBAL #enabled- #OMSPA.enabled BOOLEAN)
!! (GLOBAL #PutSO0 #OMSPA.PutSO0 !8 (PROC 6 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #op 20 INTEGER)
!!     (VPARAM #ds 24 =4)
!!     (PARAM #params 32 SET)))
!! (PROCEDURE #SetProcs* 86 #OMSPA.SetProcs !9 (PROC 6 VOID
!!     (PARAM #ofsp 12 =5)
!!     (PARAM #ar 20 =6)
!!     (PARAM #fr 28 =7)))
!! (PROCEDURE #log2* 90 #OMSPA.log2 !10 (PROC 2 INTEGER
!!     (PARAM #m 12 INTEGER)
!!     (VPARAM #e 16 INTEGER)))
!! (PROCEDURE #SetEnabled* 96 #OMSPA.SetEnabled !11 (PROC 1 VOID
!!     (PARAM #e 12 BOOLEAN)))
!! (PROCEDURE #Emit* 102 #OMSPA.Emit !12 (PROC 3 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #val 20 INTEGER)))
!! (PROCEDURE #encSrc 111 #OMSPA.encSrc !13 (PROC 6 VOID
!!     (VPARAM #op 12 INTEGER)
!!     (VPARAM #SReg 16 BYTE)
!!     (PARAM #sam 20 BYTE)
!!     (VPARAM #SOff 24 INTEGER)
!!     (VPARAM #emitSOff 28 BOOLEAN)
!!     (VPARAM #params 32 SET)))
!! (PROCEDURE #Put1 139 #OMSPA.Put1 !14 (PROC 6 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #op 20 BYTE)
!!     (PARAM #src 24 BYTE)
!!     (PARAM #dst 28 BYTE)
!!     (PARAM #params 32 SET)))
!! (PROCEDURE #PutDO* 148 #OMSPA.PutDO !15 (PROC 8 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #op 20 INTEGER)
!!     (VPARAM #s 24 =4)
!!     (VPARAM #d 32 =4)
!!     (PARAM #params 40 SET))
!!   (LOCAL #emitSOff -1 BOOLEAN)
!!   (LOCAL #emitDOff -2 BOOLEAN)
!!   (LOCAL #t -12 =4)
!!   (LOCAL #ts -20 =4)
!!   (LOCAL #td -28 =4))
!! (PROCEDURE #Put2 189 #OMSPA.Put2 !16 (PROC 5 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #op 20 BYTE)
!!     (PARAM #register 24 BYTE)
!!     (PARAM #params 28 SET)))
!! (PROCEDURE #PutSO* 198 #OMSPA.PutSO !17 (PROC 6 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #op 20 INTEGER)
!!     (VPARAM #ds 24 =4)
!!     (PARAM #params 32 SET))
!!   (LOCAL #emitDSOff -1 BOOLEAN)
!!   (LOCAL #spi -12 =4)
!!   (LOCAL #t -20 =4)
!!   (LOCAL #tds -28 =4))
!! (PROCEDURE #PutJ* 221 #OMSPA.PutJ !18 (PROC 4 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #cond 20 BYTE)
!!     (PARAM #offset 24 INTEGER)))
!! (PROCEDURE #PutNO* 233 #OMSPA.PutNO !19 (PROC 3 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #op 20 INTEGER)))
!! (PROCEDURE #negated* 244 #OMSPA.negated !20 (PROC 1 INTEGER
!!     (PARAM #cond 12 INTEGER)))
!! (PROCEDURE #fix* 253 #OMSPA.fix !21 (PROC 4 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #at 20 INTEGER)
!!     (PARAM #with 24 INTEGER)))
!! (PROCEDURE #FixOne* 267 #OMSPA.FixOne !22 (PROC 3 VOID
!!     (VPARAM #c 12 =1)
!!     (PARAM #at 20 INTEGER)))
!! (PROCEDURE #merged* 272 #OMSPA.merged !23 (PROC 4 INTEGER
!!     (VPARAM #c 12 =1)
!!     (PARAM #L0 20 INTEGER)
!!     (PARAM #L1 24 INTEGER))
!!   (LOCAL #L2 -4 INTEGER)
!!   (LOCAL #L3 -8 INTEGER))
!! (PROCEDURE #PushRegs* 288 #OMSPA.PushRegs !24 (PROC 3 INTEGER
!!     (VPARAM #c 12 =1)
!!     (PARAM #regs 20 SET))
!!   (LOCAL #n -4 INTEGER)
!!   (LOCAL #i -8 INTEGER)
!!   (LOCAL #t -16 =4))
!! (PROCEDURE #PopRegs* 295 #OMSPA.PopRegs !25 (PROC 3 INTEGER
!!     (VPARAM #c 12 =1)
!!     (PARAM #regs 20 SET))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #n -8 INTEGER)
!!   (LOCAL #t -16 =4))
!! (PROCEDURE #Init* 302 #OMSPA.Init !26 (PROC 2 VOID
!!     (VPARAM #c 12 =1)))
!! (CHKSUM 0x3c6ac8c1)
!! 
MODULE OMSPA 0x3c6ac8c1 307
IMPORT OMSPS 0x208dfe13
ENDHDR

PROC OMSPA.SetProcs 0 2 0
!   PROCEDURE SetProcs*(ofsp: GetOffsetProc; ar: AllocRegisterProc; fr: FreeRegisterProc);
LINE 86
!   BEGIN getOfs := ofsp; allocR := ar; freeR := fr
LINE 87
LDLW 16
GCHECK 87
LDLW 12
STGW OMSPA.getOfs
LDLW 24
GCHECK 87
LDLW 20
STGW OMSPA.allocR
LDLW 32
GCHECK 87
LDLW 28
STGW OMSPA.freeR
RETURN
END

PROC OMSPA.log2 0 3 0x00200001
!   PROCEDURE log2*(m: INTEGER; VAR e: INTEGER): INTEGER;
LINE 90
!   BEGIN e := 0;
LINE 91
CONST 0
LDLW 16
STOREW
LABEL L6
!     WHILE ~ODD(m) DO m := LSR(m, 1); INC(e); END;
LINE 92
LDLW 12
CONST 1
BITAND
JNEQZ L8
LDLW 12
CONST 1
LSR
STLW 12
LDLW 16
DUP 0
LOADW
INC
SWAP
STOREW
JUMP L6
LABEL L8
!     RETURN m
LINE 93
LDLW 12
RETURN
END

PROC OMSPA.SetEnabled 0 2 0
!   PROCEDURE SetEnabled*(e: BOOLEAN);
LINE 96
!   BEGIN enabled := e
LINE 97
LDLC 12
STGC OMSPA.enabled
RETURN
END

PROC OMSPA.Emit 0 4 0x00100001
!   PROCEDURE Emit*(VAR c: ModuleCode; val: INTEGER);
LINE 102
!   BEGIN ASSERT ((val >= -ORD({15})) & (val < ORD({16})));
LINE 103
LDLW 20
CONST -32768
JLT L9
LDLW 20
CONST 65536
JLT L10
LABEL L9
CONST 0
CONST 103
GLOBAL EASSERT
CALL 2
LABEL L10
!     IF enabled THEN
LINE 104
LDGC OMSPA.enabled
JEQZ L14
!       c.code[c.pc+1] := LSR(val, 8) MOD ORD({8});
LINE 105
LDLW 20
CONST 8
LSR
CONST 256
MOD
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 12
LOADW
INC
CONST 32000
BOUND 105
OFFSET
STOREC
!       c.code[c.pc] := val MOD ORD({8});
LINE 106
LDLW 20
CONST 256
MOD
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 12
LOADW
CONST 32000
BOUND 106
OFFSET
STOREC
!       c.pos[c.pc DIV 2] := S.Pos(); INC(c.pc, 2)
LINE 107
GLOBAL OMSPS.Pos
CALLW 0
LDLW 12
CONST 32004
OFFSET
LDLW 12
LOADW
CONST 2
DIV
CONST 16000
BOUND 107
STIW
LDLW 12
DUP 0
LOADW
CONST 2
PLUS
SWAP
STOREW
LABEL L14
RETURN
END

PROC OMSPA.encSrc 0 7 0x03b00001
!   PROCEDURE encSrc(VAR op: INTEGER; VAR SReg: BYTE; sam: BYTE; VAR SOff: INTEGER; VAR emitSOff: BOOLEAN; VAR params: SET);
LINE 111
!     IF sam = Register THEN ASSERT(SReg # CG2); params := params + Rm
LINE 113
LDLC 20
JNEQZ L19
LDLW 16
LOADC
CONST 3
JNEQ L21
CONST 0
CONST 113
GLOBAL EASSERT
CALL 2
LABEL L21
LDLW 32
LOADW
LDLW 32
STOREW
RETURN
LABEL L19
!     ELSIF sam = Indexed THEN ASSERT(~(SReg IN {PC, SR, CG2}));
LINE 114
LDLC 20
CONST 1
JNEQ L23
CONST 1
LDLW 16
LOADC
CONST 32
BOUND 114
LSL
CONST 13
BITAND
JEQZ L25
CONST 0
CONST 114
GLOBAL EASSERT
CALL 2
LABEL L25
!       IF SOff # 0 THEN params := params + Im; emitSOff := TRUE ELSE params := params + IRm END
LINE 115
LDLW 24
LOADW
JEQZ L28
LDLW 32
LOADW
CONST 16
BITOR
LDLW 32
STOREW
CONST 1
LDLW 28
STOREC
RETURN
LABEL L28
LDLW 32
LOADW
CONST 32
BITOR
LDLW 32
STOREW
RETURN
LABEL L23
!     ELSIF sam = Symbolic THEN SReg := PC; params := params + Im; emitSOff := TRUE
LINE 116
LDLC 20
CONST 2
JNEQ L30
CONST 0
LDLW 16
STOREC
LDLW 32
LOADW
CONST 16
BITOR
LDLW 32
STOREW
CONST 1
LDLW 28
STOREC
RETURN
LABEL L30
!     ELSIF sam = Absolute THEN SReg := SR; params := params + Im; emitSOff := TRUE
LINE 117
LDLC 20
CONST 3
JNEQ L32
CONST 2
LDLW 16
STOREC
LDLW 32
LOADW
CONST 16
BITOR
LDLW 32
STOREW
CONST 1
LDLW 28
STOREC
RETURN
LABEL L32
!     ELSIF sam = Indirect THEN ASSERT(~(SReg IN {SR, CG2})); params := params + IRm
LINE 118
LDLC 20
CONST 4
JNEQ L34
CONST 1
LDLW 16
LOADC
CONST 32
BOUND 118
LSL
CONST 12
BITAND
JEQZ L36
CONST 0
CONST 118
GLOBAL EASSERT
CALL 2
LABEL L36
LDLW 32
LOADW
CONST 32
BITOR
LDLW 32
STOREW
RETURN
LABEL L34
!     ELSIF sam = IndirectIncr THEN ASSERT(~(SReg IN {SR, CG2})); params := params + IRAm
LINE 119
LDLC 20
CONST 5
JNEQ L38
CONST 1
LDLW 16
LOADC
CONST 32
BOUND 119
LSL
CONST 12
BITAND
JEQZ L40
CONST 0
CONST 119
GLOBAL EASSERT
CALL 2
LABEL L40
LDLW 32
LOADW
CONST 48
BITOR
LDLW 32
STOREW
RETURN
LABEL L38
!     ELSIF sam = Immediate THEN 
LINE 120
LDLC 20
CONST 6
JNEQ L42
!       IF (SOff = 4) & (op # PUSH) (*W/A CPU4 errata*) THEN SReg := CG1; params := params + IRm
LINE 121
LDLW 24
LOADW
CONST 4
JNEQ L45
LDLW 12
LOADW
CONST 36
JEQ L45
CONST 2
LDLW 16
STOREC
LDLW 32
LOADW
CONST 32
BITOR
LDLW 32
STOREW
RETURN
LABEL L45
!       ELSIF (SOff = 8) & (op # PUSH) THEN SReg := CG1; params := params + IRAm
LINE 122
LDLW 24
LOADW
CONST 8
JNEQ L48
LDLW 12
LOADW
CONST 36
JEQ L48
CONST 2
LDLW 16
STOREC
LDLW 32
LOADW
CONST 48
BITOR
LDLW 32
STOREW
RETURN
LABEL L48
!       ELSIF SOff = 0 THEN SReg := CG2; params := params + Rm
LINE 123
LDLW 24
LOADW
JNEQZ L51
CONST 3
LDLW 16
STOREC
LDLW 32
LOADW
LDLW 32
STOREW
RETURN
LABEL L51
!       ELSIF SOff = 1 THEN SReg := CG2; params := params + Im
LINE 124
LDLW 24
LOADW
CONST 1
JNEQ L53
CONST 3
LDLW 16
STOREC
LDLW 32
LOADW
CONST 16
BITOR
LDLW 32
STOREW
RETURN
LABEL L53
!       ELSIF SOff = 2 THEN SReg := CG2; params := params + IRm
LINE 125
LDLW 24
LOADW
CONST 2
JNEQ L55
CONST 3
LDLW 16
STOREC
LDLW 32
LOADW
CONST 32
BITOR
LDLW 32
STOREW
RETURN
LABEL L55
!       ELSIF (SOff = -1) OR (SOff = 0FFFFH) OR ((SOff = 0FFH) & (params*Byte = Byte)) THEN SReg := CG2; params := params + IRAm
LINE 126
LDLW 24
LOADW
CONST -1
JEQ L56
LDLW 24
LOADW
CONST 65535
JEQ L56
LDLW 24
LOADW
CONST 255
JNEQ L57
LDLW 32
LOADW
CONST 64
BITAND
CONST 64
JNEQ L57
LABEL L56
CONST 3
LDLW 16
STOREC
LDLW 32
LOADW
CONST 48
BITOR
LDLW 32
STOREW
RETURN
LABEL L57
!       ELSIF (op = ADD) & (SOff < -1) THEN op := SUB; SOff := -SOff; encSrc(op, SReg, sam, SOff, emitSOff, params)
LINE 127
LDLW 12
LOADW
CONST 5
JNEQ L62
LDLW 24
LOADW
CONST -1
JGEQ L62
CONST 8
LDLW 12
STOREW
LDLW 24
LOADW
UMINUS
LDLW 24
STOREW
LDLW 32
LDLW 28
LDLW 24
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPA.encSrc
CALL 6
RETURN
LABEL L62
!       ELSIF (op = SUB) & (SOff < -1) THEN op := ADD; SOff := -SOff; encSrc(op, SReg, sam, SOff, emitSOff, params)
LINE 128
LDLW 12
LOADW
CONST 8
JNEQ L65
LDLW 24
LOADW
CONST -1
JGEQ L65
CONST 5
LDLW 12
STOREW
LDLW 24
LOADW
UMINUS
LDLW 24
STOREW
LDLW 32
LDLW 28
LDLW 24
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPA.encSrc
CALL 6
RETURN
LABEL L65
!       ELSE SReg := PC; params := params + IRAm; emitSOff := TRUE
LINE 129
CONST 0
LDLW 16
STOREC
LDLW 32
LOADW
CONST 48
BITOR
LDLW 32
STOREW
CONST 1
LDLW 28
STOREC
RETURN
LABEL L42
!     ELSE S.DebugHex("encSrc sam", sam); ASSERT(FALSE)
LINE 131
LDLC 20
CONST 11
GLOBAL OMSPA.%1
GLOBAL OMSPS.DebugHex
CALL 3
CONST 0
CONST 131
GLOBAL EASSERT
CALL 2
RETURN
END

PROC OMSPA.Put1 0 4 0x00100001
!   PROCEDURE Put1(VAR c: ModuleCode; op, src, dst: BYTE; params: SET);
LINE 139
!     IF enabled THEN
LINE 141
LDGC OMSPA.enabled
JEQZ L69
!       c.code[c.pc+1] := LSL(op, 4) + src;
LINE 142
LDLC 20
CONST 4
LSL
LDLC 24
PLUS
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 12
LOADW
INC
CONST 32000
BOUND 142
OFFSET
STOREC
!       c.code[c.pc] := ORD(params) + dst;
LINE 143
LDLW 32
LDLC 28
PLUS
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 12
LOADW
CONST 32000
BOUND 143
OFFSET
STOREC
!       c.pos[c.pc DIV 2] := S.Pos(); INC(c.pc, 2)
LINE 144
GLOBAL OMSPS.Pos
CALLW 0
LDLW 12
CONST 32004
OFFSET
LDLW 12
LOADW
CONST 2
DIV
CONST 16000
BOUND 144
STIW
LDLW 12
DUP 0
LOADW
CONST 2
PLUS
SWAP
STOREW
LABEL L69
RETURN
END

PROC OMSPA.PutDO 28 9 0x02900001
!   PROCEDURE PutDO*(VAR c: ModuleCode; op: INTEGER; VAR s, d: Item; params: SET);
LINE 148
!   BEGIN (*emit format I instruction*) ASSERT(params = params*Byte); emitSOff := FALSE; emitDOff := FALSE;
LINE 150
LDLW 40
LDLW 40
CONST 64
BITAND
JEQ L71
CONST 0
CONST 150
GLOBAL EASSERT
CALL 2
LABEL L71
CONST 0
STLC -1
CONST 0
STLC -2
!     ts := s; td := d;
LINE 151
LOCAL -20
LDLW 24
CONST 8
FIXCOPY
LOCAL -28
LDLW 32
CONST 8
FIXCOPY
!     IF op = MUL THEN 
LINE 152
LDLW 20
JNEQZ L99
!       IF s.am = Immediate THEN ASSERT(s.ofs < ORD({16}));
LINE 153
LDLW 24
CONST 1
LDIC
CONST 6
JNEQ L97
LDLW 24
LDNW 4
CONST 65536
JLT L104
CONST 0
CONST 153
GLOBAL EASSERT
CALL 2
LABEL L104
!         IF s.ofs = 0 THEN t.reg := 0; t.am := Immediate; t.ofs := 0; PutDO(c, MOV, t, d, params)
LINE 154
LDLW 24
LDNW 4
JNEQZ L118
CONST 0
STLC -12
CONST 6
STLC -11
CONST 0
STLW -8
LDLW 40
LDLW 36
LDLW 32
GLOBAL OMSPA.Item
LOCAL -12
CONST 4
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L118
!         ELSIF s.ofs < 0 THEN (*multiplicator is negative, change sign of multiplicator, do the multiplication, then change the sign of the result*)
LINE 155
LDLW 24
LDNW 4
JGEQZ L120
!           ts.ofs := -ts.ofs; PutDO(c, op, ts, d, params); PutSO0(c, NEG, d, params)
LINE 156
LDLW -16
UMINUS
STLW -16
LDLW 40
LDLW 36
LDLW 32
GLOBAL OMSPA.Item
LOCAL -20
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
LDLW 40
LDLW 36
LDLW 32
CONST 1
LDLW 16
LDLW 12
LDGW OMSPA.PutSO0
NCHECK 156
CALL 6
RETURN
LABEL L120
!         ELSE (*multiplicator is positive*) WHILE ~ODD(ts.ofs) DO PutDO(c, ADD, d, d, params); ts.ofs := ts.ofs DIV 2 END;
LINE 157
LDLW -16
CONST 1
BITAND
JNEQZ L108
LDLW 40
LDLW 36
LDLW 32
LDLW 36
LDLW 32
CONST 5
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
LDLW -16
CONST 2
DIV
STLW -16
JUMP L120
LABEL L108
!           t.am := Register; t.ofs := 0;
LINE 158
CONST 0
STLC -11
CONST 0
STLW -8
!           IF ts.ofs # 1 THEN t.reg := allocR(); PutDO(c, MOV, d, t, params);
LINE 159
LDLW -16
CONST 1
JEQ L97
LDGW OMSPA.allocR
NCHECK 159
CALLW 0
CONVNC
STLC -12
LDLW 40
GLOBAL OMSPA.Item
LOCAL -12
LDLW 36
LDLW 32
CONST 4
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
LABEL L112
!             REPEAT PutDO(c, ADD, t, t, params); ts.ofs := ts.ofs DIV 2;
LINE 160
LDLW 40
GLOBAL OMSPA.Item
LOCAL -12
GLOBAL OMSPA.Item
LOCAL -12
CONST 5
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
LDLW -16
CONST 2
DIV
STLW -16
!               IF ODD(ts.ofs) THEN PutDO(c, ADD, t, d, params) END
LINE 161
LDLW -16
CONST 1
BITAND
JEQZ L116
LDLW 40
LDLW 36
LDLW 32
GLOBAL OMSPA.Item
LOCAL -12
CONST 5
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
LABEL L116
!             UNTIL ts.ofs = 1;
LINE 162
LDLW -16
CONST 1
JNEQ L112
!             freeR(t.reg)
LINE 163
LDLC -12
LDGW OMSPA.freeR
NCHECK 163
CALL 1
RETURN
LABEL L99
!     ELSIF op IN {DIv, MOd} THEN S.Mark("not implemented")
LINE 167
CONST 1
LDLW 20
CONST 32
BOUND 167
LSL
CONST 12
BITAND
JEQZ L122
CONST 16
GLOBAL OMSPA.%2
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L122
!     ELSE ASSERT(op < 10H);
LINE 168
LDLW 20
CONST 16
JLT L74
CONST 0
CONST 168
GLOBAL EASSERT
CALL 2
LABEL L74
!       encSrc(op, ts.reg, ts.am, ts.ofs, emitSOff, params);
LINE 169
LOCAL 40
LOCAL -1
LOCAL -16
LDLC -19
LOCAL -20
LOCAL 20
GLOBAL OMSPA.encSrc
CALL 6
!       IF d.am = Register THEN params := params + Rdm
LINE 171
LDLW 32
CONST 1
LDIC
JNEQZ L79
LDLW 40
STLW 40
JUMP L77
LABEL L79
!       ELSIF td.am = Indexed THEN ASSERT(~(td.reg IN {PC, SR, CG2})); params := params + Idm; emitDOff := TRUE
LINE 172
LDLC -27
CONST 1
JNEQ L81
CONST 1
LDLC -28
CONST 32
BOUND 172
LSL
CONST 13
BITAND
JEQZ L83
CONST 0
CONST 172
GLOBAL EASSERT
CALL 2
LABEL L83
LDLW 40
CONST 128
BITOR
STLW 40
CONST 1
STLC -2
JUMP L77
LABEL L81
!       ELSIF td.am = Symbolic THEN td.reg := PC; params := params + Idm; emitDOff := TRUE
LINE 173
LDLC -27
CONST 2
JNEQ L85
CONST 0
STLC -28
LDLW 40
CONST 128
BITOR
STLW 40
CONST 1
STLC -2
JUMP L77
LABEL L85
!       ELSIF td.am = Absolute THEN td.reg := SR; params := params + Idm; emitDOff := TRUE
LINE 174
LDLC -27
CONST 3
JNEQ L87
CONST 2
STLC -28
LDLW 40
CONST 128
BITOR
STLW 40
CONST 1
STLC -2
JUMP L77
LABEL L87
!       ELSE S.DebugHex("putDO dam", td.am); ASSERT(FALSE)
LINE 175
LDLC -27
CONST 10
GLOBAL OMSPA.%3
GLOBAL OMSPS.DebugHex
CALL 3
CONST 0
CONST 175
GLOBAL EASSERT
CALL 2
LABEL L77
!       ASSERT(ts.reg < 16); ASSERT(td.reg < 16);
LINE 178
LDLC -20
CONST 16
JLT L89
CONST 0
CONST 178
GLOBAL EASSERT
CALL 2
LABEL L89
LDLC -28
CONST 16
JLT L91
CONST 0
CONST 178
GLOBAL EASSERT
CALL 2
LABEL L91
!       Put1(c, op, ts.reg, td.reg, params);
LINE 179
LDLW 40
LDLC -28
LDLC -20
LDLW 20
CONVNC
LDLW 16
LDLW 12
GLOBAL OMSPA.Put1
CALL 6
!       IF emitSOff THEN Emit(c, getOfs(s)) END;
LINE 180
LDLC -1
JEQZ L94
LDLW 28
LDLW 24
LDGW OMSPA.getOfs
NCHECK 180
CALLW 2
LDLW 16
LDLW 12
GLOBAL OMSPA.Emit
CALL 3
LABEL L94
!       IF emitDOff THEN Emit(c, getOfs(d)) END
LINE 181
LDLC -2
JEQZ L97
LDLW 36
LDLW 32
LDGW OMSPA.getOfs
NCHECK 181
CALLW 2
LDLW 16
LDLW 12
GLOBAL OMSPA.Emit
CALL 3
LABEL L97
RETURN
END

PROC OMSPA.Put2 0 4 0x00100001
!   PROCEDURE Put2(VAR c: ModuleCode; op, register: BYTE; params: SET);
LINE 189
!     IF enabled THEN
LINE 191
LDGC OMSPA.enabled
JEQZ L125
!       c.code[c.pc+1] := LSR(op, 1);
LINE 192
LDLC 20
CONST 1
LSR
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 12
LOADW
INC
CONST 32000
BOUND 192
OFFSET
STOREC
!       c.code[c.pc]   := LSL(op MOD 2, 7) + ORD(params) + register;
LINE 193
LDLC 20
CONST 2
MOD
CONST 7
LSL
LDLW 28
PLUS
LDLC 24
PLUS
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 12
LOADW
CONST 32000
BOUND 193
OFFSET
STOREC
!       c.pos[c.pc DIV 2] := S.Pos(); INC(c.pc, 2)
LINE 194
GLOBAL OMSPS.Pos
CALLW 0
LDLW 12
CONST 32004
OFFSET
LDLW 12
LOADW
CONST 2
DIV
CONST 16000
BOUND 194
STIW
LDLW 12
DUP 0
LOADW
CONST 2
PLUS
SWAP
STOREW
LABEL L125
RETURN
END

PROC OMSPA.PutSO 28 9 0x00900001
!   PROCEDURE PutSO*(VAR c: ModuleCode; op: INTEGER; VAR ds: Item; params: SET);
LINE 198
!   BEGIN (*emit format II instruction*) ASSERT(params = params*Byte);
LINE 200
LDLW 32
LDLW 32
CONST 64
BITAND
JEQ L127
CONST 0
CONST 200
GLOBAL EASSERT
CALL 2
LABEL L127
!     tds := ds;
LINE 201
LOCAL -28
LDLW 24
CONST 8
FIXCOPY
!     emitDSOff := FALSE; spi.reg := SP; spi.am := IndirectIncr; spi.ofs := 0;
LINE 202
CONST 0
STLC -1
CONST 1
STLC -12
CONST 5
STLC -11
CONST 0
STLW -8
!     IF op = POP THEN PutDO(c, MOV, spi, ds, Word) (*emulation*)
LINE 203
LDLW 20
CONST 256
JNEQ L137
CONST 0
LDLW 28
LDLW 24
GLOBAL OMSPA.Item
LOCAL -12
CONST 4
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L137
!     ELSIF op = RLA THEN PutDO(c, ADD, ds, ds, params)
LINE 204
LDLW 20
CONST 257
JNEQ L139
LDLW 32
LDLW 28
LDLW 24
LDLW 28
LDLW 24
CONST 5
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L139
!     ELSIF op = RLC THEN PutDO(c, ADDC, ds, ds, params)
LINE 205
LDLW 20
CONST 258
JNEQ L141
LDLW 32
LDLW 28
LDLW 24
LDLW 28
LDLW 24
CONST 6
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L141
!     ELSIF op = NOP0 THEN (*do nothing*)
LINE 206
LDLW 20
CONST 259
JEQ L135
!     ELSIF op = NEG THEN t.reg := 0; t.am := Immediate; t.ofs := -1; (*emulated by software*)
LINE 207
LDLW 20
CONST 1
JNEQ L145
CONST 0
STLC -20
CONST 6
STLC -19
CONST -1
STLW -16
!       PutDO(c, XOR, t, ds, params); t.ofs := 1; PutDO(c, ADD, t, ds, params)
LINE 208
LDLW 32
LDLW 28
LDLW 24
GLOBAL OMSPA.Item
LOCAL -20
CONST 14
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
CONST 1
STLW -16
LDLW 32
LDLW 28
LDLW 24
GLOBAL OMSPA.Item
LOCAL -20
CONST 5
LDLW 16
LDLW 12
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L145
!     ELSE ASSERT(op < 100H);
LINE 209
LDLW 20
CONST 256
JLT L130
CONST 0
CONST 209
GLOBAL EASSERT
CALL 2
LABEL L130
!       encSrc(op, tds.reg, tds.am, tds.ofs, emitDSOff, params);
LINE 210
LOCAL 32
LOCAL -1
LOCAL -24
LDLC -27
LOCAL -28
LOCAL 20
GLOBAL OMSPA.encSrc
CALL 6
!       ASSERT(tds.reg < 16);
LINE 212
LDLC -28
CONST 16
JLT L132
CONST 0
CONST 212
GLOBAL EASSERT
CALL 2
LABEL L132
!       Put2(c, op, tds.reg, params);
LINE 213
LDLW 32
LDLC -28
LDLW 20
CONVNC
LDLW 16
LDLW 12
GLOBAL OMSPA.Put2
CALL 5
!       IF emitDSOff THEN Emit(c, getOfs(ds)) END
LINE 214
LDLC -1
JEQZ L135
LDLW 28
LDLW 24
LDGW OMSPA.getOfs
NCHECK 214
CALLW 2
LDLW 16
LDLW 12
GLOBAL OMSPA.Emit
CALL 3
LABEL L135
RETURN
END

PROC OMSPA.PutJ 0 4 0x00100001
!   PROCEDURE PutJ*(VAR c: ModuleCode; cond: BYTE; offset: INTEGER);
LINE 221
!   BEGIN (*emit jump instruction*) ASSERT (cond <= 8);
LINE 222
LDLC 20
CONST 8
JLEQ L147
CONST 0
CONST 222
GLOBAL EASSERT
CALL 2
LABEL L147
!     ASSERT(~ODD(offset)); offset := offset DIV 2; 
LINE 223
LDLW 24
CONST 1
BITAND
JEQZ L149
CONST 0
CONST 223
GLOBAL EASSERT
CALL 2
LABEL L149
LDLW 24
CONST 2
DIV
STLW 24
!     IF (offset < -ORD({9})) OR (offset >= ORD({9})) THEN S.Mark("jump too far"); offset := 0 END;
LINE 224
LDLW 24
CONST -512
JLT L151
LDLW 24
CONST 512
JLT L152
LABEL L151
CONST 13
GLOBAL OMSPA.%4
GLOBAL OMSPS.Mark
CALL 2
CONST 0
STLW 24
LABEL L152
!     IF cond = NV THEN S.Mark("invalid cond code"); enabled := FALSE END;
LINE 225
LDLC 20
CONST 8
JNEQ L156
CONST 18
GLOBAL OMSPA.%5
GLOBAL OMSPS.Mark
CALL 2
CONST 0
STGC OMSPA.enabled
LABEL L156
!     IF enabled THEN
LINE 226
LDGC OMSPA.enabled
JEQZ L159
!       c.code[c.pc+1] := JMPh + LSL(cond, 2) + LSR(offset, 8) MOD 4;
LINE 227
LDLC 20
CONST 2
LSL
CONST 32
PLUS
LDLW 24
CONST 8
LSR
CONST 4
MOD
PLUS
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 12
LOADW
INC
CONST 32000
BOUND 227
OFFSET
STOREC
!       c.code[c.pc]   := offset MOD ORD({8});
LINE 228
LDLW 24
CONST 256
MOD
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 12
LOADW
CONST 32000
BOUND 228
OFFSET
STOREC
!       c.pos[c.pc DIV 2] := S.Pos(); INC(c.pc, 2)
LINE 229
GLOBAL OMSPS.Pos
CALLW 0
LDLW 12
CONST 32004
OFFSET
LDLW 12
LOADW
CONST 2
DIV
CONST 16000
BOUND 229
STIW
LDLW 12
DUP 0
LOADW
CONST 2
PLUS
SWAP
STOREW
LABEL L159
RETURN
END

PROC OMSPA.PutNO 0 7 0x00100001
!   PROCEDURE PutNO*(VAR c: ModuleCode; op: INTEGER);
LINE 233
!     IF op = RET THEN Put1(c, MOV, SP, PC, IRAm + Rdm + Word)
LINE 235
LDLW 20
CONST 384
JNEQ L164
CONST 48
CONST 0
CONST 1
CONST 4
LDLW 16
LDLW 12
GLOBAL OMSPA.Put1
CALL 6
RETURN
LABEL L164
!     ELSIF op = CLRC THEN Put1(c, BIC, CG2, SR, Im + Rdm + Word)
LINE 236
LDLW 20
CONST 385
JNEQ L166
CONST 16
CONST 2
CONST 3
CONST 12
LDLW 16
LDLW 12
GLOBAL OMSPA.Put1
CALL 6
RETURN
LABEL L166
!     ELSIF op = RETI THEN Put2(c, op, 0, {})
LINE 237
LDLW 20
CONST 38
JNEQ L168
CONST 0
CONST 0
LDLW 20
CONVNC
LDLW 16
LDLW 12
GLOBAL OMSPA.Put2
CALL 5
RETURN
LABEL L168
CONST 0
CONST 238
GLOBAL EASSERT
CALL 2
RETURN
END

PROC OMSPA.negated 0 3 0
!   PROCEDURE negated*(cond: INTEGER): INTEGER;
LINE 244
!   BEGIN ASSERT(cond  # N); (*negated of negative condition does not exist*)
LINE 245
LDLW 12
CONST 4
JNEQ L170
CONST 0
CONST 245
GLOBAL EASSERT
CALL 2
LABEL L170
!     IF cond < N THEN cond := SYSTEM.VAL(BYTE, SYSTEM.VAL(SET, cond) / {0})
LINE 246
LDLW 12
CONST 4
JGEQ L173
LDLW 12
CONST 1
BITXOR
STLW 12
JUMP L171
LABEL L173
!     ELSIF cond <= L THEN cond := (L+GE) - cond
LINE 247
LDLW 12
CONST 6
JGT L175
CONST 11
LDLW 12
MINUS
STLW 12
JUMP L171
LABEL L175
!     ELSE cond := (NV+AL) - cond
LINE 248
CONST 15
LDLW 12
MINUS
STLW 12
LABEL L171
!     RETURN cond
LINE 250
LDLW 12
RETURN
END

PROC OMSPA.fix 0 4 0x00100001
!   PROCEDURE fix*(VAR c: ModuleCode; at, with: INTEGER);
LINE 253
!     IF enabled THEN
LINE 256
LDGC OMSPA.enabled
JEQZ L178
!       ASSERT(LSR(c.code[at+1], 5) = LSR(JMPh, 5)); (*Check op code*)
LINE 257
LDLW 12
CONST 4
OFFSET
LDLW 20
INC
CONST 32000
BOUND 257
OFFSET
LOADC
CONST 5
LSR
CONST 1
JEQ L180
CONST 0
CONST 257
GLOBAL EASSERT
CALL 2
LABEL L180
!       ASSERT (~ODD(with)); with := with DIV 2;
LINE 258
LDLW 24
CONST 1
BITAND
JEQZ L182
CONST 0
CONST 258
GLOBAL EASSERT
CALL 2
LABEL L182
LDLW 24
CONST 2
DIV
STLW 24
!       IF (with < -ORD({10})) OR (with >= ORD({10})) THEN S.Mark("jump too far")
LINE 259
LDLW 24
CONST -1024
JLT L184
LDLW 24
CONST 1024
JLT L185
LABEL L184
CONST 13
GLOBAL OMSPA.%4
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L185
!       ELSE with := with MOD ORD({10});
LINE 260
LDLW 24
CONST 1024
MOD
STLW 24
!         c.code[at+1] := LSL(LSR(c.code[at+1], 2), 2) + LSR(with, 8);
LINE 261
LDLW 12
CONST 4
OFFSET
LDLW 20
INC
CONST 32000
BOUND 261
OFFSET
LOADC
CONST 2
LSR
CONST 2
LSL
LDLW 24
CONST 8
LSR
PLUS
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 20
INC
CONST 32000
BOUND 261
OFFSET
STOREC
!         c.code[at] := with MOD ORD({8})
LINE 262
LDLW 24
CONST 256
MOD
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW 20
CONST 32000
BOUND 262
OFFSET
STOREC
LABEL L178
RETURN
END

PROC OMSPA.FixOne 0 5 0x00100001
!   PROCEDURE FixOne*(VAR c: ModuleCode; at: INTEGER);
LINE 267
!     IF enabled THEN fix(c, at, c.pc-at-2) END
LINE 269
LDGC OMSPA.enabled
JEQZ L189
LDLW 12
LOADW
LDLW 20
MINUS
CONST 2
MINUS
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPA.fix
CALL 4
LABEL L189
RETURN
END

PROC OMSPA.merged 8 4 0x00100001
!   PROCEDURE merged*(VAR c: ModuleCode; L0, L1: INTEGER): INTEGER;
LINE 272
!     IF enabled & (L0 # 0) THEN L3 := L0;
LINE 275
LDGC OMSPA.enabled
JEQZ L192
LDLW 20
JEQZ L192
LDLW 20
STLW -8
LABEL L193
!       REPEAT L2 := L3;
LINE 276
LDLW -8
STLW -4
!         ASSERT(LSR(c.code[L2+1], 13) = LSR(JMPh, 5)); (*must be a jump instruction*)
LINE 277
LDLW 12
CONST 4
OFFSET
LDLW -4
INC
CONST 32000
BOUND 277
OFFSET
LOADC
CONST 13
LSR
CONST 1
JEQ L196
CONST 0
CONST 277
GLOBAL EASSERT
CALL 2
LABEL L196
!         L3 := (c.code[L2+1] MOD ORD({2})*ORD({8}) + c.code[L2])*2
LINE 278
LDLW 12
CONST 4
OFFSET
LDLW -4
INC
CONST 32000
BOUND 278
OFFSET
LOADC
CONST 4
MOD
CONST 256
TIMES
LDLW 12
CONST 4
OFFSET
LDLW -4
CONST 32000
BOUND 278
OFFSET
LOADC
PLUS
CONST 2
TIMES
STLW -8
!       UNTIL L3 = 0;
LINE 279
LDLW -8
JNEQZ L193
!       c.code[L2+1] := LSL(LSR(c.code[L2+1], 2), 2) + LSR(L1, 8);
LINE 280
LDLW 12
CONST 4
OFFSET
LDLW -4
INC
CONST 32000
BOUND 280
OFFSET
LOADC
CONST 2
LSR
CONST 2
LSL
LDLW 24
CONST 8
LSR
PLUS
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW -4
INC
CONST 32000
BOUND 280
OFFSET
STOREC
!       c.code[L2] := L1 MOD ORD({8});
LINE 281
LDLW 24
CONST 256
MOD
CONVNC
LDLW 12
CONST 4
OFFSET
LDLW -4
CONST 32000
BOUND 281
OFFSET
STOREC
!       L1 := L0
LINE 282
LDLW 20
STLW 24
LABEL L192
!     RETURN L1
LINE 285
LDLW 24
RETURN
END

PROC OMSPA.PushRegs 16 7 0x00100001
!   PROCEDURE PushRegs*(VAR c: ModuleCode; regs: SET): INTEGER;
LINE 288
!   BEGIN t.am := Register; t.ofs := 0; n := 0;
LINE 290
CONST 0
STLC -15
CONST 0
STLW -12
CONST 0
STLW -4
!     FOR i := 15 TO 0 BY -1 DO IF regs*{i} # {} THEN INC(n); t.reg := i; PutSO(c, PUSH, t, Word) END END
LINE 291
CONST 15
STLW -8
LABEL L198
LDLW -8
JLTZ L199
LDLW 20
CONST 1
LDLW -8
CONST 32
BOUND 291
LSL
BITAND
JEQZ L202
INCL -4
LDLW -8
CONVNC
STLC -16
CONST 0
GLOBAL OMSPA.Item
LOCAL -16
CONST 36
LDLW 16
LDLW 12
GLOBAL OMSPA.PutSO
CALL 6
LABEL L202
DECL -8
JUMP L198
LABEL L199
!     RETURN n
LINE 292
LDLW -4
RETURN
END

PROC OMSPA.PopRegs 16 7 0x00100001
!   PROCEDURE PopRegs*(VAR c: ModuleCode; regs: SET): INTEGER;
LINE 295
!   BEGIN t.am := Register; t.ofs := 0; n := 0;
LINE 297
CONST 0
STLC -15
CONST 0
STLW -12
CONST 0
STLW -8
!     FOR i := 0 TO 15 DO IF regs*{i} # {} THEN INC(n); t.reg := i; PutSO(c, POP, t, Word) END END
LINE 298
CONST 0
STLW -4
LABEL L203
LDLW -4
CONST 15
JGT L204
LDLW 20
CONST 1
LDLW -4
CONST 32
BOUND 298
LSL
BITAND
JEQZ L207
INCL -8
LDLW -4
CONVNC
STLC -16
CONST 0
GLOBAL OMSPA.Item
LOCAL -16
CONST 256
LDLW 16
LDLW 12
GLOBAL OMSPA.PutSO
CALL 6
LABEL L207
INCL -4
JUMP L203
LABEL L204
!     RETURN n
LINE 299
LDLW -8
RETURN
END

PROC OMSPA.Init 0 3 0x00100001
!   PROCEDURE Init*(VAR c: ModuleCode);
LINE 302
!   BEGIN c.pc := 0; enabled := TRUE
LINE 303
CONST 0
LDLW 12
STOREW
CONST 1
STGC OMSPA.enabled
RETURN
END

PROC OMSPA.%main 0 2 0
! BEGIN PutSO0 := PutSO
LINE 306
GLOBAL OMSPA.PutSO
STGW OMSPA.PutSO0
RETURN
END

! Global variables
GLOVAR OMSPA.getOfs 4
GLOVAR OMSPA.allocR 4
GLOVAR OMSPA.freeR 4
GLOVAR OMSPA.enabled 1
GLOVAR OMSPA.PutSO0 4

! String "encSrc sam"
DEFINE OMSPA.%1
STRING 656E635372632073616D00

! String "not implemented"
DEFINE OMSPA.%2
STRING 6E6F7420696D706C656D656E74656400

! String "putDO dam"
DEFINE OMSPA.%3
STRING 707574444F2064616D00

! String "jump too far"
DEFINE OMSPA.%4
STRING 6A756D7020746F6F2066617200

! String "invalid cond code"
DEFINE OMSPA.%5
STRING 696E76616C696420636F6E6420636F646500

! Descriptor for ModuleCode
DEFINE OMSPA.ModuleCode
WORD 0
WORD 0
WORD OMSPA.ModuleCode.%anc

DEFINE OMSPA.ModuleCode.%anc
WORD OMSPA.ModuleCode

! Descriptor for Item
DEFINE OMSPA.Item
WORD 0
WORD 0
WORD OMSPA.Item.%anc

DEFINE OMSPA.Item.%anc
WORD OMSPA.Item

! End of file
