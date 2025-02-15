!! (SYMFILE #OMSPG 0x00030300 #OMSPG.%main 1 #OMSPG.Mod)
!! (CONST #WordSize* INTCONST 2)
!! (CONST #maxStrx INTCONST 3000)
!! (CONST #maxGD INTCONST 200)
!! (CONST #maxTD INTCONST 160)
!! (CONST #maxFOS INTCONST 1000)
!! (CONST #Register* BOOLEAN 1)
!! (CONST #Stack* BOOLEAN 0)
!! (CONST #Reg INTCONST 10)
!! (CONST #RegI INTCONST 11)
!! (CONST #Cond INTCONST 12)
!! (CONST #Absol INTCONST 13)
!! (DEF ?1 #OMSPA 4 #Item (RECORD #OMSPA.Item 8 VOID
!!     (FIELD #reg* 0 BYTE)
!!     (FIELD #am* 1 BYTE)
!!     (FIELD #ofs* 4 INTEGER)))
!! (TYPE #Item* !2 (RECORD #OMSPG.Item 36 =1
!!     (FIELD #reg* 0 BYTE)
!!     (FIELD #am* 1 BYTE)
!!     (FIELD #ofs* 4 INTEGER)
!!     (FIELD #mode* 8 INTEGER)
!!     (FIELD #type* 12 ?3 #OMSPB 3 #Type (POINTER))
!!     (FIELD #obj* 16 ?4 #OMSPB 1 #Object (POINTER))
!!     (FIELD #a* 20 INTEGER)
!!     (FIELD #b* 24 INTEGER)
!!     (FIELD #c* 28 INTEGER)
!!     (FIELD #rdo* 32 BOOLEAN)
!!     (FIELD #tmp 33 BOOLEAN)))
!! (TARGET =4 ?5 #OMSPB 2 #ObjDesc (RECORD #OMSPB.ObjDesc 64 VOID
!!     (FIELD #class* 0 BYTE)
!!     (FIELD #exno* 1 BYTE)
!!     (FIELD #register* 2 BYTE)
!!     (FIELD #expo* 3 BOOLEAN)
!!     (FIELD #unsafe* 4 BOOLEAN)
!!     (FIELD #rdo* 5 BOOLEAN)
!!     (FIELD #lev* 8 INTEGER)
!!     (FIELD #usedat* 12 INTEGER)
!!     (FIELD #next* 16 =4)
!!     (FIELD #dsc* 20 =4)
!!     (FIELD #type* 24 =3)
!!     (FIELD #name* 28 ?6 #OMSPS 1 #Ident (ARRAY 32 CHAR))
!!     (FIELD #val* 60 INTEGER)))
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
!! (TYPE #FrameOffsetSegment !8 (RECORD #OMSPG.FrameOffsetSegment 8 VOID
!!     (FIELD #end 0 INTEGER)
!!     (FIELD #ofsptos 4 INTEGER)))
!! (TYPE #FrameOffset !9 (RECORD #OMSPG.FrameOffset 8004 VOID
!!     (FIELD #NofSegs 0 INTEGER)
!!     (FIELD #Segs 4 !10 (ARRAY 1000 =8))))
!! (TYPE #FixData !11 (RECORD #OMSPG.FixData 8 VOID
!!     (FIELD #adr 0 INTEGER)
!!     (FIELD #usedat 4 INTEGER)))
!! (TYPE #FixupCond !12 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN)))
!! (DEF ?13 #POFiles 6 #Rider (RECORD #POFiles.Rider 12 VOID
!!     (FIELD #eof* 0 BOOLEAN)
!!     (FIELD #res* 4 INTEGER)
!!     (FIELD #base 8 ?14 #POFiles 1 #File (POINTER))))
!! (TYPE #FixupAction !15 (PROC 4 VOID
!!     (VPARAM #R 12 =13)
!!     (PARAM #obj 20 =4)
!!     (PARAM #local 24 BOOLEAN)))
!! (TARGET =14 ?16 #POFiles 2 #FileDesc (RECORD #POFiles.FileDesc 68 VOID
!!     (FIELD #file 0 ?17 #Files 1 #File (POINTER))
!!     (FIELD #tmpName 4 ?18 #POFiles 4 ANON (ARRAY 32 CHAR))
!!     (FIELD #name 36 =18)))
!! (TARGET =17 ?19 #Files 2 #FileDesc (RECORD #Files.FileDesc 8 VOID
!!     (FIELD #file- 0 SYSTEM.LONGPTR)))
!! (GLOBAL #varsize #OMSPG.varsize INTEGER)
!! (GLOBAL #tdx #OMSPG.tdx INTEGER)
!! (GLOBAL #strx #OMSPG.strx INTEGER)
!! (GLOBAL #mstrx #OMSPG.mstrx INTEGER)
!! (GLOBAL #nofstrs #OMSPG.nofstrs INTEGER)
!! (GLOBAL #gvdata #OMSPG.gvdata !20 (ARRAY 200 =11))
!! (GLOBAL #tddata #OMSPG.tddata !21 (ARRAY 160 INTEGER))
!! (GLOBAL #strdata #OMSPG.strdata !22 (ARRAY 3000 CHAR))
!! (GLOBAL #entry #OMSPG.entry INTEGER)
!! (GLOBAL #AllocUp #OMSPG.AllocUp BOOLEAN)
!! (GLOBAL #RIU- #OMSPG.RIU SET)
!! (GLOBAL #VRS #OMSPG.VRS SET)
!! (GLOBAL #RB #OMSPG.RB INTEGER)
!! (GLOBAL #RL #OMSPG.RL INTEGER)
!! (GLOBAL #PRU- #OMSPG.PRU SET)
!! (GLOBAL #frame #OMSPG.frame INTEGER)
!! (GLOBAL #vframe #OMSPG.vframe INTEGER)
!! (GLOBAL #traps #OMSPG.traps !23 (ARRAY 8 =4))
!! (GLOBAL #arith #OMSPG.arith !24 (ARRAY 4 =4))
!! (GLOBAL #vector #OMSPG.vector !25 (ARRAY 32 INTEGER))
!! (GLOBAL #relmap #OMSPG.relmap !26 (ARRAY 4 INTEGER))
!! (GLOBAL #urelmap #OMSPG.urelmap =26)
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
!! (GLOBAL #mcode #OMSPG.mcode ?27 #OMSPA 1 #ModuleCode (RECORD #OMSPA.ModuleCode 96004 VOID
!!     (FIELD #pc* 0 INTEGER)
!!     (FIELD #code* 4 ?28 #OMSPA 2 ANON (ARRAY 32000 BYTE))
!!     (FIELD #pos* 32004 ?29 #OMSPA 3 ANON (ARRAY 16000 INTEGER))))
!! (GLOBAL #frmOfsSegs #OMSPG.frmOfsSegs =9)
!! (PROCEDURE #CheckRTImport* 73 #OMSPG.CheckRTImport !30 (PROC 1 VOID
!!     (CPARAM #impid 12 =6)))
!! (PROCEDURE #RegisterRTproc* 81 #OMSPG.RegisterRTproc !31 (PROC 1 VOID
!!     (PARAM #p 12 =4)))
!! (PROCEDURE #OfsPTOS 99 #OMSPG.OfsPTOS !32 (PROC 3 VOID
!!     (PARAM #frameofs 12 INTEGER)
!!     (PARAM #returnofs 16 INTEGER)
!!     (PARAM #increment 20 BOOLEAN))
!!   (LOCAL #offset -4 INTEGER))
!! (PROCEDURE #adjFrmOfs 112 #OMSPG.adjFrmOfs !33 (PROC 1 VOID
!!     (PARAM #size 12 INTEGER)))
!! (PROCEDURE #SaveRegs 117 #OMSPG.SaveRegs !34 (PROC 1 VOID
!!     (PARAM #regs 12 SET))
!!   (LOCAL #n -4 INTEGER))
!! (PROCEDURE #RestoreRegs 125 #OMSPG.RestoreRegs !35 (PROC 1 VOID
!!     (PARAM #regs 12 SET))
!!   (LOCAL #n -4 INTEGER))
!! (PROCEDURE #EnableCode* 133 #OMSPG.EnableCode !36 (PROC 1 VOID
!!     (PARAM #e 12 BOOLEAN)))
!! (PROCEDURE #FixOne* 137 #OMSPG.FixOne !37 (PROC 1 VOID
!!     (PARAM #at 12 INTEGER)))
!! (PROCEDURE #FixLink* 141 #OMSPG.FixLink !38 (PROC 1 VOID
!!     (PARAM #L 12 INTEGER)))
!! (PROCEDURE #SetAllocationMode* 146 #OMSPG.SetAllocationMode !39 (PROC 1 VOID
!!     (PARAM #mode 12 BOOLEAN)))
!! (PROCEDURE #SetRIU* 153 #OMSPG.SetRIU !40 (PROC 1 VOID
!!     (PARAM #iu 12 SET)))
!! (PROCEDURE #SetPRU* 157 #OMSPG.SetPRU !41 (PROC 1 VOID
!!     (PARAM #pr 12 SET)))
!! (PROCEDURE #nextR 161 #OMSPG.nextR !42 (PROC 1 VOID
!!     (VPARAM #r 12 INTEGER)))
!! (PROCEDURE #LimitRegisters* 165 #OMSPG.LimitRegisters !43 (PROC 1 VOID
!!     (PARAM #savedregs 12 SET)))
!! (PROCEDURE #allocR* 170 #OMSPG.allocR !44 (PROC 1 VOID
!!     (PARAM #r 12 INTEGER)))
!! (PROCEDURE #AllocRP 175 #OMSPG.AllocRP !45 (PROC 1 INTEGER
!!     (PARAM #pr 12 INTEGER))
!!   (LOCAL #RH -4 INTEGER))
!! (PROCEDURE #AllocR* 187 #OMSPG.AllocR !46 (PROC 0 INTEGER))
!! (PROCEDURE #alloc 191 #OMSPG.alloc !47 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 INTEGER)))
!! (PROCEDURE #freeR* 196 #OMSPG.freeR !48 (PROC 1 VOID
!!     (PARAM #r 12 INTEGER)))
!! (PROCEDURE #freeSet 202 #OMSPG.freeSet !49 (PROC 1 VOID
!!     (PARAM #rs 12 SET))
!!   (LOCAL #r -4 INTEGER))
!! (PROCEDURE #free 209 #OMSPG.free !50 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #resultRegister* 213 #OMSPG.resultRegister !51 (PROC 2 VOID
!!     (VPARAM #res 12 =2)))
!! (PROCEDURE #CheckRegs* 218 #OMSPG.CheckRegs !52 (PROC 0 VOID))
!! (PROCEDURE #SetCC 224 #OMSPG.SetCC !53 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #n 20 INTEGER)))
!! (PROCEDURE #TypeChecked 228 #OMSPG.TypeChecked !54 (PROC 0 BOOLEAN))
!! (PROCEDURE #AssertionChecked* 232 #OMSPG.AssertionChecked !55 (PROC 0 BOOLEAN))
!! (PROCEDURE #GetOffset 236 #OMSPG.GetOffset !56 (PROC 2 INTEGER
!!     (VPARAM #x 12 =1))
!!   (LOCAL #res -4 INTEGER)
!!   (LOCAL #ofs -8 INTEGER)
!!   (LOCAL #a -12 INTEGER)
!!   (LOCAL #c -16 INTEGER)
!!   (LOCAL #i -20 INTEGER)
!!   (LOCAL #o -24 =4))
!! (PROCEDURE #Trap 260 #OMSPG.Trap !57 (PROC 2 VOID
!!     (PARAM #cond 12 INTEGER)
!!     (PARAM #num 16 INTEGER))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #NilCheck 270 #OMSPG.NilCheck !58 (PROC 1 VOID
!!     (PARAM #a 12 BYTE))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #c -72 =2))
!! (PROCEDURE #load 281 #OMSPG.load !59 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 BYTE))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #pc1 -8 INTEGER)
!!   (LOCAL #bw -12 SET)
!!   (LOCAL #t -48 =2)
!!   (LOCAL #ti -84 =2)
!!   (LOCAL #sva -120 =2))
!! (PROCEDURE #setRAO 316 #OMSPG.setRAO !60 (PROC 6 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #i 16 =2)
!!     (PARAM #dst 24 BOOLEAN)
!!     (VPARAM #nba 28 SET)
!!     (VPARAM #bw 32 SET))
!!   (LOCAL #ti -36 =2))
!! (PROCEDURE #PutDO 338 #OMSPG.PutDO !61 (PROC 5 VOID
!!     (PARAM #op 12 BYTE)
!!     (VPARAM #src 16 =2)
!!     (VPARAM #dst 24 =2))
!!   (LOCAL #bw -4 SET)
!!   (LOCAL #nba -8 SET)
!!   (LOCAL #tmp -9 BOOLEAN))
!! (PROCEDURE #PutSO 349 #OMSPG.PutSO !62 (PROC 3 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #sd 16 =2))
!!   (LOCAL #bw -4 SET)
!!   (LOCAL #nba -8 SET))
!! (PROCEDURE #push 355 #OMSPG.push !63 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #dsize 20 INTEGER))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #pc1 -8 INTEGER)
!!   (LOCAL #bw -12 SET)
!!   (LOCAL #t -48 =2)
!!   (LOCAL #ti -84 =2)
!!   (LOCAL #sva -120 =2))
!! (PROCEDURE #Adr* 391 #OMSPG.Adr !64 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #loadAdr 410 #OMSPG.loadAdr !65 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 INTEGER)))
!! (PROCEDURE #pushAdr 414 #OMSPG.pushAdr !66 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #loadCond 418 #OMSPG.loadCond !67 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #loadTypTagAdr 430 #OMSPG.loadTypTagAdr !68 (PROC 2 BYTE
!!     (PARAM #T 12 =3)
!!     (PARAM #pr 16 INTEGER))
!!   (LOCAL #sva -36 =2))
!! (PROCEDURE #pushTypTagAdr 437 #OMSPG.pushTypTagAdr !69 (PROC 1 VOID
!!     (PARAM #T 12 =3))
!!   (LOCAL #sva -36 =2))
!! (PROCEDURE #loadStringAdr 443 #OMSPG.loadStringAdr !70 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 INTEGER)))
!! (PROCEDURE #pushStringAdr 449 #OMSPG.pushStringAdr !71 (PROC 1 VOID
!!     (CPARAM #x 12 =2))
!!   (LOCAL #x1 -36 =2))
!! (PROCEDURE #MakeTypTagAdr 457 #OMSPG.MakeTypTagAdr !72 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #T 20 =3)))
!! (PROCEDURE #MakeConstItem* 462 #OMSPG.MakeConstItem !73 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #typ 20 =3)
!!     (PARAM #val 24 INTEGER)))
!! (PROCEDURE #GetStringAddress 467 #OMSPG.GetStringAddress !74 (PROC 1 INTEGER
!!     (PARAM #usedat 12 INTEGER))
!!   (LOCAL #adr -4 INTEGER)
!!   (LOCAL #ua -8 INTEGER))
!! (DEF !75 (FLEX CHAR))
!! (PROCEDURE #stringFound 478 #OMSPG.stringFound !76 (PROC 3 BOOLEAN
!!     (CPARAM #str 12 =75)
!!     (VPARAM #usedat 20 INTEGER))
!!   (LOCAL #found -1 BOOLEAN)
!!   (LOCAL #i -8 INTEGER)
!!   (LOCAL #pos -12 INTEGER))
!! (DEF !77 (FLEX CHAR))
!! (PROCEDURE #stringPut 492 #OMSPG.stringPut !78 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (CPARAM #str 20 =77)
!!     (PARAM #len 28 INTEGER))
!!   (LOCAL #i -4 INTEGER))
!! (DEF !79 (FLEX CHAR))
!! (PROCEDURE #stringPop 506 #OMSPG.stringPop !80 (PROC 3 VOID
!!     (CPARAM #x 12 =2)
!!     (VPARAM #xs 16 =79))
!!   (LOCAL #sx -4 INTEGER)
!!   (LOCAL #sxno -8 INTEGER)
!!   (LOCAL #i -12 INTEGER))
!! (PROCEDURE #MakeStringItem* 519 #OMSPG.MakeStringItem !81 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #MakeItem* 523 #OMSPG.MakeItem !82 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #y 20 =4)
!!     (PARAM #curlev 24 INTEGER)))
!! (PROCEDURE #Field* 540 #OMSPG.Field !83 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #y 20 =4)))
!! (PROCEDURE #Index* 551 #OMSPG.Index !84 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #s -4 INTEGER)
!!   (LOCAL #lim -8 INTEGER)
!!   (LOCAL #t -44 =2)
!!   (LOCAL #typ -48 =3))
!! (PROCEDURE #DeRef* 594 #OMSPG.DeRef !85 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Q 603 #OMSPG.Q !86 (PROC 1 VOID
!!     (PARAM #T 12 =3)))
!! (PROCEDURE #BuildTD* 611 #OMSPG.BuildTD !87 (PROC 1 VOID
!!     (PARAM #T 12 =3))
!!   (LOCAL #k -4 INTEGER)
!!   (LOCAL #s -8 INTEGER))
!! (PROCEDURE #TypeTest* 623 #OMSPG.TypeTest !88 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #T 20 =3)
!!     (PARAM #varpar 24 BOOLEAN)
!!     (PARAM #isguard 28 BOOLEAN))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #pt -72 =2)
!!   (LOCAL #tt -108 =2))
!! (PROCEDURE #SetVector* 644 #OMSPG.SetVector !89 (PROC 2 VOID
!!     (PARAM #n 12 BYTE)
!!     (VPARAM #h 16 =4)))
!! (PROCEDURE #Not* 651 #OMSPG.Not !90 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -4 INTEGER))
!! (PROCEDURE #And1* 658 #OMSPG.And1 !91 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #And2* 665 #OMSPG.And2 !92 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Or1* 671 #OMSPG.Or1 !93 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Or2* 678 #OMSPG.Or2 !94 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Neg* 686 #OMSPG.Neg !95 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #PrepCall* 700 #OMSPG.PrepCall !96 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #r 20 SET)
!!     (VPARAM #or 24 SET)
!!     (VPARAM #am 28 BOOLEAN))
!!   (LOCAL #xr -4 INTEGER))
!! (PROCEDURE #getParSize 711 #OMSPG.getParSize !97 (PROC 1 INTEGER
!!     (PARAM #typ 12 =3))
!!   (LOCAL #par -4 =4)
!!   (LOCAL #n -8 INTEGER)
!!   (LOCAL #size -12 INTEGER))
!! (PROCEDURE #Call* 725 #OMSPG.Call !98 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #r 20 SET)
!!     (PARAM #or 24 SET)
!!     (PARAM #am 28 BOOLEAN))
!!   (LOCAL #rr -36 =2)
!!   (LOCAL #t -72 =2)
!!   (LOCAL #s -76 INTEGER))
!! (PROCEDURE #AddOp* 752 #OMSPG.AddOp !99 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2)))
!! (PROCEDURE #MulOp* 769 #OMSPG.MulOp !100 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #p -72 =2)
!!   (LOCAL #x0 -108 =2)
!!   (LOCAL #y0 -144 =2)
!!   (LOCAL #r -148 SET)
!!   (LOCAL #or -152 SET)
!!   (LOCAL #pau -153 BOOLEAN))
!! (PROCEDURE #DivOp* 784 #OMSPG.DivOp !101 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #p -72 =2)
!!   (LOCAL #x0 -108 =2)
!!   (LOCAL #y0 -144 =2)
!!   (LOCAL #r -148 SET)
!!   (LOCAL #or -152 SET)
!!   (LOCAL #pau -153 BOOLEAN))
!! (PROCEDURE #shift 813 #OMSPG.shift !102 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #pb -8 INTEGER)
!!   (LOCAL #pf -12 INTEGER)
!!   (LOCAL #t -48 =2))
!! (PROCEDURE #Rla* 825 #OMSPG.Rla !103 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Rra* 829 #OMSPG.Rra !104 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #StringOp* 834 #OMSPG.StringOp !105 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #xs -256 !106 (ARRAY 256 CHAR))
!!   (LOCAL #ys -512 =106)
!!   (LOCAL #ix -516 INTEGER)
!!   (LOCAL #iy -520 INTEGER))
!! (PROCEDURE #Singleton* 848 #OMSPG.Singleton !107 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #y -36 =2))
!! (PROCEDURE #Set* 853 #OMSPG.Set !108 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #p -36 =2)
!!   (LOCAL #x0 -72 =2)
!!   (LOCAL #y0 -108 =2)
!!   (LOCAL #r -112 SET)
!!   (LOCAL #or -116 SET)
!!   (LOCAL #pau -117 BOOLEAN))
!! (PROCEDURE #In* 865 #OMSPG.In !109 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #c -36 =2)
!!   (LOCAL #pc0 -40 INTEGER)
!!   (LOCAL #pc1 -44 INTEGER)
!!   (LOCAL #t -80 =2))
!! (PROCEDURE #SetOp* 878 #OMSPG.SetOp !110 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #xset -4 SET)
!!   (LOCAL #yset -8 SET))
!! (PROCEDURE #AdjustSize 901 #OMSPG.AdjustSize !111 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #st -4 =3))
!! (PROCEDURE #IntCompare* 907 #OMSPG.IntCompare !112 (PROC 6 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #z 28 =2)))
!! (PROCEDURE #IntRelation* 914 #OMSPG.IntRelation !113 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2)))
!! (PROCEDURE #StringRelation* 929 #OMSPG.StringRelation !114 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x0 16 =2)
!!     (VPARAM #y0 24 =2))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #tbf0 -8 INTEGER)
!!   (LOCAL #x -44 =2)
!!   (LOCAL #y -80 =2))
!! (PROCEDURE #StrToChar* 948 #OMSPG.StrToChar !115 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Store* 954 #OMSPG.Store !116 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #distance 958 #OMSPG.distance !117 (PROC 3 BOOLEAN
!!     (CPARAM #x 12 =2)
!!     (CPARAM #y 16 =2)
!!     (VPARAM #d 20 INTEGER))
!!   (LOCAL #res -1 BOOLEAN)
!!   (LOCAL #ox -8 INTEGER)
!!   (LOCAL #oy -12 INTEGER))
!! (PROCEDURE #StoreStruct* 973 #OMSPG.StoreStruct !118 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #s -4 INTEGER)
!!   (LOCAL #pc0 -8 INTEGER)
!!   (LOCAL #pc1 -12 INTEGER)
!!   (LOCAL #d -16 INTEGER)
!!   (LOCAL #t -52 =2)
!!   (LOCAL #ti -88 =2)
!!   (LOCAL #oneReg -89 BOOLEAN)
!!   (LOCAL #xtyp -96 =3)
!!   (LOCAL #ytyp -100 =3))
!! (PROCEDURE #CopyString* 1003 #OMSPG.CopyString !119 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #len -4 INTEGER)
!!   (LOCAL #pc0 -8 INTEGER)
!!   (LOCAL #t -44 =2)
!!   (LOCAL #ti -80 =2)
!!   (LOCAL #x1 -116 =2))
!! (PROCEDURE #OpenArrayParam* 1021 #OMSPG.OpenArrayParam !120 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #ti -72 =2))
!! (PROCEDURE #VarParam* 1037 #OMSPG.VarParam !121 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4))
!!   (LOCAL #xmd -4 INTEGER)
!!   (LOCAL #t -40 =2)
!!   (LOCAL #ti -76 =2)
!!   (LOCAL #xtyp -80 =3))
!! (PROCEDURE #ValueParam* 1068 #OMSPG.ValueParam !122 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4)))
!! (PROCEDURE #StringParam* 1072 #OMSPG.StringParam !123 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #For0* 1084 #OMSPG.For0 !124 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #For1* 1088 #OMSPG.For1 !125 (PROC 9 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #z 28 =2)
!!     (VPARAM #w 36 =2)
!!     (VPARAM #L 44 INTEGER)))
!! (PROCEDURE #For2* 1097 #OMSPG.For2 !126 (PROC 6 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #w 28 =2)))
!! (PROCEDURE #Here* 1104 #OMSPG.Here !127 (PROC 0 INTEGER))
!! (PROCEDURE #FJump* 1108 #OMSPG.FJump !128 (PROC 1 VOID
!!     (VPARAM #L 12 INTEGER)))
!! (PROCEDURE #CFJump* 1112 #OMSPG.CFJump !129 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #BJump* 1119 #OMSPG.BJump !130 (PROC 1 VOID
!!     (PARAM #L 12 INTEGER)))
!! (PROCEDURE #CBJump* 1123 #OMSPG.CBJump !131 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #L 20 INTEGER)))
!! (PROCEDURE #Fixup* 1130 #OMSPG.Fixup !132 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Enter* 1134 #OMSPG.Enter !133 (PROC 3 VOID
!!     (PARAM #size 12 INTEGER)
!!     (PARAM #int 16 BOOLEAN)
!!     (PARAM #savedregs 20 SET))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #tsp -72 =2))
!! (PROCEDURE #Return* 1147 #OMSPG.Return !134 (PROC 6 VOID
!!     (PARAM #form 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (PARAM #size 24 INTEGER)
!!     (PARAM #int 28 BOOLEAN)
!!     (PARAM #savedregs 32 SET))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #rr -72 =2))
!! (PROCEDURE #Increment* 1166 #OMSPG.Increment !135 (PROC 5 VOID
!!     (PARAM #upordown 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #op -1 BYTE))
!! (PROCEDURE #Include* 1175 #OMSPG.Include !136 (PROC 5 VOID
!!     (PARAM #inorex 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #op -1 BYTE)
!!   (LOCAL #z -40 =2)
!!   (LOCAL #t -76 =2))
!! (PROCEDURE #Assert* 1183 #OMSPG.Assert !137 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #cond -4 INTEGER)
!!   (LOCAL #pc0 -8 INTEGER))
!! (PROCEDURE #Copy* 1198 #OMSPG.Copy !138 (PROC 6 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #z 28 =2))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #pc1 -8 INTEGER)
!!   (LOCAL #d -12 INTEGER)
!!   (LOCAL #t -48 =2)
!!   (LOCAL #oneReg -49 BOOLEAN))
!! (PROCEDURE #LogicalSR* 1217 #OMSPG.LogicalSR !139 (PROC 3 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2))
!!   (LOCAL #op -1 BYTE)
!!   (LOCAL #t -40 =2))
!! (PROCEDURE #LogicalSROnExit* 1224 #OMSPG.LogicalSROnExit !140 (PROC 3 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2))
!!   (LOCAL #op -1 BYTE)
!!   (LOCAL #t -40 =2))
!! (PROCEDURE #Abs* 1233 #OMSPG.Abs !141 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #pc -4 INTEGER)
!!   (LOCAL #t -40 =2))
!! (PROCEDURE #Odd* 1242 #OMSPG.Odd !142 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #Ord* 1247 #OMSPG.Ord !143 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Len* 1251 #OMSPG.Len !144 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #ClrC* 1263 #OMSPG.ClrC !145 (PROC 0 VOID))
!! (PROCEDURE #Nop* 1267 #OMSPG.Nop !146 (PROC 0 VOID))
!! (PROCEDURE #Swpb* 1271 #OMSPG.Swpb !147 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Shift* 1275 #OMSPG.Shift !148 (PROC 5 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2)))
!! (PROCEDURE #Rotate* 1282 #OMSPG.Rotate !149 (PROC 3 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2)))
!! (PROCEDURE #Logical* 1286 #OMSPG.Logical !150 (PROC 5 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #op -1 BYTE))
!! (PROCEDURE #ADC* 1293 #OMSPG.ADC !151 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #SBC* 1297 #OMSPG.SBC !152 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Bit* 1301 #OMSPG.Bit !153 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Condition* 1306 #OMSPG.Condition !154 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Val* 1310 #OMSPG.Val !155 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #t 20 =3)))
!! (PROCEDURE #Open* 1317 #OMSPG.Open !156 (PROC 0 VOID)
!!   (LOCAL #i -4 INTEGER))
!! (PROCEDURE #SetDataSize* 1328 #OMSPG.SetDataSize !157 (PROC 1 VOID
!!     (PARAM #dc 12 INTEGER)))
!! (PROCEDURE #Header* 1332 #OMSPG.Header !158 (PROC 0 VOID))
!! (PROCEDURE #WriteWord 1336 #OMSPG.WriteWord !159 (PROC 3 VOID
!!     (VPARAM #R 12 =13)
!!     (PARAM #w 20 INTEGER)))
!! (PROCEDURE #procFixupCond 1340 #OMSPG.procFixupCond !160 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #handlerFixupCond 1348 #OMSPG.handlerFixupCond !161 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #varFixupCond 1356 #OMSPG.varFixupCond !162 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #constFixupCond 1364 #OMSPG.constFixupCond !163 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #typFixupCond 1375 #OMSPG.typFixupCond !164 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #objFixupAction 1383 #OMSPG.objFixupAction !165 (PROC 4 VOID
!!     (VPARAM #R 12 =13)
!!     (PARAM #obj 20 =4)
!!     (PARAM #local 24 BOOLEAN)))
!! (PROCEDURE #constFixupAction 1388 #OMSPG.constFixupAction !166 (PROC 4 VOID
!!     (VPARAM #R 12 =13)
!!     (PARAM #obj 20 =4)
!!     (PARAM #local 24 BOOLEAN)))
!! (PROCEDURE #typFixupAction 1396 #OMSPG.typFixupAction !167 (PROC 4 VOID
!!     (VPARAM #R 12 =13)
!!     (PARAM #obj 20 =4)
!!     (PARAM #local 24 BOOLEAN)))
!! (PROCEDURE #WriteFixup 1401 #OMSPG.WriteFixup !168 (PROC 6 VOID
!!     (VPARAM #R 12 =13)
!!     (PARAM #cond 20 =12)
!!     (PARAM #action 28 =15))
!!   (LOCAL #obj -4 =4)
!!   (LOCAL #obj2 -8 =4))
!! (PROCEDURE #Close* 1423 #OMSPG.Close !169 (PROC 4 VOID
!!     (VPARAM #modid 12 =6)
!!     (PARAM #key 16 INTEGER)
!!     (PARAM #nofent 20 INTEGER)
!!     (PARAM #codeseg 24 BYTE))
!!   (LOCAL #obj -4 =4)
!!   (LOCAL #i -8 INTEGER)
!!   (LOCAL #sx -12 INTEGER)
!!   (LOCAL #suax -16 INTEGER)
!!   (LOCAL #nofimps -20 INTEGER)
!!   (LOCAL #fixadr -24 INTEGER)
!!   (LOCAL #flashSize -28 INTEGER)
!!   (LOCAL #name -60 =6)
!!   (LOCAL #F -64 =14)
!!   (LOCAL #R -76 =13))
!! (PROCEDURE #initConst 1501 #OMSPG.initConst !170 (PROC 3 VOID
!!     (VPARAM #c 12 =2)
!!     (PARAM #v 20 INTEGER)))
!! (PROCEDURE #initReg 1506 #OMSPG.initReg !171 (PROC 3 VOID
!!     (VPARAM #c 12 =2)
!!     (PARAM #r 20 BYTE)))
!! (CHKSUM 0x61990bb1)
!! 
MODULE OMSPG 0x61990bb1 1517
IMPORT POFiles 0x49659f59
IMPORT OMSPA 0x66d26050
IMPORT OMSPS 0x1d34079e
IMPORT OMSPB 0x1605559e
ENDHDR

PROC OMSPG.CheckRTImport 0 5 0x00100001
!   PROCEDURE CheckRTImport*(impid: S.Ident);
LINE 73
!     IF impid = "Traps" THEN curImport := 1
LINE 75
CONST 6
GLOBAL OMSPG.%1
CONST 32
LDLW 12
GLOBAL COMPARE
CALLW 4
JNEQZ L60
CONST 1
STGW OMSPG.curImport
RETURN
LABEL L60
!     ELSIF impid = "Arith" THEN curImport := 2
LINE 76
CONST 6
GLOBAL OMSPG.%2
CONST 32
LDLW 12
GLOBAL COMPARE
CALLW 4
JNEQZ L62
CONST 2
STGW OMSPG.curImport
RETURN
LABEL L62
!     ELSE curImport := 0
LINE 77
CONST 0
STGW OMSPG.curImport
RETURN
END

PROC OMSPG.RegisterRTproc 0 5 0x00100001
!   PROCEDURE RegisterRTproc*(p: B.Object);
LINE 81
!   BEGIN IF curImport = 1 THEN
LINE 82
LDGW OMSPG.curImport
CONST 1
JNEQ L65
!       IF p.name = "ArrayOutOfRange" THEN traps[1] := p
LINE 83
CONST 16
GLOBAL OMSPG.%3
LDLW 12
NCHECK 83
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L68
LDLW 12
GLOBAL OMSPG.traps
STNW 4
RETURN
LABEL L68
!       ELSIF p.name = "TypeGuardFailure" THEN traps[2] := p
LINE 84
CONST 17
GLOBAL OMSPG.%4
LDLW 12
NCHECK 84
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L70
LDLW 12
GLOBAL OMSPG.traps
STNW 8
RETURN
LABEL L70
!       ELSIF p.name = "CopyOverflow" THEN traps[3] := p
LINE 85
CONST 13
GLOBAL OMSPG.%5
LDLW 12
NCHECK 85
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L72
LDLW 12
GLOBAL OMSPG.traps
STNW 12
RETURN
LABEL L72
!       ELSIF p.name = "AccessViaNILPointer" THEN traps[4] := p
LINE 86
CONST 20
GLOBAL OMSPG.%6
LDLW 12
NCHECK 86
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L74
LDLW 12
GLOBAL OMSPG.traps
STNW 16
RETURN
LABEL L74
!       ELSIF p.name = "IllegalProcedureCall" THEN traps[5] := p
LINE 87
CONST 21
GLOBAL OMSPG.%7
LDLW 12
NCHECK 87
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L76
LDLW 12
GLOBAL OMSPG.traps
STNW 20
RETURN
LABEL L76
!       ELSIF p.name = "DivisionByZero" THEN traps[6] := p
LINE 88
CONST 15
GLOBAL OMSPG.%8
LDLW 12
NCHECK 88
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L78
LDLW 12
GLOBAL OMSPG.traps
STNW 24
RETURN
LABEL L78
!       ELSIF p.name = "AssertionViolated" THEN traps[7] := p
LINE 89
CONST 18
GLOBAL OMSPG.%9
LDLW 12
NCHECK 89
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L82
LDLW 12
GLOBAL OMSPG.traps
STNW 28
RETURN
LABEL L65
!     ELSIF curImport = 2 THEN
LINE 91
LDGW OMSPG.curImport
CONST 2
JNEQ L82
!       IF p.name = "mul16" THEN arith[0] := p
LINE 92
CONST 6
GLOBAL OMSPG.%10
LDLW 12
NCHECK 92
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L85
LDLW 12
STGW OMSPG.arith
RETURN
LABEL L85
!       ELSIF p.name = "divmod16" THEN arith[1] := p
LINE 93
CONST 9
GLOBAL OMSPG.%11
LDLW 12
NCHECK 93
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L87
LDLW 12
GLOBAL OMSPG.arith
STNW 4
RETURN
LABEL L87
!       ELSIF p.name = "set" THEN arith[2] := p
LINE 94
CONST 4
GLOBAL OMSPG.%12
LDLW 12
NCHECK 94
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L82
LDLW 12
GLOBAL OMSPG.arith
STNW 8
LABEL L82
RETURN
END

PROC OMSPG.OfsPTOS 4 5 0
!   PROCEDURE OfsPTOS(frameofs, returnofs: INTEGER; increment: BOOLEAN);
LINE 99
!     IF increment THEN
LINE 102
LDLC 20
JEQZ L92
!       INC(frameofs, frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos MOD 10000H);
LINE 103
LOCAL 12
DUP 0
LOADW
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 103
INDEXD
LDNW 4
CONST 65536
MOD
PLUS
SWAP
STOREW
!       INC(returnofs, frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos DIV 10000H);
LINE 104
LOCAL 16
DUP 0
LOADW
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 104
INDEXD
LDNW 4
CONST 65536
DIV
PLUS
SWAP
STOREW
LABEL L92
!     END; offset := returnofs*10000H + frameofs;
LINE 105
LDLW 16
CONST 65536
TIMES
LDLW 12
PLUS
STLW -4
!     IF offset # frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos THEN
LINE 106
LDLW -4
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 106
INDEXD
LDNW 4
JEQ L95
!       frmOfsSegs.Segs[frmOfsSegs.NofSegs].end := mcode.pc;
LINE 107
LDGW OMSPG.mcode
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 107
INDEXD
STOREW
!       INC(frmOfsSegs.NofSegs); frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos := offset
LINE 108
LDGW OMSPG.frmOfsSegs
INC
STGW OMSPG.frmOfsSegs
LDLW -4
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 108
INDEXD
STNW 4
LABEL L95
RETURN
END

PROC OMSPG.adjFrmOfs 0 4 0
!   PROCEDURE adjFrmOfs(size: INTEGER);
LINE 112
!   BEGIN INC(frame, size);
LINE 113
GLOBAL OMSPG.frame
DUP 0
LOADW
LDLW 12
PLUS
SWAP
STOREW
!     OfsPTOS(size DIV WordSize, size DIV WordSize, TRUE)
LINE 114
CONST 1
ALIGNC
LDLW 12
CONST 2
DIV
LDLW 12
CONST 2
DIV
GLOBAL OMSPG.OfsPTOS
CALL 3
RETURN
END

PROC OMSPG.SaveRegs 4 4 0
!   PROCEDURE SaveRegs(regs: SET);
LINE 117
!     IF regs # {} THEN
LINE 120
LDLW 12
JEQZ L98
!       n := A.PushRegs(mcode, regs); adjFrmOfs(n*WordSize)
LINE 121
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PushRegs
CALLW 3
STLW -4
LDLW -4
CONST 2
TIMES
GLOBAL OMSPG.adjFrmOfs
CALL 1
LABEL L98
RETURN
END

PROC OMSPG.RestoreRegs 4 4 0
!   PROCEDURE RestoreRegs(regs: SET);
LINE 125
!     IF regs # {} THEN
LINE 128
LDLW 12
JEQZ L101
!       n := A.PopRegs(mcode, regs); adjFrmOfs(-n*WordSize)
LINE 129
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PopRegs
CALLW 3
STLW -4
LDLW -4
CONST 2
TIMES
UMINUS
GLOBAL OMSPG.adjFrmOfs
CALL 1
LABEL L101
RETURN
END

PROC OMSPG.EnableCode 0 2 0
!   PROCEDURE EnableCode*(e: BOOLEAN);
LINE 133
!   BEGIN A.SetEnabled(e)
LINE 134
LDLC 12
ALIGNC
GLOBAL OMSPA.SetEnabled
CALL 1
RETURN
END

PROC OMSPG.FixOne 0 4 0
!   PROCEDURE FixOne*(at: INTEGER);
LINE 137
!   BEGIN A.FixOne(mcode, at)
LINE 138
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixOne
CALL 3
RETURN
END

PROC OMSPG.FixLink 0 4 0
!   PROCEDURE FixLink*(L: INTEGER);
LINE 141
!     A.FixLink(mcode, L)
LINE 143
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixLink
CALL 3
RETURN
END

PROC OMSPG.SetAllocationMode 0 2 0
!   PROCEDURE SetAllocationMode*(mode: BOOLEAN);
LINE 146
!   BEGIN AllocUp := mode;
LINE 147
LDLC 12
STGC OMSPG.AllocUp
!     IF AllocUp THEN RL := 16;  RB := A.CG2 + 1
LINE 148
LDGC OMSPG.AllocUp
JEQZ L104
CONST 16
STGW OMSPG.RL
CONST 4
STGW OMSPG.RB
RETURN
LABEL L104
!     ELSE RL := A.CG2;  RB := 15
LINE 149
CONST 3
STGW OMSPG.RL
CONST 15
STGW OMSPG.RB
RETURN
END

PROC OMSPG.SetRIU 0 2 0
!   PROCEDURE SetRIU*(iu: SET);
LINE 153
!   BEGIN RIU := iu
LINE 154
LDLW 12
STGW OMSPG.RIU
RETURN
END

PROC OMSPG.SetPRU 0 2 0
!   PROCEDURE SetPRU*(pr: SET);
LINE 157
!   BEGIN PRU := pr
LINE 158
LDLW 12
STGW OMSPG.PRU
RETURN
END

PROC OMSPG.nextR 0 3 0x00100001
!   PROCEDURE nextR(VAR r: INTEGER);
LINE 161
!   BEGIN IF AllocUp THEN INC(r) ELSE DEC(r) END
LINE 162
LDGC OMSPG.AllocUp
JEQZ L107
LDLW 12
DUP 0
LOADW
INC
SWAP
STOREW
RETURN
LABEL L107
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
LINE 165
!   BEGIN IF savedregs * {0..3, 16..31} # {} THEN S.Mark("registers out of range"); savedregs := {4..15} END;
LINE 166
LDLW 12
CONST -65521
BITAND
JEQZ L110
CONST 23
GLOBAL OMSPG.%13
GLOBAL OMSPS.Mark
CALL 2
CONST 65520
STLW 12
LABEL L110
!     RIU :=  RIU + ({0..15} - savedregs) (*mark non saved registers as not available*)
LINE 167
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
LINE 170
!     IF RIU*{r} = {} THEN INCL(RIU, r); INCL(PRU, r) ELSE S.Mark("reg already allocated") END
LINE 172
LDGW OMSPG.RIU
CONST 1
LDLW 12
CONST 32
BOUND 172
LSL
BITAND
JNEQZ L113
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLW 12
CONST 32
BOUND 172
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
BOUND 172
LSL
BITOR
SWAP
STOREW
RETURN
LABEL L113
CONST 22
GLOBAL OMSPG.%14
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.AllocRP 4 4 0
!   PROCEDURE AllocRP(pr: INTEGER): INTEGER;
LINE 175
!     IF pr # 0FFH THEN RH := pr
LINE 178
LDLW 12
CONST 255
JEQ L120
LDLW 12
STLW -4
JUMP L117
LABEL L120
!     ELSE RH := RB; WHILE (RIU*{RH} # {}) & (RH # RL) DO nextR(RH) END
LINE 179
LDGW OMSPG.RB
STLW -4
LABEL L115
LDGW OMSPG.RIU
CONST 1
LDLW -4
CONST 32
BOUND 179
LSL
BITAND
JEQZ L117
LDLW -4
LDGW OMSPG.RL
JEQ L117
LOCAL -4
GLOBAL OMSPG.nextR
CALL 1
JUMP L115
LABEL L117
!     IF RH = RL THEN S.Mark("register stack overflow"); RH := 8 END;
LINE 181
LDLW -4
LDGW OMSPG.RL
JNEQ L123
CONST 24
GLOBAL OMSPG.%15
GLOBAL OMSPS.Mark
CALL 2
CONST 8
STLW -4
LABEL L123
!     allocR(RH); rh.reg := RH
LINE 182
LDLW -4
GLOBAL OMSPG.allocR
CALL 1
LDLW -4
CONVNC
STGC OMSPG.rh
!     RETURN RH
LINE 184
LDLW -4
RETURN
END

PROC OMSPG.AllocR 0 2 0
!   PROCEDURE AllocR*(): INTEGER;
LINE 187
!     RETURN AllocRP(0FFH)
LINE 188
CONST 255
GLOBAL OMSPG.AllocRP
CALLW 1
RETURN
END

PROC OMSPG.alloc 0 3 0x00100001
!   PROCEDURE alloc(VAR x: Item; pr: INTEGER); (*allocate a temporary register to the item*)
LINE 191
!     x.reg := AllocRP(pr); x.am := A.Register; x.ofs := 0; x.tmp := TRUE
LINE 193
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
CONST 33
STIC
RETURN
END

PROC OMSPG.freeR 0 5 0
!   PROCEDURE freeR*(r: INTEGER);
LINE 196
!     IF r IN RIU THEN EXCL(RIU, r)
LINE 198
LDGW OMSPG.RIU
CONST 1
LDLW 12
CONST 32
BOUND 198
LSL
BITAND
JEQZ L126
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLW 12
CONST 32
BOUND 198
LSL
BITNOT
BITAND
SWAP
STOREW
RETURN
LABEL L126
!     ELSE S.Mark("reg wild free") END
LINE 199
CONST 14
GLOBAL OMSPG.%16
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.freeSet 4 4 0
!   PROCEDURE freeSet(rs: SET);
LINE 202
!   BEGIN IF rs # {} THEN
LINE 204
LDLW 12
JEQZ L129
!     FOR r := 0 TO 15 DO IF rs*{r} # {} THEN freeR(r) END END
LINE 205
CONST 0
STLW -4
LABEL L130
LDLW -4
CONST 15
JGT L129
LDLW 12
CONST 1
LDLW -4
CONST 32
BOUND 205
LSL
BITAND
JEQZ L134
LDLW -4
GLOBAL OMSPG.freeR
CALL 1
LABEL L134
INCL -4
JUMP L130
LABEL L129
RETURN
END

PROC OMSPG.free 0 3 0x00100001
!   PROCEDURE free(VAR x: Item);
LINE 209
!   BEGIN IF x.tmp THEN freeR(x.reg); x.tmp := FALSE END
LINE 210
LDLW 12
CONST 33
LDIC
JEQZ L137
LDLW 12
LOADC
GLOBAL OMSPG.freeR
CALL 1
CONST 0
LDLW 12
CONST 33
STIC
LABEL L137
RETURN
END

PROC OMSPG.resultRegister 0 3 0x00100001
!   PROCEDURE resultRegister*(VAR res: Item);
LINE 213
!     IF AllocUp THEN res := r4 ELSE res := r15 END
LINE 215
LDGC OMSPG.AllocUp
JEQZ L141
LDLW 16
GLOBAL OMSPG.Item
JEQ L142
ERROR E_ASSIGN 215
LABEL L142
LDLW 12
GLOBAL OMSPG.r4
CONST 36
FIXCOPY
RETURN
LABEL L141
LDLW 16
GLOBAL OMSPG.Item
JEQ L139
ERROR E_ASSIGN 215
LABEL L139
LDLW 12
GLOBAL OMSPG.r15
CONST 36
FIXCOPY
RETURN
END

PROC OMSPG.CheckRegs 0 3 0
!   PROCEDURE CheckRegs*;
LINE 218
!   BEGIN IF RIU # VRS THEN S.Mark("Reg Stack"); RIU := VRS END;
LINE 219
LDGW OMSPG.RIU
LDGW OMSPG.VRS
JEQ L145
CONST 10
GLOBAL OMSPG.%17
GLOBAL OMSPS.Mark
CALL 2
LDGW OMSPG.VRS
STGW OMSPG.RIU
LABEL L145
!     IF mcode.pc >= A.maxCode - 40 THEN S.Mark("program too long") END ;
LINE 220
LDGW OMSPG.mcode
CONST 31960
JLT L148
CONST 17
GLOBAL OMSPG.%18
GLOBAL OMSPS.Mark
CALL 2
LABEL L148
!     IF frame # vframe THEN S.Mark("frame error"); frame := vframe END
LINE 221
LDGW OMSPG.frame
LDGW OMSPG.vframe
JEQ L151
CONST 12
GLOBAL OMSPG.%19
GLOBAL OMSPS.Mark
CALL 2
LDGW OMSPG.vframe
STGW OMSPG.frame
LABEL L151
RETURN
END

PROC OMSPG.SetCC 0 3 0x00100001
!   PROCEDURE SetCC(VAR x: Item; n: INTEGER);
LINE 224
!   BEGIN x.mode := Cond; x.a := 0; x.b := 0; x.c := n
LINE 225
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
LINE 228
!   RETURN traps[2] # NIL
LINE 229
GLOBAL OMSPG.traps
LDNW 8
CONST 0
NEQ
RETURN
END

PROC OMSPG.AssertionChecked 0 3 0
!   PROCEDURE AssertionChecked*(): BOOLEAN;
LINE 232
!   RETURN traps[7] # NIL
LINE 233
GLOBAL OMSPG.traps
LDNW 28
CONST 0
NEQ
RETURN
END

PROC OMSPG.GetOffset 24 4 0x00100801
!   PROCEDURE GetOffset(VAR x: A.Item): INTEGER;
LINE 236
!   BEGIN CASE x OF
LINE 238
LOCAL 16
DUP 0
LOADW
DUP 0
LDNW 4
CONST 1
JGEQ L180
POP 1
JUMP L153
LABEL L180
LDNW 8
LDNW 4
GLOBAL OMSPG.Item
JNEQ L153
POP 1
!       o := x.obj; ofs := x.ofs; a := x.a; c := x.c;
LINE 240
LDLW 12
LDNW 16
STLW -24
LDLW 12
LDNW 4
STLW -8
LDLW 12
LDNW 20
STLW -12
LDLW 12
LDNW 28
STLW -16
!       IF (c = 0) & (ofs >= A.C17) THEN (*global constants with address encoded in offset*) a := ofs - A.C17; ofs := A.C16 END;
LINE 241
LDLW -16
JNEQZ L157
LDLW -8
CONST 131072
JLT L157
LDLW -8
CONST 131072
MINUS
STLW -12
CONST 65536
STLW -8
LABEL L157
!       IF (c = 0) & (ofs > A.C16) THEN (*global strings with index encoded in offset*)
LINE 242
LDLW -16
JNEQZ L161
LDLW -8
CONST 65536
JLEQ L161
!         a := ofs - A.C16; res := ORD(strdata[a]) + ORD(strdata[a + 1]) * 100H;
LINE 243
LDLW -8
CONST 65536
MINUS
STLW -12
GLOBAL OMSPG.strdata
LDLW -12
CONST 3000
BOUND 243
LDIC
GLOBAL OMSPG.strdata
LDLW -12
INC
CONST 3000
BOUND 243
LDIC
CONST 256
TIMES
PLUS
STLW -4
!         strdata[a] := CHR(mcode.pc MOD 100H); strdata[a + 1] := CHR(mcode.pc DIV 100H)
LINE 244
LDGW OMSPG.mcode
CONST 256
MOD
CONVNC
GLOBAL OMSPG.strdata
LDLW -12
CONST 3000
BOUND 244
STIC
LDGW OMSPG.mcode
CONST 256
DIV
CONVNC
GLOBAL OMSPG.strdata
LDLW -12
INC
CONST 3000
BOUND 244
STIC
JUMP L152
LABEL L161
!       ELSIF ofs >= A.C16 THEN
LINE 245
LDLW -8
CONST 65536
JLT L164
!         IF ((x.mode = B.Var) OR (x.mode = B.Const) & (o # NIL) & (o.type.form # B.Proc)) &
LINE 246
LDLW 12
LDNW 8
CONST 2
JEQ L176
LDLW 12
LDNW 8
CONST 1
JNEQ L167
LDLW -24
JEQZ L167
LDLW -24
NCHECK 246
LDNW 24
NCHECK 246
LOADW
CONST 10
JEQ L167
LABEL L176
LDLW -16
JNEQZ L167
LDLW -24
NCHECK 247
LOADC
CONST 5
JEQ L167
!           (c = 0) & (o.class # B.Typ) THEN (*global variable*) i := 0;
LINE 247
CONST 0
STLW -20
LABEL L168
!           WHILE (gvdata[i].adr # -1) & (gvdata[i].adr # a) DO INC(i) END;
LINE 248
GLOBAL OMSPG.gvdata
LDLW -20
CONST 200
BOUND 248
INDEXD
LOADW
CONST -1
JEQ L170
GLOBAL OMSPG.gvdata
LDLW -20
CONST 200
BOUND 248
INDEXD
LOADW
LDLW -12
JEQ L170
INCL -20
JUMP L168
LABEL L170
!           IF gvdata[i].adr = -1 THEN gvdata[i].adr := a; gvdata[i].usedat := 0; gvdata[i+1].adr := -1 END;
LINE 249
GLOBAL OMSPG.gvdata
LDLW -20
CONST 200
BOUND 249
INDEXD
LOADW
CONST -1
JNEQ L174
LDLW -12
GLOBAL OMSPG.gvdata
LDLW -20
CONST 200
BOUND 249
INDEXD
STOREW
CONST 0
GLOBAL OMSPG.gvdata
LDLW -20
CONST 200
BOUND 249
INDEXD
STNW 4
CONST -1
GLOBAL OMSPG.gvdata
LDLW -20
INC
CONST 200
BOUND 249
INDEXD
STOREW
LABEL L174
!           res := gvdata[i].usedat; gvdata[i].usedat := mcode.pc
LINE 250
GLOBAL OMSPG.gvdata
LDLW -20
CONST 200
BOUND 250
INDEXD
LDNW 4
STLW -4
LDGW OMSPG.mcode
GLOBAL OMSPG.gvdata
LDLW -20
CONST 200
BOUND 250
INDEXD
STNW 4
JUMP L152
LABEL L167
!         ELSE (*Imported variable or other object type*) res := o.usedat; o.usedat := mcode.pc END
LINE 251
LDLW -24
NCHECK 251
LDNW 12
STLW -4
LDGW OMSPG.mcode
LDLW -24
NCHECK 251
STNW 12
JUMP L152
LABEL L164
!       ELSE res := ofs
LINE 252
LDLW -8
STLW -4
JUMP L152
LABEL L153
DUP 0
LOADW
DUP 0
LDNW 4
JGEQZ L185
POP 1
JUMP L181
LABEL L185
LDNW 8
LOADW
GLOBAL OMSPA.Item
JNEQ L181
POP 1
CONST 0
CONST 254
GLOBAL EASSERT
CALL 2
JUMP L152
LABEL L181
POP 1
ERROR E_CASE 238
LABEL L152
!     RETURN res
LINE 257
LDLW -4
RETURN
END

PROC OMSPG.Trap 36 7 0x00001801
!  PROCEDURE Trap(cond, num: INTEGER);
LINE 260
!   BEGIN IF cond # A.AL THEN A.PutJ(mcode, A.negated(cond), 4) END; 
LINE 265
LDLW 12
CONST 7
JEQ L188
CONST 4
LDLW 12
GLOBAL OMSPA.negated
CALLW 1
CONVNC
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LABEL L188
!     t.reg := 0; t.am := A.Immediate; t.ofs := A.C16; t.obj := traps[num];
LINE 266
CONST 0
STLC -36
CONST 6
STLC -35
CONST 65536
STLW -32
GLOBAL OMSPG.traps
LDLW 16
CONST 8
BOUND 266
LDIW
STLW -20
!     A.PutSO(mcode, A.CALL, t, A.Word)
LINE 267
CONST 0
GLOBAL OMSPG.Item
LOCAL -36
CONST 37
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
RETURN
END

PROC OMSPG.NilCheck 72 9 0x0000180d
!   PROCEDURE NilCheck(a: BYTE);
LINE 270
!   BEGIN t.reg := a; t.am := A.Register; t.ofs := 0; t.obj := NIL;
LINE 272
LDLC 12
STLC -36
CONST 0
STLC -35
CONST 0
STLW -32
CONST 0
STLW -20
!     IF traps[4] # NIL THEN
LINE 273
GLOBAL OMSPG.traps
LDNW 16
JEQZ L191
!       c := c0; A.PutDO(mcode, A.CMP, c, t, A.Word);
LINE 274
LOCAL -72
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
CONST 0
GLOBAL OMSPG.Item
LOCAL -36
GLOBAL OMSPG.Item
LOCAL -72
CONST 9
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!       Trap(A.EQ, 4) 
LINE 275
CONST 4
CONST 1
GLOBAL OMSPG.Trap
CALL 2
LABEL L191
RETURN
END

PROC OMSPG.load 120 9 OMSPG.load.%map
!   PROCEDURE load(VAR x: Item; pr: BYTE); (*load item in a temporary register*)
LINE 281
!   BEGIN t := x; t.reg := 0; t.am := A.Immediate;
LINE 283
LOCAL -48
LDLW 12
CONST 36
FIXCOPY
CONST 0
STLC -48
CONST 6
STLC -47
!     ti.am := A.Indexed; ti.obj := NIL; sva := x; sva.ofs := A.C16;
LINE 284
CONST 1
STLC -83
CONST 0
STLW -68
LOCAL -120
LDLW 12
CONST 36
FIXCOPY
CONST 65536
STLW -116
!     IF x.type.size = 1 THEN bw := A.Byte ELSE bw := A.Word END;
LINE 285
LDLW 12
LDNW 12
NCHECK 285
LDNW 32
CONST 1
JNEQ L194
CONST 64
STLW -12
JUMP L192
LABEL L194
CONST 0
STLW -12
LABEL L192
!     IF x.mode = B.Const THEN alloc(x, pr);
LINE 286
LDLW 12
LDNW 8
CONST 1
JNEQ L197
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
!       IF x.type.form = B.Proc THEN
LINE 287
LDLW 12
LDNW 12
NCHECK 287
LOADW
CONST 10
JNEQ L200
!         IF x.c > 0 THEN S.Mark("not allowed")
LINE 288
LDLW 12
LDNW 28
JLEQZ L203
CONST 12
GLOBAL OMSPG.%20
GLOBAL OMSPS.Mark
CALL 2
JUMP L195
LABEL L203
!         ELSE sva.am := A.Immediate (*imported*); A.PutDO(mcode, A.MOV, sva, x, A.Word)
LINE 289
CONST 6
STLC -119
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -120
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
JUMP L195
LABEL L200
!       ELSE t.ofs := x.a; A.PutDO(mcode, A.MOV, t, x, A.Word)
LINE 291
LDLW 12
LDNW 20
STLW -44
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -48
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
JUMP L195
LABEL L197
!     ELSIF x.mode = B.Var THEN alloc(x, pr);
LINE 293
LDLW 12
LDNW 8
CONST 2
JNEQ L205
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
!       IF x.c > 0 THEN (*local*) ti.reg := A.SP; ti.ofs :=  x.a + frame; A.PutDO(mcode, A.MOV, ti, rh, bw)
LINE 294
LDLW 12
LDNW 28
JLEQZ L208
CONST 1
STLC -84
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
STLW -80
LDLW -12
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -84
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
JUMP L195
LABEL L208
!       ELSE  sva.am := A.Absolute; A.PutDO(mcode, A.MOV, sva, rh, bw)
LINE 295
CONST 3
STLC -119
LDLW -12
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -120
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
JUMP L195
LABEL L205
!     ELSIF x.mode = B.Par THEN alloc(x, pr); ti.reg := A.SP; ti.ofs :=  x.a + frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word);
LINE 297
LDLW 12
LDNW 8
CONST 3
JNEQ L210
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
CONST 1
STLC -84
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
STLW -80
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -84
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!       ti.reg := rh.reg; ti.ofs := x.b; A.PutDO(mcode, A.MOV, ti, rh, bw)
LINE 298
LDGC OMSPG.rh
STLC -84
LDLW 12
LDNW 24
STLW -80
LDLW -12
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -84
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
JUMP L195
LABEL L210
!     ELSIF x.mode = RegI THEN ti.reg := x.reg; ti.ofs := x.a; x.am := A.Register; x.ofs := 0; 
LINE 299
LDLW 12
LDNW 8
CONST 11
JNEQ L212
LDLW 12
LOADC
STLC -84
LDLW 12
LDNW 20
STLW -80
CONST 0
LDLW 12
CONST 1
STIC
CONST 0
LDLW 12
STNW 4
!       IF ~x.tmp OR (pr # 0FFH) & (x.reg # pr) THEN free(x); alloc(x, pr) END;
LINE 300
LDLW 12
CONST 33
LDIC
JEQZ L214
LDLC 20
CONST 255
JEQ L215
LDLW 12
LOADC
LDLC 20
JEQ L215
LABEL L214
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
LABEL L215
!       A.PutDO(mcode, A.MOV, ti, x, bw)
LINE 301
LDLW -12
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -84
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
JUMP L195
LABEL L212
!     ELSIF x.mode = Reg THEN
LINE 302
LDLW 12
LDNW 8
CONST 10
JNEQ L219
!       IF ~x.tmp OR (pr # 0FFH) & (x.reg # pr) THEN (*temporary copy needed*)
LINE 303
LDLW 12
CONST 33
LDIC
JEQZ L221
LDLC 20
CONST 255
JEQ L195
LDLW 12
LOADC
LDLC 20
JEQ L195
LABEL L221
!         x.am := A.Register; t := x; free(x); alloc(x, pr); A.PutDO(mcode, A.MOV, t, x, A.Word) END
LINE 304
CONST 0
LDLW 12
CONST 1
STIC
LOCAL -48
LDLW 12
CONST 36
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
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -48
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
JUMP L195
LABEL L219
!     ELSIF x.mode = Absol THEN alloc(x, pr); t.am := A.Absolute; t.ofs := x.a; A.PutDO(mcode, A.MOV, t, x, bw)
LINE 305
LDLW 12
LDNW 8
CONST 13
JNEQ L226
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
CONST 3
STLC -47
LDLW 12
LDNW 20
STLW -44
LDLW -12
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -48
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
JUMP L195
LABEL L226
!     ELSIF x.mode = Cond THEN alloc(x, pr);
LINE 306
LDLW 12
LDNW 8
CONST 12
JNEQ L228
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
!       pc0 := mcode.pc; A.PutJ(mcode, A.negated(x.c), 0);
LINE 307
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
!       FixLink(x.b); t := c1; A.PutDO(mcode, A.MOV, t, x, A.Word); pc1 := mcode.pc; A.PutJ(mcode, A.AL, 0);
LINE 308
LDLW 12
LDNW 24
GLOBAL OMSPG.FixLink
CALL 1
LOCAL -48
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -48
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LDGW OMSPG.mcode
STLW -8
CONST 0
CONST 7
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!       A.fix(mcode, pc0, mcode.pc - pc0 - 2); FixLink(x.a); t := c0; A.PutDO(mcode, A.MOV, t, x, A.Word);
LINE 309
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
LOCAL -48
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -48
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!       A.fix(mcode, pc1, mcode.pc - pc1 - 2)
LINE 310
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
JUMP L195
LABEL L228
!     ELSE S.Mark("bad mode in load"); alloc(x, pr)
LINE 311
CONST 17
GLOBAL OMSPG.%21
GLOBAL OMSPS.Mark
CALL 2
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
LABEL L195
!     x.mode := Reg; x.tmp := TRUE; x.am := A.Register; x.ofs := 0
LINE 313
CONST 10
LDLW 12
STNW 8
CONST 1
LDLW 12
CONST 33
STIC
CONST 0
LDLW 12
CONST 1
STIC
CONST 0
LDLW 12
STNW 4
RETURN
END

PROC OMSPG.setRAO 36 9 0x03201801
!   PROCEDURE setRAO(op: INTEGER; VAR i: Item; dst: BOOLEAN; VAR nba, bw: SET);
LINE 316
!   BEGIN IF (op = A.PUSH) OR (op = A.CALL) THEN dst := FALSE END;
LINE 318
LDLW 12
CONST 36
JEQ L230
LDLW 12
CONST 37
JNEQ L231
LABEL L230
CONST 0
STLC 24
LABEL L231
!     IF ~((dst OR (i.type.size = 2) OR (bw = A.Byte))) THEN S.Mark("move byte to int") END;
LINE 319
LDLC 24
JNEQZ L235
LDLW 16
LDNW 12
NCHECK 319
LDNW 32
CONST 2
JEQ L235
LDLW 32
LOADW
CONST 64
JEQ L235
CONST 17
GLOBAL OMSPG.%22
GLOBAL OMSPS.Mark
CALL 2
LABEL L235
!     IF i.type.size = 1 THEN bw := A.Byte END;
LINE 320
LDLW 16
LDNW 12
NCHECK 320
LDNW 32
CONST 1
JNEQ L240
CONST 64
LDLW 32
STOREW
LABEL L240
!     IF dst & i.rdo & ((i.mode = B.Const) OR (op # A.CMP) & (op # A.BIT)) THEN load(i, 0FFH)
LINE 321
LDLC 24
JEQZ L243
LDLW 16
CONST 32
LDIC
JEQZ L243
LDLW 16
LDNW 8
CONST 1
JEQ L242
LDLW 12
CONST 9
JEQ L243
LDLW 12
CONST 11
JEQ L243
LABEL L242
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
RETURN
LABEL L243
!     ELSIF i.mode = B.Var THEN
LINE 322
LDLW 16
LDNW 8
CONST 2
JNEQ L249
!       IF i.c > 0 THEN i.reg := A.SP; i.am := A.Indexed; i.ofs := i.a + frame ELSE i.reg := 0; i.am := A.Absolute; i.ofs := A.C16 (*use static var address*) END
LINE 323
LDLW 16
LDNW 28
JLEQZ L252
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
LABEL L252
CONST 0
LDLW 16
STOREC
CONST 3
LDLW 16
CONST 1
STIC
CONST 65536
LDLW 16
STNW 4
RETURN
LABEL L249
!     ELSIF i.mode = Reg THEN i.am := A.Register; i.ofs := 0
LINE 324
LDLW 16
LDNW 8
CONST 10
JNEQ L254
CONST 0
LDLW 16
CONST 1
STIC
CONST 0
LDLW 16
STNW 4
RETURN
LABEL L254
!     ELSIF i.mode = RegI THEN i.am := A.Indexed; i.ofs := i.a
LINE 325
LDLW 16
LDNW 8
CONST 11
JNEQ L256
CONST 1
LDLW 16
CONST 1
STIC
LDLW 16
LDNW 20
LDLW 16
STNW 4
RETURN
LABEL L256
!     ELSIF i.mode = Absol THEN  i.am := A.Absolute; i.ofs := i.a
LINE 326
LDLW 16
LDNW 8
CONST 13
JNEQ L258
CONST 3
LDLW 16
CONST 1
STIC
LDLW 16
LDNW 20
LDLW 16
STNW 4
RETURN
LABEL L258
!     ELSIF i.mode = B.Const THEN i.ofs := i.a; i.reg := 0;
LINE 327
LDLW 16
LDNW 8
CONST 1
JNEQ L260
LDLW 16
LDNW 20
LDLW 16
STNW 4
CONST 0
LDLW 16
STOREC
!       i.am := A.Immediate;
LINE 328
CONST 6
LDLW 16
CONST 1
STIC
!       IF (i.type.form = B.Proc) & (i.c <= 0) THEN i.ofs := A.C16 END;
LINE 329
LDLW 16
LDNW 12
NCHECK 329
LOADW
CONST 10
JNEQ L263
LDLW 16
LDNW 28
JGTZ L263
CONST 65536
LDLW 16
STNW 4
LABEL L263
!       IF dst THEN S.Mark("not writable"); i.am := A.Absolute END
LINE 330
LDLC 24
JEQZ L241
CONST 13
GLOBAL OMSPG.%23
GLOBAL OMSPS.Mark
CALL 2
CONST 3
LDLW 16
CONST 1
STIC
RETURN
LABEL L260
!     ELSIF i.mode = B.Par THEN rh.reg := AllocR(); INCL(nba, rh.reg);
LINE 331
LDLW 16
LDNW 8
CONST 3
JNEQ L269
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
BOUND 331
LSL
BITOR
SWAP
STOREW
!       ti.am := A.Indexed; ti.reg := A.SP; ti.obj := NIL; ti.ofs := i.a + frame;
LINE 332
CONST 1
STLC -35
CONST 1
STLC -36
CONST 0
STLW -20
LDLW 16
LDNW 20
LDGW OMSPG.frame
PLUS
STLW -32
!       A.PutDO(mcode, A.MOV, ti, rh, A.Word); i.mode := RegI; i.reg := rh.reg; i.a := i.b; i.b := 0; setRAO(op, i, dst, nba, bw)
LINE 333
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -36
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
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
LABEL L269
!     ELSE load(i, 0FFH)
LINE 334
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LABEL L241
RETURN
END

PROC OMSPG.PutDO 12 9 0x00a00001
!   PROCEDURE PutDO(op: BYTE; VAR src, dst: Item);
LINE 338
!   BEGIN tmp := FALSE;
LINE 340
CONST 0
STLC -9
!     IF (src.type.size = 1) & (dst.type.size = 2) THEN (*move byte to word*)
LINE 341
LDLW 16
LDNW 12
NCHECK 341
LDNW 32
CONST 1
JNEQ L272
LDLW 24
LDNW 12
NCHECK 341
LDNW 32
CONST 2
JNEQ L272
!       IF src.mode # Reg THEN load(src, 0FFH); tmp := TRUE; END; src.type := B.intType (*extend source*)
LINE 342
LDLW 16
LDNW 8
CONST 10
JEQ L275
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
CONST 1
STLC -9
LABEL L275
LDGW OMSPB.intType
LDLW 16
STNW 12
LABEL L272
!     nba := {}; bw := A.Word; setRAO(op, dst, TRUE, nba, bw); setRAO(op, src, FALSE, nba, bw);
LINE 344
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
LINE 345
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
LINE 346
LDLC -9
JEQZ L279
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
LABEL L279
RETURN
END

PROC OMSPG.PutSO 8 7 0x00200001
!   PROCEDURE PutSO(op: INTEGER; VAR sd: Item);
LINE 349
!   BEGIN nba := {}; bw := A.Word; setRAO(op, sd, TRUE, nba, bw);
LINE 351
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
!     A.PutSO(mcode, op, sd, bw); freeSet(nba)
LINE 352
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
RETURN
END

PROC OMSPG.push 120 9 OMSPG.push.%map
!   PROCEDURE push(VAR x: Item; dsize: INTEGER);
LINE 355
!     bw := A.Word;
LINE 358
CONST 0
STLW -12
!     IF x.type.size = 1 THEN
LINE 359
LDLW 12
LDNW 12
NCHECK 359
LDNW 32
CONST 1
JNEQ L282
!       IF dsize = 1 THEN bw := A.Byte ELSE (*convert byte to word before push*) load(x, 0FFH); x.type := B.intType END
LINE 360
LDLW 20
CONST 1
JNEQ L285
CONST 64
STLW -12
JUMP L282
LABEL L285
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
LDGW OMSPB.intType
LDLW 12
STNW 12
LABEL L282
!     adjFrmOfs(WordSize); t := x; t.reg := 0; t.am := A.Immediate;
LINE 362
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
LOCAL -48
LDLW 12
CONST 36
FIXCOPY
CONST 0
STLC -48
CONST 6
STLC -47
!     ti.am := A.Indexed; ti.obj := NIL; sva := x; sva.ofs := A.C16;
LINE 363
CONST 1
STLC -83
CONST 0
STLW -68
LOCAL -120
LDLW 12
CONST 36
FIXCOPY
CONST 65536
STLW -116
!     IF x.mode = Reg THEN PutSO(A.PUSH, x)
LINE 365
LDLW 12
LDNW 8
CONST 10
JNEQ L288
LDLW 16
LDLW 12
CONST 36
GLOBAL OMSPG.PutSO
CALL 3
JUMP L286
LABEL L288
!     ELSIF x.mode = B.Const THEN
LINE 366
LDLW 12
LDNW 8
CONST 1
JNEQ L290
!       IF x.type.form = B.Proc THEN
LINE 367
LDLW 12
LDNW 12
NCHECK 367
LOADW
CONST 10
JNEQ L293
!         IF x.c > 0 THEN S.Mark("not allowed")
LINE 368
LDLW 12
LDNW 28
JLEQZ L296
CONST 12
GLOBAL OMSPG.%20
GLOBAL OMSPS.Mark
CALL 2
JUMP L286
LABEL L296
!         ELSE sva.am := A.Immediate (*imported*); A.PutSO(mcode, A.PUSH, sva, A.Word)
LINE 369
CONST 6
STLC -119
CONST 0
GLOBAL OMSPG.Item
LOCAL -120
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L286
LABEL L293
!       ELSE t.ofs := x.a; A.PutSO(mcode, A.PUSH, t, bw)
LINE 371
LDLW 12
LDNW 20
STLW -44
LDLW -12
GLOBAL OMSPG.Item
LOCAL -48
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L286
LABEL L290
!     ELSIF x.mode = B.Var THEN
LINE 373
LDLW 12
LDNW 8
CONST 2
JNEQ L298
!       IF x.c > 0 THEN (*local*) ti.reg := A.SP; ti.ofs :=  x.a + frame; A.PutSO(mcode, A.PUSH, ti, bw)
LINE 374
LDLW 12
LDNW 28
JLEQZ L301
CONST 1
STLC -84
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
STLW -80
LDLW -12
GLOBAL OMSPG.Item
LOCAL -84
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L286
LABEL L301
!       ELSE sva.am := A.Absolute; A.PutSO(mcode, A.PUSH, sva, bw)
LINE 375
CONST 3
STLC -119
LDLW -12
GLOBAL OMSPG.Item
LOCAL -120
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L286
LABEL L298
!     ELSIF x.mode = B.Par THEN ti.reg := A.SP; ti.ofs :=  x.a + frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word);
LINE 377
LDLW 12
LDNW 8
CONST 3
JNEQ L303
CONST 1
STLC -84
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
STLW -80
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -84
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!       ti.reg := rh.reg; ti.ofs := x.b; A.PutSO(mcode, A.PUSH, ti, bw)
LINE 378
LDGC OMSPG.rh
STLC -84
LDLW 12
LDNW 24
STLW -80
LDLW -12
GLOBAL OMSPG.Item
LOCAL -84
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L286
LABEL L303
!     ELSIF x.mode = RegI THEN ti.reg := x.reg; ti.ofs := x.a; x.am := A.Register; x.ofs := 0; A.PutSO(mcode, A.PUSH, ti, bw)
LINE 379
LDLW 12
LDNW 8
CONST 11
JNEQ L305
LDLW 12
LOADC
STLC -84
LDLW 12
LDNW 20
STLW -80
CONST 0
LDLW 12
CONST 1
STIC
CONST 0
LDLW 12
STNW 4
LDLW -12
GLOBAL OMSPG.Item
LOCAL -84
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L286
LABEL L305
!     ELSIF x.mode = Absol THEN t.am := A.Absolute; t.ofs := x.a; A.PutSO(mcode, A.PUSH, t, bw)
LINE 380
LDLW 12
LDNW 8
CONST 13
JNEQ L307
CONST 3
STLC -47
LDLW 12
LDNW 20
STLW -44
LDLW -12
GLOBAL OMSPG.Item
LOCAL -48
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L286
LABEL L307
!     ELSIF x.mode = Cond THEN
LINE 381
LDLW 12
LDNW 8
CONST 12
JNEQ L309
!       pc0 := mcode.pc; A.PutJ(mcode, A.negated(x.c), 0);
LINE 382
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
!       FixLink(x.b); t := c1; A.PutSO(mcode, A.PUSH, t, A.Word); pc1 := mcode.pc; A.PutJ(mcode, A.AL, 0);
LINE 383
LDLW 12
LDNW 24
GLOBAL OMSPG.FixLink
CALL 1
LOCAL -48
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
CONST 0
GLOBAL OMSPG.Item
LOCAL -48
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
LDGW OMSPG.mcode
STLW -8
CONST 0
CONST 7
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!       A.fix(mcode, pc0, mcode.pc - pc0 - 2); FixLink(x.a); t := c0; A.PutSO(mcode, A.PUSH, t, A.Word);
LINE 384
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
LOCAL -48
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
CONST 0
GLOBAL OMSPG.Item
LOCAL -48
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
!       A.fix(mcode, pc1, mcode.pc - pc1 - 2)
LINE 385
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
JUMP L286
LABEL L309
!     ELSE S.Mark("bad mode in push")
LINE 386
CONST 17
GLOBAL OMSPG.%24
GLOBAL OMSPS.Mark
CALL 2
LABEL L286
!     free(x)
LINE 388
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Adr 36 6 0x00101801
!   PROCEDURE Adr*(VAR x:Item);
LINE 391
!   BEGIN t.mode := B.Const; t.type := B.intType; t.obj := NIL;
LINE 393
CONST 1
STLW -28
LDGW OMSPB.intType
STLW -24
CONST 0
STLW -20
!     IF x.mode = B.Var THEN
LINE 394
LDLW 12
LDNW 8
CONST 2
JNEQ L312
!       IF x.c > 0 THEN (*local*) ASSERT(x.tmp = FALSE); x.mode := Reg; x.reg := A.SP; x.rdo := TRUE;
LINE 395
LDLW 12
LDNW 28
JLEQZ L315
LDLW 12
CONST 33
LDIC
JEQZ L317
CONST 0
CONST 395
GLOBAL EASSERT
CALL 2
LABEL L317
CONST 10
LDLW 12
STNW 8
CONST 1
LDLW 12
STOREC
CONST 1
LDLW 12
CONST 32
STIC
!         IF x.a + frame # 0 THEN t.a := x.a + frame; PutDO(A.ADD, t, x) END
LINE 396
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
JEQZ L310
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
STLW -16
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
JUMP L310
LABEL L315
!       ELSE (*global or imported*) x.mode := B.Const; INC(x.a, A.C17)
LINE 397
CONST 1
LDLW 12
STNW 8
LDLW 12
DUP 0
LDNW 20
CONST 131072
PLUS
SWAP
STNW 20
JUMP L310
LABEL L312
!     ELSIF x.mode = B.Par THEN x.mode := B.Var;
LINE 399
LDLW 12
LDNW 8
CONST 3
JNEQ L322
CONST 2
LDLW 12
STNW 8
!       IF x.b # 0 THEN t.a := x.b; PutDO(A.ADD, t, x) END
LINE 400
LDLW 12
LDNW 24
JEQZ L310
LDLW 12
LDNW 24
STLW -16
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
JUMP L310
LABEL L322
!     ELSIF (x.mode = B.Const) & (x.type.form = B.String) THEN INC(x.a, A.C16) (*encode string index in constant value*)
LINE 401
LDLW 12
LDNW 8
CONST 1
JNEQ L327
LDLW 12
LDNW 12
NCHECK 401
LOADW
CONST 11
JNEQ L327
LDLW 12
DUP 0
LDNW 20
CONST 65536
PLUS
SWAP
STNW 20
JUMP L310
LABEL L327
!     ELSIF (x.mode = B.Const) & (x.type.form = B.Proc) & (x.c <= 0) THEN x.a := A.C16 (*use runtime proc address*)
LINE 402
LDLW 12
LDNW 8
CONST 1
JNEQ L330
LDLW 12
LDNW 12
NCHECK 402
LOADW
CONST 10
JNEQ L330
LDLW 12
LDNW 28
JGTZ L330
CONST 65536
LDLW 12
STNW 20
JUMP L310
LABEL L330
!     ELSIF x.mode = RegI THEN x.mode := Reg;
LINE 403
LDLW 12
LDNW 8
CONST 11
JNEQ L334
CONST 10
LDLW 12
STNW 8
!       IF x.a # 0 THEN t.a := x.a; PutDO(A.ADD, t, x) END
LINE 404
LDLW 12
LDNW 20
JEQZ L310
LDLW 12
LDNW 20
STLW -16
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
JUMP L310
LABEL L334
!     ELSE S.Mark("not addressable")
LINE 405
CONST 16
GLOBAL OMSPG.%25
GLOBAL OMSPS.Mark
CALL 2
LABEL L310
!     x.type := B.intType
LINE 407
LDGW OMSPB.intType
LDLW 12
STNW 12
RETURN
END

PROC OMSPG.loadAdr 0 4 0x00100001
!   PROCEDURE loadAdr(VAR x: Item; pr: INTEGER);
LINE 410
!   BEGIN Adr(x); load(x, pr)
LINE 411
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
LINE 414
!   BEGIN Adr(x); push(x, 2)
LINE 415
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

PROC OMSPG.loadCond 36 6 0x00101801
!   PROCEDURE loadCond(VAR x: Item);
LINE 418
!     IF x.type.form = B.Bool THEN
LINE 421
LDLW 12
LDNW 12
NCHECK 421
LOADW
CONST 2
JNEQ L340
!       IF x.mode = B.Const THEN IF x.a = 0 THEN x.c := A.NV ELSE x.c := A.AL END
LINE 422
LDLW 12
LDNW 8
CONST 1
JNEQ L343
LDLW 12
LDNW 20
JNEQZ L346
CONST 8
LDLW 12
STNW 28
JUMP L341
LABEL L346
CONST 7
LDLW 12
STNW 28
JUMP L341
LABEL L343
!       ELSE t := c0; PutDO(A.CMP, t, x); x.c := A.NE; free(x)
LINE 423
LOCAL -36
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
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
LABEL L341
!       x.mode := Cond; x.a := 0; x.b := 0
LINE 425
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
LABEL L340
!     ELSE S.Mark("not Boolean?")
LINE 426
CONST 13
GLOBAL OMSPG.%26
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.loadTypTagAdr 36 9 0x00101801
!   PROCEDURE loadTypTagAdr(T: B.Type; pr: INTEGER): BYTE;
LINE 430
!   BEGIN sva.am := A.Immediate; sva.ofs := A.C16; sva.obj := T.typobj;
LINE 432
CONST 6
STLC -35
CONST 65536
STLW -32
LDLW 12
NCHECK 432
LDNW 24
STLW -20
!     rh.reg := AllocRP(pr); A.PutDO(mcode, A.MOV, sva, rh, A.Word)
LINE 433
LDLW 16
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -36
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     RETURN rh.reg
LINE 434
LDGC OMSPG.rh
RETURN
END

PROC OMSPG.pushTypTagAdr 36 7 0x00101801
!   PROCEDURE pushTypTagAdr(T: B.Type);
LINE 437
!   BEGIN sva.am := A.Immediate; sva.ofs := A.C16; sva.obj := T.typobj;
LINE 439
CONST 6
STLC -35
CONST 65536
STLW -32
LDLW 12
NCHECK 439
LDNW 24
STLW -20
!     adjFrmOfs(WordSize); A.PutSO(mcode, A.PUSH, sva, A.Word)
LINE 440
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
CONST 0
GLOBAL OMSPG.Item
LOCAL -36
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
RETURN
END

PROC OMSPG.loadStringAdr 0 9 0x00100001
!   PROCEDURE loadStringAdr(VAR x: Item; pr: INTEGER);
LINE 443
!   BEGIN x.am := A.Immediate; x.ofs := A.C16+x.a;
LINE 444
CONST 6
LDLW 12
CONST 1
STIC
LDLW 12
LDNW 20
CONST 65536
PLUS
LDLW 12
STNW 4
!      rh.reg := AllocRP(pr); A.PutDO(mcode, A.MOV, x, rh, A.Word);
LINE 445
LDLW 20
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
LDLW 16
LDLW 12
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     x.mode := Reg; x.am := A.Register; x.reg := rh.reg; x.ofs := 0; x.tmp := TRUE
LINE 446
CONST 10
LDLW 12
STNW 8
CONST 0
LDLW 12
CONST 1
STIC
LDGC OMSPG.rh
LDLW 12
STOREC
CONST 0
LDLW 12
STNW 4
CONST 1
LDLW 12
CONST 33
STIC
RETURN
END

PROC OMSPG.pushStringAdr 36 7 0x00101801
!   PROCEDURE pushStringAdr(x: Item);
LINE 449
!   BEGIN x1 := x; x1.c := 0; x1.am := A.Immediate; x1.ofs := A.C16+x.a;
LINE 451
LOCAL -36
LDLW 12
CONST 36
FIXCOPY
CONST 0
STLW -8
CONST 6
STLC -35
LDLW 12
LDNW 20
CONST 65536
PLUS
STLW -32
!     adjFrmOfs(WordSize); A.PutSO(mcode, A.PUSH, x1, A.Word)
LINE 452
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
CONST 0
GLOBAL OMSPG.Item
LOCAL -36
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
RETURN
END

PROC OMSPG.MakeTypTagAdr 0 3 0x00500001
!   PROCEDURE MakeTypTagAdr(VAR x: Item; T: B.Type);
LINE 457
!   BEGIN x.mode := B.Const; x.type := B.intType; x.a := A.C16; x.c := 0;
LINE 458
CONST 1
LDLW 12
STNW 8
LDGW OMSPB.intType
LDLW 12
STNW 12
CONST 65536
LDLW 12
STNW 20
CONST 0
LDLW 12
STNW 28
!     x.rdo := TRUE; x.obj := T.typobj; x.tmp := FALSE; x.reg := 0; x.am := A.Undefined; x.ofs := 0
LINE 459
CONST 1
LDLW 12
CONST 32
STIC
LDLW 20
NCHECK 459
LDNW 24
LDLW 12
STNW 16
CONST 0
LDLW 12
CONST 33
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
RETURN
END

PROC OMSPG.MakeConstItem 0 3 0x00500001
!   PROCEDURE MakeConstItem*(VAR x: Item; typ: B.Type; val: INTEGER);
LINE 462
!   BEGIN x.mode := B.Const; x.type := typ; x.a := val; x.c := 0;
LINE 463
CONST 1
LDLW 12
STNW 8
LDLW 20
LDLW 12
STNW 12
LDLW 24
LDLW 12
STNW 20
CONST 0
LDLW 12
STNW 28
!     x.rdo := TRUE; x.obj := NIL; x.tmp := FALSE; x.reg := 0; x.am := A.Undefined; x.ofs := 0
LINE 464
CONST 1
LDLW 12
CONST 32
STIC
CONST 0
LDLW 12
STNW 16
CONST 0
LDLW 12
CONST 33
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
RETURN
END

PROC OMSPG.GetStringAddress 8 3 0
!   PROCEDURE GetStringAddress(usedat: INTEGER): INTEGER;
LINE 467
!   BEGIN adr := 0; ua := maxStrx - WordSize; adr := 0;
LINE 469
CONST 0
STLW -4
CONST 2998
STLW -8
CONST 0
STLW -4
LABEL L347
!     WHILE (adr <  strx) & (ua # usedat) DO
LINE 470
LDLW -4
LDGW OMSPG.strx
JGEQ L349
LDLW -8
LDLW 12
JEQ L349
LABEL L350
!       WHILE strdata[adr] # 0X DO INC(adr) END; INC(adr); WHILE adr MOD WordSize # 0 DO INC(adr) END;
LINE 471
GLOBAL OMSPG.strdata
LDLW -4
CONST 3000
BOUND 471
LDIC
JEQZ L352
INCL -4
JUMP L350
LABEL L352
INCL -4
LABEL L353
LDLW -4
CONST 2
MOD
JEQZ L355
INCL -4
JUMP L353
LABEL L355
!       DEC(ua, WordSize)
LINE 472
LDLW -8
CONST 2
MINUS
STLW -8
JUMP L347
LABEL L349
!     RETURN adr
LINE 475
LDLW -4
RETURN
END

PROC OMSPG.stringFound 12 4 0x00500001
!   PROCEDURE stringFound(str: ARRAY OF CHAR; VAR usedat: INTEGER): BOOLEAN;
LINE 478
!   BEGIN found := FALSE;
LINE 481
CONST 0
STLC -1
!     pos := 0; usedat := maxStrx;
LINE 482
CONST 0
STLW -12
CONST 3000
LDLW 20
STOREW
LABEL L357
!     WHILE ~found & (pos < strx) DO DEC(usedat, WordSize);
LINE 483
LDLC -1
JNEQZ L359
LDLW -12
LDGW OMSPG.strx
JGEQ L359
LDLW 20
DUP 0
LOADW
CONST 2
MINUS
SWAP
STOREW
!       i := 0; WHILE (str[i] # 0X) & (str[i] = strdata[pos + i]) DO INC(i) END;
LINE 484
CONST 0
STLW -8
LABEL L360
LDLW 12
LDLW -8
LDLW 16
BOUND 484
LDIC
JEQZ L362
LDLW 12
LDLW -8
LDLW 16
BOUND 484
LDIC
GLOBAL OMSPG.strdata
LDLW -12
LDLW -8
PLUS
CONST 3000
BOUND 484
LDIC
JNEQ L362
INCL -8
JUMP L360
LABEL L362
!       IF str[i] = strdata[pos + i] THEN found := TRUE ELSE WHILE strdata[pos + i] # 0X DO INC(i) END END;
LINE 485
LDLW 12
LDLW -8
LDLW 16
BOUND 485
LDIC
GLOBAL OMSPG.strdata
LDLW -12
LDLW -8
PLUS
CONST 3000
BOUND 485
LDIC
JNEQ L369
CONST 1
STLC -1
JUMP L367
LABEL L369
GLOBAL OMSPG.strdata
LDLW -12
LDLW -8
PLUS
CONST 3000
BOUND 485
LDIC
JEQZ L367
INCL -8
JUMP L369
LABEL L367
!       INC(pos, i + 1); WHILE pos MOD WordSize # 0 DO INC(pos) END
LINE 486
LOCAL -12
DUP 0
LOADW
LDLW -8
INC
PLUS
SWAP
STOREW
LABEL L370
LDLW -12
CONST 2
MOD
JEQZ L357
INCL -12
JUMP L370
LABEL L359
!     RETURN found
LINE 489
LDLC -1
RETURN
END

PROC OMSPG.stringPut 4 4 0x00500001
!   PROCEDURE stringPut(VAR x: Item; str: ARRAY OF CHAR; len: INTEGER);
LINE 492
!   BEGIN x.mode := B.Const; x.type := B.strType; x.b := len; x.c := 0 (*global string*);
LINE 494
CONST 1
LDLW 12
STNW 8
LDGW OMSPB.strType
LDLW 12
STNW 12
LDLW 28
LDLW 12
STNW 24
CONST 0
LDLW 12
STNW 28
!     x.rdo := TRUE; x.obj := NIL; x.tmp := FALSE; x.reg := 0; x.am := A.Undefined; x.ofs := 0;
LINE 495
CONST 1
LDLW 12
CONST 32
STIC
CONST 0
LDLW 12
STNW 16
CONST 0
LDLW 12
CONST 33
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
!     IF ~stringFound(str, x.a) THEN
LINE 496
LDLW 12
CONST 20
OFFSET
LDLW 24
LDLW 20
GLOBAL OMSPG.stringFound
CALLW 3
JNEQZ L376
!       IF strx + len  + WordSize < mstrx THEN
LINE 497
LDGW OMSPG.strx
LDLW 28
PLUS
CONST 2
PLUS
LDGW OMSPG.mstrx
JGEQ L379
!         FOR i := 1 TO WordSize DO DEC(mstrx); strdata[mstrx] := 0X END; (*reserve room for usage tracking data*); x.a := mstrx;
LINE 498
CONST 1
STLW -4
LABEL L380
LDLW -4
CONST 2
JGT L381
LDGW OMSPG.mstrx
DEC
STGW OMSPG.mstrx
CONST 0
GLOBAL OMSPG.strdata
LDGW OMSPG.mstrx
CONST 3000
BOUND 498
STIC
INCL -4
JUMP L380
LABEL L381
LDGW OMSPG.mstrx
LDLW 12
STNW 20
!         i := 0; WHILE len > 0 DO strdata[strx] := str[i]; INC(strx); INC(i); DEC(len) END;
LINE 499
CONST 0
STLW -4
LABEL L382
LDLW 28
JLEQZ L384
LDLW 20
LDLW -4
LDLW 24
BOUND 499
LDIC
GLOBAL OMSPG.strdata
LDGW OMSPG.strx
CONST 3000
BOUND 499
STIC
LDGW OMSPG.strx
INC
STGW OMSPG.strx
INCL -4
DECL 28
JUMP L382
LABEL L384
!         WHILE strx MOD WordSize # 0 DO strdata[strx] := 0X; INC(strx) END; INC(nofstrs)
LINE 500
LDGW OMSPG.strx
CONST 2
MOD
JEQZ L387
CONST 0
GLOBAL OMSPG.strdata
LDGW OMSPG.strx
CONST 3000
BOUND 500
STIC
LDGW OMSPG.strx
INC
STGW OMSPG.strx
JUMP L384
LABEL L387
LDGW OMSPG.nofstrs
INC
STGW OMSPG.nofstrs
RETURN
LABEL L379
!       ELSE S.Mark("too many strings")
LINE 501
CONST 17
GLOBAL OMSPG.%27
GLOBAL OMSPS.Mark
CALL 2
LABEL L376
RETURN
END

PROC OMSPG.stringPop 12 4 0x00300001
!   PROCEDURE stringPop(x: Item; VAR xs: ARRAY OF CHAR);
LINE 506
!   BEGIN sxno := (maxStrx - x.a) DIV WordSize - 1; sx := 0;
LINE 508
CONST 3000
LDLW 12
LDNW 20
MINUS
CONST 2
DIV
DEC
STLW -8
CONST 0
STLW -4
LABEL L388
!     WHILE sxno > 0 DO
LINE 509
LDLW -8
JLEQZ L390
LABEL L391
!       WHILE strdata[sx] # 0X DO INC(sx) END; REPEAT INC(sx) UNTIL sx MOD WordSize = 0; (*skip current string*)
LINE 510
GLOBAL OMSPG.strdata
LDLW -4
CONST 3000
BOUND 510
LDIC
JEQZ L393
INCL -4
JUMP L391
LABEL L393
INCL -4
LDLW -4
CONST 2
MOD
JNEQZ L393
!       DEC(sxno)
LINE 511
DECL -8
JUMP L388
LABEL L390
!     IF (x.a = mstrx) & (ORD(strdata[mstrx]) + ORD(strdata[mstrx + 1])*100H = 0) THEN (*string can be removed from table*)
LINE 513
LDLW 12
LDNW 20
LDGW OMSPG.mstrx
JNEQ L398
GLOBAL OMSPG.strdata
LDGW OMSPG.mstrx
CONST 3000
BOUND 513
LDIC
GLOBAL OMSPG.strdata
LDGW OMSPG.mstrx
INC
CONST 3000
BOUND 513
LDIC
CONST 256
TIMES
PLUS
JNEQZ L398
!       strx := sx; INC(mstrx, 2); DEC(nofstrs)
LINE 514
LDLW -4
STGW OMSPG.strx
LDGW OMSPG.mstrx
CONST 2
PLUS
STGW OMSPG.mstrx
LDGW OMSPG.nofstrs
DEC
STGW OMSPG.nofstrs
LABEL L398
!     i := 0; DEC(sx); REPEAT INC(sx); xs[i] := strdata[sx]; INC(i) UNTIL strdata[sx] = 0X (*copy string in dest*)
LINE 516
CONST 0
STLW -12
DECL -4
LABEL L400
INCL -4
GLOBAL OMSPG.strdata
LDLW -4
CONST 3000
BOUND 516
LDIC
LDLW 16
LDLW -12
LDLW 20
BOUND 516
STIC
INCL -12
GLOBAL OMSPG.strdata
LDLW -4
CONST 3000
BOUND 516
LDIC
JNEQZ L400
RETURN
END

PROC OMSPG.MakeStringItem 0 6 0x00100001
!   PROCEDURE MakeStringItem*(VAR x: Item); (*copies string from OMSPS-buffer to OMSPG-string array*)
LINE 519
!   BEGIN stringPut(x, S.str, S.slen)
LINE 520
LDGW OMSPS.slen
CONST 256
GLOBAL OMSPS.str
LDLW 16
LDLW 12
GLOBAL OMSPG.stringPut
CALL 5
RETURN
END

PROC OMSPG.MakeItem 0 3 0x00500001
!   PROCEDURE MakeItem*(VAR x: Item; y: B.Object; curlev: INTEGER);
LINE 523
!   BEGIN x.mode := y.class; x.type := y.type; x.a := y.val; x.rdo := y.rdo; x.c := y.lev;
LINE 524
LDLW 20
NCHECK 524
LOADC
LDLW 12
STNW 8
LDLW 20
NCHECK 524
LDNW 24
LDLW 12
STNW 12
LDLW 20
NCHECK 524
LDNW 60
LDLW 12
STNW 20
LDLW 20
NCHECK 524
CONST 5
LDIC
LDLW 12
CONST 32
STIC
LDLW 20
NCHECK 524
LDNW 8
LDLW 12
STNW 28
!     x.obj := y; x.tmp := FALSE; x.reg := 0; x.am := A.Undefined; x.ofs := 0;
LINE 525
LDLW 20
LDLW 12
STNW 16
CONST 0
LDLW 12
CONST 33
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
!     IF (y.class IN {B.Var, B.Par}) THEN
LINE 526
CONST 1
LDLW 20
NCHECK 526
LOADC
CONST 32
BOUND 526
LSL
CONST 12
BITAND
JEQZ L404
!       x.b := 0; x.c := y.lev;
LINE 527
CONST 0
LDLW 12
STNW 24
LDLW 20
NCHECK 527
LDNW 8
LDLW 12
STNW 28
!       IF y.register # 0FFH THEN
LINE 528
LDLW 20
NCHECK 528
CONST 2
LDIC
CONST 255
JEQ L412
!         x.reg := y.register;
LINE 529
LDLW 20
NCHECK 529
CONST 2
LDIC
LDLW 12
STOREC
!         IF y.class = B.Var THEN x.mode := Reg ELSE x.mode := RegI END
LINE 530
LDLW 20
NCHECK 530
LOADC
CONST 2
JNEQ L410
CONST 10
LDLW 12
STNW 8
JUMP L412
LABEL L410
CONST 11
LDLW 12
STNW 8
JUMP L412
LABEL L404
!     ELSIF (y.class = B.Const) & (y.type.form = B.String) THEN 
LINE 532
LDLW 20
NCHECK 532
LOADC
CONST 1
JNEQ L412
LDLW 20
NCHECK 532
LDNW 24
NCHECK 532
LOADW
CONST 11
JNEQ L412
!       x.a := y.val MOD 10000H; x.b := y.val DIV 10000H MOD 10000H (*len*)
LINE 533
LDLW 20
NCHECK 533
LDNW 60
CONST 65536
MOD
LDLW 12
STNW 20
LDLW 20
NCHECK 533
LDNW 60
CONST 65536
DIV
CONST 65536
MOD
LDLW 12
STNW 24
LABEL L412
!     IF (y.lev > 0) & (y.lev # curlev) & (y.class # B.Const) THEN S.Mark("not accessible ") END
LINE 535
LDLW 20
NCHECK 535
LDNW 8
JLEQZ L416
LDLW 20
NCHECK 535
LDNW 8
LDLW 24
JEQ L416
LDLW 20
NCHECK 535
LOADC
CONST 1
JEQ L416
CONST 16
GLOBAL OMSPG.%28
GLOBAL OMSPS.Mark
CALL 2
LABEL L416
RETURN
END

PROC OMSPG.Field 0 4 0x00500001
!   PROCEDURE Field*(VAR x: Item; y: B.Object);   (* x := x.y *)
LINE 540
!     IF x.mode = B.Var THEN
LINE 542
LDLW 12
LDNW 8
CONST 2
JNEQ L421
!       IF x.c >= 0 THEN x.a := x.a + y.val
LINE 543
LDLW 12
LDNW 28
JLTZ L424
LDLW 12
LDNW 20
LDLW 20
NCHECK 543
LDNW 60
PLUS
LDLW 12
STNW 20
RETURN
LABEL L424
!       ELSE loadAdr(x, 0FFH); x.mode := RegI; x.a := y.val
LINE 544
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
CONST 11
LDLW 12
STNW 8
LDLW 20
NCHECK 544
LDNW 60
LDLW 12
STNW 20
RETURN
LABEL L421
!     ELSIF x.mode = RegI THEN INC(x.a, y.val)
LINE 546
LDLW 12
LDNW 8
CONST 11
JNEQ L426
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 546
LDNW 60
PLUS
SWAP
STOREW
RETURN
LABEL L426
!     ELSIF x.mode = B.Par THEN INC(x.b, y.val)
LINE 547
LDLW 12
LDNW 8
CONST 3
JNEQ L428
LDLW 12
CONST 24
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 547
LDNW 60
PLUS
SWAP
STOREW
LABEL L428
RETURN
END

PROC OMSPG.Index 48 9 0x00500621
!   PROCEDURE Index*(VAR x, y: Item);   (* x := x[y] *)
LINE 551
!     IF x.type.form = B.String THEN s := 1; lim := x.b
LINE 554
LDLW 12
LDNW 12
NCHECK 554
LOADW
CONST 11
JNEQ L431
CONST 1
STLW -4
LDLW 12
LDNW 24
STLW -8
JUMP L429
LABEL L431
!     ELSE s := x.type.base.size; lim := x.type.len END;
LINE 555
LDLW 12
LDNW 12
NCHECK 555
LDNW 28
NCHECK 555
LDNW 32
STLW -4
LDLW 12
LDNW 12
NCHECK 555
LDNW 16
STLW -8
LABEL L429
!     IF s = 0 THEN S.Mark("Invalid array item size")
LINE 556
LDLW -4
JNEQZ L480
CONST 24
GLOBAL OMSPG.%29
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L480
!       IF (y.mode = B.Const) & ((traps[1] = NIL) OR (lim >= 0)) THEN
LINE 558
LDLW 20
LDNW 8
CONST 1
JNEQ L460
GLOBAL OMSPG.traps
LDNW 4
JEQZ L459
LDLW -8
JLTZ L460
LABEL L459
!         IF (y.a < 0) OR (lim >= 0) & (y.a >= lim) THEN S.Mark("bad index") END ;
LINE 559
LDLW 20
LDNW 20
JLTZ L462
LDLW -8
JLTZ L463
LDLW 20
LDNW 20
LDLW -8
JLT L463
LABEL L462
CONST 10
GLOBAL OMSPG.%30
GLOBAL OMSPS.Mark
CALL 2
LABEL L463
!         IF (x.type.form # B.String) & ((x.mode # B.Var) OR (x.c >= 0) OR (y.a = 0)) THEN
LINE 560
LDLW 12
LDNW 12
NCHECK 560
LOADW
CONST 11
JEQ L468
LDLW 12
LDNW 8
CONST 2
JNEQ L467
LDLW 12
LDNW 28
JGEQZ L467
LDLW 20
LDNW 20
JNEQZ L468
LABEL L467
!           IF x.mode IN {B.Var, RegI} THEN INC(x.a, y.a * s)
LINE 561
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 561
LSL
CONST 2052
BITAND
JEQZ L471
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
LABEL L471
!           ELSIF x.mode = B.Par THEN x.b := y.a * s + x.b
LINE 562
LDLW 12
LDNW 8
CONST 3
JNEQ L458
LDLW 20
LDNW 20
LDLW -4
TIMES
LDLW 12
LDNW 24
PLUS
LDLW 12
STNW 24
RETURN
LABEL L468
!         ELSE loadAdr(x, 0FFH) (*x.am := A.Immediate; x.ofs := A.C16; x.reg := 0; rh.reg := AllocR(); A.PutDO(mcode, A.MOV, x, rh, A.Word);
LINE 564
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
RETURN
LABEL L460
!         IF traps[1] # NIL THEN  (*check array bounds*)
LINE 568
GLOBAL OMSPG.traps
LDNW 4
JEQZ L436
!           IF lim >= 0 THEN t.mode := B.Const; t.type := B.intType; t.a := lim; PutDO(A.CMP, t, y)
LINE 569
LDLW -8
JLTZ L444
CONST 1
STLW -36
LDGW OMSPB.intType
STLW -32
LDLW -8
STLW -24
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
JUMP L437
LABEL L444
!           ELSE (*open array*) t := x; t.type := B.intType;
LINE 570
LOCAL -44
LDLW 12
CONST 36
FIXCOPY
LDGW OMSPB.intType
STLW -32
!             IF x.mode IN {B.Var, B.Par} THEN t.mode := B.Var; INC(t.a, WordSize)
LINE 571
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 571
LSL
CONST 12
BITAND
JEQZ L440
CONST 2
STLW -36
LDLW -24
CONST 2
PLUS
STLW -24
JUMP L438
LABEL L440
!             ELSIF x.mode IN {Reg, RegI} THEN t.mode := Reg; INC(t.reg)
LINE 572
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 572
LSL
CONST 3072
BITAND
JEQZ L442
CONST 10
STLW -36
LDLC -44
INC
STLC -44
JUMP L438
LABEL L442
!             ELSE S.Mark("error in Index")
LINE 573
CONST 15
GLOBAL OMSPG.%31
GLOBAL OMSPS.Mark
CALL 2
LABEL L438
!             END; PutDO(A.CMP, t, y)
LINE 574
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LABEL L437
!           Trap(A.C, 1) (*MSP430 inverts the carry with SUB and CMP instructions*)
LINE 576
CONST 1
CONST 3
GLOBAL OMSPG.Trap
CALL 2
LABEL L436
!         IF s # 1 THEN t.mode := B.Const; t.type := B.intType; t.a := s; PutDO(A.MUL, t, y) END;
LINE 578
LDLW -4
CONST 1
JEQ L447
CONST 1
STLW -36
LDGW OMSPB.intType
STLW -32
LDLW -4
STLW -24
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 0
GLOBAL OMSPG.PutDO
CALL 5
LABEL L447
!         IF (x.mode = B.Var) OR (x.type.form = B.String) THEN load(y, 0FFH); y.type := B.intType; typ := x.type;
LINE 579
LDLW 12
LDNW 8
CONST 2
JEQ L449
LDLW 12
LDNW 12
NCHECK 579
LOADW
CONST 11
JNEQ L450
LABEL L449
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
STLW -48
!           IF x.c > 0 THEN A.PutDO(mcode, A.ADD, sp, y, A.Word); INC(x.a, frame)
LINE 580
LDLW 12
LDNW 28
JLEQZ L453
CONST 0
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
GLOBAL OMSPG.sp
CONST 5
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDGW OMSPG.frame
PLUS
SWAP
STOREW
JUMP L451
LABEL L453
!           ELSE Adr(x); PutDO(A.ADD, x, y); x.a := 0
LINE 581
LDLW 16
LDLW 12
GLOBAL OMSPG.Adr
CALL 2
LDLW 24
LDLW 20
LDLW 16
LDLW 12
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
CONST 0
LDLW 12
STNW 20
LABEL L451
!           free(x); x.reg := y.reg; x.mode := RegI; x.tmp := TRUE; x.type := typ
LINE 583
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
CONST 33
STIC
LDLW -48
LDLW 12
STNW 12
RETURN
LABEL L450
!         ELSIF x.mode = B.Par THEN load(y, 0FFH); t.mode := B.Var; 
LINE 584
LDLW 12
LDNW 8
CONST 3
JNEQ L456
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
CONST 2
STLW -36
!           t.c := x.c; t.a := x.a; t.tmp := FALSE; t.obj := x.obj; t.type := B.intType; PutDO(A.ADD, t, y); free(t);
LINE 585
LDLW 12
LDNW 28
STLW -16
LDLW 12
LDNW 20
STLW -24
CONST 0
STLC -11
LDLW 12
LDNW 16
STLW -28
LDGW OMSPB.intType
STLW -32
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
GLOBAL OMSPG.Item
LOCAL -44
GLOBAL OMSPG.free
CALL 2
!           free(x); x.mode := RegI; x.reg := y.reg; x.a := x.b; x.tmp := TRUE
LINE 586
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
CONST 33
STIC
RETURN
LABEL L456
!         ELSIF x.mode = RegI THEN x.mode := Reg; t := x; t.type := B.intType; PutDO( A.ADD, t, y);
LINE 587
LDLW 12
LDNW 8
CONST 11
JNEQ L458
CONST 10
LDLW 12
STNW 8
LOCAL -44
LDLW 12
CONST 36
FIXCOPY
LDGW OMSPB.intType
STLW -32
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
!           free(x); x.mode := RegI; x.reg := y.reg; x.tmp := TRUE
LINE 588
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
CONST 1
LDLW 12
CONST 33
STIC
LABEL L458
RETURN
END

PROC OMSPG.DeRef 0 4 0x00100001
!   PROCEDURE DeRef*(VAR x: Item);
LINE 594
!     IF (x.mode IN {B.Var, B.Par, RegI}) THEN load(x, 0FFH); NilCheck(x.reg); x.mode := RegI; x.a := 0
LINE 596
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 596
LSL
CONST 2060
BITAND
JEQZ L483
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
JUMP L481
LABEL L483
!     ELSIF x.mode = Reg THEN x.mode := RegI; x.a := 0
LINE 597
LDLW 12
LDNW 8
CONST 10
JNEQ L485
CONST 11
LDLW 12
STNW 8
CONST 0
LDLW 12
STNW 20
JUMP L481
LABEL L485
!     ELSIF x.type.form = B.Pointer THEN x.mode := Absol; x.b := 0
LINE 598
LDLW 12
LDNW 12
NCHECK 598
LOADW
CONST 7
JNEQ L487
CONST 13
LDLW 12
STNW 8
CONST 0
LDLW 12
STNW 24
JUMP L481
LABEL L487
!     ELSE S.Mark("bad mode in DeRef") 
LINE 599
CONST 18
GLOBAL OMSPG.%32
GLOBAL OMSPS.Mark
CALL 2
LABEL L481
!     END; x.b := 0
LINE 600
CONST 0
LDLW 12
STNW 24
RETURN
END

PROC OMSPG.Q 0 4 0x00100001
!   PROCEDURE Q(T: B.Type);
LINE 603
!     IF T.base # NIL THEN
LINE 605
LDLW 12
NCHECK 605
LDNW 28
JEQZ L490
!       Q(T.base); tddata[tdx] := T.base.typobj.val;
LINE 606
LDLW 12
NCHECK 606
LDNW 28
GLOBAL OMSPG.Q
CALL 1
LDLW 12
NCHECK 606
LDNW 28
NCHECK 606
LDNW 24
NCHECK 606
LDNW 60
GLOBAL OMSPG.tddata
LDGW OMSPG.tdx
CONST 160
BOUND 606
STIW
!       T.base.typobj.val := tdx*WordSize; INC(tdx)
LINE 607
LDGW OMSPG.tdx
CONST 2
TIMES
LDLW 12
NCHECK 607
LDNW 28
NCHECK 607
LDNW 24
NCHECK 607
STNW 60
LDGW OMSPG.tdx
INC
STGW OMSPG.tdx
LABEL L490
RETURN
END

PROC OMSPG.BuildTD 8 4 0x00100001
!   PROCEDURE BuildTD*(T: B.Type);
LINE 611
!   BEGIN s := T.size;
LINE 613
LDLW 12
NCHECK 613
LDNW 32
STLW -8
!     T.len := WordSize*tdx (*len used as address*); tddata[tdx] := s; INC(tdx);
LINE 614
LDGW OMSPG.tdx
CONST 2
TIMES
LDLW 12
NCHECK 614
STNW 16
LDLW -8
GLOBAL OMSPG.tddata
LDGW OMSPG.tdx
CONST 160
BOUND 614
STIW
LDGW OMSPG.tdx
INC
STGW OMSPG.tdx
!     k := T.nofpar;   (*extension level!*)
LINE 615
LDLW 12
NCHECK 615
LDNW 12
STLW -4
!     IF k > 3 THEN S.Mark("ext level too large")
LINE 616
LDLW -4
CONST 3
JLEQ L496
CONST 20
GLOBAL OMSPG.%33
GLOBAL OMSPS.Mark
CALL 2
JUMP L494
LABEL L496
!     ELSE Q(T);
LINE 617
LDLW 12
GLOBAL OMSPG.Q
CALL 1
LABEL L492
!       WHILE k < 3 DO tddata[tdx] := -1; INC(tdx); INC(k) END
LINE 618
LDLW -4
CONST 3
JGEQ L494
CONST -1
GLOBAL OMSPG.tddata
LDGW OMSPG.tdx
CONST 160
BOUND 618
STIW
LDGW OMSPG.tdx
INC
STGW OMSPG.tdx
INCL -4
JUMP L492
LABEL L494
!     IF tdx >= maxTD THEN S.Mark("too many record types"); tdx := 0 END
LINE 620
LDGW OMSPG.tdx
CONST 160
JLT L499
CONST 22
GLOBAL OMSPG.%34
GLOBAL OMSPS.Mark
CALL 2
CONST 0
STGW OMSPG.tdx
LABEL L499
RETURN
END

PROC OMSPG.TypeTest 108 6 OMSPG.TypeTest.%map
!   PROCEDURE TypeTest*(VAR x: Item; T: B.Type; varpar, isguard: BOOLEAN);
LINE 623
!     IF TypeChecked() OR ~isguard THEN
LINE 626
GLOBAL OMSPG.TypeChecked
CALLW 0
JNEQZ L501
LDLC 28
JNEQZ L502
LABEL L501
!       IF T = NIL THEN free(x); SetCC(x, A.AL)
LINE 627
LDLW 20
JNEQZ L516
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
LABEL L516
!       ELSE rh.reg := AllocR(); (*fetch tag into RH*)
LINE 628
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!         IF varpar THEN t := x;
LINE 629
LDLC 24
JEQZ L506
LOCAL -36
LDLW 12
CONST 36
FIXCOPY
!           IF t.mode IN {B.Var, B.Par} THEN t.mode := B.Var; INC(t.a, WordSize)
LINE 630
CONST 1
LDLW -28
CONST 32
BOUND 630
LSL
CONST 12
BITAND
JEQZ L509
CONST 2
STLW -28
LDLW -16
CONST 2
PLUS
STLW -16
JUMP L507
LABEL L509
!           ELSIF t.mode IN {Reg, RegI} THEN t.mode := Reg; INC(t.reg)
LINE 631
CONST 1
LDLW -28
CONST 32
BOUND 631
LSL
CONST 3072
BITAND
JEQZ L511
CONST 10
STLW -28
LDLC -36
INC
STLC -36
JUMP L507
LABEL L511
!           ELSE S.Mark("error in TypeTest")
LINE 632
CONST 18
GLOBAL OMSPG.%35
GLOBAL OMSPS.Mark
CALL 2
LABEL L507
!           END; PutDO(A.MOV, t, rh); free(x);
LINE 633
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -36
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
!           t := rh; t.mode := RegI; t.a := T.nofpar*2; pt := t; pt.mode := Reg; pt.rdo := FALSE; PutDO(A.MOV, t, pt);
LINE 634
LOCAL -36
GLOBAL OMSPG.rh
CONST 36
FIXCOPY
CONST 11
STLW -28
LDLW 20
NCHECK 634
LDNW 12
CONST 2
TIMES
STLW -16
LOCAL -72
LOCAL -36
CONST 36
FIXCOPY
CONST 10
STLW -64
CONST 0
STLC -40
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.Item
LOCAL -36
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
!           MakeTypTagAdr(tt, T); (*tt.reg := loadTypTagAdr(T, 0FFH) (*tag of T*); tt.mode := Reg;*) PutDO(A.CMP, tt, pt);
LINE 635
LDLW 20
GLOBAL OMSPG.Item
LOCAL -108
GLOBAL OMSPG.MakeTypTagAdr
CALL 3
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.Item
LOCAL -108
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
!           freeR(pt.reg); free(tt);
LINE 636
LDLC -72
GLOBAL OMSPG.freeR
CALL 1
GLOBAL OMSPG.Item
LOCAL -108
GLOBAL OMSPG.free
CALL 2
!           IF isguard THEN Trap(A.NE, 2) ELSE SetCC(x, A.EQ) END;
LINE 637
LDLC 28
JEQZ L514
CONST 2
CONST 0
GLOBAL OMSPG.Trap
CALL 2
RETURN
LABEL L514
CONST 1
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
LABEL L506
!         ELSE S.Mark("pointer not allowed")
LINE 638
CONST 20
GLOBAL OMSPG.%36
GLOBAL OMSPS.Mark
CALL 2
LABEL L502
RETURN
END

PROC OMSPG.SetVector 0 4 0x00200001
!   PROCEDURE SetVector*(n: BYTE; VAR h: B.Object);
LINE 644
!   BEGIN IF vector[n] # 0FFFFH THEN S.Mark("vect mult def")
LINE 645
GLOBAL OMSPG.vector
LDLC 12
CONST 32
BOUND 645
LDIW
CONST 65535
JEQ L520
CONST 14
GLOBAL OMSPG.%37
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L520
!     ELSE vector[n] := h.usedat; h.usedat := n+100H END
LINE 646
LDLW 16
LOADW
NCHECK 646
LDNW 12
GLOBAL OMSPG.vector
LDLC 12
CONST 32
BOUND 646
STIW
LDLC 12
CONST 256
PLUS
LDLW 16
LOADW
NCHECK 646
STNW 12
RETURN
END

PROC OMSPG.Not 4 3 0x00100001
!   PROCEDURE Not*(VAR x: Item);   (* x := ~x *)
LINE 651
!     IF x.mode # Cond THEN loadCond(x) END ;
LINE 654
LDLW 12
LDNW 8
CONST 12
JEQ L523
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L523
!     x.c := A.negated(x.c); t := x.a; x.a := x.b; x.b := t
LINE 655
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

PROC OMSPG.And1 0 5 0x00100001
!   PROCEDURE And1*(VAR x: Item);   (* x := x & *)
LINE 658
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 660
LDLW 12
LDNW 8
CONST 12
JEQ L526
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L526
!     A.PutJ(mcode, A.negated(x.c), x.a);
LINE 661
LDLW 12
LDNW 20
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
CONVNC
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!     x.a := mcode.pc-2; A.FixLink(mcode, x.b); x.b := 0
LINE 662
LDGW OMSPG.mcode
CONST 2
MINUS
LDLW 12
STNW 20
LDLW 12
LDNW 24
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixLink
CALL 3
CONST 0
LDLW 12
STNW 24
RETURN
END

PROC OMSPG.And2 0 5 0x00500001
!   PROCEDURE And2*(VAR x, y: Item);
LINE 665
!     IF y.mode # Cond THEN loadCond(y) END ;
LINE 667
LDLW 20
LDNW 8
CONST 12
JEQ L529
LDLW 24
LDLW 20
GLOBAL OMSPG.loadCond
CALL 2
LABEL L529
!     x.a := A.merged(mcode, y.a, x.a); x.b := y.b; x.c := y.c
LINE 668
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

PROC OMSPG.Or1 0 5 0x00100001
!   PROCEDURE Or1*(VAR x: Item);   (* x := x OR *)
LINE 671
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 673
LDLW 12
LDNW 8
CONST 12
JEQ L532
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L532
!     A.PutJ(mcode, x.c, x.b);
LINE 674
LDLW 12
LDNW 24
LDLW 12
LDNW 28
CONVNC
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!     x.b := mcode.pc-2; A.FixLink(mcode, x.a); x.a := 0
LINE 675
LDGW OMSPG.mcode
CONST 2
MINUS
LDLW 12
STNW 24
LDLW 12
LDNW 20
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixLink
CALL 3
CONST 0
LDLW 12
STNW 20
RETURN
END

PROC OMSPG.Or2 0 5 0x00500001
!   PROCEDURE Or2*(VAR x, y: Item);
LINE 678
!     IF y.mode # Cond THEN loadCond(y) END ;
LINE 680
LDLW 20
LDNW 8
CONST 12
JEQ L535
LDLW 24
LDLW 20
GLOBAL OMSPG.loadCond
CALL 2
LABEL L535
!     x.a := y.a; x.b := A.merged(mcode, y.b, x.b); x.c := y.c
LINE 681
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

PROC OMSPG.Neg 36 6 0x00101801
!   PROCEDURE Neg*(VAR x: Item);   (* x := -x *)
LINE 686
!     IF x.type.form = B.Int THEN
LINE 689
LDLW 12
LDNW 12
NCHECK 689
LOADW
CONST 4
JNEQ L541
!       IF x.mode = B.Const THEN x.a := -x.a
LINE 690
LDLW 12
LDNW 8
CONST 1
JNEQ L544
LDLW 12
LDNW 20
UMINUS
LDLW 12
STNW 20
RETURN
LABEL L544
!       ELSE PutSO(A.NEG, x)
LINE 691
LDLW 16
LDLW 12
CONST 1
GLOBAL OMSPG.PutSO
CALL 3
RETURN
LABEL L541
!       IF x.mode = B.Const THEN x.a := -x.a-1 
LINE 694
LDLW 12
LDNW 8
CONST 1
JNEQ L539
LDLW 12
LDNW 20
UMINUS
DEC
LDLW 12
STNW 20
RETURN
LABEL L539
!       ELSE t := cm1; PutDO(A.XOR, t, x)
LINE 695
LOCAL -36
GLOBAL OMSPG.cm1
CONST 36
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
CONST 14
GLOBAL OMSPG.PutDO
CALL 5
RETURN
END

PROC OMSPG.PrepCall 4 5 0x01d00001
!   PROCEDURE PrepCall*(VAR x: Item; VAR r, or: SET; VAR am: BOOLEAN);
LINE 700
!   BEGIN (*x.type.form = OM4B.Proc*) xr := -1; am := AllocUp;
LINE 702
CONST -1
STLW -4
LDGC OMSPG.AllocUp
LDLW 28
STOREC
!     IF x.mode > B.Par THEN load(x, 0FFH); xr := x.reg; EXCL(RIU, xr) END;
LINE 703
LDLW 12
LDNW 8
CONST 3
JLEQ L547
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
LDLW 12
LOADC
STLW -4
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLW -4
CONST 32
BOUND 703
LSL
BITNOT
BITAND
SWAP
STOREW
LABEL L547
!     r := RIU; or := x.type.ur*RIU; (*overwritten registers currently in use by the caller*)
LINE 704
LDGW OMSPG.RIU
LDLW 20
STOREW
LDLW 12
LDNW 12
NCHECK 704
LDNW 40
LDGW OMSPG.RIU
BITAND
LDLW 24
STOREW
!     SaveRegs(or); RIU := RIU - or;
LINE 705
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
!     IF xr >= 0 THEN SaveRegs({xr}) END;
LINE 706
LDLW -4
JLTZ L550
CONST 1
LDLW -4
CONST 32
BOUND 706
LSL
GLOBAL OMSPG.SaveRegs
CALL 1
LABEL L550
!     IF x.obj.type.leaf THEN SetAllocationMode(Register) END;
LINE 707
LDLW 12
LDNW 16
NCHECK 707
LDNW 24
NCHECK 707
CONST 36
LDIC
JEQZ L553
CONST 1
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
LABEL L553
!     PRU := PRU + (x.type.ur - or)
LINE 708
LDGW OMSPG.PRU
LDLW 12
LDNW 12
NCHECK 708
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
LINE 711
!   BEGIN par := typ.dsc; n := typ.nofpar; size := 0;
LINE 713
LDLW 12
NCHECK 713
LDNW 20
STLW -4
LDLW 12
NCHECK 713
LDNW 12
STLW -8
CONST 0
STLW -12
LABEL L554
!     WHILE n > 0 DO IF par.register = 0FFH THEN 
LINE 714
LDLW -8
JLEQZ L556
LDLW -4
NCHECK 714
CONST 2
LDIC
CONST 255
JNEQ L559
!         IF (par.type.form = B.Array) & (par.type.len < 0) OR (par.type.form = B.Record) THEN INC(size, 2*WordSize)
LINE 715
LDLW -4
NCHECK 715
LDNW 24
NCHECK 715
LOADW
CONST 12
JNEQ L563
LDLW -4
NCHECK 715
LDNW 24
NCHECK 715
LDNW 16
JLTZ L561
LABEL L563
LDLW -4
NCHECK 715
LDNW 24
NCHECK 715
LOADW
CONST 13
JNEQ L562
LABEL L561
LDLW -12
CONST 4
PLUS
STLW -12
JUMP L559
LABEL L562
!         ELSE INC(size, WordSize)
LINE 716
LDLW -12
CONST 2
PLUS
STLW -12
LABEL L559
!       par := par.next; DEC(n)
LINE 719
LDLW -4
NCHECK 719
LDNW 16
STLW -4
DECL -8
JUMP L554
LABEL L556
!     RETURN size
LINE 722
LDLW -12
RETURN
END

PROC OMSPG.Call 76 7 0x0010180d
!   PROCEDURE Call*(VAR x: Item; r, or: SET; am: BOOLEAN);
LINE 725
!   BEGIN (*x.type.form = B.Proc*) s := getParSize(x.type);
LINE 727
LDLW 12
LDNW 12
GLOBAL OMSPG.getParSize
CALLW 1
STLW -76
!     IF x.mode = B.Const THEN PutSO(A.CALL, x)
LINE 728
LDLW 12
LDNW 8
CONST 1
JNEQ L579
LDLW 16
LDLW 12
CONST 37
GLOBAL OMSPG.PutSO
CALL 3
JUMP L566
LABEL L579
!       IF x.mode <= B.Par THEN IF traps[5] # NIL THEN t := c0; PutDO(A.CMP, t, x); Trap(A.EQ, 5) END;
LINE 730
LDLW 12
LDNW 8
CONST 3
JGT L574
GLOBAL OMSPG.traps
LDNW 20
JEQZ L577
LOCAL -72
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -72
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 5
CONST 1
GLOBAL OMSPG.Trap
CALL 2
LABEL L577
!         PutSO(A.CALL, x); free(x)
LINE 731
LDLW 16
LDLW 12
CONST 37
GLOBAL OMSPG.PutSO
CALL 3
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
JUMP L566
LABEL L574
!       ELSE rh.reg := AllocR();
LINE 732
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!         IF s = 0 THEN PutSO(A.POP, rh); adjFrmOfs(-WordSize)
LINE 733
LDLW -76
JNEQZ L569
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
CONST 256
GLOBAL OMSPG.PutSO
CALL 3
CONST -2
GLOBAL OMSPG.adjFrmOfs
CALL 1
JUMP L567
LABEL L569
!         ELSE t := sp; t.mode := RegI; t.a := -x.type.size; PutDO(A.MOV, t, rh); INC(s, WordSize)
LINE 734
LOCAL -72
GLOBAL OMSPG.sp
CONST 36
FIXCOPY
CONST 11
STLW -64
LDLW 12
LDNW 12
NCHECK 734
LDNW 32
UMINUS
STLW -52
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -72
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
LDLW -76
CONST 2
PLUS
STLW -76
LABEL L567
!         IF traps[5] # NIL THEN t := c0; PutDO(A.CMP, t, rh); Trap(A.EQ, 5) END;
LINE 736
GLOBAL OMSPG.traps
LDNW 20
JEQZ L572
LOCAL -72
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -72
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 5
CONST 1
GLOBAL OMSPG.Trap
CALL 2
LABEL L572
!         A.PutSO(mcode, A.CALL, rh, A.Word); freeR(rh.reg)
LINE 737
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
CONST 37
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
LDGC OMSPG.rh
GLOBAL OMSPG.freeR
CALL 1
LABEL L566
!     IF s # 0 THEN t := c0; t.a := s; rr := sp; PutDO(A.ADD, t, rr); adjFrmOfs(-s) END;
LINE 740
LDLW -76
JEQZ L582
LOCAL -72
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
LDLW -76
STLW -52
LOCAL -36
GLOBAL OMSPG.sp
CONST 36
FIXCOPY
GLOBAL OMSPG.Item
LOCAL -36
GLOBAL OMSPG.Item
LOCAL -72
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
LDLW -76
UMINUS
GLOBAL OMSPG.adjFrmOfs
CALL 1
LABEL L582
!     IF x.type.base.form = B.NoTyp THEN (*procedure*) RIU := VRS; SetAllocationMode(am)
LINE 741
LDLW 12
LDNW 12
NCHECK 741
LDNW 28
NCHECK 741
LOADW
CONST 9
JNEQ L588
LDGW OMSPG.VRS
STGW OMSPG.RIU
LDLC 28
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
JUMP L584
LABEL L588
!       x.tmp := TRUE; x.mode := Reg; resultRegister(rr); x.reg := rr.reg; x.am := A.Register;
LINE 743
CONST 1
LDLW 12
CONST 33
STIC
CONST 10
LDLW 12
STNW 8
GLOBAL OMSPG.Item
LOCAL -36
GLOBAL OMSPG.resultRegister
CALL 2
LDLC -36
LDLW 12
STOREC
CONST 0
LDLW 12
CONST 1
STIC
!       RIU := r; SetAllocationMode(am); 
LINE 744
LDLW 20
STGW OMSPG.RIU
LDLC 28
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
!       IF rr.reg IN RIU THEN x.tmp := FALSE; load(x, 0FFH) (*move result in a free register*)
LINE 745
LDGW OMSPG.RIU
CONST 1
LDLC -36
CONST 32
BOUND 745
LSL
BITAND
JEQZ L586
CONST 0
LDLW 12
CONST 33
STIC
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
JUMP L584
LABEL L586
!       ELSE INCL(RIU, rr.reg)
LINE 746
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLC -36
CONST 32
BOUND 746
LSL
BITOR
SWAP
STOREW
LABEL L584
!     RestoreRegs(or); RIU := RIU + or
LINE 749
LDLW 24
GLOBAL OMSPG.RestoreRegs
CALL 1
LDGW OMSPG.RIU
LDLW 24
BITOR
STGW OMSPG.RIU
RETURN
END

PROC OMSPG.AddOp 0 6 0x00a00001
!   PROCEDURE AddOp*(op: INTEGER; VAR x, y: Item);   (* x := x +- y *)
LINE 752
!     IF op = S.plus THEN
LINE 754
LDLW 12
CONST 6
JNEQ L600
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := x.a + y.a
LINE 755
LDLW 16
LDNW 8
CONST 1
JNEQ L603
LDLW 24
LDNW 8
CONST 1
JNEQ L603
LDLW 16
LDNW 20
LDLW 24
LDNW 20
PLUS
LDLW 16
STNW 20
RETURN
LABEL L603
!       ELSIF y.mode = B.Const THEN
LINE 756
LDLW 24
LDNW 8
CONST 1
JNEQ L606
!         IF y.a # 0 THEN PutDO(A.ADD, y, x) END
LINE 757
LDLW 24
LDNW 20
JEQZ L590
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L606
!       ELSE PutDO(A.ADD, y, x); free(y)
LINE 758
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
LABEL L600
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := x.a - y.a
LINE 761
LDLW 16
LDNW 8
CONST 1
JNEQ L592
LDLW 24
LDNW 8
CONST 1
JNEQ L592
LDLW 16
LDNW 20
LDLW 24
LDNW 20
MINUS
LDLW 16
STNW 20
RETURN
LABEL L592
!       ELSIF y.mode = B.Const THEN
LINE 762
LDLW 24
LDNW 8
CONST 1
JNEQ L595
!         IF y.a # 0 THEN PutDO(A.SUB, y, x) END
LINE 763
LDLW 24
LDNW 20
JEQZ L590
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L595
!       ELSE PutDO(A.SUB, y, x); free(y)
LINE 764
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
LABEL L590
RETURN
END

PROC OMSPG.MulOp 156 9 OMSPG.MulOp.%map
!   PROCEDURE MulOp*(VAR x, y: Item);   (* x := x * y *)
LINE 769
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL;
LINE 771
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := x.a * y.a
LINE 772
LDLW 12
LDNW 8
CONST 1
JNEQ L615
LDLW 20
LDNW 8
CONST 1
JNEQ L615
LDLW 12
LDNW 20
LDLW 20
LDNW 20
TIMES
LDLW 12
STNW 20
RETURN
LABEL L615
!     ELSIF (y.mode = B.Const)  & (y.a >= 2) THEN load(x, 0FFH); t.ofs := y.a; A.PutDO(mcode, A.MUL, t, x, A.Word)
LINE 773
LDLW 20
LDNW 8
CONST 1
JNEQ L618
LDLW 20
LDNW 20
CONST 2
JLT L618
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
LDLW 20
LDNW 20
STLW -32
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
CONST 0
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L618
!     ELSIF (x.mode = B.Const) & (x.a >= 2) THEN load(y, 0FFH); t.ofs := x.a; A.PutDO(mcode, A.MUL, t, y, A.Word);
LINE 774
LDLW 12
LDNW 8
CONST 1
JNEQ L621
LDLW 12
LDNW 20
CONST 2
JLT L621
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
LDLW 12
LDNW 20
STLW -32
CONST 0
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -36
CONST 0
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!       x.mode := Reg; x.reg := y.reg; x.am := A.Register; x.ofs := 0; x.tmp := TRUE
LINE 775
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
CONST 33
STIC
RETURN
LABEL L621
!       IF arith[0] = NIL THEN S.Mark("import Arith.mul16 function") 
LINE 777
LDGW OMSPG.arith
JNEQZ L613
CONST 28
GLOBAL OMSPG.%38
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L613
!       ELSE MakeItem(p, arith[0], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); Call(p, r, or, pau);
LINE 778
CONST 0
LDGW OMSPG.arith
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.MakeItem
CALL 4
LOCAL -108
LDLW 12
CONST 36
FIXCOPY
LOCAL -144
LDLW 20
CONST 36
FIXCOPY
LOCAL -153
LOCAL -152
LOCAL -148
GLOBAL OMSPG.Item
LOCAL -72
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
LDLC -153
ALIGNC
LDLW -152
LDLW -148
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.Call
CALL 5
!         free(x0); free(y0); x.reg := p.reg;
LINE 779
GLOBAL OMSPG.Item
LOCAL -108
GLOBAL OMSPG.free
CALL 2
GLOBAL OMSPG.Item
LOCAL -144
GLOBAL OMSPG.free
CALL 2
LDLC -72
LDLW 12
STOREC
RETURN
END

PROC OMSPG.DivOp 156 9 OMSPG.DivOp.%map
!   PROCEDURE DivOp*(op: INTEGER; VAR x, y: Item);   (* x := x op y *)
LINE 784
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL;
LINE 786
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
!     IF op = S.div THEN
LINE 787
LDLW 12
CONST 3
JNEQ L641
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 788
LDLW 16
LDNW 8
CONST 1
JNEQ L650
LDLW 24
LDNW 8
CONST 1
JNEQ L650
!         IF y.a > 0 THEN x.a := x.a DIV y.a ELSE S.Mark("bad divisor") END
LINE 789
LDLW 24
LDNW 20
JLEQZ L653
LDLW 16
LDNW 20
LDLW 24
LDNW 20
ZCHECK 789
DIV
LDLW 16
STNW 20
RETURN
LABEL L653
CONST 12
GLOBAL OMSPG.%39
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L650
!       ELSIF (y.mode = B.Const) & (y.a >= 2) THEN load(x, 0FFH); t.ofs := y.a; A.PutDO(mcode, A.DIv, t, x, A.Word);
LINE 790
LDLW 24
LDNW 8
CONST 1
JNEQ L656
LDLW 24
LDNW 20
CONST 2
JLT L656
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LDLW 24
LDNW 20
STLW -32
CONST 0
LDLW 20
LDLW 16
GLOBAL OMSPG.Item
LOCAL -36
CONST 2
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!         x.mode := Reg; x.am := A.Register; x.ofs := 0
LINE 791
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
LABEL L656
!       ELSE IF arith[1] = NIL THEN S.Mark("import Arith.divmod16 procedure")
LINE 792
GLOBAL OMSPG.arith
LDNW 4
JNEQZ L648
CONST 32
GLOBAL OMSPG.%40
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L648
!         ELSE IF traps[6] # NIL THEN t := c0; PutDO(A.CMP, t, y); Trap(A.NE, 6); free(y) END;
LINE 793
GLOBAL OMSPG.traps
LDNW 24
JEQZ L646
LOCAL -36
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -36
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
LABEL L646
!           MakeItem(p, arith[1], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); t := c0; load(t, 7); Call(p, r, or, pau);
LINE 794
CONST 0
GLOBAL OMSPG.arith
LDNW 4
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.MakeItem
CALL 4
LOCAL -108
LDLW 16
CONST 36
FIXCOPY
LOCAL -144
LDLW 24
CONST 36
FIXCOPY
LOCAL -153
LOCAL -152
LOCAL -148
GLOBAL OMSPG.Item
LOCAL -72
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
LOCAL -36
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
CONST 7
GLOBAL OMSPG.Item
LOCAL -36
GLOBAL OMSPG.load
CALL 3
LDLC -153
ALIGNC
LDLW -152
LDLW -148
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.Call
CALL 5
!           free(x0); free(y0); x.reg := p.reg;
LINE 795
GLOBAL OMSPG.Item
LOCAL -108
GLOBAL OMSPG.free
CALL 2
GLOBAL OMSPG.Item
LOCAL -144
GLOBAL OMSPG.free
CALL 2
LDLC -72
LDLW 16
STOREC
RETURN
LABEL L641
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 799
LDLW 16
LDNW 8
CONST 1
JNEQ L632
LDLW 24
LDNW 8
CONST 1
JNEQ L632
!         IF y.a > 0 THEN x.a := x.a MOD y.a ELSE S.Mark("bad modulus") END
LINE 800
LDLW 24
LDNW 20
JLEQZ L635
LDLW 16
LDNW 20
LDLW 24
LDNW 20
ZCHECK 800
MOD
LDLW 16
STNW 20
RETURN
LABEL L635
CONST 12
GLOBAL OMSPG.%41
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L632
!       ELSIF (y.mode = B.Const) & (y.a >= 2) THEN load(x, 0FFH); t.ofs := y.a; A.PutDO(mcode, A.MOd, t, x, A.Word);
LINE 801
LDLW 24
LDNW 8
CONST 1
JNEQ L638
LDLW 24
LDNW 20
CONST 2
JLT L638
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LDLW 24
LDNW 20
STLW -32
CONST 0
LDLW 20
LDLW 16
GLOBAL OMSPG.Item
LOCAL -36
CONST 3
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!         x.mode := Reg; x.am := A.Register; x.ofs := 0
LINE 802
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
LABEL L638
!       ELSE IF arith[1] = NIL THEN S.Mark("import Arith.divmod procedure")
LINE 803
GLOBAL OMSPG.arith
LDNW 4
JNEQZ L630
CONST 30
GLOBAL OMSPG.%42
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L630
!         ELSE IF traps[6] # NIL THEN t := c0; PutDO(A.CMP, t, y); Trap(A.NE, 6); free(y) END;
LINE 804
GLOBAL OMSPG.traps
LDNW 24
JEQZ L628
LOCAL -36
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -36
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
LABEL L628
!             MakeItem(p, arith[1], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); t := c1; load(t, 7); Call(p, r, or, pau); x.reg := p.reg;
LINE 805
CONST 0
GLOBAL OMSPG.arith
LDNW 4
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.MakeItem
CALL 4
LOCAL -108
LDLW 16
CONST 36
FIXCOPY
LOCAL -144
LDLW 24
CONST 36
FIXCOPY
LOCAL -153
LOCAL -152
LOCAL -148
GLOBAL OMSPG.Item
LOCAL -72
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
LOCAL -36
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
CONST 7
GLOBAL OMSPG.Item
LOCAL -36
GLOBAL OMSPG.load
CALL 3
LDLC -153
ALIGNC
LDLW -152
LDLW -148
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.Call
CALL 5
LDLC -72
LDLW 16
STOREC
!           free(x0); free(y0); x.reg := p.reg;
LINE 806
GLOBAL OMSPG.Item
LOCAL -108
GLOBAL OMSPG.free
CALL 2
GLOBAL OMSPG.Item
LOCAL -144
GLOBAL OMSPG.free
CALL 2
LDLC -72
LDLW 16
STOREC
RETURN
END

PROC OMSPG.shift 52 6 0x00a00301
!   PROCEDURE shift(op: INTEGER; VAR x, y: Item); (* x := op(x, y)*)
LINE 813
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := LSL(x.a, y.a) 
LINE 816
LDLW 16
LDNW 8
CONST 1
JNEQ L660
LDLW 24
LDNW 8
CONST 1
JNEQ L660
LDLW 16
LDNW 20
LDLW 24
LDNW 20
LSL
LDLW 16
STNW 20
RETURN
LABEL L660
!     ELSIF (y.mode = B.Const) & (y.a <= 4) THEN PutSO(A.NOP0, x); FOR i := 1 TO y.a DO PutSO(op, x) END
LINE 817
LDLW 24
LDNW 8
CONST 1
JNEQ L663
LDLW 24
LDNW 20
CONST 4
JGT L663
LDLW 20
LDLW 16
CONST 259
GLOBAL OMSPG.PutSO
CALL 3
LDLW 24
LDNW 20
STLW -52
CONST 1
STLW -4
LABEL L664
LDLW -4
LDLW -52
JGT L658
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.PutSO
CALL 3
INCL -4
JUMP L664
LABEL L663
!     ELSE PutSO(A.NOP0, x); t := c1; PutDO(A.ADD, t, y);
LINE 818
LDLW 20
LDLW 16
CONST 259
GLOBAL OMSPG.PutSO
CALL 3
LOCAL -48
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -48
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
!       pb := mcode.pc; PutDO(A.SUB, t, y); pf := mcode.pc; A.PutJ(mcode, A.EQ, 0);
LINE 819
LDGW OMSPG.mcode
STLW -8
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -48
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
LDGW OMSPG.mcode
STLW -12
CONST 0
CONST 1
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!       PutSO(op, x); A.PutJ(mcode, A.AL, pb - mcode.pc - 2); A.fix(mcode, pf, mcode.pc - pf - 2);
LINE 820
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
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LDGW OMSPG.mcode
LDLW -12
MINUS
CONST 2
MINUS
LDLW -12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.fix
CALL 4
!       free(y)
LINE 821
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LABEL L658
RETURN
END

PROC OMSPG.Rla 0 6 0x00500001
!   PROCEDURE Rla*(VAR x, y: Item); (* x := RLA(x, y)*)
LINE 825
!   BEGIN shift(A.RLA, x, y)
LINE 826
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
LINE 829
!   BEGIN shift(A.RRA, x, y)
LINE 830
LDLW 24
LDLW 20
LDLW 16
LDLW 12
CONST 34
GLOBAL OMSPG.shift
CALL 5
RETURN
END

PROC OMSPG.StringOp 520 6 0x00a00001
!   PROCEDURE StringOp*(op: INTEGER; VAR x, y: Item);   (* x := x op y *)
LINE 834
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 837
LDLW 16
LDNW 8
CONST 1
JNEQ L669
LDLW 24
LDNW 8
CONST 1
JNEQ L669
!       IF y.type.form = B.String THEN stringPop(y, ys) ELSE ys[0] := CHR(y.a); ys[1] := 0X END; stringPop(x, xs);
LINE 838
LDLW 24
LDNW 12
NCHECK 838
LOADW
CONST 11
JNEQ L672
CONST 256
LOCAL -512
LDLW 24
GLOBAL OMSPG.stringPop
CALL 3
JUMP L670
LABEL L672
LDLW 24
LDNW 20
STLC -512
CONST 0
STLC -511
LABEL L670
CONST 256
LOCAL -256
LDLW 16
GLOBAL OMSPG.stringPop
CALL 3
!       ix := 0; WHILE xs[ix] # 0X DO INC(ix) END;
LINE 839
CONST 0
STLW -516
LABEL L673
LOCAL -256
LDLW -516
CONST 256
BOUND 839
LDIC
JEQZ L675
INCL -516
JUMP L673
LABEL L675
!       iy := -1; REPEAT INC(iy); xs[ix] := ys[iy]; INC(ix) UNTIL ys[iy] = 0X; (* xs = xs + ys *)
LINE 840
CONST -1
STLW -520
LABEL L676
INCL -520
LOCAL -512
LDLW -520
CONST 256
BOUND 840
LDIC
LOCAL -256
LDLW -516
CONST 256
BOUND 840
STIC
INCL -516
LOCAL -512
LDLW -520
CONST 256
BOUND 840
LDIC
JNEQZ L676
!       stringPut(x, xs, ix)
LINE 841
LDLW -516
CONST 256
LOCAL -256
LDLW 20
LDLW 16
GLOBAL OMSPG.stringPut
CALL 5
RETURN
LABEL L669
!     ELSE S.Mark("const expected")
LINE 842
CONST 15
GLOBAL OMSPG.%43
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.Singleton 36 5 0x00101801
!   PROCEDURE Singleton*(VAR x: Item);  (* x := {x} *)
LINE 848
!   BEGIN y := x; x.mode := B.Const; x.a := 1; Rla(x, y)
LINE 850
LOCAL -36
LDLW 12
CONST 36
FIXCOPY
CONST 1
LDLW 12
STNW 8
CONST 1
LDLW 12
STNW 20
GLOBAL OMSPG.Item
LOCAL -36
LDLW 16
LDLW 12
GLOBAL OMSPG.Rla
CALL 4
RETURN
END

PROC OMSPG.Set 120 6 OMSPG.Set.%map
!   PROCEDURE Set*(VAR x, y: Item); (* x := {x .. y} *)
LINE 853
!     IF (x.mode = B.Const) & ( y.mode = B.Const) THEN
LINE 856
LDLW 12
LDNW 8
CONST 1
JNEQ L684
LDLW 20
LDNW 8
CONST 1
JNEQ L684
!       IF x.a <= y.a THEN x.a := ORD({x.a .. y.a}) ELSE x.a := 0 END
LINE 857
LDLW 12
LDNW 20
LDLW 20
LDNW 20
JGT L687
CONST -1
LDLW 12
LDNW 20
CONST 32
BOUND 857
LSL
CONST -2
LDLW 20
LDNW 20
CONST 32
BOUND 857
LSL
BITNOT
BITAND
LDLW 12
STNW 20
RETURN
LABEL L687
CONST 0
LDLW 12
STNW 20
RETURN
LABEL L684
!     ELSE IF arith[2] = NIL THEN S.Mark("import Arith.set function")
LINE 858
GLOBAL OMSPG.arith
LDNW 8
JNEQZ L682
CONST 26
GLOBAL OMSPG.%44
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L682
!       ELSE  MakeItem(p, arith[2], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); Call(p, r, or, pau);
LINE 859
CONST 0
GLOBAL OMSPG.arith
LDNW 8
GLOBAL OMSPG.Item
LOCAL -36
GLOBAL OMSPG.MakeItem
CALL 4
LOCAL -72
LDLW 12
CONST 36
FIXCOPY
LOCAL -108
LDLW 20
CONST 36
FIXCOPY
LOCAL -117
LOCAL -116
LOCAL -112
GLOBAL OMSPG.Item
LOCAL -36
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
LDLC -117
ALIGNC
LDLW -116
LDLW -112
GLOBAL OMSPG.Item
LOCAL -36
GLOBAL OMSPG.Call
CALL 5
!         free(x0); free(y0); x.reg := p.reg;
LINE 860
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.free
CALL 2
GLOBAL OMSPG.Item
LOCAL -108
GLOBAL OMSPG.free
CALL 2
LDLC -36
LDLW 12
STOREC
RETURN
END

PROC OMSPG.In 80 6 OMSPG.In.%map
!   PROCEDURE In*(VAR x, y: Item);  (* x := x IN y *)
LINE 865
!     IF x.mode = B.Const THEN  c.mode := B.Const; c.type := B.intType; c.a := LSL(1, x.a); c.obj := NIL; PutDO(A.BIT, c, y);
LINE 868
LDLW 12
LDNW 8
CONST 1
JNEQ L691
CONST 1
STLW -28
LDGW OMSPB.intType
STLW -24
CONST 1
LDLW 12
LDNW 20
LSL
STLW -16
CONST 0
STLW -20
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -36
CONST 11
GLOBAL OMSPG.PutDO
CALL 5
!       free(x)
LINE 869
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
JUMP L689
LABEL L691
!     ELSE load(x, 0FFH); load(y, 0FFH); t := c1; PutDO(A.ADD, t, x); 
LINE 870
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
LOCAL -80
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -80
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
!       pc0 := mcode.pc; PutDO(A.SUB, t, x); pc1 := mcode.pc; A.PutJ(mcode, A.EQ, 0);
LINE 871
LDGW OMSPG.mcode
STLW -40
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -80
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
LDGW OMSPG.mcode
STLW -44
CONST 0
CONST 1
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!       PutSO(A.RRC, y); A.PutJ(mcode, A.AL, pc0 - mcode.pc -2); A.fix(mcode, pc1, mcode.pc - pc1 - 2);
LINE 872
LDLW 24
LDLW 20
CONST 32
GLOBAL OMSPG.PutSO
CALL 3
LDLW -40
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 7
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LDGW OMSPG.mcode
LDLW -44
MINUS
CONST 2
MINUS
LDLW -44
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.fix
CALL 4
!       PutDO(A.BIT, t, y); free(y); free(x)
LINE 873
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -80
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
LABEL L689
!     SetCC(x, A.NE)
LINE 875
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.SetOp 8 6 0x00a00001
!   PROCEDURE SetOp*(op: INTEGER; VAR x, y: Item);   (* x := x op y *)
LINE 878
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 881
LDLW 16
LDNW 8
CONST 1
JNEQ L703
LDLW 24
LDNW 8
CONST 1
JNEQ L703
!       xset := SYSTEM.VAL(SET, x.a); yset := SYSTEM.VAL(SET, y.a);
LINE 882
LDLW 16
LDNW 20
STLW -4
LDLW 24
LDNW 20
STLW -8
!       IF op = S.plus THEN xset := xset + yset
LINE 883
LDLW 12
CONST 6
JNEQ L706
LDLW -4
LDLW -8
BITOR
STLW -4
JUMP L712
LABEL L706
!       ELSIF op = S.minus THEN xset := xset - yset
LINE 884
LDLW 12
CONST 7
JNEQ L708
LDLW -4
LDLW -8
BITNOT
BITAND
STLW -4
JUMP L712
LABEL L708
!       ELSIF op = S.times THEN xset := xset * yset
LINE 885
LDLW 12
CONST 1
JNEQ L710
LDLW -4
LDLW -8
BITAND
STLW -4
JUMP L712
LABEL L710
!       ELSIF op = S.rdiv THEN xset := xset / yset
LINE 886
LDLW 12
CONST 2
JNEQ L712
LDLW -4
LDLW -8
BITXOR
STLW -4
LABEL L712
!       x.a := SYSTEM.VAL(INTEGER, xset)
LINE 888
LDLW -4
LDLW 16
STNW 20
RETURN
LABEL L703
!     ELSE load(x, 0FFH);
LINE 889
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
!       IF op = S.plus THEN PutDO(A.BIS, y, x)
LINE 890
LDLW 12
CONST 6
JNEQ L695
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 13
GLOBAL OMSPG.PutDO
CALL 5
JUMP L701
LABEL L695
!       ELSIF op = S.minus THEN PutDO(A.BIC, y, x)
LINE 891
LDLW 12
CONST 7
JNEQ L697
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 12
GLOBAL OMSPG.PutDO
CALL 5
JUMP L701
LABEL L697
!       ELSIF op = S.times THEN PutDO(A.AND, y, x)
LINE 892
LDLW 12
CONST 1
JNEQ L699
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 15
GLOBAL OMSPG.PutDO
CALL 5
JUMP L701
LABEL L699
!       ELSIF op = S.rdiv THEN PutDO(A.XOR, y, x)
LINE 893
LDLW 12
CONST 2
JNEQ L701
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 14
GLOBAL OMSPG.PutDO
CALL 5
LABEL L701
!       free(y)
LINE 895
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.AdjustSize 4 3 0x00110001
!   PROCEDURE AdjustSize(VAR x: Item);
LINE 901
!   BEGIN IF x.type.form = B.Int THEN st := B.byteType ELSIF x.type.form = B.Set THEN st := B.byteSetType ELSE st := NIL END;
LINE 903
LDLW 12
LDNW 12
NCHECK 903
LOADW
CONST 4
JNEQ L716
LDGW OMSPB.byteType
STLW -4
JUMP L714
LABEL L716
LDLW 12
LDNW 12
NCHECK 903
LOADW
CONST 6
JNEQ L718
LDGW OMSPB.byteSetType
STLW -4
JUMP L714
LABEL L718
CONST 0
STLW -4
LABEL L714
!     IF (st # NIL) & (x.mode = B.Const) & (x.a >= 0) & (x.a < 100H) THEN x.type := st END
LINE 904
LDLW -4
JEQZ L721
LDLW 12
LDNW 8
CONST 1
JNEQ L721
LDLW 12
LDNW 20
JLTZ L721
LDLW 12
LDNW 20
CONST 256
JGEQ L721
LDLW -4
LDLW 12
STNW 12
LABEL L721
RETURN
END

PROC OMSPG.IntCompare 0 6 0x01500001
!   PROCEDURE IntCompare*(VAR x, y, z: Item);   (* x < y *)
LINE 907
!     IF (x.mode = Cond) OR (y.mode = Cond) THEN S.Mark("not implemented") END;
LINE 909
LDLW 12
LDNW 8
CONST 12
JEQ L726
LDLW 20
LDNW 8
CONST 12
JNEQ L727
LABEL L726
CONST 16
GLOBAL OMSPG.%45
GLOBAL OMSPS.Mark
CALL 2
LABEL L727
!     PutDO(A.CMP, y, x); free(y); free(x);
LINE 910
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
LINE 911
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
LINE 914
!     IF (x.mode = Cond) OR (y.mode = Cond) THEN S.Mark("not implemented") END;
LINE 916
LDLW 16
LDNW 8
CONST 12
JEQ L730
LDLW 24
LDNW 8
CONST 12
JNEQ L731
LABEL L730
CONST 16
GLOBAL OMSPG.%45
GLOBAL OMSPS.Mark
CALL 2
LABEL L731
!     AdjustSize(x); AdjustSize(y);
LINE 917
LDLW 20
LDLW 16
GLOBAL OMSPG.AdjustSize
CALL 2
LDLW 28
LDLW 24
GLOBAL OMSPG.AdjustSize
CALL 2
!     IF x.type.size # y.type.size THEN
LINE 918
LDLW 16
LDNW 12
NCHECK 918
LDNW 32
LDLW 24
LDNW 12
NCHECK 918
LDNW 32
JEQ L735
!       IF x.type.size = 1 THEN IF x.mode # B.Const THEN load(x, 0FFH) END; x.type := B.intType
LINE 919
LDLW 16
LDNW 12
NCHECK 919
LDNW 32
CONST 1
JNEQ L741
LDLW 16
LDNW 8
CONST 1
JEQ L744
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LABEL L744
LDGW OMSPB.intType
LDLW 16
STNW 12
JUMP L735
LABEL L741
!       ELSE IF y.mode # B.Const THEN load(y, 0FFH) END; y.type := B.intType
LINE 920
LDLW 24
LDNW 8
CONST 1
JEQ L739
CONST 255
LDLW 28
LDLW 24
GLOBAL OMSPG.load
CALL 3
LABEL L739
LDGW OMSPB.intType
LDLW 24
STNW 12
LABEL L735
!     IF op < S.gtr THEN PutDO(A.CMP, y, x); IF x.type.size = 1 THEN SetCC(x, urelmap[op - S.eql]) ELSE SetCC(x, relmap[op - S.eql]) END
LINE 923
LDLW 12
CONST 13
JGEQ L750
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDNW 12
NCHECK 923
LDNW 32
CONST 1
JNEQ L753
GLOBAL OMSPG.urelmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 923
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L746
LABEL L753
GLOBAL OMSPG.relmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 923
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L746
LABEL L750
!     ELSE PutDO(A.CMP, x, y); IF x.type.size = 1 THEN SetCC(x, urelmap[op - S.gtr + 2]) ELSE SetCC(x, relmap[op - S.gtr + 2]) END
LINE 924
LDLW 28
LDLW 24
LDLW 20
LDLW 16
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDNW 12
NCHECK 924
LDNW 32
CONST 1
JNEQ L748
GLOBAL OMSPG.urelmap
LDLW 12
CONST 11
MINUS
CONST 4
BOUND 924
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L746
LABEL L748
GLOBAL OMSPG.relmap
LDLW 12
CONST 11
MINUS
CONST 4
BOUND 924
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
LABEL L746
!     free(y); free(x)
LINE 926
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

PROC OMSPG.StringRelation 80 9 OMSPG.StringRelation.%map
!   PROCEDURE StringRelation*(op: INTEGER; VAR x0, y0: Item);   (* x := x < y *)
LINE 929
!     IF x0.type.form = B.String THEN loadStringAdr(x0, 0FFH) ELSE loadAdr(x0, 0FFH) END;
LINE 933
LDLW 16
LDNW 12
NCHECK 933
LOADW
CONST 11
JNEQ L756
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.loadStringAdr
CALL 3
JUMP L754
LABEL L756
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.loadAdr
CALL 3
LABEL L754
!     IF y0.type.form = B.String THEN loadStringAdr(y0, 0FFH) ELSE loadAdr(y0, 0FFH) END;
LINE 934
LDLW 24
LDNW 12
NCHECK 934
LOADW
CONST 11
JNEQ L759
CONST 255
LDLW 28
LDLW 24
GLOBAL OMSPG.loadStringAdr
CALL 3
JUMP L757
LABEL L759
CONST 255
LDLW 28
LDLW 24
GLOBAL OMSPG.loadAdr
CALL 3
LABEL L757
!     IF op < S.gtr THEN x := x0; y := y0 ELSE x := y0; y := x0 END;
LINE 935
LDLW 12
CONST 13
JGEQ L762
LOCAL -44
LDLW 16
CONST 36
FIXCOPY
LOCAL -80
LDLW 24
CONST 36
FIXCOPY
JUMP L760
LABEL L762
LOCAL -44
LDLW 24
CONST 36
FIXCOPY
LOCAL -80
LDLW 16
CONST 36
FIXCOPY
LABEL L760
!     (*Compare:*) pc0 := mcode.pc;
LINE 936
LDGW OMSPG.mcode
STLW -4
!     x.am := A.IndirectIncr; rh.reg := AllocR(); A.PutDO(mcode, A.MOV, x, rh, A.Byte);
LINE 937
CONST 5
STLC -43
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
CONST 64
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -44
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     y.am := A.IndirectIncr; A.PutDO(mcode, A.CMP, y, rh, A.Byte);
LINE 938
CONST 5
STLC -79
CONST 64
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -80
CONST 9
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     tbf0 := mcode.pc; A.PutJ(mcode, A.NE, 0) (*JNE Fin*);
LINE 939
LDGW OMSPG.mcode
STLW -8
CONST 0
CONST 0
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!     A.PutDO(mcode, A.CMP, c0, rh, A.Byte); (*compare char x^ to 0*)
LINE 940
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
!     A.PutJ(mcode, A.NE, pc0 - mcode.pc - 2) (*JNE Compare*);
LINE 941
LDLW -4
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 0
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!     (* Fin: *) A.fix(mcode, tbf0, mcode.pc - tbf0 - 2); free(y0); free(x0); freeR(rh.reg);
LINE 942
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
LINE 943
LDLW 12
CONST 13
JGEQ L765
GLOBAL OMSPG.urelmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 943
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
RETURN
LABEL L765
GLOBAL OMSPG.urelmap
LDLW 12
CONST 11
MINUS
CONST 4
BOUND 943
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.StrToChar 0 3 0x00100001
!   PROCEDURE StrToChar*(VAR x: Item);
LINE 948
!   BEGIN ASSERT(x.b = 2); x.type := B.charType;
LINE 949
LDLW 12
LDNW 24
CONST 2
JEQ L767
CONST 0
CONST 949
GLOBAL EASSERT
CALL 2
LABEL L767
LDGW OMSPB.charType
LDLW 12
STNW 12
!     DEC(strx, WordSize); INC(mstrx, WordSize); DEC(nofstrs); (*remove string from strdata table*)
LINE 950
LDGW OMSPG.strx
CONST 2
MINUS
STGW OMSPG.strx
LDGW OMSPG.mstrx
CONST 2
PLUS
STGW OMSPG.mstrx
LDGW OMSPG.nofstrs
DEC
STGW OMSPG.nofstrs
!     x.a := ORD(strdata[strx])
LINE 951
GLOBAL OMSPG.strdata
LDGW OMSPG.strx
CONST 3000
BOUND 951
LDIC
LDLW 12
STNW 20
RETURN
END

PROC OMSPG.Store 0 6 0x00500001
!   PROCEDURE Store*(VAR x, y: Item); (* x := y *)
LINE 954
!    BEGIN PutDO(A.MOV, y, x); free(y); free(x)
LINE 955
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
!   PROCEDURE distance(x, y: Item; VAR d: INTEGER): BOOLEAN;
LINE 958
!   BEGIN res := TRUE;
LINE 960
CONST 1
STLC -1
!     IF (x.obj # NIL) & (x.obj = y.obj) & (x.mode = y.mode) & ((x.mode # RegI) OR (x.reg = y.reg)) THEN
LINE 961
LDLW 12
LDNW 16
JEQZ L770
LDLW 12
LDNW 16
LDLW 16
LDNW 16
JNEQ L770
LDLW 12
LDNW 8
LDLW 16
LDNW 8
JNEQ L770
LDLW 12
LDNW 8
CONST 11
JNEQ L769
LDLW 12
LOADC
LDLW 16
LOADC
JNEQ L770
LABEL L769
!       IF x.mode = B.Par THEN ox := x.b ELSE ox := x.a END;
LINE 962
LDLW 12
LDNW 8
CONST 3
JNEQ L773
LDLW 12
LDNW 24
STLW -8
JUMP L771
LABEL L773
LDLW 12
LDNW 20
STLW -8
LABEL L771
!       IF y.mode = B.Par THEN oy := y.b ELSE oy := y.a END;
LINE 963
LDLW 16
LDNW 8
CONST 3
JNEQ L776
LDLW 16
LDNW 24
STLW -12
JUMP L774
LABEL L776
LDLW 16
LDNW 20
STLW -12
LABEL L774
!       d := ox - oy
LINE 964
LDLW -8
LDLW -12
MINUS
LDLW 20
STOREW
JUMP L768
LABEL L770
!     ELSIF (x.mode = B.Var) & (y.mode = B.Var) & (x.obj.lev >= 0) & (x.obj.lev = y.obj.lev) THEN d := x.a - y.a
LINE 965
LDLW 12
LDNW 8
CONST 2
JNEQ L782
LDLW 16
LDNW 8
CONST 2
JNEQ L782
LDLW 12
LDNW 16
NCHECK 965
LDNW 8
JLTZ L782
LDLW 12
LDNW 16
NCHECK 965
LDNW 8
LDLW 16
LDNW 16
NCHECK 965
LDNW 8
JNEQ L782
LDLW 12
LDNW 20
LDLW 16
LDNW 20
MINUS
LDLW 20
STOREW
JUMP L768
LABEL L782
!     ELSIF (x.mode = B.Const) & (y.mode = B.Const) & (x.a >= A.C17) & (y.a >= A.C17) THEN d := x.a - y.a
LINE 966
LDLW 12
LDNW 8
CONST 1
JNEQ L787
LDLW 16
LDNW 8
CONST 1
JNEQ L787
LDLW 12
LDNW 20
CONST 131072
JLT L787
LDLW 16
LDNW 20
CONST 131072
JLT L787
LDLW 12
LDNW 20
LDLW 16
LDNW 20
MINUS
LDLW 20
STOREW
JUMP L768
LABEL L787
!     ELSE res := FALSE
LINE 967
CONST 0
STLC -1
LABEL L768
!     RETURN res
LINE 970
LDLC -1
RETURN
END

PROC OMSPG.StoreStruct 100 9 OMSPG.StoreStruct.%map
!   PROCEDURE StoreStruct*(VAR x, y: Item); (* x := y *)
LINE 973
!   BEGIN t.mode := B.Const; t.type := B.intType; t.reg := 0; t.am := A.Immediate; t.obj := NIL; ti := y;
LINE 975
CONST 1
STLW -44
LDGW OMSPB.intType
STLW -40
CONST 0
STLC -52
CONST 6
STLC -51
CONST 0
STLW -36
LOCAL -88
LDLW 20
CONST 36
FIXCOPY
!     pc0 := -1; xtyp := x.type; ytyp := y.type;
LINE 976
CONST -1
STLW -8
LDLW 12
LDNW 12
STLW -96
LDLW 20
LDNW 12
STLW -100
!     oneReg := distance(x, y, d);
LINE 977
LOCAL -16
LDLW 20
LDLW 12
GLOBAL OMSPG.distance
CALLW 3
STLC -89
!     IF ytyp.size # 0 THEN
LINE 978
LDLW -100
NCHECK 978
LDNW 32
JEQZ L793
!       loadAdr(y, 0FFH); IF oneReg THEN free(x); x.reg := y.reg; x.tmp := FALSE; DEC(d, WordSize) ELSE loadAdr(x, 0FFH); d := 0 END; rh.reg := AllocR(); 
LINE 979
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.loadAdr
CALL 3
LDLC -89
JEQZ L796
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLW 20
LOADC
LDLW 12
STOREC
CONST 0
LDLW 12
CONST 33
STIC
LDLW -16
CONST 2
MINUS
STLW -16
JUMP L794
LABEL L796
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
CONST 0
STLW -16
LABEL L794
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!       IF (xtyp.form = B.Array) &  (xtyp.len > 0) THEN
LINE 980
LDLW -96
NCHECK 980
LOADW
CONST 12
JNEQ L799
LDLW -96
NCHECK 980
LDNW 16
JLEQZ L799
!         IF ytyp.len >= 0 THEN 
LINE 981
LDLW -100
NCHECK 981
LDNW 16
JLTZ L812
!           IF xtyp.size = ytyp.size THEN t.a := (ytyp.size+1) DIV 2; PutDO(A.MOV, t, rh)
LINE 982
LDLW -96
NCHECK 982
LDNW 32
LDLW -100
NCHECK 982
LDNW 32
JNEQ L815
LDLW -100
NCHECK 982
LDNW 32
INC
CONST 2
DIV
STLW -32
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -52
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
JUMP L797
LABEL L815
!           ELSE S.Mark("different length/size, not implemented")
LINE 983
CONST 39
GLOBAL OMSPG.%46
GLOBAL OMSPS.Mark
CALL 2
JUMP L797
LABEL L812
!         ELSE (*y  open array*) ti.a := y.a+WordSize; PutDO(A.MOV, ti, rh); s := ytyp.base.size;  (*element size*)
LINE 985
LDLW 20
LDNW 20
CONST 2
PLUS
STLW -68
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -88
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
LDLW -100
NCHECK 985
LDNW 28
NCHECK 985
LDNW 32
STLW -4
!           t := c0; PutDO(A.CMP, t, rh); pc0 := mcode.pc; A.PutJ(mcode, A.EQ, 0); (*JEQ L0*)
LINE 986
LOCAL -52
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -52
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDGW OMSPG.mcode
STLW -8
CONST 0
CONST 1
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!           IF s = 1 THEN t := c1; PutDO(A.ADD, t, rh); PutSO(A.RRA, rh)
LINE 987
LDLW -4
CONST 1
JNEQ L803
LOCAL -52
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -52
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
CONST 34
GLOBAL OMSPG.PutSO
CALL 3
JUMP L805
LABEL L803
!           ELSIF s # 2 THEN ASSERT(~ODD(s)); t.ofs := s DIV 2; A.PutDO(mcode, A.MUL, t, rh, A.Word)
LINE 988
LDLW -4
CONST 2
JEQ L805
LDLW -4
CONST 1
BITAND
JEQZ L807
CONST 0
CONST 988
GLOBAL EASSERT
CALL 2
LABEL L807
LDLW -4
CONST 2
DIV
STLW -48
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -52
CONST 0
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LABEL L805
!           IF traps[3] # NIL THEN t.a := (xtyp.size+1) DIV 2+1; PutDO(A.CMP, t, rh); Trap(A.GE, 3) END
LINE 990
GLOBAL OMSPG.traps
LDNW 12
JEQZ L797
LDLW -96
NCHECK 990
LDNW 32
INC
CONST 2
DIV
INC
STLW -32
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -52
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 3
CONST 5
GLOBAL OMSPG.Trap
CALL 2
JUMP L797
LABEL L799
!       ELSIF xtyp.form = B.Record THEN t.a := xtyp.size DIV 2; PutDO(A.MOV, t, rh)
LINE 992
LDLW -96
NCHECK 992
LOADW
CONST 13
JNEQ L818
LDLW -96
NCHECK 992
LDNW 32
CONST 2
DIV
STLW -32
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -52
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
JUMP L797
LABEL L818
!       ELSE S.Mark("inadmissible assignment")
LINE 993
CONST 24
GLOBAL OMSPG.%47
GLOBAL OMSPS.Mark
CALL 2
LABEL L797
!       (*L1*) pc1 := mcode.pc; x.am := A.Indexed; x.ofs := d; y.am := A.IndirectIncr;
LINE 995
LDGW OMSPG.mcode
STLW -12
CONST 1
LDLW 12
CONST 1
STIC
LDLW -16
LDLW 12
STNW 4
CONST 5
LDLW 20
CONST 1
STIC
!       A.PutDO(mcode, A.MOV, y, x, A.Word); IF ~oneReg THEN t := c2; PutDO(A.ADD, t, x) END;
LINE 996
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
LDLC -89
JNEQZ L821
LOCAL -52
GLOBAL OMSPG.c2
CONST 36
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -52
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
LABEL L821
!       t := c1; PutDO(A.SUB, t, rh); A.PutJ(mcode, A.NE, pc1 - mcode.pc -2); (*BNE L1*)
LINE 997
LOCAL -52
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -52
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
LDLW -12
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 0
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!       (*L0:*) IF pc0 # -1 THEN A.fix(mcode, pc0, mcode.pc - pc0 - 2) END;
LINE 998
LDLW -8
CONST -1
JEQ L824
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
LABEL L824
!       freeR(rh.reg); free(y); free(x)
LINE 999
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
LABEL L793
RETURN
END

PROC OMSPG.CopyString 116 9 OMSPG.CopyString.%map
!   PROCEDURE CopyString*(VAR x, y: Item);  (* x := y *)
LINE 1003
!    BEGIN t.mode := B.Const; t.type := B.intType; t.reg := 0; t.am := A.Immediate; t.obj := NIL; ti := y;
LINE 1005
CONST 1
STLW -36
LDGW OMSPB.intType
STLW -32
CONST 0
STLC -44
CONST 6
STLC -43
CONST 0
STLW -28
LOCAL -80
LDLW 20
CONST 36
FIXCOPY
!     len := x.type.len; loadAdr(x, 0FFH);
LINE 1006
LDLW 12
LDNW 12
NCHECK 1006
LDNW 16
STLW -4
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
!     IF len >= 0 THEN
LINE 1007
LDLW -4
JLTZ L827
!       IF len < y.b THEN S.Mark("string too long") END
LINE 1008
LDLW -4
LDLW 20
LDNW 24
JGEQ L832
CONST 16
GLOBAL OMSPG.%48
GLOBAL OMSPS.Mark
CALL 2
JUMP L832
LABEL L827
!     ELSIF traps[3] # NIL THEN ti.a := x.a+WordSize; PutDO(A.MOV, ti, rh); (*open array len*)
LINE 1009
GLOBAL OMSPG.traps
LDNW 12
JEQZ L832
LDLW 12
LDNW 20
CONST 2
PLUS
STLW -60
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -80
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
!       t.a := y.b; PutDO(A.CMP, t, rh); Trap(A.L, 3)
LINE 1010
LDLW 20
LDNW 24
STLW -24
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -44
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 3
CONST 6
GLOBAL OMSPG.Trap
CALL 2
LABEL L832
!     loadStringAdr(y, 0FFH);
LINE 1012
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.loadStringAdr
CALL 3
!     (*L0:*) pc0 := mcode.pc; x.am := A.Indexed; x.ofs := 0; y.am := A.IndirectIncr; x1 := x;
LINE 1013
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
LOCAL -116
LDLW 12
CONST 36
FIXCOPY
!     A.PutDO(mcode, A.MOV, y, x, A.Word); x.am := A.Register; t := c2; A.PutDO(mcode, A.ADD, t, x, A.Word);
LINE 1014
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
CONST 0
LDLW 12
CONST 1
STIC
LOCAL -44
GLOBAL OMSPG.c2
CONST 36
FIXCOPY
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -44
CONST 5
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!     y.am := A.Indexed; y.ofs := -1; t := c0; A.PutDO(mcode, A.CMP, t, y, A.Byte) (*test 0*); A.PutJ(mcode, A.NE, pc0 - mcode.pc -2); (*BNE L0*)
LINE 1015
CONST 1
LDLW 20
CONST 1
STIC
CONST -1
LDLW 20
STNW 4
LOCAL -44
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
CONST 64
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 9
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
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!     free(y); free(x)
LINE 1016
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

PROC OMSPG.OpenArrayParam 72 9 0x0050180d
!   PROCEDURE OpenArrayParam*(VAR x: Item; par: B.Object);
LINE 1021
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL;  t.ofs := x.type.len;
LINE 1023
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
LDLW 12
LDNW 12
NCHECK 1023
LDNW 16
STLW -32
!     ti.am := A.Indexed; ti.obj := NIL;
LINE 1024
CONST 1
STLC -71
CONST 0
STLW -56
!     IF par.register # 0FFH THEN (*in registers*) loadAdr(x, par.register); rh.reg := AllocRP(par.register+1);
LINE 1025
LDLW 20
NCHECK 1025
CONST 2
LDIC
CONST 255
JEQ L838
LDLW 20
NCHECK 1025
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
LDLW 20
NCHECK 1025
CONST 2
LDIC
INC
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
!       IF t.ofs >= 0 THEN A.PutDO(mcode, A.MOV, t, rh, A.Word)
LINE 1026
LDLW -32
JLTZ L841
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -36
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L841
!       ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word)
LINE 1027
CONST 1
STLC -72
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -68
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -72
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L838
!     ELSE (*in stack*) adjFrmOfs(WordSize);
LINE 1029
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
!       IF t.ofs >= 0 THEN A.PutSO(mcode, A.PUSH, t, A.Word)
LINE 1030
LDLW -32
JLTZ L836
CONST 0
GLOBAL OMSPG.Item
LOCAL -36
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L834
LABEL L836
!       ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutSO(mcode, A.PUSH, ti, A.Word)
LINE 1031
CONST 1
STLC -72
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -68
CONST 0
GLOBAL OMSPG.Item
LOCAL -72
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
LABEL L834
!       pushAdr(x)
LINE 1033
LDLW 16
LDLW 12
GLOBAL OMSPG.pushAdr
CALL 2
RETURN
END

PROC OMSPG.VarParam 80 9 OMSPG.VarParam.%map
!   PROCEDURE VarParam*(VAR x: Item; par: B.Object);
LINE 1037
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL; xtyp := x.type; t.ofs := xtyp.len;
LINE 1039
CONST 0
STLC -40
CONST 6
STLC -39
CONST 0
STLW -24
LDLW 12
LDNW 12
STLW -80
LDLW -80
NCHECK 1039
LDNW 16
STLW -36
!     ti.am := A.Indexed; ti.obj := NIL; xmd := x.mode;
LINE 1040
CONST 1
STLC -75
CONST 0
STLW -60
LDLW 12
LDNW 8
STLW -4
!     IF par.register # 0FFH THEN
LINE 1041
LDLW 20
NCHECK 1041
CONST 2
LDIC
CONST 255
JEQ L856
!       loadAdr(x, par.register);
LINE 1042
LDLW 20
NCHECK 1042
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
!       IF (par.type.form = B.Array) & (par.type.len < 0) THEN rh.reg := AllocRP(par.register+1); (*open array*)
LINE 1043
LDLW 20
NCHECK 1043
LDNW 24
NCHECK 1043
LOADW
CONST 12
JNEQ L859
LDLW 20
NCHECK 1043
LDNW 24
NCHECK 1043
LDNW 16
JGEQZ L859
LDLW 20
NCHECK 1043
CONST 2
LDIC
INC
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
!         IF t.ofs >= 0 THEN A.PutDO(mcode, A.MOV, t, rh, A.Word)
LINE 1044
LDLW -36
JLTZ L862
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -40
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L862
!         ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word)
LINE 1045
CONST 1
STLC -76
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -72
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -76
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L859
!       ELSIF par.type.form = B.Record THEN
LINE 1047
LDLW 20
NCHECK 1047
LDNW 24
NCHECK 1047
LOADW
CONST 13
JNEQ L842
!         IF xmd = B.Par THEN rh.reg := AllocRP(par.register+1); ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word)
LINE 1048
LDLW -4
CONST 3
JNEQ L868
LDLW 20
NCHECK 1048
CONST 2
LDIC
INC
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
CONST 1
STLC -76
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -72
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -76
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L868
!         ELSE xmd := loadTypTagAdr(xtyp, par.register+1)
LINE 1049
LDLW 20
NCHECK 1049
CONST 2
LDIC
INC
LDLW -80
GLOBAL OMSPG.loadTypTagAdr
CALLW 2
STLW -4
RETURN
LABEL L856
!       IF (par.type.form = B.Array) & (par.type.len < 0) THEN (*open array*) rh.reg := AllocR();
LINE 1053
LDLW 20
NCHECK 1053
LDNW 24
NCHECK 1053
LOADW
CONST 12
JNEQ L845
LDLW 20
NCHECK 1053
LDNW 24
NCHECK 1053
LDNW 16
JGEQZ L845
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!         adjFrmOfs(WordSize);
LINE 1054
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
!         IF t.ofs >= 0 THEN A.PutSO(mcode, A.PUSH, t, A.Word)
LINE 1055
LDLW -36
JLTZ L848
CONST 0
GLOBAL OMSPG.Item
LOCAL -40
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L851
LABEL L848
!         ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutSO(mcode, A.PUSH, ti, A.Word)
LINE 1056
CONST 1
STLC -76
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -72
CONST 0
GLOBAL OMSPG.Item
LOCAL -76
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L851
LABEL L845
!       ELSIF (par.type.form = B.Record) THEN
LINE 1058
LDLW 20
NCHECK 1058
LDNW 24
NCHECK 1058
LOADW
CONST 13
JNEQ L851
!         IF xmd = B.Par THEN adjFrmOfs(WordSize);
LINE 1059
LDLW -4
CONST 3
JNEQ L854
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
!           rh.reg := AllocR(); ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutSO(mcode, A.PUSH, ti, A.Word)
LINE 1060
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
CONST 1
STLC -76
LDLW 12
LDNW 20
CONST 2
PLUS
LDGW OMSPG.frame
PLUS
STLW -72
CONST 0
GLOBAL OMSPG.Item
LOCAL -76
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L851
LABEL L854
!         ELSE pushTypTagAdr(xtyp)
LINE 1061
LDLW -80
GLOBAL OMSPG.pushTypTagAdr
CALL 1
LABEL L851
!       pushAdr(x)
LINE 1064
LDLW 16
LDLW 12
GLOBAL OMSPG.pushAdr
CALL 2
LABEL L842
RETURN
END

PROC OMSPG.ValueParam 0 4 0x00500001
!   PROCEDURE ValueParam*(VAR x: Item; par: B.Object);
LINE 1068
!   BEGIN IF par.register # 0FFH THEN load(x, par.register) ELSE push(x, par.type.size) END
LINE 1069
LDLW 20
NCHECK 1069
CONST 2
LDIC
CONST 255
JEQ L871
LDLW 20
NCHECK 1069
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
RETURN
LABEL L871
LDLW 20
NCHECK 1069
LDNW 24
NCHECK 1069
LDNW 32
LDLW 16
LDLW 12
GLOBAL OMSPG.push
CALL 3
RETURN
END

PROC OMSPG.StringParam 36 9 0x00501801
!   PROCEDURE StringParam*(VAR x: Item; par: B.Object);
LINE 1072
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL; t.ofs := x.b;
LINE 1074
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
LDLW 12
LDNW 24
STLW -32
!     IF par.register # 0FFH THEN loadStringAdr(x, par.register);
LINE 1075
LDLW 20
NCHECK 1075
CONST 2
LDIC
CONST 255
JEQ L874
LDLW 20
NCHECK 1075
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.loadStringAdr
CALL 3
!       rh.reg := AllocRP(par.register+1); A.PutDO(mcode, A.MOV, t, rh, A.Word) (*len*)
LINE 1076
LDLW 20
NCHECK 1076
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
LOCAL -36
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
LABEL L874
!     ELSE adjFrmOfs(WordSize); A.PutSO(mcode, A.PUSH, t, A.Word) (*len*);
LINE 1077
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
CONST 0
GLOBAL OMSPG.Item
LOCAL -36
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
!       pushStringAdr(x)
LINE 1078
LDLW 12
GLOBAL OMSPG.pushStringAdr
CALL 1
RETURN
END

PROC OMSPG.For0 0 5 0x00500001
!   PROCEDURE For0*(VAR x, y: Item);
LINE 1084
!   BEGIN Store(x, y)
LINE 1085
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
LINE 1088
!     IF w.a > 0 THEN PutDO(A.CMP, x, z)
LINE 1090
LDLW 36
LDNW 20
JLEQZ L877
LDLW 32
LDLW 28
LDLW 16
LDLW 12
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
JUMP L875
LABEL L877
!     ELSIF w.a < 0 THEN PutDO(A.CMP, z, x)
LINE 1091
LDLW 36
LDNW 20
JGEQZ L879
LDLW 16
LDLW 12
LDLW 32
LDLW 28
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
JUMP L875
LABEL L879
!     ELSE S.Mark("zero increment")
LINE 1092
CONST 15
GLOBAL OMSPG.%49
GLOBAL OMSPS.Mark
CALL 2
LABEL L875
!     L := mcode.pc; A.PutJ(mcode, A.L, 0); free(z)
LINE 1094
LDGW OMSPG.mcode
LDLW 44
STOREW
CONST 0
CONST 6
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LDLW 32
LDLW 28
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.For2 0 6 0x01500001
!   PROCEDURE For2*(VAR x, y, w: Item);
LINE 1097
!   BEGIN free(x); MakeItem(x, x.obj, x.obj.lev); (* discard effects of previous loading if any *)
LINE 1098
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLW 12
LDNW 16
NCHECK 1098
LDNW 8
LDLW 12
LDNW 16
LDLW 16
LDLW 12
GLOBAL OMSPG.MakeItem
CALL 4
!     x.rdo := FALSE; PutDO(A.ADD, w, x);
LINE 1099
CONST 0
LDLW 12
CONST 32
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

PROC OMSPG.Here 0 2 0
!   PROCEDURE Here*(): INTEGER;
LINE 1104
!   RETURN mcode.pc
LINE 1105
LDGW OMSPG.mcode
RETURN
END

PROC OMSPG.FJump 0 5 0x00100001
!   PROCEDURE FJump*(VAR L: INTEGER);
LINE 1108
!   BEGIN A.PutJ(mcode, A.AL, L); L := mcode.pc - 2
LINE 1109
LDLW 12
LOADW
CONST 7
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LDGW OMSPG.mcode
CONST 2
MINUS
LDLW 12
STOREW
RETURN
END

PROC OMSPG.CFJump 0 5 0x00100001
!   PROCEDURE CFJump*(VAR x: Item);
LINE 1112
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 1114
LDLW 12
LDNW 8
CONST 12
JEQ L882
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L882
!     IF x.c # A.AL THEN A.PutJ(mcode, A.negated(x.c), x.a); x.a := mcode.pc - 2 END;
LINE 1115
LDLW 12
LDNW 28
CONST 7
JEQ L885
LDLW 12
LDNW 20
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
CONVNC
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LDGW OMSPG.mcode
CONST 2
MINUS
LDLW 12
STNW 20
LABEL L885
!     A.FixLink(mcode, x.b)
LINE 1116
LDLW 12
LDNW 24
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixLink
CALL 3
RETURN
END

PROC OMSPG.BJump 0 5 0
!   PROCEDURE BJump*(L: INTEGER);
LINE 1119
!   BEGIN A.PutJ(mcode, A.AL, L - mcode.pc - 2)
LINE 1120
LDLW 12
LDGW OMSPG.mcode
MINUS
CONST 2
MINUS
CONST 7
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
RETURN
END

PROC OMSPG.CBJump 0 5 0x00100001
!   PROCEDURE CBJump*(VAR x: Item; L: INTEGER);
LINE 1123
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 1125
LDLW 12
LDNW 8
CONST 12
JEQ L888
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L888
!     IF x.c # A.AL THEN A.PutJ(mcode, A.negated(x.c), L - mcode.pc - 2) END;
LINE 1126
LDLW 12
LDNW 28
CONST 7
JEQ L891
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
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LABEL L891
!     A.FixLink(mcode, x.b); A.FixLinkWith(mcode, x.a, L)
LINE 1127
LDLW 12
LDNW 24
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixLink
CALL 3
LDLW 20
LDLW 12
LDNW 20
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixLinkWith
CALL 4
RETURN
END

PROC OMSPG.Fixup 0 4 0x00100001
!   PROCEDURE Fixup*(VAR x: Item);
LINE 1130
!   BEGIN A.FixLink(mcode, x.a)
LINE 1131
LDLW 12
LDNW 20
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixLink
CALL 3
RETURN
END

PROC OMSPG.Enter 72 6 0x0000180d
!   PROCEDURE Enter*(size: INTEGER; int: BOOLEAN; savedregs: SET);
LINE 1134
!     OfsPTOS(0, 0, FALSE); IF int THEN (*SR copy is on TOS*) OfsPTOS(1, 1, TRUE) END;
LINE 1137
CONST 0
ALIGNC
CONST 0
CONST 0
GLOBAL OMSPG.OfsPTOS
CALL 3
LDLC 16
JEQZ L894
CONST 1
ALIGNC
CONST 1
CONST 1
GLOBAL OMSPG.OfsPTOS
CALL 3
LABEL L894
!     frame := 0;
LINE 1138
CONST 0
STGW OMSPG.frame
!     IF size >= A.C16 THEN S.Mark("local variables size exeeded") END;
LINE 1140
LDLW 12
CONST 65536
JLT L897
CONST 29
GLOBAL OMSPG.%50
GLOBAL OMSPS.Mark
CALL 2
LABEL L897
!     IF size # 0 THEN t := c0; t.a := size; tsp := sp; PutDO(A.SUB, t, tsp); adjFrmOfs(size) END;
LINE 1141
LDLW 12
JEQZ L900
LOCAL -36
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
LDLW 12
STLW -16
LOCAL -72
GLOBAL OMSPG.sp
CONST 36
FIXCOPY
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.Item
LOCAL -36
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
LDLW 12
GLOBAL OMSPG.adjFrmOfs
CALL 1
LABEL L900
!     SaveRegs(savedregs); (*save registers before use*)
LINE 1143
LDLW 20
GLOBAL OMSPG.SaveRegs
CALL 1
!     VRS := RIU; vframe := frame
LINE 1144
LDGW OMSPG.RIU
STGW OMSPG.VRS
LDGW OMSPG.frame
STGW OMSPG.vframe
RETURN
END

PROC OMSPG.Return 72 9 0x0020180d
!   PROCEDURE Return*(form: INTEGER; VAR x: Item; size: INTEGER; int: BOOLEAN; savedregs: SET);
LINE 1147
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL;
LINE 1149
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
!     IF form # B.NoTyp THEN resultRegister(rr); x.tmp := TRUE; IF rr.reg IN RIU THEN freeR(rr.reg) END;
LINE 1150
LDLW 12
CONST 9
JEQ L903
GLOBAL OMSPG.Item
LOCAL -72
GLOBAL OMSPG.resultRegister
CALL 2
CONST 1
LDLW 16
CONST 33
STIC
LDGW OMSPG.RIU
CONST 1
LDLC -72
CONST 32
BOUND 1150
LSL
BITAND
JEQZ L906
LDLC -72
GLOBAL OMSPG.freeR
CALL 1
LABEL L906
!       load(x, rr.reg); IF x.reg IN RIU THEN free(x) END
LINE 1151
LDLC -72
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LDGW OMSPG.RIU
CONST 1
LDLW 16
LOADC
CONST 32
BOUND 1151
LSL
BITAND
JEQZ L903
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
LABEL L903
!     RestoreRegs(savedregs); PRU := PRU - savedregs;
LINE 1154
LDLW 32
GLOBAL OMSPG.RestoreRegs
CALL 1
LDGW OMSPG.PRU
LDLW 32
BITNOT
BITAND
STGW OMSPG.PRU
!     IF size # 0 THEN t.ofs := size; A.PutDO(mcode, A.ADD, t, sp, A.Word); adjFrmOfs(-size) END;
LINE 1155
LDLW 24
JEQZ L912
LDLW 24
STLW -32
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.sp
GLOBAL OMSPG.Item
LOCAL -36
CONST 5
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LDLW 24
UMINUS
GLOBAL OMSPG.adjFrmOfs
CALL 1
LABEL L912
!     IF int THEN A.PutNO(mcode, A.RETI); OfsPTOS(-1, -1, TRUE);
LINE 1156
LDLC 28
JEQZ L915
CONST 38
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
CONST 1
ALIGNC
CONST -1
CONST -1
GLOBAL OMSPG.OfsPTOS
CALL 3
!       IF PRU # {} THEN S.Mark("destroyed regs in handler") END
LINE 1157
LDGW OMSPG.PRU
JEQZ L913
CONST 26
GLOBAL OMSPG.%51
GLOBAL OMSPS.Mark
CALL 2
JUMP L913
LABEL L915
!     ELSE A.PutNO(mcode, A.RET)
LINE 1158
CONST 384
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
LABEL L913
!     IF frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos # 0 THEN S.DebugHex("stack seg", frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos) END;
LINE 1160
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 1160
INDEXD
LDNW 4
JEQZ L921
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 1160
INDEXD
LDNW 4
CONST 10
GLOBAL OMSPG.%52
GLOBAL OMSPS.DebugHex
CALL 3
LABEL L921
!     SetAllocationMode(Stack); RIU := {}; VRS := RIU
LINE 1161
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
LINE 1166
!     IF upordown = 0 THEN op := A.ADD ELSE op := A.SUB END;
LINE 1169
LDLW 12
JNEQZ L924
CONST 5
STLC -1
JUMP L922
LABEL L924
CONST 8
STLC -1
LABEL L922
!     IF y.type.form = B.NoTyp THEN y.mode := B.Const; y.a := 1; y.tmp := FALSE END;
LINE 1170
LDLW 24
LDNW 12
NCHECK 1170
LOADW
CONST 9
JNEQ L927
CONST 1
LDLW 24
STNW 8
CONST 1
LDLW 24
STNW 20
CONST 0
LDLW 24
CONST 33
STIC
LABEL L927
!     PutDO(op, y, x);
LINE 1171
LDLW 20
LDLW 16
LDLW 28
LDLW 24
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
!     free(y); free(x)
LINE 1172
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

PROC OMSPG.Include 76 6 0x00a00c07
!   PROCEDURE Include*(inorex: INTEGER; VAR x, y: Item);
LINE 1175
!   BEGIN IF inorex = 0 THEN op := A.BIS ELSE op := A.BIC END;
LINE 1177
LDLW 12
JNEQZ L930
CONST 13
STLC -1
JUMP L928
LABEL L930
CONST 12
STLC -1
LABEL L928
!     IF y.mode = B.Const THEN t.mode := B.Const; t.type := B.intType; t.tmp := FALSE; t.obj := NIL; t.ofs := 0; t.a := LSL(1, y.a); PutDO(op, t, x)
LINE 1178
LDLW 24
LDNW 8
CONST 1
JNEQ L933
CONST 1
STLW -68
LDGW OMSPB.intType
STLW -64
CONST 0
STLC -43
CONST 0
STLW -60
CONST 0
STLW -72
CONST 1
LDLW 24
LDNW 20
LSL
STLW -56
LDLW 20
LDLW 16
GLOBAL OMSPG.Item
LOCAL -76
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L933
!     ELSE z := c1; load(z, 0FFH); Rla(z, y); PutDO(op, z, x); free(z)
LINE 1179
LOCAL -40
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
CONST 255
GLOBAL OMSPG.Item
LOCAL -40
GLOBAL OMSPG.load
CALL 3
LDLW 28
LDLW 24
GLOBAL OMSPG.Item
LOCAL -40
GLOBAL OMSPG.Rla
CALL 4
LDLW 20
LDLW 16
GLOBAL OMSPG.Item
LOCAL -40
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
GLOBAL OMSPG.Item
LOCAL -40
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Assert 8 5 0x00100001
!   PROCEDURE Assert*(VAR x: Item);
LINE 1183
!     IF traps[7] # NIL
LINE 1186
GLOBAL OMSPG.traps
LDNW 28
JEQZ L936
!       pc0 := 0;
LINE 1188
CONST 0
STLW -8
!       IF x.mode # Cond THEN loadCond(x) END;
LINE 1189
LDLW 12
LDNW 8
CONST 12
JEQ L939
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L939
!       IF x.a = 0 THEN cond := A.negated(x.c);
LINE 1190
LDLW 12
LDNW 20
JNEQZ L942
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
STLW -4
JUMP L940
LABEL L942
!       ELSE pc0 := mcode.pc; A.PutJ(mcode, x.c, 0); A.FixLink(mcode, x.a); cond := A.AL
LINE 1191
LDGW OMSPG.mcode
STLW -8
CONST 0
LDLW 12
LDNW 28
CONVNC
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LDLW 12
LDNW 20
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixLink
CALL 3
CONST 7
STLW -4
LABEL L940
!       Trap(cond, 7); A.FixLink(mcode, x.b);
LINE 1193
CONST 7
LDLW -4
GLOBAL OMSPG.Trap
CALL 2
LDLW 12
LDNW 24
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixLink
CALL 3
!       IF pc0 # 0 THEN A.fix(mcode, pc0, mcode.pc - pc0 - 2) END
LINE 1194
LDLW -8
JEQZ L936
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
LABEL L936
RETURN
END

PROC OMSPG.Copy 52 9 0x01500301
!   PROCEDURE Copy*(VAR x, y, z: Item); (*y := x*)
LINE 1198
!   BEGIN pc0 := 0;
LINE 1200
CONST 0
STLW -4
!     IF z.mode = B.Const THEN
LINE 1201
LDLW 28
LDNW 8
CONST 1
JNEQ L951
!       IF z.a > 0 THEN load(z, 0FFH) ELSE S.Mark("bad count") END
LINE 1202
LDLW 28
LDNW 20
JLEQZ L954
CONST 255
LDLW 32
LDLW 28
GLOBAL OMSPG.load
CALL 3
JUMP L946
LABEL L954
CONST 10
GLOBAL OMSPG.%53
GLOBAL OMSPS.Mark
CALL 2
JUMP L946
LABEL L951
!     ELSE load(z, 0FFH);
LINE 1203
CONST 255
LDLW 32
LDLW 28
GLOBAL OMSPG.load
CALL 3
!       IF traps[3] # NIL THEN t := c0; PutDO(A.CMP, t, z); Trap(A.L, 3) END;
LINE 1204
GLOBAL OMSPG.traps
LDNW 12
JEQZ L949
LOCAL -48
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
LDLW 32
LDLW 28
GLOBAL OMSPG.Item
LOCAL -48
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 3
CONST 6
GLOBAL OMSPG.Trap
CALL 2
LABEL L949
!       pc0 := mcode.pc; A.PutJ(mcode, A.EQ, 0); (*JEQ L0*)
LINE 1205
LDGW OMSPG.mcode
STLW -4
CONST 0
CONST 1
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LABEL L946
!     oneReg := distance(y, x, d);
LINE 1207
LOCAL -12
LDLW 12
LDLW 20
GLOBAL OMSPG.distance
CALLW 3
STLC -49
!     load(x, 0FFH);
LINE 1208
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
!     IF oneReg THEN free(y); y.reg := x.reg; y.tmp := FALSE; DEC(d, WordSize);
LINE 1209
LDLC -49
JEQZ L957
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 12
LOADC
LDLW 20
STOREC
CONST 0
LDLW 20
CONST 33
STIC
LDLW -12
CONST 2
MINUS
STLW -12
JUMP L955
LABEL L957
!     ELSE load(y, 0FFH); d := 0 END;
LINE 1210
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
CONST 0
STLW -12
LABEL L955
!     pc1 := mcode.pc; x.a := 0; x.am := A.IndirectIncr; y.am := A.Indexed; y.ofs := d; A.PutDO(mcode, A.MOV, x, y, A.Word);
LINE 1211
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
LDLW -12
LDLW 20
STNW 4
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
LINE 1212
CONST 0
LDLW 20
CONST 1
STIC
LDLC -49
JNEQZ L960
LOCAL -48
GLOBAL OMSPG.c2
CONST 36
FIXCOPY
CONST 0
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -48
CONST 5
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
LABEL L960
!     t := c1; A.PutDO(mcode, A.SUB, t, z, A.Word); A.PutJ(mcode, A.NE, pc1 - mcode.pc - 2); (*BNE L1*)
LINE 1213
LOCAL -48
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
CONST 0
LDLW 32
LDLW 28
GLOBAL OMSPG.Item
LOCAL -48
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
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!     IF pc0 # 0 THEN A.fix(mcode, pc0, mcode.pc - pc0 - 2) END; free(z); free(y); free(x)
LINE 1214
LDLW -4
JEQZ L963
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
LABEL L963
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

PROC OMSPG.LogicalSR 40 6 0x00200c01
!   PROCEDURE LogicalSR*(fct: INTEGER; VAR x: Item);
LINE 1217
!     IF fct = 0 THEN op := A.BIC ELSE op := A.BIS END;
LINE 1220
LDLW 12
JNEQZ L966
CONST 12
STLC -1
JUMP L964
LABEL L966
CONST 13
STLC -1
LABEL L964
!     t := sr; PutDO(op, x, t); free(x)
LINE 1221
LOCAL -40
GLOBAL OMSPG.sr
CONST 36
FIXCOPY
GLOBAL OMSPG.Item
LOCAL -40
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

PROC OMSPG.LogicalSROnExit 40 6 0x00200c01
!   PROCEDURE LogicalSROnExit*(fct: INTEGER; VAR x: Item);
LINE 1224
!     IF fct = 0 THEN op := A.BIC ELSE op := A.BIS END;
LINE 1227
LDLW 12
JNEQZ L969
CONST 12
STLC -1
JUMP L967
LABEL L969
CONST 13
STLC -1
LABEL L967
!     t.mode := B.Var; t.c := 1; t.type := B.intType; t.a := 0; t.tmp := FALSE; t.rdo := FALSE; PutDO(op, x, t); free(x); free(t)
LINE 1228
CONST 2
STLW -32
CONST 1
STLW -12
LDGW OMSPB.intType
STLW -28
CONST 0
STLW -20
CONST 0
STLC -7
CONST 0
STLC -8
GLOBAL OMSPG.Item
LOCAL -40
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
LOCAL -40
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Abs 40 6 0x00100c01
!   PROCEDURE Abs*(VAR x: Item);
LINE 1233
!     IF x.mode = B.Const THEN x.a := ABS(x.a) 
LINE 1236
LDLW 12
LDNW 8
CONST 1
JNEQ L972
LDLW 12
LDNW 20
GLOBAL ABSINT
CALLW 1
LDLW 12
STNW 20
RETURN
LABEL L972
!     ELSE t := c0; PutDO(A.CMP, t, x); pc := mcode.pc; A.PutJ(mcode, A.GE, 0);
LINE 1237
LOCAL -40
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -40
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDGW OMSPG.mcode
STLW -4
CONST 0
CONST 5
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!       PutSO(A.NEG, x); A.fix(mcode, pc, mcode.pc - pc - 2)
LINE 1238
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

PROC OMSPG.Odd 36 6 0x00101801
!   PROCEDURE Odd*(VAR x: Item);
LINE 1242
!   BEGIN t := c1; PutDO(A.BIT, t, x); SetCC(x, A.NE); free(x)
LINE 1244
LOCAL -36
GLOBAL OMSPG.c1
CONST 36
FIXCOPY
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
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
LINE 1247
!   BEGIN IF x.mode = Cond THEN load(x, 0FFH) END
LINE 1248
LDLW 12
LDNW 8
CONST 12
JNEQ L975
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
LABEL L975
RETURN
END

PROC OMSPG.Len 0 3 0x00100001
!   PROCEDURE Len*(VAR x: Item);
LINE 1251
!     IF x.type.form = B.String THEN free(x); x.mode := B.Const; x.a := x.b; x.type := B.intType
LINE 1253
LDLW 12
LDNW 12
NCHECK 1253
LOADW
CONST 11
JNEQ L983
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
CONST 1
LDLW 12
STNW 8
LDLW 12
LDNW 24
LDLW 12
STNW 20
LDGW OMSPB.intType
LDLW 12
STNW 12
RETURN
LABEL L983
!     ELSIF x.type.len >= 0 THEN free(x); x.mode := B.Const; x.a := x.type.len; x.type := B.intType
LINE 1254
LDLW 12
LDNW 12
NCHECK 1254
LDNW 16
JLTZ L985
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
CONST 1
LDLW 12
STNW 8
LDLW 12
LDNW 12
NCHECK 1254
LDNW 16
LDLW 12
STNW 20
LDGW OMSPB.intType
LDLW 12
STNW 12
RETURN
LABEL L985
!       IF x.mode IN {B.Var, B.Par} THEN x.mode := B.Var; INC(x.a, WordSize)
LINE 1256
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 1256
LSL
CONST 12
BITAND
JEQZ L979
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
LABEL L979
!       ELSIF x.mode IN {Reg, RegI} THEN x.mode := Reg; INC(x.reg)
LINE 1257
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 1257
LSL
CONST 3072
BITAND
JEQZ L981
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
LABEL L981
!       ELSE S.Mark("bad mode in Len")
LINE 1258
CONST 16
GLOBAL OMSPG.%54
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.ClrC 0 4 0
!   PROCEDURE ClrC*;
LINE 1263
!   BEGIN A.PutNO(mcode, A.CLRC)
LINE 1264
CONST 385
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
RETURN
END

PROC OMSPG.Nop 0 9 0
!   PROCEDURE Nop*;
LINE 1267
!   BEGIN A.PutDO(mcode, A.MOV, c0, cg2, A.Word)
LINE 1268
CONST 0
GLOBAL OMSPG.Item
GLOBAL OMSPG.cg2
GLOBAL OMSPG.Item
GLOBAL OMSPG.c0
CONST 4
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
RETURN
END

PROC OMSPG.Swpb 0 4 0x00100001
!   PROCEDURE Swpb*(VAR x:Item);
LINE 1271
!   BEGIN PutSO(A.SWPB, x)
LINE 1272
LDLW 16
LDLW 12
CONST 33
GLOBAL OMSPG.PutSO
CALL 3
RETURN
END

PROC OMSPG.Shift 0 5 0x00a00001
!   PROCEDURE Shift*(fct: INTEGER; VAR x, y: Item); (*x := x op y*)
LINE 1275
!   BEGIN IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 1276
LDLW 16
LDNW 8
CONST 1
JNEQ L993
LDLW 24
LDNW 8
CONST 1
JNEQ L993
!       IF fct = 0 THEN x.a := LSL(x.a, y.a) ELSIF fct = 2 THEN x.a := ASR(x.a, y.a) END 
LINE 1277
LDLW 12
JNEQZ L996
LDLW 16
LDNW 20
LDLW 24
LDNW 20
LSL
LDLW 16
STNW 20
RETURN
LABEL L996
LDLW 12
CONST 2
JNEQ L991
LDLW 16
LDNW 20
LDLW 24
LDNW 20
ASR
LDLW 16
STNW 20
RETURN
LABEL L993
!     ELSE IF fct = 0 THEN Rla(x, y) ELSIF fct = 2 THEN Rra(x, y) END
LINE 1278
LDLW 12
JNEQZ L989
LDLW 28
LDLW 24
LDLW 20
LDLW 16
GLOBAL OMSPG.Rla
CALL 4
RETURN
LABEL L989
LDLW 12
CONST 2
JNEQ L991
LDLW 28
LDLW 24
LDLW 20
LDLW 16
GLOBAL OMSPG.Rra
CALL 4
LABEL L991
RETURN
END

PROC OMSPG.Rotate 0 4 0x00200001
!   PROCEDURE Rotate*(fct: INTEGER; VAR x: Item);
LINE 1282
!   BEGIN IF fct = 0 THEN PutSO(A.RLC, x) ELSIF fct = 2 THEN PutSO(A.RRC, x) END
LINE 1283
LDLW 12
JNEQZ L1002
LDLW 20
LDLW 16
CONST 258
GLOBAL OMSPG.PutSO
CALL 3
RETURN
LABEL L1002
LDLW 12
CONST 2
JNEQ L1004
LDLW 20
LDLW 16
CONST 32
GLOBAL OMSPG.PutSO
CALL 3
LABEL L1004
RETURN
END

PROC OMSPG.Logical 4 6 0x00a00001
!   PROCEDURE Logical*(fct: INTEGER; VAR x, y: Item);
LINE 1286
!     IF fct = 0 THEN op := A.BIC ELSIF fct = 1 THEN op := A.BIS ELSIF fct = 2 THEN op := A.XOR ELSE op := A.AND END;
LINE 1289
LDLW 12
JNEQZ L1007
CONST 12
STLC -1
JUMP L1005
LABEL L1007
LDLW 12
CONST 1
JNEQ L1009
CONST 13
STLC -1
JUMP L1005
LABEL L1009
LDLW 12
CONST 2
JNEQ L1011
CONST 14
STLC -1
JUMP L1005
LABEL L1011
CONST 15
STLC -1
LABEL L1005
!     PutDO(op, y, x); free(y); free(x)
LINE 1290
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
LINE 1293
!   BEGIN PutDO(A.ADDC, y, x); free(y); free(x)
LINE 1294
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
LINE 1297
!   BEGIN PutDO(A.SUBC, y, x); free(y); free(x)
LINE 1298
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
LINE 1301
!   BEGIN PutDO(A.BIT, y, x); free(y); free(x);
LINE 1302
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
LINE 1303
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.Condition 0 4 0x00100001
!   PROCEDURE Condition*(VAR x: Item);
LINE 1306
!   BEGIN (*x.mode = Const*) SetCC(x, x.a)
LINE 1307
LDLW 12
LDNW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.Val 0 3 0x00500001
!   PROCEDURE Val*(VAR x: Item; t: B.Type);
LINE 1310
!     IF (t.form = B.Proc) THEN
LINE 1312
LDLW 20
NCHECK 1312
LOADW
CONST 10
JNEQ L1014
!       IF (x.mode = B.Const) & (x.type.form IN {B.Int, B.Pointer}) THEN x.c := 1 ELSE S.Mark("not allowed") END
LINE 1313
LDLW 12
LDNW 8
CONST 1
JNEQ L1017
CONST 1
LDLW 12
LDNW 12
NCHECK 1313
LOADW
CONST 32
BOUND 1313
LSL
CONST 144
BITAND
JEQZ L1017
CONST 1
LDLW 12
STNW 28
RETURN
LABEL L1017
CONST 12
GLOBAL OMSPG.%20
GLOBAL OMSPS.Mark
CALL 2
LABEL L1014
RETURN
END

PROC OMSPG.Open 4 4 0
!   PROCEDURE Open*;
LINE 1317
!   BEGIN A.Init(mcode); gvdata[0].adr := -1; curImport := 0; frmOfsSegs.NofSegs := 0; frmOfsSegs.Segs[0].ofsptos := 0;
LINE 1319
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.Init
CALL 2
CONST -1
STGW OMSPG.gvdata
CONST 0
STGW OMSPG.curImport
CONST 0
STGW OMSPG.frmOfsSegs
CONST 0
GLOBAL OMSPG.frmOfsSegs
STNW 8
!     FOR i := 0 TO LEN(traps) - 1 DO traps[i] := NIL END;
LINE 1320
CONST 0
STLW -4
LABEL L1019
LDLW -4
CONST 7
JGT L1020
CONST 0
GLOBAL OMSPG.traps
LDLW -4
CONST 8
BOUND 1320
STIW
INCL -4
JUMP L1019
LABEL L1020
!     FOR i := 0 TO LEN(arith) - 1 DO arith[i] := NIL END;
LINE 1321
CONST 0
STLW -4
LABEL L1021
LDLW -4
CONST 3
JGT L1022
CONST 0
GLOBAL OMSPG.arith
LDLW -4
CONST 4
BOUND 1321
STIW
INCL -4
JUMP L1021
LABEL L1022
!     FOR i := 0 TO LEN(vector) - 1 DO vector[i] := 0FFFFH END;
LINE 1322
CONST 0
STLW -4
LABEL L1023
LDLW -4
CONST 31
JGT L1024
CONST 65535
GLOBAL OMSPG.vector
LDLW -4
CONST 32
BOUND 1322
STIW
INCL -4
JUMP L1023
LABEL L1024
!     tdx := 0; strx := 0; mstrx := maxStrx; nofstrs := 0; RIU := {};
LINE 1323
CONST 0
STGW OMSPG.tdx
CONST 0
STGW OMSPG.strx
CONST 3000
STGW OMSPG.mstrx
CONST 0
STGW OMSPG.nofstrs
CONST 0
STGW OMSPG.RIU
!     rh.reg := 15; rh.am := A.Register; rh.ofs := 0; rh.obj := NIL; rh.mode := Reg; rh.type := B.intType;
LINE 1324
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
LINE 1325
CONST 0
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
RETURN
END

PROC OMSPG.SetDataSize 0 2 0
!   PROCEDURE SetDataSize*(dc: INTEGER);
LINE 1328
!   BEGIN varsize := dc
LINE 1329
LDLW 12
STGW OMSPG.varsize
RETURN
END

PROC OMSPG.Header 0 4 0
!   PROCEDURE Header*;
LINE 1332
!   BEGIN entry := mcode.pc; frame := 0; vframe := 0; OfsPTOS(0, 0, FALSE); SetAllocationMode(Stack)
LINE 1333
LDGW OMSPG.mcode
STGW OMSPG.entry
CONST 0
STGW OMSPG.frame
CONST 0
STGW OMSPG.vframe
CONST 0
ALIGNC
CONST 0
CONST 0
GLOBAL OMSPG.OfsPTOS
CALL 3
CONST 0
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
RETURN
END

PROC OMSPG.WriteWord 0 4 0x00100001
!   PROCEDURE WriteWord(VAR R: Files.Rider; w: INTEGER);
LINE 1336
!   BEGIN Files.WriteByte(R, w MOD 100H); Files.WriteByte(R, w DIV 100H MOD 100H);
LINE 1337
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

PROC OMSPG.procFixupCond 4 2 0x00100001
!   PROCEDURE procFixupCond(obj: B.Object; local:BOOLEAN): BOOLEAN;
LINE 1340
!   BEGIN res := (obj.class = B.Const) & (obj.type.form = B.Proc) & (obj.usedat # 0);
LINE 1342
LDLW 12
NCHECK 1342
LOADC
CONST 1
JNEQ L1025
LDLW 12
NCHECK 1342
LDNW 24
NCHECK 1342
LOADW
CONST 10
JEQ L1026
LABEL L1025
CONST 0
JUMP L1027
LABEL L1026
LDLW 12
NCHECK 1342
LDNW 12
CONST 0
NEQ
LABEL L1027
STLC -1
!     IF local THEN res := res & (obj.lev = 0) ELSE res := res & (obj.lev < 0) END
LINE 1343
LDLC 16
JEQZ L1034
LDLC -1
JNEQZ L1036
CONST 0
JUMP L1037
LABEL L1036
LDLW 12
NCHECK 1343
LDNW 8
CONST 0
EQ
LABEL L1037
STLC -1
JUMP L1029
LABEL L1034
LDLC -1
JNEQZ L1031
CONST 0
JUMP L1032
LABEL L1031
LDLW 12
NCHECK 1343
LDNW 8
CONST 0
LT
LABEL L1032
STLC -1
LABEL L1029
!     RETURN res
LINE 1345
LDLC -1
RETURN
END

PROC OMSPG.handlerFixupCond 4 2 0x00100001
!   PROCEDURE handlerFixupCond(obj: B.Object; local:BOOLEAN): BOOLEAN;
LINE 1348
!   BEGIN res := (obj.class = B.Const) & (obj.type.form = B.Handler) & (obj.usedat # 0);
LINE 1350
LDLW 12
NCHECK 1350
LOADC
CONST 1
JNEQ L1038
LDLW 12
NCHECK 1350
LDNW 24
NCHECK 1350
LOADW
CONST 15
JEQ L1039
LABEL L1038
CONST 0
JUMP L1040
LABEL L1039
LDLW 12
NCHECK 1350
LDNW 12
CONST 0
NEQ
LABEL L1040
STLC -1
!     IF local THEN res := res & (obj.lev = 0) ELSE res := res & (obj.lev < 0) END
LINE 1351
LDLC 16
JEQZ L1047
LDLC -1
JNEQZ L1049
CONST 0
JUMP L1050
LABEL L1049
LDLW 12
NCHECK 1351
LDNW 8
CONST 0
EQ
LABEL L1050
STLC -1
JUMP L1042
LABEL L1047
LDLC -1
JNEQZ L1044
CONST 0
JUMP L1045
LABEL L1044
LDLW 12
NCHECK 1351
LDNW 8
CONST 0
LT
LABEL L1045
STLC -1
LABEL L1042
!     RETURN res
LINE 1353
LDLC -1
RETURN
END

PROC OMSPG.varFixupCond 4 2 0x00100001
!   PROCEDURE varFixupCond(obj: B.Object; local:BOOLEAN): BOOLEAN;
LINE 1356
!   BEGIN res := (obj.class = B.Var) & (obj.usedat # 0);
LINE 1358
LDLW 12
NCHECK 1358
LOADC
CONST 2
JEQ L1052
CONST 0
JUMP L1053
LABEL L1052
LDLW 12
NCHECK 1358
LDNW 12
CONST 0
NEQ
LABEL L1053
STLC -1
!     IF local THEN res := res & (obj.lev = 0) ELSE res := res & (obj.lev < 0) END
LINE 1359
LDLC 16
JEQZ L1059
LDLC -1
JNEQZ L1061
CONST 0
JUMP L1062
LABEL L1061
LDLW 12
NCHECK 1359
LDNW 8
CONST 0
EQ
LABEL L1062
STLC -1
JUMP L1054
LABEL L1059
LDLC -1
JNEQZ L1056
CONST 0
JUMP L1057
LABEL L1056
LDLW 12
NCHECK 1359
LDNW 8
CONST 0
LT
LABEL L1057
STLC -1
LABEL L1054
!     RETURN res
LINE 1361
LDLC -1
RETURN
END

PROC OMSPG.constFixupCond 4 2 0x00100001
!   PROCEDURE constFixupCond(obj: B.Object; local:BOOLEAN): BOOLEAN;
LINE 1364
!   BEGIN res := obj.usedat # 0;
LINE 1366
LDLW 12
NCHECK 1366
LDNW 12
CONST 0
NEQ
STLC -1
!     IF local THEN res := res & (obj.class = B.Typ) & (obj.type.mno = 0)
LINE 1367
LDLC 16
JEQZ L1073
LDLC -1
JEQZ L1074
LDLW 12
NCHECK 1367
LOADC
CONST 5
JEQ L1075
LABEL L1074
CONST 0
JUMP L1076
LABEL L1075
LDLW 12
NCHECK 1367
LDNW 24
NCHECK 1367
LDNW 8
CONST 0
EQ
LABEL L1076
STLC -1
JUMP L1063
LABEL L1073
!     ELSE res := res & ((obj.class = B.Typ) & (obj.type.mno > 0) OR
LINE 1368
LDLC -1
JEQZ L1065
LDLW 12
NCHECK 1368
LOADC
CONST 5
JNEQ L1068
LDLW 12
NCHECK 1368
LDNW 24
NCHECK 1368
LDNW 8
JGTZ L1064
LABEL L1068
LDLW 12
NCHECK 1369
LOADC
CONST 1
JNEQ L1065
LDLW 12
NCHECK 1369
LDNW 24
NCHECK 1369
LOADW
CONST 11
JNEQ L1065
LDLW 12
NCHECK 1369
LDNW 8
JGEQZ L1065
LABEL L1064
CONST 1
JUMP L1066
LABEL L1065
CONST 0
LABEL L1066
STLC -1
LABEL L1063
!     RETURN res
LINE 1372
LDLC -1
RETURN
END

PROC OMSPG.typFixupCond 4 2 0x00100001
!   PROCEDURE typFixupCond(obj: B.Object; local:BOOLEAN): BOOLEAN;
LINE 1375
!   BEGIN res := (obj.class = B.Typ) & (obj.val # 0);
LINE 1377
LDLW 12
NCHECK 1377
LOADC
CONST 5
JEQ L1079
CONST 0
JUMP L1080
LABEL L1079
LDLW 12
NCHECK 1377
LDNW 60
CONST 0
NEQ
LABEL L1080
STLC -1
!     IF local THEN res := res & (obj.type.mno = 0) ELSE res := res & (obj.type.mno > 0) END
LINE 1378
LDLC 16
JEQZ L1086
LDLC -1
JNEQZ L1088
CONST 0
JUMP L1089
LABEL L1088
LDLW 12
NCHECK 1378
LDNW 24
NCHECK 1378
LDNW 8
CONST 0
EQ
LABEL L1089
STLC -1
JUMP L1081
LABEL L1086
LDLC -1
JNEQZ L1083
CONST 0
JUMP L1084
LABEL L1083
LDLW 12
NCHECK 1378
LDNW 24
NCHECK 1378
LDNW 8
CONST 0
GT
LABEL L1084
STLC -1
LABEL L1081
!     RETURN res
LINE 1380
LDLC -1
RETURN
END

PROC OMSPG.objFixupAction 0 4 0x00500001
!   PROCEDURE objFixupAction(VAR R: Files.Rider; obj: B.Object; local:BOOLEAN);
LINE 1383
!   BEGIN WriteWord(R, obj.usedat); Files.WriteByte(R, -obj.lev); (*module number*)
LINE 1384
LDLW 20
NCHECK 1384
LDNW 12
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
LDLW 20
NCHECK 1384
LDNW 8
UMINUS
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
!     WriteWord(R, obj.val) (*local object relative address or imported object number*)
LINE 1385
LDLW 20
NCHECK 1385
LDNW 60
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
END

PROC OMSPG.constFixupAction 0 4 0x00500001
!   PROCEDURE constFixupAction(VAR R: Files.Rider; obj: B.Object; local:BOOLEAN);
LINE 1388
!   BEGIN WriteWord(R, obj.usedat);
LINE 1389
LDLW 20
NCHECK 1389
LDNW 12
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
!     IF local THEN Files.WriteByte(R, 0); (*local type*); WriteWord(R, obj.type.len) (*relative address*)
LINE 1390
LDLC 24
JEQZ L1092
CONST 0
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
LDLW 20
NCHECK 1390
LDNW 24
NCHECK 1390
LDNW 16
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
LABEL L1092
!     ELSIF obj.class = B.Typ THEN Files.WriteByte(R, obj.type.mno); (*module number*); WriteWord(R, obj.type.len)
LINE 1391
LDLW 20
NCHECK 1391
LOADC
CONST 5
JNEQ L1094
LDLW 20
NCHECK 1391
LDNW 24
NCHECK 1391
LDNW 8
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
LDLW 20
NCHECK 1391
LDNW 24
NCHECK 1391
LDNW 16
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
LABEL L1094
!     ELSE (*exported string*) Files.WriteByte(R, -obj.lev); (*module number*); WriteWord(R, obj.val MOD 10000H) (*object number*)
LINE 1392
LDLW 20
NCHECK 1392
LDNW 8
UMINUS
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
LDLW 20
NCHECK 1392
LDNW 60
CONST 65536
MOD
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
END

PROC OMSPG.typFixupAction 0 4 0x00500001
!   PROCEDURE typFixupAction(VAR R: Files.Rider; obj: B.Object; local:BOOLEAN);
LINE 1396
!   BEGIN WriteWord(R, obj.val); Files.WriteByte(R, obj.type.mno); (*module number*)
LINE 1397
LDLW 20
NCHECK 1397
LDNW 60
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
LDLW 20
NCHECK 1397
LDNW 24
NCHECK 1397
LDNW 8
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
!     WriteWord(R, obj.type.len) (*local object relative address or imported object number*)
LINE 1398
LDLW 20
NCHECK 1398
LDNW 24
NCHECK 1398
LDNW 16
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
END

PROC OMSPG.WriteFixup 8 5 0x00118001
!   PROCEDURE WriteFixup(VAR R: Files.Rider; cond: FixupCond; action: FixupAction);
LINE 1401
!     obj := B.topScope.next;
LINE 1404
LDGW OMSPB.topScope
NCHECK 1404
LDNW 16
STLW -4
LABEL L1095
!     WHILE obj # NIL DO  (*local elements fixup chains*)
LINE 1405
LDLW -4
JEQZ L1097
!       IF cond(obj, TRUE) THEN ASSERT(obj.class # B.Var); action(R, obj, TRUE) END;
LINE 1406
CONST 1
ALIGNC
LDLW -4
LDLW 24
STATLINK
LDLW 20
NCHECK 1406
CALLW 2
JEQZ L1100
LDLW -4
NCHECK 1406
LOADC
CONST 2
JNEQ L1102
CONST 0
CONST 1406
GLOBAL EASSERT
CALL 2
LABEL L1102
CONST 1
ALIGNC
LDLW -4
LDLW 16
LDLW 12
LDLW 32
STATLINK
LDLW 28
NCHECK 1406
CALL 4
LABEL L1100
!       obj := obj.next
LINE 1407
LDLW -4
NCHECK 1407
LDNW 16
STLW -4
JUMP L1095
LABEL L1097
!     obj := B.topScope.next;
LINE 1409
LDGW OMSPB.topScope
NCHECK 1409
LDNW 16
STLW -4
LABEL L1103
!     WHILE (obj # NIL) & (obj.class = B.Mod) DO  (*imported elements fixup chains*)
LINE 1410
LDLW -4
JEQZ L1105
LDLW -4
NCHECK 1410
LOADC
CONST 8
JNEQ L1105
!       IF obj.dsc # B.system THEN
LINE 1411
LDLW -4
NCHECK 1411
LDNW 20
LDGW OMSPB.system
JEQ L1108
!         obj2 := obj.dsc;
LINE 1412
LDLW -4
NCHECK 1412
LDNW 20
STLW -8
LABEL L1109
!         WHILE obj2 # NIL DO
LINE 1413
LDLW -8
JEQZ L1108
!           IF cond(obj2, FALSE) THEN action(R, obj2, FALSE) END;
LINE 1414
CONST 0
ALIGNC
LDLW -8
LDLW 24
STATLINK
LDLW 20
NCHECK 1414
CALLW 2
JEQZ L1114
CONST 0
ALIGNC
LDLW -8
LDLW 16
LDLW 12
LDLW 32
STATLINK
LDLW 28
NCHECK 1414
CALL 4
LABEL L1114
!           obj2 := obj2.next
LINE 1415
LDLW -8
NCHECK 1415
LDNW 16
STLW -8
JUMP L1109
LABEL L1108
!       obj := obj.next
LINE 1418
LDLW -4
NCHECK 1418
LDNW 16
STLW -4
JUMP L1103
LABEL L1105
!     WriteWord(R, 0)
LINE 1420
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
END

PROC OMSPG.Close 96 7 OMSPG.Close.%map
!   PROCEDURE Close*(VAR modid: S.Ident; key, nofent: INTEGER; codeseg: BYTE);
LINE 1423
!   BEGIN  (*exit code*) A.PutNO(mcode, A.RET);
LINE 1428
CONST 384
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
!     obj := B.topScope.next; nofimps := 0;
LINE 1429
LDGW OMSPB.topScope
NCHECK 1429
LDNW 16
STLW -4
CONST 0
STLW -20
LABEL L1116
!     WHILE obj # NIL DO
LINE 1430
LDLW -4
JEQZ L1118
!       IF (obj.class = B.Mod) & (obj.dsc # B.system) THEN INC(nofimps); (*count imports*)
LINE 1431
LDLW -4
NCHECK 1431
LOADC
CONST 8
JNEQ L1121
LDLW -4
NCHECK 1431
LDNW 20
LDGW OMSPB.system
JEQ L1121
INCL -20
LABEL L1121
!       obj := obj.next
LINE 1433
LDLW -4
NCHECK 1433
LDNW 16
STLW -4
JUMP L1116
LABEL L1118
!     flashSize := tdx*WordSize + strx + mcode.pc;
LINE 1436
LDGW OMSPG.tdx
CONST 2
TIMES
LDGW OMSPG.strx
PLUS
LDGW OMSPG.mcode
PLUS
STLW -28
!     B.MakeFileName(name, modid, ".mpc"); (*write code file*)
LINE 1438
CONST 5
GLOBAL OMSPG.%55
CONST 32
LDLW 12
LOCAL -60
GLOBAL OMSPB.MakeFileName
CALL 5
!     F := Files.New(name); Files.Set(R, F, 0); Files.WriteString(R, modid); Files.WriteInt(R, key); Files.WriteByte(R, codeseg);
LINE 1439
CONST 32
LOCAL -60
GLOBAL POFiles.New
CALLW 2
STLW -64
CONST 0
LDLW -64
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Set
CALL 4
CONST 32
LDLW 12
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteString
CALL 4
LDLW 16
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteInt
CALL 3
LDLC 24
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteByte
CALL 3
!     WriteWord(R, flashSize);
LINE 1440
LDLW -28
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
!     obj := B.topScope.next;
LINE 1441
LDGW OMSPB.topScope
NCHECK 1441
LDNW 16
STLW -4
LABEL L1123
!     WHILE (obj # NIL) & (obj.class = B.Mod) DO  (*imports*)
LINE 1442
LDLW -4
JEQZ L1125
LDLW -4
NCHECK 1442
LOADC
CONST 8
JNEQ L1125
!       IF obj.dsc # B.system THEN Files.WriteString(R, obj(B.Module).orgname); Files.WriteInt(R, obj.val) END;
LINE 1443
LDLW -4
NCHECK 1443
LDNW 20
LDGW OMSPB.system
JEQ L1128
LDLW -4
DUP 0
NCHECK 1443
LDNW -4
DUP 0
LDNW 4
CONST 1
JGEQ L1131
POP 1
JUMP L1130
LABEL L1131
LDNW 8
LDNW 4
GLOBAL OMSPB.ModDesc
JEQ L1129
LABEL L1130
ERROR E_CAST 1443
LABEL L1129
CONST 64
OFFSET
CONST 32
SWAP
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteString
CALL 4
LDLW -4
NCHECK 1443
LDNW 60
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteInt
CALL 3
LABEL L1128
!       obj := obj.next
LINE 1444
LDLW -4
NCHECK 1444
LDNW 16
STLW -4
JUMP L1123
LABEL L1125
!     Files.Write(R, 0X);
LINE 1446
CONST 0
ALIGNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Write
CALL 3
!     WriteWord(R, tdx*WordSize);
LINE 1447
LDGW OMSPG.tdx
CONST 2
TIMES
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
!     i := 0;
LINE 1448
CONST 0
STLW -8
LABEL L1133
!     WHILE i < tdx DO WriteWord(R, tddata[i]); INC(i) END ; (*type descriptors*)
LINE 1449
LDLW -8
LDGW OMSPG.tdx
JGEQ L1135
GLOBAL OMSPG.tddata
LDLW -8
CONST 160
BOUND 1449
LDIW
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
INCL -8
JUMP L1133
LABEL L1135
!     WriteWord(R, varsize);  (*data*)
LINE 1450
LDGW OMSPG.varsize
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
!     WriteWord(R, strx);
LINE 1451
LDGW OMSPG.strx
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
!     FOR i := 0 TO strx-1 DO Files.Write(R, strdata[i]) END ;  (*strings*)
LINE 1452
LDGW OMSPG.strx
DEC
STLW -80
CONST 0
STLW -8
LABEL L1136
LDLW -8
LDLW -80
JGT L1137
GLOBAL OMSPG.strdata
LDLW -8
CONST 3000
BOUND 1452
LDIC
ALIGNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Write
CALL 3
INCL -8
JUMP L1136
LABEL L1137
!     WriteWord(R, mcode.pc);  (*code len*)
LINE 1453
LDGW OMSPG.mcode
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
!     FOR i := 0 TO mcode.pc-1 DO Files.WriteByte(R, mcode.code[i]) END ;  (*program*)
LINE 1454
LDGW OMSPG.mcode
DEC
STLW -84
CONST 0
STLW -8
LABEL L1138
LDLW -8
LDLW -84
JGT L1139
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW -8
CONST 32000
BOUND 1454
OFFSET
LOADC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteByte
CALL 3
INCL -8
JUMP L1138
LABEL L1139
!     Files.WriteByte(R, LEN(vector));  (*Vectors table*)
LINE 1455
CONST 32
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteByte
CALL 3
!     FOR i := 0 TO LEN(vector) - 1 DO WriteWord(R, vector[i]) END;
LINE 1456
CONST 0
STLW -8
LABEL L1140
LDLW -8
CONST 31
JGT L1141
GLOBAL OMSPG.vector
LDLW -8
CONST 32
BOUND 1456
LDIW
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
INCL -8
JUMP L1140
LABEL L1141
!     WriteWord(R, nofent); Files.Write(R, "c"); (*code segment*) WriteWord(R, entry);
LINE 1457
LDLW 20
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
CONST 99
ALIGNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Write
CALL 3
LDGW OMSPG.entry
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
!     obj := B.topScope.next;
LINE 1458
LDGW OMSPB.topScope
NCHECK 1458
LDNW 16
STLW -4
LABEL L1142
!     WHILE obj # NIL DO  (*entries*)
LINE 1459
LDLW -4
JEQZ L1144
!       IF obj.exno # 0 THEN
LINE 1460
LDLW -4
NCHECK 1460
CONST 1
LDIC
JEQZ L1147
!         IF (obj.class = B.Const) & (obj.type.form IN {B.Proc, B.Handler}) THEN Files.Write(R, "c"); (*code section*) WriteWord(R, obj.val)
LINE 1461
LDLW -4
NCHECK 1461
LOADC
CONST 1
JNEQ L1150
CONST 1
LDLW -4
NCHECK 1461
LDNW 24
NCHECK 1461
LOADW
CONST 32
BOUND 1461
LSL
CONST 33792
BITAND
JEQZ L1150
CONST 99
ALIGNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Write
CALL 3
LDLW -4
NCHECK 1461
LDNW 60
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1147
LABEL L1150
!         ELSIF obj.class = B.Var THEN Files.Write(R, "d"); (*data section*) WriteWord(R, obj.val)
LINE 1462
LDLW -4
NCHECK 1462
LOADC
CONST 2
JNEQ L1153
CONST 100
ALIGNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Write
CALL 3
LDLW -4
NCHECK 1462
LDNW 60
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1147
LABEL L1153
!         ELSIF (obj.class = B.Const) & (obj.type.form = B.String) THEN Files.Write(R, "k"); (*const section (string)*)
LINE 1463
LDLW -4
NCHECK 1463
LOADC
CONST 1
JNEQ L1155
LDLW -4
NCHECK 1463
LDNW 24
NCHECK 1463
LOADW
CONST 11
JNEQ L1155
CONST 107
ALIGNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Write
CALL 3
!           WriteWord(R, GetStringAddress(obj.val MOD 10000H))
LINE 1464
LDLW -4
NCHECK 1464
LDNW 60
CONST 65536
MOD
GLOBAL OMSPG.GetStringAddress
CALLW 1
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1147
LABEL L1155
!         ELSIF obj.class = B.Typ THEN Files.Write(R, "k"); (*const sesction (tag)*)
LINE 1465
LDLW -4
NCHECK 1465
LOADC
CONST 5
JNEQ L1147
CONST 107
ALIGNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Write
CALL 3
!           IF obj.type.form = B.Record THEN WriteWord(R, obj.type.len)
LINE 1466
LDLW -4
NCHECK 1466
LDNW 24
NCHECK 1466
LOADW
CONST 13
JNEQ L1161
LDLW -4
NCHECK 1466
LDNW 24
NCHECK 1466
LDNW 16
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1147
LABEL L1161
!           ELSIF (obj.type.form = B.Pointer) & ((obj.type.base.typobj = NIL) OR (obj.type.base.typobj.exno = 0)) THEN
LINE 1467
LDLW -4
NCHECK 1467
LDNW 24
NCHECK 1467
LOADW
CONST 7
JNEQ L1147
LDLW -4
NCHECK 1467
LDNW 24
NCHECK 1467
LDNW 28
NCHECK 1467
LDNW 24
JEQZ L1162
LDLW -4
NCHECK 1467
LDNW 24
NCHECK 1467
LDNW 28
NCHECK 1467
LDNW 24
NCHECK 1467
CONST 1
LDIC
JNEQZ L1147
LABEL L1162
!             WriteWord(R,  obj.type.base.len)
LINE 1468
LDLW -4
NCHECK 1468
LDNW 24
NCHECK 1468
LDNW 28
NCHECK 1468
LDNW 16
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
LABEL L1147
!       obj := obj.next
LINE 1472
LDLW -4
NCHECK 1472
LDNW 16
STLW -4
JUMP L1142
LABEL L1144
!     WriteFixup(R, procFixupCond, objFixupAction); (*procedures fixup data*)
LINE 1474
CONST 0
GLOBAL OMSPG.objFixupAction
CONST 0
GLOBAL OMSPG.procFixupCond
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteFixup
CALL 6
!     WriteFixup(R, handlerFixupCond, objFixupAction); (*interrupt handlers fixup data*)
LINE 1475
CONST 0
GLOBAL OMSPG.objFixupAction
CONST 0
GLOBAL OMSPG.handlerFixupCond
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteFixup
CALL 6
!     i := 0; WHILE gvdata[i].adr # -1 DO WriteWord(R, gvdata[i].usedat); Files.WriteByte(R, 0); WriteWord(R, gvdata[i].adr); INC(i) END; (*global variables fixup data*)
LINE 1476
CONST 0
STLW -8
LABEL L1166
GLOBAL OMSPG.gvdata
LDLW -8
CONST 200
BOUND 1476
INDEXD
LOADW
CONST -1
JEQ L1168
GLOBAL OMSPG.gvdata
LDLW -8
CONST 200
BOUND 1476
INDEXD
LDNW 4
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
CONST 0
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteByte
CALL 3
GLOBAL OMSPG.gvdata
LDLW -8
CONST 200
BOUND 1476
INDEXD
LOADW
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
INCL -8
JUMP L1166
LABEL L1168
!     WriteFixup(R, varFixupCond, objFixupAction); (*variable fixup data*)
LINE 1477
CONST 0
GLOBAL OMSPG.objFixupAction
CONST 0
GLOBAL OMSPG.varFixupCond
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteFixup
CALL 6
!     suax := maxStrx; sx := 0;
LINE 1479
CONST 3000
STLW -16
CONST 0
STLW -12
!     FOR i := 1 TO nofstrs DO
LINE 1480
LDGW OMSPG.nofstrs
STLW -88
CONST 1
STLW -8
LABEL L1169
LDLW -8
LDLW -88
JGT L1170
!       DEC(suax, 2); fixadr := ORD(strdata[suax]) + ORD(strdata[suax + 1])*100H;
LINE 1481
LDLW -16
CONST 2
MINUS
STLW -16
GLOBAL OMSPG.strdata
LDLW -16
CONST 3000
BOUND 1481
LDIC
GLOBAL OMSPG.strdata
LDLW -16
INC
CONST 3000
BOUND 1481
LDIC
CONST 256
TIMES
PLUS
STLW -24
!       IF fixadr # 0 THEN WriteWord(R, fixadr); Files.WriteByte(R, 0); WriteWord(R, sx + tdx*WordSize (*skip td*)) END;
LINE 1482
LDLW -24
JEQZ L1173
LDLW -24
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
CONST 0
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteByte
CALL 3
LDLW -12
LDGW OMSPG.tdx
CONST 2
TIMES
PLUS
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
LABEL L1173
!       WHILE strdata[sx] # 0X DO INC(sx) END; REPEAT INC(sx) UNTIL sx MOD WordSize = 0
LINE 1483
GLOBAL OMSPG.strdata
LDLW -12
CONST 3000
BOUND 1483
LDIC
JEQZ L1176
INCL -12
JUMP L1173
LABEL L1176
INCL -12
LDLW -12
CONST 2
MOD
JNEQZ L1176
!     FOR i := 1 TO nofstrs DO
LINE 1480
INCL -8
JUMP L1169
LABEL L1170
!     WriteFixup(R, constFixupCond, constFixupAction); (*fixup data for references to constants in code*)
LINE 1485
CONST 0
GLOBAL OMSPG.constFixupAction
CONST 0
GLOBAL OMSPG.constFixupCond
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteFixup
CALL 6
!     WriteFixup(R, typFixupCond, typFixupAction); (*fixup data for type extension*)
LINE 1486
CONST 0
GLOBAL OMSPG.typFixupAction
CONST 0
GLOBAL OMSPG.typFixupCond
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteFixup
CALL 6
!     WriteWord(R, entry);
LINE 1487
LDGW OMSPG.entry
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
!     Files.Write(R, "O"); Files.Register(F);
LINE 1488
CONST 79
ALIGNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Write
CALL 3
LDLW -64
GLOBAL POFiles.Register
CALL 1
!     B.MakeFileName(name, modid, ".o43"); F := Files.New(name); Files.Set(R, F, 0); WriteWord(R, mcode.pc DIV 2); sx := 1;
LINE 1490
CONST 5
GLOBAL OMSPG.%56
CONST 32
LDLW 12
LOCAL -60
GLOBAL OMSPB.MakeFileName
CALL 5
CONST 32
LOCAL -60
GLOBAL POFiles.New
CALLW 2
STLW -64
CONST 0
LDLW -64
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Set
CALL 4
LDGW OMSPG.mcode
CONST 2
DIV
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL OMSPG.WriteWord
CALL 3
CONST 1
STLW -12
!     FOR i := 1 TO mcode.pc DIV 2 - 1 DO 
LINE 1491
LDGW OMSPG.mcode
CONST 2
DIV
DEC
STLW -92
CONST 1
STLW -8
LABEL L1179
LDLW -8
LDLW -92
JGT L1180
!       IF (sx < 255) & (mcode.pos[i] = mcode.pos[i-1]) THEN INC(sx) ELSE Files.WriteByte(R, sx); Files.WriteInt(R, mcode.pos[i - 1]); sx := 1 END
LINE 1492
LDLW -12
CONST 255
JGEQ L1183
GLOBAL OMSPG.mcode
CONST 32004
OFFSET
LDLW -8
CONST 16000
BOUND 1492
LDIW
GLOBAL OMSPG.mcode
CONST 32004
OFFSET
LDLW -8
DEC
CONST 16000
BOUND 1492
LDIW
JNEQ L1183
INCL -12
JUMP L1181
LABEL L1183
LDLW -12
CONVNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteByte
CALL 3
GLOBAL OMSPG.mcode
CONST 32004
OFFSET
LDLW -8
DEC
CONST 16000
BOUND 1492
LDIW
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteInt
CALL 3
CONST 1
STLW -12
LABEL L1181
!     FOR i := 1 TO mcode.pc DIV 2 - 1 DO 
LINE 1491
INCL -8
JUMP L1179
LABEL L1180
!     END; Files.WriteByte(R, sx); Files.WriteInt(R, mcode.pos[mcode.pc DIV 2 - 1]); Files.Register(F);
LINE 1493
LDLW -12
CONVNC
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteByte
CALL 3
GLOBAL OMSPG.mcode
CONST 32004
OFFSET
LDGW OMSPG.mcode
CONST 2
DIV
DEC
CONST 16000
BOUND 1493
LDIW
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteInt
CALL 3
LDLW -64
GLOBAL POFiles.Register
CALL 1
!     OfsPTOS(-1, -1, FALSE); (*close last segment*) B.MakeFileName(name, modid, ".r43"); F := Files.New(name); Files.Set(R, F, 0); 
LINE 1495
CONST 0
ALIGNC
CONST -1
CONST -1
GLOBAL OMSPG.OfsPTOS
CALL 3
CONST 5
GLOBAL OMSPG.%57
CONST 32
LDLW 12
LOCAL -60
GLOBAL OMSPB.MakeFileName
CALL 5
CONST 32
LOCAL -60
GLOBAL POFiles.New
CALLW 2
STLW -64
CONST 0
LDLW -64
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.Set
CALL 4
!     Files.WriteInt(R, frmOfsSegs.NofSegs);
LINE 1496
LDGW OMSPG.frmOfsSegs
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteInt
CALL 3
!     FOR i := 0 TO frmOfsSegs.NofSegs DO Files.WriteInt(R, frmOfsSegs.Segs[i].end); Files.WriteInt(R, frmOfsSegs.Segs[i].ofsptos) END;
LINE 1497
LDGW OMSPG.frmOfsSegs
STLW -96
CONST 0
STLW -8
LABEL L1185
LDLW -8
LDLW -96
JGT L1186
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDLW -8
CONST 1000
BOUND 1497
INDEXD
LOADW
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteInt
CALL 3
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDLW -8
CONST 1000
BOUND 1497
INDEXD
LDNW 4
GLOBAL POFiles.Rider
LOCAL -76
GLOBAL POFiles.WriteInt
CALL 3
INCL -8
JUMP L1185
LABEL L1186
!     Files.Register(F)
LINE 1498
LDLW -64
GLOBAL POFiles.Register
CALL 1
RETURN
END

PROC OMSPG.initConst 0 3 0x00100001
!   PROCEDURE initConst(VAR c: Item; v: INTEGER);
LINE 1501
!   BEGIN c.reg := 0; c.am := A.Immediate; c.ofs := v; c.obj := NIL; c.type := B.intType; c.rdo := TRUE;
LINE 1502
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
CONST 32
STIC
!     c.mode := B.Const; c.tmp := FALSE; c.a := v
LINE 1503
CONST 1
LDLW 12
STNW 8
CONST 0
LDLW 12
CONST 33
STIC
LDLW 20
LDLW 12
STNW 20
RETURN
END

PROC OMSPG.initReg 0 3 0x00100001
!   PROCEDURE initReg(VAR c: Item; r: BYTE);
LINE 1506
!   BEGIN c.reg := r; c.am := A.Register; c.ofs := 0; c.obj := NIL; c.type := B.intType;
LINE 1507
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
!     c.mode := Reg; c.tmp := FALSE; c.a := 0
LINE 1508
CONST 10
LDLW 12
STNW 8
CONST 0
LDLW 12
CONST 33
STIC
CONST 0
LDLW 12
STNW 20
RETURN
END

PROC OMSPG.%main 0 7 0
! BEGIN A.SetProcs(GetOffset, AllocR, freeR);
LINE 1511
CONST 0
GLOBAL OMSPG.freeR
CONST 0
GLOBAL OMSPG.AllocR
CONST 0
GLOBAL OMSPG.GetOffset
GLOBAL OMSPA.SetProcs
CALL 6
!   initConst(cm1, -1); initConst(c0, 0); initConst(c1, 1); initConst(c2, 2);
LINE 1512
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
LINE 1513
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
LINE 1514
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
LINE 1515
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
LINE 1516
CONST 0
GLOBAL OMSPG.RegisterRTproc
GLOBAL OMSPB.SetRegRTProcCallback
CALL 2
RETURN
END

! Global variables
GLOVAR OMSPG.varsize 4
GLOVAR OMSPG.tdx 4
GLOVAR OMSPG.strx 4
GLOVAR OMSPG.mstrx 4
GLOVAR OMSPG.nofstrs 4
GLOVAR OMSPG.gvdata 1600
GLOVAR OMSPG.tddata 640
GLOVAR OMSPG.strdata 3000
GLOVAR OMSPG.entry 4
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
GLOVAR OMSPG.vector 128
GLOVAR OMSPG.relmap 16
GLOVAR OMSPG.urelmap 16
GLOVAR OMSPG.cm1 36
GLOVAR OMSPG.c0 36
GLOVAR OMSPG.c1 36
GLOVAR OMSPG.c2 36
GLOVAR OMSPG.pc 36
GLOVAR OMSPG.sp 36
GLOVAR OMSPG.sr 36
GLOVAR OMSPG.cg2 36
GLOVAR OMSPG.r4 36
GLOVAR OMSPG.r15 36
GLOVAR OMSPG.rh 36
GLOVAR OMSPG.curImport 4
GLOVAR OMSPG.mcode 96004
GLOVAR OMSPG.frmOfsSegs 8004

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
WORD GC_END

! String "Traps"
DEFINE OMSPG.%1
STRING 547261707300

! String "Arith"
DEFINE OMSPG.%2
STRING 417269746800

! String "ArrayOutOfRange"
DEFINE OMSPG.%3
STRING 41727261794F75744F6652616E676500

! String "TypeGuardFailure"
DEFINE OMSPG.%4
STRING 5479706547756172644661696C75726500

! String "CopyOverflow"
DEFINE OMSPG.%5
STRING 436F70794F766572666C6F7700

! String "AccessViaNILPointer"
DEFINE OMSPG.%6
STRING 4163636573735669614E494C506F696E74657200

! String "IllegalProcedureCall"
DEFINE OMSPG.%7
STRING 496C6C6567616C50726F63656475726543616C6C00

! String "DivisionByZero"
DEFINE OMSPG.%8
STRING 4469766973696F6E42795A65726F00

! String "AssertionViolated"
DEFINE OMSPG.%9
STRING 417373657274696F6E56696F6C6174656400

! String "mul16"
DEFINE OMSPG.%10
STRING 6D756C313600

! String "divmod16"
DEFINE OMSPG.%11
STRING 6469766D6F64313600

! String "set"
DEFINE OMSPG.%12
STRING 73657400

! String "registers out of range"
DEFINE OMSPG.%13
STRING 726567697374657273206F7574206F662072616E676500

! String "reg already allocated"
DEFINE OMSPG.%14
STRING 72656720616C726561647920616C6C6F636174656400

! String "register stack overflow"
DEFINE OMSPG.%15
STRING 726567697374657220737461636B206F766572666C6F7700

! String "reg wild free"
DEFINE OMSPG.%16
STRING 7265672077696C64206672656500

! String "Reg Stack"
DEFINE OMSPG.%17
STRING 52656720537461636B00

! String "program too long"
DEFINE OMSPG.%18
STRING 70726F6772616D20746F6F206C6F6E6700

! String "frame error"
DEFINE OMSPG.%19
STRING 6672616D65206572726F7200

! String "not allowed"
DEFINE OMSPG.%20
STRING 6E6F7420616C6C6F77656400

! String "bad mode in load"
DEFINE OMSPG.%21
STRING 626164206D6F646520696E206C6F616400

! String "move byte to int"
DEFINE OMSPG.%22
STRING 6D6F7665206279746520746F20696E7400

! String "not writable"
DEFINE OMSPG.%23
STRING 6E6F74207772697461626C6500

! String "bad mode in push"
DEFINE OMSPG.%24
STRING 626164206D6F646520696E207075736800

! String "not addressable"
DEFINE OMSPG.%25
STRING 6E6F74206164647265737361626C6500

! String "not Boolean?"
DEFINE OMSPG.%26
STRING 6E6F7420426F6F6C65616E3F00

! String "too many strings"
DEFINE OMSPG.%27
STRING 746F6F206D616E7920737472696E677300

! String "not accessible "
DEFINE OMSPG.%28
STRING 6E6F742061636365737369626C652000

! String "Invalid array item size"
DEFINE OMSPG.%29
STRING 496E76616C6964206172726179206974656D2073697A6500

! String "bad index"
DEFINE OMSPG.%30
STRING 62616420696E64657800

! String "error in Index"
DEFINE OMSPG.%31
STRING 6572726F7220696E20496E64657800

! String "bad mode in DeRef"
DEFINE OMSPG.%32
STRING 626164206D6F646520696E20446552656600

! String "ext level too large"
DEFINE OMSPG.%33
STRING 657874206C6576656C20746F6F206C6172676500

! String "too many record types"
DEFINE OMSPG.%34
STRING 746F6F206D616E79207265636F726420747970657300

! String "error in TypeTest"
DEFINE OMSPG.%35
STRING 6572726F7220696E20547970655465737400

! String "pointer not allowed"
DEFINE OMSPG.%36
STRING 706F696E746572206E6F7420616C6C6F77656400

! String "vect mult def"
DEFINE OMSPG.%37
STRING 76656374206D756C742064656600

! String "import Arith.mul16 function"
DEFINE OMSPG.%38
STRING 696D706F72742041726974682E6D756C31362066756E6374696F6E00

! String "bad divisor"
DEFINE OMSPG.%39
STRING 6261642064697669736F7200

! String "import Arith.divmod16 procedure"
DEFINE OMSPG.%40
STRING 696D706F72742041726974682E6469766D6F6431362070726F63656475726500

! String "bad modulus"
DEFINE OMSPG.%41
STRING 626164206D6F64756C757300

! String "import Arith.divmod procedure"
DEFINE OMSPG.%42
STRING 696D706F72742041726974682E6469766D6F642070726F63656475726500

! String "const expected"
DEFINE OMSPG.%43
STRING 636F6E737420657870656374656400

! String "import Arith.set function"
DEFINE OMSPG.%44
STRING 696D706F72742041726974682E7365742066756E6374696F6E00

! String "not implemented"
DEFINE OMSPG.%45
STRING 6E6F7420696D706C656D656E74656400

! String "different length/size, not implemented"
DEFINE OMSPG.%46
STRING 646966666572656E74206C656E6774682F73697A652C206E6F7420696D706C65
STRING 6D656E74656400

! String "inadmissible assignment"
DEFINE OMSPG.%47
STRING 696E61646D69737369626C652061737369676E6D656E7400

! String "string too long"
DEFINE OMSPG.%48
STRING 737472696E6720746F6F206C6F6E6700

! String "zero increment"
DEFINE OMSPG.%49
STRING 7A65726F20696E6372656D656E7400

! String "local variables size exeeded"
DEFINE OMSPG.%50
STRING 6C6F63616C207661726961626C65732073697A65206578656564656400

! String "destroyed regs in handler"
DEFINE OMSPG.%51
STRING 64657374726F796564207265677320696E2068616E646C657200

! String "stack seg"
DEFINE OMSPG.%52
STRING 737461636B2073656700

! String "bad count"
DEFINE OMSPG.%53
STRING 62616420636F756E7400

! String "bad mode in Len"
DEFINE OMSPG.%54
STRING 626164206D6F646520696E204C656E00

! String ".mpc"
DEFINE OMSPG.%55
STRING 2E6D706300

! String ".o43"
DEFINE OMSPG.%56
STRING 2E6F343300

! String ".r43"
DEFINE OMSPG.%57
STRING 2E72343300

! Descriptor for Item
DEFINE OMSPG.Item
WORD 0x00000031
WORD 1
WORD OMSPG.Item.%anc

DEFINE OMSPG.Item.%anc
WORD OMSPA.Item
WORD OMSPG.Item

! Descriptor for FrameOffsetSegment
DEFINE OMSPG.FrameOffsetSegment
WORD 0
WORD 0
WORD OMSPG.FrameOffsetSegment.%anc

DEFINE OMSPG.FrameOffsetSegment.%anc
WORD OMSPG.FrameOffsetSegment

! Descriptor for FrameOffset
DEFINE OMSPG.FrameOffset
WORD 0
WORD 0
WORD OMSPG.FrameOffset.%anc

DEFINE OMSPG.FrameOffset.%anc
WORD OMSPG.FrameOffset

! Descriptor for FixData
DEFINE OMSPG.FixData
WORD 0
WORD 0
WORD OMSPG.FixData.%anc

DEFINE OMSPG.FixData.%anc
WORD OMSPG.FixData

! Pointer maps
DEFINE OMSPG.load.%map
WORD 12
WORD -36
WORD -32
WORD -72
WORD -68
WORD -108
WORD -104
WORD GC_END

DEFINE OMSPG.push.%map
WORD 12
WORD -36
WORD -32
WORD -72
WORD -68
WORD -108
WORD -104
WORD GC_END

DEFINE OMSPG.TypeTest.%map
WORD 12
WORD 20
WORD -24
WORD -20
WORD -60
WORD -56
WORD -96
WORD -92
WORD GC_END

DEFINE OMSPG.MulOp.%map
WORD 12
WORD 20
WORD -24
WORD -20
WORD -60
WORD -56
WORD -96
WORD -92
WORD -132
WORD -128
WORD GC_END

DEFINE OMSPG.DivOp.%map
WORD 16
WORD 24
WORD -24
WORD -20
WORD -60
WORD -56
WORD -96
WORD -92
WORD -132
WORD -128
WORD GC_END

DEFINE OMSPG.Set.%map
WORD 12
WORD 20
WORD -24
WORD -20
WORD -60
WORD -56
WORD -96
WORD -92
WORD GC_END

DEFINE OMSPG.In.%map
WORD 12
WORD 20
WORD -24
WORD -20
WORD -68
WORD -64
WORD GC_END

DEFINE OMSPG.StringRelation.%map
WORD 16
WORD 24
WORD -32
WORD -28
WORD -68
WORD -64
WORD GC_END

DEFINE OMSPG.StoreStruct.%map
WORD 12
WORD 20
WORD -40
WORD -36
WORD -76
WORD -72
WORD -96
WORD -100
WORD GC_END

DEFINE OMSPG.CopyString.%map
WORD 12
WORD 20
WORD -32
WORD -28
WORD -68
WORD -64
WORD -104
WORD -100
WORD GC_END

DEFINE OMSPG.VarParam.%map
WORD 12
WORD 20
WORD -28
WORD -24
WORD -64
WORD -60
WORD -80
WORD GC_END

DEFINE OMSPG.Close.%map
WORD 12
WORD -4
WORD -64
WORD -68
WORD GC_END

! End of file
