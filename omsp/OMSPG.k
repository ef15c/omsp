!! (SYMFILE #OMSPG 0x00030300 #OMSPG.%main 1 #OMSPG.Mod)
!! (CONST #WordSize* INTCONST 2)
!! (CONST #maxCox INTCONST 10000)
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
!! (TYPE #FixData !11 (POINTER))
!! (TARGET =11 !12 (RECORD #OMSPG.FixDataDesc 28 VOID
!!     (FIELD #adr 0 INTEGER)
!!     (FIELD #ofs 4 INTEGER)
!!     (FIELD #mno 8 INTEGER)
!!     (FIELD #isString 12 BOOLEAN)
!!     (FIELD #usedatc 16 INTEGER)
!!     (FIELD #usedatk 20 INTEGER)
!!     (FIELD #next 24 =11)))
!! (TYPE #FixDataDesc =12)
!! (TYPE #FixupCond !13 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN)))
!! (DEF ?14 #POFiles 6 #Rider (RECORD #POFiles.Rider 12 VOID
!!     (FIELD #eof* 0 BOOLEAN)
!!     (FIELD #res* 4 INTEGER)
!!     (FIELD #base 8 ?15 #POFiles 1 #File (POINTER))))
!! (TYPE #FixupAction !16 (PROC 4 VOID
!!     (VPARAM #R 12 =14)
!!     (PARAM #obj 20 =4)
!!     (PARAM #local 24 BOOLEAN)))
!! (TARGET =15 ?17 #POFiles 2 #FileDesc (RECORD #POFiles.FileDesc 68 VOID
!!     (FIELD #file 0 ?18 #Files 1 #File (POINTER))
!!     (FIELD #tmpName 4 ?19 #POFiles 4 ANON (ARRAY 32 CHAR))
!!     (FIELD #name 36 =19)))
!! (TARGET =18 ?20 #Files 2 #FileDesc (RECORD #Files.FileDesc 8 VOID
!!     (FIELD #file- 0 SYSTEM.LONGPTR)))
!! (GLOBAL #varsize #OMSPG.varsize INTEGER)
!! (GLOBAL #tdx #OMSPG.tdx INTEGER)
!! (GLOBAL #cox #OMSPG.cox INTEGER)
!! (GLOBAL #nofcos #OMSPG.nofcos INTEGER)
!! (GLOBAL #gvfix #OMSPG.gvfix =11)
!! (GLOBAL #cofix #OMSPG.cofix =11)
!! (GLOBAL #tddata #OMSPG.tddata !21 (ARRAY 160 INTEGER))
!! (GLOBAL #codata #OMSPG.codata !22 (ARRAY 10000 BYTE))
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
!! (PROCEDURE #CheckRTImport* 75 #OMSPG.CheckRTImport !30 (PROC 1 VOID
!!     (CPARAM #impid 12 =6)))
!! (PROCEDURE #RegisterRTproc* 83 #OMSPG.RegisterRTproc !31 (PROC 1 VOID
!!     (PARAM #p 12 =4)))
!! (PROCEDURE #OfsPTOS 101 #OMSPG.OfsPTOS !32 (PROC 3 VOID
!!     (PARAM #frameofs 12 INTEGER)
!!     (PARAM #returnofs 16 INTEGER)
!!     (PARAM #increment 20 BOOLEAN))
!!   (LOCAL #offset -4 INTEGER))
!! (PROCEDURE #adjFrmOfs 114 #OMSPG.adjFrmOfs !33 (PROC 1 VOID
!!     (PARAM #size 12 INTEGER)))
!! (PROCEDURE #SaveRegs 119 #OMSPG.SaveRegs !34 (PROC 1 VOID
!!     (PARAM #regs 12 SET))
!!   (LOCAL #n -4 INTEGER))
!! (PROCEDURE #RestoreRegs 127 #OMSPG.RestoreRegs !35 (PROC 1 VOID
!!     (PARAM #regs 12 SET))
!!   (LOCAL #n -4 INTEGER))
!! (PROCEDURE #EnableCode* 135 #OMSPG.EnableCode !36 (PROC 1 VOID
!!     (PARAM #e 12 BOOLEAN)))
!! (PROCEDURE #FixOne* 139 #OMSPG.FixOne !37 (PROC 1 VOID
!!     (PARAM #at 12 INTEGER)))
!! (PROCEDURE #FixLinkWith* 143 #OMSPG.FixLinkWith !38 (PROC 2 VOID
!!     (PARAM #L 12 INTEGER)
!!     (PARAM #dst 16 INTEGER))
!!   (LOCAL #L1 -4 INTEGER))
!! (PROCEDURE #FixLink* 154 #OMSPG.FixLink !39 (PROC 1 VOID
!!     (PARAM #L 12 INTEGER)))
!! (PROCEDURE #SetAllocationMode* 158 #OMSPG.SetAllocationMode !40 (PROC 1 VOID
!!     (PARAM #mode 12 BOOLEAN)))
!! (PROCEDURE #SetRIU* 165 #OMSPG.SetRIU !41 (PROC 1 VOID
!!     (PARAM #iu 12 SET)))
!! (PROCEDURE #SetPRU* 169 #OMSPG.SetPRU !42 (PROC 1 VOID
!!     (PARAM #pr 12 SET)))
!! (PROCEDURE #nextR 173 #OMSPG.nextR !43 (PROC 1 VOID
!!     (VPARAM #r 12 INTEGER)))
!! (PROCEDURE #LimitRegisters* 177 #OMSPG.LimitRegisters !44 (PROC 1 VOID
!!     (PARAM #savedregs 12 SET)))
!! (PROCEDURE #allocR* 182 #OMSPG.allocR !45 (PROC 1 VOID
!!     (PARAM #r 12 INTEGER)))
!! (PROCEDURE #AllocRP 187 #OMSPG.AllocRP !46 (PROC 1 INTEGER
!!     (PARAM #pr 12 INTEGER))
!!   (LOCAL #RH -4 INTEGER))
!! (PROCEDURE #AllocR* 199 #OMSPG.AllocR !47 (PROC 0 INTEGER))
!! (PROCEDURE #alloc 203 #OMSPG.alloc !48 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 INTEGER)))
!! (PROCEDURE #freeR* 208 #OMSPG.freeR !49 (PROC 1 VOID
!!     (PARAM #r 12 INTEGER)))
!! (PROCEDURE #freeSet 213 #OMSPG.freeSet !50 (PROC 1 VOID
!!     (PARAM #rs 12 SET))
!!   (LOCAL #r -4 INTEGER))
!! (PROCEDURE #free 220 #OMSPG.free !51 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #resultRegister* 224 #OMSPG.resultRegister !52 (PROC 2 VOID
!!     (VPARAM #res 12 =2)))
!! (PROCEDURE #CheckRegs* 229 #OMSPG.CheckRegs !53 (PROC 0 VOID))
!! (PROCEDURE #SetCC 235 #OMSPG.SetCC !54 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #n 20 INTEGER)))
!! (PROCEDURE #TypeChecked 239 #OMSPG.TypeChecked !55 (PROC 0 BOOLEAN))
!! (PROCEDURE #AssertionChecked* 243 #OMSPG.AssertionChecked !56 (PROC 0 BOOLEAN))
!! (PROCEDURE #GetFixData 247 #OMSPG.GetFixData !57 (PROC 4 =11
!!     (VPARAM #list 12 =11)
!!     (PARAM #adr 16 INTEGER)
!!     (PARAM #ofs 20 INTEGER)
!!     (PARAM #mno 24 INTEGER))
!!   (LOCAL #fd -4 =11))
!! (PROCEDURE #CheckWord 256 #OMSPG.CheckWord !58 (PROC 1 VOID
!!     (PARAM #val 12 INTEGER)))
!! (PROCEDURE #SetLastUsage 260 #OMSPG.SetLastUsage !59 (PROC 3 INTEGER
!!     (PARAM #base 12 CHAR)
!!     (VPARAM #fd 16 =11)
!!     (PARAM #at 20 INTEGER))
!!   (LOCAL #res -4 INTEGER))
!! (PROCEDURE #UpdateChain 270 #OMSPG.UpdateChain !60 (PROC 4 INTEGER
!!     (PARAM #base 12 CHAR)
!!     (PARAM #pos 16 INTEGER)
!!     (PARAM #val 20 INTEGER)
!!     (CPARAM #x 24 =2))
!!   (LOCAL #res -4 INTEGER)
!!   (LOCAL #o -8 =4)
!!   (LOCAL #fd -12 =11))
!! (PROCEDURE #GetOffset 290 #OMSPG.GetOffset !61 (PROC 2 INTEGER
!!     (VPARAM #x 12 =1))
!!   (LOCAL #res -4 INTEGER))
!! (PROCEDURE #CheckWritable* 300 #OMSPG.CheckWritable !62 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Trap 304 #OMSPG.Trap !63 (PROC 2 VOID
!!     (PARAM #cond 12 INTEGER)
!!     (PARAM #num 16 INTEGER))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #NilCheck 314 #OMSPG.NilCheck !64 (PROC 1 VOID
!!     (PARAM #a 12 BYTE))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #c -72 =2))
!! (PROCEDURE #load 325 #OMSPG.load !65 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 BYTE))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #pc1 -8 INTEGER)
!!   (LOCAL #bw -12 SET)
!!   (LOCAL #t -48 =2)
!!   (LOCAL #ti -84 =2)
!!   (LOCAL #sva -120 =2))
!! (PROCEDURE #setRAO 362 #OMSPG.setRAO !66 (PROC 6 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #i 16 =2)
!!     (PARAM #dst 24 BOOLEAN)
!!     (VPARAM #nba 28 SET)
!!     (VPARAM #bw 32 SET))
!!   (LOCAL #ti -36 =2))
!! (PROCEDURE #convertSize 387 #OMSPG.convertSize !67 (PROC 3 BOOLEAN
!!     (VPARAM #src 12 =2)
!!     (PARAM #t 20 =3))
!!   (LOCAL #tmp -1 BOOLEAN))
!! (PROCEDURE #PutDO 397 #OMSPG.PutDO !68 (PROC 5 VOID
!!     (PARAM #op 12 BYTE)
!!     (VPARAM #src 16 =2)
!!     (VPARAM #dst 24 =2))
!!   (LOCAL #bw -4 SET)
!!   (LOCAL #nba -8 SET)
!!   (LOCAL #tmp -9 BOOLEAN))
!! (PROCEDURE #PutSO 405 #OMSPG.PutSO !69 (PROC 3 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #sd 16 =2))
!!   (LOCAL #bw -4 SET)
!!   (LOCAL #nba -8 SET))
!! (PROCEDURE #push 413 #OMSPG.push !70 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #dsize 20 INTEGER))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #pc1 -8 INTEGER)
!!   (LOCAL #bw -12 SET)
!!   (LOCAL #t -48 =2)
!!   (LOCAL #ti -84 =2)
!!   (LOCAL #sva -120 =2))
!! (PROCEDURE #Adr* 449 #OMSPG.Adr !71 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #loadAdr 470 #OMSPG.loadAdr !72 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #pr 20 INTEGER)))
!! (PROCEDURE #pushAdr 474 #OMSPG.pushAdr !73 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #loadCond 478 #OMSPG.loadCond !74 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #loadTypTagAdr 490 #OMSPG.loadTypTagAdr !75 (PROC 2 BYTE
!!     (PARAM #T 12 =3)
!!     (PARAM #pr 16 INTEGER))
!!   (LOCAL #sva -36 =2))
!! (PROCEDURE #pushTypTagAdr 497 #OMSPG.pushTypTagAdr !76 (PROC 1 VOID
!!     (PARAM #T 12 =3))
!!   (LOCAL #sva -36 =2))
!! (PROCEDURE #MakeTypTagAdr 505 #OMSPG.MakeTypTagAdr !77 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #T 20 =3)))
!! (PROCEDURE #MakeConstItem* 510 #OMSPG.MakeConstItem !78 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #typ 20 =3)
!!     (PARAM #val 24 INTEGER)))
!! (DEF !79 (FLEX CHAR))
!! (PROCEDURE #stringFound 523 #OMSPG.stringFound !80 (PROC 3 BOOLEAN
!!     (CPARAM #str 12 =79)
!!     (VPARAM #fd 20 =11))
!!   (LOCAL #found -1 BOOLEAN)
!!   (LOCAL #i -8 INTEGER))
!! (PROCEDURE #Length* 538 #OMSPG.Length !81 (PROC 1 INTEGER
!!     (CPARAM #x 12 =2))
!!   (LOCAL #l -4 INTEGER))
!! (DEF !82 (FLEX CHAR))
!! (PROCEDURE #stringPut 548 #OMSPG.stringPut !83 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (CPARAM #str 20 =82)
!!     (PARAM #len 28 INTEGER))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #fd -8 =11))
!! (DEF !84 (FLEX CHAR))
!! (PROCEDURE #stringPop 562 #OMSPG.stringPop !85 (PROC 3 VOID
!!     (CPARAM #x 12 =2)
!!     (VPARAM #xs 16 =84))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #fd -8 =11))
!! (PROCEDURE #MakeStringItem* 571 #OMSPG.MakeStringItem !86 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #MakeConstObject* 575 #OMSPG.MakeConstObject !87 (PROC 1 VOID
!!     (VPARAM #obj 12 =4))
!!   (LOCAL #i -4 INTEGER))
!! (PROCEDURE #MakeItem* 582 #OMSPG.MakeItem !88 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #y 20 =4)
!!     (PARAM #curlev 24 INTEGER))
!!   (LOCAL #fd -4 =11))
!! (PROCEDURE #Field* 600 #OMSPG.Field !89 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #y 20 =4)))
!! (PROCEDURE #Index* 609 #OMSPG.Index !90 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #s -4 INTEGER)
!!   (LOCAL #lim -8 INTEGER)
!!   (LOCAL #t -44 =2)
!!   (LOCAL #typ -48 =3))
!! (PROCEDURE #DeRef* 655 #OMSPG.DeRef !91 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Q 664 #OMSPG.Q !92 (PROC 1 VOID
!!     (PARAM #T 12 =3)))
!! (PROCEDURE #BuildTD* 672 #OMSPG.BuildTD !93 (PROC 1 VOID
!!     (PARAM #T 12 =3))
!!   (LOCAL #k -4 INTEGER)
!!   (LOCAL #s -8 INTEGER))
!! (PROCEDURE #TypeTest* 684 #OMSPG.TypeTest !94 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #T 20 =3)
!!     (PARAM #varpar 24 BOOLEAN)
!!     (PARAM #isguard 28 BOOLEAN))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #pt -72 =2)
!!   (LOCAL #tt -108 =2))
!! (PROCEDURE #SetVector* 705 #OMSPG.SetVector !95 (PROC 2 VOID
!!     (PARAM #n 12 BYTE)
!!     (VPARAM #h 16 =4)))
!! (PROCEDURE #Not* 712 #OMSPG.Not !96 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -4 INTEGER))
!! (PROCEDURE #PutJFix 719 #OMSPG.PutJFix !97 (PROC 2 VOID
!!     (PARAM #cond 12 BYTE)
!!     (PARAM #adr 16 INTEGER))
!!   (LOCAL #offset -4 INTEGER))
!! (PROCEDURE #And1* 725 #OMSPG.And1 !98 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #And2* 732 #OMSPG.And2 !99 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Or1* 738 #OMSPG.Or1 !100 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Or2* 745 #OMSPG.Or2 !101 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Neg* 753 #OMSPG.Neg !102 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #PrepCall* 767 #OMSPG.PrepCall !103 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #r 20 SET)
!!     (VPARAM #or 24 SET)
!!     (VPARAM #am 28 BOOLEAN)))
!! (PROCEDURE #getParSize 780 #OMSPG.getParSize !104 (PROC 1 INTEGER
!!     (PARAM #typ 12 =3))
!!   (LOCAL #par -4 =4)
!!   (LOCAL #n -8 INTEGER)
!!   (LOCAL #size -12 INTEGER))
!! (PROCEDURE #Call* 794 #OMSPG.Call !105 (PROC 5 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #r 20 SET)
!!     (PARAM #or 24 SET)
!!     (PARAM #am 28 BOOLEAN))
!!   (LOCAL #rr -36 =2)
!!   (LOCAL #t -72 =2)
!!   (LOCAL #s -76 INTEGER))
!! (PROCEDURE #AddOp* 823 #OMSPG.AddOp !106 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #tmp -1 BOOLEAN))
!! (PROCEDURE #MulOp* 842 #OMSPG.MulOp !107 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #p -72 =2)
!!   (LOCAL #x0 -108 =2)
!!   (LOCAL #y0 -144 =2)
!!   (LOCAL #r -148 SET)
!!   (LOCAL #or -152 SET)
!!   (LOCAL #pau -153 BOOLEAN))
!! (PROCEDURE #DivOp* 857 #OMSPG.DivOp !108 (PROC 5 VOID
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
!! (PROCEDURE #shift 886 #OMSPG.shift !109 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #i -4 INTEGER)
!!   (LOCAL #pb -8 INTEGER)
!!   (LOCAL #pf -12 INTEGER)
!!   (LOCAL #t -48 =2))
!! (PROCEDURE #Rla* 898 #OMSPG.Rla !110 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Rra* 902 #OMSPG.Rra !111 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #StringOp* 907 #OMSPG.StringOp !112 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #xs -1024 !113 (ARRAY 1024 CHAR))
!!   (LOCAL #ys -2048 =113)
!!   (LOCAL #ix -2052 INTEGER)
!!   (LOCAL #iy -2056 INTEGER))
!! (PROCEDURE #Singleton* 921 #OMSPG.Singleton !114 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #y -36 =2))
!! (PROCEDURE #Set* 926 #OMSPG.Set !115 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #p -36 =2)
!!   (LOCAL #x0 -72 =2)
!!   (LOCAL #y0 -108 =2)
!!   (LOCAL #r -112 SET)
!!   (LOCAL #or -116 SET)
!!   (LOCAL #pau -117 BOOLEAN))
!! (PROCEDURE #In* 938 #OMSPG.In !116 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #c -36 =2)
!!   (LOCAL #pc0 -40 INTEGER)
!!   (LOCAL #pc1 -44 INTEGER)
!!   (LOCAL #t -80 =2))
!! (PROCEDURE #SetOp* 951 #OMSPG.SetOp !117 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #xset -4 SET)
!!   (LOCAL #yset -8 SET))
!! (PROCEDURE #AdjustSize 974 #OMSPG.AdjustSize !118 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #st -4 =3))
!! (PROCEDURE #IntCompare* 980 #OMSPG.IntCompare !119 (PROC 6 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #z 28 =2)))
!! (PROCEDURE #IntRelation* 987 #OMSPG.IntRelation !120 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2)))
!! (PROCEDURE #StringRelation* 1002 #OMSPG.StringRelation !121 (PROC 5 VOID
!!     (PARAM #op 12 INTEGER)
!!     (VPARAM #x0 16 =2)
!!     (VPARAM #y0 24 =2))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #tbf0 -8 INTEGER)
!!   (LOCAL #x -44 =2)
!!   (LOCAL #y -80 =2))
!! (PROCEDURE #StrToChar* 1021 #OMSPG.StrToChar !122 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #sc -2 !123 (ARRAY 2 CHAR)))
!! (PROCEDURE #StoreConstInt 1027 #OMSPG.StoreConstInt !124 (PROC 3 VOID
!!     (PARAM #adr 12 INTEGER)
!!     (PARAM #size 16 INTEGER)
!!     (PARAM #val 20 INTEGER))
!!   (LOCAL #i -4 INTEGER))
!! (PROCEDURE #Store* 1035 #OMSPG.Store !125 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #adr -4 INTEGER)
!!   (LOCAL #val -8 INTEGER))
!! (PROCEDURE #distance 1050 #OMSPG.distance !126 (PROC 3 BOOLEAN
!!     (CPARAM #x 12 =2)
!!     (CPARAM #y 16 =2)
!!     (VPARAM #d 20 INTEGER))
!!   (LOCAL #res -1 BOOLEAN)
!!   (LOCAL #ox -8 INTEGER)
!!   (LOCAL #oy -12 INTEGER))
!! (PROCEDURE #StoreStruct* 1065 #OMSPG.StoreStruct !127 (PROC 4 VOID
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
!! (PROCEDURE #CopyString* 1096 #OMSPG.CopyString !128 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2))
!!   (LOCAL #len -4 INTEGER)
!!   (LOCAL #pc0 -8 INTEGER)
!!   (LOCAL #i -12 INTEGER)
!!   (LOCAL #dadr -16 INTEGER)
!!   (LOCAL #sadr -20 INTEGER)
!!   (LOCAL #t -56 =2)
!!   (LOCAL #ti -92 =2)
!!   (LOCAL #x1 -128 =2)
!!   (LOCAL #ys -1152 !129 (ARRAY 1024 CHAR)))
!! (PROCEDURE #OpenArrayParam* 1126 #OMSPG.OpenArrayParam !130 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #ti -72 =2))
!! (PROCEDURE #VarParam* 1142 #OMSPG.VarParam !131 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4))
!!   (LOCAL #xmd -4 INTEGER)
!!   (LOCAL #t -40 =2)
!!   (LOCAL #ti -76 =2)
!!   (LOCAL #xtyp -80 =3))
!! (PROCEDURE #ValueParam* 1173 #OMSPG.ValueParam !132 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4)))
!! (PROCEDURE #StringParam* 1177 #OMSPG.StringParam !133 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #par 20 =4))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #For0* 1189 #OMSPG.For0 !134 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #For1* 1193 #OMSPG.For1 !135 (PROC 9 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #z 28 =2)
!!     (VPARAM #w 36 =2)
!!     (VPARAM #L 44 INTEGER)))
!! (PROCEDURE #For2* 1202 #OMSPG.For2 !136 (PROC 6 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #w 28 =2)))
!! (PROCEDURE #Here* 1209 #OMSPG.Here !137 (PROC 0 INTEGER))
!! (PROCEDURE #FJump* 1213 #OMSPG.FJump !138 (PROC 1 VOID
!!     (VPARAM #L 12 INTEGER)))
!! (PROCEDURE #CFJump* 1217 #OMSPG.CFJump !139 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #BJump* 1224 #OMSPG.BJump !140 (PROC 1 VOID
!!     (PARAM #L 12 INTEGER)))
!! (PROCEDURE #CBJump* 1228 #OMSPG.CBJump !141 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #L 20 INTEGER)))
!! (PROCEDURE #Fixup* 1235 #OMSPG.Fixup !142 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Enter* 1239 #OMSPG.Enter !143 (PROC 3 VOID
!!     (PARAM #size 12 INTEGER)
!!     (PARAM #int 16 BOOLEAN)
!!     (PARAM #savedregs 20 SET))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #tsp -72 =2))
!! (PROCEDURE #Return* 1252 #OMSPG.Return !144 (PROC 6 VOID
!!     (PARAM #form 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (PARAM #size 24 INTEGER)
!!     (PARAM #int 28 BOOLEAN)
!!     (PARAM #savedregs 32 SET))
!!   (LOCAL #t -36 =2)
!!   (LOCAL #rr -72 =2))
!! (PROCEDURE #Increment* 1271 #OMSPG.Increment !145 (PROC 5 VOID
!!     (PARAM #upordown 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #op -1 BYTE))
!! (PROCEDURE #Include* 1280 #OMSPG.Include !146 (PROC 5 VOID
!!     (PARAM #inorex 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #op -1 BYTE)
!!   (LOCAL #z -40 =2)
!!   (LOCAL #t -76 =2))
!! (PROCEDURE #Assert* 1288 #OMSPG.Assert !147 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #cond -4 INTEGER)
!!   (LOCAL #pc0 -8 INTEGER))
!! (PROCEDURE #Copy* 1303 #OMSPG.Copy !148 (PROC 6 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)
!!     (VPARAM #z 28 =2))
!!   (LOCAL #pc0 -4 INTEGER)
!!   (LOCAL #pc1 -8 INTEGER)
!!   (LOCAL #d -12 INTEGER)
!!   (LOCAL #t -48 =2)
!!   (LOCAL #oneReg -49 BOOLEAN))
!! (PROCEDURE #LogicalSR* 1322 #OMSPG.LogicalSR !149 (PROC 3 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2))
!!   (LOCAL #op -1 BYTE)
!!   (LOCAL #t -40 =2))
!! (PROCEDURE #LogicalSROnExit* 1329 #OMSPG.LogicalSROnExit !150 (PROC 3 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2))
!!   (LOCAL #op -1 BYTE)
!!   (LOCAL #t -40 =2))
!! (PROCEDURE #Abs* 1338 #OMSPG.Abs !151 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #pc -4 INTEGER)
!!   (LOCAL #t -40 =2))
!! (PROCEDURE #Odd* 1347 #OMSPG.Odd !152 (PROC 2 VOID
!!     (VPARAM #x 12 =2))
!!   (LOCAL #t -36 =2))
!! (PROCEDURE #Ord* 1352 #OMSPG.Ord !153 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Len* 1356 #OMSPG.Len !154 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #ClrC* 1368 #OMSPG.ClrC !155 (PROC 0 VOID))
!! (PROCEDURE #Nop* 1372 #OMSPG.Nop !156 (PROC 0 VOID))
!! (PROCEDURE #Swpb* 1376 #OMSPG.Swpb !157 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Shift* 1380 #OMSPG.Shift !158 (PROC 5 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2)))
!! (PROCEDURE #Rotate* 1387 #OMSPG.Rotate !159 (PROC 3 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2)))
!! (PROCEDURE #Logical* 1391 #OMSPG.Logical !160 (PROC 5 VOID
!!     (PARAM #fct 12 INTEGER)
!!     (VPARAM #x 16 =2)
!!     (VPARAM #y 24 =2))
!!   (LOCAL #op -1 BYTE))
!! (PROCEDURE #ADC* 1398 #OMSPG.ADC !161 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #SBC* 1402 #OMSPG.SBC !162 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Bit* 1406 #OMSPG.Bit !163 (PROC 4 VOID
!!     (VPARAM #x 12 =2)
!!     (VPARAM #y 20 =2)))
!! (PROCEDURE #Condition* 1411 #OMSPG.Condition !164 (PROC 2 VOID
!!     (VPARAM #x 12 =2)))
!! (PROCEDURE #Val* 1415 #OMSPG.Val !165 (PROC 3 VOID
!!     (VPARAM #x 12 =2)
!!     (PARAM #t 20 =3)))
!! (PROCEDURE #Open* 1422 #OMSPG.Open !166 (PROC 0 VOID)
!!   (LOCAL #i -4 INTEGER))
!! (PROCEDURE #SetDataSize* 1433 #OMSPG.SetDataSize !167 (PROC 1 VOID
!!     (PARAM #dc 12 INTEGER)))
!! (PROCEDURE #Header* 1437 #OMSPG.Header !168 (PROC 0 VOID))
!! (PROCEDURE #WriteWord 1441 #OMSPG.WriteWord !169 (PROC 3 VOID
!!     (VPARAM #R 12 =14)
!!     (PARAM #w 20 INTEGER)))
!! (PROCEDURE #procFixupCond 1445 #OMSPG.procFixupCond !170 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #handlerFixupCond 1453 #OMSPG.handlerFixupCond !171 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #varFixupCond 1461 #OMSPG.varFixupCond !172 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #constFixupCond 1469 #OMSPG.constFixupCond !173 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #typFixupCond 1480 #OMSPG.typFixupCond !174 (PROC 2 BOOLEAN
!!     (PARAM #obj 12 =4)
!!     (PARAM #local 16 BOOLEAN))
!!   (LOCAL #res -1 BOOLEAN))
!! (PROCEDURE #objFixupAction 1488 #OMSPG.objFixupAction !175 (PROC 4 VOID
!!     (VPARAM #R 12 =14)
!!     (PARAM #obj 20 =4)
!!     (PARAM #local 24 BOOLEAN)))
!! (PROCEDURE #constFixupAction 1494 #OMSPG.constFixupAction !176 (PROC 4 VOID
!!     (VPARAM #R 12 =14)
!!     (PARAM #obj 20 =4)
!!     (PARAM #local 24 BOOLEAN)))
!! (PROCEDURE #typFixupAction 1503 #OMSPG.typFixupAction !177 (PROC 4 VOID
!!     (VPARAM #R 12 =14)
!!     (PARAM #obj 20 =4)
!!     (PARAM #local 24 BOOLEAN)))
!! (PROCEDURE #WriteFixup 1509 #OMSPG.WriteFixup !178 (PROC 6 VOID
!!     (VPARAM #R 12 =14)
!!     (PARAM #cond 20 =13)
!!     (PARAM #action 28 =16))
!!   (LOCAL #obj -4 =4)
!!   (LOCAL #obj2 -8 =4))
!! (PROCEDURE #Close* 1531 #OMSPG.Close !179 (PROC 4 VOID
!!     (VPARAM #modid 12 =6)
!!     (PARAM #key 16 INTEGER)
!!     (PARAM #nofent 20 INTEGER)
!!     (PARAM #codeseg 24 BYTE))
!!   (LOCAL #obj -4 =4)
!!   (LOCAL #i -8 INTEGER)
!!   (LOCAL #j -12 INTEGER)
!!   (LOCAL #nofimps -16 INTEGER)
!!   (LOCAL #flashSize -20 INTEGER)
!!   (LOCAL #fd -24 =11)
!!   (LOCAL #name -56 =6)
!!   (LOCAL #F -60 =15)
!!   (LOCAL #R -72 =14))
!! (PROCEDURE #initConst 1626 #OMSPG.initConst !180 (PROC 3 VOID
!!     (VPARAM #c 12 =2)
!!     (PARAM #v 20 INTEGER)))
!! (PROCEDURE #initReg 1631 #OMSPG.initReg !181 (PROC 3 VOID
!!     (VPARAM #c 12 =2)
!!     (PARAM #r 20 BYTE)))
!! (CHKSUM 0x0f07326b)
!! 
MODULE OMSPG 0x0f07326b 1642
IMPORT POFiles 0x49659f59
IMPORT OMSPA 0x3c6ac8c1
IMPORT OMSPS 0x208dfe13
IMPORT OMSPB 0x5056bc71
ENDHDR

PROC OMSPG.CheckRTImport 0 5 0x00100001
!   PROCEDURE CheckRTImport*(impid: S.Ident);
LINE 75
!     IF impid = "Traps" THEN curImport := 1
LINE 77
CONST 6
GLOBAL OMSPG.%1
CONST 32
LDLW 12
GLOBAL COMPARE
CALLW 4
JNEQZ L70
CONST 1
STGW OMSPG.curImport
RETURN
LABEL L70
!     ELSIF impid = "Arith" THEN curImport := 2
LINE 78
CONST 6
GLOBAL OMSPG.%2
CONST 32
LDLW 12
GLOBAL COMPARE
CALLW 4
JNEQZ L72
CONST 2
STGW OMSPG.curImport
RETURN
LABEL L72
!     ELSE curImport := 0
LINE 79
CONST 0
STGW OMSPG.curImport
RETURN
END

PROC OMSPG.RegisterRTproc 0 5 0x00100001
!   PROCEDURE RegisterRTproc*(p: B.Object);
LINE 83
!   BEGIN IF curImport = 1 THEN
LINE 84
LDGW OMSPG.curImport
CONST 1
JNEQ L75
!       IF p.name = "ArrayOutOfRange" THEN traps[1] := p
LINE 85
CONST 16
GLOBAL OMSPG.%3
LDLW 12
NCHECK 85
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L78
LDLW 12
GLOBAL OMSPG.traps
STNW 4
RETURN
LABEL L78
!       ELSIF p.name = "TypeGuardFailure" THEN traps[2] := p
LINE 86
CONST 17
GLOBAL OMSPG.%4
LDLW 12
NCHECK 86
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L80
LDLW 12
GLOBAL OMSPG.traps
STNW 8
RETURN
LABEL L80
!       ELSIF p.name = "CopyOverflow" THEN traps[3] := p
LINE 87
CONST 13
GLOBAL OMSPG.%5
LDLW 12
NCHECK 87
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L82
LDLW 12
GLOBAL OMSPG.traps
STNW 12
RETURN
LABEL L82
!       ELSIF p.name = "AccessViaNILPointer" THEN traps[4] := p
LINE 88
CONST 20
GLOBAL OMSPG.%6
LDLW 12
NCHECK 88
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L84
LDLW 12
GLOBAL OMSPG.traps
STNW 16
RETURN
LABEL L84
!       ELSIF p.name = "IllegalProcedureCall" THEN traps[5] := p
LINE 89
CONST 21
GLOBAL OMSPG.%7
LDLW 12
NCHECK 89
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L86
LDLW 12
GLOBAL OMSPG.traps
STNW 20
RETURN
LABEL L86
!       ELSIF p.name = "DivisionByZero" THEN traps[6] := p
LINE 90
CONST 15
GLOBAL OMSPG.%8
LDLW 12
NCHECK 90
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L88
LDLW 12
GLOBAL OMSPG.traps
STNW 24
RETURN
LABEL L88
!       ELSIF p.name = "AssertionViolated" THEN traps[7] := p
LINE 91
CONST 18
GLOBAL OMSPG.%9
LDLW 12
NCHECK 91
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L92
LDLW 12
GLOBAL OMSPG.traps
STNW 28
RETURN
LABEL L75
!     ELSIF curImport = 2 THEN
LINE 93
LDGW OMSPG.curImport
CONST 2
JNEQ L92
!       IF p.name = "mul16" THEN arith[0] := p
LINE 94
CONST 6
GLOBAL OMSPG.%10
LDLW 12
NCHECK 94
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L95
LDLW 12
STGW OMSPG.arith
RETURN
LABEL L95
!       ELSIF p.name = "divmod16" THEN arith[1] := p
LINE 95
CONST 9
GLOBAL OMSPG.%11
LDLW 12
NCHECK 95
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L97
LDLW 12
GLOBAL OMSPG.arith
STNW 4
RETURN
LABEL L97
!       ELSIF p.name = "set" THEN arith[2] := p
LINE 96
CONST 4
GLOBAL OMSPG.%12
LDLW 12
NCHECK 96
CONST 28
OFFSET
CONST 32
SWAP
GLOBAL COMPARE
CALLW 4
JNEQZ L92
LDLW 12
GLOBAL OMSPG.arith
STNW 8
LABEL L92
RETURN
END

PROC OMSPG.OfsPTOS 4 5 0
!   PROCEDURE OfsPTOS(frameofs, returnofs: INTEGER; increment: BOOLEAN);
LINE 101
!     IF increment THEN
LINE 104
LDLC 20
JEQZ L102
!       INC(frameofs, frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos MOD 10000H);
LINE 105
LOCAL 12
DUP 0
LOADW
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 105
INDEXD
LDNW 4
CONST 65536
MOD
PLUS
SWAP
STOREW
!       INC(returnofs, frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos DIV 10000H);
LINE 106
LOCAL 16
DUP 0
LOADW
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 106
INDEXD
LDNW 4
CONST 65536
DIV
PLUS
SWAP
STOREW
LABEL L102
!     END; offset := returnofs*10000H + frameofs;
LINE 107
LDLW 16
CONST 65536
TIMES
LDLW 12
PLUS
STLW -4
!     IF offset # frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos THEN
LINE 108
LDLW -4
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 108
INDEXD
LDNW 4
JEQ L105
!       frmOfsSegs.Segs[frmOfsSegs.NofSegs].end := mcode.pc;
LINE 109
LDGW OMSPG.mcode
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 109
INDEXD
STOREW
!       INC(frmOfsSegs.NofSegs); frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos := offset
LINE 110
LDGW OMSPG.frmOfsSegs
INC
STGW OMSPG.frmOfsSegs
LDLW -4
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 110
INDEXD
STNW 4
LABEL L105
RETURN
END

PROC OMSPG.adjFrmOfs 0 4 0
!   PROCEDURE adjFrmOfs(size: INTEGER);
LINE 114
!   BEGIN INC(frame, size);
LINE 115
GLOBAL OMSPG.frame
DUP 0
LOADW
LDLW 12
PLUS
SWAP
STOREW
!     OfsPTOS(size DIV WordSize, size DIV WordSize, TRUE)
LINE 116
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
LINE 119
!     IF regs # {} THEN
LINE 122
LDLW 12
JEQZ L108
!       n := A.PushRegs(mcode, regs); adjFrmOfs(n*WordSize)
LINE 123
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
LABEL L108
RETURN
END

PROC OMSPG.RestoreRegs 4 4 0
!   PROCEDURE RestoreRegs(regs: SET);
LINE 127
!     IF regs # {} THEN
LINE 130
LDLW 12
JEQZ L111
!       n := A.PopRegs(mcode, regs); adjFrmOfs(-n*WordSize)
LINE 131
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
LABEL L111
RETURN
END

PROC OMSPG.EnableCode 0 2 0
!   PROCEDURE EnableCode*(e: BOOLEAN);
LINE 135
!   BEGIN A.SetEnabled(e)
LINE 136
LDLC 12
ALIGNC
GLOBAL OMSPA.SetEnabled
CALL 1
RETURN
END

PROC OMSPG.FixOne 0 4 0
!   PROCEDURE FixOne*(at: INTEGER);
LINE 139
!   BEGIN A.FixOne(mcode, at)
LINE 140
LDLW 12
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.FixOne
CALL 3
RETURN
END

PROC OMSPG.FixLinkWith 4 5 0
!   PROCEDURE FixLinkWith*(L, dst: INTEGER);
LINE 143
!     IF A.enabled THEN
LINE 146
LDGC OMSPA.enabled
JEQZ L114
LABEL L115
!       WHILE L # 0 DO L1 := L - (mcode.code[L+1] MOD ORD({2})*ORD({8}) + mcode.code[L])*2;
LINE 147
LDLW 12
JEQZ L114
LDLW 12
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW 12
INC
CONST 32000
BOUND 147
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
BOUND 147
OFFSET
LOADC
PLUS
CONST 2
TIMES
MINUS
STLW -4
!         A.fix(mcode, L, dst-L-2);
LINE 148
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
LINE 149
LDLW 12
LDLW -4
JNEQ L120
CONST 0
STLW 12
JUMP L115
LABEL L120
LDLW -4
STLW 12
JUMP L115
LABEL L114
RETURN
END

PROC OMSPG.FixLink 0 3 0
!   PROCEDURE FixLink*(L: INTEGER);
LINE 154
!   BEGIN FixLinkWith(L, mcode.pc)
LINE 155
LDGW OMSPG.mcode
LDLW 12
GLOBAL OMSPG.FixLinkWith
CALL 2
RETURN
END

PROC OMSPG.SetAllocationMode 0 2 0
!   PROCEDURE SetAllocationMode*(mode: BOOLEAN);
LINE 158
!   BEGIN AllocUp := mode;
LINE 159
LDLC 12
STGC OMSPG.AllocUp
!     IF AllocUp THEN RL := 16;  RB := A.CG2 + 1
LINE 160
LDGC OMSPG.AllocUp
JEQZ L123
CONST 16
STGW OMSPG.RL
CONST 4
STGW OMSPG.RB
RETURN
LABEL L123
!     ELSE RL := A.CG2;  RB := 15
LINE 161
CONST 3
STGW OMSPG.RL
CONST 15
STGW OMSPG.RB
RETURN
END

PROC OMSPG.SetRIU 0 2 0
!   PROCEDURE SetRIU*(iu: SET);
LINE 165
!   BEGIN RIU := iu
LINE 166
LDLW 12
STGW OMSPG.RIU
RETURN
END

PROC OMSPG.SetPRU 0 2 0
!   PROCEDURE SetPRU*(pr: SET);
LINE 169
!   BEGIN PRU := pr
LINE 170
LDLW 12
STGW OMSPG.PRU
RETURN
END

PROC OMSPG.nextR 0 3 0x00100001
!   PROCEDURE nextR(VAR r: INTEGER);
LINE 173
!   BEGIN IF AllocUp THEN INC(r) ELSE DEC(r) END
LINE 174
LDGC OMSPG.AllocUp
JEQZ L126
LDLW 12
DUP 0
LOADW
INC
SWAP
STOREW
RETURN
LABEL L126
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
LINE 177
!   BEGIN IF savedregs * {0..3, 16..31} # {} THEN S.Mark("registers out of range"); savedregs := {4..15} END;
LINE 178
LDLW 12
CONST -65521
BITAND
JEQZ L129
CONST 23
GLOBAL OMSPG.%13
GLOBAL OMSPS.Mark
CALL 2
CONST 65520
STLW 12
LABEL L129
!     RIU :=  RIU + ({0..15} - savedregs) (*mark non saved registers as not available*)
LINE 179
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
LINE 182
!     IF RIU*{r} = {} THEN INCL(RIU, r); INCL(PRU, r) ELSE S.Mark("reg already allocated") END
LINE 184
LDGW OMSPG.RIU
CONST 1
LDLW 12
CONST 32
BOUND 184
LSL
BITAND
JNEQZ L132
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLW 12
CONST 32
BOUND 184
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
BOUND 184
LSL
BITOR
SWAP
STOREW
RETURN
LABEL L132
CONST 22
GLOBAL OMSPG.%14
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.AllocRP 4 4 0
!   PROCEDURE AllocRP(pr: INTEGER): INTEGER;
LINE 187
!     IF pr # 0FFH THEN RH := pr
LINE 190
LDLW 12
CONST 255
JEQ L139
LDLW 12
STLW -4
JUMP L136
LABEL L139
!     ELSE RH := RB; WHILE (RIU*{RH} # {}) & (RH # RL) DO nextR(RH) END
LINE 191
LDGW OMSPG.RB
STLW -4
LABEL L134
LDGW OMSPG.RIU
CONST 1
LDLW -4
CONST 32
BOUND 191
LSL
BITAND
JEQZ L136
LDLW -4
LDGW OMSPG.RL
JEQ L136
LOCAL -4
GLOBAL OMSPG.nextR
CALL 1
JUMP L134
LABEL L136
!     IF RH = RL THEN S.Mark("register stack overflow"); RH := 8 END;
LINE 193
LDLW -4
LDGW OMSPG.RL
JNEQ L142
CONST 24
GLOBAL OMSPG.%15
GLOBAL OMSPS.Mark
CALL 2
CONST 8
STLW -4
LABEL L142
!     allocR(RH); rh.reg := RH
LINE 194
LDLW -4
GLOBAL OMSPG.allocR
CALL 1
LDLW -4
CONVNC
STGC OMSPG.rh
!     RETURN RH
LINE 196
LDLW -4
RETURN
END

PROC OMSPG.AllocR 0 2 0
!   PROCEDURE AllocR*(): INTEGER;
LINE 199
!     RETURN AllocRP(0FFH)
LINE 200
CONST 255
GLOBAL OMSPG.AllocRP
CALLW 1
RETURN
END

PROC OMSPG.alloc 0 3 0x00100001
!   PROCEDURE alloc(VAR x: Item; pr: INTEGER); (*allocate a temporary register to the item*)
LINE 203
!     x.reg := AllocRP(pr); x.am := A.Register; x.ofs := 0; x.tmp := TRUE
LINE 205
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
LINE 208
!     IF r IN RIU THEN EXCL(RIU, r) ELSE S.Mark("reg wild free") END
LINE 210
LDGW OMSPG.RIU
CONST 1
LDLW 12
CONST 32
BOUND 210
LSL
BITAND
JEQZ L145
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLW 12
CONST 32
BOUND 210
LSL
BITNOT
BITAND
SWAP
STOREW
RETURN
LABEL L145
CONST 14
GLOBAL OMSPG.%16
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.freeSet 4 4 0
!   PROCEDURE freeSet(rs: SET);
LINE 213
!   BEGIN IF rs # {} THEN
LINE 215
LDLW 12
JEQZ L148
!     FOR r := 0 TO 15 DO IF rs*{r} # {} THEN freeR(r) END END
LINE 216
CONST 0
STLW -4
LABEL L149
LDLW -4
CONST 15
JGT L148
LDLW 12
CONST 1
LDLW -4
CONST 32
BOUND 216
LSL
BITAND
JEQZ L153
LDLW -4
GLOBAL OMSPG.freeR
CALL 1
LABEL L153
INCL -4
JUMP L149
LABEL L148
RETURN
END

PROC OMSPG.free 0 3 0x00100001
!   PROCEDURE free(VAR x: Item);
LINE 220
!   BEGIN IF x.tmp THEN freeR(x.reg); x.tmp := FALSE END
LINE 221
LDLW 12
CONST 33
LDIC
JEQZ L156
LDLW 12
LOADC
GLOBAL OMSPG.freeR
CALL 1
CONST 0
LDLW 12
CONST 33
STIC
LABEL L156
RETURN
END

PROC OMSPG.resultRegister 0 3 0x00100001
!   PROCEDURE resultRegister*(VAR res: Item);
LINE 224
!     IF AllocUp THEN res := r4 ELSE res := r15 END
LINE 226
LDGC OMSPG.AllocUp
JEQZ L160
LDLW 16
GLOBAL OMSPG.Item
JEQ L161
ERROR E_ASSIGN 226
LABEL L161
LDLW 12
GLOBAL OMSPG.r4
CONST 36
FIXCOPY
RETURN
LABEL L160
LDLW 16
GLOBAL OMSPG.Item
JEQ L158
ERROR E_ASSIGN 226
LABEL L158
LDLW 12
GLOBAL OMSPG.r15
CONST 36
FIXCOPY
RETURN
END

PROC OMSPG.CheckRegs 0 3 0
!   PROCEDURE CheckRegs*;
LINE 229
!   BEGIN IF RIU # VRS THEN S.Mark("Reg Stack"); RIU := VRS END;
LINE 230
LDGW OMSPG.RIU
LDGW OMSPG.VRS
JEQ L164
CONST 10
GLOBAL OMSPG.%17
GLOBAL OMSPS.Mark
CALL 2
LDGW OMSPG.VRS
STGW OMSPG.RIU
LABEL L164
!     IF mcode.pc >= A.maxCode - 40 THEN S.Mark("program too long") END ;
LINE 231
LDGW OMSPG.mcode
CONST 31960
JLT L167
CONST 17
GLOBAL OMSPG.%18
GLOBAL OMSPS.Mark
CALL 2
LABEL L167
!     IF frame # vframe THEN S.Mark("frame error"); frame := vframe END
LINE 232
LDGW OMSPG.frame
LDGW OMSPG.vframe
JEQ L170
CONST 12
GLOBAL OMSPG.%19
GLOBAL OMSPS.Mark
CALL 2
LDGW OMSPG.vframe
STGW OMSPG.frame
LABEL L170
RETURN
END

PROC OMSPG.SetCC 0 3 0x00100001
!   PROCEDURE SetCC(VAR x: Item; n: INTEGER);
LINE 235
!   BEGIN x.mode := Cond; x.a := 0; x.b := 0; x.c := n
LINE 236
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
LINE 239
!   RETURN traps[2] # NIL
LINE 240
GLOBAL OMSPG.traps
LDNW 8
CONST 0
NEQ
RETURN
END

PROC OMSPG.AssertionChecked 0 3 0
!   PROCEDURE AssertionChecked*(): BOOLEAN;
LINE 243
!   RETURN traps[7] # NIL
LINE 244
GLOBAL OMSPG.traps
LDNW 28
CONST 0
NEQ
RETURN
END

PROC OMSPG.GetFixData 4 3 0x00110001
!   PROCEDURE GetFixData(VAR list: FixData; adr, ofs, mno: INTEGER): FixData;
LINE 247
!   BEGIN ASSERT(LSR(adr, 16) = 0); ASSERT((mno >= 0) & (mno <= 64)); fd := list;
LINE 249
LDLW 16
CONST 16
LSR
JEQZ L172
CONST 0
CONST 249
GLOBAL EASSERT
CALL 2
LABEL L172
LDLW 24
JLTZ L173
LDLW 24
CONST 64
JLEQ L174
LABEL L173
CONST 0
CONST 249
GLOBAL EASSERT
CALL 2
LABEL L174
LDLW 12
LOADW
STLW -4
LABEL L176
!     WHILE (fd # NIL) & ((fd.adr # adr) OR (fd.ofs # ofs) OR (fd.mno # mno)) DO fd := fd.next END;
LINE 250
LDLW -4
JEQZ L178
LDLW -4
NCHECK 250
LOADW
LDLW 16
JNEQ L177
LDLW -4
NCHECK 250
LDNW 4
LDLW 20
JNEQ L177
LDLW -4
NCHECK 250
LDNW 8
LDLW 24
JEQ L178
LABEL L177
LDLW -4
NCHECK 250
LDNW 24
STLW -4
JUMP L176
LABEL L178
!     IF fd = NIL THEN NEW(fd); fd.adr := adr; fd.ofs := ofs; fd.mno := mno; fd.next := list; list := fd END
LINE 251
LDLW -4
JNEQZ L184
CONST 28
GLOBAL OMSPG.FixDataDesc
GLOBAL NEW
CALLW 2
STLW -4
LDLW 16
LDLW -4
NCHECK 251
STOREW
LDLW 20
LDLW -4
NCHECK 251
STNW 4
LDLW 24
LDLW -4
NCHECK 251
STNW 8
LDLW 12
LOADW
LDLW -4
NCHECK 251
STNW 24
LDLW -4
LDLW 12
STOREW
LABEL L184
!     RETURN fd
LINE 253
LDLW -4
RETURN
END

PROC OMSPG.CheckWord 0 3 0
!   PROCEDURE CheckWord(val: INTEGER);
LINE 256
!   BEGIN ASSERT((val >= -ORD({15})) & (val < ORD({16})))
LINE 257
LDLW 12
CONST -32768
JLT L185
LDLW 12
CONST 65536
JLT L186
LABEL L185
CONST 0
CONST 257
GLOBAL EASSERT
CALL 2
LABEL L186
RETURN
END

PROC OMSPG.SetLastUsage 4 3 0x00200001
!   PROCEDURE SetLastUsage(base: CHAR; VAR fd: FixData; at: INTEGER): INTEGER;
LINE 260
!     IF base = "c" THEN res := fd.usedatc; fd.usedatc := at
LINE 263
LDLC 12
CONST 99
JNEQ L190
LDLW 16
LOADW
NCHECK 263
LDNW 16
STLW -4
LDLW 20
LDLW 16
LOADW
NCHECK 263
STNW 16
JUMP L188
LABEL L190
!     ELSIF base = "k" THEN res := fd.usedatk; fd.usedatk := at
LINE 264
LDLC 12
CONST 107
JNEQ L192
LDLW 16
LOADW
NCHECK 264
LDNW 20
STLW -4
LDLW 20
LDLW 16
LOADW
NCHECK 264
STNW 20
JUMP L188
LABEL L192
!     ELSE S.Mark("bad base")
LINE 265
CONST 9
GLOBAL OMSPG.%20
GLOBAL OMSPS.Mark
CALL 2
LABEL L188
!     RETURN res
LINE 267
LDLW -4
RETURN
END

PROC OMSPG.UpdateChain 12 5 0x0080c001
!   PROCEDURE UpdateChain(base: CHAR; pos, val: INTEGER; x: Item): INTEGER;
LINE 270
!     IF val >= ORD({18}) THEN (*globals or externals vars with address encoded in offset*)
LINE 273
LDLW 20
CONST 262144
JLT L195
!       DEC(val, ORD({18})); CheckWord(val); fd := GetFixData(gvfix, val, x.b, -x.c); res := SetLastUsage(base, fd, pos)
LINE 274
LDLW 20
CONST 262144
MINUS
STLW 20
LDLW 20
GLOBAL OMSPG.CheckWord
CALL 1
LDLW 24
LDNW 28
UMINUS
LDLW 24
LDNW 24
LDLW 20
GLOBAL OMSPG.gvfix
GLOBAL OMSPG.GetFixData
CALLW 4
STLW -12
LDLW 16
LOCAL -12
LDLC 12
ALIGNC
GLOBAL OMSPG.SetLastUsage
CALLW 3
STLW -4
JUMP L193
LABEL L195
!     ELSIF val >= ORD({17}) THEN (*globals or externals const with address encoded in offset*)
LINE 275
LDLW 20
CONST 131072
JLT L197
!       DEC(val, ORD({17})); CheckWord(val); fd := GetFixData(cofix, val, x.b MOD 10000H, -x.c); res := SetLastUsage(base, fd, pos)
LINE 276
LDLW 20
CONST 131072
MINUS
STLW 20
LDLW 20
GLOBAL OMSPG.CheckWord
CALL 1
LDLW 24
LDNW 28
UMINUS
LDLW 24
LDNW 24
CONST 65536
MOD
LDLW 20
GLOBAL OMSPG.cofix
GLOBAL OMSPG.GetFixData
CALLW 4
STLW -12
LDLW 16
LOCAL -12
LDLC 12
ALIGNC
GLOBAL OMSPG.SetLastUsage
CALLW 3
STLW -4
JUMP L193
LABEL L197
!     ELSIF val = ORD({16}) THEN (*objects at absolute addresses*)
LINE 277
LDLW 20
CONST 65536
JNEQ L199
!       IF (x.mode = B.Const) & (x.type.form # B.Proc) & ((x.obj = NIL) OR (x.obj.class # B.Typ)) OR (x.mode = B.StoredConst) THEN
LINE 278
LDLW 24
LDNW 8
CONST 1
JNEQ L203
LDLW 24
LDNW 12
NCHECK 278
LOADW
CONST 10
JEQ L203
LDLW 24
LDNW 16
JEQZ L201
LDLW 24
LDNW 16
NCHECK 278
LOADC
CONST 5
JNEQ L201
LABEL L203
LDLW 24
LDNW 8
CONST 9
JNEQ L202
LABEL L201
!         fd := GetFixData(cofix, x.a MOD 10000H, x.b MOD 10000H, -x.c); res := SetLastUsage(base, fd, pos)
LINE 279
LDLW 24
LDNW 28
UMINUS
LDLW 24
LDNW 24
CONST 65536
MOD
LDLW 24
LDNW 20
CONST 65536
MOD
GLOBAL OMSPG.cofix
GLOBAL OMSPG.GetFixData
CALLW 4
STLW -12
LDLW 16
LOCAL -12
LDLC 12
ALIGNC
GLOBAL OMSPG.SetLastUsage
CALLW 3
STLW -4
JUMP L193
LABEL L202
!       ELSIF x.mode = B.Var THEN (*global or external variable*) fd := GetFixData(gvfix, x.a, x.b, -x.c);
LINE 280
LDLW 24
LDNW 8
CONST 2
JNEQ L208
LDLW 24
LDNW 28
UMINUS
LDLW 24
LDNW 24
LDLW 24
LDNW 20
GLOBAL OMSPG.gvfix
GLOBAL OMSPG.GetFixData
CALLW 4
STLW -12
!         res := SetLastUsage(base, fd, pos)
LINE 281
LDLW 16
LOCAL -12
LDLC 12
ALIGNC
GLOBAL OMSPG.SetLastUsage
CALLW 3
STLW -4
JUMP L193
LABEL L208
!       ELSE (*Imported variable or other object type*) o := x.obj; res := o.usedat; o.usedat := pos
LINE 282
LDLW 24
LDNW 16
STLW -8
LDLW -8
NCHECK 282
LDNW 12
STLW -4
LDLW 16
LDLW -8
NCHECK 282
STNW 12
JUMP L193
LABEL L199
!     ELSE res := val
LINE 284
LDLW 20
STLW -4
LABEL L193
!     RETURN res
LINE 287
LDLW -4
RETURN
END

PROC OMSPG.GetOffset 4 5 0x00100001
!   PROCEDURE GetOffset(VAR x: A.Item): INTEGER;
LINE 290
!   BEGIN CASE x OF
LINE 292
LOCAL 16
DUP 0
LOADW
DUP 0
LDNW 4
CONST 1
JGEQ L212
POP 1
JUMP L210
LABEL L212
LDNW 8
LDNW 4
GLOBAL OMSPG.Item
JNEQ L210
POP 1
!     Item: res := UpdateChain("c", mcode.pc, x.ofs, x)
LINE 293
LDLW 12
LDLW 12
LDNW 4
LDGW OMSPG.mcode
CONST 99
ALIGNC
GLOBAL OMSPG.UpdateChain
CALLW 4
STLW -4
JUMP L209
LABEL L210
DUP 0
LOADW
DUP 0
LDNW 4
JGEQZ L217
POP 1
JUMP L213
LABEL L217
LDNW 8
LOADW
GLOBAL OMSPA.Item
JNEQ L213
POP 1
CONST 0
CONST 294
GLOBAL EASSERT
CALL 2
JUMP L209
LABEL L213
POP 1
ERROR E_CASE 292
LABEL L209
!     RETURN res
LINE 297
LDLW -4
RETURN
END

PROC OMSPG.CheckWritable 0 3 0x00100001
!   PROCEDURE CheckWritable*(VAR x: Item);
LINE 300
!   BEGIN IF x.mode IN {RegI, Absol} THEN x.rdo := FALSE END
LINE 301
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 301
LSL
CONST 10240
BITAND
JEQZ L220
CONST 0
LDLW 12
CONST 32
STIC
LABEL L220
RETURN
END

PROC OMSPG.Trap 36 7 0x00001801
!  PROCEDURE Trap(cond, num: INTEGER);
LINE 304
!   BEGIN IF cond # A.AL THEN A.PutJ(mcode, A.negated(cond), 4) END;
LINE 309
LDLW 12
CONST 7
JEQ L223
CONST 4
LDLW 12
GLOBAL OMSPA.negated
CALLW 1
CONVNC
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LABEL L223
!     t.reg := 0; t.am := A.Immediate; t.ofs := ORD({16}); t.obj := traps[num];
LINE 310
CONST 0
STLC -36
CONST 6
STLC -35
CONST 65536
STLW -32
GLOBAL OMSPG.traps
LDLW 16
CONST 8
BOUND 310
LDIW
STLW -20
!     A.PutSO(mcode, A.CALL, t, A.Word)
LINE 311
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
LINE 314
!   BEGIN t.reg := a; t.am := A.Register; t.ofs := 0; t.obj := NIL;
LINE 316
LDLC 12
STLC -36
CONST 0
STLC -35
CONST 0
STLW -32
CONST 0
STLW -20
!     IF traps[4] # NIL THEN
LINE 317
GLOBAL OMSPG.traps
LDNW 16
JEQZ L226
!       c := c0; A.PutDO(mcode, A.CMP, c, t, A.Word);
LINE 318
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
LINE 319
CONST 4
CONST 1
GLOBAL OMSPG.Trap
CALL 2
LABEL L226
RETURN
END

PROC OMSPG.load 120 9 OMSPG.load.%map
!   PROCEDURE load(VAR x: Item; pr: BYTE); (*load item in a temporary register*)
LINE 325
!   BEGIN t := x; t.reg := 0; t.am := A.Immediate;
LINE 327
LOCAL -48
LDLW 12
CONST 36
FIXCOPY
CONST 0
STLC -48
CONST 6
STLC -47
!     ti.am := A.Indexed; ti.obj := NIL; sva := x; sva.ofs := ORD({16}); sva.b := 0;
LINE 328
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
CONST 0
STLW -96
!     IF x.type.size = 1 THEN bw := A.Byte ELSE bw := A.Word END;
LINE 329
LDLW 12
LDNW 12
NCHECK 329
LDNW 32
CONST 1
JNEQ L229
CONST 64
STLW -12
JUMP L227
LABEL L229
CONST 0
STLW -12
LABEL L227
!     IF x.mode = B.Const THEN alloc(x, pr);
LINE 330
LDLW 12
LDNW 8
CONST 1
JNEQ L232
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
!       IF x.type.form = B.Proc THEN
LINE 331
LDLW 12
LDNW 12
NCHECK 331
LOADW
CONST 10
JNEQ L235
!         IF x.c > 0 THEN S.Mark("not allowed")
LINE 332
LDLW 12
LDNW 28
JLEQZ L238
CONST 12
GLOBAL OMSPG.%21
GLOBAL OMSPS.Mark
CALL 2
JUMP L230
LABEL L238
!         ELSE sva.am := A.Immediate (*imported*); A.PutDO(mcode, A.MOV, sva, x, A.Word)
LINE 333
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
JUMP L230
LABEL L235
!       ELSE t.ofs := x.a; A.PutDO(mcode, A.MOV, t, x, A.Word)
LINE 335
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
JUMP L230
LABEL L232
!     ELSIF x.mode = B.StoredConst THEN alloc(x, pr);
LINE 337
LDLW 12
LDNW 8
CONST 9
JNEQ L240
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
!       sva.am := A.Absolute; A.PutDO(mcode, A.MOV, sva, rh, bw)
LINE 338
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
JUMP L230
LABEL L240
!     ELSIF x.mode = B.Var THEN alloc(x, pr);
LINE 339
LDLW 12
LDNW 8
CONST 2
JNEQ L242
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
!       IF x.c > 0 THEN (*local*) ti.reg := A.SP; ti.ofs :=  x.a + frame; A.PutDO(mcode, A.MOV, ti, rh, bw)
LINE 340
LDLW 12
LDNW 28
JLEQZ L245
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
JUMP L230
LABEL L245
!       ELSE  sva.am := A.Absolute; A.PutDO(mcode, A.MOV, sva, rh, bw)
LINE 341
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
JUMP L230
LABEL L242
!     ELSIF x.mode = B.Par THEN alloc(x, pr); ti.reg := A.SP; ti.ofs :=  x.a + frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word);
LINE 343
LDLW 12
LDNW 8
CONST 3
JNEQ L247
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
LINE 344
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
JUMP L230
LABEL L247
!     ELSIF x.mode = RegI THEN ti.reg := x.reg; ti.ofs := x.a; ti.b := x.b; ti.c := x.c; x.am := A.Register; x.ofs := 0;
LINE 345
LDLW 12
LDNW 8
CONST 11
JNEQ L249
LDLW 12
LOADC
STLC -84
LDLW 12
LDNW 20
STLW -80
LDLW 12
LDNW 24
STLW -60
LDLW 12
LDNW 28
STLW -56
CONST 0
LDLW 12
CONST 1
STIC
CONST 0
LDLW 12
STNW 4
!       IF ~x.tmp OR (pr # 0FFH) & (x.reg # pr) THEN free(x); alloc(x, pr) END;
LINE 346
LDLW 12
CONST 33
LDIC
JEQZ L251
LDLC 20
CONST 255
JEQ L252
LDLW 12
LOADC
LDLC 20
JEQ L252
LABEL L251
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
LABEL L252
!       A.PutDO(mcode, A.MOV, ti, x, bw)
LINE 347
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
JUMP L230
LABEL L249
!     ELSIF x.mode = Reg THEN
LINE 348
LDLW 12
LDNW 8
CONST 10
JNEQ L256
!       IF ~x.tmp OR (pr # 0FFH) & (x.reg # pr) THEN (*temporary copy needed*)
LINE 349
LDLW 12
CONST 33
LDIC
JEQZ L258
LDLC 20
CONST 255
JEQ L230
LDLW 12
LOADC
LDLC 20
JEQ L230
LABEL L258
!         x.am := A.Register; t := x; free(x); alloc(x, pr); A.PutDO(mcode, A.MOV, t, x, A.Word) END
LINE 350
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
JUMP L230
LABEL L256
!     ELSIF x.mode = Absol THEN alloc(x, pr); t.am := A.Absolute; t.ofs := x.a; A.PutDO(mcode, A.MOV, t, x, bw)
LINE 351
LDLW 12
LDNW 8
CONST 13
JNEQ L263
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
JUMP L230
LABEL L263
!     ELSIF x.mode = Cond THEN alloc(x, pr);
LINE 352
LDLW 12
LDNW 8
CONST 12
JNEQ L265
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
!       pc0 := mcode.pc; A.PutJ(mcode, A.negated(x.c), 0);
LINE 353
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
LINE 354
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
LINE 355
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
LINE 356
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
JUMP L230
LABEL L265
!     ELSE S.Mark("bad mode in load"); alloc(x, pr)
LINE 357
CONST 17
GLOBAL OMSPG.%22
GLOBAL OMSPS.Mark
CALL 2
LDLC 20
LDLW 16
LDLW 12
GLOBAL OMSPG.alloc
CALL 3
LABEL L230
!     x.mode := Reg; x.tmp := TRUE; x.am := A.Register; x.ofs := 0
LINE 359
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
LINE 362
!   BEGIN IF ~dst & (i.type.size = 1) & (bw = A.Word) THEN S.Mark("move byte to int") END;
LINE 364
LDLC 24
JNEQZ L268
LDLW 16
LDNW 12
NCHECK 364
LDNW 32
CONST 1
JNEQ L268
LDLW 32
LOADW
JNEQZ L268
CONST 17
GLOBAL OMSPG.%23
GLOBAL OMSPS.Mark
CALL 2
LABEL L268
!     IF (op = A.PUSH) OR (op = A.CALL) THEN dst := FALSE END;
LINE 365
LDLW 12
CONST 36
JEQ L272
LDLW 12
CONST 37
JNEQ L273
LABEL L272
CONST 0
STLC 24
LABEL L273
!     IF i.type.size = 1 THEN bw := A.Byte END;
LINE 366
LDLW 16
LDNW 12
NCHECK 366
LDNW 32
CONST 1
JNEQ L277
CONST 64
LDLW 32
STOREW
LABEL L277
!     IF dst & i.rdo & ((i.mode = B.Const) OR (op # A.CMP) & (op # A.BIT)) THEN load(i, 0FFH)
LINE 367
LDLC 24
JEQZ L280
LDLW 16
CONST 32
LDIC
JEQZ L280
LDLW 16
LDNW 8
CONST 1
JEQ L279
LDLW 12
CONST 9
JEQ L280
LDLW 12
CONST 11
JEQ L280
LABEL L279
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
RETURN
LABEL L280
!     ELSIF i.mode = B.Var THEN
LINE 368
LDLW 16
LDNW 8
CONST 2
JNEQ L286
!       IF i.c > 0 THEN i.reg := A.SP; i.am := A.Indexed; i.ofs := i.a + frame
LINE 369
LDLW 16
LDNW 28
JLEQZ L289
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
LABEL L289
!       ELSE i.reg := 0; i.am := A.Absolute; i.ofs := ORD({16}) (*use static var address*)
LINE 370
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
LABEL L286
!     ELSIF i.mode = Reg THEN i.am := A.Register; i.ofs := 0
LINE 372
LDLW 16
LDNW 8
CONST 10
JNEQ L291
CONST 0
LDLW 16
CONST 1
STIC
CONST 0
LDLW 16
STNW 4
RETURN
LABEL L291
!     ELSIF i.mode = RegI THEN i.am := A.Indexed; i.ofs := i.a
LINE 373
LDLW 16
LDNW 8
CONST 11
JNEQ L293
CONST 1
LDLW 16
CONST 1
STIC
LDLW 16
LDNW 20
LDLW 16
STNW 4
RETURN
LABEL L293
!     ELSIF i.mode = Absol THEN  i.am := A.Absolute; i.ofs := i.a
LINE 374
LDLW 16
LDNW 8
CONST 13
JNEQ L295
CONST 3
LDLW 16
CONST 1
STIC
LDLW 16
LDNW 20
LDLW 16
STNW 4
RETURN
LABEL L295
!     ELSIF i.mode = B.Const THEN i.ofs := i.a; i.reg := 0; i.am := A.Immediate;
LINE 375
LDLW 16
LDNW 8
CONST 1
JNEQ L297
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
!       IF (i.type.form IN {B.Proc, B.String}) & (i.c <= 0) THEN i.ofs := ORD({16}) END;
LINE 376
CONST 1
LDLW 16
LDNW 12
NCHECK 376
LOADW
CONST 32
BOUND 376
LSL
CONST 3072
BITAND
JEQZ L300
LDLW 16
LDNW 28
JGTZ L300
CONST 65536
LDLW 16
STNW 4
LABEL L300
!       IF dst THEN S.Mark("not writable"); i.am := A.Absolute END
LINE 377
LDLC 24
JEQZ L278
CONST 13
GLOBAL OMSPG.%24
GLOBAL OMSPS.Mark
CALL 2
CONST 3
LDLW 16
CONST 1
STIC
RETURN
LABEL L297
!     ELSIF i.mode = B.Par THEN rh.reg := AllocR(); INCL(nba, rh.reg);
LINE 378
LDLW 16
LDNW 8
CONST 3
JNEQ L306
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
BOUND 378
LSL
BITOR
SWAP
STOREW
!       ti.am := A.Indexed; ti.reg := A.SP; ti.obj := NIL; ti.ofs := i.a + frame;
LINE 379
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
LINE 380
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
LABEL L306
!     ELSIF i.mode = Cond THEN load(i, 0FFH)
LINE 381
LDLW 16
LDNW 8
CONST 12
JNEQ L308
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
RETURN
LABEL L308
!     ELSIF i.mode = B.StoredConst THEN i.reg := 0; i.am := A.Absolute; i.ofs := ORD({16})
LINE 382
LDLW 16
LDNW 8
CONST 9
JNEQ L310
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
LABEL L310
!     ELSE S.Mark("bad mode in setRAO"); load(i, 0FFH)
LINE 383
CONST 19
GLOBAL OMSPG.%25
GLOBAL OMSPS.Mark
CALL 2
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LABEL L278
RETURN
END

PROC OMSPG.convertSize 4 4 0x00500001
!   PROCEDURE convertSize(VAR src: Item; t: B.Type): BOOLEAN;
LINE 387
!   BEGIN tmp := FALSE;
LINE 389
CONST 0
STLC -1
!     IF (src.type.size = 1) & (t.size = 2) THEN (*move byte to word*)
LINE 390
LDLW 12
LDNW 12
NCHECK 390
LDNW 32
CONST 1
JNEQ L313
LDLW 20
NCHECK 390
LDNW 32
CONST 2
JNEQ L313
!       IF src.mode # Reg THEN load(src, 0FFH); tmp := TRUE; END; src.type := B.intType (*extend source*)
LINE 391
LDLW 12
LDNW 8
CONST 10
JEQ L316
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
CONST 1
STLC -1
LABEL L316
LDGW OMSPB.intType
LDLW 12
STNW 12
LABEL L313
!     RETURN tmp
LINE 394
LDLC -1
RETURN
END

PROC OMSPG.PutDO 12 9 0x00a00001
!   PROCEDURE PutDO(op: BYTE; VAR src, dst: Item);
LINE 397
!   BEGIN tmp := convertSize(src, dst.type);
LINE 399
LDLW 24
LDNW 12
LDLW 20
LDLW 16
GLOBAL OMSPG.convertSize
CALLW 3
STLC -9
!     nba := {}; bw := A.Word; setRAO(op, dst, TRUE, nba, bw); setRAO(op, src, FALSE, nba, bw);
LINE 400
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
LINE 401
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
LINE 402
LDLC -9
JEQZ L320
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
LABEL L320
RETURN
END

PROC OMSPG.PutSO 8 7 0x00200001
!   PROCEDURE PutSO(op: INTEGER; VAR sd: Item);
LINE 405
!     nba := {}; bw := A.Word; setRAO(op, sd, TRUE, nba, bw);
LINE 408
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
!     IF (op = A.CALL) & (sd.reg = A.SP) & (sd.am = A.Indexed) THEN INC(sd.ofs, WordSize) END;
LINE 409
LDLW 12
CONST 37
JNEQ L323
LDLW 16
LOADC
CONST 1
JNEQ L323
LDLW 16
CONST 1
LDIC
CONST 1
JNEQ L323
LDLW 16
DUP 0
LDNW 4
CONST 2
PLUS
SWAP
STNW 4
LABEL L323
!     A.PutSO(mcode, op, sd, bw); freeSet(nba);
LINE 410
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
LINE 413
!   BEGIN bw := A.Word;
LINE 415
CONST 0
STLW -12
!     IF x.type.size = 1 THEN
LINE 416
LDLW 12
LDNW 12
NCHECK 416
LDNW 32
CONST 1
JNEQ L328
!       IF dsize = 1 THEN bw := A.Byte ELSE (*convert byte to word before push*) load(x, 0FFH); x.type := B.intType END
LINE 417
LDLW 20
CONST 1
JNEQ L331
CONST 64
STLW -12
JUMP L328
LABEL L331
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
LDGW OMSPB.intType
LDLW 12
STNW 12
LABEL L328
!     adjFrmOfs(WordSize); t := x; t.reg := 0; t.am := A.Immediate;
LINE 419
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
!     ti.am := A.Indexed; ti.obj := NIL; sva := x; sva.ofs := ORD({16});
LINE 420
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
LINE 421
LDLW 12
LDNW 8
CONST 10
JNEQ L334
LDLW 16
LDLW 12
CONST 36
GLOBAL OMSPG.PutSO
CALL 3
JUMP L332
LABEL L334
!     ELSIF x.mode = B.Const THEN
LINE 422
LDLW 12
LDNW 8
CONST 1
JNEQ L336
!       IF x.type.form = B.Proc THEN
LINE 423
LDLW 12
LDNW 12
NCHECK 423
LOADW
CONST 10
JNEQ L339
!         IF x.c > 0 THEN S.Mark("not allowed")
LINE 424
LDLW 12
LDNW 28
JLEQZ L342
CONST 12
GLOBAL OMSPG.%21
GLOBAL OMSPS.Mark
CALL 2
JUMP L332
LABEL L342
!         ELSE sva.am := A.Immediate (*imported*); A.PutSO(mcode, A.PUSH, sva, A.Word)
LINE 425
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
JUMP L332
LABEL L339
!       ELSE t.ofs := x.a; A.PutSO(mcode, A.PUSH, t, bw)
LINE 427
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
JUMP L332
LABEL L336
!     ELSIF x.mode = B.StoredConst THEN
LINE 429
LDLW 12
LDNW 8
CONST 9
JNEQ L344
!       sva.am := A.Absolute; A.PutSO(mcode, A.PUSH, sva,bw)
LINE 430
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
JUMP L332
LABEL L344
!     ELSIF x.mode = B.Var THEN
LINE 431
LDLW 12
LDNW 8
CONST 2
JNEQ L346
!       IF x.c > 0 THEN (*local*) ti.reg := A.SP; ti.ofs :=  x.a + frame; A.PutSO(mcode, A.PUSH, ti, bw)
LINE 432
LDLW 12
LDNW 28
JLEQZ L349
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
JUMP L332
LABEL L349
!       ELSE sva.am := A.Absolute; A.PutSO(mcode, A.PUSH, sva, bw)
LINE 433
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
JUMP L332
LABEL L346
!     ELSIF x.mode = B.Par THEN ti.reg := A.SP; ti.ofs :=  x.a + frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word);
LINE 435
LDLW 12
LDNW 8
CONST 3
JNEQ L351
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
LINE 436
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
JUMP L332
LABEL L351
!     ELSIF x.mode = RegI THEN ti.reg := x.reg; ti.ofs := x.a; ti.b := x.b; ti.c := x.c; (*x.am := A.Register; x.ofs := 0;*) A.PutSO(mcode, A.PUSH, ti, bw)
LINE 437
LDLW 12
LDNW 8
CONST 11
JNEQ L353
LDLW 12
LOADC
STLC -84
LDLW 12
LDNW 20
STLW -80
LDLW 12
LDNW 24
STLW -60
LDLW 12
LDNW 28
STLW -56
LDLW -12
GLOBAL OMSPG.Item
LOCAL -84
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L332
LABEL L353
!     ELSIF x.mode = Absol THEN t.am := A.Absolute; t.ofs := x.a; A.PutSO(mcode, A.PUSH, t, bw)
LINE 438
LDLW 12
LDNW 8
CONST 13
JNEQ L355
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
JUMP L332
LABEL L355
!     ELSIF x.mode = Cond THEN
LINE 439
LDLW 12
LDNW 8
CONST 12
JNEQ L357
!       pc0 := mcode.pc; A.PutJ(mcode, A.negated(x.c), 0);
LINE 440
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
LINE 441
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
LINE 442
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
LINE 443
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
JUMP L332
LABEL L357
!     ELSE S.Mark("bad mode in push")
LINE 444
CONST 17
GLOBAL OMSPG.%26
GLOBAL OMSPS.Mark
CALL 2
LABEL L332
!     free(x)
LINE 446
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.Adr 36 6 0x00101801
!   PROCEDURE Adr*(VAR x:Item);
LINE 449
!   BEGIN t.mode := B.Const; t.type := B.intType; t.obj := NIL;
LINE 451
CONST 1
STLW -28
LDGW OMSPB.intType
STLW -24
CONST 0
STLW -20
!     IF x.mode = B.Var THEN
LINE 452
LDLW 12
LDNW 8
CONST 2
JNEQ L360
!       IF x.c > 0 THEN (*local*) ASSERT(x.tmp = FALSE); x.mode := Reg; x.reg := A.SP; x.rdo := TRUE;
LINE 453
LDLW 12
LDNW 28
JLEQZ L363
LDLW 12
CONST 33
LDIC
JEQZ L365
CONST 0
CONST 453
GLOBAL EASSERT
CALL 2
LABEL L365
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
!         IF x.a + frame # 0 THEN t.a := x.a + frame; x.type := B.intType; PutDO(A.ADD, t, x) END
LINE 454
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
JEQZ L358
LDLW 12
LDNW 20
LDGW OMSPG.frame
PLUS
STLW -16
LDGW OMSPB.intType
LDLW 12
STNW 12
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
JUMP L358
LABEL L363
!       ELSE (*global or imported*) x.mode := B.Const; INC(x.a, ORD({18}))
LINE 455
CONST 1
LDLW 12
STNW 8
LDLW 12
DUP 0
LDNW 20
CONST 262144
PLUS
SWAP
STNW 20
JUMP L358
LABEL L360
!     ELSIF x.mode = B.Par THEN x.mode := B.Var;
LINE 457
LDLW 12
LDNW 8
CONST 3
JNEQ L370
CONST 2
LDLW 12
STNW 8
!       IF x.b # 0 THEN t.a := x.b; x.type := B.intType; PutDO(A.ADD, t, x) END
LINE 458
LDLW 12
LDNW 24
JEQZ L358
LDLW 12
LDNW 24
STLW -16
LDGW OMSPB.intType
LDLW 12
STNW 12
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
JUMP L358
LABEL L370
!     ELSIF (x.mode = B.Const) & (x.type.form = B.Proc) & (x.c <= 0) THEN x.a := ORD({16}) (*use runtime proc address*)
LINE 459
LDLW 12
LDNW 8
CONST 1
JNEQ L375
LDLW 12
LDNW 12
NCHECK 459
LOADW
CONST 10
JNEQ L375
LDLW 12
LDNW 28
JGTZ L375
CONST 65536
LDLW 12
STNW 20
JUMP L358
LABEL L375
!     ELSIF (x.mode = B.Const) & (x.type.form = B.String) THEN INC(x.a, ORD({17}))
LINE 460
LDLW 12
LDNW 8
CONST 1
JNEQ L379
LDLW 12
LDNW 12
NCHECK 460
LOADW
CONST 11
JNEQ L379
LDLW 12
DUP 0
LDNW 20
CONST 131072
PLUS
SWAP
STNW 20
JUMP L358
LABEL L379
!     ELSIF x.mode = B.StoredConst THEN  x.mode := B.Const; INC(x.a, ORD({17}))
LINE 461
LDLW 12
LDNW 8
CONST 9
JNEQ L382
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
JUMP L358
LABEL L382
!     ELSIF x.mode = RegI THEN x.mode := Reg;
LINE 462
LDLW 12
LDNW 8
CONST 11
JNEQ L384
CONST 10
LDLW 12
STNW 8
!       IF x.a # 0 THEN t.a := x.a; t.b := x.b; t.c := x.c; x.type := B.intType; PutDO(A.ADD, t, x) END
LINE 463
LDLW 12
LDNW 20
JEQZ L358
LDLW 12
LDNW 20
STLW -16
LDLW 12
LDNW 24
STLW -12
LDLW 12
LDNW 28
STLW -8
LDGW OMSPB.intType
LDLW 12
STNW 12
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -36
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
JUMP L358
LABEL L384
!     ELSIF x.mode = Absol THEN (*Nothing to do*)
LINE 464
LDLW 12
LDNW 8
CONST 13
JEQ L358
!     ELSE S.Mark("not addressable")
LINE 465
CONST 16
GLOBAL OMSPG.%27
GLOBAL OMSPS.Mark
CALL 2
LABEL L358
!     x.type := B.intType
LINE 467
LDGW OMSPB.intType
LDLW 12
STNW 12
RETURN
END

PROC OMSPG.loadAdr 0 4 0x00100001
!   PROCEDURE loadAdr(VAR x: Item; pr: INTEGER);
LINE 470
!   BEGIN Adr(x); load(x, pr)
LINE 471
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
LINE 474
!   BEGIN Adr(x); push(x, 2)
LINE 475
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
LINE 478
!     IF x.type.form = B.Bool THEN
LINE 481
LDLW 12
LDNW 12
NCHECK 481
LOADW
CONST 2
JNEQ L392
!       IF x.mode = B.Const THEN IF x.a = 0 THEN x.c := A.NV ELSE x.c := A.AL END
LINE 482
LDLW 12
LDNW 8
CONST 1
JNEQ L395
LDLW 12
LDNW 20
JNEQZ L398
CONST 8
LDLW 12
STNW 28
JUMP L393
LABEL L398
CONST 7
LDLW 12
STNW 28
JUMP L393
LABEL L395
!       ELSE t := c0; PutDO(A.CMP, t, x); x.c := A.NE; free(x)
LINE 483
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
LABEL L393
!       x.mode := Cond; x.a := 0; x.b := 0
LINE 485
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
LABEL L392
!     ELSE S.Mark("not Boolean?")
LINE 486
CONST 13
GLOBAL OMSPG.%28
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.loadTypTagAdr 36 9 0x00101801
!   PROCEDURE loadTypTagAdr(T: B.Type; pr: INTEGER): BYTE;
LINE 490
!   BEGIN sva.am := A.Immediate; sva.ofs := ORD({16}); sva.obj := T.typobj;
LINE 492
CONST 6
STLC -35
CONST 65536
STLW -32
LDLW 12
NCHECK 492
LDNW 24
STLW -20
!     rh.reg := AllocRP(pr); A.PutDO(mcode, A.MOV, sva, rh, A.Word)
LINE 493
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
LINE 494
LDGC OMSPG.rh
RETURN
END

PROC OMSPG.pushTypTagAdr 36 7 0x00101801
!   PROCEDURE pushTypTagAdr(T: B.Type);
LINE 497
!   BEGIN sva.am := A.Immediate; sva.ofs := ORD({16}); sva.obj := T.typobj;
LINE 499
CONST 6
STLC -35
CONST 65536
STLW -32
LDLW 12
NCHECK 499
LDNW 24
STLW -20
!     adjFrmOfs(WordSize); A.PutSO(mcode, A.PUSH, sva, A.Word)
LINE 500
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
LINE 505
!   BEGIN x.mode := B.Const; x.type := B.intType; x.a := ORD({16}); x.b := 0; x.c := 0;
LINE 506
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
STNW 24
CONST 0
LDLW 12
STNW 28
!     x.rdo := TRUE; x.obj := T.typobj; x.tmp := FALSE; x.reg := 0; x.am := A.Undefined; x.ofs := 0
LINE 507
CONST 1
LDLW 12
CONST 32
STIC
LDLW 20
NCHECK 507
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
LINE 510
!   BEGIN x.mode := B.Const; x.type := typ; x.a := val; x.c := 0;
LINE 511
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
LINE 512
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

PROC OMSPG.stringFound 8 4 0x00500001
!   PROCEDURE stringFound(str: ARRAY OF CHAR; VAR fd: FixData): BOOLEAN;
LINE 523
!   BEGIN found := FALSE; fd := cofix;
LINE 526
CONST 0
STLC -1
LDGW OMSPG.cofix
LDLW 20
STOREW
LABEL L399
!     WHILE ~found & (fd # NIL) DO
LINE 527
LDLC -1
JNEQZ L401
LDLW 20
LOADW
JEQZ L401
!       IF fd.isString THEN
LINE 528
LDLW 20
LOADW
NCHECK 528
CONST 12
LDIC
JEQZ L404
!         i := 0; WHILE (str[i] # 0X) & (str[i] = CHR(codata[fd.adr + i])) DO INC(i) END;
LINE 529
CONST 0
STLW -8
LABEL L405
LDLW 12
LDLW -8
LDLW 16
BOUND 529
LDIC
JEQZ L407
LDLW 12
LDLW -8
LDLW 16
BOUND 529
LDIC
GLOBAL OMSPG.codata
LDLW 20
LOADW
NCHECK 529
LOADW
LDLW -8
PLUS
CONST 10000
BOUND 529
OFFSET
LOADC
CONVNC
JNEQ L407
INCL -8
JUMP L405
LABEL L407
!         IF str[i] = CHR(codata[fd.adr + i]) THEN found := TRUE END
LINE 530
LDLW 12
LDLW -8
LDLW 16
BOUND 530
LDIC
GLOBAL OMSPG.codata
LDLW 20
LOADW
NCHECK 530
LOADW
LDLW -8
PLUS
CONST 10000
BOUND 530
OFFSET
LOADC
CONVNC
JNEQ L404
CONST 1
STLC -1
LABEL L404
!       IF ~found THEN fd := fd.next END
LINE 532
LDLC -1
JNEQZ L399
LDLW 20
LOADW
NCHECK 532
LDNW 24
LDLW 20
STOREW
JUMP L399
LABEL L401
!     RETURN found
LINE 535
LDLC -1
RETURN
END

PROC OMSPG.Length 4 2 0x00100001
!   PROCEDURE Length*(x: Item): INTEGER;
LINE 538
!     IF x.type.form = B.String THEN l := LSR(x.b, 16)
LINE 541
LDLW 12
LDNW 12
NCHECK 541
LOADW
CONST 11
JNEQ L418
LDLW 12
LDNW 24
CONST 16
LSR
STLW -4
JUMP L416
LABEL L418
!     ELSE l := x.type.len
LINE 542
LDLW 12
LDNW 12
NCHECK 542
LDNW 16
STLW -4
LABEL L416
!     RETURN l
LINE 545
LDLW -4
RETURN
END

PROC OMSPG.stringPut 8 5 0x00508001
!   PROCEDURE stringPut(VAR x: Item; str: ARRAY OF CHAR; len: INTEGER);
LINE 548
!   BEGIN x.mode := B.Const; x.type := B.strType; x.b := LSL(len, 16); x.c := 0 (*global string*);
LINE 550
CONST 1
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
LINE 551
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
!     IF ~stringFound(str, fd) THEN
LINE 552
LOCAL -8
LDLW 24
LDLW 20
GLOBAL OMSPG.stringFound
CALLW 3
JNEQZ L421
!       IF cox + len < maxCox THEN fd := GetFixData(cofix, cox, 0, 0); fd.isString := TRUE;
LINE 553
LDGW OMSPG.cox
LDLW 28
PLUS
CONST 10000
JGEQ L424
CONST 0
CONST 0
LDGW OMSPG.cox
GLOBAL OMSPG.cofix
GLOBAL OMSPG.GetFixData
CALLW 4
STLW -8
CONST 1
LDLW -8
NCHECK 553
CONST 12
STIC
!         i := 0; WHILE len > 0 DO codata[cox] := ORD(str[i]); INC(cox); INC(i); DEC(len) END;
LINE 554
CONST 0
STLW -4
LABEL L425
LDLW 28
JLEQZ L427
LDLW 20
LDLW -4
LDLW 24
BOUND 554
LDIC
CONVNC
GLOBAL OMSPG.codata
LDGW OMSPG.cox
CONST 10000
BOUND 554
OFFSET
STOREC
LDGW OMSPG.cox
INC
STGW OMSPG.cox
INCL -4
DECL 28
JUMP L425
LABEL L427
!         WHILE cox MOD WordSize # 0 DO codata[cox] := 0; INC(cox) END; INC(nofcos)
LINE 555
LDGW OMSPG.cox
CONST 2
MOD
JEQZ L430
CONST 0
GLOBAL OMSPG.codata
LDGW OMSPG.cox
CONST 10000
BOUND 555
OFFSET
STOREC
LDGW OMSPG.cox
INC
STGW OMSPG.cox
JUMP L427
LABEL L430
LDGW OMSPG.nofcos
INC
STGW OMSPG.nofcos
JUMP L421
LABEL L424
!       ELSE S.Mark("too many strings")
LINE 556
CONST 17
GLOBAL OMSPG.%29
GLOBAL OMSPS.Mark
CALL 2
LABEL L421
!     x.a := fd.adr
LINE 559
LDLW -8
NCHECK 559
LOADW
LDLW 12
STNW 20
RETURN
END

PROC OMSPG.stringPop 8 5 0x00308001
!   PROCEDURE stringPop(x: Item; VAR xs: ARRAY OF CHAR);
LINE 562
!   BEGIN fd := GetFixData(cofix, x.a, 0, 0); ASSERT(fd.isString);
LINE 564
CONST 0
CONST 0
LDLW 12
LDNW 20
GLOBAL OMSPG.cofix
GLOBAL OMSPG.GetFixData
CALLW 4
STLW -8
LDLW -8
NCHECK 564
CONST 12
LDIC
JNEQZ L432
CONST 0
CONST 564
GLOBAL EASSERT
CALL 2
LABEL L432
!     IF (x.obj = NIL) & (fd.usedatc = 0) THEN (*string can be removed from table*)
LINE 565
LDLW 12
LDNW 16
JNEQZ L435
LDLW -8
NCHECK 565
LDNW 16
JNEQZ L435
!       ASSERT(fd = cofix); cox := fd.adr; cofix := fd.next; DEC(nofcos)
LINE 566
LDLW -8
LDGW OMSPG.cofix
JEQ L437
CONST 0
CONST 566
GLOBAL EASSERT
CALL 2
LABEL L437
LDLW -8
NCHECK 566
LOADW
STGW OMSPG.cox
LDLW -8
NCHECK 566
LDNW 24
STGW OMSPG.cofix
LDGW OMSPG.nofcos
DEC
STGW OMSPG.nofcos
LABEL L435
!     i := 0; DEC(fd.adr); REPEAT INC(fd.adr); xs[i] := CHR(codata[fd.adr]); INC(i) UNTIL codata[fd.adr] = 0 (*copy string in dest*)
LINE 568
CONST 0
STLW -4
LDLW -8
NCHECK 568
DUP 0
LOADW
DEC
SWAP
STOREW
LABEL L439
LDLW -8
NCHECK 568
DUP 0
LOADW
INC
SWAP
STOREW
GLOBAL OMSPG.codata
LDLW -8
NCHECK 568
LOADW
CONST 10000
BOUND 568
OFFSET
LOADC
CONVNC
LDLW 16
LDLW -4
LDLW 20
BOUND 568
STIC
INCL -4
GLOBAL OMSPG.codata
LDLW -8
NCHECK 568
LOADW
CONST 10000
BOUND 568
OFFSET
LOADC
JNEQZ L439
RETURN
END

PROC OMSPG.MakeStringItem 0 6 0x00100001
!   PROCEDURE MakeStringItem*(VAR x: Item); (*copies string from OMSPS-buffer to OMSPG-string array*)
LINE 571
!   BEGIN stringPut(x, S.str, S.slen)
LINE 572
LDGW OMSPS.slen
CONST 1024
GLOBAL OMSPS.str
LDLW 16
LDLW 12
GLOBAL OMSPG.stringPut
CALL 5
RETURN
END

PROC OMSPG.MakeConstObject 8 4 0x00100001
!   PROCEDURE MakeConstObject*(VAR obj: B.Object); (*allocate space for a constant object in codata*)
LINE 575
!   BEGIN IF obj.type.size > 1 THEN WHILE cox MOD WordSize # 0 DO codata[cox] := 0FFH; INC(cox) END END;
LINE 577
LDLW 12
LOADW
NCHECK 577
LDNW 24
NCHECK 577
LDNW 32
CONST 1
JLEQ L443
LABEL L444
LDGW OMSPG.cox
CONST 2
MOD
JEQZ L443
CONST 255
GLOBAL OMSPG.codata
LDGW OMSPG.cox
CONST 10000
BOUND 577
OFFSET
STOREC
LDGW OMSPG.cox
INC
STGW OMSPG.cox
JUMP L444
LABEL L443
!     obj.val := cox; FOR i := 1 TO obj.type.size DO codata[cox] := 0FFH; INC(cox) END;
LINE 578
LDGW OMSPG.cox
LDLW 12
LOADW
NCHECK 578
STNW 60
LDLW 12
LOADW
NCHECK 578
LDNW 24
NCHECK 578
LDNW 32
STLW -8
CONST 1
STLW -4
LABEL L447
LDLW -4
LDLW -8
JGT L448
CONST 255
GLOBAL OMSPG.codata
LDGW OMSPG.cox
CONST 10000
BOUND 578
OFFSET
STOREC
LDGW OMSPG.cox
INC
STGW OMSPG.cox
INCL -4
JUMP L447
LABEL L448
!     INC(nofcos)
LINE 579
LDGW OMSPG.nofcos
INC
STGW OMSPG.nofcos
RETURN
END

PROC OMSPG.MakeItem 4 5 0x00510001
!   PROCEDURE MakeItem*(VAR x: Item; y: B.Object; curlev: INTEGER);
LINE 582
!   BEGIN x.mode := y.class; x.type := y.type; x.a := y.val; x.rdo := y.rdo; x.c := y.lev; x.b := 0;
LINE 584
LDLW 20
NCHECK 584
LOADC
LDLW 12
STNW 8
LDLW 20
NCHECK 584
LDNW 24
LDLW 12
STNW 12
LDLW 20
NCHECK 584
LDNW 60
LDLW 12
STNW 20
LDLW 20
NCHECK 584
CONST 5
LDIC
LDLW 12
CONST 32
STIC
LDLW 20
NCHECK 584
LDNW 8
LDLW 12
STNW 28
CONST 0
LDLW 12
STNW 24
!     x.obj := y; x.tmp := FALSE; x.reg := 0; x.am := A.Undefined; x.ofs := 0;
LINE 585
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
!     IF (y.class IN {B.Var, B.Par}) THEN x.c := y.lev;
LINE 586
CONST 1
LDLW 20
NCHECK 586
LOADC
CONST 32
BOUND 586
LSL
CONST 12
BITAND
JEQZ L451
LDLW 20
NCHECK 586
LDNW 8
LDLW 12
STNW 28
!       IF y.register # 0FFH THEN
LINE 587
LDLW 20
NCHECK 587
CONST 2
LDIC
CONST 255
JEQ L459
!         x.reg := y.register;
LINE 588
LDLW 20
NCHECK 588
CONST 2
LDIC
LDLW 12
STOREC
!         IF y.class = B.Var THEN x.mode := Reg ELSE x.mode := RegI END
LINE 589
LDLW 20
NCHECK 589
LOADC
CONST 2
JNEQ L457
CONST 10
LDLW 12
STNW 8
JUMP L459
LABEL L457
CONST 11
LDLW 12
STNW 8
JUMP L459
LABEL L451
!     ELSIF (y.class = B.Const) & (y.type.form = B.String) THEN
LINE 591
LDLW 20
NCHECK 591
LOADC
CONST 1
JNEQ L459
LDLW 20
NCHECK 591
LDNW 24
NCHECK 591
LOADW
CONST 11
JNEQ L459
!       x.a := y.val MOD 10000H (*adr or exno*); x.b := LSL(LSR(y.val, 16), 16) (*len*);
LINE 592
LDLW 20
NCHECK 592
LDNW 60
CONST 65536
MOD
LDLW 12
STNW 20
LDLW 20
NCHECK 592
LDNW 60
CONST 16
LSR
CONST 16
LSL
LDLW 12
STNW 24
!       fd := GetFixData(cofix, x.a, -x.c, 0); fd.isString := TRUE (*create fix data entry if necessary*)
LINE 593
CONST 0
LDLW 12
LDNW 28
UMINUS
LDLW 12
LDNW 20
GLOBAL OMSPG.cofix
GLOBAL OMSPG.GetFixData
CALLW 4
STLW -4
CONST 1
LDLW -4
NCHECK 593
CONST 12
STIC
LABEL L459
!     IF (y.lev > 0) & (y.lev # curlev) & (y.class # B.Const) THEN S.Mark("not accessible ") END
LINE 595
LDLW 20
NCHECK 595
LDNW 8
JLEQZ L463
LDLW 20
NCHECK 595
LDNW 8
LDLW 24
JEQ L463
LDLW 20
NCHECK 595
LOADC
CONST 1
JEQ L463
CONST 16
GLOBAL OMSPG.%30
GLOBAL OMSPS.Mark
CALL 2
LABEL L463
RETURN
END

PROC OMSPG.Field 0 4 0x00500001
!   PROCEDURE Field*(VAR x: Item; y: B.Object);   (* x := x.y *)
LINE 600
!     IF x.mode IN {B.Var, B.StoredConst} THEN IF x.c >= 0 THEN INC(x.a, y.val) ELSE INC(x.b,  y.val) END
LINE 602
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 602
LSL
CONST 516
BITAND
JEQZ L468
LDLW 12
LDNW 28
JLTZ L471
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 602
LDNW 60
PLUS
SWAP
STOREW
RETURN
LABEL L471
LDLW 12
CONST 24
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 602
LDNW 60
PLUS
SWAP
STOREW
RETURN
LABEL L468
!     ELSIF x.mode IN {RegI, Absol} THEN INC(x.a, y.val)
LINE 603
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 603
LSL
CONST 10240
BITAND
JEQZ L473
LDLW 12
CONST 20
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 603
LDNW 60
PLUS
SWAP
STOREW
RETURN
LABEL L473
!     ELSIF x.mode = B.Par THEN INC(x.b, y.val)
LINE 604
LDLW 12
LDNW 8
CONST 3
JNEQ L475
LDLW 12
CONST 24
OFFSET
DUP 0
LOADW
LDLW 20
NCHECK 604
LDNW 60
PLUS
SWAP
STOREW
RETURN
LABEL L475
!     ELSE S.Mark("not implemented"); S.DebugHex("x.mode", x.mode)
LINE 605
CONST 16
GLOBAL OMSPG.%31
GLOBAL OMSPS.Mark
CALL 2
LDLW 12
LDNW 8
CONST 7
GLOBAL OMSPG.%32
GLOBAL OMSPS.DebugHex
CALL 3
RETURN
END

PROC OMSPG.Index 48 9 0x00500621
!   PROCEDURE Index*(VAR x, y: Item);   (* x := x[y] *)
LINE 609
!     IF x.type.form = B.String THEN s := 1; lim := x.b
LINE 612
LDLW 12
LDNW 12
NCHECK 612
LOADW
CONST 11
JNEQ L478
CONST 1
STLW -4
LDLW 12
LDNW 24
STLW -8
JUMP L476
LABEL L478
!     ELSE s := x.type.base.size; lim := x.type.len END;
LINE 613
LDLW 12
LDNW 12
NCHECK 613
LDNW 28
NCHECK 613
LDNW 32
STLW -4
LDLW 12
LDNW 12
NCHECK 613
LDNW 16
STLW -8
LABEL L476
!     IF s = 0 THEN S.Mark("Invalid array item size")
LINE 614
LDLW -4
JNEQZ L534
CONST 24
GLOBAL OMSPG.%33
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L534
!       IF (y.mode = B.Const) & ((traps[1] = NIL) OR (lim >= 0)) THEN
LINE 616
LDLW 20
LDNW 8
CONST 1
JNEQ L514
GLOBAL OMSPG.traps
LDNW 4
JEQZ L513
LDLW -8
JLTZ L514
LABEL L513
!         IF (y.a < 0) OR (lim >= 0) & (y.a >= lim) THEN S.Mark("bad index") END ;
LINE 617
LDLW 20
LDNW 20
JLTZ L516
LDLW -8
JLTZ L517
LDLW 20
LDNW 20
LDLW -8
JLT L517
LABEL L516
CONST 10
GLOBAL OMSPG.%34
GLOBAL OMSPS.Mark
CALL 2
LABEL L517
!         IF (x.mode IN {B.Var, B.StoredConst}) OR (x.type.form = B.String) THEN
LINE 618
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 618
LSL
CONST 516
BITAND
JNEQZ L521
LDLW 12
LDNW 12
NCHECK 618
LOADW
CONST 11
JNEQ L522
LABEL L521
!           IF x.c >= 0 THEN INC(x.a, y.a*s) ELSE INC(x.b,  y.a*s) END
LINE 619
LDLW 12
LDNW 28
JLTZ L525
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
LABEL L525
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
LABEL L522
!         ELSIF x.mode = RegI THEN INC(x.a, y.a*s)
LINE 620
LDLW 12
LDNW 8
CONST 11
JNEQ L528
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
LABEL L528
!         ELSIF x.mode = B.Par THEN INC(x.b, y.a*s)
LINE 621
LDLW 12
LDNW 8
CONST 3
JNEQ L530
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
LABEL L530
!         ELSE S.Mark("bad mode in index")
LINE 622
CONST 18
GLOBAL OMSPG.%35
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L514
!         IF traps[1] # NIL THEN  (*check array bounds*)
LINE 625
GLOBAL OMSPG.traps
LDNW 4
JEQZ L483
!           IF lim >= 0 THEN t.mode := B.Const; t.type := B.intType; t.a := lim; PutDO(A.CMP, t, y)
LINE 626
LDLW -8
JLTZ L491
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
JUMP L484
LABEL L491
!           ELSE (*open array*) t := x; t.type := B.intType;
LINE 627
LOCAL -44
LDLW 12
CONST 36
FIXCOPY
LDGW OMSPB.intType
STLW -32
!             IF x.mode IN {B.Var, B.Par} THEN t.mode := B.Var; INC(t.a, WordSize)
LINE 628
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 628
LSL
CONST 12
BITAND
JEQZ L487
CONST 2
STLW -36
LDLW -24
CONST 2
PLUS
STLW -24
JUMP L485
LABEL L487
!             ELSIF x.mode IN {Reg, RegI} THEN t.mode := Reg; INC(t.reg)
LINE 629
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 629
LSL
CONST 3072
BITAND
JEQZ L489
CONST 10
STLW -36
LDLC -44
INC
STLC -44
JUMP L485
LABEL L489
!             ELSE S.Mark("error in Index")
LINE 630
CONST 15
GLOBAL OMSPG.%36
GLOBAL OMSPS.Mark
CALL 2
LABEL L485
!             END; PutDO(A.CMP, t, y)
LINE 631
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LABEL L484
!           Trap(A.C, 1) (*MSP430 inverts the carry with SUB and CMP instructions*)
LINE 633
CONST 1
CONST 3
GLOBAL OMSPG.Trap
CALL 2
LABEL L483
!         IF s # 1 THEN t.mode := B.Const; t.type := B.intType; t.a := s; PutDO(A.MUL, t, y) END;
LINE 635
LDLW -4
CONST 1
JEQ L494
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
LABEL L494
!         IF (x.mode IN {B.Var, B.StoredConst}) OR (x.type.form = B.String) THEN
LINE 636
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 636
LSL
CONST 516
BITAND
JNEQZ L496
LDLW 12
LDNW 12
NCHECK 636
LOADW
CONST 11
JNEQ L497
LABEL L496
!           load(y, 0FFH); y.type := B.intType; typ := x.type;
LINE 637
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
LINE 638
LDLW 12
LDNW 28
JLEQZ L503
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
JUMP L501
LABEL L503
!           ELSE Adr(x); IF x.mode # B.Const THEN PutDO(A.ADD, x, y); x.a := 0 END
LINE 639
LDLW 16
LDLW 12
GLOBAL OMSPG.Adr
CALL 2
LDLW 12
LDNW 8
CONST 1
JEQ L501
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
LABEL L501
!           free(x); x.reg := y.reg; x.mode := RegI; x.tmp := TRUE; x.type := typ
LINE 641
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
LABEL L497
!         ELSIF x.mode = B.Par THEN load(y, 0FFH); t.mode := B.Var;
LINE 642
LDLW 12
LDNW 8
CONST 3
JNEQ L506
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
CONST 2
STLW -36
!           t.c := x.c; t.a := x.a; t.tmp := FALSE; t.obj := x.obj; t.type := B.intType; PutDO(A.ADD, t, y); free(t);
LINE 643
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
LINE 644
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
LABEL L506
!         ELSIF x.mode = RegI THEN t := x; t.mode := Reg; t.type := B.intType; PutDO( A.ADD, t, y); free(x);
LINE 645
LDLW 12
LDNW 8
CONST 11
JNEQ L508
LOCAL -44
LDLW 12
CONST 36
FIXCOPY
CONST 10
STLW -36
LDGW OMSPB.intType
STLW -32
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -44
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
!            x.mode := RegI; x.reg := y.reg; x.tmp := TRUE
LINE 646
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
RETURN
LABEL L508
!         ELSIF x.mode = Absol THEN ASSERT(y.mode = Reg);
LINE 647
LDLW 12
LDNW 8
CONST 13
JNEQ L510
LDLW 20
LDNW 8
CONST 10
JEQ L512
CONST 0
CONST 647
GLOBAL EASSERT
CALL 2
LABEL L512
!           x.mode := RegI; x.reg := y.reg; x.tmp := TRUE;
LINE 648
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
RETURN
LABEL L510
!         ELSE S.Mark("bad mode in index")
LINE 649
CONST 18
GLOBAL OMSPG.%35
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.DeRef 0 4 0x00100001
!   PROCEDURE DeRef*(VAR x: Item);
LINE 655
!     IF (x.mode IN {B.Var, B.StoredConst, B.Par, RegI}) THEN load(x, 0FFH); NilCheck(x.reg); x.mode := RegI; x.a := 0
LINE 657
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 657
LSL
CONST 2572
BITAND
JEQZ L537
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
JUMP L535
LABEL L537
!     ELSIF x.mode = Reg THEN x.mode := RegI; x.a := 0
LINE 658
LDLW 12
LDNW 8
CONST 10
JNEQ L539
CONST 11
LDLW 12
STNW 8
CONST 0
LDLW 12
STNW 20
JUMP L535
LABEL L539
!     ELSIF (x.mode = B.Const) & (x.type.form = B.Pointer) THEN x.mode := Absol
LINE 659
LDLW 12
LDNW 8
CONST 1
JNEQ L541
LDLW 12
LDNW 12
NCHECK 659
LOADW
CONST 7
JNEQ L541
CONST 13
LDLW 12
STNW 8
JUMP L535
LABEL L541
!     ELSE S.Mark("bad mode in DeRef")
LINE 660
CONST 18
GLOBAL OMSPG.%37
GLOBAL OMSPS.Mark
CALL 2
LABEL L535
!     END; x.b := 0
LINE 661
CONST 0
LDLW 12
STNW 24
RETURN
END

PROC OMSPG.Q 0 4 0x00100001
!   PROCEDURE Q(T: B.Type);
LINE 664
!     IF T.base # NIL THEN
LINE 666
LDLW 12
NCHECK 666
LDNW 28
JEQZ L545
!       Q(T.base); tddata[tdx] := T.base.typobj.val;
LINE 667
LDLW 12
NCHECK 667
LDNW 28
GLOBAL OMSPG.Q
CALL 1
LDLW 12
NCHECK 667
LDNW 28
NCHECK 667
LDNW 24
NCHECK 667
LDNW 60
GLOBAL OMSPG.tddata
LDGW OMSPG.tdx
CONST 160
BOUND 667
STIW
!       T.base.typobj.val := tdx*WordSize; INC(tdx)
LINE 668
LDGW OMSPG.tdx
CONST 2
TIMES
LDLW 12
NCHECK 668
LDNW 28
NCHECK 668
LDNW 24
NCHECK 668
STNW 60
LDGW OMSPG.tdx
INC
STGW OMSPG.tdx
LABEL L545
RETURN
END

PROC OMSPG.BuildTD 8 4 0x00100001
!   PROCEDURE BuildTD*(T: B.Type);
LINE 672
!   BEGIN s := T.size;
LINE 674
LDLW 12
NCHECK 674
LDNW 32
STLW -8
!     T.len := WordSize*tdx (*len used as address*); tddata[tdx] := s; INC(tdx);
LINE 675
LDGW OMSPG.tdx
CONST 2
TIMES
LDLW 12
NCHECK 675
STNW 16
LDLW -8
GLOBAL OMSPG.tddata
LDGW OMSPG.tdx
CONST 160
BOUND 675
STIW
LDGW OMSPG.tdx
INC
STGW OMSPG.tdx
!     k := T.nofpar;   (*extension level!*)
LINE 676
LDLW 12
NCHECK 676
LDNW 12
STLW -4
!     IF k > 3 THEN S.Mark("ext level too large")
LINE 677
LDLW -4
CONST 3
JLEQ L551
CONST 20
GLOBAL OMSPG.%38
GLOBAL OMSPS.Mark
CALL 2
JUMP L549
LABEL L551
!     ELSE Q(T);
LINE 678
LDLW 12
GLOBAL OMSPG.Q
CALL 1
LABEL L547
!       WHILE k < 3 DO tddata[tdx] := -1; INC(tdx); INC(k) END
LINE 679
LDLW -4
CONST 3
JGEQ L549
CONST -1
GLOBAL OMSPG.tddata
LDGW OMSPG.tdx
CONST 160
BOUND 679
STIW
LDGW OMSPG.tdx
INC
STGW OMSPG.tdx
INCL -4
JUMP L547
LABEL L549
!     IF tdx >= maxTD THEN S.Mark("too many record types"); tdx := 0 END
LINE 681
LDGW OMSPG.tdx
CONST 160
JLT L554
CONST 22
GLOBAL OMSPG.%39
GLOBAL OMSPS.Mark
CALL 2
CONST 0
STGW OMSPG.tdx
LABEL L554
RETURN
END

PROC OMSPG.TypeTest 108 6 OMSPG.TypeTest.%map
!   PROCEDURE TypeTest*(VAR x: Item; T: B.Type; varpar, isguard: BOOLEAN);
LINE 684
!     IF TypeChecked() OR ~isguard THEN
LINE 687
GLOBAL OMSPG.TypeChecked
CALLW 0
JNEQZ L556
LDLC 28
JNEQZ L557
LABEL L556
!       IF T = NIL THEN free(x); SetCC(x, A.AL)
LINE 688
LDLW 20
JNEQZ L571
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
LABEL L571
!       ELSE rh.reg := AllocR(); (*fetch tag into RH*)
LINE 689
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!         IF varpar THEN t := x;
LINE 690
LDLC 24
JEQZ L561
LOCAL -36
LDLW 12
CONST 36
FIXCOPY
!           IF t.mode IN {B.Var, B.Par} THEN t.mode := B.Var; INC(t.a, WordSize)
LINE 691
CONST 1
LDLW -28
CONST 32
BOUND 691
LSL
CONST 12
BITAND
JEQZ L564
CONST 2
STLW -28
LDLW -16
CONST 2
PLUS
STLW -16
JUMP L562
LABEL L564
!           ELSIF t.mode IN {Reg, RegI} THEN t.mode := Reg; INC(t.reg)
LINE 692
CONST 1
LDLW -28
CONST 32
BOUND 692
LSL
CONST 3072
BITAND
JEQZ L566
CONST 10
STLW -28
LDLC -36
INC
STLC -36
JUMP L562
LABEL L566
!           ELSE S.Mark("error in TypeTest")
LINE 693
CONST 18
GLOBAL OMSPG.%40
GLOBAL OMSPS.Mark
CALL 2
LABEL L562
!           END; PutDO(A.MOV, t, rh); free(x);
LINE 694
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
LINE 695
LOCAL -36
GLOBAL OMSPG.rh
CONST 36
FIXCOPY
CONST 11
STLW -28
LDLW 20
NCHECK 695
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
!           MakeTypTagAdr(tt, T); PutDO(A.CMP, tt, pt);
LINE 696
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
LINE 697
LDLC -72
GLOBAL OMSPG.freeR
CALL 1
GLOBAL OMSPG.Item
LOCAL -108
GLOBAL OMSPG.free
CALL 2
!           IF isguard THEN Trap(A.NE, 2) ELSE SetCC(x, A.EQ) END;
LINE 698
LDLC 28
JEQZ L569
CONST 2
CONST 0
GLOBAL OMSPG.Trap
CALL 2
RETURN
LABEL L569
CONST 1
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
LABEL L561
!         ELSE S.Mark("pointer not allowed")
LINE 699
CONST 20
GLOBAL OMSPG.%41
GLOBAL OMSPS.Mark
CALL 2
LABEL L557
RETURN
END

PROC OMSPG.SetVector 0 4 0x00200001
!   PROCEDURE SetVector*(n: BYTE; VAR h: B.Object);
LINE 705
!   BEGIN IF vector[n] # 0FFFFH THEN S.Mark("vect mult def")
LINE 706
GLOBAL OMSPG.vector
LDLC 12
CONST 32
BOUND 706
LDIW
CONST 65535
JEQ L575
CONST 14
GLOBAL OMSPG.%42
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L575
!     ELSE vector[n] := h.usedat; h.usedat := n+100H END
LINE 707
LDLW 16
LOADW
NCHECK 707
LDNW 12
GLOBAL OMSPG.vector
LDLC 12
CONST 32
BOUND 707
STIW
LDLC 12
CONST 256
PLUS
LDLW 16
LOADW
NCHECK 707
STNW 12
RETURN
END

PROC OMSPG.Not 4 3 0x00100001
!   PROCEDURE Not*(VAR x: Item);   (* x := ~x *)
LINE 712
!     IF x.mode # Cond THEN loadCond(x) END ;
LINE 715
LDLW 12
LDNW 8
CONST 12
JEQ L578
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L578
!     x.c := A.negated(x.c); t := x.a; x.a := x.b; x.b := t
LINE 716
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
LINE 719
!   BEGIN IF adr = 0 THEN offset := 0 ELSE offset := mcode.pc - adr END;
LINE 721
LDLW 16
JNEQZ L581
CONST 0
STLW -4
JUMP L579
LABEL L581
LDGW OMSPG.mcode
LDLW 16
MINUS
STLW -4
LABEL L579
!     A.PutJ(mcode, cond, offset)
LINE 722
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
LINE 725
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 727
LDLW 12
LDNW 8
CONST 12
JEQ L584
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L584
!     PutJFix(A.negated(x.c), x.a);
LINE 728
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
LINE 729
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
LINE 732
!     IF y.mode # Cond THEN loadCond(y) END ;
LINE 734
LDLW 20
LDNW 8
CONST 12
JEQ L587
LDLW 24
LDLW 20
GLOBAL OMSPG.loadCond
CALL 2
LABEL L587
!     x.a := A.merged(mcode, y.a, x.a); x.b := y.b; x.c := y.c
LINE 735
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
LINE 738
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 740
LDLW 12
LDNW 8
CONST 12
JEQ L590
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L590
!     PutJFix(x.c, x.b);
LINE 741
LDLW 12
LDNW 24
LDLW 12
LDNW 28
CONVNC
GLOBAL OMSPG.PutJFix
CALL 2
!     x.b := mcode.pc-2; FixLink(x.a); x.a := 0
LINE 742
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
LINE 745
!     IF y.mode # Cond THEN loadCond(y) END ;
LINE 747
LDLW 20
LDNW 8
CONST 12
JEQ L593
LDLW 24
LDLW 20
GLOBAL OMSPG.loadCond
CALL 2
LABEL L593
!     x.a := y.a; x.b := A.merged(mcode, y.b, x.b); x.c := y.c
LINE 748
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
LINE 753
!     IF x.type.form = B.Int THEN
LINE 756
LDLW 12
LDNW 12
NCHECK 756
LOADW
CONST 4
JNEQ L599
!       IF x.mode = B.Const THEN x.a := -x.a
LINE 757
LDLW 12
LDNW 8
CONST 1
JNEQ L602
LDLW 12
LDNW 20
UMINUS
LDLW 12
STNW 20
RETURN
LABEL L602
!       ELSE PutSO(A.NEG, x)
LINE 758
LDLW 16
LDLW 12
CONST 1
GLOBAL OMSPG.PutSO
CALL 3
RETURN
LABEL L599
!       IF x.mode = B.Const THEN x.a := -x.a-1
LINE 761
LDLW 12
LDNW 8
CONST 1
JNEQ L597
LDLW 12
LDNW 20
UMINUS
DEC
LDLW 12
STNW 20
RETURN
LABEL L597
!       ELSE t := cm1; PutDO(A.XOR, t, x)
LINE 762
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

PROC OMSPG.PrepCall 0 5 0x01d00001
!   PROCEDURE PrepCall*(VAR x: Item; VAR r, or: SET; VAR am: BOOLEAN);
LINE 767
!   BEGIN (*x.type.form = OM4B.Proc*) (* xr := -1; *) am := AllocUp;
LINE 769
LDGC OMSPG.AllocUp
LDLW 28
STOREC
!     r := RIU; IF x.mode IN {Reg, RegI} THEN EXCL(r, x.reg) END;
LINE 771
LDGW OMSPG.RIU
LDLW 20
STOREW
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 771
LSL
CONST 3072
BITAND
JEQZ L605
LDLW 20
DUP 0
LOADW
CONST 1
LDLW 12
LOADC
CONST 32
BOUND 771
LSL
BITNOT
BITAND
SWAP
STOREW
LABEL L605
!     or := x.type.ur*r; (*overwritten registers currently in use by the caller*)
LINE 772
LDLW 12
LDNW 12
NCHECK 772
LDNW 40
LDLW 20
LOADW
BITAND
LDLW 24
STOREW
!     SaveRegs(or); RIU := RIU - or;
LINE 773
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
!     IF x.mode > B.Par THEN push(x, 2) END;
LINE 775
LDLW 12
LDNW 8
CONST 3
JLEQ L608
CONST 2
LDLW 16
LDLW 12
GLOBAL OMSPG.push
CALL 3
LABEL L608
!     IF x.obj.type.leaf THEN SetAllocationMode(Register) END;
LINE 776
LDLW 12
LDNW 16
NCHECK 776
LDNW 24
NCHECK 776
CONST 36
LDIC
JEQZ L611
CONST 1
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
LABEL L611
!     PRU := PRU + (x.type.ur - or)
LINE 777
LDGW OMSPG.PRU
LDLW 12
LDNW 12
NCHECK 777
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
LINE 780
!   BEGIN par := typ.dsc; n := typ.nofpar; size := 0;
LINE 782
LDLW 12
NCHECK 782
LDNW 20
STLW -4
LDLW 12
NCHECK 782
LDNW 12
STLW -8
CONST 0
STLW -12
LABEL L612
!     WHILE n > 0 DO IF par.register = 0FFH THEN
LINE 783
LDLW -8
JLEQZ L614
LDLW -4
NCHECK 783
CONST 2
LDIC
CONST 255
JNEQ L617
!         IF (par.type.form = B.Array) & (par.type.len < 0) OR (par.type.form = B.Record) THEN INC(size, 2*WordSize)
LINE 784
LDLW -4
NCHECK 784
LDNW 24
NCHECK 784
LOADW
CONST 12
JNEQ L621
LDLW -4
NCHECK 784
LDNW 24
NCHECK 784
LDNW 16
JLTZ L619
LABEL L621
LDLW -4
NCHECK 784
LDNW 24
NCHECK 784
LOADW
CONST 13
JNEQ L620
LABEL L619
LDLW -12
CONST 4
PLUS
STLW -12
JUMP L617
LABEL L620
!         ELSE INC(size, WordSize)
LINE 785
LDLW -12
CONST 2
PLUS
STLW -12
LABEL L617
!       par := par.next; DEC(n)
LINE 788
LDLW -4
NCHECK 788
LDNW 16
STLW -4
DECL -8
JUMP L612
LABEL L614
!     RETURN size
LINE 791
LDLW -12
RETURN
END

PROC OMSPG.Call 76 6 0x0010180d
!   PROCEDURE Call*(VAR x: Item; r, or: SET; am: BOOLEAN);
LINE 794
!   BEGIN (*x.type.form = B.Proc*) s := getParSize(x.type);
LINE 796
LDLW 12
LDNW 12
GLOBAL OMSPG.getParSize
CALLW 1
STLW -76
!     IF x.mode = B.Const THEN PutSO(A.CALL, x)
LINE 797
LDLW 12
LDNW 8
CONST 1
JNEQ L631
LDLW 16
LDLW 12
CONST 37
GLOBAL OMSPG.PutSO
CALL 3
JUMP L623
LABEL L631
!     ELSE IF x.mode > B.Par THEN x.mode := RegI; x.reg := A.SP; x.a := s; INC(s, WordSize) END;
LINE 798
LDLW 12
LDNW 8
CONST 3
JLEQ L626
CONST 11
LDLW 12
STNW 8
CONST 1
LDLW 12
STOREC
LDLW -76
LDLW 12
STNW 20
LDLW -76
CONST 2
PLUS
STLW -76
LABEL L626
!       IF traps[5] # NIL THEN t := c0; PutDO(A.CMP, t, x); Trap(A.EQ, 5) END;
LINE 799
GLOBAL OMSPG.traps
LDNW 20
JEQZ L629
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
LABEL L629
!       PutSO(A.CALL, x); free(x)
LINE 800
LDLW 16
LDLW 12
CONST 37
GLOBAL OMSPG.PutSO
CALL 3
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LABEL L623
!     IF s # 0 THEN t := c0; t.a := s; rr := sp; PutDO(A.ADD, t, rr); adjFrmOfs(-s) END;
LINE 811
LDLW -76
JEQZ L634
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
LABEL L634
!     IF x.type.base.form = B.NoTyp THEN (*procedure*) RIU := VRS; SetAllocationMode(am)
LINE 812
LDLW 12
LDNW 12
NCHECK 812
LDNW 28
NCHECK 812
LOADW
CONST 9
JNEQ L640
LDGW OMSPG.VRS
STGW OMSPG.RIU
LDLC 28
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
JUMP L636
LABEL L640
!       x.tmp := TRUE; x.mode := Reg; resultRegister(rr); x.reg := rr.reg; x.am := A.Register;
LINE 814
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
LINE 815
LDLW 20
STGW OMSPG.RIU
LDLC 28
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
!       IF rr.reg IN RIU THEN x.tmp := FALSE; load(x, 0FFH) (*move result in a free register*)
LINE 816
LDGW OMSPG.RIU
CONST 1
LDLC -36
CONST 32
BOUND 816
LSL
BITAND
JEQZ L638
CONST 0
LDLW 12
CONST 33
STIC
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
JUMP L636
LABEL L638
!       ELSE INCL(RIU, rr.reg)
LINE 817
GLOBAL OMSPG.RIU
DUP 0
LOADW
CONST 1
LDLC -36
CONST 32
BOUND 817
LSL
BITOR
SWAP
STOREW
LABEL L636
!     RestoreRegs(or); RIU := RIU + or
LINE 820
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
LINE 823
!     IF op = S.plus THEN
LINE 826
LDLW 12
CONST 6
JNEQ L652
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := x.a + y.a
LINE 827
LDLW 16
LDNW 8
CONST 1
JNEQ L655
LDLW 24
LDNW 8
CONST 1
JNEQ L655
LDLW 16
LDNW 20
LDLW 24
LDNW 20
PLUS
LDLW 16
STNW 20
RETURN
LABEL L655
!       ELSIF y.mode = B.Const THEN
LINE 828
LDLW 24
LDNW 8
CONST 1
JNEQ L658
!         IF y.a # 0 THEN PutDO(A.ADD, y, x) END
LINE 829
LDLW 24
LDNW 20
JEQZ L642
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 5
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L658
!       ELSIF (x.mode = B.Const) & (x.a = 0) THEN tmp := convertSize(y, x.type); x := y; 
LINE 830
LDLW 16
LDNW 8
CONST 1
JNEQ L663
LDLW 16
LDNW 20
JNEQZ L663
LDLW 16
LDNW 12
LDLW 28
LDLW 24
GLOBAL OMSPG.convertSize
CALLW 3
STLC -1
LDLW 20
GLOBAL OMSPG.Item
JEQ L664
ERROR E_ASSIGN 830
LABEL L664
LDLW 16
LDLW 24
CONST 36
FIXCOPY
RETURN
LABEL L663
!       ELSE PutDO(A.ADD, y, x); free(y)
LINE 831
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
LABEL L652
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := x.a - y.a
LINE 834
LDLW 16
LDNW 8
CONST 1
JNEQ L644
LDLW 24
LDNW 8
CONST 1
JNEQ L644
LDLW 16
LDNW 20
LDLW 24
LDNW 20
MINUS
LDLW 16
STNW 20
RETURN
LABEL L644
!       ELSIF y.mode = B.Const THEN
LINE 835
LDLW 24
LDNW 8
CONST 1
JNEQ L647
!         IF y.a # 0 THEN PutDO(A.SUB, y, x) END
LINE 836
LDLW 24
LDNW 20
JEQZ L642
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 8
GLOBAL OMSPG.PutDO
CALL 5
RETURN
LABEL L647
!       ELSE PutDO(A.SUB, y, x); free(y)
LINE 837
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
LABEL L642
RETURN
END

PROC OMSPG.MulOp 156 9 OMSPG.MulOp.%map
!   PROCEDURE MulOp*(VAR x, y: Item);   (* x := x * y *)
LINE 842
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL;
LINE 844
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := x.a * y.a
LINE 845
LDLW 12
LDNW 8
CONST 1
JNEQ L671
LDLW 20
LDNW 8
CONST 1
JNEQ L671
LDLW 12
LDNW 20
LDLW 20
LDNW 20
TIMES
LDLW 12
STNW 20
RETURN
LABEL L671
!     ELSIF (y.mode = B.Const)  & (y.a >= 2) THEN load(x, 0FFH); t.ofs := y.a; A.PutDO(mcode, A.MUL, t, x, A.Word)
LINE 846
LDLW 20
LDNW 8
CONST 1
JNEQ L674
LDLW 20
LDNW 20
CONST 2
JLT L674
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
LABEL L674
!     ELSIF (x.mode = B.Const) & (x.a >= 2) THEN load(y, 0FFH); t.ofs := x.a; A.PutDO(mcode, A.MUL, t, y, A.Word);
LINE 847
LDLW 12
LDNW 8
CONST 1
JNEQ L677
LDLW 12
LDNW 20
CONST 2
JLT L677
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
LINE 848
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
LABEL L677
!       IF arith[0] = NIL THEN S.Mark("import Arith.mul16 function")
LINE 850
LDGW OMSPG.arith
JNEQZ L669
CONST 28
GLOBAL OMSPG.%43
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L669
!       ELSE MakeItem(p, arith[0], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); Call(p, r, or, pau);
LINE 851
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
LINE 852
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
LINE 857
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL;
LINE 859
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
!     IF op = S.div THEN
LINE 860
LDLW 12
CONST 3
JNEQ L697
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 861
LDLW 16
LDNW 8
CONST 1
JNEQ L706
LDLW 24
LDNW 8
CONST 1
JNEQ L706
!         IF y.a > 0 THEN x.a := x.a DIV y.a ELSE S.Mark("bad divisor") END
LINE 862
LDLW 24
LDNW 20
JLEQZ L709
LDLW 16
LDNW 20
LDLW 24
LDNW 20
ZCHECK 862
DIV
LDLW 16
STNW 20
RETURN
LABEL L709
CONST 12
GLOBAL OMSPG.%44
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L706
!       ELSIF (y.mode = B.Const) & (y.a >= 2) THEN load(x, 0FFH); t.ofs := y.a; A.PutDO(mcode, A.DIv, t, x, A.Word);
LINE 863
LDLW 24
LDNW 8
CONST 1
JNEQ L712
LDLW 24
LDNW 20
CONST 2
JLT L712
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
LINE 864
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
LABEL L712
!       ELSE IF arith[1] = NIL THEN S.Mark("import Arith.divmod16 procedure")
LINE 865
GLOBAL OMSPG.arith
LDNW 4
JNEQZ L704
CONST 32
GLOBAL OMSPG.%45
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L704
!         ELSE IF traps[6] # NIL THEN t := c0; PutDO(A.CMP, t, y); Trap(A.NE, 6); free(y) END;
LINE 866
GLOBAL OMSPG.traps
LDNW 24
JEQZ L702
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
LABEL L702
!           MakeItem(p, arith[1], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); t := c0; load(t, 7); Call(p, r, or, pau);
LINE 867
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
LINE 868
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
LABEL L697
!       IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 872
LDLW 16
LDNW 8
CONST 1
JNEQ L688
LDLW 24
LDNW 8
CONST 1
JNEQ L688
!         IF y.a > 0 THEN x.a := x.a MOD y.a ELSE S.Mark("bad modulus") END
LINE 873
LDLW 24
LDNW 20
JLEQZ L691
LDLW 16
LDNW 20
LDLW 24
LDNW 20
ZCHECK 873
MOD
LDLW 16
STNW 20
RETURN
LABEL L691
CONST 12
GLOBAL OMSPG.%46
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L688
!       ELSIF (y.mode = B.Const) & (y.a >= 2) THEN load(x, 0FFH); t.ofs := y.a; A.PutDO(mcode, A.MOd, t, x, A.Word);
LINE 874
LDLW 24
LDNW 8
CONST 1
JNEQ L694
LDLW 24
LDNW 20
CONST 2
JLT L694
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
LINE 875
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
LABEL L694
!       ELSE IF arith[1] = NIL THEN S.Mark("import Arith.divmod procedure")
LINE 876
GLOBAL OMSPG.arith
LDNW 4
JNEQZ L686
CONST 30
GLOBAL OMSPG.%47
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L686
!         ELSE IF traps[6] # NIL THEN t := c0; PutDO(A.CMP, t, y); Trap(A.NE, 6); free(y) END;
LINE 877
GLOBAL OMSPG.traps
LDNW 24
JEQZ L684
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
LABEL L684
!             MakeItem(p, arith[1], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); t := c1; load(t, 7); Call(p, r, or, pau); x.reg := p.reg;
LINE 878
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
LINE 879
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
LINE 886
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN x.a := LSL(x.a, y.a)
LINE 889
LDLW 16
LDNW 8
CONST 1
JNEQ L716
LDLW 24
LDNW 8
CONST 1
JNEQ L716
LDLW 16
LDNW 20
LDLW 24
LDNW 20
LSL
LDLW 16
STNW 20
RETURN
LABEL L716
!     ELSIF (y.mode = B.Const) & (y.a <= 4) THEN PutSO(A.NOP0, x); FOR i := 1 TO y.a DO PutSO(op, x) END
LINE 890
LDLW 24
LDNW 8
CONST 1
JNEQ L719
LDLW 24
LDNW 20
CONST 4
JGT L719
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
LABEL L720
LDLW -4
LDLW -52
JGT L714
LDLW 20
LDLW 16
LDLW 12
GLOBAL OMSPG.PutSO
CALL 3
INCL -4
JUMP L720
LABEL L719
!     ELSE PutSO(A.NOP0, x); t := c1; PutDO(A.ADD, t, y);
LINE 891
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
LINE 892
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
LINE 893
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
LINE 894
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
LABEL L714
RETURN
END

PROC OMSPG.Rla 0 6 0x00500001
!   PROCEDURE Rla*(VAR x, y: Item); (* x := RLA(x, y)*)
LINE 898
!   BEGIN shift(A.RLA, x, y)
LINE 899
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
LINE 902
!   BEGIN shift(A.RRA, x, y)
LINE 903
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
LINE 907
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 910
LDLW 16
LDNW 8
CONST 1
JNEQ L725
LDLW 24
LDNW 8
CONST 1
JNEQ L725
!       IF y.type.form = B.String THEN stringPop(y, ys) ELSE ys[0] := CHR(y.a); ys[1] := 0X END; stringPop(x, xs);
LINE 911
LDLW 24
LDNW 12
NCHECK 911
LOADW
CONST 11
JNEQ L728
CONST 1024
LOCAL -2048
LDLW 24
GLOBAL OMSPG.stringPop
CALL 3
JUMP L726
LABEL L728
LDLW 24
LDNW 20
STLC -2048
CONST 0
STLC -2047
LABEL L726
CONST 1024
LOCAL -1024
LDLW 16
GLOBAL OMSPG.stringPop
CALL 3
!       ix := 0; WHILE xs[ix] # 0X DO INC(ix) END;
LINE 912
CONST 0
STLW -2052
LABEL L729
LOCAL -1024
LDLW -2052
CONST 1024
BOUND 912
LDIC
JEQZ L731
INCL -2052
JUMP L729
LABEL L731
!       iy := -1; REPEAT INC(iy); xs[ix] := ys[iy]; INC(ix) UNTIL ys[iy] = 0X; (* xs = xs + ys *)
LINE 913
CONST -1
STLW -2056
LABEL L732
INCL -2056
LOCAL -2048
LDLW -2056
CONST 1024
BOUND 913
LDIC
LOCAL -1024
LDLW -2052
CONST 1024
BOUND 913
STIC
INCL -2052
LOCAL -2048
LDLW -2056
CONST 1024
BOUND 913
LDIC
JNEQZ L732
!       stringPut(x, xs, ix)
LINE 914
LDLW -2052
CONST 1024
LOCAL -1024
LDLW 20
LDLW 16
GLOBAL OMSPG.stringPut
CALL 5
RETURN
LABEL L725
!     ELSE S.Mark("const expected")
LINE 915
CONST 15
GLOBAL OMSPG.%48
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.Singleton 36 5 0x00101801
!   PROCEDURE Singleton*(VAR x: Item);  (* x := {x} *)
LINE 921
!   BEGIN y := x; x.mode := B.Const; x.a := 1; Rla(x, y)
LINE 923
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
LINE 926
!     IF (x.mode = B.Const) & ( y.mode = B.Const) THEN
LINE 929
LDLW 12
LDNW 8
CONST 1
JNEQ L740
LDLW 20
LDNW 8
CONST 1
JNEQ L740
!       IF x.a <= y.a THEN x.a := ORD({x.a .. y.a}) ELSE x.a := 0 END
LINE 930
LDLW 12
LDNW 20
LDLW 20
LDNW 20
JGT L743
CONST -1
LDLW 12
LDNW 20
CONST 32
BOUND 930
LSL
CONST -2
LDLW 20
LDNW 20
CONST 32
BOUND 930
LSL
BITNOT
BITAND
LDLW 12
STNW 20
RETURN
LABEL L743
CONST 0
LDLW 12
STNW 20
RETURN
LABEL L740
!     ELSE IF arith[2] = NIL THEN S.Mark("import Arith.set function")
LINE 931
GLOBAL OMSPG.arith
LDNW 8
JNEQZ L738
CONST 26
GLOBAL OMSPG.%49
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L738
!       ELSE  MakeItem(p, arith[2], 0); x0 := x; y0 := y; PrepCall(p, r, or, pau); load(x, 5); load(y, 6); Call(p, r, or, pau);
LINE 932
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
LINE 933
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
LINE 938
!     IF x.mode = B.Const THEN  c.mode := B.Const; c.type := B.intType; c.a := LSL(1, x.a); c.obj := NIL; PutDO(A.BIT, c, y);
LINE 941
LDLW 12
LDNW 8
CONST 1
JNEQ L747
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
LINE 942
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
JUMP L745
LABEL L747
!     ELSE load(x, 0FFH); load(y, 0FFH); t := c1; PutDO(A.ADD, t, x);
LINE 943
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
LINE 944
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
LINE 945
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
LINE 946
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
LABEL L745
!     SetCC(x, A.NE)
LINE 948
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.SetOp 8 6 0x00a00001
!   PROCEDURE SetOp*(op: INTEGER; VAR x, y: Item);   (* x := x op y *)
LINE 951
!     IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 954
LDLW 16
LDNW 8
CONST 1
JNEQ L759
LDLW 24
LDNW 8
CONST 1
JNEQ L759
!       xset := SYSTEM.VAL(SET, x.a); yset := SYSTEM.VAL(SET, y.a);
LINE 955
LDLW 16
LDNW 20
STLW -4
LDLW 24
LDNW 20
STLW -8
!       IF op = S.plus THEN xset := xset + yset
LINE 956
LDLW 12
CONST 6
JNEQ L762
LDLW -4
LDLW -8
BITOR
STLW -4
JUMP L768
LABEL L762
!       ELSIF op = S.minus THEN xset := xset - yset
LINE 957
LDLW 12
CONST 7
JNEQ L764
LDLW -4
LDLW -8
BITNOT
BITAND
STLW -4
JUMP L768
LABEL L764
!       ELSIF op = S.times THEN xset := xset * yset
LINE 958
LDLW 12
CONST 1
JNEQ L766
LDLW -4
LDLW -8
BITAND
STLW -4
JUMP L768
LABEL L766
!       ELSIF op = S.rdiv THEN xset := xset / yset
LINE 959
LDLW 12
CONST 2
JNEQ L768
LDLW -4
LDLW -8
BITXOR
STLW -4
LABEL L768
!       x.a := SYSTEM.VAL(INTEGER, xset)
LINE 961
LDLW -4
LDLW 16
STNW 20
RETURN
LABEL L759
!     ELSE load(x, 0FFH);
LINE 962
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
!       IF op = S.plus THEN PutDO(A.BIS, y, x)
LINE 963
LDLW 12
CONST 6
JNEQ L751
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 13
GLOBAL OMSPG.PutDO
CALL 5
JUMP L757
LABEL L751
!       ELSIF op = S.minus THEN PutDO(A.BIC, y, x)
LINE 964
LDLW 12
CONST 7
JNEQ L753
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 12
GLOBAL OMSPG.PutDO
CALL 5
JUMP L757
LABEL L753
!       ELSIF op = S.times THEN PutDO(A.AND, y, x)
LINE 965
LDLW 12
CONST 1
JNEQ L755
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 15
GLOBAL OMSPG.PutDO
CALL 5
JUMP L757
LABEL L755
!       ELSIF op = S.rdiv THEN PutDO(A.XOR, y, x)
LINE 966
LDLW 12
CONST 2
JNEQ L757
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 14
GLOBAL OMSPG.PutDO
CALL 5
LABEL L757
!       free(y)
LINE 968
LDLW 28
LDLW 24
GLOBAL OMSPG.free
CALL 2
RETURN
END

PROC OMSPG.AdjustSize 4 3 0x00110001
!   PROCEDURE AdjustSize(VAR x: Item);
LINE 974
!   BEGIN IF x.type.form = B.Int THEN st := B.byteType ELSIF x.type.form = B.Set THEN st := B.byteSetType ELSE st := NIL END;
LINE 976
LDLW 12
LDNW 12
NCHECK 976
LOADW
CONST 4
JNEQ L772
LDGW OMSPB.byteType
STLW -4
JUMP L770
LABEL L772
LDLW 12
LDNW 12
NCHECK 976
LOADW
CONST 6
JNEQ L774
LDGW OMSPB.byteSetType
STLW -4
JUMP L770
LABEL L774
CONST 0
STLW -4
LABEL L770
!     IF (st # NIL) & (x.mode = B.Const) & (x.a >= 0) & (x.a < 100H) THEN x.type := st END
LINE 977
LDLW -4
JEQZ L777
LDLW 12
LDNW 8
CONST 1
JNEQ L777
LDLW 12
LDNW 20
JLTZ L777
LDLW 12
LDNW 20
CONST 256
JGEQ L777
LDLW -4
LDLW 12
STNW 12
LABEL L777
RETURN
END

PROC OMSPG.IntCompare 0 6 0x01500001
!   PROCEDURE IntCompare*(VAR x, y, z: Item);   (* x < y *)
LINE 980
!     IF (x.mode = Cond) OR (y.mode = Cond) THEN S.Mark("not implemented") END;
LINE 982
LDLW 12
LDNW 8
CONST 12
JEQ L782
LDLW 20
LDNW 8
CONST 12
JNEQ L783
LABEL L782
CONST 16
GLOBAL OMSPG.%31
GLOBAL OMSPS.Mark
CALL 2
LABEL L783
!     PutDO(A.CMP, y, x); free(y); free(x);
LINE 983
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
LINE 984
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
LINE 987
!     IF (x.mode = Cond) OR (y.mode = Cond) THEN S.Mark("not implemented") END;
LINE 989
LDLW 16
LDNW 8
CONST 12
JEQ L786
LDLW 24
LDNW 8
CONST 12
JNEQ L787
LABEL L786
CONST 16
GLOBAL OMSPG.%31
GLOBAL OMSPS.Mark
CALL 2
LABEL L787
!     AdjustSize(x); AdjustSize(y);
LINE 990
LDLW 20
LDLW 16
GLOBAL OMSPG.AdjustSize
CALL 2
LDLW 28
LDLW 24
GLOBAL OMSPG.AdjustSize
CALL 2
!     IF x.type.size # y.type.size THEN
LINE 991
LDLW 16
LDNW 12
NCHECK 991
LDNW 32
LDLW 24
LDNW 12
NCHECK 991
LDNW 32
JEQ L791
!       IF x.type.size = 1 THEN IF x.mode # B.Const THEN load(x, 0FFH) END; x.type := B.intType
LINE 992
LDLW 16
LDNW 12
NCHECK 992
LDNW 32
CONST 1
JNEQ L797
LDLW 16
LDNW 8
CONST 1
JEQ L800
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.load
CALL 3
LABEL L800
LDGW OMSPB.intType
LDLW 16
STNW 12
JUMP L791
LABEL L797
!       ELSE IF y.mode # B.Const THEN load(y, 0FFH) END; y.type := B.intType
LINE 993
LDLW 24
LDNW 8
CONST 1
JEQ L795
CONST 255
LDLW 28
LDLW 24
GLOBAL OMSPG.load
CALL 3
LABEL L795
LDGW OMSPB.intType
LDLW 24
STNW 12
LABEL L791
!     IF op < S.gtr THEN PutDO(A.CMP, y, x); IF x.type.size = 1 THEN SetCC(x, urelmap[op - S.eql]) ELSE SetCC(x, relmap[op - S.eql]) END
LINE 996
LDLW 12
CONST 13
JGEQ L806
LDLW 20
LDLW 16
LDLW 28
LDLW 24
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDNW 12
NCHECK 996
LDNW 32
CONST 1
JNEQ L809
GLOBAL OMSPG.urelmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 996
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L802
LABEL L809
GLOBAL OMSPG.relmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 996
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L802
LABEL L806
!     ELSE PutDO(A.CMP, x, y); IF x.type.size = 1 THEN SetCC(x, urelmap[op - S.gtr + 2]) ELSE SetCC(x, relmap[op - S.gtr + 2]) END
LINE 997
LDLW 28
LDLW 24
LDLW 20
LDLW 16
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
LDLW 16
LDNW 12
NCHECK 997
LDNW 32
CONST 1
JNEQ L804
GLOBAL OMSPG.urelmap
LDLW 12
CONST 11
MINUS
CONST 4
BOUND 997
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
JUMP L802
LABEL L804
GLOBAL OMSPG.relmap
LDLW 12
CONST 11
MINUS
CONST 4
BOUND 997
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
LABEL L802
!     free(y); free(x)
LINE 999
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
LINE 1002
!     IF x0.type.form = B.String THEN loadAdr(x0, 0FFH) ELSE loadAdr(x0, 0FFH) END;
LINE 1006
LDLW 16
LDNW 12
NCHECK 1006
LOADW
CONST 11
JNEQ L812
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.loadAdr
CALL 3
JUMP L810
LABEL L812
CONST 255
LDLW 20
LDLW 16
GLOBAL OMSPG.loadAdr
CALL 3
LABEL L810
!     IF y0.type.form = B.String THEN loadAdr(y0, 0FFH) ELSE loadAdr(y0, 0FFH) END;
LINE 1007
LDLW 24
LDNW 12
NCHECK 1007
LOADW
CONST 11
JNEQ L815
CONST 255
LDLW 28
LDLW 24
GLOBAL OMSPG.loadAdr
CALL 3
JUMP L813
LABEL L815
CONST 255
LDLW 28
LDLW 24
GLOBAL OMSPG.loadAdr
CALL 3
LABEL L813
!     IF op < S.gtr THEN x := x0; y := y0 ELSE x := y0; y := x0 END;
LINE 1008
LDLW 12
CONST 13
JGEQ L818
LOCAL -44
LDLW 16
CONST 36
FIXCOPY
LOCAL -80
LDLW 24
CONST 36
FIXCOPY
JUMP L816
LABEL L818
LOCAL -44
LDLW 24
CONST 36
FIXCOPY
LOCAL -80
LDLW 16
CONST 36
FIXCOPY
LABEL L816
!     (*Compare:*) pc0 := mcode.pc;
LINE 1009
LDGW OMSPG.mcode
STLW -4
!     x.am := A.IndirectIncr; rh.reg := AllocR(); A.PutDO(mcode, A.MOV, x, rh, A.Byte);
LINE 1010
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
LINE 1011
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
LINE 1012
LDGW OMSPG.mcode
STLW -8
CONST 0
CONST 0
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
!     A.PutDO(mcode, A.CMP, c0, rh, A.Byte); (*compare char x^ to 0*)
LINE 1013
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
LINE 1014
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
LINE 1015
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
LINE 1016
LDLW 12
CONST 13
JGEQ L821
GLOBAL OMSPG.urelmap
LDLW 12
CONST 9
MINUS
CONST 4
BOUND 1016
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
RETURN
LABEL L821
GLOBAL OMSPG.urelmap
LDLW 12
CONST 11
MINUS
CONST 4
BOUND 1016
LDIW
LDLW 20
LDLW 16
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.StrToChar 4 4 0x00100001
!   PROCEDURE StrToChar*(VAR x: Item);
LINE 1021
!   BEGIN ASSERT((x.type.form = B.String) & (Length(x) = 2));
LINE 1023
LDLW 12
LDNW 12
NCHECK 1023
LOADW
CONST 11
JNEQ L822
LDLW 12
GLOBAL OMSPG.Length
CALLW 1
CONST 2
JEQ L823
LABEL L822
CONST 0
CONST 1023
GLOBAL EASSERT
CALL 2
LABEL L823
!     stringPop(x, sc); x.type := B.charType; x.a := ORD(sc[0])
LINE 1024
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
RETURN
END

PROC OMSPG.StoreConstInt 8 4 0
!   PROCEDURE StoreConstInt(adr, size, val: INTEGER);
LINE 1027
!     FOR i := 1 TO size DO IF codata[adr] # 0FFH THEN S.Mark("already set") END;
LINE 1030
LDLW 16
STLW -8
CONST 1
STLW -4
LABEL L825
LDLW -4
LDLW -8
JGT L826
GLOBAL OMSPG.codata
LDLW 12
CONST 10000
BOUND 1030
OFFSET
LOADC
CONST 255
JEQ L829
CONST 12
GLOBAL OMSPG.%50
GLOBAL OMSPS.Mark
CALL 2
LABEL L829
!       codata[adr] := val MOD 100H; val := val DIV 100H; INC(adr)
LINE 1031
LDLW 20
CONST 256
MOD
CONVNC
GLOBAL OMSPG.codata
LDLW 12
CONST 10000
BOUND 1031
OFFSET
STOREC
LDLW 20
CONST 256
DIV
STLW 20
INCL 12
!     FOR i := 1 TO size DO IF codata[adr] # 0FFH THEN S.Mark("already set") END;
LINE 1030
INCL -4
JUMP L825
LABEL L826
RETURN
END

PROC OMSPG.Store 8 6 0x00500001
!   PROCEDURE Store*(VAR x, y: Item); (* x := y *)
LINE 1035
!     IF x.mode = B.StoredConst THEN adr := x.a + x.b; val := UpdateChain("k", adr, y.a, y);
LINE 1038
LDLW 12
LDNW 8
CONST 9
JNEQ L832
LDLW 12
LDNW 20
LDLW 12
LDNW 24
PLUS
STLW -4
LDLW 20
LDLW 20
LDNW 20
LDLW -4
CONST 107
ALIGNC
GLOBAL OMSPG.UpdateChain
CALLW 4
STLW -8
!       IF y.mode = B.Const THEN
LINE 1039
LDLW 20
LDNW 8
CONST 1
JNEQ L835
!         IF y.type.form IN {B.Int, B.Set, B.Pointer, B.NilTyp} THEN StoreConstInt(adr, x.type.size, val)
LINE 1040
CONST 1
LDLW 20
LDNW 12
NCHECK 1040
LOADW
CONST 32
BOUND 1040
LSL
CONST 464
BITAND
JEQZ L838
LDLW -8
LDLW 12
LDNW 12
NCHECK 1040
LDNW 32
LDLW -4
GLOBAL OMSPG.StoreConstInt
CALL 3
RETURN
LABEL L838
!         ELSE (* TODO*) S.Mark("not implemented"); S.DebugHex("form", y.type.form);
LINE 1041
CONST 16
GLOBAL OMSPG.%31
GLOBAL OMSPS.Mark
CALL 2
LDLW 20
LDNW 12
NCHECK 1041
LOADW
CONST 5
GLOBAL OMSPG.%51
GLOBAL OMSPS.DebugHex
CALL 3
RETURN
LABEL L835
!       ELSIF y.mode = Absol THEN StoreConstInt(adr, x.type.size, val)
LINE 1043
LDLW 20
LDNW 8
CONST 13
JNEQ L840
LDLW -8
LDLW 12
LDNW 12
NCHECK 1043
LDNW 32
LDLW -4
GLOBAL OMSPG.StoreConstInt
CALL 3
RETURN
LABEL L840
!       ELSE S.Mark("not allowed is Store"); S.DebugHex("mode", y.mode);
LINE 1044
CONST 21
GLOBAL OMSPG.%52
GLOBAL OMSPS.Mark
CALL 2
LDLW 20
LDNW 8
CONST 5
GLOBAL OMSPG.%53
GLOBAL OMSPS.DebugHex
CALL 3
RETURN
LABEL L832
!     ELSE PutDO(A.MOV, y, x); free(y); free(x)
LINE 1046
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
LINE 1050
!   BEGIN res := TRUE;
LINE 1052
CONST 1
STLC -1
!     IF (x.obj # NIL) & (x.obj = y.obj) & (x.mode = y.mode) & ((x.mode # RegI) OR (x.reg = y.reg)) THEN
LINE 1053
LDLW 12
LDNW 16
JEQZ L843
LDLW 12
LDNW 16
LDLW 16
LDNW 16
JNEQ L843
LDLW 12
LDNW 8
LDLW 16
LDNW 8
JNEQ L843
LDLW 12
LDNW 8
CONST 11
JNEQ L842
LDLW 12
LOADC
LDLW 16
LOADC
JNEQ L843
LABEL L842
!       IF x.mode = B.Par THEN ox := x.b ELSE ox := x.a END;
LINE 1054
LDLW 12
LDNW 8
CONST 3
JNEQ L846
LDLW 12
LDNW 24
STLW -8
JUMP L844
LABEL L846
LDLW 12
LDNW 20
STLW -8
LABEL L844
!       IF y.mode = B.Par THEN oy := y.b ELSE oy := y.a END;
LINE 1055
LDLW 16
LDNW 8
CONST 3
JNEQ L849
LDLW 16
LDNW 24
STLW -12
JUMP L847
LABEL L849
LDLW 16
LDNW 20
STLW -12
LABEL L847
!       d := ox - oy
LINE 1056
LDLW -8
LDLW -12
MINUS
LDLW 20
STOREW
JUMP L841
LABEL L843
!     ELSIF (x.mode = B.Var) & (y.mode = B.Var) & (x.obj.lev >= 0) & (x.obj.lev = y.obj.lev) THEN d := x.a - y.a
LINE 1057
LDLW 12
LDNW 8
CONST 2
JNEQ L855
LDLW 16
LDNW 8
CONST 2
JNEQ L855
LDLW 12
LDNW 16
NCHECK 1057
LDNW 8
JLTZ L855
LDLW 12
LDNW 16
NCHECK 1057
LDNW 8
LDLW 16
LDNW 16
NCHECK 1057
LDNW 8
JNEQ L855
LDLW 12
LDNW 20
LDLW 16
LDNW 20
MINUS
LDLW 20
STOREW
JUMP L841
LABEL L855
!     ELSIF (x.mode = B.Const) & (y.mode = B.Const) & (x.c = 0) & (x.a >= ORD({17})) & (y.a >= ORD({17})) THEN d := x.a - y.a
LINE 1058
LDLW 12
LDNW 8
CONST 1
JNEQ L860
LDLW 16
LDNW 8
CONST 1
JNEQ L860
LDLW 12
LDNW 28
JNEQZ L860
LDLW 12
LDNW 20
CONST 131072
JLT L860
LDLW 16
LDNW 20
CONST 131072
JLT L860
LDLW 12
LDNW 20
LDLW 16
LDNW 20
MINUS
LDLW 20
STOREW
JUMP L841
LABEL L860
!     ELSE res := FALSE
LINE 1059
CONST 0
STLC -1
LABEL L841
!     RETURN res
LINE 1062
LDLC -1
RETURN
END

PROC OMSPG.StoreStruct 100 9 OMSPG.StoreStruct.%map
!   PROCEDURE StoreStruct*(VAR x, y: Item); (* x := y *)
LINE 1065
!   BEGIN IF x.mode = B.StoredConst THEN S.Mark("not implemented in StoreStruct") END;
LINE 1067
LDLW 12
LDNW 8
CONST 9
JNEQ L867
CONST 31
GLOBAL OMSPG.%54
GLOBAL OMSPS.Mark
CALL 2
LABEL L867
!     t.mode := B.Const; t.type := B.intType; t.reg := 0; t.am := A.Immediate; t.obj := NIL; ti := y;
LINE 1068
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
LINE 1069
CONST -1
STLW -8
LDLW 12
LDNW 12
STLW -96
LDLW 20
LDNW 12
STLW -100
!     oneReg := distance(x, y, d);
LINE 1070
LOCAL -16
LDLW 20
LDLW 12
GLOBAL OMSPG.distance
CALLW 3
STLC -89
!     IF ytyp.size # 0 THEN
LINE 1071
LDLW -100
NCHECK 1071
LDNW 32
JEQZ L870
!       loadAdr(y, 0FFH); IF oneReg THEN free(x); x.reg := y.reg; x.tmp := FALSE; DEC(d, WordSize) ELSE loadAdr(x, 0FFH); d := 0 END; rh.reg := AllocR();
LINE 1072
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.loadAdr
CALL 3
LDLC -89
JEQZ L873
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
JUMP L871
LABEL L873
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
CONST 0
STLW -16
LABEL L871
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!       IF (xtyp.form = B.Array) &  (xtyp.len > 0) THEN
LINE 1073
LDLW -96
NCHECK 1073
LOADW
CONST 12
JNEQ L876
LDLW -96
NCHECK 1073
LDNW 16
JLEQZ L876
!         IF ytyp.len >= 0 THEN
LINE 1074
LDLW -100
NCHECK 1074
LDNW 16
JLTZ L889
!           IF xtyp.size = ytyp.size THEN t.a := (ytyp.size+1) DIV 2; PutDO(A.MOV, t, rh)
LINE 1075
LDLW -96
NCHECK 1075
LDNW 32
LDLW -100
NCHECK 1075
LDNW 32
JNEQ L892
LDLW -100
NCHECK 1075
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
JUMP L874
LABEL L892
!           ELSE S.Mark("different length/size, not implemented")
LINE 1076
CONST 39
GLOBAL OMSPG.%55
GLOBAL OMSPS.Mark
CALL 2
JUMP L874
LABEL L889
!         ELSE (*y  open array*) ti.a := y.a+WordSize; PutDO(A.MOV, ti, rh); s := ytyp.base.size;  (*element size*)
LINE 1078
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
NCHECK 1078
LDNW 28
NCHECK 1078
LDNW 32
STLW -4
!           t := c0; PutDO(A.CMP, t, rh); pc0 := mcode.pc; A.PutJ(mcode, A.EQ, 0); (*JEQ L0*)
LINE 1079
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
LINE 1080
LDLW -4
CONST 1
JNEQ L880
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
JUMP L882
LABEL L880
!           ELSIF s # 2 THEN ASSERT(~ODD(s)); t.ofs := s DIV 2; A.PutDO(mcode, A.MUL, t, rh, A.Word)
LINE 1081
LDLW -4
CONST 2
JEQ L882
LDLW -4
CONST 1
BITAND
JEQZ L884
CONST 0
CONST 1081
GLOBAL EASSERT
CALL 2
LABEL L884
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
LABEL L882
!           IF traps[3] # NIL THEN t.a := (xtyp.size+1) DIV 2+1; PutDO(A.CMP, t, rh); Trap(A.GE, 3) END
LINE 1083
GLOBAL OMSPG.traps
LDNW 12
JEQZ L874
LDLW -96
NCHECK 1083
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
JUMP L874
LABEL L876
!       ELSIF xtyp.form = B.Record THEN t.a := xtyp.size DIV 2; PutDO(A.MOV, t, rh)
LINE 1085
LDLW -96
NCHECK 1085
LOADW
CONST 13
JNEQ L895
LDLW -96
NCHECK 1085
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
JUMP L874
LABEL L895
!       ELSE S.Mark("inadmissible assignment")
LINE 1086
CONST 24
GLOBAL OMSPG.%56
GLOBAL OMSPS.Mark
CALL 2
LABEL L874
!       (*L1*) pc1 := mcode.pc; x.am := A.Indexed; x.ofs := d; y.am := A.IndirectIncr;
LINE 1088
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
LINE 1089
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
JNEQZ L898
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
LABEL L898
!       t := c1; PutDO(A.SUB, t, rh); A.PutJ(mcode, A.NE, pc1 - mcode.pc -2); (*BNE L1*)
LINE 1090
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
LINE 1091
LDLW -8
CONST -1
JEQ L901
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
LABEL L901
!       freeR(rh.reg); free(y); free(x)
LINE 1092
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
LABEL L870
RETURN
END

PROC OMSPG.CopyString 1156 9 OMSPG.CopyString.%map
!   PROCEDURE CopyString*(VAR x, y: Item);  (* x := y *)
LINE 1096
!   BEGIN len := x.type.len; 
LINE 1098
LDLW 12
LDNW 12
NCHECK 1098
LDNW 16
STLW -4
!     IF x.mode = B.StoredConst THEN
LINE 1099
LDLW 12
LDNW 8
CONST 9
JNEQ L912
!       IF (y.mode = B.Const) & (y.type.form = B.String) & (y.mode # 0) THEN
LINE 1100
LDLW 20
LDNW 8
CONST 1
JNEQ L915
LDLW 20
LDNW 12
NCHECK 1100
LOADW
CONST 11
JNEQ L915
LDLW 20
LDNW 8
JEQZ L915
!         IF len < Length(y) THEN S.Mark("string too long")
LINE 1101
LDLW -4
LDLW 20
GLOBAL OMSPG.Length
CALLW 1
JGEQ L926
CONST 16
GLOBAL OMSPG.%57
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L926
!         ELSE dadr := x.a + x.b; sadr := 0; stringPop(y, ys);
LINE 1102
LDLW 12
LDNW 20
LDLW 12
LDNW 24
PLUS
STLW -16
CONST 0
STLW -20
CONST 1024
LOCAL -1152
LDLW 20
GLOBAL OMSPG.stringPop
CALL 3
!           FOR i := 1 TO Length(y) DO IF codata[dadr] # 0FFH THEN S.Mark("already set") END;
LINE 1103
LDLW 20
GLOBAL OMSPG.Length
CALLW 1
STLW -1156
CONST 1
STLW -12
LABEL L917
LDLW -12
LDLW -1156
JGT L918
GLOBAL OMSPG.codata
LDLW -16
CONST 10000
BOUND 1103
OFFSET
LOADC
CONST 255
JEQ L921
CONST 12
GLOBAL OMSPG.%50
GLOBAL OMSPS.Mark
CALL 2
LABEL L921
!             codata[dadr] := ORD(ys[sadr]); INC(dadr); INC(sadr)
LINE 1104
LOCAL -1152
LDLW -20
CONST 1024
BOUND 1104
LDIC
CONVNC
GLOBAL OMSPG.codata
LDLW -16
CONST 10000
BOUND 1104
OFFSET
STOREC
INCL -16
INCL -20
!           FOR i := 1 TO Length(y) DO IF codata[dadr] # 0FFH THEN S.Mark("already set") END;
LINE 1103
INCL -12
JUMP L917
LABEL L918
!           WHILE dadr MOD WordSize # 0 DO codata[dadr] := 0; INC(dadr) END
LINE 1106
LDLW -16
CONST 2
MOD
JEQZ L902
CONST 0
GLOBAL OMSPG.codata
LDLW -16
CONST 10000
BOUND 1106
OFFSET
STOREC
INCL -16
JUMP L918
LABEL L915
!       ELSE S.Mark("not allowed")
LINE 1108
CONST 12
GLOBAL OMSPG.%21
GLOBAL OMSPS.Mark
CALL 2
RETURN
LABEL L912
!     ELSE t.mode := B.Const; t.type := B.intType; t.reg := 0; t.am := A.Immediate; t.obj := NIL; ti := y;
LINE 1110
CONST 1
STLW -48
LDGW OMSPB.intType
STLW -44
CONST 0
STLC -56
CONST 6
STLC -55
CONST 0
STLW -40
LOCAL -92
LDLW 20
CONST 36
FIXCOPY
!       loadAdr(x, 0FFH);
LINE 1111
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
!       IF len >= 0 THEN IF len < Length(y) THEN S.Mark("string too long") END
LINE 1112
LDLW -4
JLTZ L905
LDLW -4
LDLW 20
GLOBAL OMSPG.Length
CALLW 1
JGEQ L910
CONST 16
GLOBAL OMSPG.%57
GLOBAL OMSPS.Mark
CALL 2
JUMP L910
LABEL L905
!       ELSIF traps[3] # NIL THEN ti.a := x.a+WordSize; PutDO(A.MOV, ti, rh); (*open array len*)
LINE 1113
GLOBAL OMSPG.traps
LDNW 12
JEQZ L910
LDLW 12
LDNW 20
CONST 2
PLUS
STLW -72
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -92
CONST 4
GLOBAL OMSPG.PutDO
CALL 5
!         t.a := Length(y); PutDO(A.CMP, t, rh); Trap(A.L, 3)
LINE 1114
LDLW 20
GLOBAL OMSPG.Length
CALLW 1
STLW -36
GLOBAL OMSPG.Item
GLOBAL OMSPG.rh
GLOBAL OMSPG.Item
LOCAL -56
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
CONST 3
CONST 6
GLOBAL OMSPG.Trap
CALL 2
LABEL L910
!       loadAdr(y, 0FFH);
LINE 1116
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.loadAdr
CALL 3
!       (*L0:*) pc0 := mcode.pc; x.am := A.Indexed; x.ofs := 0; y.am := A.IndirectIncr; x1 := x;
LINE 1117
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
LOCAL -128
LDLW 12
CONST 36
FIXCOPY
!       A.PutDO(mcode, A.MOV, y, x, A.Word); x.am := A.Register; t := c2; A.PutDO(mcode, A.ADD, t, x, A.Word);
LINE 1118
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
LOCAL -56
GLOBAL OMSPG.c2
CONST 36
FIXCOPY
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.Item
LOCAL -56
CONST 5
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutDO
CALL 8
!       y.am := A.Indexed; y.ofs := -1; t := c0; A.PutDO(mcode, A.CMP, t, y, A.Byte) (*test 0*); A.PutJ(mcode, A.NE, pc0 - mcode.pc -2); (*BNE L0*)
LINE 1119
CONST 1
LDLW 20
CONST 1
STIC
CONST -1
LDLW 20
STNW 4
LOCAL -56
GLOBAL OMSPG.c0
CONST 36
FIXCOPY
CONST 64
LDLW 24
LDLW 20
GLOBAL OMSPG.Item
LOCAL -56
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
!       free(y); free(x)
LINE 1120
LDLW 24
LDLW 20
GLOBAL OMSPG.free
CALL 2
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LABEL L902
RETURN
END

PROC OMSPG.OpenArrayParam 72 9 0x0050180d
!   PROCEDURE OpenArrayParam*(VAR x: Item; par: B.Object);
LINE 1126
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL;  t.ofs := x.type.len;
LINE 1128
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
LDLW 12
LDNW 12
NCHECK 1128
LDNW 16
STLW -32
!     ti.am := A.Indexed; ti.obj := NIL;
LINE 1129
CONST 1
STLC -71
CONST 0
STLW -56
!     IF par.register # 0FFH THEN (*in registers*) loadAdr(x, par.register); rh.reg := AllocRP(par.register+1);
LINE 1130
LDLW 20
NCHECK 1130
CONST 2
LDIC
CONST 255
JEQ L934
LDLW 20
NCHECK 1130
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
LDLW 20
NCHECK 1130
CONST 2
LDIC
INC
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
!       IF t.ofs >= 0 THEN A.PutDO(mcode, A.MOV, t, rh, A.Word)
LINE 1131
LDLW -32
JLTZ L937
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
LABEL L937
!       ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word)
LINE 1132
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
LABEL L934
!     ELSE (*in stack*) adjFrmOfs(WordSize);
LINE 1134
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
!       IF t.ofs >= 0 THEN A.PutSO(mcode, A.PUSH, t, A.Word)
LINE 1135
LDLW -32
JLTZ L932
CONST 0
GLOBAL OMSPG.Item
LOCAL -36
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L930
LABEL L932
!       ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutSO(mcode, A.PUSH, ti, A.Word)
LINE 1136
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
LABEL L930
!       pushAdr(x)
LINE 1138
LDLW 16
LDLW 12
GLOBAL OMSPG.pushAdr
CALL 2
RETURN
END

PROC OMSPG.VarParam 80 9 OMSPG.VarParam.%map
!   PROCEDURE VarParam*(VAR x: Item; par: B.Object);
LINE 1142
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL; xtyp := x.type; t.ofs := xtyp.len;
LINE 1144
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
NCHECK 1144
LDNW 16
STLW -36
!     ti.am := A.Indexed; ti.obj := NIL; xmd := x.mode;
LINE 1145
CONST 1
STLC -75
CONST 0
STLW -60
LDLW 12
LDNW 8
STLW -4
!     IF par.register # 0FFH THEN
LINE 1146
LDLW 20
NCHECK 1146
CONST 2
LDIC
CONST 255
JEQ L952
!       loadAdr(x, par.register);
LINE 1147
LDLW 20
NCHECK 1147
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
!       IF (par.type.form = B.Array) & (par.type.len < 0) THEN rh.reg := AllocRP(par.register+1); (*open array*)
LINE 1148
LDLW 20
NCHECK 1148
LDNW 24
NCHECK 1148
LOADW
CONST 12
JNEQ L955
LDLW 20
NCHECK 1148
LDNW 24
NCHECK 1148
LDNW 16
JGEQZ L955
LDLW 20
NCHECK 1148
CONST 2
LDIC
INC
GLOBAL OMSPG.AllocRP
CALLW 1
CONVNC
STGC OMSPG.rh
!         IF t.ofs >= 0 THEN A.PutDO(mcode, A.MOV, t, rh, A.Word)
LINE 1149
LDLW -36
JLTZ L958
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
LABEL L958
!         ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word)
LINE 1150
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
LABEL L955
!       ELSIF par.type.form = B.Record THEN
LINE 1152
LDLW 20
NCHECK 1152
LDNW 24
NCHECK 1152
LOADW
CONST 13
JNEQ L938
!         IF xmd = B.Par THEN rh.reg := AllocRP(par.register+1); ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutDO(mcode, A.MOV, ti, rh, A.Word)
LINE 1153
LDLW -4
CONST 3
JNEQ L964
LDLW 20
NCHECK 1153
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
LABEL L964
!         ELSE xmd := loadTypTagAdr(xtyp, par.register+1)
LINE 1154
LDLW 20
NCHECK 1154
CONST 2
LDIC
INC
LDLW -80
GLOBAL OMSPG.loadTypTagAdr
CALLW 2
STLW -4
RETURN
LABEL L952
!       IF (par.type.form = B.Array) & (par.type.len < 0) THEN (*open array*) rh.reg := AllocR();
LINE 1158
LDLW 20
NCHECK 1158
LDNW 24
NCHECK 1158
LOADW
CONST 12
JNEQ L941
LDLW 20
NCHECK 1158
LDNW 24
NCHECK 1158
LDNW 16
JGEQZ L941
GLOBAL OMSPG.AllocR
CALLW 0
CONVNC
STGC OMSPG.rh
!         adjFrmOfs(WordSize);
LINE 1159
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
!         IF t.ofs >= 0 THEN A.PutSO(mcode, A.PUSH, t, A.Word)
LINE 1160
LDLW -36
JLTZ L944
CONST 0
GLOBAL OMSPG.Item
LOCAL -40
CONST 36
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutSO
CALL 6
JUMP L947
LABEL L944
!         ELSE ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutSO(mcode, A.PUSH, ti, A.Word)
LINE 1161
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
JUMP L947
LABEL L941
!       ELSIF (par.type.form = B.Record) THEN
LINE 1163
LDLW 20
NCHECK 1163
LDNW 24
NCHECK 1163
LOADW
CONST 13
JNEQ L947
!         IF xmd = B.Par THEN adjFrmOfs(WordSize);
LINE 1164
LDLW -4
CONST 3
JNEQ L950
CONST 2
GLOBAL OMSPG.adjFrmOfs
CALL 1
!           rh.reg := AllocR(); ti.reg := A.SP; ti.ofs := x.a+WordSize+frame; A.PutSO(mcode, A.PUSH, ti, A.Word)
LINE 1165
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
JUMP L947
LABEL L950
!         ELSE pushTypTagAdr(xtyp)
LINE 1166
LDLW -80
GLOBAL OMSPG.pushTypTagAdr
CALL 1
LABEL L947
!       pushAdr(x)
LINE 1169
LDLW 16
LDLW 12
GLOBAL OMSPG.pushAdr
CALL 2
LABEL L938
RETURN
END

PROC OMSPG.ValueParam 0 4 0x00500001
!   PROCEDURE ValueParam*(VAR x: Item; par: B.Object);
LINE 1173
!   BEGIN IF par.register # 0FFH THEN load(x, par.register) ELSE push(x, par.type.size) END
LINE 1174
LDLW 20
NCHECK 1174
CONST 2
LDIC
CONST 255
JEQ L967
LDLW 20
NCHECK 1174
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
RETURN
LABEL L967
LDLW 20
NCHECK 1174
LDNW 24
NCHECK 1174
LDNW 32
LDLW 16
LDLW 12
GLOBAL OMSPG.push
CALL 3
RETURN
END

PROC OMSPG.StringParam 36 9 0x00501801
!   PROCEDURE StringParam*(VAR x: Item; par: B.Object);
LINE 1177
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL; t.ofs := Length(x);
LINE 1179
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
LDLW 12
GLOBAL OMSPG.Length
CALLW 1
STLW -32
!     IF par.register # 0FFH THEN loadAdr(x, par.register);
LINE 1180
LDLW 20
NCHECK 1180
CONST 2
LDIC
CONST 255
JEQ L970
LDLW 20
NCHECK 1180
CONST 2
LDIC
LDLW 16
LDLW 12
GLOBAL OMSPG.loadAdr
CALL 3
!       rh.reg := AllocRP(par.register+1); A.PutDO(mcode, A.MOV, t, rh, A.Word) (*len*)
LINE 1181
LDLW 20
NCHECK 1181
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
LABEL L970
!     ELSE adjFrmOfs(WordSize); A.PutSO(mcode, A.PUSH, t, A.Word) (*len*);
LINE 1182
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
!       pushAdr(x)
LINE 1183
LDLW 16
LDLW 12
GLOBAL OMSPG.pushAdr
CALL 2
RETURN
END

PROC OMSPG.For0 0 5 0x00500001
!   PROCEDURE For0*(VAR x, y: Item);
LINE 1189
!   BEGIN Store(x, y)
LINE 1190
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
LINE 1193
!     IF w.a > 0 THEN PutDO(A.CMP, x, z)
LINE 1195
LDLW 36
LDNW 20
JLEQZ L973
LDLW 32
LDLW 28
LDLW 16
LDLW 12
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
JUMP L971
LABEL L973
!     ELSIF w.a < 0 THEN PutDO(A.CMP, z, x)
LINE 1196
LDLW 36
LDNW 20
JGEQZ L975
LDLW 16
LDLW 12
LDLW 32
LDLW 28
CONST 9
GLOBAL OMSPG.PutDO
CALL 5
JUMP L971
LABEL L975
!     ELSE S.Mark("zero increment")
LINE 1197
CONST 15
GLOBAL OMSPG.%58
GLOBAL OMSPS.Mark
CALL 2
LABEL L971
!     L := mcode.pc; PutJFix(A.L, 0); free(z)
LINE 1199
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
LINE 1202
!   BEGIN free(x); MakeItem(x, x.obj, x.obj.lev); (* discard effects of previous loading if any *)
LINE 1203
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
LDLW 12
LDNW 16
NCHECK 1203
LDNW 8
LDLW 12
LDNW 16
LDLW 16
LDLW 12
GLOBAL OMSPG.MakeItem
CALL 4
!     x.rdo := FALSE; PutDO(A.ADD, w, x);
LINE 1204
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
LINE 1209
!   RETURN mcode.pc
LINE 1210
LDGW OMSPG.mcode
RETURN
END

PROC OMSPG.FJump 0 3 0x00100001
!   PROCEDURE FJump*(VAR L: INTEGER);
LINE 1213
!   BEGIN PutJFix(A.AL, L); L := mcode.pc - 2
LINE 1214
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
LINE 1217
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 1219
LDLW 12
LDNW 8
CONST 12
JEQ L978
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L978
!     IF x.c # A.AL THEN PutJFix(A.negated(x.c), x.a); x.a := mcode.pc - 2 END;
LINE 1220
LDLW 12
LDNW 28
CONST 7
JEQ L981
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
LABEL L981
!     FixLink(x.b)
LINE 1221
LDLW 12
LDNW 24
GLOBAL OMSPG.FixLink
CALL 1
RETURN
END

PROC OMSPG.BJump 0 5 0
!   PROCEDURE BJump*(L: INTEGER);
LINE 1224
!   BEGIN A.PutJ(mcode, A.AL, L - mcode.pc - 2)
LINE 1225
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
LINE 1228
!     IF x.mode # Cond THEN loadCond(x) END;
LINE 1230
LDLW 12
LDNW 8
CONST 12
JEQ L984
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L984
!     IF x.c # A.AL THEN A.PutJ(mcode, A.negated(x.c), L - mcode.pc - 2) END;
LINE 1231
LDLW 12
LDNW 28
CONST 7
JEQ L987
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
LABEL L987
!     FixLink(x.b); FixLinkWith(x.a, L)
LINE 1232
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

PROC OMSPG.Fixup 0 2 0x00100001
!   PROCEDURE Fixup*(VAR x: Item);
LINE 1235
!   BEGIN FixLink(x.a)
LINE 1236
LDLW 12
LDNW 20
GLOBAL OMSPG.FixLink
CALL 1
RETURN
END

PROC OMSPG.Enter 72 6 0x0000180d
!   PROCEDURE Enter*(size: INTEGER; int: BOOLEAN; savedregs: SET);
LINE 1239
!     OfsPTOS(0, 0, FALSE); IF int THEN (*SR copy is on TOS*) OfsPTOS(1, 1, TRUE) END;
LINE 1242
CONST 0
ALIGNC
CONST 0
CONST 0
GLOBAL OMSPG.OfsPTOS
CALL 3
LDLC 16
JEQZ L990
CONST 1
ALIGNC
CONST 1
CONST 1
GLOBAL OMSPG.OfsPTOS
CALL 3
LABEL L990
!     frame := 0;
LINE 1243
CONST 0
STGW OMSPG.frame
!     IF size >= ORD({16}) THEN S.Mark("local variables size exeeded") END;
LINE 1245
LDLW 12
CONST 65536
JLT L993
CONST 29
GLOBAL OMSPG.%59
GLOBAL OMSPS.Mark
CALL 2
LABEL L993
!     IF size # 0 THEN t := c0; t.a := size; tsp := sp; PutDO(A.SUB, t, tsp); adjFrmOfs(size) END;
LINE 1246
LDLW 12
JEQZ L996
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
LABEL L996
!     SaveRegs(savedregs); (*save registers before use*)
LINE 1248
LDLW 20
GLOBAL OMSPG.SaveRegs
CALL 1
!     VRS := RIU; vframe := frame
LINE 1249
LDGW OMSPG.RIU
STGW OMSPG.VRS
LDGW OMSPG.frame
STGW OMSPG.vframe
RETURN
END

PROC OMSPG.Return 72 9 0x0020180d
!   PROCEDURE Return*(form: INTEGER; VAR x: Item; size: INTEGER; int: BOOLEAN; savedregs: SET);
LINE 1252
!   BEGIN t.reg := 0; t.am := A.Immediate; t.obj := NIL;
LINE 1254
CONST 0
STLC -36
CONST 6
STLC -35
CONST 0
STLW -20
!     IF form # B.NoTyp THEN resultRegister(rr); x.tmp := TRUE; IF rr.reg IN RIU THEN freeR(rr.reg) END;
LINE 1255
LDLW 12
CONST 9
JEQ L999
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
BOUND 1255
LSL
BITAND
JEQZ L1002
LDLC -72
GLOBAL OMSPG.freeR
CALL 1
LABEL L1002
!       load(x, rr.reg); IF x.reg IN RIU THEN free(x) END
LINE 1256
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
BOUND 1256
LSL
BITAND
JEQZ L999
LDLW 20
LDLW 16
GLOBAL OMSPG.free
CALL 2
LABEL L999
!     RestoreRegs(savedregs); PRU := PRU - savedregs;
LINE 1259
LDLW 32
GLOBAL OMSPG.RestoreRegs
CALL 1
LDGW OMSPG.PRU
LDLW 32
BITNOT
BITAND
STGW OMSPG.PRU
!     IF size # 0 THEN t.ofs := size; A.PutDO(mcode, A.ADD, t, sp, A.Word); adjFrmOfs(-size) END;
LINE 1260
LDLW 24
JEQZ L1008
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
LABEL L1008
!     IF int THEN A.PutNO(mcode, A.RETI); OfsPTOS(-1, -1, TRUE);
LINE 1261
LDLC 28
JEQZ L1011
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
LINE 1262
LDGW OMSPG.PRU
JEQZ L1009
CONST 26
GLOBAL OMSPG.%60
GLOBAL OMSPS.Mark
CALL 2
JUMP L1009
LABEL L1011
!     ELSE A.PutNO(mcode, A.RET)
LINE 1263
CONST 384
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
LABEL L1009
!     IF frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos # 0 THEN S.DebugHex("stack seg", frmOfsSegs.Segs[frmOfsSegs.NofSegs].ofsptos) END;
LINE 1265
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 1265
INDEXD
LDNW 4
JEQZ L1017
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDGW OMSPG.frmOfsSegs
CONST 1000
BOUND 1265
INDEXD
LDNW 4
CONST 10
GLOBAL OMSPG.%61
GLOBAL OMSPS.DebugHex
CALL 3
LABEL L1017
!     SetAllocationMode(Stack); RIU := {}; VRS := RIU
LINE 1266
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
LINE 1271
!     IF upordown = 0 THEN op := A.ADD ELSE op := A.SUB END;
LINE 1274
LDLW 12
JNEQZ L1020
CONST 5
STLC -1
JUMP L1018
LABEL L1020
CONST 8
STLC -1
LABEL L1018
!     IF y.type.form = B.NoTyp THEN y.mode := B.Const; y.a := 1; y.tmp := FALSE END;
LINE 1275
LDLW 24
LDNW 12
NCHECK 1275
LOADW
CONST 9
JNEQ L1023
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
LABEL L1023
!     PutDO(op, y, x);
LINE 1276
LDLW 20
LDLW 16
LDLW 28
LDLW 24
LDLC -1
GLOBAL OMSPG.PutDO
CALL 5
!     free(y); free(x)
LINE 1277
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
LINE 1280
!   BEGIN IF inorex = 0 THEN op := A.BIS ELSE op := A.BIC END;
LINE 1282
LDLW 12
JNEQZ L1026
CONST 13
STLC -1
JUMP L1024
LABEL L1026
CONST 12
STLC -1
LABEL L1024
!     IF y.mode = B.Const THEN t.mode := B.Const; t.type := B.intType; t.tmp := FALSE; t.obj := NIL; t.ofs := 0; t.a := LSL(1, y.a); PutDO(op, t, x)
LINE 1283
LDLW 24
LDNW 8
CONST 1
JNEQ L1029
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
LABEL L1029
!     ELSE z := c1; load(z, 0FFH); Rla(z, y); PutDO(op, z, x); free(z)
LINE 1284
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
LINE 1288
!     IF traps[7] # NIL
LINE 1291
GLOBAL OMSPG.traps
LDNW 28
JEQZ L1032
!       pc0 := 0;
LINE 1293
CONST 0
STLW -8
!       IF x.mode # Cond THEN loadCond(x) END;
LINE 1294
LDLW 12
LDNW 8
CONST 12
JEQ L1035
LDLW 16
LDLW 12
GLOBAL OMSPG.loadCond
CALL 2
LABEL L1035
!       IF x.a = 0 THEN cond := A.negated(x.c);
LINE 1295
LDLW 12
LDNW 20
JNEQZ L1038
LDLW 12
LDNW 28
GLOBAL OMSPA.negated
CALLW 1
STLW -4
JUMP L1036
LABEL L1038
!       ELSE pc0 := mcode.pc; PutJFix(x.c, 0); FixLink(x.a); cond := A.AL
LINE 1296
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
LABEL L1036
!       Trap(cond, 7); FixLink(x.b);
LINE 1298
CONST 7
LDLW -4
GLOBAL OMSPG.Trap
CALL 2
LDLW 12
LDNW 24
GLOBAL OMSPG.FixLink
CALL 1
!       IF pc0 # 0 THEN A.fix(mcode, pc0, mcode.pc - pc0 - 2) END
LINE 1299
LDLW -8
JEQZ L1032
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
LABEL L1032
RETURN
END

PROC OMSPG.Copy 52 9 0x01500301
!   PROCEDURE Copy*(VAR x, y, z: Item); (*y := x*)
LINE 1303
!   BEGIN pc0 := 0;
LINE 1305
CONST 0
STLW -4
!     IF z.mode = B.Const THEN
LINE 1306
LDLW 28
LDNW 8
CONST 1
JNEQ L1047
!       IF z.a > 0 THEN load(z, 0FFH) ELSE S.Mark("bad count") END
LINE 1307
LDLW 28
LDNW 20
JLEQZ L1050
CONST 255
LDLW 32
LDLW 28
GLOBAL OMSPG.load
CALL 3
JUMP L1042
LABEL L1050
CONST 10
GLOBAL OMSPG.%62
GLOBAL OMSPS.Mark
CALL 2
JUMP L1042
LABEL L1047
!     ELSE load(z, 0FFH);
LINE 1308
CONST 255
LDLW 32
LDLW 28
GLOBAL OMSPG.load
CALL 3
!       IF traps[3] # NIL THEN t := c0; PutDO(A.CMP, t, z); Trap(A.L, 3) END;
LINE 1309
GLOBAL OMSPG.traps
LDNW 12
JEQZ L1045
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
LABEL L1045
!       pc0 := mcode.pc; A.PutJ(mcode, A.EQ, 0); (*JEQ L0*)
LINE 1310
LDGW OMSPG.mcode
STLW -4
CONST 0
CONST 1
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutJ
CALL 4
LABEL L1042
!     oneReg := distance(y, x, d);
LINE 1312
LOCAL -12
LDLW 12
LDLW 20
GLOBAL OMSPG.distance
CALLW 3
STLC -49
!     load(x, 0FFH);
LINE 1313
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
!     IF oneReg THEN free(y); y.reg := x.reg; y.tmp := FALSE; DEC(d, WordSize);
LINE 1314
LDLC -49
JEQZ L1053
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
JUMP L1051
LABEL L1053
!     ELSE load(y, 0FFH); d := 0 END;
LINE 1315
CONST 255
LDLW 24
LDLW 20
GLOBAL OMSPG.load
CALL 3
CONST 0
STLW -12
LABEL L1051
!     pc1 := mcode.pc; x.a := 0; x.am := A.IndirectIncr; y.am := A.Indexed; y.ofs := d; A.PutDO(mcode, A.MOV, x, y, A.Word);
LINE 1316
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
LINE 1317
CONST 0
LDLW 20
CONST 1
STIC
LDLC -49
JNEQZ L1056
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
LABEL L1056
!     t := c1; A.PutDO(mcode, A.SUB, t, z, A.Word); A.PutJ(mcode, A.NE, pc1 - mcode.pc - 2); (*BNE L1*)
LINE 1318
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
LINE 1319
LDLW -4
JEQZ L1059
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
LABEL L1059
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
LINE 1322
!     IF fct = 0 THEN op := A.BIC ELSE op := A.BIS END;
LINE 1325
LDLW 12
JNEQZ L1062
CONST 12
STLC -1
JUMP L1060
LABEL L1062
CONST 13
STLC -1
LABEL L1060
!     t := sr; PutDO(op, x, t); free(x)
LINE 1326
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
LINE 1329
!     IF fct = 0 THEN op := A.BIC ELSE op := A.BIS END;
LINE 1332
LDLW 12
JNEQZ L1065
CONST 12
STLC -1
JUMP L1063
LABEL L1065
CONST 13
STLC -1
LABEL L1063
!     t.mode := B.Var; t.c := 1; t.type := B.intType; t.a := 0; t.tmp := FALSE; t.rdo := FALSE; PutDO(op, x, t); free(x); free(t)
LINE 1333
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
LINE 1338
!     IF x.mode = B.Const THEN x.a := ABS(x.a)
LINE 1341
LDLW 12
LDNW 8
CONST 1
JNEQ L1068
LDLW 12
LDNW 20
GLOBAL ABSINT
CALLW 1
LDLW 12
STNW 20
RETURN
LABEL L1068
!     ELSE t := c0; PutDO(A.CMP, t, x); pc := mcode.pc; A.PutJ(mcode, A.GE, 0);
LINE 1342
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
LINE 1343
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
LINE 1347
!   BEGIN t := c1; PutDO(A.BIT, t, x); SetCC(x, A.NE); free(x)
LINE 1349
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
LINE 1352
!   BEGIN IF x.mode = Cond THEN load(x, 0FFH) END
LINE 1353
LDLW 12
LDNW 8
CONST 12
JNEQ L1071
CONST 255
LDLW 16
LDLW 12
GLOBAL OMSPG.load
CALL 3
LABEL L1071
RETURN
END

PROC OMSPG.Len 0 3 0x00100001
!   PROCEDURE Len*(VAR x: Item);
LINE 1356
!     IF x.type.form = B.String THEN free(x); x.mode := B.Const; x.a := Length(x); x.type := B.intType
LINE 1358
LDLW 12
LDNW 12
NCHECK 1358
LOADW
CONST 11
JNEQ L1079
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
LABEL L1079
!     ELSIF x.type.len >= 0 THEN free(x); x.mode := B.Const; x.a := x.type.len; x.type := B.intType
LINE 1359
LDLW 12
LDNW 12
NCHECK 1359
LDNW 16
JLTZ L1081
LDLW 16
LDLW 12
GLOBAL OMSPG.free
CALL 2
CONST 1
LDLW 12
STNW 8
LDLW 12
LDNW 12
NCHECK 1359
LDNW 16
LDLW 12
STNW 20
LDGW OMSPB.intType
LDLW 12
STNW 12
RETURN
LABEL L1081
!       IF x.mode IN {B.Var, B.Par} THEN x.mode := B.Var; INC(x.a, WordSize)
LINE 1361
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 1361
LSL
CONST 12
BITAND
JEQZ L1075
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
LABEL L1075
!       ELSIF x.mode IN {Reg, RegI} THEN x.mode := Reg; INC(x.reg)
LINE 1362
CONST 1
LDLW 12
LDNW 8
CONST 32
BOUND 1362
LSL
CONST 3072
BITAND
JEQZ L1077
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
LABEL L1077
!       ELSE S.Mark("bad mode in Len")
LINE 1363
CONST 16
GLOBAL OMSPG.%63
GLOBAL OMSPS.Mark
CALL 2
RETURN
END

PROC OMSPG.ClrC 0 4 0
!   PROCEDURE ClrC*;
LINE 1368
!   BEGIN A.PutNO(mcode, A.CLRC)
LINE 1369
CONST 385
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
RETURN
END

PROC OMSPG.Nop 0 9 0
!   PROCEDURE Nop*;
LINE 1372
!   BEGIN A.PutDO(mcode, A.MOV, c0, cg2, A.Word)
LINE 1373
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
LINE 1376
!   BEGIN PutSO(A.SWPB, x)
LINE 1377
LDLW 16
LDLW 12
CONST 33
GLOBAL OMSPG.PutSO
CALL 3
RETURN
END

PROC OMSPG.Shift 0 5 0x00a00001
!   PROCEDURE Shift*(fct: INTEGER; VAR x, y: Item); (*x := x op y*)
LINE 1380
!   BEGIN IF (x.mode = B.Const) & (y.mode = B.Const) THEN
LINE 1381
LDLW 16
LDNW 8
CONST 1
JNEQ L1089
LDLW 24
LDNW 8
CONST 1
JNEQ L1089
!       IF fct = 0 THEN x.a := LSL(x.a, y.a) ELSIF fct = 2 THEN x.a := ASR(x.a, y.a) END
LINE 1382
LDLW 12
JNEQZ L1092
LDLW 16
LDNW 20
LDLW 24
LDNW 20
LSL
LDLW 16
STNW 20
RETURN
LABEL L1092
LDLW 12
CONST 2
JNEQ L1087
LDLW 16
LDNW 20
LDLW 24
LDNW 20
ASR
LDLW 16
STNW 20
RETURN
LABEL L1089
!     ELSE IF fct = 0 THEN Rla(x, y) ELSIF fct = 2 THEN Rra(x, y) END
LINE 1383
LDLW 12
JNEQZ L1085
LDLW 28
LDLW 24
LDLW 20
LDLW 16
GLOBAL OMSPG.Rla
CALL 4
RETURN
LABEL L1085
LDLW 12
CONST 2
JNEQ L1087
LDLW 28
LDLW 24
LDLW 20
LDLW 16
GLOBAL OMSPG.Rra
CALL 4
LABEL L1087
RETURN
END

PROC OMSPG.Rotate 0 4 0x00200001
!   PROCEDURE Rotate*(fct: INTEGER; VAR x: Item);
LINE 1387
!   BEGIN IF fct = 0 THEN PutSO(A.RLC, x) ELSIF fct = 2 THEN PutSO(A.RRC, x) END
LINE 1388
LDLW 12
JNEQZ L1098
LDLW 20
LDLW 16
CONST 258
GLOBAL OMSPG.PutSO
CALL 3
RETURN
LABEL L1098
LDLW 12
CONST 2
JNEQ L1100
LDLW 20
LDLW 16
CONST 32
GLOBAL OMSPG.PutSO
CALL 3
LABEL L1100
RETURN
END

PROC OMSPG.Logical 4 6 0x00a00001
!   PROCEDURE Logical*(fct: INTEGER; VAR x, y: Item);
LINE 1391
!     IF fct = 0 THEN op := A.BIC ELSIF fct = 1 THEN op := A.BIS ELSIF fct = 2 THEN op := A.XOR ELSE op := A.AND END;
LINE 1394
LDLW 12
JNEQZ L1103
CONST 12
STLC -1
JUMP L1101
LABEL L1103
LDLW 12
CONST 1
JNEQ L1105
CONST 13
STLC -1
JUMP L1101
LABEL L1105
LDLW 12
CONST 2
JNEQ L1107
CONST 14
STLC -1
JUMP L1101
LABEL L1107
CONST 15
STLC -1
LABEL L1101
!     PutDO(op, y, x); free(y); free(x)
LINE 1395
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
LINE 1398
!   BEGIN PutDO(A.ADDC, y, x); free(y); free(x)
LINE 1399
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
LINE 1402
!   BEGIN PutDO(A.SUBC, y, x); free(y); free(x)
LINE 1403
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
LINE 1406
!   BEGIN PutDO(A.BIT, y, x); free(y); free(x);
LINE 1407
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
LINE 1408
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.SetCC
CALL 3
RETURN
END

PROC OMSPG.Condition 0 4 0x00100001
!   PROCEDURE Condition*(VAR x: Item);
LINE 1411
!   BEGIN (*x.mode = Const*) SetCC(x, x.a)
LINE 1412
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
LINE 1415
!     IF (t.form = B.Proc) THEN
LINE 1417
LDLW 20
NCHECK 1417
LOADW
CONST 10
JNEQ L1110
!       IF (x.mode = B.Const) & (x.type.form IN {B.Int, B.Pointer}) THEN x.c := 1 ELSE S.Mark("not allowed") END
LINE 1418
LDLW 12
LDNW 8
CONST 1
JNEQ L1113
CONST 1
LDLW 12
LDNW 12
NCHECK 1418
LOADW
CONST 32
BOUND 1418
LSL
CONST 144
BITAND
JEQZ L1113
CONST 1
LDLW 12
STNW 28
RETURN
LABEL L1113
CONST 12
GLOBAL OMSPG.%21
GLOBAL OMSPS.Mark
CALL 2
LABEL L1110
RETURN
END

PROC OMSPG.Open 4 4 0
!   PROCEDURE Open*;
LINE 1422
!   BEGIN A.Init(mcode); gvfix := NIL; curImport := 0; frmOfsSegs.NofSegs := 0; frmOfsSegs.Segs[0].ofsptos := 0;
LINE 1424
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.Init
CALL 2
CONST 0
STGW OMSPG.gvfix
CONST 0
STGW OMSPG.curImport
CONST 0
STGW OMSPG.frmOfsSegs
CONST 0
GLOBAL OMSPG.frmOfsSegs
STNW 8
!     FOR i := 0 TO LEN(traps) - 1 DO traps[i] := NIL END;
LINE 1425
CONST 0
STLW -4
LABEL L1115
LDLW -4
CONST 7
JGT L1116
CONST 0
GLOBAL OMSPG.traps
LDLW -4
CONST 8
BOUND 1425
STIW
INCL -4
JUMP L1115
LABEL L1116
!     FOR i := 0 TO LEN(arith) - 1 DO arith[i] := NIL END;
LINE 1426
CONST 0
STLW -4
LABEL L1117
LDLW -4
CONST 3
JGT L1118
CONST 0
GLOBAL OMSPG.arith
LDLW -4
CONST 4
BOUND 1426
STIW
INCL -4
JUMP L1117
LABEL L1118
!     FOR i := 0 TO LEN(vector) - 1 DO vector[i] := 0FFFFH END;
LINE 1427
CONST 0
STLW -4
LABEL L1119
LDLW -4
CONST 31
JGT L1120
CONST 65535
GLOBAL OMSPG.vector
LDLW -4
CONST 32
BOUND 1427
STIW
INCL -4
JUMP L1119
LABEL L1120
!     tdx := 0; cox := 0; cofix := NIL; nofcos := 0; RIU := {};
LINE 1428
CONST 0
STGW OMSPG.tdx
CONST 0
STGW OMSPG.cox
CONST 0
STGW OMSPG.cofix
CONST 0
STGW OMSPG.nofcos
CONST 0
STGW OMSPG.RIU
!     rh.reg := 15; rh.am := A.Register; rh.ofs := 0; rh.obj := NIL; rh.mode := Reg; rh.type := B.intType;
LINE 1429
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
LINE 1430
CONST 0
ALIGNC
GLOBAL OMSPG.SetAllocationMode
CALL 1
RETURN
END

PROC OMSPG.SetDataSize 0 2 0
!   PROCEDURE SetDataSize*(dc: INTEGER);
LINE 1433
!   BEGIN varsize := dc
LINE 1434
LDLW 12
STGW OMSPG.varsize
RETURN
END

PROC OMSPG.Header 0 4 0
!   PROCEDURE Header*;
LINE 1437
!   BEGIN entry := mcode.pc; frame := 0; vframe := 0; OfsPTOS(0, 0, FALSE); SetAllocationMode(Stack)
LINE 1438
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
LINE 1441
!   BEGIN Files.WriteByte(R, w MOD 100H); Files.WriteByte(R, w DIV 100H MOD 100H);
LINE 1442
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
LINE 1445
!   BEGIN res := (obj.class = B.Const) & (obj.type.form = B.Proc) & (obj.usedat # 0);
LINE 1447
LDLW 12
NCHECK 1447
LOADC
CONST 1
JNEQ L1121
LDLW 12
NCHECK 1447
LDNW 24
NCHECK 1447
LOADW
CONST 10
JEQ L1122
LABEL L1121
CONST 0
JUMP L1123
LABEL L1122
LDLW 12
NCHECK 1447
LDNW 12
CONST 0
NEQ
LABEL L1123
STLC -1
!     IF local THEN res := res & (obj.lev = 0) ELSE res := res & (obj.lev < 0) END
LINE 1448
LDLC 16
JEQZ L1130
LDLC -1
JNEQZ L1132
CONST 0
JUMP L1133
LABEL L1132
LDLW 12
NCHECK 1448
LDNW 8
CONST 0
EQ
LABEL L1133
STLC -1
JUMP L1125
LABEL L1130
LDLC -1
JNEQZ L1127
CONST 0
JUMP L1128
LABEL L1127
LDLW 12
NCHECK 1448
LDNW 8
CONST 0
LT
LABEL L1128
STLC -1
LABEL L1125
!     RETURN res
LINE 1450
LDLC -1
RETURN
END

PROC OMSPG.handlerFixupCond 4 2 0x00100001
!   PROCEDURE handlerFixupCond(obj: B.Object; local:BOOLEAN): BOOLEAN;
LINE 1453
!   BEGIN res := (obj.class = B.Const) & (obj.type.form = B.Handler) & (obj.usedat # 0);
LINE 1455
LDLW 12
NCHECK 1455
LOADC
CONST 1
JNEQ L1134
LDLW 12
NCHECK 1455
LDNW 24
NCHECK 1455
LOADW
CONST 15
JEQ L1135
LABEL L1134
CONST 0
JUMP L1136
LABEL L1135
LDLW 12
NCHECK 1455
LDNW 12
CONST 0
NEQ
LABEL L1136
STLC -1
!     IF local THEN res := res & (obj.lev = 0) ELSE res := res & (obj.lev < 0) END
LINE 1456
LDLC 16
JEQZ L1143
LDLC -1
JNEQZ L1145
CONST 0
JUMP L1146
LABEL L1145
LDLW 12
NCHECK 1456
LDNW 8
CONST 0
EQ
LABEL L1146
STLC -1
JUMP L1138
LABEL L1143
LDLC -1
JNEQZ L1140
CONST 0
JUMP L1141
LABEL L1140
LDLW 12
NCHECK 1456
LDNW 8
CONST 0
LT
LABEL L1141
STLC -1
LABEL L1138
!     RETURN res
LINE 1458
LDLC -1
RETURN
END

PROC OMSPG.varFixupCond 4 3 0x00100001
!   PROCEDURE varFixupCond(obj: B.Object; local:BOOLEAN): BOOLEAN;
LINE 1461
!   BEGIN res := (obj.class = B.Var) & (obj.usedat # 0);
LINE 1463
LDLW 12
NCHECK 1463
LOADC
CONST 2
JEQ L1148
CONST 0
JUMP L1149
LABEL L1148
LDLW 12
NCHECK 1463
LDNW 12
CONST 0
NEQ
LABEL L1149
STLC -1
!     IF local THEN res := res & (obj.lev = 0); ASSERT(~res) ELSE res := res & (obj.lev < 0) END
LINE 1464
LDLC 16
JEQZ L1155
LDLC -1
JNEQZ L1157
CONST 0
JUMP L1158
LABEL L1157
LDLW 12
NCHECK 1464
LDNW 8
CONST 0
EQ
LABEL L1158
STLC -1
LDLC -1
JEQZ L1150
CONST 0
CONST 1464
GLOBAL EASSERT
CALL 2
JUMP L1150
LABEL L1155
LDLC -1
JNEQZ L1152
CONST 0
JUMP L1153
LABEL L1152
LDLW 12
NCHECK 1464
LDNW 8
CONST 0
LT
LABEL L1153
STLC -1
LABEL L1150
!     RETURN res
LINE 1466
LDLC -1
RETURN
END

PROC OMSPG.constFixupCond 4 2 0x00100001
!   PROCEDURE constFixupCond(obj: B.Object; local:BOOLEAN): BOOLEAN;
LINE 1469
!   BEGIN res := obj.usedat # 0;
LINE 1471
LDLW 12
NCHECK 1471
LDNW 12
CONST 0
NEQ
STLC -1
!     IF local THEN res := res & (obj.class = B.Typ) & (obj.type.mno = 0)
LINE 1472
LDLC 16
JEQZ L1171
LDLC -1
JEQZ L1172
LDLW 12
NCHECK 1472
LOADC
CONST 5
JEQ L1173
LABEL L1172
CONST 0
JUMP L1174
LABEL L1173
LDLW 12
NCHECK 1472
LDNW 24
NCHECK 1472
LDNW 8
CONST 0
EQ
LABEL L1174
STLC -1
JUMP L1161
LABEL L1171
!     ELSE res := res & ((obj.class = B.Typ) & (obj.type.mno > 0) OR
LINE 1473
LDLC -1
JEQZ L1163
LDLW 12
NCHECK 1473
LOADC
CONST 5
JNEQ L1166
LDLW 12
NCHECK 1473
LDNW 24
NCHECK 1473
LDNW 8
JGTZ L1162
LABEL L1166
LDLW 12
NCHECK 1474
LOADC
CONST 1
JNEQ L1163
LDLW 12
NCHECK 1474
LDNW 24
NCHECK 1474
LOADW
CONST 11
JNEQ L1163
LDLW 12
NCHECK 1474
LDNW 8
JGEQZ L1163
LABEL L1162
CONST 1
JUMP L1164
LABEL L1163
CONST 0
LABEL L1164
STLC -1
LABEL L1161
!     RETURN res
LINE 1477
LDLC -1
RETURN
END

PROC OMSPG.typFixupCond 4 2 0x00100001
!   PROCEDURE typFixupCond(obj: B.Object; local:BOOLEAN): BOOLEAN;
LINE 1480
!   BEGIN res := (obj.class = B.Typ) & (obj.val # 0);
LINE 1482
LDLW 12
NCHECK 1482
LOADC
CONST 5
JEQ L1177
CONST 0
JUMP L1178
LABEL L1177
LDLW 12
NCHECK 1482
LDNW 60
CONST 0
NEQ
LABEL L1178
STLC -1
!     IF local THEN res := res & (obj.type.mno = 0) ELSE res := res & (obj.type.mno > 0) END
LINE 1483
LDLC 16
JEQZ L1184
LDLC -1
JNEQZ L1186
CONST 0
JUMP L1187
LABEL L1186
LDLW 12
NCHECK 1483
LDNW 24
NCHECK 1483
LDNW 8
CONST 0
EQ
LABEL L1187
STLC -1
JUMP L1179
LABEL L1184
LDLC -1
JNEQZ L1181
CONST 0
JUMP L1182
LABEL L1181
LDLW 12
NCHECK 1483
LDNW 24
NCHECK 1483
LDNW 8
CONST 0
GT
LABEL L1182
STLC -1
LABEL L1179
!     RETURN res
LINE 1485
LDLC -1
RETURN
END

PROC OMSPG.objFixupAction 0 4 0x00500001
!   PROCEDURE objFixupAction(VAR R: Files.Rider; obj: B.Object; local:BOOLEAN);
LINE 1488
!   BEGIN WriteWord(R, obj.usedat); Files.WriteByte(R, -obj.lev); (*module number*)
LINE 1489
LDLW 20
NCHECK 1489
LDNW 12
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
LDLW 20
NCHECK 1489
LDNW 8
UMINUS
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
!     WriteWord(R, obj.val); (*local object relative address or imported object number*)
LINE 1490
LDLW 20
NCHECK 1490
LDNW 60
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
!     WriteWord(R, 0) (*offset*)
LINE 1491
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
END

PROC OMSPG.constFixupAction 0 4 0x00500001
!   PROCEDURE constFixupAction(VAR R: Files.Rider; obj: B.Object; local:BOOLEAN);
LINE 1494
!   BEGIN WriteWord(R, obj.usedat);
LINE 1495
LDLW 20
NCHECK 1495
LDNW 12
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
!     IF local THEN Files.WriteByte(R, 0); (*local type*); WriteWord(R, obj.type.len) (*relative address*)
LINE 1496
LDLC 24
JEQZ L1190
CONST 0
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
LDLW 20
NCHECK 1496
LDNW 24
NCHECK 1496
LDNW 16
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1188
LABEL L1190
!     ELSIF obj.class = B.Typ THEN Files.WriteByte(R, obj.type.mno); (*module number*); WriteWord(R, obj.type.len)
LINE 1497
LDLW 20
NCHECK 1497
LOADC
CONST 5
JNEQ L1192
LDLW 20
NCHECK 1497
LDNW 24
NCHECK 1497
LDNW 8
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
LDLW 20
NCHECK 1497
LDNW 24
NCHECK 1497
LDNW 16
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1188
LABEL L1192
!     ELSE (*exported string*) Files.WriteByte(R, -obj.lev); (*module number*); WriteWord(R, obj.val MOD 10000H) (*object number*)
LINE 1498
LDLW 20
NCHECK 1498
LDNW 8
UMINUS
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
LDLW 20
NCHECK 1498
LDNW 60
CONST 65536
MOD
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
LABEL L1188
!     WriteWord(R, 0) (*offset*)
LINE 1500
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
END

PROC OMSPG.typFixupAction 0 4 0x00500001
!   PROCEDURE typFixupAction(VAR R: Files.Rider; obj: B.Object; local:BOOLEAN);
LINE 1503
!   BEGIN WriteWord(R, obj.val); Files.WriteByte(R, obj.type.mno); (*module number*)
LINE 1504
LDLW 20
NCHECK 1504
LDNW 60
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
LDLW 20
NCHECK 1504
LDNW 24
NCHECK 1504
LDNW 8
CONVNC
LDLW 16
LDLW 12
GLOBAL POFiles.WriteByte
CALL 3
!     WriteWord(R, obj.type.len); (*local object relative address or imported object number*)
LINE 1505
LDLW 20
NCHECK 1505
LDNW 24
NCHECK 1505
LDNW 16
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
!     WriteWord(R, 0) (*offset*)
LINE 1506
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
END

PROC OMSPG.WriteFixup 8 5 0x00118001
!   PROCEDURE WriteFixup(VAR R: Files.Rider; cond: FixupCond; action: FixupAction);
LINE 1509
!     obj := B.topScope.next;
LINE 1512
LDGW OMSPB.topScope
NCHECK 1512
LDNW 16
STLW -4
LABEL L1193
!     WHILE obj # NIL DO  (*local elements fixup chains*)
LINE 1513
LDLW -4
JEQZ L1195
!       IF cond(obj, TRUE) THEN ASSERT(obj.class # B.Var); action(R, obj, TRUE) END;
LINE 1514
CONST 1
ALIGNC
LDLW -4
LDLW 24
STATLINK
LDLW 20
NCHECK 1514
CALLW 2
JEQZ L1198
LDLW -4
NCHECK 1514
LOADC
CONST 2
JNEQ L1200
CONST 0
CONST 1514
GLOBAL EASSERT
CALL 2
LABEL L1200
CONST 1
ALIGNC
LDLW -4
LDLW 16
LDLW 12
LDLW 32
STATLINK
LDLW 28
NCHECK 1514
CALL 4
LABEL L1198
!       obj := obj.next
LINE 1515
LDLW -4
NCHECK 1515
LDNW 16
STLW -4
JUMP L1193
LABEL L1195
!     obj := B.topScope.next;
LINE 1517
LDGW OMSPB.topScope
NCHECK 1517
LDNW 16
STLW -4
LABEL L1201
!     WHILE (obj # NIL) & (obj.class = B.Mod) DO  (*imported elements fixup chains*)
LINE 1518
LDLW -4
JEQZ L1203
LDLW -4
NCHECK 1518
LOADC
CONST 8
JNEQ L1203
!       IF obj.dsc # B.system THEN
LINE 1519
LDLW -4
NCHECK 1519
LDNW 20
LDGW OMSPB.system
JEQ L1206
!         obj2 := obj.dsc;
LINE 1520
LDLW -4
NCHECK 1520
LDNW 20
STLW -8
LABEL L1207
!         WHILE obj2 # NIL DO
LINE 1521
LDLW -8
JEQZ L1206
!           IF cond(obj2, FALSE) THEN action(R, obj2, FALSE) END;
LINE 1522
CONST 0
ALIGNC
LDLW -8
LDLW 24
STATLINK
LDLW 20
NCHECK 1522
CALLW 2
JEQZ L1212
CONST 0
ALIGNC
LDLW -8
LDLW 16
LDLW 12
LDLW 32
STATLINK
LDLW 28
NCHECK 1522
CALL 4
LABEL L1212
!           obj2 := obj2.next
LINE 1523
LDLW -8
NCHECK 1523
LDNW 16
STLW -8
JUMP L1207
LABEL L1206
!       obj := obj.next
LINE 1526
LDLW -4
NCHECK 1526
LDNW 16
STLW -4
JUMP L1201
LABEL L1203
!     WriteWord(R, 0)
LINE 1528
CONST 0
LDLW 16
LDLW 12
GLOBAL OMSPG.WriteWord
CALL 3
RETURN
END

PROC OMSPG.Close 88 7 0x00110807
!   PROCEDURE Close*(VAR modid: S.Ident; key, nofent: INTEGER; codeseg: BYTE);
LINE 1531
!   BEGIN  (*exit code*) A.PutNO(mcode, A.RET);
LINE 1536
CONST 384
GLOBAL OMSPA.ModuleCode
GLOBAL OMSPG.mcode
GLOBAL OMSPA.PutNO
CALL 3
!     obj := B.topScope.next; nofimps := 0;
LINE 1537
LDGW OMSPB.topScope
NCHECK 1537
LDNW 16
STLW -4
CONST 0
STLW -16
LABEL L1214
!     WHILE obj # NIL DO
LINE 1538
LDLW -4
JEQZ L1216
!       IF (obj.class = B.Mod) & (obj.dsc # B.system) THEN INC(nofimps); (*count imports*)
LINE 1539
LDLW -4
NCHECK 1539
LOADC
CONST 8
JNEQ L1219
LDLW -4
NCHECK 1539
LDNW 20
LDGW OMSPB.system
JEQ L1219
INCL -16
LABEL L1219
!       obj := obj.next
LINE 1541
LDLW -4
NCHECK 1541
LDNW 16
STLW -4
JUMP L1214
LABEL L1216
!     flashSize := tdx*WordSize + cox + mcode.pc;
LINE 1544
LDGW OMSPG.tdx
CONST 2
TIMES
LDGW OMSPG.cox
PLUS
LDGW OMSPG.mcode
PLUS
STLW -20
!     B.MakeFileName(name, modid, ".mpc"); (*write code file*)
LINE 1546
CONST 5
GLOBAL OMSPG.%64
CONST 32
LDLW 12
LOCAL -56
GLOBAL OMSPB.MakeFileName
CALL 5
!     F := Files.New(name); Files.Set(R, F, 0); Files.WriteString(R, modid); Files.WriteInt(R, key); Files.WriteByte(R, codeseg);
LINE 1547
CONST 32
LOCAL -56
GLOBAL POFiles.New
CALLW 2
STLW -60
CONST 0
LDLW -60
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Set
CALL 4
CONST 32
LDLW 12
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteString
CALL 4
LDLW 16
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteInt
CALL 3
LDLC 24
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteByte
CALL 3
!     WriteWord(R, flashSize);
LINE 1548
LDLW -20
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
!     obj := B.topScope.next;
LINE 1549
LDGW OMSPB.topScope
NCHECK 1549
LDNW 16
STLW -4
LABEL L1221
!     WHILE (obj # NIL) & (obj.class = B.Mod) DO  (*imports*)
LINE 1550
LDLW -4
JEQZ L1223
LDLW -4
NCHECK 1550
LOADC
CONST 8
JNEQ L1223
!       IF obj.dsc # B.system THEN Files.WriteString(R, obj(B.Module).orgname); Files.WriteInt(R, obj.val) END;
LINE 1551
LDLW -4
NCHECK 1551
LDNW 20
LDGW OMSPB.system
JEQ L1226
LDLW -4
DUP 0
NCHECK 1551
LDNW -4
DUP 0
LDNW 4
CONST 1
JGEQ L1229
POP 1
JUMP L1228
LABEL L1229
LDNW 8
LDNW 4
GLOBAL OMSPB.ModDesc
JEQ L1227
LABEL L1228
ERROR E_CAST 1551
LABEL L1227
CONST 64
OFFSET
CONST 32
SWAP
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteString
CALL 4
LDLW -4
NCHECK 1551
LDNW 60
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteInt
CALL 3
LABEL L1226
!       obj := obj.next
LINE 1552
LDLW -4
NCHECK 1552
LDNW 16
STLW -4
JUMP L1221
LABEL L1223
!     Files.Write(R, 0X);
LINE 1554
CONST 0
ALIGNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Write
CALL 3
!     WriteWord(R, tdx*WordSize);
LINE 1555
LDGW OMSPG.tdx
CONST 2
TIMES
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
!     i := 0;
LINE 1556
CONST 0
STLW -8
LABEL L1231
!     WHILE i < tdx DO WriteWord(R, tddata[i]); INC(i) END ; (*type descriptors*)
LINE 1557
LDLW -8
LDGW OMSPG.tdx
JGEQ L1233
GLOBAL OMSPG.tddata
LDLW -8
CONST 160
BOUND 1557
LDIW
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
INCL -8
JUMP L1231
LABEL L1233
!     WriteWord(R, varsize);  (*data*)
LINE 1558
LDGW OMSPG.varsize
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
!     WriteWord(R, cox);
LINE 1559
LDGW OMSPG.cox
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
!     FOR i := 0 TO cox-1 DO Files.WriteByte(R, codata[i]) END ;  (*strings*)
LINE 1560
LDGW OMSPG.cox
DEC
STLW -76
CONST 0
STLW -8
LABEL L1234
LDLW -8
LDLW -76
JGT L1235
GLOBAL OMSPG.codata
LDLW -8
CONST 10000
BOUND 1560
OFFSET
LOADC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteByte
CALL 3
INCL -8
JUMP L1234
LABEL L1235
!     WriteWord(R, mcode.pc);  (*code len*)
LINE 1561
LDGW OMSPG.mcode
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
!     FOR i := 0 TO mcode.pc-1 DO Files.WriteByte(R, mcode.code[i]) END ;  (*program*)
LINE 1562
LDGW OMSPG.mcode
DEC
STLW -80
CONST 0
STLW -8
LABEL L1236
LDLW -8
LDLW -80
JGT L1237
GLOBAL OMSPG.mcode
CONST 4
OFFSET
LDLW -8
CONST 32000
BOUND 1562
OFFSET
LOADC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteByte
CALL 3
INCL -8
JUMP L1236
LABEL L1237
!     Files.WriteByte(R, LEN(vector));  (*Vectors table*)
LINE 1563
CONST 32
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteByte
CALL 3
!     FOR i := 0 TO LEN(vector) - 1 DO WriteWord(R, vector[i]) END;
LINE 1564
CONST 0
STLW -8
LABEL L1238
LDLW -8
CONST 31
JGT L1239
GLOBAL OMSPG.vector
LDLW -8
CONST 32
BOUND 1564
LDIW
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
INCL -8
JUMP L1238
LABEL L1239
!     WriteWord(R, nofent); Files.Write(R, "c"); (*code segment*) WriteWord(R, entry);
LINE 1565
LDLW 20
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
CONST 99
ALIGNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Write
CALL 3
LDGW OMSPG.entry
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
!     obj := B.topScope.next;
LINE 1566
LDGW OMSPB.topScope
NCHECK 1566
LDNW 16
STLW -4
LABEL L1240
!     WHILE obj # NIL DO  (*entries*)
LINE 1567
LDLW -4
JEQZ L1242
!       IF obj.exno # 0 THEN
LINE 1568
LDLW -4
NCHECK 1568
CONST 1
LDIC
JEQZ L1245
!         IF (obj.class = B.Const) & (obj.type.form IN {B.Proc, B.Handler}) THEN Files.Write(R, "c"); (*code section*) WriteWord(R, obj.val)
LINE 1569
LDLW -4
NCHECK 1569
LOADC
CONST 1
JNEQ L1248
CONST 1
LDLW -4
NCHECK 1569
LDNW 24
NCHECK 1569
LOADW
CONST 32
BOUND 1569
LSL
CONST 33792
BITAND
JEQZ L1248
CONST 99
ALIGNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Write
CALL 3
LDLW -4
NCHECK 1569
LDNW 60
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1245
LABEL L1248
!         ELSIF obj.class = B.Var THEN Files.Write(R, "d"); (*data section*) WriteWord(R, obj.val)
LINE 1570
LDLW -4
NCHECK 1570
LOADC
CONST 2
JNEQ L1251
CONST 100
ALIGNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Write
CALL 3
LDLW -4
NCHECK 1570
LDNW 60
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1245
LABEL L1251
!         ELSIF (obj.class = B.Const) & (obj.type.form = B.String) OR (obj.class = B.StoredConst) THEN Files.Write(R, "k"); (*const section (string, stored object)*)
LINE 1571
LDLW -4
NCHECK 1571
LOADC
CONST 1
JNEQ L1254
LDLW -4
NCHECK 1571
LDNW 24
NCHECK 1571
LOADW
CONST 11
JEQ L1252
LABEL L1254
LDLW -4
NCHECK 1571
LOADC
CONST 9
JNEQ L1253
LABEL L1252
CONST 107
ALIGNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Write
CALL 3
!           WriteWord(R, obj.val MOD 10000H + tdx*WordSize (*skip td*))
LINE 1572
LDLW -4
NCHECK 1572
LDNW 60
CONST 65536
MOD
LDGW OMSPG.tdx
CONST 2
TIMES
PLUS
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1245
LABEL L1253
!         ELSIF obj.class = B.Typ THEN Files.Write(R, "k"); (*const sesction (tag)*)
LINE 1573
LDLW -4
NCHECK 1573
LOADC
CONST 5
JNEQ L1257
CONST 107
ALIGNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Write
CALL 3
!           IF obj.type.form = B.Record THEN WriteWord(R, obj.type.len)
LINE 1574
LDLW -4
NCHECK 1574
LDNW 24
NCHECK 1574
LOADW
CONST 13
JNEQ L1260
LDLW -4
NCHECK 1574
LDNW 24
NCHECK 1574
LDNW 16
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1245
LABEL L1260
!           ELSIF (obj.type.form = B.Pointer) & ((obj.type.base.typobj = NIL) OR (obj.type.base.typobj.exno = 0)) THEN
LINE 1575
LDLW -4
NCHECK 1575
LDNW 24
NCHECK 1575
LOADW
CONST 7
JNEQ L1245
LDLW -4
NCHECK 1575
LDNW 24
NCHECK 1575
LDNW 28
NCHECK 1575
LDNW 24
JEQZ L1261
LDLW -4
NCHECK 1575
LDNW 24
NCHECK 1575
LDNW 28
NCHECK 1575
LDNW 24
NCHECK 1575
CONST 1
LDIC
JNEQZ L1245
LABEL L1261
!             WriteWord(R,  obj.type.base.len)
LINE 1576
LDLW -4
NCHECK 1576
LDNW 24
NCHECK 1576
LDNW 28
NCHECK 1576
LDNW 16
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
JUMP L1245
LABEL L1257
!         ELSE S.Mark("Unknown entry type")
LINE 1578
CONST 19
GLOBAL OMSPG.%65
GLOBAL OMSPS.Mark
CALL 2
LABEL L1245
!       obj := obj.next
LINE 1581
LDLW -4
NCHECK 1581
LDNW 16
STLW -4
JUMP L1240
LABEL L1242
!     WriteFixup(R, procFixupCond, objFixupAction); (*data for procedures fixup in code space*)
LINE 1583
CONST 0
GLOBAL OMSPG.objFixupAction
CONST 0
GLOBAL OMSPG.procFixupCond
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteFixup
CALL 6
!     WriteFixup(R, handlerFixupCond, objFixupAction); (*data for interrupt handlers fixup vector space*)
LINE 1584
CONST 0
GLOBAL OMSPG.objFixupAction
CONST 0
GLOBAL OMSPG.handlerFixupCond
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteFixup
CALL 6
!     fd := gvfix; (*data global variables fixup in code space*)
LINE 1585
LDGW OMSPG.gvfix
STLW -24
LABEL L1265
!     WHILE fd # NIL DO
LINE 1586
LDLW -24
JEQZ L1267
!       IF fd.usedatc # 0 THEN WriteWord(R, fd.usedatc); Files.WriteByte(R, fd.mno);
LINE 1587
LDLW -24
NCHECK 1587
LDNW 16
JEQZ L1270
LDLW -24
NCHECK 1587
LDNW 16
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LDLW -24
NCHECK 1587
LDNW 8
CONVNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteByte
CALL 3
!         WriteWord(R, fd.adr); WriteWord(R, fd.ofs)
LINE 1588
LDLW -24
NCHECK 1588
LOADW
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LDLW -24
NCHECK 1588
LDNW 4
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LABEL L1270
!       END; fd := fd.next
LINE 1589
LDLW -24
NCHECK 1589
LDNW 24
STLW -24
JUMP L1265
LABEL L1267
!     WriteFixup(R, varFixupCond, objFixupAction); (*data for imported variables fixup in code space*)
LINE 1591
CONST 0
GLOBAL OMSPG.objFixupAction
CONST 0
GLOBAL OMSPG.varFixupCond
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteFixup
CALL 6
!     fd := cofix; (*data for constant objects fixup in code space*)
LINE 1592
LDGW OMSPG.cofix
STLW -24
LABEL L1271
!     WHILE fd # NIL DO
LINE 1593
LDLW -24
JEQZ L1273
!       IF fd.usedatc # 0 THEN WriteWord(R, fd.usedatc); Files.WriteByte(R, fd.mno);
LINE 1594
LDLW -24
NCHECK 1594
LDNW 16
JEQZ L1276
LDLW -24
NCHECK 1594
LDNW 16
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LDLW -24
NCHECK 1594
LDNW 8
CONVNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteByte
CALL 3
!         WriteWord(R, fd.adr + tdx*WordSize (*skip td*)); WriteWord(R, fd.ofs)
LINE 1595
LDLW -24
NCHECK 1595
LOADW
LDGW OMSPG.tdx
CONST 2
TIMES
PLUS
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LDLW -24
NCHECK 1595
LDNW 4
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LABEL L1276
!       END; fd := fd.next
LINE 1596
LDLW -24
NCHECK 1596
LDNW 24
STLW -24
JUMP L1271
LABEL L1273
!     WriteFixup(R, constFixupCond, constFixupAction); (*data for references to constants fixup in code space*)
LINE 1598
CONST 0
GLOBAL OMSPG.constFixupAction
CONST 0
GLOBAL OMSPG.constFixupCond
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteFixup
CALL 6
!     fd := gvfix; (*data global variables fixup in constant space*)
LINE 1599
LDGW OMSPG.gvfix
STLW -24
LABEL L1277
!     WHILE fd # NIL DO
LINE 1600
LDLW -24
JEQZ L1279
!       IF fd.usedatk # 0 THEN WriteWord(R, fd.usedatk); Files.WriteByte(R, fd.mno);
LINE 1601
LDLW -24
NCHECK 1601
LDNW 20
JEQZ L1282
LDLW -24
NCHECK 1601
LDNW 20
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LDLW -24
NCHECK 1601
LDNW 8
CONVNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteByte
CALL 3
!         WriteWord(R, fd.adr); WriteWord(R, fd.ofs)
LINE 1602
LDLW -24
NCHECK 1602
LOADW
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LDLW -24
NCHECK 1602
LDNW 4
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LABEL L1282
!       END; fd := fd.next
LINE 1603
LDLW -24
NCHECK 1603
LDNW 24
STLW -24
JUMP L1277
LABEL L1279
!     END; WriteWord(R, 0);
LINE 1604
CONST 0
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
!     fd := cofix; (*data for constant objects fixup in constant space*)
LINE 1605
LDGW OMSPG.cofix
STLW -24
LABEL L1283
!     WHILE fd # NIL DO
LINE 1606
LDLW -24
JEQZ L1285
!       IF fd.usedatk # 0 THEN WriteWord(R, fd.usedatk); Files.WriteByte(R, fd.mno);
LINE 1607
LDLW -24
NCHECK 1607
LDNW 20
JEQZ L1288
LDLW -24
NCHECK 1607
LDNW 20
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LDLW -24
NCHECK 1607
LDNW 8
CONVNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteByte
CALL 3
!         WriteWord(R, fd.adr + tdx*WordSize (*skip td*)); WriteWord(R, fd.ofs)
LINE 1608
LDLW -24
NCHECK 1608
LOADW
LDGW OMSPG.tdx
CONST 2
TIMES
PLUS
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LDLW -24
NCHECK 1608
LDNW 4
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
LABEL L1288
!       END; fd := fd.next
LINE 1609
LDLW -24
NCHECK 1609
LDNW 24
STLW -24
JUMP L1283
LABEL L1285
!     WriteFixup(R, typFixupCond, typFixupAction); (*fixup data for type extension*)
LINE 1611
CONST 0
GLOBAL OMSPG.typFixupAction
CONST 0
GLOBAL OMSPG.typFixupCond
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteFixup
CALL 6
!     WriteWord(R, entry);
LINE 1612
LDGW OMSPG.entry
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
!     Files.Write(R, "O"); Files.Register(F);
LINE 1613
CONST 79
ALIGNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Write
CALL 3
LDLW -60
GLOBAL POFiles.Register
CALL 1
!     B.MakeFileName(name, modid, ".o43"); F := Files.New(name); Files.Set(R, F, 0); WriteWord(R, mcode.pc DIV 2); j := 1;
LINE 1615
CONST 5
GLOBAL OMSPG.%66
CONST 32
LDLW 12
LOCAL -56
GLOBAL OMSPB.MakeFileName
CALL 5
CONST 32
LOCAL -56
GLOBAL POFiles.New
CALLW 2
STLW -60
CONST 0
LDLW -60
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Set
CALL 4
LDGW OMSPG.mcode
CONST 2
DIV
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL OMSPG.WriteWord
CALL 3
CONST 1
STLW -12
!     FOR i := 1 TO mcode.pc DIV 2 - 1 DO
LINE 1616
LDGW OMSPG.mcode
CONST 2
DIV
DEC
STLW -84
CONST 1
STLW -8
LABEL L1289
LDLW -8
LDLW -84
JGT L1290
!       IF (j < 255) & (mcode.pos[i] = mcode.pos[i-1]) THEN INC(j) ELSE Files.WriteByte(R, j); Files.WriteInt(R, mcode.pos[i - 1]); j := 1 END
LINE 1617
LDLW -12
CONST 255
JGEQ L1293
GLOBAL OMSPG.mcode
CONST 32004
OFFSET
LDLW -8
CONST 16000
BOUND 1617
LDIW
GLOBAL OMSPG.mcode
CONST 32004
OFFSET
LDLW -8
DEC
CONST 16000
BOUND 1617
LDIW
JNEQ L1293
INCL -12
JUMP L1291
LABEL L1293
LDLW -12
CONVNC
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteByte
CALL 3
GLOBAL OMSPG.mcode
CONST 32004
OFFSET
LDLW -8
DEC
CONST 16000
BOUND 1617
LDIW
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteInt
CALL 3
CONST 1
STLW -12
LABEL L1291
!     FOR i := 1 TO mcode.pc DIV 2 - 1 DO
LINE 1616
INCL -8
JUMP L1289
LABEL L1290
!     END; Files.WriteByte(R, j); Files.WriteInt(R, mcode.pos[mcode.pc DIV 2 - 1]); Files.Register(F);
LINE 1618
LDLW -12
CONVNC
GLOBAL POFiles.Rider
LOCAL -72
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
BOUND 1618
LDIW
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteInt
CALL 3
LDLW -60
GLOBAL POFiles.Register
CALL 1
!     OfsPTOS(-1, -1, FALSE); (*close last segment*) B.MakeFileName(name, modid, ".r43"); F := Files.New(name); Files.Set(R, F, 0);
LINE 1620
CONST 0
ALIGNC
CONST -1
CONST -1
GLOBAL OMSPG.OfsPTOS
CALL 3
CONST 5
GLOBAL OMSPG.%67
CONST 32
LDLW 12
LOCAL -56
GLOBAL OMSPB.MakeFileName
CALL 5
CONST 32
LOCAL -56
GLOBAL POFiles.New
CALLW 2
STLW -60
CONST 0
LDLW -60
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.Set
CALL 4
!     Files.WriteInt(R, frmOfsSegs.NofSegs);
LINE 1621
LDGW OMSPG.frmOfsSegs
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteInt
CALL 3
!     FOR i := 0 TO frmOfsSegs.NofSegs DO Files.WriteInt(R, frmOfsSegs.Segs[i].end); Files.WriteInt(R, frmOfsSegs.Segs[i].ofsptos) END;
LINE 1622
LDGW OMSPG.frmOfsSegs
STLW -88
CONST 0
STLW -8
LABEL L1295
LDLW -8
LDLW -88
JGT L1296
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDLW -8
CONST 1000
BOUND 1622
INDEXD
LOADW
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteInt
CALL 3
GLOBAL OMSPG.frmOfsSegs
CONST 4
OFFSET
LDLW -8
CONST 1000
BOUND 1622
INDEXD
LDNW 4
GLOBAL POFiles.Rider
LOCAL -72
GLOBAL POFiles.WriteInt
CALL 3
INCL -8
JUMP L1295
LABEL L1296
!     Files.Register(F)
LINE 1623
LDLW -60
GLOBAL POFiles.Register
CALL 1
RETURN
END

PROC OMSPG.initConst 0 3 0x00100001
!   PROCEDURE initConst(VAR c: Item; v: INTEGER);
LINE 1626
!   BEGIN c.reg := 0; c.am := A.Immediate; c.ofs := v; c.obj := NIL; c.type := B.intType; c.rdo := TRUE;
LINE 1627
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
LINE 1628
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
LINE 1631
!   BEGIN c.reg := r; c.am := A.Register; c.ofs := 0; c.obj := NIL; c.type := B.intType;
LINE 1632
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
LINE 1633
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
LINE 1636
CONST 0
GLOBAL OMSPG.freeR
CONST 0
GLOBAL OMSPG.AllocR
CONST 0
GLOBAL OMSPG.GetOffset
GLOBAL OMSPA.SetProcs
CALL 6
!   initConst(cm1, -1); initConst(c0, 0); initConst(c1, 1); initConst(c2, 2);
LINE 1637
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
LINE 1638
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
LINE 1639
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
LINE 1640
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
LINE 1641
CONST 0
GLOBAL OMSPG.RegisterRTproc
GLOBAL OMSPB.SetRegRTProcCallback
CALL 2
RETURN
END

! Global variables
GLOVAR OMSPG.varsize 4
GLOVAR OMSPG.tdx 4
GLOVAR OMSPG.cox 4
GLOVAR OMSPG.nofcos 4
GLOVAR OMSPG.gvfix 4
GLOVAR OMSPG.cofix 4
GLOVAR OMSPG.tddata 640
GLOVAR OMSPG.codata 10000
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
WORD GC_POINTER
WORD OMSPG.gvfix
WORD GC_POINTER
WORD OMSPG.cofix
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

! String "bad base"
DEFINE OMSPG.%20
STRING 626164206261736500

! String "not allowed"
DEFINE OMSPG.%21
STRING 6E6F7420616C6C6F77656400

! String "bad mode in load"
DEFINE OMSPG.%22
STRING 626164206D6F646520696E206C6F616400

! String "move byte to int"
DEFINE OMSPG.%23
STRING 6D6F7665206279746520746F20696E7400

! String "not writable"
DEFINE OMSPG.%24
STRING 6E6F74207772697461626C6500

! String "bad mode in setRAO"
DEFINE OMSPG.%25
STRING 626164206D6F646520696E2073657452414F00

! String "bad mode in push"
DEFINE OMSPG.%26
STRING 626164206D6F646520696E207075736800

! String "not addressable"
DEFINE OMSPG.%27
STRING 6E6F74206164647265737361626C6500

! String "not Boolean?"
DEFINE OMSPG.%28
STRING 6E6F7420426F6F6C65616E3F00

! String "too many strings"
DEFINE OMSPG.%29
STRING 746F6F206D616E7920737472696E677300

! String "not accessible "
DEFINE OMSPG.%30
STRING 6E6F742061636365737369626C652000

! String "not implemented"
DEFINE OMSPG.%31
STRING 6E6F7420696D706C656D656E74656400

! String "x.mode"
DEFINE OMSPG.%32
STRING 782E6D6F646500

! String "Invalid array item size"
DEFINE OMSPG.%33
STRING 496E76616C6964206172726179206974656D2073697A6500

! String "bad index"
DEFINE OMSPG.%34
STRING 62616420696E64657800

! String "bad mode in index"
DEFINE OMSPG.%35
STRING 626164206D6F646520696E20696E64657800

! String "error in Index"
DEFINE OMSPG.%36
STRING 6572726F7220696E20496E64657800

! String "bad mode in DeRef"
DEFINE OMSPG.%37
STRING 626164206D6F646520696E20446552656600

! String "ext level too large"
DEFINE OMSPG.%38
STRING 657874206C6576656C20746F6F206C6172676500

! String "too many record types"
DEFINE OMSPG.%39
STRING 746F6F206D616E79207265636F726420747970657300

! String "error in TypeTest"
DEFINE OMSPG.%40
STRING 6572726F7220696E20547970655465737400

! String "pointer not allowed"
DEFINE OMSPG.%41
STRING 706F696E746572206E6F7420616C6C6F77656400

! String "vect mult def"
DEFINE OMSPG.%42
STRING 76656374206D756C742064656600

! String "import Arith.mul16 function"
DEFINE OMSPG.%43
STRING 696D706F72742041726974682E6D756C31362066756E6374696F6E00

! String "bad divisor"
DEFINE OMSPG.%44
STRING 6261642064697669736F7200

! String "import Arith.divmod16 procedure"
DEFINE OMSPG.%45
STRING 696D706F72742041726974682E6469766D6F6431362070726F63656475726500

! String "bad modulus"
DEFINE OMSPG.%46
STRING 626164206D6F64756C757300

! String "import Arith.divmod procedure"
DEFINE OMSPG.%47
STRING 696D706F72742041726974682E6469766D6F642070726F63656475726500

! String "const expected"
DEFINE OMSPG.%48
STRING 636F6E737420657870656374656400

! String "import Arith.set function"
DEFINE OMSPG.%49
STRING 696D706F72742041726974682E7365742066756E6374696F6E00

! String "already set"
DEFINE OMSPG.%50
STRING 616C72656164792073657400

! String "form"
DEFINE OMSPG.%51
STRING 666F726D00

! String "not allowed is Store"
DEFINE OMSPG.%52
STRING 6E6F7420616C6C6F7765642069732053746F726500

! String "mode"
DEFINE OMSPG.%53
STRING 6D6F646500

! String "not implemented in StoreStruct"
DEFINE OMSPG.%54
STRING 6E6F7420696D706C656D656E74656420696E2053746F726553747275637400

! String "different length/size, not implemented"
DEFINE OMSPG.%55
STRING 646966666572656E74206C656E6774682F73697A652C206E6F7420696D706C65
STRING 6D656E74656400

! String "inadmissible assignment"
DEFINE OMSPG.%56
STRING 696E61646D69737369626C652061737369676E6D656E7400

! String "string too long"
DEFINE OMSPG.%57
STRING 737472696E6720746F6F206C6F6E6700

! String "zero increment"
DEFINE OMSPG.%58
STRING 7A65726F20696E6372656D656E7400

! String "local variables size exeeded"
DEFINE OMSPG.%59
STRING 6C6F63616C207661726961626C65732073697A65206578656564656400

! String "destroyed regs in handler"
DEFINE OMSPG.%60
STRING 64657374726F796564207265677320696E2068616E646C657200

! String "stack seg"
DEFINE OMSPG.%61
STRING 737461636B2073656700

! String "bad count"
DEFINE OMSPG.%62
STRING 62616420636F756E7400

! String "bad mode in Len"
DEFINE OMSPG.%63
STRING 626164206D6F646520696E204C656E00

! String ".mpc"
DEFINE OMSPG.%64
STRING 2E6D706300

! String "Unknown entry type"
DEFINE OMSPG.%65
STRING 556E6B6E6F776E20656E747279207479706500

! String ".o43"
DEFINE OMSPG.%66
STRING 2E6F343300

! String ".r43"
DEFINE OMSPG.%67
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

! Descriptor for FixDataDesc
DEFINE OMSPG.FixDataDesc
WORD 0x00000081
WORD 0
WORD OMSPG.FixDataDesc.%anc

DEFINE OMSPG.FixDataDesc.%anc
WORD OMSPG.FixDataDesc

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
WORD -44
WORD -40
WORD -80
WORD -76
WORD -116
WORD -112
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

! End of file
