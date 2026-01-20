!! (SYMFILE #OMSPG 0x00030300 #OMSPG.%main 1 #OMSPG.Mod)
!! (CONST #WordSize* INTCONST 2)
!! (CONST #maxStrs INTCONST 65536)
!! (CONST #Register* BOOLEAN 1)
!! (CONST #Stack* BOOLEAN 0)
!! (CONST #Reg INTCONST 10)
!! (CONST #RegI INTCONST 11)
!! (CONST #Cond INTCONST 12)
!! (CONST #Absol INTCONST 13)
!! (DEF ?1 #OMSPA 3 #Item (RECORD #OMSPA.Item 8 VOID
!!     (FIELD #reg* 0 BYTE)
!!     (FIELD #am* 1 BYTE)
!!     (FIELD #ofs* 4 INTEGER)))
!! (TYPE #Item* !2 (RECORD #OMSPG.Item 44 =1
!!     (FIELD #reg* 0 BYTE)
!!     (FIELD #am* 1 BYTE)
!!     (FIELD #ofs* 4 INTEGER)
!!     (FIELD #mode* 8 INTEGER)
!!     (FIELD #type* 12 ?3 #OMSPB 3 #Type (POINTER))
!!     (FIELD #obj* 16 ?4 #OMSPB 1 #Object (POINTER))
!!     (FIELD #a* 20 INTEGER)
!!     (FIELD #b* 24 INTEGER)
!!     (FIELD #c* 28 INTEGER)
!!     (FIELD #mnor 32 BYTE)
!!     (FIELD #snor 36 INTEGER)
!!     (FIELD #rdo* 40 BOOLEAN)
!!     (FIELD #tmp 41 BOOLEAN)
!!     (FIELD #ladr 42 BOOLEAN)
!!     (FIELD #ptr 43 BOOLEAN)))
!! (TARGET =4 ?5 #OMSPB 2 #ObjDesc (RECORD #OMSPB.ObjDesc 60 VOID
!!     (FIELD #class* 0 BYTE)
!!     (FIELD #exno* 1 BYTE)
!!     (FIELD #register* 2 BYTE)
!!     (FIELD #expo* 3 BOOLEAN)
!!     (FIELD #unsafe* 4 BOOLEAN)
!!     (FIELD #rdo* 5 BOOLEAN)
!!     (FIELD #lev* 8 INTEGER)
!!     (FIELD #next* 12 =4)
!!     (FIELD #dsc* 16 =4)
!!     (FIELD #type* 20 =3)
!!     (FIELD #name* 24 ?6 #OMSPS 1 #Ident (ARRAY 32 CHAR))
!!     (FIELD #val* 56 INTEGER)))
!! (TARGET =3 ?7 #OMSPB 5 #TypeDesc (RECORD #OMSPB.TypeDesc 44 VOID
!!     (FIELD #form* 0 INTEGER)
!!     (FIELD #ref* 4 INTEGER)
!!     (FIELD #mno* 8 INTEGER)
!!     (FIELD #nofpar* 12 INTEGER)
!!     (FIELD #len* 16 INTEGER)
!!     (FIELD #dsc* 20 =4)
!!     (FIELD #typobj* 24 =4)
!!     (FIELD #base* 28 =3)
!!     (FIELD #size* 32 INTEGER)
!!     (FIELD #leaf* 36 BOOLEAN)
!!     (FIELD #ur* 40 SET)))
!! (TYPE #Fixup !8 (POINTER))
!! (TARGET =8 !9 (RECORD #OMSPG.FixupDesc 24 VOID
!!     (FIELD #fixadr 0 INTEGER)
!!     (FIELD #mno 4 BYTE)
!!     (FIELD #sno 8 INTEGER)
!!     (FIELD #offset 12 INTEGER)
!!     (FIELD #mnor 16 BYTE)
!!     (FIELD #snor 17 BYTE)
!!     (FIELD #next 20 =8)))
!! (TYPE #FixupDesc =9)
!! (DEF ?10 #OMSPA 1 #ModuleCode (RECORD #OMSPA.ModuleCode 32004 VOID
!!     (FIELD #pc* 0 INTEGER)
!!     (FIELD #code* 4 ?11 #OMSPA 2 ANON (ARRAY 32000 BYTE))))
!! (TYPE #ModuleCodeDesc !12 (RECORD #OMSPG.ModuleCodeDesc 32004 =10
!!     (FIELD #pc* 0 INTEGER)
!!     (FIELD #code* 4 =11)))
!! (TYPE #Content !13 (POINTER))
!! (TARGET =13 =12)
!! (TYPE #Section !14 (POINTER))
!! (TARGET =14 !15 (RECORD #OMSPG.SectionDesc 60 VOID
!!     (FIELD #no 0 INTEGER)
!!     (FIELD #name 4 =6)
!!     (FIELD #segment 36 CHAR)
!!     (FIELD #size 40 INTEGER)
!!     (FIELD #org 44 INTEGER)
!!     (FIELD #content 48 =13)
!!     (FIELD #fixup 52 =8)
!!     (FIELD #next 56 =14)))
!! (TYPE #SectionDesc =15)
!! (GLOBAL #AllocUp #OMSPG.AllocUp BOOLEAN)
!! (GLOBAL #RIU- #OMSPG.RIU SET)
!! (GLOBAL #VRS #OMSPG.VRS SET)
!! (GLOBAL #RB #OMSPG.RB INTEGER)
!! (GLOBAL #RL #OMSPG.RL INTEGER)
!! (GLOBAL #PRU- #OMSPG.PRU SET)
!! (GLOBAL #frame #OMSPG.frame INTEGER)
!! (GLOBAL #vframe #OMSPG.vframe INTEGER)
!! (GLOBAL #traps #OMSPG.traps !16 (ARRAY 8 =4))
!! (GLOBAL #arith #OMSPG.arith !17 (ARRAY 4 =4))
!! (GLOBAL #relmap #OMSPG.relmap !18 (ARRAY 4 INTEGER))
!! (GLOBAL #urelmap #OMSPG.urelmap =18)
!! (GLOBAL #cm1 #OMSPG.cm1 =2)
!! (GLOBAL #c0 #OMSPG.c0 =2)
!! (GLOBAL #c1 #OMSPG.c1 =2)
!! (GLOBAL #c2 #OMSPG.c2 =2)
!! (GLOBAL #pc #OMSPG.pc =2)
!! (GLOBAL #sp #OMSPG.sp =2)
!! (GLOBAL #sr #OMSPG.sr =2)
!! (GLOBAL #cg2 #OMSPG.cg2 =2)
!! (GLOBAL #r4 #OMSPG.r4 =2)
!! (GLOBAL #r15 #OMSPG.r15 =2)
!! (GLOBAL #rh #OMSPG.rh =2)
!! (GLOBAL #curImport #OMSPG.curImport INTEGER)
!! (GLOBAL #head #OMSPG.head =14)
!! (GLOBAL #tail #OMSPG.tail =14)
!! (GLOBAL #vectors #OMSPG.vectors =14)
!! (GLOBAL #body #OMSPG.body =14)
!! (GLOBAL #ccs #OMSPG.ccs =14)
!! (GLOBAL #nofsec #OMSPG.nofsec INTEGER)
!! (GLOBAL #mcode #OMSPG.mcode =10)
!! (GLOBAL #strings #OMSPG.strings =10)
!! (GLOBAL #varsize- #OMSPG.varsize INTEGER)
!! (GLOBAL #flagsItem #OMSPG.flagsItem =2)
!! (GLOBAL #PutDO0 #OMSPG.PutDO0 !19 (PROC 5 VOID
!!     (PARAM #op 12 BYTE)
!!     (VPARAM #src 16 =2)
!!     (VPARAM #dst 24 =2)))
!! (DEF !20 (FLEX CHAR))
!! (PROCEDURE #PrintItem 75 #OMSPG.PrintItem !21 (PROC 3 VOID
!!     (CPARAM #msg 12 =20)
!!     (CPARAM #x 20 =2)))
!! (PROCEDURE #SetFCI 87 #OMSPG.SetFCI !22 (PROC 3 VOID
!!     (VPARAM #x 12 =1)
!!     (PARAM #state 20 BOOLEAN)))
!! (PROCEDURE #CheckRTImport* 98 #OMSPG.CheckRTImport !23 (PROC 1 VOID
!!     (CPARAM #impid 12 =6)))
!! (PROCEDURE #RegisterRTproc* 106 #OMSPG.RegisterRTproc !24 (PROC 1 VOID
!!     (PARAM #p 12 =4)))
!! (PROCEDURE #SaveRegs 124 #OMSPG.SaveRegs !25 (PROC 1 VOID
!!     (PARAM #regs 12 SET))
!!   (LOCAL #n -4 INTEGER))
!! (PROCEDURE #RestoreRegs 132 #OMSPG.RestoreRegs !26 (PROC 1 VOID
!!     (PARAM #regs 12 SET))
!!   (LOCAL #n -4 INTEGER))
!! (PROCEDURE #EnableCode* 140 #OMSPG.EnableCode !27 (PROC 1 VOID
!!     (PARAM #e 12 BOOLEAN)))
!! (PROCEDURE #FixOne* 144 #OMSPG.FixOne !28 (PROC 1 VOID
!!     (PARAM #at 12 INTEGER)))
!! (PROCEDURE #FixLinkWith* 148 #OMSPG.FixLinkWith !29 (PROC 2 VOID
!!     (PARAM #L 12 INTEGER)
!!     (PARAM #dst 16 INTEGER))
!!   (LOCAL #L1 -4 INTEGER))
!! (PROCEDURE #FixLink* 159 #OMSPG.FixLink !30 (PROC 1 VOID
!!     (PARAM #L 12 INTEGER)))
!! (PROCEDURE #SetAllocationMode* 163 #OMSPG.SetAllocationMode !31 (PROC 1 VOID
!!     (PARAM #mode 12 BOOLEAN)))
!! (PROCEDURE #SetRIU* 170 #OMSPG.SetRIU !32 (PROC 1 VOID
!!     (PARAM #iu 12 SET)))
!! (PROCEDURE #SetPRU* 174 #OMSPG.SetPRU !33 (PROC 1 VOID
!!     (PARAM #pr 12 SET)))
!! (PROCEDURE #nextR 178 #OMSPG.nextR !34 (PROC 1 VOID
!!     (VPARAM #r 12 INTEGER)))
!! (PROCEDURE #LimitRegisters* 182 #OMSPG.LimitRegisters !35 (PROC 1 VOID
!!     (PARAM #savedregs 12 SET)))
!! (PROCEDURE #allocR* 187 #OMSPG.allocR !36 (PROC 1 VOID
!!     (PARAM #r 12 INTEGER)))
!! (PROCEDURE #AllocRP 192 #OMSPG.AllocRP !37 (PROC 1 INTEGER
!!     (PARAM #pr 12 INTEGER))
!!   (LOCAL #RH -4 INTEGER))
!! (PROCEDURE #AllocR* 204 #OMSPG.AllocR !38 (PROC 0 INTEGER))
!! (PROCEDURE #alloc 208 #OMSPG.alloc !39 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 INTEGER)))
!! (PROCEDURE #freeR* 213 #OMSPG.freeR !40 (PROC 1 VOID
!!     (PARAM #r 12 INTEGER)))
!! (PROCEDURE #freeSet 218 #OMSPG.freeSet !41 (PROC 1 VOID
!!     (PARAM #rs 12 SET))
!!   (LOCAL #r -4 INTEGER))
!! (PROCEDURE #free 225 #OMSPG.free !42 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #resultRegister* 229 #OMSPG.resultRegister !43 (PROC 2 VOID
!!     (VPARAM #res 12 =2)))
!! (PROCEDURE #funcResultRegister* 234 #OMSPG.funcResultRegister !44 (PROC 3 VOID
!!     (PARAM #t 12 =3)
!!     (VPARAM #res 16 =2)))
!! (PROCEDURE #CheckRegs* 239 #OMSPG.CheckRegs !45 (PROC 0 VOID))
!! (PROCEDURE #SetCC 245 #OMSPG.SetCC !46 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #n 20 INTEGER)))
!! (PROCEDURE #TypeChecked 249 #OMSPG.TypeChecked !47 (PROC 0 BOOLEAN))
!! (PROCEDURE #AssertionChecked* 253 #OMSPG.AssertionChecked !48 (PROC 0 BOOLEAN))
!! (PROCEDURE #GetFixup 257 #OMSPG.GetFixup !49 (PROC 6 =8
!!     (PARAM #s 12 =14)
!!     (PARAM #mno 16 BYTE)
!!     (PARAM #sno 20 INTEGER)
!!     (PARAM #offset 24 INTEGER)
!!     (PARAM #mnor 28 BYTE)
!!     (PARAM #snor 32 INTEGER))
!!   (LOCAL #f -4 =8))
!! (DEF !50 (FLEX CHAR))
!! (PROCEDURE #NewSection 271 #OMSPG.NewSection !51 (PROC 6 VOID
!!     (VPARAM #content 12 =10)
!!     (VPARAM #s 20 =14)
!!     (PARAM #seg 24 CHAR)
!!     (CPARAM #name 28 =50)))
!! (PROCEDURE #DeleteLastSection 280 #OMSPG.DeleteLastSection !52 (PROC 0 VOID)
!!   (LOCAL #nt -4 =14))
!! (PROCEDURE #GetSection 289 #OMSPG.GetSection !53 (PROC 1 =14
!!     (PARAM #no 12 INTEGER))
!!   (LOCAL #s -4 =14))
!! (PROCEDURE #EmitByte 297 #OMSPG.EmitByte !54 (PROC 2 VOID
!!     (PARAM #s 12 =14)
!!     (PARAM #b 16 BYTE)))
!! (PROCEDURE #EmitWord 301 #OMSPG.EmitWord !55 (PROC 2 VOID
!!     (VPARAM #s 12 =14)
!!     (PARAM #w 16 INTEGER)))
!! (PROCEDURE #AllocV* 305 #OMSPG.AllocV !56 (PROC 2 VOID
!!     (PARAM #o 12 =4)
!!     (VPARAM #lvs 16 INTEGER))
!!   (LOCAL #s -4 =14))
!! (PROCEDURE #AllocP* 315 #OMSPG.AllocP !57 (PROC 1 VOID
!!     (PARAM #o 12 =4))
!!   (LOCAL #s -4 =14))
!! (PROCEDURE #EndP* 321 #OMSPG.EndP !58 (PROC 1 VOID
!!     (PARAM #o 12 =4))
!!   (LOCAL #s -4 =14))
!! (PROCEDURE #UpdateChain 326 #OMSPG.UpdateChain !59 (PROC 4 INTEGER
!!     (PARAM #s 12 =14)
!!     (PARAM #pos 16 INTEGER)
!!     (PARAM #val 20 INTEGER)
!!     (CPARAM #x 24 =2))
!!   (LOCAL #res -4 INTEGER)
!!   (LOCAL #f -8 =8))
!! (PROCEDURE #GetOffset 337 #OMSPG.GetOffset !60 (PROC 2 INTEGER
!!     (VPARAM #x 12 =1))
!!   (LOCAL #res -4 INTEGER))
!! (PROCEDURE #CheckWritable* 347 #OMSPG.CheckWritable !61 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #MakeItem* 351 #OMSPG.MakeItem !62 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #y 20 =4)
!!     (PARAM #curlev 24 INTEGER)))
!! (PROCEDURE #loadOrdCond 367 #OMSPG.loadOrdCond !63 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 BYTE))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #pc1 -8 INTEGER)
!!   (LOCAL #t -52 =2))
!! (PROCEDURE #setRAO 379 #OMSPG.setRAO !64 (PROC 6 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #i 16 =2)
!!     (PARAM #dst 24 BOOLEAN)
!!     (VPARAM #nba 28 SET)
!!     (VPARAM #bwo 32 SET))
!!   (LOCAL #ti -44 =2)
!!   (LOCAL #tptr -45 BOOLEAN))
!! (PROCEDURE #PutSO 410 #OMSPG.PutSO !65 (PROC 3 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #sd 16 =2))
!!   (LOCAL #bw -4 SET)
!!   (LOCAL #nba -8 SET))
!! (PROCEDURE #PutJ 428 #OMSPG.PutJ !66 (PROC 2 VOID
!!     (PARAM #cond 12 BYTE)
!!     (PARAM #offset 16 INTEGER)))
!! (PROCEDURE #Trap 432 #OMSPG.Trap !67 (PROC 2 VOID
!!     (PARAM #cond 12 INTEGER)
!!     (PARAM #num 16 INTEGER))
!!   (LOCAL #t -44 =2))
!! (PROCEDURE #convertSize 441 #OMSPG.convertSize !68 (PROC 3 BOOLEAN
!!     (VPARAM #src 12 =2)
!!     (PARAM #t 20 =3))
!!   (LOCAL #tmp -1 BOOLEAN)
!!   (LOCAL #it -48 =2))
!! (PROCEDURE #PutDO 454 #OMSPG.PutDO !69 (PROC 5 VOID
!!     (PARAM #op 12 BYTE)
!!     (VPARAM #src 16 =2)
!!     (VPARAM #dst 24 =2))
!!   (LOCAL #bw -4 SET)
!!   (LOCAL #nba -8 SET)
!!   (LOCAL #tmp -9 BOOLEAN))
!! (PROCEDURE #NilCheck 462 #OMSPG.NilCheck !70 (PROC 1 VOID
!!     (PARAM #a 12 BYTE))
!!   (LOCAL #t -44 =2)
!!   (LOCAL #c -88 =2))
!! (PROCEDURE #load 473 #OMSPG.load !71 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 BYTE))
!!   (LOCAL #t -44 =2)
!!   (LOCAL #tptr -45 BOOLEAN))
!! (PROCEDURE #push 483 #OMSPG.push !72 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #dsize 20 INTEGER))
!!   (LOCAL #tmp -1 BOOLEAN))
!! (PROCEDURE #Adr* 491 #OMSPG.Adr !73 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -44 =2))
!! (PROCEDURE #loadAdr 529 #OMSPG.loadAdr !74 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 INTEGER)))
!! (PROCEDURE #pushAdr 533 #OMSPG.pushAdr !75 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #loadCond 537 #OMSPG.loadCond !76 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -44 =2))
!! (PROCEDURE #MakeTypTagAdr 549 #OMSPG.MakeTypTagAdr !77 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #T 20 =3)))
!! (PROCEDURE #loadTypTagAdr 554 #OMSPG.loadTypTagAdr !78 (PROC 2 BYTE
!!     (PARAM #T 12 =3)
!!     (PARAM #pr 16 INTEGER))
!!   (LOCAL #t -44 =2))
!! (PROCEDURE #pushTypTagAdr 560 #OMSPG.pushTypTagAdr !79 (PROC 1 VOID
!!     (PARAM #T 12 =3))
!!   (LOCAL #t -44 =2))
!! (PROCEDURE #MakeConstItem* 567 #OMSPG.MakeConstItem !80 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #typ 20 =3)
!!     (PARAM #val 24 INTEGER)))
!! (DEF !81 (FLEX CHAR))
!! (PROCEDURE #stringFound 571 #OMSPG.stringFound !82 (PROC 4 BOOLEAN
!!     (CPARAM #str 12 =81)
!!     (PARAM #len 20 INTEGER)
!!     (VPARAM #s 24 =14))
!!   (LOCAL #found -1 BOOLEAN)
!!   (LOCAL #i -8 INTEGER))
!! (PROCEDURE #Length* 586 #OMSPG.Length !83 (PROC 1 INTEGER
!!     (CPARAM #x 12 =2))
!!   (LOCAL #l -4 INTEGER))
!! (DEF !84 (FLEX CHAR))
!! (PROCEDURE #stringPut 596 #OMSPG.stringPut !85 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (CPARAM #str 20 =84)
!!     (PARAM #len 28 INTEGER))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #s -8 =14))
!! (DEF !86 (FLEX CHAR))
!! (PROCEDURE #stringPop 608 #OMSPG.stringPop !87 (PROC 3 VOID
!!     (CPARAM #x 12 =2)
!!     (VPARAM #xs 16 =86))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #s -8 =14))
!! (PROCEDURE #MakeStringItem* 617 #OMSPG.MakeStringItem !88 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #MakeConstObject* 621 #OMSPG.MakeConstObject !89 (PROC 1 VOID
!!     (VPARAM #obj 12 =4))
!!   (LOCAL #s -4 =14)
!!   (LOCAL #i -8 INTEGER))
!! (PROCEDURE #Field* 629 #OMSPG.Field !90 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #y 20 =4)))
!! (PROCEDURE #Index* 639 #OMSPG.Index !91 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #s -4 INTEGER)
!!   (LOCAL #lim -8 INTEGER)
!!   (LOCAL #t -52 =2)
!!   (LOCAL #typ -56 =3))
!! (PROCEDURE #DeRef* 685 #OMSPG.DeRef !92 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Q 695 #OMSPG.Q !93 (PROC 2 VOID
!!     (PARAM #T 12 =3)
!!     (PARAM #s 16 =14))
!!   (LOCAL #f -4 =8)
!!   (LOCAL #adr -8 INTEGER))
!! (PROCEDURE #BuildTD* 703 #OMSPG.BuildTD !94 (PROC 1 VOID
!!     (PARAM #T 12 =3))
!!   (LOCAL #k -4 INTEGER)
!!   (LOCAL #s -8 =14))
!! (PROCEDURE #TypeTest* 714 #OMSPG.TypeTest !95 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #T 20 =3)
!!     (PARAM #varpar 24 BOOLEAN)
!!     (PARAM #isguard 28 BOOLEAN))
!!   (LOCAL #t -44 =2)
!!   (LOCAL #pt -88 =2)
!!   (LOCAL #tt -132 =2))
!! (PROCEDURE #SetVector* 735 #OMSPG.SetVector !96 (PROC 2 VOID
!!     (PARAM #n 12 BYTE)
!!     (VPARAM #h 16 =4))
!!   (LOCAL #f -4 =8)
!!   (LOCAL #at -8 INTEGER))
!! (PROCEDURE #Not* 745 #OMSPG.Not !97 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -4 INTEGER))
!! (PROCEDURE #PutJFix 752 #OMSPG.PutJFix !98 (PROC 2 VOID
!!     (PARAM #cond 12 BYTE)
!!     (PARAM #adr 16 INTEGER))
!!   (LOCAL #offset -4 INTEGER))
!! (PROCEDURE #And1* 758 #OMSPG.And1 !99 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #And2* 765 #OMSPG.And2 !100 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Or1* 771 #OMSPG.Or1 !101 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Or2* 778 #OMSPG.Or2 !102 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Neg* 786 #OMSPG.Neg !103 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -44 =2))
!! (PROCEDURE #PrepCall* 800 #OMSPG.PrepCall !104 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #r 20 SET)
!!     (VPARAM #or 24 SET)
!!     (VPARAM #am 28 BOOLEAN)))
!! (PROCEDURE #getParSize 810 #OMSPG.getParSize !105 (PROC 1 INTEGER
!!     (PARAM #typ 12 =3))
!!   (LOCAL #par -4 =4)
!!   (LOCAL #n -8 INTEGER)
!!   (LOCAL #size -12 INTEGER))
!! (PROCEDURE #Call* 824 #OMSPG.Call !106 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #r 20 SET)
!!     (PARAM #or 24 SET)
!!     (PARAM #am 28 BOOLEAN))
!!   (LOCAL #rr -44 =2)
!!   (LOCAL #t -88 =2)
!!   (LOCAL #s -92 INTEGER))
!! (PROCEDURE #AddOp* 846 #OMSPG.AddOp !107 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #tmp -1 BOOLEAN))
!! (PROCEDURE #MulOp* 865 #OMSPG.MulOp !108 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #p -44 =2)
!!   (LOCAL #x0 -88 =2)
!!   (LOCAL #y0 -132 =2)
!!   (LOCAL #r -136 SET)
!!   (LOCAL #or -140 SET)
!!   (LOCAL #pau -141 BOOLEAN))
!! (PROCEDURE #DivOp* 880 #OMSPG.DivOp !109 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #t -44 =2)
!!   (LOCAL #p -88 =2)
!!   (LOCAL #x0 -132 =2)
!!   (LOCAL #y0 -176 =2)
!!   (LOCAL #r -180 SET)
!!   (LOCAL #or -184 SET)
!!   (LOCAL #pau -185 BOOLEAN)
!!   (LOCAL #e -192 INTEGER))
!! (PROCEDURE #fix 908 #OMSPG.fix !110 (PROC 2 VOID
!!     (PARAM #at 12 INTEGER)
!!     (PARAM #with 16 INTEGER)))
!! (PROCEDURE #shift 913 #OMSPG.shift !111 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #pb -8 INTEGER)
!!   (LOCAL #pf -12 INTEGER)
!!   (LOCAL #t -56 =2))
!! (PROCEDURE #Rla* 925 #OMSPG.Rla !112 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Rra* 929 #OMSPG.Rra !113 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #StringOp* 934 #OMSPG.StringOp !114 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #xs -1024 !115 (ARRAY 1024 CHAR))
!!   (LOCAL #ys -2048 =115)
!!   (LOCAL #ix -2052 INTEGER)
!!   (LOCAL #iy -2056 INTEGER))
!! (PROCEDURE #Singleton* 949 #OMSPG.Singleton !116 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #y -44 =2))
!! (PROCEDURE #Set* 954 #OMSPG.Set !117 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #p -44 =2)
!!   (LOCAL #x0 -88 =2)
!!   (LOCAL #y0 -132 =2)
!!   (LOCAL #r -136 SET)
!!   (LOCAL #or -140 SET)
!!   (LOCAL #pau -141 BOOLEAN))
!! (PROCEDURE #In* 966 #OMSPG.In !118 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #t -44 =2)
!!   (LOCAL #pc0 -48 INTEGER)
!!   (LOCAL #pc1 -52 INTEGER))
!! (PROCEDURE #SetOp* 979 #OMSPG.SetOp !119 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #xset -4 SET)
!!   (LOCAL #yset -8 SET))
!! (PROCEDURE #AdjustSize 1002 #OMSPG.AdjustSize !120 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #st -4 =3))
!! (PROCEDURE #IntCompare* 1008 #OMSPG.IntCompare !121 (PROC 6 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #z 28 =2)))
!! (PROCEDURE #IntRelation* 1015 #OMSPG.IntRelation !122 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2)))
!! (PROCEDURE #StringRelation* 1035 #OMSPG.StringRelation !123 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x0 16 =2)
!!     (VPARAM #y0 24 =2))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #tbf0 -8 INTEGER)
!!   (LOCAL #x -52 =2)
!!   (LOCAL #y -96 =2))
!! (PROCEDURE #StrToChar* 1054 #OMSPG.StrToChar !124 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #sc -2 !125 (ARRAY 2 CHAR)))
!! (PROCEDURE #StoreConstInt 1061 #OMSPG.StoreConstInt !126 (PROC 3 VOID
!!     (PARAM #adr 12 INTEGER)
!!     (PARAM #size 16 INTEGER)
!!     (PARAM #val 20 INTEGER))
!!   (LOCAL #i -4 INTEGER))
!! (PROCEDURE #Store* 1069 #OMSPG.Store !127 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #adr -4 INTEGER)
!!   (LOCAL #val -8 INTEGER)
!!   (LOCAL #s -12 =14))
!! (PROCEDURE #distance 1085 #OMSPG.distance !128 (PROC 4 BOOLEAN
!!     (CPARAM #x 12 =2)
!!     (CPARAM #y 16 =2)
!!     (VPARAM #d 20 =2))
!!   (LOCAL #res -1 BOOLEAN)
!!   (LOCAL #ox -8 INTEGER)
!!   (LOCAL #oy -12 INTEGER))
!! (PROCEDURE #Dec 1102 #OMSPG.Dec !129 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #v 20 INTEGER)))
!! (PROCEDURE #StoreStruct* 1107 #OMSPG.StoreStruct !130 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #s -4 INTEGER)
!!   (LOCAL #pc0 -8 INTEGER)
!!   (LOCAL #pc1 -12 INTEGER)
!!   (LOCAL #d -56 =2)
!!   (LOCAL #t -100 =2)
!!   (LOCAL #ti -144 =2)
!!   (LOCAL #oneReg -145 BOOLEAN)
!!   (LOCAL #xtyp -152 =3)
!!   (LOCAL #ytyp -156 =3))
!! (PROCEDURE #CopyString* 1149 #OMSPG.CopyString !131 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #len -4 INTEGER)
!!   (LOCAL #pc0 -8 INTEGER)
!!   (LOCAL #i -12 INTEGER)
!!   (LOCAL #dadr -16 INTEGER)
!!   (LOCAL #sadr -20 INTEGER)
!!   (LOCAL #t -64 =2)
!!   (LOCAL #ti -108 =2)
!!   (LOCAL #ys -1132 !132 (ARRAY 1024 CHAR))
!!   (LOCAL #s -1136 =14))
!! (PROCEDURE #OpenArrayParam* 1181 #OMSPG.OpenArrayParam !133 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4))
!!   (LOCAL #t -44 =2)
!!   (LOCAL #ti -88 =2))
!! (PROCEDURE #VarParam* 1196 #OMSPG.VarParam !134 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4))
!!   (LOCAL #xmd -4 INTEGER)
!!   (LOCAL #t -48 =2)
!!   (LOCAL #ti -92 =2)
!!   (LOCAL #xtyp -96 =3))
!! (PROCEDURE #ValueParam* 1229 #OMSPG.ValueParam !135 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4)))
!! (PROCEDURE #StringParam* 1233 #OMSPG.StringParam !136 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4))
!!   (LOCAL #t -44 =2))
!! (PROCEDURE #For0* 1245 #OMSPG.For0 !137 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #For1* 1249 #OMSPG.For1 !138 (PROC 9 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #z 28 =2)
!!     (VPARAM #w 36 =2)
!!     (VPARAM #L 44 INTEGER)))
!! (PROCEDURE #For2* 1258 #OMSPG.For2 !139 (PROC 6 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #w 28 =2)))
!! (PROCEDURE #Here* 1265 #OMSPG.Here !140 (PROC 0 INTEGER))
!! (PROCEDURE #FJump* 1270 #OMSPG.FJump !141 (PROC 1 VOID
!!     (VPARAM #L 12 INTEGER)))
!! (PROCEDURE #CFJump* 1274 #OMSPG.CFJump !142 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #BJump* 1281 #OMSPG.BJump !143 (PROC 1 VOID
!!     (PARAM #L 12 INTEGER)))
!! (PROCEDURE #CBJump* 1285 #OMSPG.CBJump !144 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #L 20 INTEGER)))
!! (PROCEDURE #fixup* 1292 #OMSPG.fixup !145 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Enter* 1296 #OMSPG.Enter !146 (PROC 3 VOID
!!     (PARAM #size 12 INTEGER)
!!     (PARAM #int 16 BOOLEAN)
!!     (PARAM #savedregs 20 SET))
!!   (LOCAL #t -44 =2)
!!   (LOCAL #tsp -88 =2))
!! (PROCEDURE #Return* 1308 #OMSPG.Return !147 (PROC 6 VOID
!!     (PARAM #form 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (PARAM #size 24 INTEGER)
!!     (PARAM #int 28 BOOLEAN)
!!     (PARAM #savedregs 32 SET))
!!   (LOCAL #t -44 =2)
!!   (LOCAL #rr -88 =2))
!! (PROCEDURE #Increment* 1326 #OMSPG.Increment !148 (PROC 5 VOID
!!     (PARAM #upordown 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #op -1 BYTE))
!! (PROCEDURE #Include* 1335 #OMSPG.Include !149 (PROC 5 VOID
!!     (PARAM #inorex 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #op -1 BYTE)
!!   (LOCAL #z -48 =2)
!!   (LOCAL #t -92 =2))
!! (PROCEDURE #Assert* 1343 #OMSPG.Assert !150 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #cond -4 INTEGER)
!!   (LOCAL #pc0 -8 INTEGER))
!! (PROCEDURE #Copy* 1358 #OMSPG.Copy !151 (PROC 6 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #z 28 =2))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #pc1 -8 INTEGER)
!!   (LOCAL #t -52 =2)
!!   (LOCAL #d -96 =2)
!!   (LOCAL #oneReg -97 BOOLEAN))
!! (PROCEDURE #LogicalSR* 1378 #OMSPG.LogicalSR !152 (PROC 3 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2))
!!   (LOCAL #op -1 BYTE)
!!   (LOCAL #t -48 =2))
!! (PROCEDURE #LogicalSROnExit* 1385 #OMSPG.LogicalSROnExit !153 (PROC 3 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2))
!!   (LOCAL #op -1 BYTE)
!!   (LOCAL #t -48 =2))
!! (PROCEDURE #Abs* 1394 #OMSPG.Abs !154 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #pc -4 INTEGER)
!!   (LOCAL #t -48 =2))
!! (PROCEDURE #Odd* 1403 #OMSPG.Odd !155 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -44 =2))
!! (PROCEDURE #Ord* 1408 #OMSPG.Ord !156 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Len* 1412 #OMSPG.Len !157 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #ClrC* 1424 #OMSPG.ClrC !158 (PROC 0 VOID))
!! (PROCEDURE #Nop* 1428 #OMSPG.Nop !159 (PROC 0 VOID)
!!   (LOCAL #a -44 =2)
!!   (LOCAL #b -88 =2))
!! (PROCEDURE #Swpb* 1433 #OMSPG.Swpb !160 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Shift* 1437 #OMSPG.Shift !161 (PROC 5 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2)))
!! (PROCEDURE #Rotate* 1444 #OMSPG.Rotate !162 (PROC 3 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2)))
!! (PROCEDURE #Logical* 1448 #OMSPG.Logical !163 (PROC 5 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #op -1 BYTE))
!! (PROCEDURE #ADC* 1455 #OMSPG.ADC !164 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #SBC* 1459 #OMSPG.SBC !165 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Bit* 1463 #OMSPG.Bit !166 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Condition* 1468 #OMSPG.Condition !167 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Val* 1472 #OMSPG.Val !168 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #t 20 =3)))
!! (PROCEDURE #Open* 1479 #OMSPG.Open !169 (PROC 0 VOID)
!!   (LOCAL #i -4 INTEGER))
!! (PROCEDURE #Header* 1494 #OMSPG.Header !170 (PROC 0 VOID))
!! (DEF ?171 #POFiles 6 #Rider (RECORD #POFiles.Rider 12 VOID
!!     (FIELD #eof* 0 BOOLEAN)
!!     (FIELD #res* 4 INTEGER)
!!     (FIELD #base 8 ?172 #POFiles 1 #File (POINTER))))
!! (PROCEDURE #WriteWord 1499 #OMSPG.WriteWord !173 (PROC 3 VOID
!!     (VPARAM #R 12 =171)
!!     (PARAM #w 20 INTEGER)))
!! (TARGET =172 ?174 #POFiles 2 #FileDesc (RECORD #POFiles.FileDesc 68 VOID
!!     (FIELD #file 0 ?175 #Files 1 #File (POINTER))
!!     (FIELD #tmpName 4 ?176 #POFiles 4 ANON (ARRAY 32 CHAR))
!!     (FIELD #name 36 =176)))
!! (TARGET =175 ?177 #Files 2 #FileDesc (RECORD #Files.FileDesc 8 VOID
!!     (FIELD #file- 0 SYSTEM.LONGPTR)))
!! (PROCEDURE #WriteSection 1503 #OMSPG.WriteSection !178 (PROC 3 VOID
!!     (VPARAM #R 12 =171)
!!     (PARAM #s 20 =14))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #f -8 =8))
!! (PROCEDURE #Close* 1519 #OMSPG.Close !179 (PROC 4 VOID
!!     (VPARAM #modid 12 =6)
!!     (PARAM #key 16 INTEGER)
!!     (PARAM #nofent 20 INTEGER)
!!     (PARAM #codeseg 24 BYTE))
!!   (LOCAL #obj -4 =4)
!!   (LOCAL #s -8 =14)
!!   (LOCAL #nofimps -12 INTEGER)
!!   (LOCAL #name -44 =6)
!!   (LOCAL #F -48 =172)
!!   (LOCAL #R -60 =171))
!! (PROCEDURE #initConst 1563 #OMSPG.initConst !180 (PROC 3 VOID
!!     (VPARAM #c 12 =2)
!!     (PARAM #v 20 INTEGER)))
!! (PROCEDURE #initReg 1569 #OMSPG.initReg !181 (PROC 3 VOID
!!     (VPARAM #c 12 =2)
!!     (PARAM #r 20 BYTE)))
!! (CHKSUM 0x1f97ef6a)
!! 
MODULE OMSPG 0x1f97ef6a 1583
IMPORT POFiles 0x1834a231
IMPORT OMSPA 0x18385547
IMPORT OMSPS 0x669fb75e
IMPORT OMSPB 0x44d6da02
ENDHDR

PROC OMSPG.PrintItem 0 5 0x00500001
!   PROCEDURE PrintItem(msg: ARRAY OF CHAR; x: Item);
LINE 75
!   BEGIN S.DebugString("PrintItem", msg);
LINE 76
LDLW 16
LDLW 12
CONST 10
GLOBAL OMSPG.%1
GLOBAL OMSPS.DebugString
CALL 4
!     IF x.obj # NIL THEN S.DebugString("name", x.obj.name); END;
LINE 77
LDLW 20
LDNW 16
JEQZ L79
LDLW 20
LDNW 16
NCHECK 77
CONST 24
OFFSET
CONST 32
SWAP
CONST 5
GLOBAL OMSPG.%2
GLOBAL OMSPS.DebugString
CALL 4
LABEL L79
!     S.DebugHex("mode", x.mode); S.DebugHex("reg", x.reg); 
LINE 80
LDLW 20
LDNW 8
CONST 5
GLOBAL OMSPG.%3
GLOBAL OMSPS.DebugHex
CALL 3
LDLW 20
LOADC
CONST 4
GLOBAL OMSPG.%4
GLOBAL OMSPS.DebugHex
CALL 3
!     S.DebugHex("a", x.a); S.DebugHex("b", x.b); S.DebugHex("c", x.c);
LINE 81
LDLW 20
LDNW 20
CONST 2
GLOBAL OMSPG.%74
GLOBAL OMSPS.DebugHex
CALL 3
LDLW 20
LDNW 24
CONST 2
GLOBAL OMSPG.%75
GLOBAL OMSPS.DebugHex
CALL 3
LDLW 20
LDNW 28
CONST 2
GLOBAL OMSPG.%76
GLOBAL OMSPS.DebugHex
CALL 3
!     S.DebugHex("size", x.type.size);
LINE 82
LDLW 20
LDNW 12
NCHECK 82
LDNW 32
CONST 5
GLOBAL OMSPG.%5
GLOBAL OMSPS.DebugHex
CALL 3
!     S.DebugHex("ladr", ORD(x.ladr)); S.DebugHex("ptr", ORD(x.ptr));
LINE 83
LDLW 20
CONST 42
LDIC
CONST 5
GLOBAL OMSPG.%6
GLOBAL OMSPS.DebugHex
CALL 3
LDLW 20
CONST 43
LDIC
CONST 4
GLOBAL OMSPG.%7
GLOBAL OMSPS.DebugHex
CALL 3
!     S.DebugHex("tmp", ORD(x.tmp)); S.DebugHex("rdo", ORD(x.rdo))
LINE 84
LDLW 20
CONST 41
LDIC
CONST 4
GLOBAL OMSPG.%8
GLOBAL OMSPS.DebugHex
CALL 3
LDLW 20
CONST 40
LDIC
CONST 4
GLOBAL OMSPG.%9
GLOBAL OMSPS.DebugHex
CALL 3
RETURN
END

PROC OMSPG.SetFCI 0 4 0x00100001
!   PROCEDURE SetFCI(VAR x: A.Item; state: BOOLEAN);
LINE 87
!     CASE x OF
LINE 89
LOCAL 16
DUP 0
LOADW
DUP 0
LDNW 4
CONST 1
JGEQ L86
POP 1
JUMP L81
LABEL L86
LDNW 8
LDNW 4
GLOBAL OMSPG.Item
JNEQ L81
POP 1
!         IF state THEN flagsItem.obj := x.obj; flagsItem.b := x.b; flagsItem.a := x.a
LINE 91
LDLC 20
JEQZ L85
LDLW 12
LDNW 16
GLOBAL OMSPG.flagsItem
STNW 16
LDLW 12
LDNW 24
GLOBAL OMSPG.flagsItem
STNW 24
LDLW 12
LDNW 20
GLOBAL OMSPG.flagsItem
STNW 20
RETURN
LABEL L85
!         ELSE flagsItem.obj := NIL
LINE 92
CONST 0
GLOBAL OMSPG.flagsItem
STNW 16
RETURN
LABEL L81
DUP 0
LOADW
DUP 0
LDNW 4
JGEQZ L89
POP 1
JUMP L87
LABEL L89
LDNW 8
LOADW
GLOBAL OMSPA.Item
JNEQ L87
POP 1
!     | A.Item: flagsItem.obj := NIL
LINE 94
CONST 0
GLOBAL OMSPG.flagsItem
STNW 16
RETURN
LABEL L87
POP 1
ERROR E_CASE 89
RETURN
END

PROC OMSPG.CheckRTImport 0 5 0x00100001
!   PROCEDURE CheckRTImport*(impid: S.Ident);
LINE 98
!     IF impid = "Traps" THEN curImport := 1
LINE 100
CONST 6
GLOBAL OMSPG.%10
CONST 32
LDLW 12
GLOBAL COMPARE
CALLW 4
JNEQZ L92
CONST 1
STGW OMSPG.curImport
RETURN
LABEL L92
!     ELSIF impid = "Arith" THEN curImport := 2
LINE 101
CONST 6
GLOBAL OMSPG.%11
CONST 32
LDLW 12
GLOBAL COMPARE
CALLW 4
JNEQZ L94
CONST 2
STGW OMSPG.curImport
RETURN
LABEL L94
!     ELSE curImport := 0
LINE 102
CONST 0
STGW OMSPG.curImport
RETURN
END

PROC OMSPG.RegisterRTproc 0 5 0x00100001
!   PROCEDURE RegisterRTproc*(p: B.Object);
LINE 106
!   BEGIN IF curImport = 1 THEN
LINE 107
LDGW OMSPG.curImport
CONST 1
JNEQ L97
!       IF p.name = "ArrayOutOfRange" THEN traps[1] := p
LINE 108
CONST 16
GLOBAL OMSPG.%12
LDLW 12
NCHECK 108
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L100
LDLW 12
GLOBAL OMSPG.traps
STNW 4
RETURN
LABEL L100
!       ELSIF p.name = "TypeGuardFailure" THEN traps[2] := p
LINE 109
CONST 17
GLOBAL OMSPG.%13
LDLW 12
NCHECK 109
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L102
LDLW 12
GLOBAL OMSPG.traps
STNW 8
RETURN
LABEL L102
!       ELSIF p.name = "CopyOverflow" THEN traps[3] := p
LINE 110
CONST 13
GLOBAL OMSPG.%14
LDLW 12
NCHECK 110
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L104
LDLW 12
GLOBAL OMSPG.traps
STNW 12
RETURN
LABEL L104
!       ELSIF p.name = "AccessViaNILPointer" THEN traps[4] := p
LINE 111
CONST 20
GLOBAL OMSPG.%15
LDLW 12
NCHECK 111
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L106
LDLW 12
GLOBAL OMSPG.traps
STNW 16
RETURN
LABEL L106
!       ELSIF p.name = "IllegalProcedureCall" THEN traps[5] := p
LINE 112
CONST 21
GLOBAL OMSPG.%16
LDLW 12
NCHECK 112
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L108
LDLW 12
GLOBAL OMSPG.traps
STNW 20
RETURN
LABEL L108
!       ELSIF p.name = "DivisionByZero" THEN traps[6] := p
LINE 113
CONST 15
GLOBAL OMSPG.%17
LDLW 12
NCHECK 113
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L110
LDLW 12
GLOBAL OMSPG.traps
STNW 24
RETURN
LABEL L110
!       ELSIF p.name = "AssertionViolated" THEN traps[7] := p
LINE 114
CONST 18
GLOBAL OMSPG.%18
LDLW 12
NCHECK 114
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L114
LDLW 12
GLOBAL OMSPG.traps
STNW 28
RETURN
LABEL L97
!     ELSIF curImport = 2 THEN
LINE 116
LDGW OMSPG.curImport
CONST 2
JNEQ L114
!       IF p.name = "mul16" THEN arith[0] := p
LINE 117
CONST 6
GLOBAL OMSPG.%19
LDLW 12
NCHECK 117
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L117
LDLW 12
STGW OMSPG.arith
RETURN
LABEL L117
!       ELSIF p.name = "divmod16" THEN arith[1] := p
LINE 118
CONST 9
GLOBAL OMSPG.%20
LDLW 12
NCHECK 118
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L119
LDLW 12
GLOBAL OMSPG.arith
STNW 4
RETURN
LABEL L119
!       ELSIF p.name = "set" THEN arith[2] := p
LINE 119
CONST 4
GLOBAL OMSPG.%21
LDLW 12
NCHECK 119
CONST 24
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L114
LDLW 12
GLOBAL OMSPG.arith
STNW 8
LABEL L114
RETURN
END

PROC OMSPG.SaveRegs 4 4 0
!   PROCEDURE SaveRegs(regs: SET);
LINE 124
!     IF regs # {} THEN
LINE 127
LDLW 12
JEQZ L124
!       n := A.PushRegs(mcode, regs); INC(frame, n*WordSize)
LINE 128
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PushRegs
CALLW 3
STLW -4
GLOBAL OMSPG.frame
DUP 0
LOADW
LDLW -4
CONST 2
TIMES
PLUS
SWAP
STOREW
LABEL L124
RETURN
END

PROC OMSPG.RestoreRegs 4 4 0
!   PROCEDURE RestoreRegs(regs: SET);
LINE 132
!     IF regs # {} THEN
LINE 135
LDLW 12
JEQZ L127
!       n := A.PopRegs(mcode, regs); DEC(frame, n*WordSize)
LINE 136
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PopRegs
CALLW 3
STLW -4
GLOBAL OMSPG.frame
DUP 0
LOADW
LDLW -4
CONST 2
TIMES
MINUS
SWAP
STOREW
LABEL L127
RETURN
END

PROC OMSPG.EnableCode 0 2 0
!   PROCEDURE EnableCode*(e: BOOLEAN);
LINE 140
!   BEGIN A.SetEnabled(e)
LINE 141
LDLC 12
ALIGNC
GLOBAL OMSPA.SetEnabled
CALL 1
RETURN
END

PROC OMSPG.FixOne 0 4 0
!   PROCEDURE FixOne*(at: INTEGER);
LINE 144
!   BEGIN A.FixOne(mcode, at)
LINE 145
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixOne
CALL 3
RETURN
END

PROC OMSPG.FixLinkWith 4 5 0
!   PROCEDURE FixLinkWith*(L, dst: INTEGER);
LINE 148
!     IF A.enabled THEN
LINE 151
LDGC OMSPA.enabled
JEQZ L130
LABEL L131
!       WHILE L # 0 DO L1 := L - (mcode.code[L+1] MOD ORD({2})*ORD({8}) + mcode.code[L])*2;
LINE 152
LDLW 12
JEQZ L130
LDLW 12
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW 12
INC
CONST 32000
BOUND 152
OFFSET
LOADC
CONST 4
MOD
CONST 256
TIMES
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW 12
CONST 32000
BOUND 152
OFFSET
LOADC
PLUS
CONST 2
TIMES
MINUS
STLW -4
!         A.fix(mcode, L, dst-L-2);
LINE 153
LDLW 16
LDLW 12
MINUS
CONST 2
MINUS
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.fix
CALL 4
!         IF L = L1 THEN L := 0 (*force exit*) ELSE L := L1 END;
LINE 154
LDLW 12
LDLW -4
JNEQ L136
CONST 0
STLW 12
JUMP L131
LABEL L136
LDLW -4
STLW 12
JUMP L131
LABEL L130
RETURN
END

PROC OMSPG.FixLink 0 3 0
!   PROCEDURE FixLink*(L: INTEGER);
LINE 159
!   BEGIN FixLinkWith(L, mcode.pc); flagsItem.obj := NIL
LINE 160
LDGW OMSPG.mcode
LDLW 12
GLOBAL OMSPG.FixLinkWith
CALL 2
CONST 0
GLOBAL OMSPG.flagsItem
STNW 16
RETURN
END

PROC OMSPG.SetAllocationMode 0 2 0
!   PROCEDURE SetAllocationMode*(mode: BOOLEAN);
LINE 163
!   BEGIN AllocUp := mode;
LINE 164
LDLC 12
STGC OMSPG.AllocUp
!     IF AllocUp THEN RL := 16;  RB := A.CG2 + 1
LINE 165
LDGC OMSPG.AllocUp
JEQZ L139
CONST 16
STGW OMSPG.RL
CONST 4
STGW OMSPG.RB
RETURN
LABEL L139
!     ELSE RL := A.CG2;  RB := 15
LINE 166
CONST 3
STGW OMSPG.RL
CONST 15
STGW OMSPG.RB
RETURN
END

PROC OMSPG.SetRIU 0 2 0
!   PROCEDURE SetRIU*(iu: SET);
LINE 170
!   BEGIN RIU := iu
LINE 171
LDLW 12
STGW OMSPG.RIU
RETURN
END

PROC OMSPG.SetPRU 0 2 0
!   PROCEDURE SetPRU*(pr: SET);
LINE 174
!   BEGIN PRU := pr
LINE 175
LDLW 12
STGW OMSPG.PRU
RETURN
END

PROC OMSPG.nextR 0 3 0x00100001
!   PROCEDURE nextR(VAR r: INTEGER);
LINE 178
!   BEGIN IF AllocUp THEN INC(r) ELSE DEC(r) END
LINE 179
LDGC OMSPG.AllocUp
JEQZ L142
LDLW 12
DUP 0
LOADW
INC
SWAP
STOREW
RETURN
LABEL L142
LDLW 12
DUP 0
LOADW
DEC
SWAP
STOREW
RETURN
END

PROC OMSPG.LimitRegisters 0 3 0
!   PROCEDURE LimitRegisters*(savedregs: SET);
LINE 182
!   BEGIN IF savedregs * {0..3, 16..31} # {} THEN S.Mark("registers out of range"); savedregs := {4..15} END;
LINE 183
LDLW 12
CONST -65521
BITAND
JEQZ L145
CONST 23
GLOBAL OMSPG.%22
GLOBAL OMSPS.Mark
CALL 2
CONST 65520
STLW 12
LABEL L145
!     RIU :=  RIU + ({0..15} - savedregs) (*mark non saved registers as not available*)
LINE 184
LDGW OMSPG.RIU
LDLW 12
BITNOT
CONST 65535
BITAND
BITOR
STGW OMSPG.RIU
RETURN
END

PROC OMSPG.allocR 0 5 0
!   PROCEDURE allocR*(r: INTEGER);
LINE 187
!     IF RIU*{r} = {} THEN INCL(RIU, r); INCL(PRU, r) ELSE S.Mark("reg already allocated") END
LINE 189
LDGW OMSPG.RIU
CONST 1
LDLW 12
CONST 32
BOUND 189
LSL
BITAND
JNEQZ L148
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLW 12
CONST 32
BOUND 189
LSL
BITOR
SWAP
STOREW
GLOBAL OMSPG.PRU
DUP 0
LOADW
CONST 1
LDLW 12
CONST 32
BOUND 189
LSL
BITOR
SWAP
STOREW
RETURN
LABEL L148
CONST 22
GLOBAL OMSPG.%23
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.AllocRP 4 4 0
!   PROCEDURE AllocRP(pr: INTEGER): INTEGER;
LINE 192
!     IF pr # 0FFH THEN RH := pr
LINE 195
LDLW 12
CONST 255
JEQ L155
LDLW 12
STLW -4
JUMP L152
LABEL L155
!     ELSE RH := RB; WHILE (RIU*{RH} # {}) & (RH # RL) DO nextR(RH) END
LINE 196
LDGW OMSPG.RB
STLW -4
LABEL L150
LDGW OMSPG.RIU
CONST 1
LDLW -4
CONST 32
BOUND 196
LSL
BITAND
JEQZ L152
LDLW -4
LDGW OMSPG.RL
JEQ L152
LOCAL -4
GLOBAL OMSPG.nextR
CALL 1
JUMP L150
LABEL L152
!     IF RH = RL THEN S.Mark("register stack overflow"); RH := 8 END;
LINE 198
LDLW -4
LDGW OMSPG.RL
JNEQ L158
CONST 24
GLOBAL OMSPG.%24
GLOBAL OMSPS.Mark
CALL 2
CONST 8
STLW -4
LABEL L158
!     allocR(RH); rh.reg := RH
LINE 199
LDLW -4
GLOBAL OMSPG.allocR
CALL 1
LDLW -4
CONVNC
STGC OMSPG.rh
!     RETURN RH
LINE 201
LDLW -4
RETURN
END

PROC OMSPG.AllocR 0 2 0
!   PROCEDURE AllocR*(): INTEGER;
LINE 204
!     RETURN AllocRP(0FFH)
LINE 205
CONST 255
GLOBAL OMSPG.AllocRP
CALLW 1
RETURN
END

PROC OMSPG.alloc 0 3 0x00100001
!   PROCEDURE alloc(VAR x: Item; pr: INTEGER); (*allocate a temporary register to the item*)
LINE 208
!     x.reg := AllocRP(pr); x.am := A.Register; x.ofs := 0; x.tmp := TRUE
LINE 210
LDLW 20
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
LDLW 12
STOREC
CONST 0
LDLW 12
CONST 1
STIC
CONST 0
LDLW 12
STNW 4
CONST 1
LDLW 12
CONST 41
STIC
RETURN
END

PROC OMSPG.freeR 0 5 0
!   PROCEDURE freeR*(r: INTEGER);
LINE 213
!     IF r IN RIU THEN EXCL(RIU, r) ELSE S.Mark("reg wild free"); ASSERT(FALSE) END
LINE 215
LDGW OMSPG.RIU
CONST 1
LDLW 12
CONST 32
BOUND 215
LSL
BITAND
JEQZ L163
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLW 12
CONST 32
BOUND 215
LSL
BITNOT
BITAND
SWAP
STOREW
RETURN
LABEL L163
CONST 14
GLOBAL OMSPG.%25
GLOBAL OMSPS.Mark
CALL 2
CONST 0
CONST 215
GLOBAL EASSERT
CALL 2
RETURN
END

PROC OMSPG.freeSet 4 4 0
!   PROCEDURE freeSet(rs: SET);
LINE 218
!   BEGIN IF rs # {} THEN
LINE 220
LDLW 12
JEQZ L166
!     FOR r := 0 TO 15 DO IF rs*{r} # {} THEN freeR(r) END END
LINE 221
CONST 0
STLW -4
LABEL L167
LDLW -4
CONST 15
JGT L166
LDLW 12
CONST 1
LDLW -4
CONST 32
BOUND 221
LSL
BITAND
JEQZ L171
LDLW -4
GLOBAL OMSPG.freeR
CALL 1
LABEL L171
INCL -4
JUMP L167
LABEL L166
RETURN
END

PROC OMSPG.free 0 3 0x00100001
!   PROCEDURE free(VAR x: Item);
LINE 225
!   BEGIN IF x.tmp THEN freeR(x.reg); x.tmp := FALSE END
LINE 226
LDLW 12
CONST 41
LDIC
JEQZ L174
LDLW 12
LOADC
GLOBAL OMSPG.freeR
CALL 1
CONST 0
LDLW 12
CONST 41
STIC
LABEL L174
RETURN
END

PROC OMSPG.resultRegister 0 3 0x00100001
!   PROCEDURE resultRegister*(VAR res: Item);
LINE 229
!     IF AllocUp THEN res := r4 ELSE res := r15 END
LINE 231
LDGC OMSPG.AllocUp
JEQZ L178
LDLW 16
GLOBAL OMSPG.Item
JEQ L179
ERROR E_ASSIGN 231
LABEL L179
LDLW 12
GLOBAL OMSPG.r4
CONST 44
FIXCOPY
RETURN
LABEL L178
LDLW 16
GLOBAL OMSPG.Item
JEQ L176
ERROR E_ASSIGN 231
LABEL L176
LDLW 12
GLOBAL OMSPG.r15
CONST 44
FIXCOPY
RETURN
END

PROC OMSPG.funcResultRegister 0 3 0x00300001
!   PROCEDURE funcResultRegister*(t: B.Type; VAR res: Item);
LINE 234
!     IF t.leaf THEN res := r4 ELSE res := r15 END
LINE 236
LDLW 12
NCHECK 236
CONST 36
LDIC
JEQZ L183
LDLW 20
GLOBAL OMSPG.Item
JEQ L184
ERROR E_ASSIGN 236
LABEL L184
LDLW 16
GLOBAL OMSPG.r4
CONST 44
FIXCOPY
RETURN
LABEL L183
LDLW 20
GLOBAL OMSPG.Item
JEQ L181
ERROR E_ASSIGN 236
LABEL L181
LDLW 16
GLOBAL OMSPG.r15
CONST 44
FIXCOPY
RETURN
END

PROC OMSPG.CheckRegs 0 3 0
!   PROCEDURE CheckRegs*;
LINE 239
!   BEGIN IF RIU # VRS THEN S.Mark("Reg Stack"); RIU := VRS END;
LINE 240
LDGW OMSPG.RIU
LDGW OMSPG.VRS
JEQ L187
CONST 10
GLOBAL OMSPG.%26
GLOBAL OMSPS.Mark
CALL 2
LDGW OMSPG.VRS
STGW OMSPG.RIU
LABEL L187
!     IF mcode.pc >= A.maxCode - 40 THEN S.Mark("program too long") END ;
LINE 241
LDGW OMSPG.mcode
CONST 31960
JLT L190
CONST 17
GLOBAL OMSPG.%27
GLOBAL OMSPS.Mark
CALL 2
LABEL L190
!     IF frame # vframe THEN S.Mark("frame error"); frame := vframe END
LINE 242
LDGW OMSPG.frame
LDGW OMSPG.vframe
JEQ L193
CONST 12
GLOBAL OMSPG.%28
GLOBAL OMSPS.Mark
CALL 2
LDGW OMSPG.vframe
STGW OMSPG.frame
LABEL L193
RETURN
END

PROC OMSPG.SetCC 0 3 0x00100001
!   PROCEDURE SetCC(VAR x: Item; n: INTEGER);
LINE 245
!   BEGIN x.mode := Cond; x.a := 0; x.b := 0; x.c := n
LINE 246
CONST 12
LDLW 12
STNW 8
CONST 0
LDLW 12
STNW 20
CONST 0
LDLW 12
STNW 24
LDLW 20
LDLW 12
STNW 28
RETURN
END

PROC OMSPG.TypeChecked 0 3 0
!   PROCEDURE TypeChecked(): BOOLEAN;
LINE 249
!   RETURN traps[2] # NIL
LINE 250
GLOBAL OMSPG.traps
LDNW 8
CONST 0
NEQ
RETURN
END

PROC OMSPG.AssertionChecked 0 3 0
!   PROCEDURE AssertionChecked*(): BOOLEAN;
LINE 253
!   RETURN traps[7] # NIL
LINE 254
GLOBAL OMSPG.traps
LDNW 28
CONST 0
NEQ
RETURN
END

PROC OMSPG.GetFixup 4 3 0x00110001
!   PROCEDURE GetFixup(s: Section; mno: BYTE; sno, offset: INTEGER; mnor: BYTE; snor: INTEGER): Fixup;
LINE 257
!   BEGIN ASSERT((mno >= 0) & (mno <= 64)); f := s.fixup;
LINE 259
LDLC 16
JLTZ L194
LDLC 16
CONST 64
JLEQ L195
LABEL L194
CONST 0
CONST 259
GLOBAL EASSERT
CALL 2
LABEL L195
LDLW 12
NCHECK 259
LDNW 52
STLW -4
LABEL L197
!     WHILE (f # NIL) & 
LINE 260
LDLW -4
JEQZ L199
LDLW -4
NCHECK 261
CONST 4
LDIC
LDLC 16
JNEQ L198
LDLW -4
NCHECK 261
LDNW 8
LDLW 20
JNEQ L198
LDLW -4
NCHECK 261
LDNW 12
LDLW 24
JNEQ L198
LDLW -4
NCHECK 261
CONST 16
LDIC
LDLC 28
JNEQ L198
LDLW -4
NCHECK 261
CONST 17
LDIC
LDLW 32
JEQ L199
LABEL L198
!       f := f.next
LINE 262
LDLW -4
NCHECK 262
LDNW 20
STLW -4
JUMP L197
LABEL L199
!     IF f = NIL THEN NEW(f); f.mno := mno; f.sno := sno; f.offset := offset; f.mnor := mnor; f.snor := snor;
LINE 264
LDLW -4
JNEQZ L207
CONST 24
GLOBAL OMSPG.FixupDesc
GLOBAL NEW
CALLW 2
STLW -4
LDLC 16
LDLW -4
NCHECK 264
CONST 4
STIC
LDLW 20
LDLW -4
NCHECK 264
STNW 8
LDLW 24
LDLW -4
NCHECK 264
STNW 12
LDLC 28
LDLW -4
NCHECK 264
CONST 16
STIC
LDLW 32
CONVNC
LDLW -4
NCHECK 264
CONST 17
STIC
!       f.next := s.fixup; s.fixup := f
LINE 265
LDLW 12
NCHECK 265
LDNW 52
LDLW -4
NCHECK 265
STNW 20
LDLW -4
LDLW 12
NCHECK 265
STNW 52
LABEL L207
!     RETURN f
LINE 268
LDLW -4
RETURN
END

PROC OMSPG.NewSection 0 7 0x01500001
!   PROCEDURE NewSection(VAR content: A.ModuleCode; VAR s: Section; seg: CHAR; name: ARRAY OF CHAR);
LINE 271
!   BEGIN ASSERT ((seg = "c") OR (seg = "d") OR (seg = "s") OR (seg = "v") OR (seg = "r"));
LINE 272
LDLC 24
CONST 99
JEQ L209
LDLC 24
CONST 100
JEQ L209
LDLC 24
CONST 115
JEQ L209
LDLC 24
CONST 118
JEQ L209
LDLC 24
CONST 114
JEQ L209
CONST 0
CONST 272
GLOBAL EASSERT
CALL 2
LABEL L209
!     NEW(s); s.segment := seg; s.name := name; s.content := SYSTEM.VAL(Content, SYSTEM.ADR(content));
LINE 273
CONST 60
GLOBAL OMSPG.SectionDesc
GLOBAL NEW
CALLW 2
LDLW 20
STOREW
LDLC 24
LDLW 20
LOADW
NCHECK 273
CONST 36
STIC
LDLW 20
LOADW
NCHECK 273
CONST 4
OFFSET
CONST 32
SWAP
LDLW 32
LDLW 28
CONST 1
CONST 1
GLOBAL FLEXASSIGN
CALL 6
LDLW 12
LDLW 20
LOADW
NCHECK 273
STNW 48
!     IF seg = "c" THEN ccs := s END;
LINE 274
LDLC 24
CONST 99
JNEQ L216
LDLW 20
LOADW
STGW OMSPG.ccs
LABEL L216
!     IF seg = "r" THEN  s.org := varsize ELSE s.org := content.pc END;
LINE 275
LDLC 24
CONST 114
JNEQ L219
LDGW OMSPG.varsize
LDLW 20
LOADW
NCHECK 275
STNW 44
JUMP L217
LABEL L219
LDLW 12
LOADW
LDLW 20
LOADW
NCHECK 275
STNW 44
LABEL L217
!     s.no := nofsec; INC(nofsec);
LINE 276
LDGW OMSPG.nofsec
LDLW 20
LOADW
NCHECK 276
STOREW
LDGW OMSPG.nofsec
INC
STGW OMSPG.nofsec
!     IF head = NIL THEN head := s; tail := s ELSE tail.next := s; tail := s END;
LINE 277
LDGW OMSPG.head
JNEQZ L222
LDLW 20
LOADW
STGW OMSPG.head
LDLW 20
LOADW
STGW OMSPG.tail
RETURN
LABEL L222
LDLW 20
LOADW
LDGW OMSPG.tail
NCHECK 277
STNW 56
LDLW 20
LOADW
STGW OMSPG.tail
RETURN
END

PROC OMSPG.DeleteLastSection 4 4 0x00010001
!   PROCEDURE DeleteLastSection;
LINE 280
!   BEGIN ASSERT(tail.segment # "c");
LINE 282
LDGW OMSPG.tail
NCHECK 282
CONST 36
LDIC
CONST 99
JNEQ L224
CONST 0
CONST 282
GLOBAL EASSERT
CALL 2
LABEL L224
!     DEC(nofsec); DEC(tail.content.pc, tail.size);
LINE 283
LDGW OMSPG.nofsec
DEC
STGW OMSPG.nofsec
LDGW OMSPG.tail
NCHECK 283
LDNW 48
NCHECK 283
DUP 0
LOADW
LDGW OMSPG.tail
NCHECK 283
LDNW 40
MINUS
SWAP
STOREW
!     IF head = tail THEN head := NIL; tail := NIL
LINE 284
LDGW OMSPG.head
LDGW OMSPG.tail
JNEQ L230
CONST 0
STGW OMSPG.head
CONST 0
STGW OMSPG.tail
RETURN
LABEL L230
!     ELSE nt := head; WHILE nt.next # tail DO nt := nt.next END; tail := nt; nt.next := NIL
LINE 285
LDGW OMSPG.head
STLW -4
LABEL L226
LDLW -4
NCHECK 285
LDNW 56
LDGW OMSPG.tail
JEQ L228
LDLW -4
NCHECK 285
LDNW 56
STLW -4
JUMP L226
LABEL L228
LDLW -4
STGW OMSPG.tail
CONST 0
LDLW -4
NCHECK 285
STNW 56
RETURN
END

PROC OMSPG.GetSection 4 2 0x00010001
!   PROCEDURE GetSection(no: INTEGER): Section;
LINE 289
!   BEGIN s := head;
LINE 291
LDGW OMSPG.head
STLW -4
LABEL L231
!     WHILE (s # NIL) & (s.no # no) DO s := s.next END;
LINE 292
LDLW -4
JEQZ L233
LDLW -4
NCHECK 292
LOADW
LDLW 12
JEQ L233
LDLW -4
NCHECK 292
LDNW 56
STLW -4
JUMP L231
LABEL L233
!     RETURN s
LINE 294
LDLW -4
RETURN
END

PROC OMSPG.EmitByte 0 4 0x00100001
!   PROCEDURE EmitByte(s: Section; b: BYTE);
LINE 297
!   BEGIN s.content.code[s.content.pc] := b; INC(s.content.pc); INC(s.size)
LINE 298
LDLC 16
LDLW 12
NCHECK 298
LDNW 48
NCHECK 298
CONST 4
OFFSET
LDLW 12
NCHECK 298
LDNW 48
NCHECK 298
LOADW
CONST 32000
BOUND 298
OFFSET
STOREC
LDLW 12
NCHECK 298
LDNW 48
NCHECK 298
DUP 0
LOADW
INC
SWAP
STOREW
LDLW 12
NCHECK 298
DUP 0
LDNW 40
INC
SWAP
STNW 40
RETURN
END

PROC OMSPG.EmitWord 0 5 0x00100001
!   PROCEDURE EmitWord(VAR s: Section; w: INTEGER);
LINE 301
!   BEGIN A.PutWordAt(s.content^, s.content.pc, w); INC(s.content.pc, 2); INC(s.size, 2)
LINE 302
LDLW 16
LDLW 12
LOADW
NCHECK 302
LDNW 48
NCHECK 302
LOADW
LDLW 12
LOADW
NCHECK 302
LDNW 48
NCHECK 302
DUP 0
LDNW -4
SWAP
GLOBAL OMSPA.PutWordAt
CALL 4
LDLW 12
LOADW
NCHECK 302
LDNW 48
NCHECK 302
DUP 0
LOADW
CONST 2
PLUS
SWAP
STOREW
LDLW 12
LOADW
NCHECK 302
DUP 0
LDNW 40
CONST 2
PLUS
SWAP
STNW 40
RETURN
END

PROC OMSPG.AllocV 4 7 0x00310001
!   PROCEDURE AllocV*(o: B.Object; VAR lvs: INTEGER);
LINE 305
!     IF o.lev = 0 THEN (*global*) NewSection(mcode, s, "r", o.name); o.val := s.no; s.size := o.type.size; INC(varsize, o.type.size)
LINE 308
LDLW 12
NCHECK 308
LDNW 8
JNEQZ L242
LDLW 12
NCHECK 308
CONST 24
OFFSET
CONST 32
SWAP
CONST 114
ALIGNC
LOCAL -4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPG.NewSection
CALL 6
LDLW -4
NCHECK 308
LOADW
LDLW 12
NCHECK 308
STNW 56
LDLW 12
NCHECK 308
LDNW 20
NCHECK 308
LDNW 32
LDLW -4
NCHECK 308
STNW 40
GLOBAL OMSPG.varsize
DUP 0
LOADW
LDLW 12
NCHECK 308
LDNW 20
NCHECK 308
LDNW 32
PLUS
SWAP
STOREW
RETURN
LABEL L242
!     ELSE ASSERT(o.lev > 0); (*local*)
LINE 309
LDLW 12
NCHECK 309
LDNW 8
JGTZ L237
CONST 0
CONST 309
GLOBAL EASSERT
CALL 2
LABEL L237
!       IF o.type.size > 1 THEN lvs := (lvs + (WordSize - 1)) DIV WordSize * WordSize (*align on WordSize*) END;
LINE 310
LDLW 12
NCHECK 310
LDNW 20
NCHECK 310
LDNW 32
CONST 1
JLEQ L240
LDLW 16
LOADW
INC
CONST 2
DIV
CONST 2
TIMES
LDLW 16
STOREW
LABEL L240
!       o.val := lvs; INC(lvs, o.type.size)
LINE 311
LDLW 16
LOADW
LDLW 12
NCHECK 311
STNW 56
LDLW 16
DUP 0
LOADW
LDLW 12
NCHECK 311
LDNW 20
NCHECK 311
LDNW 32
PLUS
SWAP
STOREW
RETURN
END

PROC OMSPG.AllocP 4 7 0x00110001
!   PROCEDURE AllocP*(o: B.Object);
LINE 315
!   BEGIN ASSERT(o.lev >= 0);
LINE 317
LDLW 12
NCHECK 317
LDNW 8
JGEQZ L244
CONST 0
CONST 317
GLOBAL EASSERT
CALL 2
LABEL L244
!     NewSection(mcode, s, "c", o.name); o.val := s.no
LINE 318
LDLW 12
NCHECK 318
CONST 24
OFFSET
CONST 32
SWAP
CONST 99
ALIGNC
LOCAL -4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPG.NewSection
CALL 6
LDLW -4
NCHECK 318
LOADW
LDLW 12
NCHECK 318
STNW 56
RETURN
END

PROC OMSPG.EndP 4 3 0x00110001
!   PROCEDURE EndP*(o: B.Object);
LINE 321
!   BEGIN s := GetSection(o.val); s.size := s.content.pc - s.org
LINE 323
LDLW 12
NCHECK 323
LDNW 56
GLOBAL OMSPG.GetSection
CALLW 1
STLW -4
LDLW -4
NCHECK 323
LDNW 48
NCHECK 323
LOADW
LDLW -4
NCHECK 323
LDNW 44
MINUS
LDLW -4
NCHECK 323
STNW 40
RETURN
END

PROC OMSPG.UpdateChain 8 7 0x00908001
!   PROCEDURE UpdateChain(s: Section; pos, val: INTEGER; x: Item): INTEGER;
LINE 326
!     IF x.ladr THEN f := GetFixup(s, -x.c, x.a, x.b MOD 10000H, x.mnor, x.snor); res := f.fixadr; f.fixadr := pos
LINE 329
LDLW 24
CONST 42
LDIC
JEQZ L247
LDLW 24
LDNW 36
LDLW 24
CONST 32
LDIC
LDLW 24
LDNW 24
CONST 65536
MOD
LDLW 24
LDNW 20
LDLW 24
LDNW 28
UMINUS
CONVNC
LDLW 12
GLOBAL OMSPG.GetFixup
CALLW 6
STLW -8
LDLW -8
NCHECK 329
LOADW
STLW -4
LDLW 16
LDLW -8
NCHECK 329
STOREW
JUMP L245
LABEL L247
!     ELSIF ~((val >= -ORD({15})) & (val < ORD({16}))) THEN S.Mark("constant out of range"); res := 0
LINE 330
LDLW 20
CONST -32768
JLT L248
LDLW 20
CONST 65536
JLT L249
LABEL L248
CONST 22
GLOBAL OMSPG.%29
GLOBAL OMSPS.Mark
CALL 2
CONST 0
STLW -4
JUMP L245
LABEL L249
!     ELSE res := val
LINE 331
LDLW 20
STLW -4
LABEL L245
!     RETURN res
LINE 334
LDLW -4
RETURN
END

PROC OMSPG.GetOffset 4 5 0x00100001
!   PROCEDURE GetOffset(VAR x: A.Item): INTEGER;
LINE 337
!   BEGIN CASE x OF
LINE 339
LOCAL 16
DUP 0
LOADW
DUP 0
LDNW 4
CONST 1
JGEQ L254
POP 1
JUMP L252
LABEL L254
LDNW 8
LDNW 4
GLOBAL OMSPG.Item
JNEQ L252
POP 1
!     Item: res := UpdateChain(ccs, mcode.pc - ccs.org + 1, x.ofs, x)
LINE 340
LDLW 12
LDLW 12
LDNW 4
LDGW OMSPG.mcode
LDGW OMSPG.ccs
NCHECK 340
LDNW 44
MINUS
INC
LDGW OMSPG.ccs
GLOBAL OMSPG.UpdateChain
CALLW 4
STLW -4
JUMP L251
LABEL L252
DUP 0
LOADW
DUP 0
LDNW 4
JGEQZ L257
POP 1
JUMP L255
LABEL L257
LDNW 8
LOADW
GLOBAL OMSPA.Item
JNEQ L255
POP 1
!     | A.Item: res := x.ofs
LINE 341
LDLW 12
LDNW 4
STLW -4
JUMP L251
LABEL L255
POP 1
ERROR E_CASE 339
LABEL L251
!     RETURN res
LINE 344
LDLW -4
RETURN
END

PROC OMSPG.CheckWritable 0 3 0x00100001
!   PROCEDURE CheckWritable*(VAR x: Item);
LINE 347
!   BEGIN IF x.mode IN {RegI, Absol} THEN x.rdo := FALSE END
LINE 348
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 348
LSL
CONST 10240
BITAND
JEQZ L260
CONST 0
LDLW 12
CONST 40
STIC
LABEL L260
RETURN
END

PROC OMSPG.MakeItem 0 3 0x00500001
!   PROCEDURE MakeItem*(VAR x: Item; y: B.Object; curlev: INTEGER);
LINE 351
!   BEGIN x := c0; x.mode := y.class; x.type := y.type; x.a := y.val; x.rdo := y.rdo; x.c := y.lev; x.obj := y;
LINE 352
LDLW 16
GLOBAL OMSPG.Item
JEQ L261
ERROR E_ASSIGN 352
LABEL L261
LDLW 12
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 20
NCHECK 352
LOADC
LDLW 12
STNW 8
LDLW 20
NCHECK 352
LDNW 20
LDLW 12
STNW 12
LDLW 20
NCHECK 352
LDNW 56
LDLW 12
STNW 20
LDLW 20
NCHECK 352
CONST 5
LDIC
LDLW 12
CONST 40
STIC
LDLW 20
NCHECK 352
LDNW 8
LDLW 12
STNW 28
LDLW 20
LDLW 12
STNW 16
!     IF (y.class IN {B.Var, B.Par}) THEN
LINE 353
CONST 1
LDLW 20
NCHECK 353
LOADC
CONST 32
BOUND 353
LSL
CONST 12
BITAND
JEQZ L264
!       IF y.register # 0FFH THEN
LINE 354
LDLW 20
NCHECK 354
CONST 2
LDIC
CONST 255
JEQ L275
!         x.reg := y.register;
LINE 355
LDLW 20
NCHECK 355
CONST 2
LDIC
LDLW 12
STOREC
!         IF y.class = B.Var THEN x.mode := Reg ELSE x.mode := RegI END
LINE 356
LDLW 20
NCHECK 356
LOADC
CONST 2
JNEQ L270
CONST 10
LDLW 12
STNW 8
JUMP L275
LABEL L270
CONST 11
LDLW 12
STNW 8
JUMP L275
LABEL L264
!     ELSIF (y.class = B.StoredConst) & (y.type.form = B.Proc) THEN x.ptr := TRUE (*const procs are always pointers*)
LINE 358
LDLW 20
NCHECK 358
LOADC
CONST 9
JNEQ L272
LDLW 20
NCHECK 358
LDNW 20
NCHECK 358
LOADW
CONST 10
JNEQ L272
CONST 1
LDLW 12
CONST 43
STIC
JUMP L275
LABEL L272
!     ELSIF y.type.form = B.String THEN x.a := y.val MOD 10000H (*no*); x.b := LSL(LSR(y.val, 16), 16) (*len*)
LINE 359
LDLW 20
NCHECK 359
LDNW 20
NCHECK 359
LOADW
CONST 11
JNEQ L275
LDLW 20
NCHECK 359
LDNW 56
CONST 65536
MOD
LDLW 12
STNW 20
LDLW 20
NCHECK 359
LDNW 56
CONST 16
LSR
CONST 16
LSL
LDLW 12
STNW 24
LABEL L275
!     x.ladr := (y.lev <= 0) & (y.class = B.Var) OR (y.class = B.StoredConst); (*global and extenal vars and stored contanst have a runtime address*)
LINE 361
LDLW 20
NCHECK 361
LDNW 8
JGTZ L277
LDLW 20
NCHECK 361
LOADC
CONST 2
JNEQ L277
CONST 1
JUMP L278
LABEL L277
LDLW 20
NCHECK 361
LOADC
CONST 9
EQ
LABEL L278
LDLW 12
CONST 42
STIC
!     IF (y.lev > 0) & (y.lev # curlev) & ~(y.class IN {B.Const, B.StoredConst}) OR
LINE 362
LDLW 20
NCHECK 362
LDNW 8
JLEQZ L283
LDLW 20
NCHECK 362
LDNW 8
LDLW 24
JEQ L283
CONST 1
LDLW 20
NCHECK 362
LOADC
CONST 32
BOUND 362
LSL
CONST 514
BITAND
JEQZ L281
LABEL L283
LDLW 20
NCHECK 363
LDNW 8
JLTZ L282
LDLW 20
NCHECK 363
LOADC
CONST 9
JNEQ L282
LDLW 12
LDNW 20
GLOBAL OMSPG.GetSection
CALLW 1
JNEQZ L282
LABEL L281
!         (y.lev >= 0) & (y.class = B.StoredConst) & (GetSection(x.a) = NIL) THEN S.Mark("not accessible ")
LINE 363
CONST 16
GLOBAL OMSPG.%30
GLOBAL OMSPS.Mark
CALL 2
LABEL L282
RETURN
END

PROC OMSPG.loadOrdCond 52 9 0x00100181
!   PROCEDURE loadOrdCond(VAR x: Item; pr: BYTE); (*load condition item in a temporary register*)
LINE 367
!   BEGIN ASSERT(x.mode = Cond);
LINE 369
LDLW 12
LDNW 8
CONST 12
JEQ L289
CONST 0
CONST 369
GLOBAL EASSERT
CALL 2
LABEL L289
!     alloc(x, pr); pc0 := mcode.pc; A.PutJ(mcode, A.negated(x.c), 0);
LINE 370
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
LDGW OMSPG.mcode
STLW -4
CONST 0
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
CONVNC
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!     FixLink(x.b); t := c1; A.PutDO(mcode, A.MOV, t, x, A.Word);
LINE 371
LDLW 12
LDNW 24
GLOBAL OMSPG.FixLink
CALL 1
LOCAL -52
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -52
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     pc1 := mcode.pc; A.PutJ(mcode, A.AL, 0);
LINE 372
LDGW OMSPG.mcode
STLW -8
CONST 0
CONST 7
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!     A.fix(mcode, pc0, mcode.pc - pc0 - 2); FixLink(x.a); t := c0;
LINE 373
LDGW OMSPG.mcode
LDLW -4
MINUS
CONST 2
MINUS
LDLW -4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.fix
CALL 4
LDLW 12
LDNW 20
GLOBAL OMSPG.FixLink
CALL 1
LOCAL -52
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
!     A.PutDO(mcode, A.MOV, t, x, A.Word);
LINE 374
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -52
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     A.fix(mcode, pc1, mcode.pc - pc1 - 2);
LINE 375
LDGW OMSPG.mcode
LDLW -8
MINUS
CONST 2
MINUS
LDLW -8
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.fix
CALL 4
!     x.mode := Reg; x.type := B.intType
LINE 376
CONST 10
LDLW 12
STNW 8
LDGW OMSPB.intType
LDLW 12
STNW 12
RETURN
END

PROC OMSPG.setRAO 48 9 0x03200601
!   PROCEDURE setRAO(op: INTEGER; VAR i: Item; dst: BOOLEAN; VAR nba, bwo: SET);
LINE 379
!   BEGIN ASSERT(ORD(i.ladr) < 2); ASSERT(ORD(i.ptr) < 2); (*assure that i.radr and i.ptr were properly initialized*)
LINE 381
LDLW 16
CONST 42
LDIC
CONST 2
JLT L291
CONST 0
CONST 381
GLOBAL EASSERT
CALL 2
LABEL L291
LDLW 16
CONST 43
LDIC
CONST 2
JLT L293
CONST 0
CONST 381
GLOBAL EASSERT
CALL 2
LABEL L293
!     ti := c0;
LINE 382
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
!     IF ~dst & (i.type.size = 1) & (bwo*A.Byte = {}) THEN S.Mark("move byte to int") END;
LINE 383
LDLC 24
JNEQZ L296
LDLW 16
LDNW 12
NCHECK 383
LDNW 32
CONST 1
JNEQ L296
LDLW 32
LOADW
CONST 64
BITAND
JNEQZ L296
CONST 17
GLOBAL OMSPG.%31
GLOBAL OMSPS.Mark
CALL 2
LABEL L296
!     IF (op = A.PUSH) OR (op = A.CALL) THEN dst := FALSE END;
LINE 384
LDLW 12
CONST 36
JEQ L300
LDLW 12
CONST 37
JNEQ L301
LABEL L300
CONST 0
STLC 24
LABEL L301
!     IF i.type.size = 1 THEN bwo := bwo + A.Byte END;
LINE 385
LDLW 16
LDNW 12
NCHECK 385
LDNW 32
CONST 1
JNEQ L305
LDLW 32
LOADW
CONST 64
BITOR
LDLW 32
STOREW
LABEL L305
!     IF ~dst & i.ladr THEN bwo := bwo + A.EmitOffset END;
LINE 386
LDLC 24
JNEQZ L308
LDLW 16
CONST 42
LDIC
JEQZ L308
LDLW 32
LOADW
CONST 65536
BITOR
LDLW 32
STOREW
LABEL L308
!     IF dst & i.rdo & ((i.mode = B.Const) OR (op # A.CMP) & (op # A.BIT)) THEN
LINE 387
LDLC 24
JEQZ L312
LDLW 16
CONST 40
LDIC
JEQZ L312
LDLW 16
LDNW 8
CONST 1
JEQ L311
LDLW 12
CONST 9
JEQ L312
LDLW 12
CONST 11
JEQ L312
LABEL L311
!       ti := i; free(i); i.mode := Reg; alloc(i, 0FFH); i.ladr := FALSE; i.rdo := FALSE; i.tmp := TRUE;
LINE 389
LOCAL -44
LDLW 16
CONST 44
FIXCOPY
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
CONST 10
LDLW 16
STNW 8
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.alloc
CALL 3
CONST 0
LDLW 16
CONST 42
STIC
CONST 0
LDLW 16
CONST 40
STIC
CONST 1
LDLW 16
CONST 41
STIC
!       tptr := i.ptr; i.ptr := FALSE; PutDO0(A.MOV, ti, i); setRAO(op, i, dst, nba, bwo); i.ptr := tptr
LINE 390
LDLW 16
CONST 43
LDIC
STLC -45
CONST 0
LDLW 16
CONST 43
STIC
LDLW 20
LDLW 16
GLOBAL OMSPG.Item
LOCAL -44
CONST 4
LDGW OMSPG.PutDO0
NCHECK 390
CALL 5
LDLW 32
LDLW 28
LDLC 24
ALIGNC
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.setRAO
CALL 6
LDLC -45
LDLW 16
CONST 43
STIC
RETURN
LABEL L312
!     ELSIF i.mode = B.Var THEN
LINE 391
LDLW 16
LDNW 8
CONST 2
JNEQ L318
!       IF i.c > 0 THEN i.reg := A.SP; i.am := A.Indexed; i.ofs := i.a + frame
LINE 392
LDLW 16
LDNW 28
JLEQZ L324
CONST 1
LDLW 16
STOREC
CONST 1
LDLW 16
CONST 1
STIC
LDLW 16
LDNW 20
LDGW OMSPG.frame
PLUS
LDLW 16
STNW 4
RETURN
LABEL L324
!       ELSE i.reg := 0; IF i.ptr THEN i.am := A.Immediate ELSE i.am := A.Absolute END
LINE 393
CONST 0
LDLW 16
STOREC
LDLW 16
CONST 43
LDIC
JEQZ L322
CONST 6
LDLW 16
CONST 1
STIC
RETURN
LABEL L322
CONST 3
LDLW 16
CONST 1
STIC
RETURN
LABEL L318
!     ELSIF i.mode = Reg THEN i.am := A.Register; i.ofs := 0
LINE 395
LDLW 16
LDNW 8
CONST 10
JNEQ L326
CONST 0
LDLW 16
CONST 1
STIC
CONST 0
LDLW 16
STNW 4
RETURN
LABEL L326
!     ELSIF i.mode = RegI THEN i.am := A.Indexed; i.ofs := i.a
LINE 396
LDLW 16
LDNW 8
CONST 11
JNEQ L328
CONST 1
LDLW 16
CONST 1
STIC
LDLW 16
LDNW 20
LDLW 16
STNW 4
RETURN
LABEL L328
!     ELSIF i.mode = Absol THEN  i.am := A.Absolute; i.ofs := i.a
LINE 397
LDLW 16
LDNW 8
CONST 13
JNEQ L330
CONST 3
LDLW 16
CONST 1
STIC
LDLW 16
LDNW 20
LDLW 16
STNW 4
RETURN
LABEL L330
!     ELSIF i.mode = B.Const THEN i.ofs := i.a; i.reg := 0; i.am := A.Immediate;
LINE 398
LDLW 16
LDNW 8
CONST 1
JNEQ L332
LDLW 16
LDNW 20
LDLW 16
STNW 4
CONST 0
LDLW 16
STOREC
CONST 6
LDLW 16
CONST 1
STIC
!       IF dst THEN S.Mark("not writable"); i.am := A.Absolute END
LINE 399
LDLC 24
JEQZ L310
CONST 13
GLOBAL OMSPG.%32
GLOBAL OMSPS.Mark
CALL 2
CONST 3
LDLW 16
CONST 1
STIC
RETURN
LABEL L332
!     ELSIF i.mode = B.Par THEN rh.reg := AllocR(); INCL(nba, rh.reg);
LINE 400
LDLW 16
LDNW 8
CONST 3
JNEQ L337
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
LDLW 28
DUP 0
LOADW
CONST 1
LDGC OMSPG.rh
CONST 32
BOUND 400
LSL
BITOR
SWAP
STOREW
!       ti.am := A.Indexed; ti.reg := A.SP; ti.obj := NIL; ti.ofs := i.a + frame;
LINE 401
CONST 1
STLC -43
CONST 1
STLC -44
CONST 0
STLW -28
LDLW 16
LDNW 20
LDGW OMSPG.frame
PLUS
STLW -40
!       A.PutDO(mcode, A.MOV, ti, rh, A.Word);
LINE 402
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -44
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!       i.mode := RegI; i.reg := rh.reg; i.a := i.b; i.b := 0; setRAO(op, i, dst, nba, bwo)
LINE 403
CONST 11
LDLW 16
STNW 8
LDGC OMSPG.rh
LDLW 16
STOREC
LDLW 16
LDNW 24
LDLW 16
STNW 20
CONST 0
LDLW 16
STNW 24
LDLW 32
LDLW 28
LDLC 24
ALIGNC
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.setRAO
CALL 6
RETURN
LABEL L337
!     ELSIF i.mode = Cond THEN loadOrdCond(i, 0FFH)
LINE 404
LDLW 16
LDNW 8
CONST 12
JNEQ L339
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.loadOrdCond
CALL 3
RETURN
LABEL L339
!     ELSIF i.mode = B.StoredConst THEN i.reg := 0; IF i.ptr THEN i.am := A.Immediate ELSE i.am := A.Absolute END
LINE 405
LDLW 16
LDNW 8
CONST 9
JNEQ L341
CONST 0
LDLW 16
STOREC
LDLW 16
CONST 43
LDIC
JEQZ L344
CONST 6
LDLW 16
CONST 1
STIC
RETURN
LABEL L344
CONST 3
LDLW 16
CONST 1
STIC
RETURN
LABEL L341
!     ELSE S.Mark("bad mode in setRAO")
LINE 406
CONST 19
GLOBAL OMSPG.%33
GLOBAL OMSPS.Mark
CALL 2
LABEL L310
RETURN
END

PROC OMSPG.PutSO 8 9 0x00200001
!   PROCEDURE PutSO(op: INTEGER; VAR sd: Item);
LINE 410
!     nba := {}; bw := A.Word; setRAO(op, sd, TRUE, nba, bw);
LINE 413
CONST 0
STLW -8
CONST 0
STLW -4
LOCAL -4
LOCAL -8
CONST 1
ALIGNC
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.setRAO
CALL 6
!     IF (sd.reg = A.SP) & ((op = A.CALL) & (sd.am = A.Indexed) OR (op = A.PUSH)) THEN
LINE 414
LDLW 16
LOADC
CONST 1
JNEQ L347
LDLW 12
CONST 37
JNEQ L352
LDLW 16
CONST 1
LDIC
CONST 1
JEQ L346
LABEL L352
LDLW 12
CONST 36
JNEQ L347
LABEL L346
!       IF sd.am = A.Register THEN
LINE 415
LDLW 16
CONST 1
LDIC
JNEQZ L350
!         rh.reg := AllocR(); A.PutDO(mcode, A.MOV, sd, rh, A.Word);
LINE 418
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
LDLW 20
LDLW 16
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!         sd.reg := rh.reg; INCL(nba, rh.reg)
LINE 419
LDGC OMSPG.rh
LDLW 16
STOREC
LOCAL -8
DUP 0
LOADW
CONST 1
LDGC OMSPG.rh
CONST 32
BOUND 419
LSL
BITOR
SWAP
STOREW
JUMP L347
LABEL L350
!       ELSE INC(sd.ofs, WordSize) (*SP is predrecemented, so the offset is augmented by 2*)
LINE 420
LDLW 16
DUP 0
LDNW 4
CONST 2
PLUS
SWAP
STNW 4
LABEL L347
!     IF op = A.PUSH THEN INC(frame, WordSize) END;
LINE 423
LDLW 12
CONST 36
JNEQ L356
LDGW OMSPG.frame
CONST 2
PLUS
STGW OMSPG.frame
LABEL L356
!     A.PutSO(mcode, op, sd, bw); freeSet(nba);
LINE 424
LDLW -4
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
LDLW -8
GLOBAL OMSPG.freeSet
CALL 1
!     IF op = A.POP THEN DEC(frame, WordSize) END
LINE 425
LDLW 12
CONST 256
JNEQ L359
LDGW OMSPG.frame
CONST 2
MINUS
STGW OMSPG.frame
LABEL L359
RETURN
END

PROC OMSPG.PutJ 0 5 0
!   PROCEDURE PutJ(cond: BYTE; offset: INTEGER);
LINE 428
!   BEGIN A.PutJ(mcode, cond, offset)
LINE 429
LDLW 16
LDLC 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
RETURN
END

PROC OMSPG.Trap 44 5 0x00000601
!  PROCEDURE Trap(cond, num: INTEGER);
LINE 432
!   BEGIN IF cond # A.AL THEN PutJ(A.negated(cond), 4) END;
LINE 437
LDLW 12
CONST 7
JEQ L362
CONST 4
LDLW 12
GLOBAL OMSPA.negated
CALLW 1
CONVNC
GLOBAL OMSPG.PutJ
CALL 2
LABEL L362
!     MakeItem(t, traps[num], 0); PutSO(A.CALL, t)
LINE 438
CONST 0
GLOBAL OMSPG.traps
LDLW 16
CONST 8
BOUND 438
LDIW
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.MakeItem
CALL 4
GLOBAL OMSPG.Item
LOCAL -44
CONST 37
GLOBAL OMSPG.PutSO
CALL 3
RETURN
END

PROC OMSPG.convertSize 48 6 0x00500301
!   PROCEDURE convertSize(VAR src: Item; t: B.Type): BOOLEAN;
LINE 441
!   BEGIN tmp := FALSE;
LINE 443
CONST 0
STLC -1
!     IF (src.type.size = 1) & (t.size = 2) THEN (*move byte to word*)
LINE 444
LDLW 12
LDNW 12
NCHECK 444
LDNW 32
CONST 1
JNEQ L365
LDLW 20
NCHECK 444
LDNW 32
CONST 2
JNEQ L365
!       IF ~(src.mode IN {Reg, Cond, B.Const}) THEN
LINE 445
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 445
LSL
CONST 5122
BITAND
JNEQZ L368
!         it := src; free(src); alloc(src, 0FFH); src.mode := Reg; src.rdo := FALSE;
LINE 446
LOCAL -48
LDLW 12
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
CONST 10
LDLW 12
STNW 8
CONST 0
LDLW 12
CONST 40
STIC
!         PutDO0(A.MOV, it, src); tmp := TRUE
LINE 447
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -48
CONST 4
LDGW OMSPG.PutDO0
NCHECK 447
CALL 5
CONST 1
STLC -1
LABEL L368
!       END; src.type := B.intType (*extend source*)
LINE 448
LDGW OMSPB.intType
LDLW 12
STNW 12
LABEL L365
!     RETURN tmp
LINE 451
LDLC -1
RETURN
END

PROC OMSPG.PutDO 12 9 0x00a00001
!   PROCEDURE PutDO(op: BYTE; VAR src, dst: Item);
LINE 454
!   BEGIN tmp := convertSize(src, dst.type);
LINE 456
LDLW 24
LDNW 12
LDLW 20
LDLW 16
GLOBAL OMSPG.convertSize
CALLW 3
STLC -9
!     nba := {}; bw := A.Word; setRAO(op, dst, TRUE, nba, bw); setRAO(op, src, FALSE, nba, bw);
LINE 457
CONST 0
STLW -8
CONST 0
STLW -4
LOCAL -4
LOCAL -8
CONST 1
ALIGNC
LDLW 28
LDLW 24
LDLC 12
GLOBAL OMSPG.setRAO
CALL 6
LOCAL -4
LOCAL -8
CONST 0
ALIGNC
LDLW 20
LDLW 16
LDLC 12
GLOBAL OMSPG.setRAO
CALL 6
!     A.PutDO(mcode, op, src, dst, bw); freeSet(nba);
LINE 458
LDLW -4
LDLW 28
LDLW 24
LDLW 20
LDLW 16
LDLC 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LDLW -8
GLOBAL OMSPG.freeSet
CALL 1
!     IF tmp THEN free(src) END
LINE 459
LDLC -9
JEQZ L372
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
LABEL L372
RETURN
END

PROC OMSPG.NilCheck 88 6 OMSPG.NilCheck.%map
!   PROCEDURE NilCheck(a: BYTE);
LINE 462
!     IF traps[4] # NIL THEN
LINE 465
GLOBAL OMSPG.traps
LDNW 16
JEQZ L375
!        t := r15; t.reg := a; c := c0; PutDO(A.CMP, c, t);
LINE 466
LOCAL -44
GLOBAL OMSPG.r15
CONST 44
FIXCOPY
LDLC 12
STLC -44
LOCAL -88
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.Item
LOCAL -88
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
!       Trap(A.EQ, 4)
LINE 467
CONST 4
CONST 1
GLOBAL OMSPG.Trap
CALL 2
LABEL L375
RETURN
END

PROC OMSPG.load 48 6 0x00100601
!   PROCEDURE load(VAR x: Item; pr: BYTE); (*load item in a temporary register*)
LINE 473
!   BEGIN IF x.tmp THEN x.rdo := FALSE END;
LINE 475
LDLW 12
CONST 41
LDIC
JEQZ L378
CONST 0
LDLW 12
CONST 40
STIC
LABEL L378
!     IF x.mode = Cond THEN loadOrdCond(x, pr)
LINE 476
LDLW 12
LDNW 8
CONST 12
JNEQ L381
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.loadOrdCond
CALL 3
RETURN
LABEL L381
!     ELSIF (x.mode # Reg) OR ((~x.tmp OR (pr # 0FFH)) & (x.reg # pr)) THEN (*temporary copy needed*)
LINE 477
LDLW 12
LDNW 8
CONST 10
JNEQ L382
LDLW 12
CONST 41
LDIC
JEQZ L387
LDLC 20
CONST 255
JEQ L383
LABEL L387
LDLW 12
LOADC
LDLC 20
JEQ L383
LABEL L382
!       t := x; free(x); alloc(x, pr); x.mode := Reg; x.tmp := TRUE; x.rdo := FALSE; x.ladr := FALSE;
LINE 478
LOCAL -44
LDLW 12
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
CONST 10
LDLW 12
STNW 8
CONST 1
LDLW 12
CONST 41
STIC
CONST 0
LDLW 12
CONST 40
STIC
CONST 0
LDLW 12
CONST 42
STIC
!       tptr := x.ptr; ASSERT(ORD(tptr) < 2); x.ptr := FALSE; PutDO(A.MOV, t, x); x.ptr := tptr;
LINE 479
LDLW 12
CONST 43
LDIC
STLC -45
LDLC -45
CONST 2
JLT L385
CONST 0
CONST 479
GLOBAL EASSERT
CALL 2
LABEL L385
CONST 0
LDLW 12
CONST 43
STIC
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
LDLC -45
LDLW 12
CONST 43
STIC
LABEL L383
RETURN
END

PROC OMSPG.push 4 4 0x00100001
!   PROCEDURE push(VAR x: Item; dsize: INTEGER);
LINE 483
!     IF (x.type.size = 1) & (dsize = WordSize) THEN tmp := convertSize(x, B.intType); END;
LINE 486
LDLW 12
LDNW 12
NCHECK 486
LDNW 32
CONST 1
JNEQ L391
LDLW 20
CONST 2
JNEQ L391
LDGW OMSPB.intType
LDLW 16
LDLW 12
GLOBAL OMSPG.convertSize
CALLW 3
STLC -1
LABEL L391
!     PutSO(A.PUSH, x);
LINE 487
LDLW 16
LDLW 12
CONST 36
GLOBAL OMSPG.PutSO
CALL 3
!     free(x)
LINE 488
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Adr 44 6 0x00100601
!   PROCEDURE Adr*(VAR x:Item);
LINE 491
!   BEGIN t := c0;
LINE 493
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
!     IF ~x.ptr THEN x.ptr := TRUE;
LINE 494
LDLW 12
CONST 43
LDIC
JNEQZ L395
CONST 1
LDLW 12
CONST 43
STIC
!       x.type := B.intType;
LINE 495
LDGW OMSPB.intType
LDLW 12
STNW 12
!       IF x.mode = B.Par THEN x.mode := B.Var;
LINE 496
LDLW 12
LDNW 8
CONST 3
JNEQ L398
CONST 2
LDLW 12
STNW 8
!         IF x.b # 0 THEN t.a := x.b; PutDO(A.ADD, t, x) END
LINE 497
LDLW 12
LDNW 24
JEQZ L395
LDLW 12
LDNW 24
STLW -24
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L398
!       ELSIF x.mode = B.Var THEN
LINE 498
LDLW 12
LDNW 8
CONST 2
JNEQ L403
!         IF x.c > 0 THEN (*local*) ASSERT(x.tmp = FALSE); x.mode := Reg; x.reg := A.SP; x.rdo := TRUE;
LINE 499
LDLW 12
LDNW 28
JLEQZ L406
LDLW 12
CONST 41
LDIC
JEQZ L408
CONST 0
CONST 499
GLOBAL EASSERT
CALL 2
LABEL L408
CONST 10
LDLW 12
STNW 8
CONST 1
LDLW 12
STOREC
CONST 1
LDLW 12
CONST 40
STIC
!           IF x.a + frame # 0 THEN t.a := x.a + frame; PutDO(A.ADD, t, x) END
LINE 500
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
JEQZ L395
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
STLW -24
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L406
!         ELSE (*global or imported*) x.mode := B.Const; x.ladr := TRUE
LINE 501
CONST 1
LDLW 12
STNW 8
CONST 1
LDLW 12
CONST 42
STIC
RETURN
LABEL L403
!       ELSIF x.mode = B.StoredConst THEN x.mode := B.Const; x.ladr := TRUE
LINE 503
LDLW 12
LDNW 8
CONST 9
JNEQ L413
CONST 1
LDLW 12
STNW 8
CONST 1
LDLW 12
CONST 42
STIC
RETURN
LABEL L413
!       ELSIF x.mode = RegI THEN x.mode := Reg; x.rdo := FALSE;
LINE 504
LDLW 12
LDNW 8
CONST 11
JNEQ L415
CONST 10
LDLW 12
STNW 8
CONST 0
LDLW 12
CONST 40
STIC
!         IF x.a # 0 THEN t.ladr := x.ladr; t.a := x.a; PutDO(A.ADD, t, x); x.ladr := FALSE END
LINE 505
LDLW 12
LDNW 20
JEQZ L395
LDLW 12
CONST 42
LDIC
STLC -2
LDLW 12
LDNW 20
STLW -24
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
CONST 0
LDLW 12
CONST 42
STIC
RETURN
LABEL L415
!       ELSIF x.mode # Absol THEN S.Mark("not addressable")
LINE 506
LDLW 12
LDNW 8
CONST 13
JEQ L395
CONST 16
GLOBAL OMSPG.%34
GLOBAL OMSPS.Mark
CALL 2
LABEL L395
RETURN
END

PROC OMSPG.loadAdr 0 4 0x00100001
!   PROCEDURE loadAdr(VAR x: Item; pr: INTEGER);
LINE 529
!   BEGIN Adr(x); load(x, pr)
LINE 530
LDLW 16
LDLW 12
GLOBAL OMSPG.Adr
CALL 2
LDLW 20
CONVNC
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
RETURN
END

PROC OMSPG.pushAdr 0 4 0x00100001
!   PROCEDURE pushAdr(VAR x: Item);
LINE 533
!   BEGIN Adr(x); push(x, 2)
LINE 534
LDLW 16
LDLW 12
GLOBAL OMSPG.Adr
CALL 2
CONST 2
LDLW 16
LDLW 12
GLOBAL OMSPG.push
CALL 3
RETURN
END

PROC OMSPG.loadCond 44 6 0x00100601
!   PROCEDURE loadCond(VAR x: Item);
LINE 537
!     IF x.type.form = B.Bool THEN
LINE 540
LDLW 12
LDNW 12
NCHECK 540
LOADW
CONST 2
JNEQ L423
!       IF x.mode = B.Const THEN IF x.a = 0 THEN x.c := A.NV ELSE x.c := A.AL END
LINE 541
LDLW 12
LDNW 8
CONST 1
JNEQ L426
LDLW 12
LDNW 20
JNEQZ L429
CONST 8
LDLW 12
STNW 28
JUMP L424
LABEL L429
CONST 7
LDLW 12
STNW 28
JUMP L424
LABEL L426
!       ELSE t := c0; PutDO(A.CMP, t, x); x.c := A.NE; free(x)
LINE 542
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 0
LDLW 12
STNW 28
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LABEL L424
!       x.mode := Cond; x.a := 0; x.b := 0
LINE 544
CONST 12
LDLW 12
STNW 8
CONST 0
LDLW 12
STNW 20
CONST 0
LDLW 12
STNW 24
RETURN
LABEL L423
!     ELSE S.Mark("not Boolean?")
LINE 545
CONST 13
GLOBAL OMSPG.%35
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.MakeTypTagAdr 0 3 0x00500001
!   PROCEDURE MakeTypTagAdr(VAR x: Item; T: B.Type);
LINE 549
!   BEGIN x := c0; x.mode := B.StoredConst; x.ladr := TRUE; x.ptr := TRUE; x.type := B.intType; x.a := T.len; x.c := T.typobj.lev;
LINE 550
LDLW 16
GLOBAL OMSPG.Item
JEQ L430
ERROR E_ASSIGN 550
LABEL L430
LDLW 12
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
CONST 9
LDLW 12
STNW 8
CONST 1
LDLW 12
CONST 42
STIC
CONST 1
LDLW 12
CONST 43
STIC
LDGW OMSPB.intType
LDLW 12
STNW 12
LDLW 20
NCHECK 550
LDNW 16
LDLW 12
STNW 20
LDLW 20
NCHECK 550
LDNW 24
NCHECK 550
LDNW 8
LDLW 12
STNW 28
!     x.rdo := TRUE; x.obj := T.typobj; x.am := A.Undefined
LINE 551
CONST 1
LDLW 12
CONST 40
STIC
LDLW 20
NCHECK 551
LDNW 24
LDLW 12
STNW 16
CONST 255
LDLW 12
CONST 1
STIC
RETURN
END

PROC OMSPG.loadTypTagAdr 44 4 0x00100601
!   PROCEDURE loadTypTagAdr(T: B.Type; pr: INTEGER): BYTE;
LINE 554
!   BEGIN MakeTypTagAdr(t, T); load(t, pr);
LINE 556
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.MakeTypTagAdr
CALL 3
LDLW 16
CONVNC
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.load
CALL 3
!     RETURN t.reg
LINE 557
LDLC -44
RETURN
END

PROC OMSPG.pushTypTagAdr 44 4 0x00100601
!   PROCEDURE pushTypTagAdr(T: B.Type);
LINE 560
!   BEGIN MakeTypTagAdr(t, T); push(t, WordSize);
LINE 562
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.MakeTypTagAdr
CALL 3
CONST 2
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.push
CALL 3
RETURN
END

PROC OMSPG.MakeConstItem 0 3 0x00500001
!   PROCEDURE MakeConstItem*(VAR x: Item; typ: B.Type; val: INTEGER);
LINE 567
!   BEGIN x := c0; x.type := typ; x.a := val; x.am := A.Undefined
LINE 568
LDLW 16
GLOBAL OMSPG.Item
JEQ L431
ERROR E_ASSIGN 568
LABEL L431
LDLW 12
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 20
LDLW 12
STNW 12
LDLW 24
LDLW 12
STNW 20
CONST 255
LDLW 12
CONST 1
STIC
RETURN
END

PROC OMSPG.stringFound 8 4 0x00900001
!   PROCEDURE stringFound(str: ARRAY OF CHAR; len: INTEGER; VAR s: Section): BOOLEAN;
LINE 571
!   BEGIN found := FALSE; s := head;
LINE 574
CONST 0
STLC -1
LDGW OMSPG.head
LDLW 24
STOREW
LABEL L432
!     WHILE ~found & (s # NIL) DO
LINE 575
LDLC -1
JNEQZ L434
LDLW 24
LOADW
JEQZ L434
!       IF s.segment = "s" THEN
LINE 576
LDLW 24
LOADW
NCHECK 576
CONST 36
LDIC
CONST 115
JNEQ L437
!         i := 0; WHILE (i < len) & (str[i] = CHR(strings.code[s.org + i])) DO INC(i) END;
LINE 577
CONST 0
STLW -8
LABEL L438
LDLW -8
LDLW 20
JGEQ L440
LDLW 12
LDLW -8
LDLW 16
BOUND 577
LDIC
GLOBAL OMSPG.strings
CONST 4
OFFSET
LDLW 24
LOADW
NCHECK 577
LDNW 44
LDLW -8
PLUS
CONST 32000
BOUND 577
OFFSET
LOADC
CONVNC
JNEQ L440
INCL -8
JUMP L438
LABEL L440
!         IF i = len THEN found := TRUE ELSE s := s.next END
LINE 578
LDLW -8
LDLW 20
JNEQ L444
CONST 1
STLC -1
JUMP L432
LABEL L444
LDLW 24
LOADW
NCHECK 578
LDNW 56
LDLW 24
STOREW
JUMP L432
LABEL L437
!       ELSE s := s.next
LINE 579
LDLW 24
LOADW
NCHECK 579
LDNW 56
LDLW 24
STOREW
JUMP L432
LABEL L434
!     RETURN found
LINE 583
LDLC -1
RETURN
END

PROC OMSPG.Length 4 2 0x00100001
!   PROCEDURE Length*(x: Item): INTEGER;
LINE 586
!     IF x.type.form = B.String THEN l := LSR(x.b, 16)
LINE 589
LDLW 12
LDNW 12
NCHECK 589
LOADW
CONST 11
JNEQ L448
LDLW 12
LDNW 24
CONST 16
LSR
STLW -4
JUMP L446
LABEL L448
!     ELSE l := x.type.len
LINE 590
LDLW 12
LDNW 12
NCHECK 590
LDNW 16
STLW -4
LABEL L446
!     RETURN l
LINE 593
LDLW -4
RETURN
END

PROC OMSPG.stringPut 8 7 0x00508001
!   PROCEDURE stringPut(VAR x: Item; str: ARRAY OF CHAR; len: INTEGER);
LINE 596
!   BEGIN x.mnor := 0FFH; x.snor := 0; x.mode := B.StoredConst; x.type := B.strType; x.b := LSL(len, 16); x.c := 0 (*global string*);
LINE 598
CONST 255
LDLW 12
CONST 32
STIC
CONST 0
LDLW 12
STNW 36
CONST 9
LDLW 12
STNW 8
LDGW OMSPB.strType
LDLW 12
STNW 12
LDLW 28
CONST 16
LSL
LDLW 12
STNW 24
CONST 0
LDLW 12
STNW 28
!     x.rdo := TRUE; x.obj := NIL; x.tmp := FALSE; x.reg := 0; x.am := A.Undefined; x.ofs := 0;
LINE 599
CONST 1
LDLW 12
CONST 40
STIC
CONST 0
LDLW 12
STNW 16
CONST 0
LDLW 12
CONST 41
STIC
CONST 0
LDLW 12
STOREC
CONST 255
LDLW 12
CONST 1
STIC
CONST 0
LDLW 12
STNW 4
!     x.ladr := TRUE; x.ptr := FALSE;
LINE 600
CONST 1
LDLW 12
CONST 42
STIC
CONST 0
LDLW 12
CONST 43
STIC
!     IF ~stringFound(str, len, s) THEN NewSection(strings, s, "s", "");
LINE 601
LOCAL -8
LDLW 28
LDLW 24
LDLW 20
GLOBAL OMSPG.stringFound
CALLW 4
JNEQZ L451
CONST 1
GLOBAL OMSPG.%36
CONST 115
ALIGNC
LOCAL -8
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.strings
GLOBAL OMSPG.NewSection
CALL 6
!       i := 0; WHILE len > 0 DO EmitByte(s, ORD(str[i])); INC(i); DEC(len) END;
LINE 602
CONST 0
STLW -4
LABEL L452
LDLW 28
JLEQZ L454
LDLW 20
LDLW -4
LDLW 24
BOUND 602
LDIC
CONVNC
LDLW -8
GLOBAL OMSPG.EmitByte
CALL 2
INCL -4
DECL 28
JUMP L452
LABEL L454
!       WHILE s.content.pc MOD WordSize # 0 DO EmitByte(s, 0) END
LINE 603
LDLW -8
NCHECK 603
LDNW 48
NCHECK 603
LOADW
CONST 2
MOD
JEQZ L451
CONST 0
LDLW -8
GLOBAL OMSPG.EmitByte
CALL 2
JUMP L454
LABEL L451
!     x.a := s.no
LINE 605
LDLW -8
NCHECK 605
LOADW
LDLW 12
STNW 20
RETURN
END

PROC OMSPG.stringPop 8 4 0x00308001
!   PROCEDURE stringPop(x: Item; VAR xs: ARRAY OF CHAR);
LINE 608
!   BEGIN s := GetSection(x.a); ASSERT(s.segment = "s");
LINE 610
LDLW 12
LDNW 20
GLOBAL OMSPG.GetSection
CALLW 1
STLW -8
LDLW -8
NCHECK 610
CONST 36
LDIC
CONST 115
JEQ L459
CONST 0
CONST 610
GLOBAL EASSERT
CALL 2
LABEL L459
!     IF (x.obj = NIL) & (s.fixup = NIL) THEN (*string can be removed from table*)
LINE 611
LDLW 12
LDNW 16
JNEQZ L462
LDLW -8
NCHECK 611
LDNW 52
JNEQZ L462
!       ASSERT(s = tail); DeleteLastSection
LINE 612
LDLW -8
LDGW OMSPG.tail
JEQ L464
CONST 0
CONST 612
GLOBAL EASSERT
CALL 2
LABEL L464
GLOBAL OMSPG.DeleteLastSection
CALL 0
LABEL L462
!     i := 0; REPEAT xs[i] := CHR(s.content.code[s.org + i]); INC(i) UNTIL i = Length(x) (*copy string in dest*)
LINE 614
CONST 0
STLW -4
LABEL L466
LDLW -8
NCHECK 614
LDNW 48
NCHECK 614
CONST 4
OFFSET
LDLW -8
NCHECK 614
LDNW 44
LDLW -4
PLUS
CONST 32000
BOUND 614
OFFSET
LOADC
CONVNC
LDLW 16
LDLW -4
LDLW 20
BOUND 614
STIC
INCL -4
LDLW -4
LDLW 12
GLOBAL OMSPG.Length
CALLW 1
JNEQ L466
RETURN
END

PROC OMSPG.MakeStringItem 0 6 0x00100001
!   PROCEDURE MakeStringItem*(VAR x: Item); (*copies string from OMSPS-buffer to OMSPG-string stored object*)
LINE 617
!   BEGIN stringPut(x, S.str, S.slen)
LINE 618
LDGW OMSPS.slen
CONST 1024
GLOBAL OMSPS.str
LDLW 16
LDLW 12
GLOBAL OMSPG.stringPut
CALL 5
RETURN
END

PROC OMSPG.MakeConstObject 12 7 0x00110001
!   PROCEDURE MakeConstObject*(VAR obj: B.Object); (*allocate space for a constant object in codata*)
LINE 621
!   BEGIN NewSection(mcode, s, "d", obj.name); obj.val := s.no;
LINE 623
LDLW 12
LOADW
NCHECK 623
CONST 24
OFFSET
CONST 32
SWAP
CONST 100
ALIGNC
LOCAL -4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPG.NewSection
CALL 6
LDLW -4
NCHECK 623
LOADW
LDLW 12
LOADW
NCHECK 623
STNW 56
!     FOR i := 1 TO obj.type.size DO EmitByte(s, 0FFH) END
LINE 624
LDLW 12
LOADW
NCHECK 624
LDNW 20
NCHECK 624
LDNW 32
STLW -12
CONST 1
STLW -8
LABEL L468
LDLW -8
LDLW -12
JGT L469
CONST 255
LDLW -4
GLOBAL OMSPG.EmitByte
CALL 2
INCL -8
JUMP L468
LABEL L469
RETURN
END

PROC OMSPG.Field 0 4 0x00500001
!   PROCEDURE Field*(VAR x: Item; y: B.Object);   (* x := x.y *)
LINE 629
!     IF x.mode IN {B.Var, B.StoredConst} THEN IF x.c > 0 THEN INC(x.a, y.val) ELSE INC(x.b,  y.val) END
LINE 631
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 631
LSL
CONST 516
BITAND
JEQZ L472
LDLW 12
LDNW 28
JLEQZ L475
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 631
LDNW 56
PLUS
SWAP
STOREW
RETURN
LABEL L475
LDLW 12
CONST 24
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 631
LDNW 56
PLUS
SWAP
STOREW
RETURN
LABEL L472
!     ELSIF x.mode IN {RegI, Absol} THEN INC(x.a, y.val)
LINE 632
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 632
LSL
CONST 10240
BITAND
JEQZ L477
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 632
LDNW 56
PLUS
SWAP
STOREW
RETURN
LABEL L477
!     ELSIF x.mode = B.Par THEN INC(x.b, y.val)
LINE 633
LDLW 12
LDNW 8
CONST 3
JNEQ L479
LDLW 12
CONST 24
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 633
LDNW 56
PLUS
SWAP
STOREW
RETURN
LABEL L479
!     ELSIF (x.mode = B.Const) & (y.type.form = B.Pointer) & (y.type.base.form = B.Proc) THEN INC(x.a, y.val); x.mode := Absol
LINE 634
LDLW 12
LDNW 8
CONST 1
JNEQ L481
LDLW 20
NCHECK 634
LDNW 20
NCHECK 634
LOADW
CONST 7
JNEQ L481
LDLW 20
NCHECK 634
LDNW 20
NCHECK 634
LDNW 28
NCHECK 634
LOADW
CONST 10
JNEQ L481
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 634
LDNW 56
PLUS
SWAP
STOREW
CONST 13
LDLW 12
STNW 8
RETURN
LABEL L481
!     ELSE S.Mark("not implemented"); PrintItem("Field", x)
LINE 635
CONST 16
GLOBAL OMSPG.%37
GLOBAL OMSPS.Mark
CALL 2
LDLW 12
CONST 6
GLOBAL OMSPG.%38
GLOBAL OMSPG.PrintItem
CALL 3
RETURN
END

PROC OMSPG.Index 56 6 0x00500189
!   PROCEDURE Index*(VAR x, y: Item);   (* x := x[y] *)
LINE 639
!   BEGIN t := c0;
LINE 641
LOCAL -52
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
!     IF x.type.form = B.String THEN s := 1; lim := x.b
LINE 642
LDLW 12
LDNW 12
NCHECK 642
LOADW
CONST 11
JNEQ L486
CONST 1
STLW -4
LDLW 12
LDNW 24
STLW -8
JUMP L484
LABEL L486
!     ELSE s := x.type.base.size; lim := x.type.len END;
LINE 643
LDLW 12
LDNW 12
NCHECK 643
LDNW 28
NCHECK 643
LDNW 32
STLW -4
LDLW 12
LDNW 12
NCHECK 643
LDNW 16
STLW -8
LABEL L484
!     IF s = 0 THEN S.Mark("Invalid array item size")
LINE 644
LDLW -4
JNEQZ L537
CONST 24
GLOBAL OMSPG.%39
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L537
!       IF (y.mode = B.Const) & ((traps[1] = NIL) OR (lim >= 0)) THEN
LINE 646
LDLW 20
LDNW 8
CONST 1
JNEQ L518
GLOBAL OMSPG.traps
LDNW 4
JEQZ L517
LDLW -8
JLTZ L518
LABEL L517
!         IF (y.a < 0) OR (lim >= 0) & (y.a >= lim) THEN S.Mark("bad index") END ;
LINE 647
LDLW 20
LDNW 20
JLTZ L520
LDLW -8
JLTZ L521
LDLW 20
LDNW 20
LDLW -8
JLT L521
LABEL L520
CONST 10
GLOBAL OMSPG.%40
GLOBAL OMSPS.Mark
CALL 2
LABEL L521
!         IF (x.mode IN {B.Var, B.StoredConst}) THEN IF x.c > 0 THEN INC(x.a, y.a*s) ELSE INC(x.b,  y.a*s) END
LINE 648
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 648
LSL
CONST 516
BITAND
JEQZ L526
LDLW 12
LDNW 28
JLEQZ L529
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDLW 20
LDNW 20
LDLW -4
TIMES
PLUS
SWAP
STOREW
RETURN
LABEL L529
LDLW 12
CONST 24
OFFSET
DUP 0
LOADW
LDLW 20
LDNW 20
LDLW -4
TIMES
PLUS
SWAP
STOREW
RETURN
LABEL L526
!         ELSIF x.mode = RegI THEN INC(x.a, y.a*s)
LINE 649
LDLW 12
LDNW 8
CONST 11
JNEQ L531
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDLW 20
LDNW 20
LDLW -4
TIMES
PLUS
SWAP
STOREW
RETURN
LABEL L531
!         ELSIF x.mode = B.Par THEN INC(x.b, y.a*s)
LINE 650
LDLW 12
LDNW 8
CONST 3
JNEQ L533
LDLW 12
CONST 24
OFFSET
DUP 0
LOADW
LDLW 20
LDNW 20
LDLW -4
TIMES
PLUS
SWAP
STOREW
RETURN
LABEL L533
!         ELSE S.Mark("bad mode in index")
LINE 651
CONST 18
GLOBAL OMSPG.%41
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L518
!         IF traps[1] # NIL THEN  (*check array bounds*)
LINE 654
GLOBAL OMSPG.traps
LDNW 4
JEQZ L491
!           IF lim >= 0 THEN t.a := lim; PutDO(A.CMP, t, y)
LINE 655
LDLW -8
JLTZ L499
LDLW -8
STLW -32
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -52
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
JUMP L492
LABEL L499
!           ELSE (*open array*) t := x; t.type := B.intType;
LINE 656
LOCAL -52
LDLW 12
CONST 44
FIXCOPY
LDGW OMSPB.intType
STLW -40
!             IF x.mode IN {B.Var, B.Par} THEN t.mode := B.Var; INC(t.a, WordSize)
LINE 657
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 657
LSL
CONST 12
BITAND
JEQZ L495
CONST 2
STLW -44
LDLW -32
CONST 2
PLUS
STLW -32
JUMP L493
LABEL L495
!             ELSIF x.mode IN {Reg, RegI} THEN t.mode := Reg; INC(t.reg)
LINE 658
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 658
LSL
CONST 3072
BITAND
JEQZ L497
CONST 10
STLW -44
LDLC -52
INC
STLC -52
JUMP L493
LABEL L497
!             ELSE S.Mark("error in Index")
LINE 659
CONST 15
GLOBAL OMSPG.%42
GLOBAL OMSPS.Mark
CALL 2
LABEL L493
!             END; PutDO(A.CMP, t, y)
LINE 660
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -52
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LABEL L492
!           Trap(A.C, 1) (*MSP430 inverts the carry with SUB and CMP instructions*)
LINE 662
CONST 1
CONST 3
GLOBAL OMSPG.Trap
CALL 2
LABEL L491
!         IF s # 1 THEN t := c0; t.a := s; PutDO(A.MUL, t, y) END;
LINE 664
LDLW -4
CONST 1
JEQ L502
LOCAL -52
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW -4
STLW -32
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -52
CONST 0
GLOBAL OMSPG.PutDO
CALL 5
LABEL L502
!         IF x.mode IN {B.Var, B.StoredConst} THEN
LINE 665
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 665
LSL
CONST 516
BITAND
JEQZ L505
!           load(y, 0FFH); y.type := B.intType; typ := x.type;
LINE 666
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
LDGW OMSPB.intType
LDLW 20
STNW 12
LDLW 12
LDNW 12
STLW -56
!           IF x.c > 0 THEN t := sp; PutDO(A.ADD, t, y); (*TODO : tester*) INC(x.a, frame);
LINE 667
LDLW 12
LDNW 28
JLEQZ L508
LOCAL -52
GLOBAL OMSPG.sp
CONST 44
FIXCOPY
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -52
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDGW OMSPG.frame
PLUS
SWAP
STOREW
JUMP L506
LABEL L508
!           ELSE Adr(x); x.ptr := FALSE
LINE 668
LDLW 16
LDLW 12
GLOBAL OMSPG.Adr
CALL 2
CONST 0
LDLW 12
CONST 43
STIC
LABEL L506
!           free(x); x.reg := y.reg; x.mode := RegI; x.tmp := TRUE; x.type := typ
LINE 670
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLW 20
LOADC
LDLW 12
STOREC
CONST 11
LDLW 12
STNW 8
CONST 1
LDLW 12
CONST 41
STIC
LDLW -56
LDLW 12
STNW 12
RETURN
LABEL L505
!         ELSIF x.mode = B.Par THEN load(y, 0FFH); t.mode := B.Var;
LINE 671
LDLW 12
LDNW 8
CONST 3
JNEQ L510
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
CONST 2
STLW -44
!           t.c := x.c; t.a := x.a; t.tmp := FALSE; t.obj := x.obj; t.type := B.intType; t.ladr := FALSE; t.ptr := FALSE;
LINE 672
LDLW 12
LDNW 28
STLW -24
LDLW 12
LDNW 20
STLW -32
CONST 0
STLC -11
LDLW 12
LDNW 16
STLW -36
LDGW OMSPB.intType
STLW -40
CONST 0
STLC -10
CONST 0
STLC -9
!           PutDO(A.ADD, t, y); free(t);
LINE 673
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -52
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
GLOBAL OMSPG.Item
LOCAL -52
GLOBAL OMSPG.free
CALL 2
!           free(x); x.mode := RegI; x.reg := y.reg; x.a := x.b; x.tmp := TRUE
LINE 674
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
CONST 11
LDLW 12
STNW 8
LDLW 20
LOADC
LDLW 12
STOREC
LDLW 12
LDNW 24
LDLW 12
STNW 20
CONST 1
LDLW 12
CONST 41
STIC
RETURN
LABEL L510
!         ELSIF x.mode = RegI THEN t := x; t.mode := Reg; t.type := B.intType; PutDO( A.ADD, t, y); free(x);
LINE 675
LDLW 12
LDNW 8
CONST 11
JNEQ L512
LOCAL -52
LDLW 12
CONST 44
FIXCOPY
CONST 10
STLW -44
LDGW OMSPB.intType
STLW -40
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -52
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
!            x.mode := RegI; x.reg := y.reg; x.tmp := TRUE
LINE 676
CONST 11
LDLW 12
STNW 8
LDLW 20
LOADC
LDLW 12
STOREC
CONST 1
LDLW 12
CONST 41
STIC
RETURN
LABEL L512
!         ELSIF x.mode = Absol THEN ASSERT(y.mode = Reg);
LINE 677
LDLW 12
LDNW 8
CONST 13
JNEQ L514
LDLW 20
LDNW 8
CONST 10
JEQ L516
CONST 0
CONST 677
GLOBAL EASSERT
CALL 2
LABEL L516
!           x.mode := RegI; x.reg := y.reg; x.tmp := TRUE;
LINE 678
CONST 11
LDLW 12
STNW 8
LDLW 20
LOADC
LDLW 12
STOREC
CONST 1
LDLW 12
CONST 41
STIC
RETURN
LABEL L514
!         ELSE S.Mark("bad mode in index")
LINE 679
CONST 18
GLOBAL OMSPG.%41
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.DeRef 0 4 0x00100001
!   PROCEDURE DeRef*(VAR x: Item);
LINE 685
!     IF x.type.base.form = B.Proc THEN x.ptr := FALSE
LINE 687
LDLW 12
LDNW 12
NCHECK 687
LDNW 28
NCHECK 687
LOADW
CONST 10
JNEQ L540
CONST 0
LDLW 12
CONST 43
STIC
JUMP L538
LABEL L540
!     ELSIF x.mode IN {B.Var, B.StoredConst, B.Par, RegI} THEN load(x, 0FFH); NilCheck(x.reg); x.mode := RegI; x.a := 0
LINE 688
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 688
LSL
CONST 2572
BITAND
JEQZ L542
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
LDLW 12
LOADC
GLOBAL OMSPG.NilCheck
CALL 1
CONST 11
LDLW 12
STNW 8
CONST 0
LDLW 12
STNW 20
JUMP L538
LABEL L542
!     ELSIF x.mode = Reg THEN x.mode := RegI; x.a := 0
LINE 689
LDLW 12
LDNW 8
CONST 10
JNEQ L544
CONST 11
LDLW 12
STNW 8
CONST 0
LDLW 12
STNW 20
JUMP L538
LABEL L544
!     ELSIF (x.mode = B.Const) & (x.type.form = B.Pointer) THEN x.mode := Absol
LINE 690
LDLW 12
LDNW 8
CONST 1
JNEQ L546
LDLW 12
LDNW 12
NCHECK 690
LOADW
CONST 7
JNEQ L546
CONST 13
LDLW 12
STNW 8
JUMP L538
LABEL L546
!     ELSE S.Mark("bad mode in DeRef")
LINE 691
CONST 18
GLOBAL OMSPG.%43
GLOBAL OMSPS.Mark
CALL 2
LABEL L538
!     END; x.b := 0
LINE 692
CONST 0
LDLW 12
STNW 24
RETURN
END

PROC OMSPG.Q 8 7 0x00310001
!   PROCEDURE Q(T: B.Type; s: Section);
LINE 695
!     IF T.base # NIL THEN f := GetFixup(s, T.base.mno, T.base.len, 0, 0FFH, 0);
LINE 698
LDLW 12
NCHECK 698
LDNW 28
JEQZ L550
CONST 0
CONST 255
CONST 0
LDLW 12
NCHECK 698
LDNW 28
NCHECK 698
LDNW 16
LDLW 12
NCHECK 698
LDNW 28
NCHECK 698
LDNW 8
CONVNC
LDLW 16
GLOBAL OMSPG.GetFixup
CALLW 6
STLW -4
!       Q(T.base, s); adr := s.content.pc - s.org + 1; EmitWord(s, f.fixadr); f.fixadr := adr
LINE 699
LDLW 16
LDLW 12
NCHECK 699
LDNW 28
GLOBAL OMSPG.Q
CALL 2
LDLW 16
NCHECK 699
LDNW 48
NCHECK 699
LOADW
LDLW 16
NCHECK 699
LDNW 44
MINUS
INC
STLW -8
LDLW -4
NCHECK 699
LOADW
LOCAL 16
GLOBAL OMSPG.EmitWord
CALL 2
LDLW -8
LDLW -4
NCHECK 699
STOREW
LABEL L550
RETURN
END

PROC OMSPG.BuildTD 8 7 0x00108001
!   PROCEDURE BuildTD*(T: B.Type);
LINE 703
!   BEGIN NewSection(mcode, s, "d", T.typobj.name); EmitWord(s, T.size);
LINE 705
LDLW 12
NCHECK 705
LDNW 24
NCHECK 705
CONST 24
OFFSET
CONST 32
SWAP
CONST 100
ALIGNC
LOCAL -8
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPG.NewSection
CALL 6
LDLW 12
NCHECK 705
LDNW 32
LOCAL -8
GLOBAL OMSPG.EmitWord
CALL 2
!     T.len := s.no; (*len used as section number*);
LINE 706
LDLW -8
NCHECK 706
LOADW
LDLW 12
NCHECK 706
STNW 16
!     k := T.nofpar;   (*extension level!*)
LINE 707
LDLW 12
NCHECK 707
LDNW 12
STLW -4
!     IF k > 3 THEN S.Mark("ext level too large")
LINE 708
LDLW -4
CONST 3
JLEQ L556
CONST 20
GLOBAL OMSPG.%44
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L556
!     ELSE Q(T, s);
LINE 709
LDLW -8
LDLW 12
GLOBAL OMSPG.Q
CALL 2
LABEL L552
!       WHILE k < 3 DO EmitWord(s, -1); INC(k) END
LINE 710
LDLW -4
CONST 3
JGEQ L554
CONST -1
LOCAL -8
GLOBAL OMSPG.EmitWord
CALL 2
INCL -4
JUMP L552
LABEL L554
RETURN
END

PROC OMSPG.TypeTest 132 6 OMSPG.TypeTest.%map
!   PROCEDURE TypeTest*(VAR x: Item; T: B.Type; varpar, isguard: BOOLEAN);
LINE 714
!     IF TypeChecked() OR ~isguard THEN
LINE 717
GLOBAL OMSPG.TypeChecked
CALLW 0
JNEQZ L558
LDLC 28
JNEQZ L559
LABEL L558
!       IF T = NIL THEN free(x); SetCC(x, A.AL)
LINE 718
LDLW 20
JNEQZ L573
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
CONST 7
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
LABEL L573
!       ELSE rh.reg := AllocR(); (*fetch tag into RH*)
LINE 719
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!         IF varpar THEN t := x;
LINE 720
LDLC 24
JEQZ L563
LOCAL -44
LDLW 12
CONST 44
FIXCOPY
!           IF t.mode IN {B.Var, B.Par} THEN t.mode := B.Var; INC(t.a, WordSize)
LINE 721
CONST 1
LDLW -36
CONST 32
BOUND 721
LSL
CONST 12
BITAND
JEQZ L566
CONST 2
STLW -36
LDLW -24
CONST 2
PLUS
STLW -24
JUMP L564
LABEL L566
!           ELSIF t.mode IN {Reg, RegI} THEN t.mode := Reg; INC(t.reg)
LINE 722
CONST 1
LDLW -36
CONST 32
BOUND 722
LSL
CONST 3072
BITAND
JEQZ L568
CONST 10
STLW -36
LDLC -44
INC
STLC -44
JUMP L564
LABEL L568
!           ELSE S.Mark("error in TypeTest")
LINE 723
CONST 18
GLOBAL OMSPG.%45
GLOBAL OMSPS.Mark
CALL 2
LABEL L564
!           END; PutDO(A.MOV, t, rh); free(x);
LINE 724
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -44
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
!           t := rh; t.mode := RegI; t.a := T.nofpar*2; pt := t; pt.mode := Reg; pt.rdo := FALSE; PutDO(A.MOV, t, pt);
LINE 725
LOCAL -44
GLOBAL OMSPG.rh
CONST 44
FIXCOPY
CONST 11
STLW -36
LDLW 20
NCHECK 725
LDNW 12
CONST 2
TIMES
STLW -24
LOCAL -88
LOCAL -44
CONST 44
FIXCOPY
CONST 10
STLW -80
CONST 0
STLC -48
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.Item
LOCAL -44
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
!           MakeTypTagAdr(tt, T); PutDO(A.CMP, tt, pt);
LINE 726
LDLW 20
GLOBAL OMSPG.Item
LOCAL -132
GLOBAL OMSPG.MakeTypTagAdr
CALL 3
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.Item
LOCAL -132
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
!           freeR(pt.reg); free(tt);
LINE 727
LDLC -88
GLOBAL OMSPG.freeR
CALL 1
GLOBAL OMSPG.Item
LOCAL -132
GLOBAL OMSPG.free
CALL 2
!           IF isguard THEN Trap(A.NE, 2) ELSE SetCC(x, A.EQ) END;
LINE 728
LDLC 28
JEQZ L571
CONST 2
CONST 0
GLOBAL OMSPG.Trap
CALL 2
RETURN
LABEL L571
CONST 1
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
LABEL L563
!         ELSE S.Mark("pointer not allowed")
LINE 729
CONST 20
GLOBAL OMSPG.%46
GLOBAL OMSPS.Mark
CALL 2
LABEL L559
RETURN
END

PROC OMSPG.SetVector 8 7 0x00210001
!   PROCEDURE SetVector*(n: BYTE; VAR h: B.Object);
LINE 735
!   BEGIN at := + n*WordSize + 1;
LINE 737
LDLC 12
CONST 2
TIMES
INC
STLW -8
!     IF A.GetWordAt(vectors.content^, vectors.org + at - 1) # 0FFFFH THEN S.Mark("vect mult def")
LINE 738
LDGW OMSPG.vectors
NCHECK 738
LDNW 44
LDLW -8
PLUS
DEC
LDGW OMSPG.vectors
NCHECK 738
LDNW 48
NCHECK 738
DUP 0
LDNW -4
SWAP
GLOBAL OMSPA.GetWordAt
CALLW 3
CONST 65535
JEQ L577
CONST 14
GLOBAL OMSPG.%47
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L577
!     ELSE f := GetFixup(vectors, -h.lev, h.val, 0, 0FFH, 0); A.PutWordAt(vectors.content^, vectors.org + at - 1, f.fixadr); f.fixadr := at
LINE 739
CONST 0
CONST 255
CONST 0
LDLW 16
LOADW
NCHECK 739
LDNW 56
LDLW 16
LOADW
NCHECK 739
LDNW 8
UMINUS
CONVNC
LDGW OMSPG.vectors
GLOBAL OMSPG.GetFixup
CALLW 6
STLW -4
LDLW -4
NCHECK 739
LOADW
LDGW OMSPG.vectors
NCHECK 739
LDNW 44
LDLW -8
PLUS
DEC
LDGW OMSPG.vectors
NCHECK 739
LDNW 48
NCHECK 739
DUP 0
LDNW -4
SWAP
GLOBAL OMSPA.PutWordAt
CALL 4
LDLW -8
LDLW -4
NCHECK 739
STOREW
RETURN
END

PROC OMSPG.Not 4 3 0x00100001
!   PROCEDURE Not*(VAR x: Item);   (* x := ~x *)
LINE 745
!     IF x.mode # Cond THEN loadCond(x) END ;
LINE 748
LDLW 12
LDNW 8
CONST 12
JEQ L580
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L580
!     x.c := A.negated(x.c); t := x.a; x.a := x.b; x.b := t
LINE 749
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
LDLW 12
STNW 28
LDLW 12
LDNW 20
STLW -4
LDLW 12
LDNW 24
LDLW 12
STNW 20
LDLW -4
LDLW 12
STNW 24
RETURN
END

PROC OMSPG.PutJFix 4 5 0
!   PROCEDURE PutJFix(cond: BYTE; adr: INTEGER);
LINE 752
!   BEGIN IF adr = 0 THEN offset := 0 ELSE offset := mcode.pc - adr END;
LINE 754
LDLW 16
JNEQZ L583
CONST 0
STLW -4
JUMP L581
LABEL L583
LDGW OMSPG.mcode
LDLW 16
MINUS
STLW -4
LABEL L581
!     A.PutJ(mcode, cond, offset)
LINE 755
LDLW -4
LDLC 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
RETURN
END

PROC OMSPG.And1 0 3 0x00100001
!   PROCEDURE And1*(VAR x: Item);   (* x := x & *)
LINE 758
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 760
LDLW 12
LDNW 8
CONST 12
JEQ L586
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L586
!     PutJFix(A.negated(x.c), x.a);
LINE 761
LDLW 12
LDNW 20
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
CONVNC
GLOBAL OMSPG.PutJFix
CALL 2
!     x.a := mcode.pc-2; FixLink(x.b); x.b := 0
LINE 762
LDGW OMSPG.mcode
CONST 2
MINUS
LDLW 12
STNW 20
LDLW 12
LDNW 24
GLOBAL OMSPG.FixLink
CALL 1
CONST 0
LDLW 12
STNW 24
RETURN
END

PROC OMSPG.And2 0 5 0x00500001
!   PROCEDURE And2*(VAR x, y: Item);
LINE 765
!     IF y.mode # Cond THEN loadCond(y) END ;
LINE 767
LDLW 20
LDNW 8
CONST 12
JEQ L589
LDLW 24
LDLW 20
GLOBAL OMSPG.loadCond
CALL 2
LABEL L589
!     x.a := A.merged(mcode, y.a, x.a); x.b := y.b; x.c := y.c
LINE 768
LDLW 12
LDNW 20
LDLW 20
LDNW 20
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.merged
CALLW 4
LDLW 12
STNW 20
LDLW 20
LDNW 24
LDLW 12
STNW 24
LDLW 20
LDNW 28
LDLW 12
STNW 28
RETURN
END

PROC OMSPG.Or1 0 3 0x00100001
!   PROCEDURE Or1*(VAR x: Item);   (* x := x OR *)
LINE 771
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 773
LDLW 12
LDNW 8
CONST 12
JEQ L592
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L592
!     PutJFix(x.c, x.b);
LINE 774
LDLW 12
LDNW 24
LDLW 12
LDNW 28
CONVNC
GLOBAL OMSPG.PutJFix
CALL 2
!     x.b := mcode.pc-2; FixLink(x.a); x.a := 0
LINE 775
LDGW OMSPG.mcode
CONST 2
MINUS
LDLW 12
STNW 24
LDLW 12
LDNW 20
GLOBAL OMSPG.FixLink
CALL 1
CONST 0
LDLW 12
STNW 20
RETURN
END

PROC OMSPG.Or2 0 5 0x00500001
!   PROCEDURE Or2*(VAR x, y: Item);
LINE 778
!     IF y.mode # Cond THEN loadCond(y) END ;
LINE 780
LDLW 20
LDNW 8
CONST 12
JEQ L595
LDLW 24
LDLW 20
GLOBAL OMSPG.loadCond
CALL 2
LABEL L595
!     x.a := y.a; x.b := A.merged(mcode, y.b, x.b); x.c := y.c
LINE 781
LDLW 20
LDNW 20
LDLW 12
STNW 20
LDLW 12
LDNW 24
LDLW 20
LDNW 24
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.merged
CALLW 4
LDLW 12
STNW 24
LDLW 20
LDNW 28
LDLW 12
STNW 28
RETURN
END

PROC OMSPG.Neg 44 6 0x00100601
!   PROCEDURE Neg*(VAR x: Item);   (* x := -x *)
LINE 786
!     IF x.type.form = B.Int THEN
LINE 789
LDLW 12
LDNW 12
NCHECK 789
LOADW
CONST 4
JNEQ L601
!       IF x.mode = B.Const THEN x.a := -x.a
LINE 790
LDLW 12
LDNW 8
CONST 1
JNEQ L604
LDLW 12
LDNW 20
UMINUS
LDLW 12
STNW 20
RETURN
LABEL L604
!       ELSE PutSO(A.NEG, x)
LINE 791
LDLW 16
LDLW 12
CONST 1
GLOBAL OMSPG.PutSO
CALL 3
RETURN
LABEL L601
!       IF x.mode = B.Const THEN x.a := -x.a-1
LINE 794
LDLW 12
LDNW 8
CONST 1
JNEQ L599
LDLW 12
LDNW 20
UMINUS
DEC
LDLW 12
STNW 20
RETURN
LABEL L599
!       ELSE t := cm1; PutDO(A.XOR, t, x)
LINE 795
LOCAL -44
GLOBAL OMSPG.cm1
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 14
GLOBAL OMSPG.PutDO
CALL 5
RETURN
END

PROC OMSPG.PrepCall 0 5 0x01d00001
!   PROCEDURE PrepCall*(VAR x: Item; VAR r, or: SET; VAR am: BOOLEAN);
LINE 800
!   BEGIN (*x.type.form = OM4B.Proc*) (* xr := -1; *) am := AllocUp;
LINE 801
LDGC OMSPG.AllocUp
LDLW 28
STOREC
!     r := RIU; IF x.mode IN {Reg, RegI} THEN EXCL(r, x.reg) END;
LINE 802
LDGW OMSPG.RIU
LDLW 20
STOREW
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 802
LSL
CONST 3072
BITAND
JEQZ L607
LDLW 20
DUP 0
LOADW
CONST 1
LDLW 12
LOADC
CONST 32
BOUND 802
LSL
BITNOT
BITAND
SWAP
STOREW
LABEL L607
!     or := x.type.ur*r; (*overwritten registers currently in use by the caller*)
LINE 803
LDLW 12
LDNW 12
NCHECK 803
LDNW 40
LDLW 20
LOADW
BITAND
LDLW 24
STOREW
!     SaveRegs(or); RIU := RIU - or;
LINE 804
LDLW 24
LOADW
GLOBAL OMSPG.SaveRegs
CALL 1
LDGW OMSPG.RIU
LDLW 24
LOADW
BITNOT
BITAND
STGW OMSPG.RIU
!     IF ~(x.mode IN {B.StoredConst, Absol}) & (x.mode > B.Par) THEN push(x, 2) END;
LINE 805
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 805
LSL
CONST 8704
BITAND
JNEQZ L610
LDLW 12
LDNW 8
CONST 3
JLEQ L610
CONST 2
LDLW 16
LDLW 12
GLOBAL OMSPG.push
CALL 3
LABEL L610
!     IF x.obj.type.leaf THEN SetAllocationMode(Register) END;
LINE 806
LDLW 12
LDNW 16
NCHECK 806
LDNW 20
NCHECK 806
CONST 36
LDIC
JEQZ L614
CONST 1
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
LABEL L614
!     PRU := PRU + (x.type.ur - or)
LINE 807
LDGW OMSPG.PRU
LDLW 12
LDNW 12
NCHECK 807
LDNW 40
LDLW 24
LOADW
BITNOT
BITAND
BITOR
STGW OMSPG.PRU
RETURN
END

PROC OMSPG.getParSize 12 3 0x00110001
!   PROCEDURE getParSize(typ: B.Type): INTEGER;
LINE 810
!   BEGIN par := typ.dsc; n := typ.nofpar; size := 0;
LINE 812
LDLW 12
NCHECK 812
LDNW 20
STLW -4
LDLW 12
NCHECK 812
LDNW 12
STLW -8
CONST 0
STLW -12
LABEL L615
!     WHILE n > 0 DO IF par.register = 0FFH THEN
LINE 813
LDLW -8
JLEQZ L617
LDLW -4
NCHECK 813
CONST 2
LDIC
CONST 255
JNEQ L620
!         IF (par.type.form = B.Array) & (par.type.len < 0) OR (par.type.form = B.Record) THEN INC(size, 2*WordSize)
LINE 814
LDLW -4
NCHECK 814
LDNW 20
NCHECK 814
LOADW
CONST 12
JNEQ L624
LDLW -4
NCHECK 814
LDNW 20
NCHECK 814
LDNW 16
JLTZ L622
LABEL L624
LDLW -4
NCHECK 814
LDNW 20
NCHECK 814
LOADW
CONST 13
JNEQ L623
LABEL L622
LDLW -12
CONST 4
PLUS
STLW -12
JUMP L620
LABEL L623
!         ELSE INC(size, WordSize)
LINE 815
LDLW -12
CONST 2
PLUS
STLW -12
LABEL L620
!       par := par.next; DEC(n)
LINE 818
LDLW -4
NCHECK 818
LDNW 12
STLW -4
DECL -8
JUMP L615
LABEL L617
!     RETURN size
LINE 821
LDLW -12
RETURN
END

PROC OMSPG.Call 92 6 OMSPG.Call.%map
!   PROCEDURE Call*(VAR x: Item; r, or: SET; am: BOOLEAN);
LINE 824
!   BEGIN (*x.type.form = B.Proc*) s := getParSize(x.type);
LINE 826
LDLW 12
LDNW 12
GLOBAL OMSPG.getParSize
CALLW 1
STLW -92
!     IF x.mode = B.StoredConst THEN
LINE 827
LDLW 12
LDNW 8
CONST 9
JNEQ L635
!       IF x.c > 0 THEN x.c := 0 END; (*inner procedure are called the same way as global procedures*) 
LINE 828
LDLW 12
LDNW 28
JLEQZ L638
CONST 0
LDLW 12
STNW 28
LABEL L638
!       PutSO(A.CALL, x)
LINE 829
LDLW 16
LDLW 12
CONST 37
GLOBAL OMSPG.PutSO
CALL 3
JUMP L626
LABEL L635
!     ELSE IF (x.mode # Absol) & (x.mode > B.Par) THEN x.mode := RegI; x.reg := A.SP; x.a := s; INC(s, WordSize) END;
LINE 830
LDLW 12
LDNW 8
CONST 13
JEQ L629
LDLW 12
LDNW 8
CONST 3
JLEQ L629
CONST 11
LDLW 12
STNW 8
CONST 1
LDLW 12
STOREC
LDLW -92
LDLW 12
STNW 20
LDLW -92
CONST 2
PLUS
STLW -92
LABEL L629
!       IF traps[5] # NIL THEN t := c0; PutDO(A.CMP, t, x); Trap(A.EQ, 5) END;
LINE 831
GLOBAL OMSPG.traps
LDNW 20
JEQZ L633
LOCAL -88
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -88
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 5
CONST 1
GLOBAL OMSPG.Trap
CALL 2
LABEL L633
!       PutSO(A.CALL, x); free(x)
LINE 832
LDLW 16
LDLW 12
CONST 37
GLOBAL OMSPG.PutSO
CALL 3
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LABEL L626
!     IF s # 0 THEN t := c0; t.a := s; rr := sp; PutDO(A.ADD, t, rr); DEC(frame, s) END;
LINE 834
LDLW -92
JEQZ L641
LOCAL -88
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW -92
STLW -68
LOCAL -44
GLOBAL OMSPG.sp
CONST 44
FIXCOPY
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.Item
LOCAL -88
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
GLOBAL OMSPG.frame
DUP 0
LOADW
LDLW -92
MINUS
SWAP
STOREW
LABEL L641
!     IF x.type.base.form = B.NoTyp THEN (*procedure*) RIU := VRS; SetAllocationMode(am)
LINE 835
LDLW 12
LDNW 12
NCHECK 835
LDNW 28
NCHECK 835
LOADW
CONST 9
JNEQ L647
LDGW OMSPG.VRS
STGW OMSPG.RIU
LDLC 28
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
JUMP L643
LABEL L647
!       x.tmp := TRUE; x.mode := Reg; x.ladr := FALSE; x.ptr := FALSE; funcResultRegister(x.type, rr); x.reg := rr.reg; x.am := A.Register;
LINE 837
CONST 1
LDLW 12
CONST 41
STIC
CONST 10
LDLW 12
STNW 8
CONST 0
LDLW 12
CONST 42
STIC
CONST 0
LDLW 12
CONST 43
STIC
GLOBAL OMSPG.Item
LOCAL -44
LDLW 12
LDNW 12
GLOBAL OMSPG.funcResultRegister
CALL 3
LDLC -44
LDLW 12
STOREC
CONST 0
LDLW 12
CONST 1
STIC
!       RIU := r; SetAllocationMode(am);
LINE 838
LDLW 20
STGW OMSPG.RIU
LDLC 28
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
!       IF rr.reg IN RIU THEN x.tmp := FALSE; load(x, 0FFH) (*move result in a free register*)
LINE 839
LDGW OMSPG.RIU
CONST 1
LDLC -44
CONST 32
BOUND 839
LSL
BITAND
JEQZ L645
CONST 0
LDLW 12
CONST 41
STIC
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
JUMP L643
LABEL L645
!       ELSE INCL(RIU, rr.reg)
LINE 840
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLC -44
CONST 32
BOUND 840
LSL
BITOR
SWAP
STOREW
LABEL L643
!     RestoreRegs(or); RIU := RIU + or
LINE 843
LDLW 24
GLOBAL OMSPG.RestoreRegs
CALL 1
LDGW OMSPG.RIU
LDLW 24
BITOR
STGW OMSPG.RIU
RETURN
END

PROC OMSPG.AddOp 4 6 0x00a00001
!   PROCEDURE AddOp*(op: INTEGER; VAR x, y: Item);   (* x := x +- y *)
LINE 846
!     IF op = S.plus THEN
LINE 849
LDLW 12
CONST 6
JNEQ L659
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := x.a + y.a
LINE 850
LDLW 16
LDNW 8
CONST 1
JNEQ L662
LDLW 24
LDNW 8
CONST 1
JNEQ L662
LDLW 16
LDNW 20
LDLW 24
LDNW 20
PLUS
LDLW 16
STNW 20
RETURN
LABEL L662
!       ELSIF y.mode = B.Const THEN
LINE 851
LDLW 24
LDNW 8
CONST 1
JNEQ L665
!         IF y.a # 0 THEN PutDO(A.ADD, y, x) END
LINE 852
LDLW 24
LDNW 20
JEQZ L649
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L665
!       ELSIF (x.mode = B.Const) & (x.a = 0) THEN tmp := convertSize(y, x.type); x := y; 
LINE 853
LDLW 16
LDNW 8
CONST 1
JNEQ L670
LDLW 16
LDNW 20
JNEQZ L670
LDLW 16
LDNW 12
LDLW 28
LDLW 24
GLOBAL OMSPG.convertSize
CALLW 3
STLC -1
LDLW 20
GLOBAL OMSPG.Item
JEQ L671
ERROR E_ASSIGN 853
LABEL L671
LDLW 16
LDLW 24
CONST 44
FIXCOPY
RETURN
LABEL L670
!       ELSE PutDO(A.ADD, y, x); free(y)
LINE 854
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
RETURN
LABEL L659
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := x.a - y.a
LINE 857
LDLW 16
LDNW 8
CONST 1
JNEQ L651
LDLW 24
LDNW 8
CONST 1
JNEQ L651
LDLW 16
LDNW 20
LDLW 24
LDNW 20
MINUS
LDLW 16
STNW 20
RETURN
LABEL L651
!       ELSIF y.mode = B.Const THEN
LINE 858
LDLW 24
LDNW 8
CONST 1
JNEQ L654
!         IF y.a # 0 THEN PutDO(A.SUB, y, x) END
LINE 859
LDLW 24
LDNW 20
JEQZ L649
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L654
!       ELSE PutDO(A.SUB, y, x); free(y)
LINE 860
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LABEL L649
RETURN
END

PROC OMSPG.MulOp 144 6 OMSPG.MulOp.%map
!   PROCEDURE MulOp*(VAR x, y: Item);   (* x := x * y *)
LINE 865
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := x.a * y.a
LINE 868
LDLW 12
LDNW 8
CONST 1
JNEQ L678
LDLW 20
LDNW 8
CONST 1
JNEQ L678
LDLW 12
LDNW 20
LDLW 20
LDNW 20
TIMES
LDLW 12
STNW 20
RETURN
LABEL L678
!     ELSIF (y.mode = B.Const) (* & (y.a >= 2) *)THEN load(x, 0FFH); PutDO(A.MUL, y, x) (*TODO tester*)
LINE 869
LDLW 20
LDNW 8
CONST 1
JNEQ L681
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
LDLW 16
LDLW 12
LDLW 24
LDLW 20
CONST 0
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L681
!     ELSIF (x.mode = B.Const) (* & (x.a >= 2) *)THEN load(y, 0FFH); PutDO(A.MUL, x, y); (*TODO tester*)
LINE 870
LDLW 12
LDNW 8
CONST 1
JNEQ L683
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
LDLW 24
LDLW 20
LDLW 16
LDLW 12
CONST 0
GLOBAL OMSPG.PutDO
CALL 5
!       x.mode := Reg; x.reg := y.reg; x.am := A.Register; x.ofs := 0; x.tmp := TRUE
LINE 871
CONST 10
LDLW 12
STNW 8
LDLW 20
LOADC
LDLW 12
STOREC
CONST 0
LDLW 12
CONST 1
STIC
CONST 0
LDLW 12
STNW 4
CONST 1
LDLW 12
CONST 41
STIC
RETURN
LABEL L683
!       IF arith[0] = NIL THEN S.Mark("import Arith.mul16 function")
LINE 873
LDGW OMSPG.arith
JNEQZ L676
CONST 28
GLOBAL OMSPG.%48
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L676
!       ELSE MakeItem(p, arith[0], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); Call(p, r, or, pau);
LINE 874
CONST 0
LDGW OMSPG.arith
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.MakeItem
CALL 4
LOCAL -88
LDLW 12
CONST 44
FIXCOPY
LOCAL -132
LDLW 20
CONST 44
FIXCOPY
LOCAL -141
LOCAL -140
LOCAL -136
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.PrepCall
CALL 5
CONST 5
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
CONST 6
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
LDLC -141
ALIGNC
LDLW -140
LDLW -136
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.Call
CALL 5
!         free(x0); free(y0); x.reg := p.reg
LINE 875
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.free
CALL 2
GLOBAL OMSPG.Item
LOCAL -132
GLOBAL OMSPG.free
CALL 2
LDLC -44
LDLW 12
STOREC
RETURN
END

PROC OMSPG.DivOp 192 6 OMSPG.DivOp.%map
!   PROCEDURE DivOp*(op: INTEGER; VAR x, y: Item);   (* x := x op y *)
LINE 880
!   BEGIN t := c0;
LINE 882
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
!     IF op = S.div THEN
LINE 883
LDLW 12
CONST 3
JNEQ L703
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 884
LDLW 16
LDNW 8
CONST 1
JNEQ L712
LDLW 24
LDNW 8
CONST 1
JNEQ L712
!         IF y.a > 0 THEN x.a := x.a DIV y.a ELSE S.Mark("bad divisor") END
LINE 885
LDLW 24
LDNW 20
JLEQZ L715
LDLW 16
LDNW 20
LDLW 24
LDNW 20
ZCHECK 885
DIV
LDLW 16
STNW 20
RETURN
LABEL L715
CONST 12
GLOBAL OMSPG.%49
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L712
!       ELSIF (y.mode = B.Const) & (y.a >= 2) & (A.log2(y.a, e) = 1) THEN load(x, 0FFH); PutDO(A.DIv, y, x); (*TODO tester*)
LINE 886
LDLW 24
LDNW 8
CONST 1
JNEQ L718
LDLW 24
LDNW 20
CONST 2
JLT L718
LOCAL -192
LDLW 24
LDNW 20
GLOBAL OMSPA.log2
CALLW 2
CONST 1
JNEQ L718
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 2
GLOBAL OMSPG.PutDO
CALL 5
!         x.mode := Reg; x.am := A.Register; x.ofs := 0
LINE 887
CONST 10
LDLW 16
STNW 8
CONST 0
LDLW 16
CONST 1
STIC
CONST 0
LDLW 16
STNW 4
RETURN
LABEL L718
!       ELSE IF arith[1] = NIL THEN S.Mark("import Arith.divmod16 procedure")
LINE 888
GLOBAL OMSPG.arith
LDNW 4
JNEQZ L710
CONST 32
GLOBAL OMSPG.%50
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L710
!         ELSE IF traps[6] # NIL THEN t := c0; PutDO(A.CMP, t, y); Trap(A.NE, 6); free(y) END;
LINE 889
GLOBAL OMSPG.traps
LDNW 24
JEQZ L708
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -44
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 6
CONST 0
GLOBAL OMSPG.Trap
CALL 2
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LABEL L708
!           MakeItem(p, arith[1], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); t := c0; load(t, 7); Call(p, r, or, pau);
LINE 890
CONST 0
GLOBAL OMSPG.arith
LDNW 4
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.MakeItem
CALL 4
LOCAL -132
LDLW 16
CONST 44
FIXCOPY
LOCAL -176
LDLW 24
CONST 44
FIXCOPY
LOCAL -185
LOCAL -184
LOCAL -180
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.PrepCall
CALL 5
CONST 5
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
CONST 6
LDLW 28
LDLW 24
GLOBAL OMSPG.load
CALL 3
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
CONST 7
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.load
CALL 3
LDLC -185
ALIGNC
LDLW -184
LDLW -180
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.Call
CALL 5
!           free(x0); free(y0); x.reg := p.reg
LINE 891
GLOBAL OMSPG.Item
LOCAL -132
GLOBAL OMSPG.free
CALL 2
GLOBAL OMSPG.Item
LOCAL -176
GLOBAL OMSPG.free
CALL 2
LDLC -88
LDLW 16
STOREC
RETURN
LABEL L703
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 895
LDLW 16
LDNW 8
CONST 1
JNEQ L693
LDLW 24
LDNW 8
CONST 1
JNEQ L693
!         IF y.a > 0 THEN x.a := x.a MOD y.a ELSE S.Mark("bad modulus") END
LINE 896
LDLW 24
LDNW 20
JLEQZ L696
LDLW 16
LDNW 20
LDLW 24
LDNW 20
ZCHECK 896
MOD
LDLW 16
STNW 20
RETURN
LABEL L696
CONST 12
GLOBAL OMSPG.%51
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L693
!       ELSIF (y.mode = B.Const) & (y.a >= 2) & (A.log2(y.a, e) = 1) THEN load(x, 0FFH); PutDO(A.MOd, y, x); (*TODO tester*)
LINE 897
LDLW 24
LDNW 8
CONST 1
JNEQ L699
LDLW 24
LDNW 20
CONST 2
JLT L699
LOCAL -192
LDLW 24
LDNW 20
GLOBAL OMSPA.log2
CALLW 2
CONST 1
JNEQ L699
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 3
GLOBAL OMSPG.PutDO
CALL 5
!         x.mode := Reg; x.am := A.Register; x.ofs := 0
LINE 898
CONST 10
LDLW 16
STNW 8
CONST 0
LDLW 16
CONST 1
STIC
CONST 0
LDLW 16
STNW 4
RETURN
LABEL L699
!       ELSE IF arith[1] = NIL THEN S.Mark("import Arith.divmod procedure")
LINE 899
GLOBAL OMSPG.arith
LDNW 4
JNEQZ L691
CONST 30
GLOBAL OMSPG.%52
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L691
!         ELSE IF traps[6] # NIL THEN t := c0; PutDO(A.CMP, t, y); Trap(A.NE, 6); free(y) END;
LINE 900
GLOBAL OMSPG.traps
LDNW 24
JEQZ L689
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -44
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 6
CONST 0
GLOBAL OMSPG.Trap
CALL 2
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LABEL L689
!             MakeItem(p, arith[1], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); t := c1; load(t, 7); Call(p, r, or, pau); x.reg := p.reg;
LINE 901
CONST 0
GLOBAL OMSPG.arith
LDNW 4
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.MakeItem
CALL 4
LOCAL -132
LDLW 16
CONST 44
FIXCOPY
LOCAL -176
LDLW 24
CONST 44
FIXCOPY
LOCAL -185
LOCAL -184
LOCAL -180
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.PrepCall
CALL 5
CONST 5
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
CONST 6
LDLW 28
LDLW 24
GLOBAL OMSPG.load
CALL 3
LOCAL -44
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
CONST 7
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.load
CALL 3
LDLC -185
ALIGNC
LDLW -184
LDLW -180
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.Call
CALL 5
LDLC -88
LDLW 16
STOREC
!           free(x0); free(y0); x.reg := p.reg
LINE 902
GLOBAL OMSPG.Item
LOCAL -132
GLOBAL OMSPG.free
CALL 2
GLOBAL OMSPG.Item
LOCAL -176
GLOBAL OMSPG.free
CALL 2
LDLC -88
LDLW 16
STOREC
RETURN
END

PROC OMSPG.fix 0 5 0
!   PROCEDURE fix(at, with: INTEGER);
LINE 908
!   BEGIN A.fix(mcode, at, with)
LINE 909
LDLW 16
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.fix
CALL 4
RETURN
END

PROC OMSPG.shift 60 6 0x00a000c1
!   PROCEDURE shift(op: INTEGER; VAR x, y: Item); (* x := op(x, y)*)
LINE 913
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := LSL(x.a, y.a)
LINE 916
LDLW 16
LDNW 8
CONST 1
JNEQ L723
LDLW 24
LDNW 8
CONST 1
JNEQ L723
LDLW 16
LDNW 20
LDLW 24
LDNW 20
LSL
LDLW 16
STNW 20
RETURN
LABEL L723
!     ELSIF (y.mode = B.Const) & (y.a <= 4) THEN PutSO(A.NOP0, x); FOR i := 1 TO y.a DO PutSO(op, x) END
LINE 917
LDLW 24
LDNW 8
CONST 1
JNEQ L726
LDLW 24
LDNW 20
CONST 4
JGT L726
LDLW 20
LDLW 16
CONST 259
GLOBAL OMSPG.PutSO
CALL 3
LDLW 24
LDNW 20
STLW -60
CONST 1
STLW -4
LABEL L727
LDLW -4
LDLW -60
JGT L721
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.PutSO
CALL 3
INCL -4
JUMP L727
LABEL L726
!     ELSE PutSO(A.NOP0, x); t := c1; PutDO(A.ADD, t, y);
LINE 918
LDLW 20
LDLW 16
CONST 259
GLOBAL OMSPG.PutSO
CALL 3
LOCAL -56
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -56
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
!       pb := mcode.pc; PutDO(A.SUB, t, y); pf := mcode.pc; PutJ(A.EQ, 0);
LINE 919
LDGW OMSPG.mcode
STLW -8
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -56
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
LDGW OMSPG.mcode
STLW -12
CONST 0
CONST 1
GLOBAL OMSPG.PutJ
CALL 2
!       PutSO(op, x); PutJ(A.AL, pb - mcode.pc - 2); fix(pf, mcode.pc - pf - 2);
LINE 920
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.PutSO
CALL 3
LDLW -8
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 7
GLOBAL OMSPG.PutJ
CALL 2
LDGW OMSPG.mcode
LDLW -12
MINUS
CONST 2
MINUS
LDLW -12
GLOBAL OMSPG.fix
CALL 2
!       free(y)
LINE 921
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LABEL L721
RETURN
END

PROC OMSPG.Rla 0 6 0x00500001
!   PROCEDURE Rla*(VAR x, y: Item); (* x := RLA(x, y)*)
LINE 925
!   BEGIN shift(A.RLA, x, y)
LINE 926
LDLW 24
LDLW 20
LDLW 16
LDLW 12
CONST 257
GLOBAL OMSPG.shift
CALL 5
RETURN
END

PROC OMSPG.Rra 0 6 0x00500001
!   PROCEDURE Rra*(VAR x, y: Item); (* x := RRA(x, y)*)
LINE 929
!   BEGIN shift(A.RRA, x, y)
LINE 930
LDLW 24
LDLW 20
LDLW 16
LDLW 12
CONST 34
GLOBAL OMSPG.shift
CALL 5
RETURN
END

PROC OMSPG.StringOp 2056 6 0x00a00001
!   PROCEDURE StringOp*(op: INTEGER; VAR x, y: Item);   (* x := x op y *)
LINE 934
!     IF op # S.plus THEN S.Mark("op + expected") END;
LINE 937
LDLW 12
CONST 6
JEQ L732
CONST 14
GLOBAL OMSPG.%53
GLOBAL OMSPS.Mark
CALL 2
LABEL L732
!     IF (x.mode = B.StoredConst) & (y.mode IN {B.StoredConst, B.Const}) THEN
LINE 938
LDLW 16
LDNW 8
CONST 9
JNEQ L735
CONST 1
LDLW 24
LDNW 8
CONST 32
BOUND 938
LSL
CONST 514
BITAND
JEQZ L735
!       IF y.type.form = B.String THEN stringPop(y, ys) ELSE ys[0] := CHR(y.a); ys[1] := 0X END; stringPop(x, xs);
LINE 939
LDLW 24
LDNW 12
NCHECK 939
LOADW
CONST 11
JNEQ L738
CONST 1024
LOCAL -2048
LDLW 24
GLOBAL OMSPG.stringPop
CALL 3
JUMP L736
LABEL L738
LDLW 24
LDNW 20
STLC -2048
CONST 0
STLC -2047
LABEL L736
CONST 1024
LOCAL -1024
LDLW 16
GLOBAL OMSPG.stringPop
CALL 3
!       ix := 0; WHILE xs[ix] # 0X DO INC(ix) END;
LINE 940
CONST 0
STLW -2052
LABEL L739
LOCAL -1024
LDLW -2052
CONST 1024
BOUND 940
LDIC
JEQZ L741
INCL -2052
JUMP L739
LABEL L741
!       iy := -1; REPEAT INC(iy); xs[ix] := ys[iy]; INC(ix) UNTIL ys[iy] = 0X; (* xs = xs + ys *)
LINE 941
CONST -1
STLW -2056
LABEL L742
INCL -2056
LOCAL -2048
LDLW -2056
CONST 1024
BOUND 941
LDIC
LOCAL -1024
LDLW -2052
CONST 1024
BOUND 941
STIC
INCL -2052
LOCAL -2048
LDLW -2056
CONST 1024
BOUND 941
LDIC
JNEQZ L742
!       stringPut(x, xs, ix)
LINE 942
LDLW -2052
CONST 1024
LOCAL -1024
LDLW 20
LDLW 16
GLOBAL OMSPG.stringPut
CALL 5
RETURN
LABEL L735
!     ELSE S.Mark("const expected")
LINE 943
CONST 15
GLOBAL OMSPG.%54
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.Singleton 44 5 0x00100601
!   PROCEDURE Singleton*(VAR x: Item);  (* x := {x} *)
LINE 949
!   BEGIN y := x; x.mode := B.Const; x.a := 1; Rla(x, y)
LINE 951
LOCAL -44
LDLW 12
CONST 44
FIXCOPY
CONST 1
LDLW 12
STNW 8
CONST 1
LDLW 12
STNW 20
GLOBAL OMSPG.Item
LOCAL -44
LDLW 16
LDLW 12
GLOBAL OMSPG.Rla
CALL 4
RETURN
END

PROC OMSPG.Set 144 6 OMSPG.Set.%map
!   PROCEDURE Set*(VAR x, y: Item); (* x := {x .. y} *)
LINE 954
!     IF (x.mode = B.Const) & ( y.mode = B.Const) THEN
LINE 957
LDLW 12
LDNW 8
CONST 1
JNEQ L750
LDLW 20
LDNW 8
CONST 1
JNEQ L750
!       IF x.a <= y.a THEN x.a := ORD({x.a .. y.a}) ELSE x.a := 0 END
LINE 958
LDLW 12
LDNW 20
LDLW 20
LDNW 20
JGT L753
CONST -1
LDLW 12
LDNW 20
CONST 32
BOUND 958
LSL
CONST -2
LDLW 20
LDNW 20
CONST 32
BOUND 958
LSL
BITNOT
BITAND
LDLW 12
STNW 20
RETURN
LABEL L753
CONST 0
LDLW 12
STNW 20
RETURN
LABEL L750
!     ELSE IF arith[2] = NIL THEN S.Mark("import Arith.set function")
LINE 959
GLOBAL OMSPG.arith
LDNW 8
JNEQZ L748
CONST 26
GLOBAL OMSPG.%55
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L748
!       ELSE  MakeItem(p, arith[2], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); Call(p, r, or, pau);
LINE 960
CONST 0
GLOBAL OMSPG.arith
LDNW 8
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.MakeItem
CALL 4
LOCAL -88
LDLW 12
CONST 44
FIXCOPY
LOCAL -132
LDLW 20
CONST 44
FIXCOPY
LOCAL -141
LOCAL -140
LOCAL -136
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.PrepCall
CALL 5
CONST 5
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
CONST 6
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
LDLC -141
ALIGNC
LDLW -140
LDLW -136
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.Call
CALL 5
!         free(x0); free(y0); x.reg := p.reg
LINE 961
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.free
CALL 2
GLOBAL OMSPG.Item
LOCAL -132
GLOBAL OMSPG.free
CALL 2
LDLC -44
LDLW 12
STOREC
RETURN
END

PROC OMSPG.In 52 6 0x00500601
!   PROCEDURE In*(VAR x, y: Item);  (* x := x IN y *)
LINE 966
!     IF x.mode = B.Const THEN  t := c0; t.a := LSL(1, x.a); PutDO(A.BIT, t, y);
LINE 969
LDLW 12
LDNW 8
CONST 1
JNEQ L757
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
CONST 1
LDLW 12
LDNW 20
LSL
STLW -24
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 11
GLOBAL OMSPG.PutDO
CALL 5
!       free(x)
LINE 970
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
JUMP L755
LABEL L757
!     ELSE load(x, 0FFH); load(y, 0FFH); t := c1; PutDO(A.ADD, t, x);
LINE 971
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
LOCAL -44
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
!       pc0 := mcode.pc; PutDO(A.SUB, t, x); pc1 := mcode.pc; PutJ(A.EQ, 0);
LINE 972
LDGW OMSPG.mcode
STLW -48
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
LDGW OMSPG.mcode
STLW -52
CONST 0
CONST 1
GLOBAL OMSPG.PutJ
CALL 2
!       PutSO(A.RRC, y); PutJ(A.AL, pc0 - mcode.pc -2); fix(pc1, mcode.pc - pc1 - 2);
LINE 973
LDLW 24
LDLW 20
CONST 32
GLOBAL OMSPG.PutSO
CALL 3
LDLW -48
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 7
GLOBAL OMSPG.PutJ
CALL 2
LDGW OMSPG.mcode
LDLW -52
MINUS
CONST 2
MINUS
LDLW -52
GLOBAL OMSPG.fix
CALL 2
!       PutDO(A.BIT, t, y); free(y); free(x)
LINE 974
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 11
GLOBAL OMSPG.PutDO
CALL 5
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LABEL L755
!     SetCC(x, A.NE)
LINE 976
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.SetOp 8 6 0x00a00001
!   PROCEDURE SetOp*(op: INTEGER; VAR x, y: Item);   (* x := x op y *)
LINE 979
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 982
LDLW 16
LDNW 8
CONST 1
JNEQ L769
LDLW 24
LDNW 8
CONST 1
JNEQ L769
!       xset := SYSTEM.VAL(SET, x.a); yset := SYSTEM.VAL(SET, y.a);
LINE 983
LDLW 16
LDNW 20
STLW -4
LDLW 24
LDNW 20
STLW -8
!       IF op = S.plus THEN xset := xset + yset
LINE 984
LDLW 12
CONST 6
JNEQ L772
LDLW -4
LDLW -8
BITOR
STLW -4
JUMP L778
LABEL L772
!       ELSIF op = S.minus THEN xset := xset - yset
LINE 985
LDLW 12
CONST 7
JNEQ L774
LDLW -4
LDLW -8
BITNOT
BITAND
STLW -4
JUMP L778
LABEL L774
!       ELSIF op = S.times THEN xset := xset * yset
LINE 986
LDLW 12
CONST 1
JNEQ L776
LDLW -4
LDLW -8
BITAND
STLW -4
JUMP L778
LABEL L776
!       ELSIF op = S.rdiv THEN xset := xset / yset
LINE 987
LDLW 12
CONST 2
JNEQ L778
LDLW -4
LDLW -8
BITXOR
STLW -4
LABEL L778
!       x.a := SYSTEM.VAL(INTEGER, xset)
LINE 989
LDLW -4
LDLW 16
STNW 20
RETURN
LABEL L769
!       IF op = S.plus THEN PutDO(A.BIS, y, x)
LINE 991
LDLW 12
CONST 6
JNEQ L761
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 13
GLOBAL OMSPG.PutDO
CALL 5
JUMP L767
LABEL L761
!       ELSIF op = S.minus THEN PutDO(A.BIC, y, x)
LINE 992
LDLW 12
CONST 7
JNEQ L763
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 12
GLOBAL OMSPG.PutDO
CALL 5
JUMP L767
LABEL L763
!       ELSIF op = S.times THEN PutDO(A.AND, y, x)
LINE 993
LDLW 12
CONST 1
JNEQ L765
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 15
GLOBAL OMSPG.PutDO
CALL 5
JUMP L767
LABEL L765
!       ELSIF op = S.rdiv THEN PutDO(A.XOR, y, x)
LINE 994
LDLW 12
CONST 2
JNEQ L767
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 14
GLOBAL OMSPG.PutDO
CALL 5
LABEL L767
!       free(y)
LINE 996
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.AdjustSize 4 3 0x00110001
!   PROCEDURE AdjustSize(VAR x: Item);
LINE 1002
!   BEGIN IF x.type.form = B.Int THEN st := B.byteType ELSIF x.type.form = B.Set THEN st := B.byteSetType ELSE st := NIL END;
LINE 1004
LDLW 12
LDNW 12
NCHECK 1004
LOADW
CONST 4
JNEQ L782
LDGW OMSPB.byteType
STLW -4
JUMP L780
LABEL L782
LDLW 12
LDNW 12
NCHECK 1004
LOADW
CONST 6
JNEQ L784
LDGW OMSPB.byteSetType
STLW -4
JUMP L780
LABEL L784
CONST 0
STLW -4
LABEL L780
!     IF (st # NIL) & (x.mode = B.Const) & (x.a >= 0) & (x.a < 100H) THEN x.type := st END
LINE 1005
LDLW -4
JEQZ L787
LDLW 12
LDNW 8
CONST 1
JNEQ L787
LDLW 12
LDNW 20
JLTZ L787
LDLW 12
LDNW 20
CONST 256
JGEQ L787
LDLW -4
LDLW 12
STNW 12
LABEL L787
RETURN
END

PROC OMSPG.IntCompare 0 6 0x01500001
!   PROCEDURE IntCompare*(VAR x, y, z: Item);   (* x < y *)
LINE 1008
!     IF (x.mode = Cond) OR (y.mode = Cond) THEN S.Mark("not implemented") END;
LINE 1010
LDLW 12
LDNW 8
CONST 12
JEQ L792
LDLW 20
LDNW 8
CONST 12
JNEQ L793
LABEL L792
CONST 16
GLOBAL OMSPG.%37
GLOBAL OMSPS.Mark
CALL 2
LABEL L793
!     PutDO(A.CMP, y, x); free(y); free(x);
LINE 1011
LDLW 16
LDLW 12
LDLW 24
LDLW 20
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
!     SetCC(x, z.a)
LINE 1012
LDLW 28
LDNW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.IntRelation 0 6 0x00a00001
!   PROCEDURE IntRelation*(op: INTEGER; VAR x, y: Item);   (* x := x < y *)
LINE 1015
!     IF (x.mode = Cond) OR (y.mode = Cond) THEN S.Mark("not implemented") END;
LINE 1017
LDLW 16
LDNW 8
CONST 12
JEQ L796
LDLW 24
LDNW 8
CONST 12
JNEQ L797
LABEL L796
CONST 16
GLOBAL OMSPG.%37
GLOBAL OMSPS.Mark
CALL 2
LABEL L797
!     IF (y.mode = B.Const) & (y.a = 0) &
LINE 1018
LDLW 24
LDNW 8
CONST 1
JNEQ L822
LDLW 24
LDNW 20
JNEQZ L822
GLOBAL OMSPG.flagsItem
LDNW 16
JEQZ L822
GLOBAL OMSPG.flagsItem
LDNW 16
LDLW 16
LDNW 16
JNEQ L822
GLOBAL OMSPG.flagsItem
LDNW 20
LDLW 16
LDNW 20
JNEQ L822
GLOBAL OMSPG.flagsItem
LDNW 24
LDLW 16
LDNW 24
JNEQ L822
LDLW 12
CONST 13
JGEQ L822
!       IF x.type.size = 1 THEN SetCC(x, urelmap[op - S.eql]) ELSE SetCC(x, relmap[op - S.eql]) END
LINE 1020
LDLW 16
LDNW 12
NCHECK 1020
LDNW 32
CONST 1
JNEQ L825
GLOBAL OMSPG.urelmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 1020
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L813
LABEL L825
GLOBAL OMSPG.relmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 1020
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L813
LABEL L822
!       AdjustSize(x); AdjustSize(y);
LINE 1022
LDLW 20
LDLW 16
GLOBAL OMSPG.AdjustSize
CALL 2
LDLW 28
LDLW 24
GLOBAL OMSPG.AdjustSize
CALL 2
!       IF x.type.size # y.type.size THEN
LINE 1023
LDLW 16
LDNW 12
NCHECK 1023
LDNW 32
LDLW 24
LDNW 12
NCHECK 1023
LDNW 32
JEQ L802
!         IF x.type.size = 1 THEN IF x.mode # B.Const THEN load(x, 0FFH) END; x.type := B.intType
LINE 1024
LDLW 16
LDNW 12
NCHECK 1024
LDNW 32
CONST 1
JNEQ L808
LDLW 16
LDNW 8
CONST 1
JEQ L811
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LABEL L811
LDGW OMSPB.intType
LDLW 16
STNW 12
JUMP L802
LABEL L808
!         ELSE IF y.mode # B.Const THEN load(y, 0FFH) END; y.type := B.intType
LINE 1025
LDLW 24
LDNW 8
CONST 1
JEQ L806
CONST 255
LDLW 28
LDLW 24
GLOBAL OMSPG.load
CALL 3
LABEL L806
LDGW OMSPB.intType
LDLW 24
STNW 12
LABEL L802
!       IF op < S.gtr THEN PutDO(A.CMP, y, x); IF x.type.size = 1 THEN SetCC(x, urelmap[op - S.eql]) ELSE SetCC(x, relmap[op - S.eql]) END
LINE 1028
LDLW 12
CONST 13
JGEQ L817
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDNW 12
NCHECK 1028
LDNW 32
CONST 1
JNEQ L820
GLOBAL OMSPG.urelmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 1028
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L813
LABEL L820
GLOBAL OMSPG.relmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 1028
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L813
LABEL L817
!       ELSE PutDO(A.CMP, x, y); IF x.type.size = 1 THEN SetCC(x, urelmap[op - S.gtr + 2]) ELSE SetCC(x, relmap[op - S.gtr + 2]) END
LINE 1029
LDLW 28
LDLW 24
LDLW 20
LDLW 16
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDNW 12
NCHECK 1029
LDNW 32
CONST 1
JNEQ L815
GLOBAL OMSPG.urelmap
LDLW 12
CONST 11
MINUS
CONST 4
BOUND 1029
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L813
LABEL L815
GLOBAL OMSPG.relmap
LDLW 12
CONST 11
MINUS
CONST 4
BOUND 1029
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
LABEL L813
!     free(y); free(x)
LINE 1032
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.StringRelation 96 9 OMSPG.StringRelation.%map
!   PROCEDURE StringRelation*(op: INTEGER; VAR x0, y0: Item);   (* x := x < y *)
LINE 1035
!     IF x0.type.form = B.String THEN loadAdr(x0, 0FFH) ELSE loadAdr(x0, 0FFH) END;
LINE 1039
LDLW 16
LDNW 12
NCHECK 1039
LOADW
CONST 11
JNEQ L834
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.loadAdr
CALL 3
JUMP L832
LABEL L834
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.loadAdr
CALL 3
LABEL L832
!     IF y0.type.form = B.String THEN loadAdr(y0, 0FFH) ELSE loadAdr(y0, 0FFH) END;
LINE 1040
LDLW 24
LDNW 12
NCHECK 1040
LOADW
CONST 11
JNEQ L837
CONST 255
LDLW 28
LDLW 24
GLOBAL OMSPG.loadAdr
CALL 3
JUMP L835
LABEL L837
CONST 255
LDLW 28
LDLW 24
GLOBAL OMSPG.loadAdr
CALL 3
LABEL L835
!     IF op < S.gtr THEN x := x0; y := y0 ELSE x := y0; y := x0 END;
LINE 1041
LDLW 12
CONST 13
JGEQ L840
LOCAL -52
LDLW 16
CONST 44
FIXCOPY
LOCAL -96
LDLW 24
CONST 44
FIXCOPY
JUMP L838
LABEL L840
LOCAL -52
LDLW 24
CONST 44
FIXCOPY
LOCAL -96
LDLW 16
CONST 44
FIXCOPY
LABEL L838
!     (*Compare:*) pc0 := mcode.pc;
LINE 1042
LDGW OMSPG.mcode
STLW -4
!     x.am := A.IndirectIncr; rh.reg := AllocR(); A.PutDO(mcode, A.MOV, x, rh, A.Byte);
LINE 1043
CONST 5
STLC -51
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
CONST 64
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -52
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     y.am := A.IndirectIncr; A.PutDO(mcode, A.CMP, y, rh, A.Byte);
LINE 1044
CONST 5
STLC -95
CONST 64
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -96
CONST 9
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     tbf0 := mcode.pc; PutJ(A.NE, 0) (*JNE Fin*);
LINE 1045
LDGW OMSPG.mcode
STLW -8
CONST 0
CONST 0
GLOBAL OMSPG.PutJ
CALL 2
!     A.PutDO(mcode, A.CMP, c0, rh, A.Byte); (*compare char x^ to 0*)
LINE 1046
CONST 64
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
GLOBAL OMSPG.c0
CONST 9
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     PutJ(A.NE, pc0 - mcode.pc - 2) (*JNE Compare*);
LINE 1047
LDLW -4
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 0
GLOBAL OMSPG.PutJ
CALL 2
!     (* Fin: *) fix(tbf0, mcode.pc - tbf0 - 2); free(y0); free(x0); freeR(rh.reg);
LINE 1048
LDGW OMSPG.mcode
LDLW -8
MINUS
CONST 2
MINUS
LDLW -8
GLOBAL OMSPG.fix
CALL 2
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
LDGC OMSPG.rh
GLOBAL OMSPG.freeR
CALL 1
!     IF op < S.gtr THEN SetCC(x0, urelmap[op - S.eql]) ELSE SetCC(x0, urelmap[op - S.gtr + 2]) END
LINE 1049
LDLW 12
CONST 13
JGEQ L843
GLOBAL OMSPG.urelmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 1049
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
RETURN
LABEL L843
GLOBAL OMSPG.urelmap
LDLW 12
CONST 11
MINUS
CONST 4
BOUND 1049
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.StrToChar 4 4 0x00100001
!   PROCEDURE StrToChar*(VAR x: Item);
LINE 1054
!   BEGIN ASSERT((x.type.form = B.String) & (Length(x) = 2));
LINE 1056
LDLW 12
LDNW 12
NCHECK 1056
LOADW
CONST 11
JNEQ L844
LDLW 12
GLOBAL OMSPG.Length
CALLW 1
CONST 2
JEQ L845
LABEL L844
CONST 0
CONST 1056
GLOBAL EASSERT
CALL 2
LABEL L845
!     stringPop(x, sc); x.type := B.charType; x.a := ORD(sc[0]);
LINE 1057
CONST 2
LOCAL -2
LDLW 12
GLOBAL OMSPG.stringPop
CALL 3
LDGW OMSPB.charType
LDLW 12
STNW 12
LDLC -2
LDLW 12
STNW 20
!     x.mode := B.Const; x.ladr := FALSE; x.ptr := FALSE
LINE 1058
CONST 1
LDLW 12
STNW 8
CONST 0
LDLW 12
CONST 42
STIC
CONST 0
LDLW 12
CONST 43
STIC
RETURN
END

PROC OMSPG.StoreConstInt 8 4 0
!   PROCEDURE StoreConstInt(adr, size, val: INTEGER);
LINE 1061
!     FOR i := 1 TO size DO IF mcode.code[adr] # 0FFH THEN S.Mark("already set") END;
LINE 1064
LDLW 16
STLW -8
CONST 1
STLW -4
LABEL L847
LDLW -4
LDLW -8
JGT L848
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW 12
CONST 32000
BOUND 1064
OFFSET
LOADC
CONST 255
JEQ L851
CONST 12
GLOBAL OMSPG.%56
GLOBAL OMSPS.Mark
CALL 2
LABEL L851
!       mcode.code[adr] := val MOD 100H; val := val DIV 100H; INC(adr)
LINE 1065
LDLW 20
CONST 256
MOD
CONVNC
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW 12
CONST 32000
BOUND 1065
OFFSET
STOREC
LDLW 20
CONST 256
DIV
STLW 20
INCL 12
!     FOR i := 1 TO size DO IF mcode.code[adr] # 0FFH THEN S.Mark("already set") END;
LINE 1064
INCL -4
JUMP L847
LABEL L848
RETURN
END

PROC OMSPG.Store 12 6 0x00504001
!   PROCEDURE Store*(VAR x, y: Item); (* x := y *)
LINE 1069
!     IF x.mode = B.StoredConst THEN ASSERT(x.c = 0);
LINE 1072
LDLW 12
LDNW 8
CONST 9
JNEQ L854
LDLW 12
LDNW 28
JEQZ L856
CONST 0
CONST 1072
GLOBAL EASSERT
CALL 2
LABEL L856
!       s := GetSection(x.a); adr := x.b + 1; val := UpdateChain(s, adr, y.a, y);
LINE 1073
LDLW 12
LDNW 20
GLOBAL OMSPG.GetSection
CALLW 1
STLW -12
LDLW 12
LDNW 24
INC
STLW -4
LDLW 20
LDLW 20
LDNW 20
LDLW -4
LDLW -12
GLOBAL OMSPG.UpdateChain
CALLW 4
STLW -8
!       IF y.mode = B.Const THEN
LINE 1074
LDLW 20
LDNW 8
CONST 1
JNEQ L859
!         IF y.type.form IN {B.Bool, B.Int, B.Proc, B.Set, B.Pointer, B.NilTyp} THEN StoreConstInt(s.org + x.b, x.type.size, val)
LINE 1075
CONST 1
LDLW 20
LDNW 12
NCHECK 1075
LOADW
CONST 32
BOUND 1075
LSL
CONST 1492
BITAND
JEQZ L862
LDLW -8
LDLW 12
LDNW 12
NCHECK 1075
LDNW 32
LDLW -12
NCHECK 1075
LDNW 44
LDLW 12
LDNW 24
PLUS
GLOBAL OMSPG.StoreConstInt
CALL 3
RETURN
LABEL L862
!         ELSE (* TODO*) S.Mark("not implemented"); PrintItem("Store Const", y);
LINE 1076
CONST 16
GLOBAL OMSPG.%37
GLOBAL OMSPS.Mark
CALL 2
LDLW 20
CONST 12
GLOBAL OMSPG.%57
GLOBAL OMSPG.PrintItem
CALL 3
RETURN
LABEL L859
!       ELSIF y.mode = Absol THEN StoreConstInt(adr, x.type.size, val)
LINE 1078
LDLW 20
LDNW 8
CONST 13
JNEQ L864
LDLW -8
LDLW 12
LDNW 12
NCHECK 1078
LDNW 32
LDLW -4
GLOBAL OMSPG.StoreConstInt
CALL 3
RETURN
LABEL L864
!       ELSE S.Mark("not allowed is Store"); PrintItem("Store other", y);
LINE 1079
CONST 21
GLOBAL OMSPG.%58
GLOBAL OMSPS.Mark
CALL 2
LDLW 20
CONST 12
GLOBAL OMSPG.%59
GLOBAL OMSPG.PrintItem
CALL 3
RETURN
LABEL L854
!     ELSE PutDO(A.MOV, y, x); free(y); free(x)
LINE 1081
LDLW 16
LDLW 12
LDLW 24
LDLW 20
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.distance 12 3 0x00700001
!   PROCEDURE distance(x, y: Item; VAR d: Item): BOOLEAN;
LINE 1085
!   BEGIN res := TRUE; d := c0;
LINE 1087
CONST 1
STLC -1
LDLW 24
GLOBAL OMSPG.Item
JEQ L865
ERROR E_ASSIGN 1087
LABEL L865
LDLW 20
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
!     IF (x.obj # NIL) & (x.obj = y.obj) & (x.mode = y.mode) & ((x.mode # RegI) OR (x.reg = y.reg)) THEN
LINE 1088
LDLW 12
LDNW 16
JEQZ L868
LDLW 12
LDNW 16
LDLW 16
LDNW 16
JNEQ L868
LDLW 12
LDNW 8
LDLW 16
LDNW 8
JNEQ L868
LDLW 12
LDNW 8
CONST 11
JNEQ L867
LDLW 12
LOADC
LDLW 16
LOADC
JNEQ L868
LABEL L867
!       IF x.mode = B.Par THEN ox := x.b ELSE ox := x.a END;
LINE 1089
LDLW 12
LDNW 8
CONST 3
JNEQ L871
LDLW 12
LDNW 24
STLW -8
JUMP L869
LABEL L871
LDLW 12
LDNW 20
STLW -8
LABEL L869
!       IF y.mode = B.Par THEN oy := y.b ELSE oy := y.a END;
LINE 1090
LDLW 16
LDNW 8
CONST 3
JNEQ L874
LDLW 16
LDNW 24
STLW -12
JUMP L872
LABEL L874
LDLW 16
LDNW 20
STLW -12
LABEL L872
!       d.a := ox - oy
LINE 1091
LDLW -8
LDLW -12
MINUS
LDLW 20
STNW 20
JUMP L866
LABEL L868
!     ELSIF (x.mode = B.Var) & (y.mode = B.Var) & (x.obj.lev > 0) & (x.obj.lev = y.obj.lev) THEN d.a := x.a - y.a
LINE 1092
LDLW 12
LDNW 8
CONST 2
JNEQ L880
LDLW 16
LDNW 8
CONST 2
JNEQ L880
LDLW 12
LDNW 16
NCHECK 1092
LDNW 8
JLEQZ L880
LDLW 12
LDNW 16
NCHECK 1092
LDNW 8
LDLW 16
LDNW 16
NCHECK 1092
LDNW 8
JNEQ L880
LDLW 12
LDNW 20
LDLW 16
LDNW 20
MINUS
LDLW 20
STNW 20
JUMP L866
LABEL L880
!     ELSIF (*(x.mode = B.Const) & (y.mode = B.Const) & (x.c = 0) &*) x.ladr & y.ladr THEN
LINE 1093
LDLW 12
CONST 42
LDIC
JEQZ L885
LDLW 16
CONST 42
LDIC
JEQZ L885
!       d.ladr := TRUE; d.a := x.a; d.c := x.c; d.mnor := y.c; d.snor := y.a; d.b := x.b MOD 10000H - y.b MOD 10000H
LINE 1094
CONST 1
LDLW 20
CONST 42
STIC
LDLW 12
LDNW 20
LDLW 20
STNW 20
LDLW 12
LDNW 28
LDLW 20
STNW 28
LDLW 16
LDNW 28
CONVNC
LDLW 20
CONST 32
STIC
LDLW 16
LDNW 20
LDLW 20
STNW 36
LDLW 12
LDNW 24
CONST 65536
MOD
LDLW 16
LDNW 24
CONST 65536
MOD
MINUS
LDLW 20
STNW 24
JUMP L866
LABEL L885
!     ELSE res := FALSE
LINE 1095
CONST 0
STLC -1
LABEL L866
!     d.ofs := d.a
LINE 1097
LDLW 20
LDNW 20
LDLW 20
STNW 4
!     RETURN res
LINE 1099
LDLC -1
RETURN
END

PROC OMSPG.Dec 0 3 0x00100001
!   PROCEDURE Dec(VAR x: Item; v: INTEGER);
LINE 1102
!   BEGIN ASSERT(x.mode = B.Const);
LINE 1103
LDLW 12
LDNW 8
CONST 1
JEQ L888
CONST 0
CONST 1103
GLOBAL EASSERT
CALL 2
LABEL L888
!     IF x.ladr THEN DEC(x.b, v) ELSE DEC(x.a, v) END
LINE 1104
LDLW 12
CONST 42
LDIC
JEQZ L891
LDLW 12
CONST 24
OFFSET
DUP 0
LOADW
LDLW 20
MINUS
SWAP
STOREW
RETURN
LABEL L891
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDLW 20
MINUS
SWAP
STOREW
RETURN
END

PROC OMSPG.StoreStruct 156 9 OMSPG.StoreStruct.%map
!   PROCEDURE StoreStruct*(VAR x, y: Item); (* x := y *)
LINE 1107
!   BEGIN IF x.mode = B.StoredConst THEN S.Mark("not implemented in StoreStruct") END;
LINE 1109
LDLW 12
LDNW 8
CONST 9
JNEQ L894
CONST 31
GLOBAL OMSPG.%60
GLOBAL OMSPS.Mark
CALL 2
LABEL L894
!     t := c0; ti := y;
LINE 1110
LOCAL -100
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LOCAL -144
LDLW 20
CONST 44
FIXCOPY
!     pc0 := -1; xtyp := x.type; ytyp := y.type;
LINE 1111
CONST -1
STLW -8
LDLW 12
LDNW 12
STLW -152
LDLW 20
LDNW 12
STLW -156
!     oneReg := distance(x, y, d);
LINE 1112
GLOBAL OMSPG.Item
LOCAL -56
LDLW 20
LDLW 12
GLOBAL OMSPG.distance
CALLW 4
STLC -145
!     IF ((ytyp.size < 8) OR oneReg & (ytyp.size < 10)) & (y.mode IN {B.Var, B.StoredConst}) THEN
LINE 1113
LDLW -156
NCHECK 1113
LDNW 32
CONST 8
JLT L939
LDLC -145
JEQZ L929
LDLW -156
NCHECK 1113
LDNW 32
CONST 10
JGEQ L929
LABEL L939
CONST 1
LDLW 20
LDNW 8
CONST 32
BOUND 1113
LSL
CONST 516
BITAND
JEQZ L929
!       s := ytyp.size; x.rdo := FALSE; y.rdo := FALSE;
LINE 1114
LDLW -156
NCHECK 1114
LDNW 32
STLW -4
CONST 0
LDLW 12
CONST 40
STIC
CONST 0
LDLW 20
CONST 40
STIC
LABEL L930
!       WHILE s > 0 DO PutDO(A.MOV, y, x);
LINE 1115
LDLW -4
JLEQZ L932
LDLW 16
LDLW 12
LDLW 24
LDLW 20
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
!         IF x.c > 0 THEN INC(x.a, 2) ELSE INC(x.b, 2) END;
LINE 1116
LDLW 12
LDNW 28
JLEQZ L935
LDLW 12
DUP 0
LDNW 20
CONST 2
PLUS
SWAP
STNW 20
JUMP L933
LABEL L935
LDLW 12
DUP 0
LDNW 24
CONST 2
PLUS
SWAP
STNW 24
LABEL L933
!         IF y.c > 0 THEN INC(y.a, 2) ELSE INC(y.b, 2) END;
LINE 1117
LDLW 20
LDNW 28
JLEQZ L938
LDLW 20
DUP 0
LDNW 20
CONST 2
PLUS
SWAP
STNW 20
JUMP L936
LABEL L938
LDLW 20
DUP 0
LDNW 24
CONST 2
PLUS
SWAP
STNW 24
LABEL L936
!         DEC(s, 2)
LINE 1118
LDLW -4
CONST 2
MINUS
STLW -4
JUMP L930
LABEL L932
!       END; free(x); free(y)
LINE 1119
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
RETURN
LABEL L929
!       loadAdr(y, 0FFH);
LINE 1121
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.loadAdr
CALL 3
!       IF oneReg THEN free(x); x := d; x.reg := y.reg; x.tmp := FALSE; Dec(x, WordSize)
LINE 1122
LDLC -145
JEQZ L898
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLW 16
GLOBAL OMSPG.Item
JEQ L899
ERROR E_ASSIGN 1122
LABEL L899
LDLW 12
LOCAL -56
CONST 44
FIXCOPY
LDLW 20
LOADC
LDLW 12
STOREC
CONST 0
LDLW 12
CONST 41
STIC
CONST 2
LDLW 16
LDLW 12
GLOBAL OMSPG.Dec
CALL 3
JUMP L896
LABEL L898
!       ELSE loadAdr(x, 0FFH); x.ofs := 0
LINE 1123
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
CONST 0
LDLW 12
STNW 4
LABEL L896
!       rh.reg := AllocR();
LINE 1125
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!       IF (xtyp.form = B.Array) &  (xtyp.len > 0) THEN
LINE 1126
LDLW -152
NCHECK 1126
LOADW
CONST 12
JNEQ L902
LDLW -152
NCHECK 1126
LDNW 16
JLEQZ L902
!         IF ytyp.len >= 0 THEN
LINE 1127
LDLW -156
NCHECK 1127
LDNW 16
JLTZ L915
!           IF xtyp.size = ytyp.size THEN t.a := (ytyp.size+1) DIV 2; PutDO(A.MOV, t, rh)
LINE 1128
LDLW -152
NCHECK 1128
LDNW 32
LDLW -156
NCHECK 1128
LDNW 32
JNEQ L918
LDLW -156
NCHECK 1128
LDNW 32
INC
CONST 2
DIV
STLW -80
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -100
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
JUMP L900
LABEL L918
!           ELSE S.Mark("different length/size, not implemented")
LINE 1129
CONST 39
GLOBAL OMSPG.%61
GLOBAL OMSPS.Mark
CALL 2
JUMP L900
LABEL L915
!         ELSE (*y  open array*) ti.a := y.a+WordSize; PutDO(A.MOV, ti, rh); s := ytyp.base.size;  (*element size*)
LINE 1131
LDLW 20
LDNW 20
CONST 2
PLUS
STLW -124
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -144
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
LDLW -156
NCHECK 1131
LDNW 28
NCHECK 1131
LDNW 32
STLW -4
!           t := c0; PutDO(A.CMP, t, rh); pc0 := mcode.pc; PutJ(A.EQ, 0); (*JEQ L0*)
LINE 1132
LOCAL -100
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -100
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDGW OMSPG.mcode
STLW -8
CONST 0
CONST 1
GLOBAL OMSPG.PutJ
CALL 2
!           IF s = 1 THEN t := c1; PutDO(A.ADD, t, rh); PutSO(A.RRA, rh)
LINE 1133
LDLW -4
CONST 1
JNEQ L906
LOCAL -100
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -100
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
CONST 34
GLOBAL OMSPG.PutSO
CALL 3
JUMP L908
LABEL L906
!           ELSIF s # 2 THEN ASSERT(~ODD(s)); t.a := s DIV 2; PutDO(A.MUL, t, rh) (*TODO tester*)
LINE 1134
LDLW -4
CONST 2
JEQ L908
LDLW -4
CONST 1
BITAND
JEQZ L910
CONST 0
CONST 1134
GLOBAL EASSERT
CALL 2
LABEL L910
LDLW -4
CONST 2
DIV
STLW -80
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -100
CONST 0
GLOBAL OMSPG.PutDO
CALL 5
LABEL L908
!           IF traps[3] # NIL THEN t.a := (xtyp.size+1) DIV 2+1; PutDO(A.CMP, t, rh); Trap(A.GE, 3) END
LINE 1136
GLOBAL OMSPG.traps
LDNW 12
JEQZ L900
LDLW -152
NCHECK 1136
LDNW 32
INC
CONST 2
DIV
INC
STLW -80
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -100
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 3
CONST 5
GLOBAL OMSPG.Trap
CALL 2
JUMP L900
LABEL L902
!       ELSIF xtyp.form = B.Record THEN t.a := xtyp.size DIV 2; PutDO(A.MOV, t, rh)
LINE 1138
LDLW -152
NCHECK 1138
LOADW
CONST 13
JNEQ L921
LDLW -152
NCHECK 1138
LDNW 32
CONST 2
DIV
STLW -80
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -100
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
JUMP L900
LABEL L921
!       ELSE S.Mark("inadmissible assignment")
LINE 1139
CONST 24
GLOBAL OMSPG.%62
GLOBAL OMSPS.Mark
CALL 2
LABEL L900
!       (*L1*) pc1 := mcode.pc; x.am := A.Indexed; y.am := A.IndirectIncr;
LINE 1141
LDGW OMSPG.mcode
STLW -12
CONST 1
LDLW 12
CONST 1
STIC
CONST 5
LDLW 20
CONST 1
STIC
!       A.PutDO(mcode, A.MOV, y, x, A.Word); IF ~oneReg THEN t := c2; PutDO(A.ADD, t, x) END;
LINE 1142
CONST 0
LDLW 16
LDLW 12
LDLW 24
LDLW 20
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LDLC -145
JNEQZ L924
LOCAL -100
GLOBAL OMSPG.c2
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -100
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
LABEL L924
!       t := c1; PutDO(A.SUB, t, rh); PutJ(A.NE, pc1 - mcode.pc -2); (*BNE L1*)
LINE 1143
LOCAL -100
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -100
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
LDLW -12
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 0
GLOBAL OMSPG.PutJ
CALL 2
!       (*L0:*) IF pc0 # -1 THEN fix(pc0, mcode.pc - pc0 - 2) END;
LINE 1144
LDLW -8
CONST -1
JEQ L927
LDGW OMSPG.mcode
LDLW -8
MINUS
CONST 2
MINUS
LDLW -8
GLOBAL OMSPG.fix
CALL 2
LABEL L927
!       freeR(rh.reg); free(y); free(x)
LINE 1145
LDGC OMSPG.rh
GLOBAL OMSPG.freeR
CALL 1
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.CopyString 1140 9 OMSPG.CopyString.%map
!   PROCEDURE CopyString*(VAR x, y: Item);  (* x := y *)
LINE 1149
!   BEGIN len := x.type.len; 
LINE 1152
LDLW 12
LDNW 12
NCHECK 1152
LDNW 16
STLW -4
!     IF x.mode = B.StoredConst THEN ASSERT(x.c = 0);
LINE 1153
LDLW 12
LDNW 8
CONST 9
JNEQ L952
LDLW 12
LDNW 28
JEQZ L954
CONST 0
CONST 1153
GLOBAL EASSERT
CALL 2
LABEL L954
!       IF (y.mode = B.StoredConst) & (y.type.form = B.String) THEN
LINE 1154
LDLW 20
LDNW 8
CONST 9
JNEQ L957
LDLW 20
LDNW 12
NCHECK 1154
LOADW
CONST 11
JNEQ L957
!         IF len < Length(y) THEN S.Mark("string too long")
LINE 1155
LDLW -4
LDLW 20
GLOBAL OMSPG.Length
CALLW 1
JGEQ L968
CONST 16
GLOBAL OMSPG.%63
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L968
!         ELSE s := GetSection(x.a); dadr := s.org + x.b; sadr := 0; stringPop(y, ys);
LINE 1156
LDLW 12
LDNW 20
GLOBAL OMSPG.GetSection
CALLW 1
STLW -1136
LDLW -1136
NCHECK 1156
LDNW 44
LDLW 12
LDNW 24
PLUS
STLW -16
CONST 0
STLW -20
CONST 1024
LOCAL -1132
LDLW 20
GLOBAL OMSPG.stringPop
CALL 3
!           FOR i := 1 TO Length(y) DO IF mcode.code[dadr] # 0FFH THEN S.Mark("already set") END;
LINE 1157
LDLW 20
GLOBAL OMSPG.Length
CALLW 1
STLW -1140
CONST 1
STLW -12
LABEL L959
LDLW -12
LDLW -1140
JGT L960
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW -16
CONST 32000
BOUND 1157
OFFSET
LOADC
CONST 255
JEQ L963
CONST 12
GLOBAL OMSPG.%56
GLOBAL OMSPS.Mark
CALL 2
LABEL L963
!             mcode.code[dadr] := ORD(ys[sadr]); INC(dadr); INC(sadr)
LINE 1158
LOCAL -1132
LDLW -20
CONST 1024
BOUND 1158
LDIC
CONVNC
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW -16
CONST 32000
BOUND 1158
OFFSET
STOREC
INCL -16
INCL -20
!           FOR i := 1 TO Length(y) DO IF mcode.code[dadr] # 0FFH THEN S.Mark("already set") END;
LINE 1157
INCL -12
JUMP L959
LABEL L960
!           WHILE dadr MOD WordSize # 0 DO mcode.code[dadr] := 0; INC(dadr) END
LINE 1160
LDLW -16
CONST 2
MOD
JEQZ L942
CONST 0
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW -16
CONST 32000
BOUND 1160
OFFSET
STOREC
INCL -16
JUMP L960
LABEL L957
!       ELSE S.Mark("not allowed")
LINE 1162
CONST 12
GLOBAL OMSPG.%64
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L952
!     ELSE t := c0; ti := y;
LINE 1164
LOCAL -64
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LOCAL -108
LDLW 20
CONST 44
FIXCOPY
!       loadAdr(x, 0FFH);
LINE 1165
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
!       IF len >= 0 THEN IF len < Length(y) THEN S.Mark("string too long") END
LINE 1166
LDLW -4
JLTZ L945
LDLW -4
LDLW 20
GLOBAL OMSPG.Length
CALLW 1
JGEQ L950
CONST 16
GLOBAL OMSPG.%63
GLOBAL OMSPS.Mark
CALL 2
JUMP L950
LABEL L945
!       ELSIF traps[3] # NIL THEN ti.a := x.a+WordSize; PutDO(A.MOV, ti, rh); (*open array len*)
LINE 1167
GLOBAL OMSPG.traps
LDNW 12
JEQZ L950
LDLW 12
LDNW 20
CONST 2
PLUS
STLW -88
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -108
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
!         t.a := Length(y); PutDO(A.CMP, t, rh); Trap(A.L, 3)
LINE 1168
LDLW 20
GLOBAL OMSPG.Length
CALLW 1
STLW -44
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -64
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 3
CONST 6
GLOBAL OMSPG.Trap
CALL 2
LABEL L950
!       loadAdr(y, 0FFH);
LINE 1170
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.loadAdr
CALL 3
!       (*L0:*) pc0 := mcode.pc; x.am := A.Indexed; x.ofs := 0; y.am := A.IndirectIncr;
LINE 1171
LDGW OMSPG.mcode
STLW -8
CONST 1
LDLW 12
CONST 1
STIC
CONST 0
LDLW 12
STNW 4
CONST 5
LDLW 20
CONST 1
STIC
!       A.PutDO(mcode, A.MOV, y, x, A.Word); t := c2; PutDO(A.ADD, t, x); (*TODO tester*)
LINE 1172
CONST 0
LDLW 16
LDLW 12
LDLW 24
LDLW 20
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LOCAL -64
GLOBAL OMSPG.c2
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -64
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
!       y.mode := RegI; y.a := -1; y.type := B.byteType; t := c0; PutDO(A.CMP, t, y) (*test.byte 0*); (*TODO tester*)
LINE 1173
CONST 11
LDLW 20
STNW 8
CONST -1
LDLW 20
STNW 20
LDGW OMSPB.byteType
LDLW 20
STNW 12
LOCAL -64
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -64
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
!       PutJ(A.NE, pc0 - mcode.pc -2); (*BNE L0*)
LINE 1174
LDLW -8
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 0
GLOBAL OMSPG.PutJ
CALL 2
!       free(y); free(x)
LINE 1175
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LABEL L942
RETURN
END

PROC OMSPG.OpenArrayParam 88 9 OMSPG.OpenArrayParam.%map
!   PROCEDURE OpenArrayParam*(VAR x: Item; par: B.Object);
LINE 1181
!   BEGIN t := c0; t.ofs := x.type.len; ti := c0; ti.am := A.Indexed;
LINE 1183
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 12
LDNW 12
NCHECK 1183
LDNW 16
STLW -40
LOCAL -88
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
CONST 1
STLC -87
!     IF par.register # 0FFH THEN (*in registers*) loadAdr(x, par.register); rh.reg := AllocRP(par.register+1);
LINE 1184
LDLW 20
NCHECK 1184
CONST 2
LDIC
CONST 255
JEQ L975
LDLW 20
NCHECK 1184
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
LDLW 20
NCHECK 1184
CONST 2
LDIC
INC
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
!       IF t.ofs >= 0 THEN A.PutDO(mcode, A.MOV, t, rh, A.Word)
LINE 1185
LDLW -40
JLTZ L978
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -44
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L978
!       ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word)
LINE 1186
CONST 1
STLC -88
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -84
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -88
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L975
!     ELSE (*in stack*) INC(frame, WordSize);
LINE 1188
LDGW OMSPG.frame
CONST 2
PLUS
STGW OMSPG.frame
!       IF t.ofs >= 0 THEN A.PutSO(mcode, A.PUSH, t, A.Word)
LINE 1189
LDLW -40
JLTZ L973
CONST 0
GLOBAL OMSPG.Item
LOCAL -44
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L971
LABEL L973
!       ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutSO(mcode, A.PUSH, ti, A.Word)
LINE 1190
CONST 1
STLC -88
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -84
CONST 0
GLOBAL OMSPG.Item
LOCAL -88
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
LABEL L971
!       pushAdr(x)
LINE 1192
LDLW 16
LDLW 12
GLOBAL OMSPG.pushAdr
CALL 2
RETURN
END

PROC OMSPG.VarParam 96 9 OMSPG.VarParam.%map
!   PROCEDURE VarParam*(VAR x: Item; par: B.Object);
LINE 1196
!   BEGIN t := c0; xtyp := x.type; t.ofs := xtyp.len;
LINE 1198
LOCAL -48
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 12
LDNW 12
STLW -96
LDLW -96
NCHECK 1198
LDNW 16
STLW -44
!     ti := c0; ti.am := A.Indexed; xmd := x.mode;
LINE 1199
LOCAL -92
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
CONST 1
STLC -91
LDLW 12
LDNW 8
STLW -4
!     IF par.register # 0FFH THEN
LINE 1200
LDLW 20
NCHECK 1200
CONST 2
LDIC
CONST 255
JEQ L993
!       loadAdr(x, par.register);
LINE 1201
LDLW 20
NCHECK 1201
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
!       IF (par.type.form = B.Array) & (par.type.len < 0) THEN rh.reg := AllocRP(par.register+1); (*open array*)
LINE 1202
LDLW 20
NCHECK 1202
LDNW 20
NCHECK 1202
LOADW
CONST 12
JNEQ L996
LDLW 20
NCHECK 1202
LDNW 20
NCHECK 1202
LDNW 16
JGEQZ L996
LDLW 20
NCHECK 1202
CONST 2
LDIC
INC
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
!         IF t.ofs >= 0 THEN A.PutDO(mcode, A.MOV, t, rh, A.Word)
LINE 1203
LDLW -44
JLTZ L999
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -48
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L999
!         ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word)
LINE 1204
CONST 1
STLC -92
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -88
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -92
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L996
!       ELSIF par.type.form = B.Record THEN
LINE 1206
LDLW 20
NCHECK 1206
LDNW 20
NCHECK 1206
LOADW
CONST 13
JNEQ L979
!         IF xmd = B.Par THEN rh.reg := AllocRP(par.register+1); ti.reg := A.SP; ti.ofs := x.a+WordSize+frame;
LINE 1207
LDLW -4
CONST 3
JNEQ L1005
LDLW 20
NCHECK 1207
CONST 2
LDIC
INC
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
CONST 1
STLC -92
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -88
!           A.PutDO(mcode, A.MOV, ti, rh, A.Word)
LINE 1208
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -92
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L1005
!         ELSE xmd := loadTypTagAdr(xtyp, par.register+1)
LINE 1209
LDLW 20
NCHECK 1209
CONST 2
LDIC
INC
LDLW -96
GLOBAL OMSPG.loadTypTagAdr
CALLW 2
STLW -4
RETURN
LABEL L993
!       IF (par.type.form = B.Array) & (par.type.len < 0) THEN (*open array*) rh.reg := AllocR();
LINE 1213
LDLW 20
NCHECK 1213
LDNW 20
NCHECK 1213
LOADW
CONST 12
JNEQ L982
LDLW 20
NCHECK 1213
LDNW 20
NCHECK 1213
LDNW 16
JGEQZ L982
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!         INC(frame, WordSize);
LINE 1214
LDGW OMSPG.frame
CONST 2
PLUS
STGW OMSPG.frame
!         IF t.ofs >= 0 THEN A.PutSO(mcode, A.PUSH, t, A.Word)
LINE 1215
LDLW -44
JLTZ L985
CONST 0
GLOBAL OMSPG.Item
LOCAL -48
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L988
LABEL L985
!         ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutSO(mcode, A.PUSH, ti, A.Word)
LINE 1216
CONST 1
STLC -92
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -88
CONST 0
GLOBAL OMSPG.Item
LOCAL -92
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L988
LABEL L982
!       ELSIF (par.type.form = B.Record) THEN
LINE 1218
LDLW 20
NCHECK 1218
LDNW 20
NCHECK 1218
LOADW
CONST 13
JNEQ L988
!         IF xmd = B.Par THEN INC(frame, WordSize);
LINE 1219
LDLW -4
CONST 3
JNEQ L991
LDGW OMSPG.frame
CONST 2
PLUS
STGW OMSPG.frame
!           rh.reg := AllocR(); ti.reg := A.SP; ti.ofs := x.a+WordSize+frame;
LINE 1220
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
CONST 1
STLC -92
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -88
!           A.PutSO(mcode, A.PUSH, ti, A.Word)
LINE 1221
CONST 0
GLOBAL OMSPG.Item
LOCAL -92
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L988
LABEL L991
!         ELSE pushTypTagAdr(xtyp)
LINE 1222
LDLW -96
GLOBAL OMSPG.pushTypTagAdr
CALL 1
LABEL L988
!       pushAdr(x)
LINE 1225
LDLW 16
LDLW 12
GLOBAL OMSPG.pushAdr
CALL 2
LABEL L979
RETURN
END

PROC OMSPG.ValueParam 0 4 0x00500001
!   PROCEDURE ValueParam*(VAR x: Item; par: B.Object);
LINE 1229
!   BEGIN IF par.register # 0FFH THEN load(x, par.register) ELSE push(x, par.type.size) END
LINE 1230
LDLW 20
NCHECK 1230
CONST 2
LDIC
CONST 255
JEQ L1008
LDLW 20
NCHECK 1230
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
RETURN
LABEL L1008
LDLW 20
NCHECK 1230
LDNW 20
NCHECK 1230
LDNW 32
LDLW 16
LDLW 12
GLOBAL OMSPG.push
CALL 3
RETURN
END

PROC OMSPG.StringParam 44 9 0x00500601
!   PROCEDURE StringParam*(VAR x: Item; par: B.Object);
LINE 1233
!   BEGIN t := c0; t.ofs := Length(x);
LINE 1235
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 12
GLOBAL OMSPG.Length
CALLW 1
STLW -40
!     IF par.register # 0FFH THEN loadAdr(x, par.register);
LINE 1236
LDLW 20
NCHECK 1236
CONST 2
LDIC
CONST 255
JEQ L1011
LDLW 20
NCHECK 1236
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
!       rh.reg := AllocRP(par.register+1); A.PutDO(mcode, A.MOV, t, rh, A.Word) (*len*)
LINE 1237
LDLW 20
NCHECK 1237
CONST 2
LDIC
INC
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -44
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L1011
!     ELSE INC(frame, WordSize); A.PutSO(mcode, A.PUSH, t, A.Word) (*len*);
LINE 1238
LDGW OMSPG.frame
CONST 2
PLUS
STGW OMSPG.frame
CONST 0
GLOBAL OMSPG.Item
LOCAL -44
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
!       pushAdr(x)
LINE 1239
LDLW 16
LDLW 12
GLOBAL OMSPG.pushAdr
CALL 2
RETURN
END

PROC OMSPG.For0 0 5 0x00500001
!   PROCEDURE For0*(VAR x, y: Item);
LINE 1245
!   BEGIN Store(x, y)
LINE 1246
LDLW 24
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.Store
CALL 4
RETURN
END

PROC OMSPG.For1 0 6 0x15500001
!   PROCEDURE For1*(VAR x, y, z, w: Item; VAR L: INTEGER);
LINE 1249
!     IF w.a > 0 THEN PutDO(A.CMP, x, z)
LINE 1251
LDLW 36
LDNW 20
JLEQZ L1014
LDLW 32
LDLW 28
LDLW 16
LDLW 12
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
JUMP L1012
LABEL L1014
!     ELSIF w.a < 0 THEN PutDO(A.CMP, z, x)
LINE 1252
LDLW 36
LDNW 20
JGEQZ L1016
LDLW 16
LDLW 12
LDLW 32
LDLW 28
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
JUMP L1012
LABEL L1016
!     ELSE S.Mark("zero increment")
LINE 1253
CONST 15
GLOBAL OMSPG.%65
GLOBAL OMSPS.Mark
CALL 2
LABEL L1012
!     L := mcode.pc; PutJFix(A.L, 0); free(z)
LINE 1255
LDGW OMSPG.mcode
LDLW 44
STOREW
CONST 0
CONST 6
GLOBAL OMSPG.PutJFix
CALL 2
LDLW 32
LDLW 28
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.For2 0 6 0x01500001
!   PROCEDURE For2*(VAR x, y, w: Item);
LINE 1258
!   BEGIN free(x); MakeItem(x, x.obj, x.obj.lev); (* discard effects of previous loading if any *)
LINE 1259
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLW 12
LDNW 16
NCHECK 1259
LDNW 8
LDLW 12
LDNW 16
LDLW 16
LDLW 12
GLOBAL OMSPG.MakeItem
CALL 4
!     x.rdo := FALSE; PutDO(A.ADD, w, x);
LINE 1260
CONST 0
LDLW 12
CONST 40
STIC
LDLW 16
LDLW 12
LDLW 32
LDLW 28
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
RETURN
END

PROC OMSPG.Here 0 3 0
!   PROCEDURE Here*(): INTEGER;
LINE 1265
!   BEGIN flagsItem.obj := NIL (*this location will likely be referenced*)
LINE 1266
CONST 0
GLOBAL OMSPG.flagsItem
STNW 16
!   RETURN mcode.pc
LINE 1267
LDGW OMSPG.mcode
RETURN
END

PROC OMSPG.FJump 0 3 0x00100001
!   PROCEDURE FJump*(VAR L: INTEGER);
LINE 1270
!   BEGIN PutJFix(A.AL, L); L := mcode.pc - 2
LINE 1271
LDLW 12
LOADW
CONST 7
GLOBAL OMSPG.PutJFix
CALL 2
LDGW OMSPG.mcode
CONST 2
MINUS
LDLW 12
STOREW
RETURN
END

PROC OMSPG.CFJump 0 3 0x00100001
!   PROCEDURE CFJump*(VAR x: Item);
LINE 1274
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 1276
LDLW 12
LDNW 8
CONST 12
JEQ L1019
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L1019
!     IF x.c # A.AL THEN PutJFix(A.negated(x.c), x.a); x.a := mcode.pc - 2 END;
LINE 1277
LDLW 12
LDNW 28
CONST 7
JEQ L1022
LDLW 12
LDNW 20
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
CONVNC
GLOBAL OMSPG.PutJFix
CALL 2
LDGW OMSPG.mcode
CONST 2
MINUS
LDLW 12
STNW 20
LABEL L1022
!     FixLink(x.b)
LINE 1278
LDLW 12
LDNW 24
GLOBAL OMSPG.FixLink
CALL 1
RETURN
END

PROC OMSPG.BJump 0 3 0
!   PROCEDURE BJump*(L: INTEGER);
LINE 1281
!   BEGIN PutJ(A.AL, L - mcode.pc - 2)
LINE 1282
LDLW 12
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 7
GLOBAL OMSPG.PutJ
CALL 2
RETURN
END

PROC OMSPG.CBJump 0 3 0x00100001
!   PROCEDURE CBJump*(VAR x: Item; L: INTEGER);
LINE 1285
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 1287
LDLW 12
LDNW 8
CONST 12
JEQ L1025
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L1025
!     IF x.c # A.AL THEN PutJ(A.negated(x.c), L - mcode.pc - 2) END;
LINE 1288
LDLW 12
LDNW 28
CONST 7
JEQ L1028
LDLW 20
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
CONVNC
GLOBAL OMSPG.PutJ
CALL 2
LABEL L1028
!     FixLink(x.b); FixLinkWith(x.a, L)
LINE 1289
LDLW 12
LDNW 24
GLOBAL OMSPG.FixLink
CALL 1
LDLW 20
LDLW 12
LDNW 20
GLOBAL OMSPG.FixLinkWith
CALL 2
RETURN
END

PROC OMSPG.fixup 0 2 0x00100001
!   PROCEDURE fixup*(VAR x: Item);
LINE 1292
!   BEGIN FixLink(x.a)
LINE 1293
LDLW 12
LDNW 20
GLOBAL OMSPG.FixLink
CALL 1
RETURN
END

PROC OMSPG.Enter 88 6 OMSPG.Enter.%map
!   PROCEDURE Enter*(size: INTEGER; int: BOOLEAN; savedregs: SET);
LINE 1296
!     frame := 0;
LINE 1299
CONST 0
STGW OMSPG.frame
!     IF size >= ORD({16}) THEN S.Mark("local variables size exeeded") END;
LINE 1301
LDLW 12
CONST 65536
JLT L1031
CONST 29
GLOBAL OMSPG.%66
GLOBAL OMSPS.Mark
CALL 2
LABEL L1031
!     IF size # 0 THEN t := c0; t.a := size; tsp := sp; PutDO(A.SUB, t, tsp); INC(frame, size) END;
LINE 1302
LDLW 12
JEQZ L1034
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 12
STLW -24
LOCAL -88
GLOBAL OMSPG.sp
CONST 44
FIXCOPY
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.Item
LOCAL -44
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
GLOBAL OMSPG.frame
DUP 0
LOADW
LDLW 12
PLUS
SWAP
STOREW
LABEL L1034
!     SaveRegs(savedregs); (*save registers before use*)
LINE 1304
LDLW 20
GLOBAL OMSPG.SaveRegs
CALL 1
!     VRS := RIU; vframe := frame
LINE 1305
LDGW OMSPG.RIU
STGW OMSPG.VRS
LDGW OMSPG.frame
STGW OMSPG.vframe
RETURN
END

PROC OMSPG.Return 88 9 OMSPG.Return.%map
!   PROCEDURE Return*(form: INTEGER; VAR x: Item; size: INTEGER; int: BOOLEAN; savedregs: SET);
LINE 1308
!   BEGIN t := c0;
LINE 1310
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
!     IF form # B.NoTyp THEN resultRegister(rr); IF rr.reg IN RIU THEN freeR(rr.reg) END;
LINE 1311
LDLW 12
CONST 9
JEQ L1037
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.resultRegister
CALL 2
LDGW OMSPG.RIU
CONST 1
LDLC -88
CONST 32
BOUND 1311
LSL
BITAND
JEQZ L1040
LDLC -88
GLOBAL OMSPG.freeR
CALL 1
LABEL L1040
!       load(x, rr.reg); IF x.reg IN RIU THEN free(x) END
LINE 1312
LDLC -88
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LDGW OMSPG.RIU
CONST 1
LDLW 16
LOADC
CONST 32
BOUND 1312
LSL
BITAND
JEQZ L1037
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
LABEL L1037
!     RestoreRegs(savedregs); PRU := PRU - savedregs;
LINE 1315
LDLW 32
GLOBAL OMSPG.RestoreRegs
CALL 1
LDGW OMSPG.PRU
LDLW 32
BITNOT
BITAND
STGW OMSPG.PRU
!     IF size # 0 THEN t.ofs := size; A.PutDO(mcode, A.ADD, t, sp, A.Word); DEC(frame, size) END;
LINE 1316
LDLW 24
JEQZ L1046
LDLW 24
STLW -40
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.sp
GLOBAL OMSPG.Item
LOCAL -44
CONST 5
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
GLOBAL OMSPG.frame
DUP 0
LOADW
LDLW 24
MINUS
SWAP
STOREW
LABEL L1046
!     IF int THEN A.PutNO(mcode, A.RETI);
LINE 1317
LDLC 28
JEQZ L1049
CONST 38
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
!       IF PRU # {} THEN S.Mark("destroyed regs in handler") END
LINE 1318
LDGW OMSPG.PRU
JEQZ L1047
CONST 26
GLOBAL OMSPG.%67
GLOBAL OMSPS.Mark
CALL 2
JUMP L1047
LABEL L1049
!     ELSE A.PutNO(mcode, A.RET)
LINE 1319
CONST 384
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
LABEL L1047
!     SetAllocationMode(Stack); RIU := {}; VRS := RIU
LINE 1321
CONST 0
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
CONST 0
STGW OMSPG.RIU
LDGW OMSPG.RIU
STGW OMSPG.VRS
RETURN
END

PROC OMSPG.Increment 4 6 0x00a00001
!   PROCEDURE Increment*(upordown: INTEGER; VAR x, y: Item);
LINE 1326
!     IF upordown = 0 THEN op := A.ADD ELSE op := A.SUB END;
LINE 1329
LDLW 12
JNEQZ L1055
CONST 5
STLC -1
JUMP L1053
LABEL L1055
CONST 8
STLC -1
LABEL L1053
!     IF y.type.form = B.NoTyp THEN y := c1 END;
LINE 1330
LDLW 24
LDNW 12
NCHECK 1330
LOADW
CONST 9
JNEQ L1058
LDLW 28
GLOBAL OMSPG.Item
JEQ L1059
ERROR E_ASSIGN 1330
LABEL L1059
LDLW 24
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
LABEL L1058
!     PutDO(op, y, x);
LINE 1331
LDLW 20
LDLW 16
LDLW 28
LDLW 24
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
!     free(y); free(x)
LINE 1332
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Include 92 6 OMSPG.Include.%map
!   PROCEDURE Include*(inorex: INTEGER; VAR x, y: Item);
LINE 1335
!   BEGIN IF inorex = 0 THEN op := A.BIS ELSE op := A.BIC END;
LINE 1337
LDLW 12
JNEQZ L1062
CONST 13
STLC -1
JUMP L1060
LABEL L1062
CONST 12
STLC -1
LABEL L1060
!     IF y.mode = B.Const THEN t := c0; t.a := LSL(1, y.a); PutDO(op, t, x)
LINE 1338
LDLW 24
LDNW 8
CONST 1
JNEQ L1065
LOCAL -92
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
CONST 1
LDLW 24
LDNW 20
LSL
STLW -72
LDLW 20
LDLW 16
GLOBAL OMSPG.Item
LOCAL -92
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L1065
!     ELSE z := c1; load(z, 0FFH); Rla(z, y); PutDO(op, z, x); free(z)
LINE 1339
LOCAL -48
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
CONST 255
GLOBAL OMSPG.Item
LOCAL -48
GLOBAL OMSPG.load
CALL 3
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -48
GLOBAL OMSPG.Rla
CALL 4
LDLW 20
LDLW 16
GLOBAL OMSPG.Item
LOCAL -48
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
GLOBAL OMSPG.Item
LOCAL -48
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Assert 8 5 0x00100001
!   PROCEDURE Assert*(VAR x: Item);
LINE 1343
!     IF traps[7] # NIL
LINE 1346
GLOBAL OMSPG.traps
LDNW 28
JEQZ L1068
!       pc0 := 0;
LINE 1348
CONST 0
STLW -8
!       IF x.mode # Cond THEN loadCond(x) END;
LINE 1349
LDLW 12
LDNW 8
CONST 12
JEQ L1071
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L1071
!       IF x.a = 0 THEN cond := A.negated(x.c);
LINE 1350
LDLW 12
LDNW 20
JNEQZ L1074
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
STLW -4
JUMP L1072
LABEL L1074
!       ELSE pc0 := mcode.pc; PutJFix(x.c, 0); FixLink(x.a); cond := A.AL
LINE 1351
LDGW OMSPG.mcode
STLW -8
CONST 0
LDLW 12
LDNW 28
CONVNC
GLOBAL OMSPG.PutJFix
CALL 2
LDLW 12
LDNW 20
GLOBAL OMSPG.FixLink
CALL 1
CONST 7
STLW -4
LABEL L1072
!       Trap(cond, 7); FixLink(x.b);
LINE 1353
CONST 7
LDLW -4
GLOBAL OMSPG.Trap
CALL 2
LDLW 12
LDNW 24
GLOBAL OMSPG.FixLink
CALL 1
!       IF pc0 # 0 THEN A.fix(mcode, pc0, mcode.pc - pc0 - 2) END
LINE 1354
LDLW -8
JEQZ L1068
LDGW OMSPG.mcode
LDLW -8
MINUS
CONST 2
MINUS
LDLW -8
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.fix
CALL 4
LABEL L1068
RETURN
END

PROC OMSPG.Copy 100 9 OMSPG.Copy.%map
!   PROCEDURE Copy*(VAR x, y, z: Item); (*y := x*)
LINE 1358
!   BEGIN pc0 := 0;
LINE 1360
CONST 0
STLW -4
!     IF z.mode = B.Const THEN
LINE 1361
LDLW 28
LDNW 8
CONST 1
JNEQ L1083
!       IF z.a > 0 THEN load(z, 0FFH) ELSE S.Mark("bad count") END
LINE 1362
LDLW 28
LDNW 20
JLEQZ L1086
CONST 255
LDLW 32
LDLW 28
GLOBAL OMSPG.load
CALL 3
JUMP L1078
LABEL L1086
CONST 10
GLOBAL OMSPG.%68
GLOBAL OMSPS.Mark
CALL 2
JUMP L1078
LABEL L1083
!     ELSE load(z, 0FFH);
LINE 1363
CONST 255
LDLW 32
LDLW 28
GLOBAL OMSPG.load
CALL 3
!       IF traps[3] # NIL THEN t := c0; PutDO(A.CMP, t, z); Trap(A.L, 3) END;
LINE 1364
GLOBAL OMSPG.traps
LDNW 12
JEQZ L1081
LOCAL -52
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 32
LDLW 28
GLOBAL OMSPG.Item
LOCAL -52
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 3
CONST 6
GLOBAL OMSPG.Trap
CALL 2
LABEL L1081
!       pc0 := mcode.pc; PutJ( A.EQ, 0); (*JEQ L0*)
LINE 1365
LDGW OMSPG.mcode
STLW -4
CONST 0
CONST 1
GLOBAL OMSPG.PutJ
CALL 2
LABEL L1078
!     oneReg := distance(y, x, d);
LINE 1367
GLOBAL OMSPG.Item
LOCAL -96
LDLW 12
LDLW 20
GLOBAL OMSPG.distance
CALLW 4
STLC -97
!     load(x, 0FFH);
LINE 1368
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
!     IF oneReg THEN free(y); y := d; y.reg := x.reg; y.tmp := FALSE; Dec(y, WordSize);
LINE 1369
LDLC -97
JEQZ L1089
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 24
GLOBAL OMSPG.Item
JEQ L1090
ERROR E_ASSIGN 1369
LABEL L1090
LDLW 20
LOCAL -96
CONST 44
FIXCOPY
LDLW 12
LOADC
LDLW 20
STOREC
CONST 0
LDLW 20
CONST 41
STIC
CONST 2
LDLW 24
LDLW 20
GLOBAL OMSPG.Dec
CALL 3
JUMP L1087
LABEL L1089
!     ELSE load(y, 0FFH); y.ofs := 0 END;
LINE 1370
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
CONST 0
LDLW 20
STNW 4
LABEL L1087
!     pc1 := mcode.pc; x.a := 0; x.am := A.IndirectIncr; y.am := A.Indexed;
LINE 1371
LDGW OMSPG.mcode
STLW -8
CONST 0
LDLW 12
STNW 20
CONST 5
LDLW 12
CONST 1
STIC
CONST 1
LDLW 20
CONST 1
STIC
!     A.PutDO(mcode, A.MOV, x, y, A.Word);
LINE 1372
CONST 0
LDLW 24
LDLW 20
LDLW 16
LDLW 12
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     y.am := A.Register; IF ~oneReg THEN t := c2; A.PutDO(mcode, A.ADD, t, y, A.Word) END;
LINE 1373
CONST 0
LDLW 20
CONST 1
STIC
LDLC -97
JNEQZ L1093
LOCAL -52
GLOBAL OMSPG.c2
CONST 44
FIXCOPY
CONST 0
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -52
CONST 5
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LABEL L1093
!     t := c1; A.PutDO(mcode, A.SUB, t, z, A.Word); PutJ(A.NE, pc1 - mcode.pc - 2); (*BNE L1*)
LINE 1374
LOCAL -52
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
CONST 0
LDLW 32
LDLW 28
GLOBAL OMSPG.Item
LOCAL -52
CONST 8
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LDLW -8
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 0
GLOBAL OMSPG.PutJ
CALL 2
!     IF pc0 # 0 THEN A.fix(mcode, pc0, mcode.pc - pc0 - 2) END; free(z); free(y); free(x)
LINE 1375
LDLW -4
JEQZ L1096
LDGW OMSPG.mcode
LDLW -4
MINUS
CONST 2
MINUS
LDLW -4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.fix
CALL 4
LABEL L1096
LDLW 32
LDLW 28
GLOBAL OMSPG.free
CALL 2
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.LogicalSR 48 6 0x00200301
!   PROCEDURE LogicalSR*(fct: INTEGER; VAR x: Item);
LINE 1378
!     IF fct = 0 THEN op := A.BIC ELSE op := A.BIS END;
LINE 1381
LDLW 12
JNEQZ L1099
CONST 12
STLC -1
JUMP L1097
LABEL L1099
CONST 13
STLC -1
LABEL L1097
!     t := sr; PutDO(op, x, t); free(x)
LINE 1382
LOCAL -48
GLOBAL OMSPG.sr
CONST 44
FIXCOPY
GLOBAL OMSPG.Item
LOCAL -48
LDLW 20
LDLW 16
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.LogicalSROnExit 48 6 0x00200301
!   PROCEDURE LogicalSROnExit*(fct: INTEGER; VAR x: Item);
LINE 1385
!     IF fct = 0 THEN op := A.BIC ELSE op := A.BIS END;
LINE 1388
LDLW 12
JNEQZ L1102
CONST 12
STLC -1
JUMP L1100
LABEL L1102
CONST 13
STLC -1
LABEL L1100
!     t := c0; t.mode := B.Var; t.c := 1; t.rdo := FALSE; PutDO(op, x, t); free(x); free(t)
LINE 1389
LOCAL -48
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
CONST 2
STLW -40
CONST 1
STLW -20
CONST 0
STLC -8
GLOBAL OMSPG.Item
LOCAL -48
LDLW 20
LDLW 16
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
GLOBAL OMSPG.Item
LOCAL -48
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Abs 48 6 0x00100301
!   PROCEDURE Abs*(VAR x: Item);
LINE 1394
!     IF x.mode = B.Const THEN x.a := ABS(x.a)
LINE 1397
LDLW 12
LDNW 8
CONST 1
JNEQ L1105
LDLW 12
LDNW 20
GLOBAL ABSINT
CALLW 1
LDLW 12
STNW 20
RETURN
LABEL L1105
!     ELSE t := c0; PutDO(A.CMP, t, x); pc := mcode.pc; PutJ(A.GE, 0);
LINE 1398
LOCAL -48
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -48
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDGW OMSPG.mcode
STLW -4
CONST 0
CONST 5
GLOBAL OMSPG.PutJ
CALL 2
!       PutSO(A.NEG, x); A.fix(mcode, pc, mcode.pc - pc - 2)
LINE 1399
LDLW 16
LDLW 12
CONST 1
GLOBAL OMSPG.PutSO
CALL 3
LDGW OMSPG.mcode
LDLW -4
MINUS
CONST 2
MINUS
LDLW -4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.fix
CALL 4
RETURN
END

PROC OMSPG.Odd 44 6 0x00100601
!   PROCEDURE Odd*(VAR x: Item);
LINE 1403
!   BEGIN t := c1; PutDO(A.BIT, t, x); SetCC(x, A.NE); free(x)
LINE 1405
LOCAL -44
GLOBAL OMSPG.c1
CONST 44
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 11
GLOBAL OMSPG.PutDO
CALL 5
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Ord 0 4 0x00100001
!   PROCEDURE Ord*(VAR x: Item);
LINE 1408
!   BEGIN IF x.mode = Cond THEN load(x, 0FFH) END
LINE 1409
LDLW 12
LDNW 8
CONST 12
JNEQ L1108
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
LABEL L1108
RETURN
END

PROC OMSPG.Len 0 3 0x00100001
!   PROCEDURE Len*(VAR x: Item);
LINE 1412
!     IF x.type.form = B.String THEN free(x); x.mode := B.Const; x.a := Length(x); x.type := B.intType
LINE 1414
LDLW 12
LDNW 12
NCHECK 1414
LOADW
CONST 11
JNEQ L1116
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
CONST 1
LDLW 12
STNW 8
LDLW 12
GLOBAL OMSPG.Length
CALLW 1
LDLW 12
STNW 20
LDGW OMSPB.intType
LDLW 12
STNW 12
RETURN
LABEL L1116
!     ELSIF x.type.len >= 0 THEN free(x); x.mode := B.Const; x.a := x.type.len; x.type := B.intType
LINE 1415
LDLW 12
LDNW 12
NCHECK 1415
LDNW 16
JLTZ L1118
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
CONST 1
LDLW 12
STNW 8
LDLW 12
LDNW 12
NCHECK 1415
LDNW 16
LDLW 12
STNW 20
LDGW OMSPB.intType
LDLW 12
STNW 12
RETURN
LABEL L1118
!       IF x.mode IN {B.Var, B.Par} THEN x.mode := B.Var; INC(x.a, WordSize)
LINE 1417
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 1417
LSL
CONST 12
BITAND
JEQZ L1112
CONST 2
LDLW 12
STNW 8
LDLW 12
DUP 0
LDNW 20
CONST 2
PLUS
SWAP
STNW 20
RETURN
LABEL L1112
!       ELSIF x.mode IN {Reg, RegI} THEN x.mode := Reg; INC(x.reg)
LINE 1418
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 1418
LSL
CONST 3072
BITAND
JEQZ L1114
CONST 10
LDLW 12
STNW 8
LDLW 12
DUP 0
LOADC
INC
SWAP
STOREC
RETURN
LABEL L1114
!       ELSE S.Mark("bad mode in Len")
LINE 1419
CONST 16
GLOBAL OMSPG.%69
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.ClrC 0 4 0
!   PROCEDURE ClrC*;
LINE 1424
!   BEGIN A.PutNO(mcode, A.CLRC)
LINE 1425
CONST 385
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
RETURN
END

PROC OMSPG.Nop 88 6 OMSPG.Nop.%map
!   PROCEDURE Nop*;
LINE 1428
!   BEGIN a := c0; b := cg2; PutDO(A.MOV, a, b)
LINE 1430
LOCAL -44
GLOBAL OMSPG.c0
CONST 44
FIXCOPY
LOCAL -88
GLOBAL OMSPG.cg2
CONST 44
FIXCOPY
GLOBAL OMSPG.Item
LOCAL -88
GLOBAL OMSPG.Item
LOCAL -44
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
RETURN
END

PROC OMSPG.Swpb 0 4 0x00100001
!   PROCEDURE Swpb*(VAR x:Item);
LINE 1433
!   BEGIN PutSO(A.SWPB, x)
LINE 1434
LDLW 16
LDLW 12
CONST 33
GLOBAL OMSPG.PutSO
CALL 3
RETURN
END

PROC OMSPG.Shift 0 5 0x00a00001
!   PROCEDURE Shift*(fct: INTEGER; VAR x, y: Item); (*x := x op y*)
LINE 1437
!   BEGIN IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 1438
LDLW 16
LDNW 8
CONST 1
JNEQ L1126
LDLW 24
LDNW 8
CONST 1
JNEQ L1126
!       IF fct = 0 THEN x.a := LSL(x.a, y.a) ELSIF fct = 2 THEN x.a := ASR(x.a, y.a) END
LINE 1439
LDLW 12
JNEQZ L1129
LDLW 16
LDNW 20
LDLW 24
LDNW 20
LSL
LDLW 16
STNW 20
RETURN
LABEL L1129
LDLW 12
CONST 2
JNEQ L1124
LDLW 16
LDNW 20
LDLW 24
LDNW 20
ASR
LDLW 16
STNW 20
RETURN
LABEL L1126
!     ELSE IF fct = 0 THEN Rla(x, y) ELSIF fct = 2 THEN Rra(x, y) END
LINE 1440
LDLW 12
JNEQZ L1122
LDLW 28
LDLW 24
LDLW 20
LDLW 16
GLOBAL OMSPG.Rla
CALL 4
RETURN
LABEL L1122
LDLW 12
CONST 2
JNEQ L1124
LDLW 28
LDLW 24
LDLW 20
LDLW 16
GLOBAL OMSPG.Rra
CALL 4
LABEL L1124
RETURN
END

PROC OMSPG.Rotate 0 4 0x00200001
!   PROCEDURE Rotate*(fct: INTEGER; VAR x: Item);
LINE 1444
!   BEGIN IF fct = 0 THEN PutSO(A.RLC, x) ELSIF fct = 2 THEN PutSO(A.RRC, x) END
LINE 1445
LDLW 12
JNEQZ L1135
LDLW 20
LDLW 16
CONST 258
GLOBAL OMSPG.PutSO
CALL 3
RETURN
LABEL L1135
LDLW 12
CONST 2
JNEQ L1137
LDLW 20
LDLW 16
CONST 32
GLOBAL OMSPG.PutSO
CALL 3
LABEL L1137
RETURN
END

PROC OMSPG.Logical 4 6 0x00a00001
!   PROCEDURE Logical*(fct: INTEGER; VAR x, y: Item);
LINE 1448
!     IF fct = 0 THEN op := A.BIC ELSIF fct = 1 THEN op := A.BIS ELSIF fct = 2 THEN op := A.XOR ELSE op := A.AND END;
LINE 1451
LDLW 12
JNEQZ L1140
CONST 12
STLC -1
JUMP L1138
LABEL L1140
LDLW 12
CONST 1
JNEQ L1142
CONST 13
STLC -1
JUMP L1138
LABEL L1142
LDLW 12
CONST 2
JNEQ L1144
CONST 14
STLC -1
JUMP L1138
LABEL L1144
CONST 15
STLC -1
LABEL L1138
!     PutDO(op, y, x); free(y); free(x)
LINE 1452
LDLW 20
LDLW 16
LDLW 28
LDLW 24
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.ADC 0 6 0x00500001
!   PROCEDURE ADC*(VAR x, y: Item);
LINE 1455
!   BEGIN PutDO(A.ADDC, y, x); free(y); free(x)
LINE 1456
LDLW 16
LDLW 12
LDLW 24
LDLW 20
CONST 6
GLOBAL OMSPG.PutDO
CALL 5
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.SBC 0 6 0x00500001
!   PROCEDURE SBC*(VAR x, y: Item);
LINE 1459
!   BEGIN PutDO(A.SUBC, y, x); free(y); free(x)
LINE 1460
LDLW 16
LDLW 12
LDLW 24
LDLW 20
CONST 7
GLOBAL OMSPG.PutDO
CALL 5
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Bit 0 6 0x00500001
!   PROCEDURE Bit*(VAR x, y: Item);
LINE 1463
!   BEGIN PutDO(A.BIT, y, x); free(y); free(x);
LINE 1464
LDLW 16
LDLW 12
LDLW 24
LDLW 20
CONST 11
GLOBAL OMSPG.PutDO
CALL 5
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
!     SetCC(x, A.NE)
LINE 1465
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.Condition 0 4 0x00100001
!   PROCEDURE Condition*(VAR x: Item);
LINE 1468
!   BEGIN (*x.mode = Const*) SetCC(x, x.a)
LINE 1469
LDLW 12
LDNW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.Val 0 0 0x00500001
!   PROCEDURE Val*(VAR x: Item; t: B.Type);
LINE 1472
!   BEGIN (*if x is integer constant, set x.c to 1 indication that address is known at compile time*)
LINE 1473
RETURN
END

PROC OMSPG.Open 4 4 0
!   PROCEDURE Open*;
LINE 1479
!   BEGIN A.Init(mcode); A.Init(strings); varsize := 0;
LINE 1481
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.Init
CALL 2
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.strings
GLOBAL OMSPA.Init
CALL 2
CONST 0
STGW OMSPG.varsize
!     curImport := 0;
LINE 1482
CONST 0
STGW OMSPG.curImport
!     FOR i := 0 TO LEN(traps) - 1 DO traps[i] := NIL END;
LINE 1483
CONST 0
STLW -4
LABEL L1145
LDLW -4
CONST 7
JGT L1146
CONST 0
GLOBAL OMSPG.traps
LDLW -4
CONST 8
BOUND 1483
STIW
INCL -4
JUMP L1145
LABEL L1146
!     FOR i := 0 TO LEN(arith) - 1 DO arith[i] := NIL END;
LINE 1484
CONST 0
STLW -4
LABEL L1147
LDLW -4
CONST 3
JGT L1148
CONST 0
GLOBAL OMSPG.arith
LDLW -4
CONST 4
BOUND 1484
STIW
INCL -4
JUMP L1147
LABEL L1148
!     vectors.size := 0; FOR i := 1 TO 32 DO EmitWord(vectors, 0FFFFH); END; vectors.fixup := NIL;
LINE 1486
CONST 0
LDGW OMSPG.vectors
NCHECK 1486
STNW 40
CONST 1
STLW -4
LABEL L1149
LDLW -4
CONST 32
JGT L1150
CONST 65535
GLOBAL OMSPG.vectors
GLOBAL OMSPG.EmitWord
CALL 2
INCL -4
JUMP L1149
LABEL L1150
CONST 0
LDGW OMSPG.vectors
NCHECK 1486
STNW 52
!     head := NIL; tail := NIL; body := NIL; ccs := NIL;nofsec := 0;
LINE 1488
CONST 0
STGW OMSPG.head
CONST 0
STGW OMSPG.tail
CONST 0
STGW OMSPG.body
CONST 0
STGW OMSPG.ccs
CONST 0
STGW OMSPG.nofsec
!     RIU := {}; VRS := {};
LINE 1489
CONST 0
STGW OMSPG.RIU
CONST 0
STGW OMSPG.VRS
!     rh.reg := 15; rh.am := A.Register; rh.ofs := 0; rh.obj := NIL; rh.mode := Reg; rh.type := B.intType;
LINE 1490
CONST 15
STGC OMSPG.rh
CONST 0
GLOBAL OMSPG.rh
CONST 1
STIC
CONST 0
GLOBAL OMSPG.rh
STNW 4
CONST 0
GLOBAL OMSPG.rh
STNW 16
CONST 10
GLOBAL OMSPG.rh
STNW 8
LDGW OMSPB.intType
GLOBAL OMSPG.rh
STNW 12
!     SetAllocationMode(Stack)
LINE 1491
CONST 0
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
RETURN
END

PROC OMSPG.Header 0 7 0
!   PROCEDURE Header*;
LINE 1494
!   BEGIN NewSection(mcode, body, "c", "module body"); (*create the module initialization section*)
LINE 1495
CONST 12
GLOBAL OMSPG.%70
CONST 99
ALIGNC
GLOBAL OMSPG.body
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPG.NewSection
CALL 6
!     frame := 0; vframe := 0; SetAllocationMode(Stack)
LINE 1496
CONST 0
STGW OMSPG.frame
CONST 0
STGW OMSPG.vframe
CONST 0
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
RETURN
END

PROC OMSPG.WriteWord 0 4 0x00100001
!   PROCEDURE WriteWord(VAR R: Files.Rider; w: INTEGER);
LINE 1499
!   BEGIN Files.WriteByte(R, w MOD 100H); Files.WriteByte(R, w DIV 100H MOD 100H)
LINE 1500
LDLW 20
CONST 256
MOD
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
LDLW 20
CONST 256
DIV
CONST 256
MOD
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
RETURN
END

PROC OMSPG.WriteSection 12 5 0x00508001
!   PROCEDURE WriteSection(VAR R: Files.Rider; s: Section);
LINE 1503
!   BEGIN ASSERT(s.size < 10000H);
LINE 1505
LDLW 20
NCHECK 1505
LDNW 40
CONST 65536
JLT L1152
CONST 0
CONST 1505
GLOBAL EASSERT
CALL 2
LABEL L1152
!     Files.Write(R, s.segment); Files.WriteString(R, s.name); WriteWord(R, s.size);
LINE 1506
LDLW 20
NCHECK 1506
CONST 36
LDIC
ALIGNC
LDLW 16
LDLW 12
GLOBAL POFiles.Write
CALL 3
LDLW 20
NCHECK 1506
CONST 4
OFFSET
CONST 32
SWAP
LDLW 16
LDLW 12
GLOBAL POFiles.WriteString
CALL 4
LDLW 20
NCHECK 1506
LDNW 40
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
!     IF s.segment # "r" THEN
LINE 1507
LDLW 20
NCHECK 1507
CONST 36
LDIC
CONST 114
JEQ L1155
!       FOR i := 0 TO s.size - 1 DO (*write content*) Files.WriteByte(R, s.content.code[s.org + i]) END
LINE 1508
LDLW 20
NCHECK 1508
LDNW 40
DEC
STLW -12
CONST 0
STLW -4
LABEL L1156
LDLW -4
LDLW -12
JGT L1155
LDLW 20
NCHECK 1508
LDNW 48
NCHECK 1508
CONST 4
OFFSET
LDLW 20
NCHECK 1508
LDNW 44
LDLW -4
PLUS
CONST 32000
BOUND 1508
OFFSET
LOADC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
INCL -4
JUMP L1156
LABEL L1155
!     f := s.fixup;
LINE 1510
LDLW 20
NCHECK 1510
LDNW 52
STLW -8
LABEL L1158
!     WHILE f # NIL DO WriteWord(R, f.fixadr);
LINE 1511
LDLW -8
JEQZ L1160
LDLW -8
NCHECK 1511
LOADW
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
!       Files.WriteByte(R, f.mno); WriteWord(R, f.sno); WriteWord(R, f.offset);
LINE 1512
LDLW -8
NCHECK 1512
CONST 4
LDIC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
LDLW -8
NCHECK 1512
LDNW 8
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
LDLW -8
NCHECK 1512
LDNW 12
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
!       Files.WriteByte(R, f.mnor); WriteWord(R, f.snor);
LINE 1513
LDLW -8
NCHECK 1513
CONST 16
LDIC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
LDLW -8
NCHECK 1513
CONST 17
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
!       f := f.next
LINE 1514
LDLW -8
NCHECK 1514
LDNW 20
STLW -8
JUMP L1158
LABEL L1160
!     WriteWord(R, 0)
LINE 1516
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
END

PROC OMSPG.Close 60 6 0x00118031
!   PROCEDURE Close*(VAR modid: S.Ident; key, nofent: INTEGER; codeseg: BYTE);
LINE 1519
!   BEGIN  (*exit code*) A.PutNO(mcode, A.RET); body.size := mcode.pc - body.org; 
LINE 1524
CONST 384
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
LDGW OMSPG.mcode
LDGW OMSPG.body
NCHECK 1524
LDNW 44
MINUS
LDGW OMSPG.body
NCHECK 1524
STNW 40
!     obj := B.topScope.next; nofimps := 0;
LINE 1525
LDGW OMSPB.topScope
NCHECK 1525
LDNW 12
STLW -4
CONST 0
STLW -12
LABEL L1161
!     WHILE obj # NIL DO
LINE 1526
LDLW -4
JEQZ L1163
!       IF (obj.class = B.Mod) & (obj.dsc # B.system) THEN INC(nofimps); (*count imports*)
LINE 1527
LDLW -4
NCHECK 1527
LOADC
CONST 8
JNEQ L1166
LDLW -4
NCHECK 1527
LDNW 16
LDGW OMSPB.system
JEQ L1166
INCL -12
LABEL L1166
!       obj := obj.next
LINE 1529
LDLW -4
NCHECK 1529
LDNW 12
STLW -4
JUMP L1161
LABEL L1163
!     B.MakeFileName(name, modid, ".mpc"); (*write code file*)
LINE 1532
CONST 5
GLOBAL OMSPG.%71
CONST 32
LDLW 12
LOCAL -44
GLOBAL OMSPB.MakeFileName
CALL 5
!     F := Files.New(name); Files.Set(R, F, 0); Files.WriteString(R, modid); Files.WriteInt(R, key); Files.WriteByte(R, codeseg + 2); (*version 1*)
LINE 1533
CONST 32
LOCAL -44
GLOBAL POFiles.New
CALLW 2
STLW -48
CONST 0
LDLW -48
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL POFiles.Set
CALL 4
CONST 32
LDLW 12
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL POFiles.WriteString
CALL 4
LDLW 16
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL POFiles.WriteInt
CALL 3
LDLC 24
CONST 2
PLUS
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL POFiles.WriteByte
CALL 3
!     obj := B.topScope.next;
LINE 1534
LDGW OMSPB.topScope
NCHECK 1534
LDNW 12
STLW -4
LABEL L1168
!     WHILE (obj # NIL) & (obj.class = B.Mod) DO  (*imports*)
LINE 1535
LDLW -4
JEQZ L1170
LDLW -4
NCHECK 1535
LOADC
CONST 8
JNEQ L1170
!       IF obj.dsc # B.system THEN Files.WriteString(R, obj(B.Module).orgname); Files.WriteInt(R, obj.val) END;
LINE 1536
LDLW -4
NCHECK 1536
LDNW 16
LDGW OMSPB.system
JEQ L1173
LDLW -4
DUP 0
NCHECK 1536
LDNW -4
DUP 0
LDNW 4
CONST 1
JGEQ L1176
POP 1
JUMP L1175
LABEL L1176
LDNW 8
LDNW 4
GLOBAL OMSPB.ModDesc
JEQ L1174
LABEL L1175
ERROR E_CAST 1536
LABEL L1174
CONST 60
OFFSET
CONST 32
SWAP
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL POFiles.WriteString
CALL 4
LDLW -4
NCHECK 1536
LDNW 56
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL POFiles.WriteInt
CALL 3
LABEL L1173
!       obj := obj.next
LINE 1537
LDLW -4
NCHECK 1537
LDNW 12
STLW -4
JUMP L1168
LABEL L1170
!     Files.Write(R, 0X);
LINE 1539
CONST 0
ALIGNC
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL POFiles.Write
CALL 3
!     s := head; WHILE s # NIL DO WriteSection(R, s); s := s.next END;
LINE 1540
LDGW OMSPG.head
STLW -8
LABEL L1178
LDLW -8
JEQZ L1180
LDLW -8
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL OMSPG.WriteSection
CALL 3
LDLW -8
NCHECK 1540
LDNW 56
STLW -8
JUMP L1178
LABEL L1180
!     WriteSection(R, vectors); Files.WriteByte(R, 0);
LINE 1541
LDGW OMSPG.vectors
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL OMSPG.WriteSection
CALL 3
CONST 0
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL POFiles.WriteByte
CALL 3
!     WriteWord(R, nofent); WriteWord(R, body.no);
LINE 1542
LDLW 20
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL OMSPG.WriteWord
CALL 3
LDGW OMSPG.body
NCHECK 1542
LOADW
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL OMSPG.WriteWord
CALL 3
!     obj := B.topScope.next;
LINE 1543
LDGW OMSPB.topScope
NCHECK 1543
LDNW 12
STLW -4
LABEL L1181
!     WHILE obj # NIL DO  (*entries*)
LINE 1544
LDLW -4
JEQZ L1183
!       IF obj.exno # 0 THEN
LINE 1545
LDLW -4
NCHECK 1545
CONST 1
LDIC
JEQZ L1186
!         IF obj.class IN {B.Var, B.StoredConst} THEN WriteWord(R, obj.val MOD 1000H)
LINE 1546
CONST 1
LDLW -4
NCHECK 1546
LOADC
CONST 32
BOUND 1546
LSL
CONST 516
BITAND
JEQZ L1189
LDLW -4
NCHECK 1546
LDNW 56
CONST 4096
MOD
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1186
LABEL L1189
!         ELSIF obj.class = B.Typ THEN
LINE 1547
LDLW -4
NCHECK 1547
LOADC
CONST 5
JNEQ L1191
!           IF obj.type.form = B.Record THEN WriteWord(R, obj.type.len)
LINE 1548
LDLW -4
NCHECK 1548
LDNW 20
NCHECK 1548
LOADW
CONST 13
JNEQ L1194
LDLW -4
NCHECK 1548
LDNW 20
NCHECK 1548
LDNW 16
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1186
LABEL L1194
!           ELSIF (obj.type.form = B.Pointer) & ((obj.type.base.typobj = NIL) OR (obj.type.base.typobj.exno = 0)) THEN
LINE 1549
LDLW -4
NCHECK 1549
LDNW 20
NCHECK 1549
LOADW
CONST 7
JNEQ L1186
LDLW -4
NCHECK 1549
LDNW 20
NCHECK 1549
LDNW 28
NCHECK 1549
LDNW 24
JEQZ L1195
LDLW -4
NCHECK 1549
LDNW 20
NCHECK 1549
LDNW 28
NCHECK 1549
LDNW 24
NCHECK 1549
CONST 1
LDIC
JNEQZ L1186
LABEL L1195
!             WriteWord(R,  obj.type.base.len)
LINE 1550
LDLW -4
NCHECK 1550
LDNW 20
NCHECK 1550
LDNW 28
NCHECK 1550
LDNW 16
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1186
LABEL L1191
!         ELSE S.Mark("Unknown entry type")
LINE 1552
CONST 19
GLOBAL OMSPG.%72
GLOBAL OMSPS.Mark
CALL 2
LABEL L1186
!       obj := obj.next
LINE 1555
LDLW -4
NCHECK 1555
LDNW 12
STLW -4
JUMP L1181
LABEL L1183
!     Files.Write(R, "O"); Files.Register(F);
LINE 1557
CONST 79
ALIGNC
GLOBAL POFiles.Rider
LOCAL -60
GLOBAL POFiles.Write
CALL 3
LDLW -48
GLOBAL POFiles.Register
CALL 1
!     flagsItem.obj := NIL;
LINE 1558
CONST 0
GLOBAL OMSPG.flagsItem
STNW 16
!     head := NIL; tail := NIL; body := NIL; ccs := NIL;
LINE 1559
CONST 0
STGW OMSPG.head
CONST 0
STGW OMSPG.tail
CONST 0
STGW OMSPG.body
CONST 0
STGW OMSPG.ccs
!     vectors.fixup := NIL (*for garbage collection*)
LINE 1560
CONST 0
LDGW OMSPG.vectors
NCHECK 1560
STNW 52
RETURN
END

PROC OMSPG.initConst 0 3 0x00100001
!   PROCEDURE initConst(VAR c: Item; v: INTEGER);
LINE 1563
!   BEGIN c.reg := 0; c.am := A.Immediate; c.ofs := v; c.obj := NIL; c.type := B.intType; c.rdo := TRUE;
LINE 1564
CONST 0
LDLW 12
STOREC
CONST 6
LDLW 12
CONST 1
STIC
LDLW 20
LDLW 12
STNW 4
CONST 0
LDLW 12
STNW 16
LDGW OMSPB.intType
LDLW 12
STNW 12
CONST 1
LDLW 12
CONST 40
STIC
!     c.mnor := 0FFH; c.snor := 0;
LINE 1565
CONST 255
LDLW 12
CONST 32
STIC
CONST 0
LDLW 12
STNW 36
!     c.mode := B.Const; c.tmp := FALSE; c.a := v
LINE 1566
CONST 1
LDLW 12
STNW 8
CONST 0
LDLW 12
CONST 41
STIC
LDLW 20
LDLW 12
STNW 20
RETURN
END

PROC OMSPG.initReg 0 3 0x00100001
!   PROCEDURE initReg(VAR c: Item; r: BYTE);
LINE 1569
!   BEGIN c.reg := r; c.am := A.Register; c.ofs := 0; c.obj := NIL; c.type := B.intType;
LINE 1570
LDLC 20
LDLW 12
STOREC
CONST 0
LDLW 12
CONST 1
STIC
CONST 0
LDLW 12
STNW 4
CONST 0
LDLW 12
STNW 16
LDGW OMSPB.intType
LDLW 12
STNW 12
!     c.mnor := 0FFH; c.snor := 0;
LINE 1571
CONST 255
LDLW 12
CONST 32
STIC
CONST 0
LDLW 12
STNW 36
!     c.mode := Reg; c.tmp := FALSE; c.a := 0
LINE 1572
CONST 10
LDLW 12
STNW 8
CONST 0
LDLW 12
CONST 41
STIC
CONST 0
LDLW 12
STNW 20
RETURN
END

PROC OMSPG.%main 0 9 0
! BEGIN PutDO0 := PutDO; A.SetProcs(GetOffset, AllocR, freeR, SetFCI);
LINE 1575
GLOBAL OMSPG.PutDO
STGW OMSPG.PutDO0
CONST 0
GLOBAL OMSPG.SetFCI
CONST 0
GLOBAL OMSPG.freeR
CONST 0
GLOBAL OMSPG.AllocR
CONST 0
GLOBAL OMSPG.GetOffset
GLOBAL OMSPA.SetProcs
CALL 8
!   NEW(vectors); vectors.name := "vector table"; vectors.segment := "v";
LINE 1576
CONST 60
GLOBAL OMSPG.SectionDesc
GLOBAL NEW
CALLW 2
STGW OMSPG.vectors
LDGW OMSPG.vectors
NCHECK 1576
CONST 4
OFFSET
CONST 32
SWAP
CONST 13
GLOBAL OMSPG.%73
GLOBAL COPY
CALL 4
CONST 118
LDGW OMSPG.vectors
NCHECK 1576
CONST 36
STIC
!   vectors.content := SYSTEM.VAL(Content, SYSTEM.ADR(mcode));
LINE 1577
GLOBAL OMSPG.mcode
LDGW OMSPG.vectors
NCHECK 1577
STNW 48
!   initConst(cm1, -1); initConst(c0, 0); initConst(c1, 1); initConst(c2, 2);
LINE 1578
CONST -1
GLOBAL OMSPG.Item
GLOBAL OMSPG.cm1
GLOBAL OMSPG.initConst
CALL 3
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.c0
GLOBAL OMSPG.initConst
CALL 3
CONST 1
GLOBAL OMSPG.Item
GLOBAL OMSPG.c1
GLOBAL OMSPG.initConst
CALL 3
CONST 2
GLOBAL OMSPG.Item
GLOBAL OMSPG.c2
GLOBAL OMSPG.initConst
CALL 3
!   initReg(pc, A.PC); initReg(sp, A.SP); initReg(sr, A.SR); initReg(cg2, 3); initReg(r4, 4); initReg(r15, 15);
LINE 1579
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.pc
GLOBAL OMSPG.initReg
CALL 3
CONST 1
GLOBAL OMSPG.Item
GLOBAL OMSPG.sp
GLOBAL OMSPG.initReg
CALL 3
CONST 2
GLOBAL OMSPG.Item
GLOBAL OMSPG.sr
GLOBAL OMSPG.initReg
CALL 3
CONST 3
GLOBAL OMSPG.Item
GLOBAL OMSPG.cg2
GLOBAL OMSPG.initReg
CALL 3
CONST 4
GLOBAL OMSPG.Item
GLOBAL OMSPG.r4
GLOBAL OMSPG.initReg
CALL 3
CONST 15
GLOBAL OMSPG.Item
GLOBAL OMSPG.r15
GLOBAL OMSPG.initReg
CALL 3
!   relmap[0] := A.EQ; relmap[1] := A.NE; relmap[2] := A.L; relmap[3] := A.GE;
LINE 1580
CONST 1
STGW OMSPG.relmap
CONST 0
GLOBAL OMSPG.relmap
STNW 4
CONST 6
GLOBAL OMSPG.relmap
STNW 8
CONST 5
GLOBAL OMSPG.relmap
STNW 12
!   urelmap[0] := A.EQ; urelmap[1] := A.NE; urelmap[2] := A.NC; urelmap[3] := A.C;
LINE 1581
CONST 1
STGW OMSPG.urelmap
CONST 0
GLOBAL OMSPG.urelmap
STNW 4
CONST 2
GLOBAL OMSPG.urelmap
STNW 8
CONST 3
GLOBAL OMSPG.urelmap
STNW 12
!   B.SetRegRTProcCallback(RegisterRTproc)
LINE 1582
CONST 0
GLOBAL OMSPG.RegisterRTproc
GLOBAL OMSPB.SetRegRTProcCallback
CALL 2
RETURN
END

! Global variables
GLOVAR OMSPG.AllocUp 1
GLOVAR OMSPG.RIU 4
GLOVAR OMSPG.VRS 4
GLOVAR OMSPG.RB 4
GLOVAR OMSPG.RL 4
GLOVAR OMSPG.PRU 4
GLOVAR OMSPG.frame 4
GLOVAR OMSPG.vframe 4
GLOVAR OMSPG.traps 32
GLOVAR OMSPG.arith 16
GLOVAR OMSPG.relmap 16
GLOVAR OMSPG.urelmap 16
GLOVAR OMSPG.cm1 44
GLOVAR OMSPG.c0 44
GLOVAR OMSPG.c1 44
GLOVAR OMSPG.c2 44
GLOVAR OMSPG.pc 44
GLOVAR OMSPG.sp 44
GLOVAR OMSPG.sr 44
GLOVAR OMSPG.cg2 44
GLOVAR OMSPG.r4 44
GLOVAR OMSPG.r15 44
GLOVAR OMSPG.rh 44
GLOVAR OMSPG.curImport 4
GLOVAR OMSPG.head 4
GLOVAR OMSPG.tail 4
GLOVAR OMSPG.vectors 4
GLOVAR OMSPG.body 4
GLOVAR OMSPG.ccs 4
GLOVAR OMSPG.nofsec 4
GLOVAR OMSPG.mcode 32004
GLOVAR OMSPG.strings 32004
GLOVAR OMSPG.varsize 4
GLOVAR OMSPG.flagsItem 44
GLOVAR OMSPG.PutDO0 4

! Global pointer map
DEFINE OMSPG.%gcmap
WORD GC_BASE
WORD OMSPG.traps
WORD 0x000001ff
WORD GC_BASE
WORD OMSPG.arith
WORD 0x0000001f
WORD GC_BASE
WORD OMSPG.cm1
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.c0
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.c1
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.c2
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.pc
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.sp
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.sr
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.cg2
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.r4
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.r15
WORD 0x00000031
WORD GC_BASE
WORD OMSPG.rh
WORD 0x00000031
WORD GC_POINTER
WORD OMSPG.head
WORD GC_POINTER
WORD OMSPG.tail
WORD GC_POINTER
WORD OMSPG.vectors
WORD GC_POINTER
WORD OMSPG.body
WORD GC_POINTER
WORD OMSPG.ccs
WORD GC_BASE
WORD OMSPG.flagsItem
WORD 0x00000031
WORD GC_END

! String "PrintItem"
DEFINE OMSPG.%1
STRING 5072696E744974656D00

! String "name"
DEFINE OMSPG.%2
STRING 6E616D6500

! String "mode"
DEFINE OMSPG.%3
STRING 6D6F646500

! String "reg"
DEFINE OMSPG.%4
STRING 72656700

! String "size"
DEFINE OMSPG.%5
STRING 73697A6500

! String "ladr"
DEFINE OMSPG.%6
STRING 6C61647200

! String "ptr"
DEFINE OMSPG.%7
STRING 70747200

! String "tmp"
DEFINE OMSPG.%8
STRING 746D7000

! String "rdo"
DEFINE OMSPG.%9
STRING 72646F00

! String "Traps"
DEFINE OMSPG.%10
STRING 547261707300

! String "Arith"
DEFINE OMSPG.%11
STRING 417269746800

! String "ArrayOutOfRange"
DEFINE OMSPG.%12
STRING 41727261794F75744F6652616E676500

! String "TypeGuardFailure"
DEFINE OMSPG.%13
STRING 5479706547756172644661696C75726500

! String "CopyOverflow"
DEFINE OMSPG.%14
STRING 436F70794F766572666C6F7700

! String "AccessViaNILPointer"
DEFINE OMSPG.%15
STRING 4163636573735669614E494C506F696E74657200

! String "IllegalProcedureCall"
DEFINE OMSPG.%16
STRING 496C6C6567616C50726F63656475726543616C6C00

! String "DivisionByZero"
DEFINE OMSPG.%17
STRING 4469766973696F6E42795A65726F00

! String "AssertionViolated"
DEFINE OMSPG.%18
STRING 417373657274696F6E56696F6C6174656400

! String "mul16"
DEFINE OMSPG.%19
STRING 6D756C313600

! String "divmod16"
DEFINE OMSPG.%20
STRING 6469766D6F64313600

! String "set"
DEFINE OMSPG.%21
STRING 73657400

! String "registers out of range"
DEFINE OMSPG.%22
STRING 726567697374657273206F7574206F662072616E676500

! String "reg already allocated"
DEFINE OMSPG.%23
STRING 72656720616C726561647920616C6C6F636174656400

! String "register stack overflow"
DEFINE OMSPG.%24
STRING 726567697374657220737461636B206F766572666C6F7700

! String "reg wild free"
DEFINE OMSPG.%25
STRING 7265672077696C64206672656500

! String "Reg Stack"
DEFINE OMSPG.%26
STRING 52656720537461636B00

! String "program too long"
DEFINE OMSPG.%27
STRING 70726F6772616D20746F6F206C6F6E6700

! String "frame error"
DEFINE OMSPG.%28
STRING 6672616D65206572726F7200

! String "constant out of range"
DEFINE OMSPG.%29
STRING 636F6E7374616E74206F7574206F662072616E676500

! String "not accessible "
DEFINE OMSPG.%30
STRING 6E6F742061636365737369626C652000

! String "move byte to int"
DEFINE OMSPG.%31
STRING 6D6F7665206279746520746F20696E7400

! String "not writable"
DEFINE OMSPG.%32
STRING 6E6F74207772697461626C6500

! String "bad mode in setRAO"
DEFINE OMSPG.%33
STRING 626164206D6F646520696E2073657452414F00

! String "not addressable"
DEFINE OMSPG.%34
STRING 6E6F74206164647265737361626C6500

! String "not Boolean?"
DEFINE OMSPG.%35
STRING 6E6F7420426F6F6C65616E3F00

! String ""
DEFINE OMSPG.%36
STRING 00

! String "not implemented"
DEFINE OMSPG.%37
STRING 6E6F7420696D706C656D656E74656400

! String "Field"
DEFINE OMSPG.%38
STRING 4669656C6400

! String "Invalid array item size"
DEFINE OMSPG.%39
STRING 496E76616C6964206172726179206974656D2073697A6500

! String "bad index"
DEFINE OMSPG.%40
STRING 62616420696E64657800

! String "bad mode in index"
DEFINE OMSPG.%41
STRING 626164206D6F646520696E20696E64657800

! String "error in Index"
DEFINE OMSPG.%42
STRING 6572726F7220696E20496E64657800

! String "bad mode in DeRef"
DEFINE OMSPG.%43
STRING 626164206D6F646520696E20446552656600

! String "ext level too large"
DEFINE OMSPG.%44
STRING 657874206C6576656C20746F6F206C6172676500

! String "error in TypeTest"
DEFINE OMSPG.%45
STRING 6572726F7220696E20547970655465737400

! String "pointer not allowed"
DEFINE OMSPG.%46
STRING 706F696E746572206E6F7420616C6C6F77656400

! String "vect mult def"
DEFINE OMSPG.%47
STRING 76656374206D756C742064656600

! String "import Arith.mul16 function"
DEFINE OMSPG.%48
STRING 696D706F72742041726974682E6D756C31362066756E6374696F6E00

! String "bad divisor"
DEFINE OMSPG.%49
STRING 6261642064697669736F7200

! String "import Arith.divmod16 procedure"
DEFINE OMSPG.%50
STRING 696D706F72742041726974682E6469766D6F6431362070726F63656475726500

! String "bad modulus"
DEFINE OMSPG.%51
STRING 626164206D6F64756C757300

! String "import Arith.divmod procedure"
DEFINE OMSPG.%52
STRING 696D706F72742041726974682E6469766D6F642070726F63656475726500

! String "op + expected"
DEFINE OMSPG.%53
STRING 6F70202B20657870656374656400

! String "const expected"
DEFINE OMSPG.%54
STRING 636F6E737420657870656374656400

! String "import Arith.set function"
DEFINE OMSPG.%55
STRING 696D706F72742041726974682E7365742066756E6374696F6E00

! String "already set"
DEFINE OMSPG.%56
STRING 616C72656164792073657400

! String "Store Const"
DEFINE OMSPG.%57
STRING 53746F726520436F6E737400

! String "not allowed is Store"
DEFINE OMSPG.%58
STRING 6E6F7420616C6C6F7765642069732053746F726500

! String "Store other"
DEFINE OMSPG.%59
STRING 53746F7265206F7468657200

! String "not implemented in StoreStruct"
DEFINE OMSPG.%60
STRING 6E6F7420696D706C656D656E74656420696E2053746F726553747275637400

! String "different length/size, not implemented"
DEFINE OMSPG.%61
STRING 646966666572656E74206C656E6774682F73697A652C206E6F7420696D706C65
STRING 6D656E74656400

! String "inadmissible assignment"
DEFINE OMSPG.%62
STRING 696E61646D69737369626C652061737369676E6D656E7400

! String "string too long"
DEFINE OMSPG.%63
STRING 737472696E6720746F6F206C6F6E6700

! String "not allowed"
DEFINE OMSPG.%64
STRING 6E6F7420616C6C6F77656400

! String "zero increment"
DEFINE OMSPG.%65
STRING 7A65726F20696E6372656D656E7400

! String "local variables size exeeded"
DEFINE OMSPG.%66
STRING 6C6F63616C207661726961626C65732073697A65206578656564656400

! String "destroyed regs in handler"
DEFINE OMSPG.%67
STRING 64657374726F796564207265677320696E2068616E646C657200

! String "bad count"
DEFINE OMSPG.%68
STRING 62616420636F756E7400

! String "bad mode in Len"
DEFINE OMSPG.%69
STRING 626164206D6F646520696E204C656E00

! String "module body"
DEFINE OMSPG.%70
STRING 6D6F64756C6520626F647900

! String ".mpc"
DEFINE OMSPG.%71
STRING 2E6D706300

! String "Unknown entry type"
DEFINE OMSPG.%72
STRING 556E6B6E6F776E20656E747279207479706500

! String "vector table"
DEFINE OMSPG.%73
STRING 766563746F72207461626C6500

! String "a"
DEFINE OMSPG.%74
STRING 6100

! String "b"
DEFINE OMSPG.%75
STRING 6200

! String "c"
DEFINE OMSPG.%76
STRING 6300

! Descriptor for Item
DEFINE OMSPG.Item
WORD 0x00000031
WORD 1
WORD OMSPG.Item.%anc

DEFINE OMSPG.Item.%anc
WORD OMSPA.Item
WORD OMSPG.Item

! Descriptor for FixupDesc
DEFINE OMSPG.FixupDesc
WORD 0x00000041
WORD 0
WORD OMSPG.FixupDesc.%anc

DEFINE OMSPG.FixupDesc.%anc
WORD OMSPG.FixupDesc

! Descriptor for ModuleCodeDesc
DEFINE OMSPG.ModuleCodeDesc
WORD 0
WORD 1
WORD OMSPG.ModuleCodeDesc.%anc

DEFINE OMSPG.ModuleCodeDesc.%anc
WORD OMSPA.ModuleCode
WORD OMSPG.ModuleCodeDesc

! Descriptor for SectionDesc
DEFINE OMSPG.SectionDesc
WORD 0x0000e001
WORD 0
WORD OMSPG.SectionDesc.%anc

DEFINE OMSPG.SectionDesc.%anc
WORD OMSPG.SectionDesc

! Pointer maps
DEFINE OMSPG.NilCheck.%map
WORD -32
WORD -28
WORD -76
WORD -72
WORD GC_END

DEFINE OMSPG.TypeTest.%map
WORD 12
WORD 20
WORD -32
WORD -28
WORD -76
WORD -72
WORD -120
WORD -116
WORD GC_END

DEFINE OMSPG.Call.%map
WORD 12
WORD -32
WORD -28
WORD -76
WORD -72
WORD GC_END

DEFINE OMSPG.MulOp.%map
WORD 12
WORD 20
WORD -32
WORD -28
WORD -76
WORD -72
WORD -120
WORD -116
WORD GC_END

DEFINE OMSPG.DivOp.%map
WORD 16
WORD 24
WORD -32
WORD -28
WORD -76
WORD -72
WORD -120
WORD -116
WORD -164
WORD -160
WORD GC_END

DEFINE OMSPG.Set.%map
WORD 12
WORD 20
WORD -32
WORD -28
WORD -76
WORD -72
WORD -120
WORD -116
WORD GC_END

DEFINE OMSPG.StringRelation.%map
WORD 16
WORD 24
WORD -40
WORD -36
WORD -84
WORD -80
WORD GC_END

DEFINE OMSPG.StoreStruct.%map
WORD 12
WORD 20
WORD -44
WORD -40
WORD -88
WORD -84
WORD -132
WORD -128
WORD -152
WORD -156
WORD GC_END

DEFINE OMSPG.CopyString.%map
WORD 12
WORD 20
WORD -52
WORD -48
WORD -96
WORD -92
WORD -1136
WORD GC_END

DEFINE OMSPG.OpenArrayParam.%map
WORD 12
WORD 20
WORD -32
WORD -28
WORD -76
WORD -72
WORD GC_END

DEFINE OMSPG.VarParam.%map
WORD 12
WORD 20
WORD -36
WORD -32
WORD -80
WORD -76
WORD -96
WORD GC_END

DEFINE OMSPG.Enter.%map
WORD -32
WORD -28
WORD -76
WORD -72
WORD GC_END

DEFINE OMSPG.Return.%map
WORD 16
WORD -32
WORD -28
WORD -76
WORD -72
WORD GC_END

DEFINE OMSPG.Include.%map
WORD 16
WORD 24
WORD -36
WORD -32
WORD -80
WORD -76
WORD GC_END

DEFINE OMSPG.Copy.%map
WORD 12
WORD 20
WORD 28
WORD -40
WORD -36
WORD -84
WORD -80
WORD GC_END

DEFINE OMSPG.Nop.%map
WORD -32
WORD -28
WORD -76
WORD -72
WORD GC_END

! End of file
