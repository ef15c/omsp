!! (SYMFILE #CRC32 0x00030300 #CRC32.%main 1 #CRC32.Mod)
!! (GLOBAL #crc32table #CRC32.crc32table !1 (ARRAY 256 INTEGER))
!! (GLOBAL #crc #CRC32.crc INTEGER)
!! (PROCEDURE #reset* 7 #CRC32.reset !2 (PROC 0 VOID))
!! (PROCEDURE #write* 11 #CRC32.write !3 (PROC 1 VOID
!!     (PARAM #v 12 INTEGER)))
!! (PROCEDURE #read* 27 #CRC32.read !4 (PROC 0 INTEGER))
!! (CHKSUM 0x53aa1c15)
!! 
MODULE CRC32 0x53aa1c15 160
ENDHDR

PROC CRC32.reset 0 2 0
!   PROCEDURE reset*;
LINE 7
!   BEGIN crc := -1;
LINE 8
CONST -1
STGW CRC32.crc
RETURN
END

PROC CRC32.write 0 5 0
!   PROCEDURE write*(v: INTEGER);
LINE 11
!     crc := ORD(SYSTEM.VAL(SET, LSL(crc, 8)) / SYSTEM.VAL(SET, 
LINE 13
LDGW CRC32.crc
CONST 8
LSL
GLOBAL CRC32.crc32table
LDGW CRC32.crc
CONST 24
ASR
CONST 256
MOD
LDLW 12
CONST 24
ASR
CONST 256
MOD
BITXOR
CONST 256
BOUND 14
LDIW
BITXOR
STGW CRC32.crc
!     crc := ORD(SYSTEM.VAL(SET, LSL(crc, 8)) / SYSTEM.VAL(SET, 
LINE 16
LDGW CRC32.crc
CONST 8
LSL
GLOBAL CRC32.crc32table
LDGW CRC32.crc
CONST 24
ASR
CONST 256
MOD
LDLW 12
CONST 16
ASR
CONST 256
MOD
BITXOR
CONST 256
BOUND 17
LDIW
BITXOR
STGW CRC32.crc
!     crc := ORD(SYSTEM.VAL(SET, LSL(crc, 8)) / SYSTEM.VAL(SET, 
LINE 19
LDGW CRC32.crc
CONST 8
LSL
GLOBAL CRC32.crc32table
LDGW CRC32.crc
CONST 24
ASR
CONST 256
MOD
LDLW 12
CONST 8
ASR
CONST 256
MOD
BITXOR
CONST 256
BOUND 20
LDIW
BITXOR
STGW CRC32.crc
!     crc := ORD(SYSTEM.VAL(SET, LSL(crc, 8)) / SYSTEM.VAL(SET, 
LINE 22
LDGW CRC32.crc
CONST 8
LSL
GLOBAL CRC32.crc32table
LDGW CRC32.crc
CONST 24
ASR
CONST 256
MOD
LDLW 12
CONST 256
MOD
BITXOR
CONST 256
BOUND 23
LDIW
BITXOR
STGW CRC32.crc
RETURN
END

PROC CRC32.read 0 1 0
!   PROCEDURE read*(): INTEGER;
LINE 27
!     RETURN crc
LINE 28
LDGW CRC32.crc
RETURN
END

PROC CRC32.%main 0 4 0
! BEGIN crc := -1;
LINE 31
CONST -1
STGW CRC32.crc
!   crc32table[0] := 0; crc32table[1] := 79764919; 
LINE 32
CONST 0
STGW CRC32.crc32table
CONST 79764919
GLOBAL CRC32.crc32table
STNW 4
!   crc32table[2] := 159529838; crc32table[3] := 222504665; 
LINE 33
CONST 159529838
GLOBAL CRC32.crc32table
STNW 8
CONST 222504665
GLOBAL CRC32.crc32table
STNW 12
!   crc32table[4] := 319059676; crc32table[5] := 398814059; 
LINE 34
CONST 319059676
GLOBAL CRC32.crc32table
STNW 16
CONST 398814059
GLOBAL CRC32.crc32table
STNW 20
!   crc32table[6] := 445009330; crc32table[7] := 507990021; 
LINE 35
CONST 445009330
GLOBAL CRC32.crc32table
STNW 24
CONST 507990021
GLOBAL CRC32.crc32table
STNW 28
!   crc32table[8] := 638119352; crc32table[9] := 583659535; 
LINE 36
CONST 638119352
GLOBAL CRC32.crc32table
STNW 32
CONST 583659535
GLOBAL CRC32.crc32table
STNW 36
!   crc32table[10] := 797628118; crc32table[11] := 726387553; 
LINE 37
CONST 797628118
GLOBAL CRC32.crc32table
STNW 40
CONST 726387553
GLOBAL CRC32.crc32table
STNW 44
!   crc32table[12] := 890018660; crc32table[13] := 835552979; 
LINE 38
CONST 890018660
GLOBAL CRC32.crc32table
STNW 48
CONST 835552979
GLOBAL CRC32.crc32table
STNW 52
!   crc32table[14] := 1015980042; crc32table[15] := 944750013; 
LINE 39
CONST 1015980042
GLOBAL CRC32.crc32table
STNW 56
CONST 944750013
GLOBAL CRC32.crc32table
STNW 60
!   crc32table[16] := 1276238704; crc32table[17] := 1221641927; 
LINE 40
CONST 1276238704
GLOBAL CRC32.crc32table
STNW 64
CONST 1221641927
GLOBAL CRC32.crc32table
STNW 68
!   crc32table[18] := 1167319070; crc32table[19] := 1095957929; 
LINE 41
CONST 1167319070
GLOBAL CRC32.crc32table
STNW 72
CONST 1095957929
GLOBAL CRC32.crc32table
STNW 76
!   crc32table[20] := 1595256236; crc32table[21] := 1540665371; 
LINE 42
CONST 1595256236
GLOBAL CRC32.crc32table
STNW 80
CONST 1540665371
GLOBAL CRC32.crc32table
STNW 84
!   crc32table[22] := 1452775106; crc32table[23] := 1381403509; 
LINE 43
CONST 1452775106
GLOBAL CRC32.crc32table
STNW 88
CONST 1381403509
GLOBAL CRC32.crc32table
STNW 92
!   crc32table[24] := 1780037320; crc32table[25] := 1859660671; 
LINE 44
CONST 1780037320
GLOBAL CRC32.crc32table
STNW 96
CONST 1859660671
GLOBAL CRC32.crc32table
STNW 100
!   crc32table[26] := 1671105958; crc32table[27] := 1733955601; 
LINE 45
CONST 1671105958
GLOBAL CRC32.crc32table
STNW 104
CONST 1733955601
GLOBAL CRC32.crc32table
STNW 108
!   crc32table[28] := 2031960084; crc32table[29] := 2111593891; 
LINE 46
CONST 2031960084
GLOBAL CRC32.crc32table
STNW 112
CONST 2111593891
GLOBAL CRC32.crc32table
STNW 116
!   crc32table[30] := 1889500026; crc32table[31] := 1952343757; 
LINE 47
CONST 1889500026
GLOBAL CRC32.crc32table
STNW 120
CONST 1952343757
GLOBAL CRC32.crc32table
STNW 124
!   crc32table[32] := -1742489888; crc32table[33] := -1662866601; 
LINE 48
CONST -1742489888
GLOBAL CRC32.crc32table
STNW 128
CONST -1662866601
GLOBAL CRC32.crc32table
STNW 132
!   crc32table[34] := -1851683442; crc32table[35] := -1788833735; 
LINE 49
CONST -1851683442
GLOBAL CRC32.crc32table
STNW 136
CONST -1788833735
GLOBAL CRC32.crc32table
STNW 140
!   crc32table[36] := -1960329156; crc32table[37] := -1880695413; 
LINE 50
CONST -1960329156
GLOBAL CRC32.crc32table
STNW 144
CONST -1880695413
GLOBAL CRC32.crc32table
STNW 148
!   crc32table[38] := -2103051438; crc32table[39] := -2040207643; 
LINE 51
CONST -2103051438
GLOBAL CRC32.crc32table
STNW 152
CONST -2040207643
GLOBAL CRC32.crc32table
STNW 156
!   crc32table[40] := -1104454824; crc32table[41] := -1159051537; 
LINE 52
CONST -1104454824
GLOBAL CRC32.crc32table
STNW 160
CONST -1159051537
GLOBAL CRC32.crc32table
STNW 164
!   crc32table[42] := -1213636554; crc32table[43] := -1284997759; 
LINE 53
CONST -1213636554
GLOBAL CRC32.crc32table
STNW 168
CONST -1284997759
GLOBAL CRC32.crc32table
STNW 172
!   crc32table[44] := -1389417084; crc32table[45] := -1444007885; 
LINE 54
CONST -1389417084
GLOBAL CRC32.crc32table
STNW 176
CONST -1444007885
GLOBAL CRC32.crc32table
STNW 180
!   crc32table[46] := -1532160278; crc32table[47] := -1603531939; 
LINE 55
CONST -1532160278
GLOBAL CRC32.crc32table
STNW 184
CONST -1603531939
GLOBAL CRC32.crc32table
STNW 188
!   crc32table[48] := -734892656; crc32table[49] := -789352409; 
LINE 56
CONST -734892656
GLOBAL CRC32.crc32table
STNW 192
CONST -789352409
GLOBAL CRC32.crc32table
STNW 196
!   crc32table[50] := -575645954; crc32table[51] := -646886583; 
LINE 57
CONST -575645954
GLOBAL CRC32.crc32table
STNW 200
CONST -646886583
GLOBAL CRC32.crc32table
STNW 204
!   crc32table[52] := -952755380; crc32table[53] := -1007220997; 
LINE 58
CONST -952755380
GLOBAL CRC32.crc32table
STNW 208
CONST -1007220997
GLOBAL CRC32.crc32table
STNW 212
!   crc32table[54] := -827056094; crc32table[55] := -898286187; 
LINE 59
CONST -827056094
GLOBAL CRC32.crc32table
STNW 216
CONST -898286187
GLOBAL CRC32.crc32table
STNW 220
!   crc32table[56] := -231047128; crc32table[57] := -151282273; 
LINE 60
CONST -231047128
GLOBAL CRC32.crc32table
STNW 224
CONST -151282273
GLOBAL CRC32.crc32table
STNW 228
!   crc32table[58] := -71779514; crc32table[59] := -8804623; 
LINE 61
CONST -71779514
GLOBAL CRC32.crc32table
STNW 232
CONST -8804623
GLOBAL CRC32.crc32table
STNW 236
!   crc32table[60] := -515967244; crc32table[61] := -436212925; 
LINE 62
CONST -515967244
GLOBAL CRC32.crc32table
STNW 240
CONST -436212925
GLOBAL CRC32.crc32table
STNW 244
!   crc32table[62] := -390279782; crc32table[63] := -327299027; 
LINE 63
CONST -390279782
GLOBAL CRC32.crc32table
STNW 248
CONST -327299027
GLOBAL CRC32.crc32table
STNW 252
!   crc32table[64] := 881225847; crc32table[65] := 809987520; 
LINE 64
CONST 881225847
GLOBAL CRC32.crc32table
STNW 256
CONST 809987520
GLOBAL CRC32.crc32table
STNW 260
!   crc32table[66] := 1023691545; crc32table[67] := 969234094; 
LINE 65
CONST 1023691545
GLOBAL CRC32.crc32table
STNW 264
CONST 969234094
GLOBAL CRC32.crc32table
STNW 268
!   crc32table[68] := 662832811; crc32table[69] := 591600412; 
LINE 66
CONST 662832811
GLOBAL CRC32.crc32table
STNW 272
CONST 591600412
GLOBAL CRC32.crc32table
STNW 276
!   crc32table[70] := 771767749; crc32table[71] := 717299826; 
LINE 67
CONST 771767749
GLOBAL CRC32.crc32table
STNW 280
CONST 717299826
GLOBAL CRC32.crc32table
STNW 284
!   crc32table[72] := 311336399; crc32table[73] := 374308984; 
LINE 68
CONST 311336399
GLOBAL CRC32.crc32table
STNW 288
CONST 374308984
GLOBAL CRC32.crc32table
STNW 292
!   crc32table[74] := 453813921; crc32table[75] := 533576470; 
LINE 69
CONST 453813921
GLOBAL CRC32.crc32table
STNW 296
CONST 533576470
GLOBAL CRC32.crc32table
STNW 300
!   crc32table[76] := 25881363; crc32table[77] := 88864420; 
LINE 70
CONST 25881363
GLOBAL CRC32.crc32table
STNW 304
CONST 88864420
GLOBAL CRC32.crc32table
STNW 308
!   crc32table[78] := 134795389; crc32table[79] := 214552010; 
LINE 71
CONST 134795389
GLOBAL CRC32.crc32table
STNW 312
CONST 214552010
GLOBAL CRC32.crc32table
STNW 316
!   crc32table[80] := 2023205639; crc32table[81] := 2086057648; 
LINE 72
CONST 2023205639
GLOBAL CRC32.crc32table
STNW 320
CONST 2086057648
GLOBAL CRC32.crc32table
STNW 324
!   crc32table[82] := 1897238633; crc32table[83] := 1976864222; 
LINE 73
CONST 1897238633
GLOBAL CRC32.crc32table
STNW 328
CONST 1976864222
GLOBAL CRC32.crc32table
STNW 332
!   crc32table[84] := 1804852699; crc32table[85] := 1867694188; 
LINE 74
CONST 1804852699
GLOBAL CRC32.crc32table
STNW 336
CONST 1867694188
GLOBAL CRC32.crc32table
STNW 340
!   crc32table[86] := 1645340341; crc32table[87] := 1724971778; 
LINE 75
CONST 1645340341
GLOBAL CRC32.crc32table
STNW 344
CONST 1724971778
GLOBAL CRC32.crc32table
STNW 348
!   crc32table[88] := 1587496639; crc32table[89] := 1516133128; 
LINE 76
CONST 1587496639
GLOBAL CRC32.crc32table
STNW 352
CONST 1516133128
GLOBAL CRC32.crc32table
STNW 356
!   crc32table[90] := 1461550545; crc32table[91] := 1406951526; 
LINE 77
CONST 1461550545
GLOBAL CRC32.crc32table
STNW 360
CONST 1406951526
GLOBAL CRC32.crc32table
STNW 364
!   crc32table[92] := 1302016099; crc32table[93] := 1230646740; 
LINE 78
CONST 1302016099
GLOBAL CRC32.crc32table
STNW 368
CONST 1230646740
GLOBAL CRC32.crc32table
STNW 372
!   crc32table[94] := 1142491917; crc32table[95] := 1087903418; 
LINE 79
CONST 1142491917
GLOBAL CRC32.crc32table
STNW 376
CONST 1087903418
GLOBAL CRC32.crc32table
STNW 380
!   crc32table[96] := -1398421865; crc32table[97] := -1469785312; 
LINE 80
CONST -1398421865
GLOBAL CRC32.crc32table
STNW 384
CONST -1469785312
GLOBAL CRC32.crc32table
STNW 388
!   crc32table[98] := -1524105735; crc32table[99] := -1578704818; 
LINE 81
CONST -1524105735
GLOBAL CRC32.crc32table
STNW 392
CONST -1578704818
GLOBAL CRC32.crc32table
STNW 396
!   crc32table[100] := -1079922613; crc32table[101] := -1151291908; 
LINE 82
CONST -1079922613
GLOBAL CRC32.crc32table
STNW 400
CONST -1151291908
GLOBAL CRC32.crc32table
STNW 404
!   crc32table[102] := -1239184603; crc32table[103] := -1293773166; 
LINE 83
CONST -1239184603
GLOBAL CRC32.crc32table
STNW 408
CONST -1293773166
GLOBAL CRC32.crc32table
STNW 412
!   crc32table[104] := -1968362705; crc32table[105] := -1905510760; 
LINE 84
CONST -1968362705
GLOBAL CRC32.crc32table
STNW 416
CONST -1905510760
GLOBAL CRC32.crc32table
STNW 420
!   crc32table[106] := -2094067647; crc32table[107] := -2014441994; 
LINE 85
CONST -2094067647
GLOBAL CRC32.crc32table
STNW 424
CONST -2014441994
GLOBAL CRC32.crc32table
STNW 428
!   crc32table[108] := -1716953613; crc32table[109] := -1654112188; 
LINE 86
CONST -1716953613
GLOBAL CRC32.crc32table
STNW 432
CONST -1654112188
GLOBAL CRC32.crc32table
STNW 436
!   crc32table[110] := -1876203875; crc32table[111] := -1796572374; 
LINE 87
CONST -1876203875
GLOBAL CRC32.crc32table
STNW 440
CONST -1796572374
GLOBAL CRC32.crc32table
STNW 444
!   crc32table[112] := -525066777; crc32table[113] := -462094256; 
LINE 88
CONST -525066777
GLOBAL CRC32.crc32table
STNW 448
CONST -462094256
GLOBAL CRC32.crc32table
STNW 452
!   crc32table[114] := -382327159; crc32table[115] := -302564546; 
LINE 89
CONST -382327159
GLOBAL CRC32.crc32table
STNW 456
CONST -302564546
GLOBAL CRC32.crc32table
STNW 460
!   crc32table[116] := -206542021; crc32table[117] := -143559028; 
LINE 90
CONST -206542021
GLOBAL CRC32.crc32table
STNW 464
CONST -143559028
GLOBAL CRC32.crc32table
STNW 468
!   crc32table[118] := -97365931; crc32table[119] := -17609246; 
LINE 91
CONST -97365931
GLOBAL CRC32.crc32table
STNW 472
CONST -17609246
GLOBAL CRC32.crc32table
STNW 476
!   crc32table[120] := -960696225; crc32table[121] := -1031934488; 
LINE 92
CONST -960696225
GLOBAL CRC32.crc32table
STNW 480
CONST -1031934488
GLOBAL CRC32.crc32table
STNW 484
!   crc32table[122] := -817968335; crc32table[123] := -872425850; 
LINE 93
CONST -817968335
GLOBAL CRC32.crc32table
STNW 488
CONST -872425850
GLOBAL CRC32.crc32table
STNW 492
!   crc32table[124] := -709327229; crc32table[125] := -780559564; 
LINE 94
CONST -709327229
GLOBAL CRC32.crc32table
STNW 496
CONST -780559564
GLOBAL CRC32.crc32table
STNW 500
!   crc32table[126] := -600130067; crc32table[127] := -654598054; 
LINE 95
CONST -600130067
GLOBAL CRC32.crc32table
STNW 504
CONST -654598054
GLOBAL CRC32.crc32table
STNW 508
!   crc32table[128] := 1762451694; crc32table[129] := 1842216281; 
LINE 96
CONST 1762451694
GLOBAL CRC32.crc32table
STNW 512
CONST 1842216281
GLOBAL CRC32.crc32table
STNW 516
!   crc32table[130] := 1619975040; crc32table[131] := 1682949687; 
LINE 97
CONST 1619975040
GLOBAL CRC32.crc32table
STNW 520
CONST 1682949687
GLOBAL CRC32.crc32table
STNW 524
!   crc32table[132] := 2047383090; crc32table[133] := 2127137669; 
LINE 98
CONST 2047383090
GLOBAL CRC32.crc32table
STNW 528
CONST 2127137669
GLOBAL CRC32.crc32table
STNW 532
!   crc32table[134] := 1938468188; crc32table[135] := 2001449195; 
LINE 99
CONST 1938468188
GLOBAL CRC32.crc32table
STNW 536
CONST 2001449195
GLOBAL CRC32.crc32table
STNW 540
!   crc32table[136] := 1325665622; crc32table[137] := 1271206113; 
LINE 100
CONST 1325665622
GLOBAL CRC32.crc32table
STNW 544
CONST 1271206113
GLOBAL CRC32.crc32table
STNW 548
!   crc32table[138] := 1183200824; crc32table[139] := 1111960463; 
LINE 101
CONST 1183200824
GLOBAL CRC32.crc32table
STNW 552
CONST 1111960463
GLOBAL CRC32.crc32table
STNW 556
!   crc32table[140] := 1543535498; crc32table[141] := 1489069629; 
LINE 102
CONST 1543535498
GLOBAL CRC32.crc32table
STNW 560
CONST 1489069629
GLOBAL CRC32.crc32table
STNW 564
!   crc32table[142] := 1434599652; crc32table[143] := 1363369299; 
LINE 103
CONST 1434599652
GLOBAL CRC32.crc32table
STNW 568
CONST 1363369299
GLOBAL CRC32.crc32table
STNW 572
!   crc32table[144] := 622672798; crc32table[145] := 568075817; 
LINE 104
CONST 622672798
GLOBAL CRC32.crc32table
STNW 576
CONST 568075817
GLOBAL CRC32.crc32table
STNW 580
!   crc32table[146] := 748617968; crc32table[147] := 677256519; 
LINE 105
CONST 748617968
GLOBAL CRC32.crc32table
STNW 584
CONST 677256519
GLOBAL CRC32.crc32table
STNW 588
!   crc32table[148] := 907627842; crc32table[149] := 853037301; 
LINE 106
CONST 907627842
GLOBAL CRC32.crc32table
STNW 592
CONST 853037301
GLOBAL CRC32.crc32table
STNW 596
!   crc32table[150] := 1067152940; crc32table[151] := 995781531; 
LINE 107
CONST 1067152940
GLOBAL CRC32.crc32table
STNW 600
CONST 995781531
GLOBAL CRC32.crc32table
STNW 604
!   crc32table[152] := 51762726; crc32table[153] := 131386257; 
LINE 108
CONST 51762726
GLOBAL CRC32.crc32table
STNW 608
CONST 131386257
GLOBAL CRC32.crc32table
STNW 612
!   crc32table[154] := 177728840; crc32table[155] := 240578815; 
LINE 109
CONST 177728840
GLOBAL CRC32.crc32table
STNW 616
CONST 240578815
GLOBAL CRC32.crc32table
STNW 620
!   crc32table[156] := 269590778; crc32table[157] := 349224269; 
LINE 110
CONST 269590778
GLOBAL CRC32.crc32table
STNW 624
CONST 349224269
GLOBAL CRC32.crc32table
STNW 628
!   crc32table[158] := 429104020; crc32table[159] := 491947555; 
LINE 111
CONST 429104020
GLOBAL CRC32.crc32table
STNW 632
CONST 491947555
GLOBAL CRC32.crc32table
STNW 636
!   crc32table[160] := -248556018; crc32table[161] := -168932423; 
LINE 112
CONST -248556018
GLOBAL CRC32.crc32table
STNW 640
CONST -168932423
GLOBAL CRC32.crc32table
STNW 644
!   crc32table[162] := -122852000; crc32table[163] := -60002089; 
LINE 113
CONST -122852000
GLOBAL CRC32.crc32table
STNW 648
CONST -60002089
GLOBAL CRC32.crc32table
STNW 652
!   crc32table[164] := -500490030; crc32table[165] := -420856475; 
LINE 114
CONST -500490030
GLOBAL CRC32.crc32table
STNW 656
CONST -420856475
GLOBAL CRC32.crc32table
STNW 660
!   crc32table[166] := -341238852; crc32table[167] := -278395381; 
LINE 115
CONST -341238852
GLOBAL CRC32.crc32table
STNW 664
CONST -278395381
GLOBAL CRC32.crc32table
STNW 668
!   crc32table[168] := -685261898; crc32table[169] := -739858943; 
LINE 116
CONST -685261898
GLOBAL CRC32.crc32table
STNW 672
CONST -739858943
GLOBAL CRC32.crc32table
STNW 676
!   crc32table[170] := -559578920; crc32table[171] := -630940305; 
LINE 117
CONST -559578920
GLOBAL CRC32.crc32table
STNW 680
CONST -630940305
GLOBAL CRC32.crc32table
STNW 684
!   crc32table[172] := -1004286614; crc32table[173] := -1058877219; 
LINE 118
CONST -1004286614
GLOBAL CRC32.crc32table
STNW 688
CONST -1058877219
GLOBAL CRC32.crc32table
STNW 692
!   crc32table[174] := -845023740; crc32table[175] := -916395085; 
LINE 119
CONST -845023740
GLOBAL CRC32.crc32table
STNW 696
CONST -916395085
GLOBAL CRC32.crc32table
STNW 700
!   crc32table[176] := -1119974018; crc32table[177] := -1174433591; 
LINE 120
CONST -1119974018
GLOBAL CRC32.crc32table
STNW 704
CONST -1174433591
GLOBAL CRC32.crc32table
STNW 708
!   crc32table[178] := -1262701040; crc32table[179] := -1333941337; 
LINE 121
CONST -1262701040
GLOBAL CRC32.crc32table
STNW 712
CONST -1333941337
GLOBAL CRC32.crc32table
STNW 716
!   crc32table[180] := -1371866206; crc32table[181] := -1426332139; 
LINE 122
CONST -1371866206
GLOBAL CRC32.crc32table
STNW 720
CONST -1426332139
GLOBAL CRC32.crc32table
STNW 724
!   crc32table[182] := -1481064244; crc32table[183] := -1552294533; 
LINE 123
CONST -1481064244
GLOBAL CRC32.crc32table
STNW 728
CONST -1552294533
GLOBAL CRC32.crc32table
STNW 732
!   crc32table[184] := -1690935098; crc32table[185] := -1611170447; 
LINE 124
CONST -1690935098
GLOBAL CRC32.crc32table
STNW 736
CONST -1611170447
GLOBAL CRC32.crc32table
STNW 740
!   crc32table[186] := -1833673816; crc32table[187] := -1770699233; 
LINE 125
CONST -1833673816
GLOBAL CRC32.crc32table
STNW 744
CONST -1770699233
GLOBAL CRC32.crc32table
STNW 748
!   crc32table[188] := -2009983462; crc32table[189] := -1930228819; 
LINE 126
CONST -2009983462
GLOBAL CRC32.crc32table
STNW 752
CONST -1930228819
GLOBAL CRC32.crc32table
STNW 756
!   crc32table[190] := -2119160460; crc32table[191] := -2056179517; 
LINE 127
CONST -2119160460
GLOBAL CRC32.crc32table
STNW 760
CONST -2056179517
GLOBAL CRC32.crc32table
STNW 764
!   crc32table[192] := 1569362073; crc32table[193] := 1498123566; 
LINE 128
CONST 1569362073
GLOBAL CRC32.crc32table
STNW 768
CONST 1498123566
GLOBAL CRC32.crc32table
STNW 772
!   crc32table[194] := 1409854455; crc32table[195] := 1355396672; 
LINE 129
CONST 1409854455
GLOBAL CRC32.crc32table
STNW 776
CONST 1355396672
GLOBAL CRC32.crc32table
STNW 780
!   crc32table[196] := 1317987909; crc32table[197] := 1246755826; 
LINE 130
CONST 1317987909
GLOBAL CRC32.crc32table
STNW 784
CONST 1246755826
GLOBAL CRC32.crc32table
STNW 788
!   crc32table[198] := 1192025387; crc32table[199] := 1137557660; 
LINE 131
CONST 1192025387
GLOBAL CRC32.crc32table
STNW 792
CONST 1137557660
GLOBAL CRC32.crc32table
STNW 796
!   crc32table[200] := 2072149281; crc32table[201] := 2135122070; 
LINE 132
CONST 2072149281
GLOBAL CRC32.crc32table
STNW 800
CONST 2135122070
GLOBAL CRC32.crc32table
STNW 804
!   crc32table[202] := 1912620623; crc32table[203] := 1992383480; 
LINE 133
CONST 1912620623
GLOBAL CRC32.crc32table
STNW 808
CONST 1992383480
GLOBAL CRC32.crc32table
STNW 812
!   crc32table[204] := 1753615357; crc32table[205] := 1816598090; 
LINE 134
CONST 1753615357
GLOBAL CRC32.crc32table
STNW 816
CONST 1816598090
GLOBAL CRC32.crc32table
STNW 820
!   crc32table[206] := 1627664531; crc32table[207] := 1707420964; 
LINE 135
CONST 1627664531
GLOBAL CRC32.crc32table
STNW 824
CONST 1707420964
GLOBAL CRC32.crc32table
STNW 828
!   crc32table[208] := 295390185; crc32table[209] := 358241886; 
LINE 136
CONST 295390185
GLOBAL CRC32.crc32table
STNW 832
CONST 358241886
GLOBAL CRC32.crc32table
STNW 836
!   crc32table[210] := 404320391; crc32table[211] := 483945776; 
LINE 137
CONST 404320391
GLOBAL CRC32.crc32table
STNW 840
CONST 483945776
GLOBAL CRC32.crc32table
STNW 844
!   crc32table[212] := 43990325; crc32table[213] := 106832002; 
LINE 138
CONST 43990325
GLOBAL CRC32.crc32table
STNW 848
CONST 106832002
GLOBAL CRC32.crc32table
STNW 852
!   crc32table[214] := 186451547; crc32table[215] := 266083308; 
LINE 139
CONST 186451547
GLOBAL CRC32.crc32table
STNW 856
CONST 266083308
GLOBAL CRC32.crc32table
STNW 860
!   crc32table[216] := 932423249; crc32table[217] := 861060070; 
LINE 140
CONST 932423249
GLOBAL CRC32.crc32table
STNW 864
CONST 861060070
GLOBAL CRC32.crc32table
STNW 868
!   crc32table[218] := 1041341759; crc32table[219] := 986742920; 
LINE 141
CONST 1041341759
GLOBAL CRC32.crc32table
STNW 872
CONST 986742920
GLOBAL CRC32.crc32table
STNW 876
!   crc32table[220] := 613929101; crc32table[221] := 542559546; 
LINE 142
CONST 613929101
GLOBAL CRC32.crc32table
STNW 880
CONST 542559546
GLOBAL CRC32.crc32table
STNW 884
!   crc32table[222] := 756411363; crc32table[223] := 701822548; 
LINE 143
CONST 756411363
GLOBAL CRC32.crc32table
STNW 888
CONST 701822548
GLOBAL CRC32.crc32table
STNW 892
!   crc32table[224] := -978770311; crc32table[225] := -1050133554; 
LINE 144
CONST -978770311
GLOBAL CRC32.crc32table
STNW 896
CONST -1050133554
GLOBAL CRC32.crc32table
STNW 900
!   crc32table[226] := -869589737; crc32table[227] := -924188512; 
LINE 145
CONST -869589737
GLOBAL CRC32.crc32table
STNW 904
CONST -924188512
GLOBAL CRC32.crc32table
STNW 908
!   crc32table[228] := -693284699; crc32table[229] := -764654318; 
LINE 146
CONST -693284699
GLOBAL CRC32.crc32table
STNW 912
CONST -764654318
GLOBAL CRC32.crc32table
STNW 916
!   crc32table[230] := -550540341; crc32table[231] := -605129092; 
LINE 147
CONST -550540341
GLOBAL CRC32.crc32table
STNW 920
CONST -605129092
GLOBAL CRC32.crc32table
STNW 924
!   crc32table[232] := -475935807; crc32table[233] := -413084042; 
LINE 148
CONST -475935807
GLOBAL CRC32.crc32table
STNW 928
CONST -413084042
GLOBAL CRC32.crc32table
STNW 932
!   crc32table[234] := -366743377; crc32table[235] := -287118056; 
LINE 149
CONST -366743377
GLOBAL CRC32.crc32table
STNW 936
CONST -287118056
GLOBAL CRC32.crc32table
STNW 940
!   crc32table[236] := -257573603; crc32table[237] := -194731862; 
LINE 150
CONST -257573603
GLOBAL CRC32.crc32table
STNW 944
CONST -194731862
GLOBAL CRC32.crc32table
STNW 948
!   crc32table[238] := -114850189; crc32table[239] := -35218492; 
LINE 151
CONST -114850189
GLOBAL CRC32.crc32table
STNW 952
CONST -35218492
GLOBAL CRC32.crc32table
STNW 956
!   crc32table[240] := -1984365303; crc32table[241] := -1921392450; 
LINE 152
CONST -1984365303
GLOBAL CRC32.crc32table
STNW 960
CONST -1921392450
GLOBAL CRC32.crc32table
STNW 964
!   crc32table[242] := -2143631769; crc32table[243] := -2063868976; 
LINE 153
CONST -2143631769
GLOBAL CRC32.crc32table
STNW 968
CONST -2063868976
GLOBAL CRC32.crc32table
STNW 972
!   crc32table[244] := -1698919467; crc32table[245] := -1635936670; 
LINE 154
CONST -1698919467
GLOBAL CRC32.crc32table
STNW 976
CONST -1635936670
GLOBAL CRC32.crc32table
STNW 980
!   crc32table[246] := -1824608069; crc32table[247] := -1744851700; 
LINE 155
CONST -1824608069
GLOBAL CRC32.crc32table
STNW 984
CONST -1744851700
GLOBAL CRC32.crc32table
STNW 988
!   crc32table[248] := -1347415887; crc32table[249] := -1418654458; 
LINE 156
CONST -1347415887
GLOBAL CRC32.crc32table
STNW 992
CONST -1418654458
GLOBAL CRC32.crc32table
STNW 996
!   crc32table[250] := -1506661409; crc32table[251] := -1561119128; 
LINE 157
CONST -1506661409
GLOBAL CRC32.crc32table
STNW 1000
CONST -1561119128
GLOBAL CRC32.crc32table
STNW 1004
!   crc32table[252] := -1129027987; crc32table[253] := -1200260134; 
LINE 158
CONST -1129027987
GLOBAL CRC32.crc32table
STNW 1008
CONST -1200260134
GLOBAL CRC32.crc32table
STNW 1012
!   crc32table[254] := -1254728445; crc32table[255] := -1309196108; 
LINE 159
CONST -1254728445
GLOBAL CRC32.crc32table
STNW 1016
CONST -1309196108
GLOBAL CRC32.crc32table
STNW 1020
RETURN
END

! Global variables
GLOVAR CRC32.crc32table 1024
GLOVAR CRC32.crc 4

! End of file
