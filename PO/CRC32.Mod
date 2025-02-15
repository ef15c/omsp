MODULE CRC32;
  IMPORT SYSTEM;

  VAR crc32table: ARRAY 256 OF INTEGER;
    crc: INTEGER;
    
  PROCEDURE reset*;
  BEGIN crc := -1;
  END reset;
  
  PROCEDURE write*(v: INTEGER);
  BEGIN
    crc := ORD(SYSTEM.VAL(SET, LSL(crc, 8)) / SYSTEM.VAL(SET, 
      crc32table[ORD(SYSTEM.VAL(SET, ASR(crc, 24) MOD 100H) /
      SYSTEM.VAL(SET, ASR(v, 24) MOD 100H))]));
    crc := ORD(SYSTEM.VAL(SET, LSL(crc, 8)) / SYSTEM.VAL(SET, 
      crc32table[ORD(SYSTEM.VAL(SET, ASR(crc, 24) MOD 100H) /
      SYSTEM.VAL(SET, ASR(v, 16) MOD 100H))]));
    crc := ORD(SYSTEM.VAL(SET, LSL(crc, 8)) / SYSTEM.VAL(SET, 
      crc32table[ORD(SYSTEM.VAL(SET, ASR(crc, 24) MOD 100H) /
      SYSTEM.VAL(SET, ASR(v, 8) MOD 100H))]));
    crc := ORD(SYSTEM.VAL(SET, LSL(crc, 8)) / SYSTEM.VAL(SET, 
      crc32table[ORD(SYSTEM.VAL(SET, ASR(crc, 24) MOD 100H) /
      SYSTEM.VAL(SET, v MOD 100H))]));
  END write;
  
  PROCEDURE read*(): INTEGER;
    RETURN crc
  END read;
  
BEGIN crc := -1;
  crc32table[0] := 0; crc32table[1] := 79764919; 
  crc32table[2] := 159529838; crc32table[3] := 222504665; 
  crc32table[4] := 319059676; crc32table[5] := 398814059; 
  crc32table[6] := 445009330; crc32table[7] := 507990021; 
  crc32table[8] := 638119352; crc32table[9] := 583659535; 
  crc32table[10] := 797628118; crc32table[11] := 726387553; 
  crc32table[12] := 890018660; crc32table[13] := 835552979; 
  crc32table[14] := 1015980042; crc32table[15] := 944750013; 
  crc32table[16] := 1276238704; crc32table[17] := 1221641927; 
  crc32table[18] := 1167319070; crc32table[19] := 1095957929; 
  crc32table[20] := 1595256236; crc32table[21] := 1540665371; 
  crc32table[22] := 1452775106; crc32table[23] := 1381403509; 
  crc32table[24] := 1780037320; crc32table[25] := 1859660671; 
  crc32table[26] := 1671105958; crc32table[27] := 1733955601; 
  crc32table[28] := 2031960084; crc32table[29] := 2111593891; 
  crc32table[30] := 1889500026; crc32table[31] := 1952343757; 
  crc32table[32] := -1742489888; crc32table[33] := -1662866601; 
  crc32table[34] := -1851683442; crc32table[35] := -1788833735; 
  crc32table[36] := -1960329156; crc32table[37] := -1880695413; 
  crc32table[38] := -2103051438; crc32table[39] := -2040207643; 
  crc32table[40] := -1104454824; crc32table[41] := -1159051537; 
  crc32table[42] := -1213636554; crc32table[43] := -1284997759; 
  crc32table[44] := -1389417084; crc32table[45] := -1444007885; 
  crc32table[46] := -1532160278; crc32table[47] := -1603531939; 
  crc32table[48] := -734892656; crc32table[49] := -789352409; 
  crc32table[50] := -575645954; crc32table[51] := -646886583; 
  crc32table[52] := -952755380; crc32table[53] := -1007220997; 
  crc32table[54] := -827056094; crc32table[55] := -898286187; 
  crc32table[56] := -231047128; crc32table[57] := -151282273; 
  crc32table[58] := -71779514; crc32table[59] := -8804623; 
  crc32table[60] := -515967244; crc32table[61] := -436212925; 
  crc32table[62] := -390279782; crc32table[63] := -327299027; 
  crc32table[64] := 881225847; crc32table[65] := 809987520; 
  crc32table[66] := 1023691545; crc32table[67] := 969234094; 
  crc32table[68] := 662832811; crc32table[69] := 591600412; 
  crc32table[70] := 771767749; crc32table[71] := 717299826; 
  crc32table[72] := 311336399; crc32table[73] := 374308984; 
  crc32table[74] := 453813921; crc32table[75] := 533576470; 
  crc32table[76] := 25881363; crc32table[77] := 88864420; 
  crc32table[78] := 134795389; crc32table[79] := 214552010; 
  crc32table[80] := 2023205639; crc32table[81] := 2086057648; 
  crc32table[82] := 1897238633; crc32table[83] := 1976864222; 
  crc32table[84] := 1804852699; crc32table[85] := 1867694188; 
  crc32table[86] := 1645340341; crc32table[87] := 1724971778; 
  crc32table[88] := 1587496639; crc32table[89] := 1516133128; 
  crc32table[90] := 1461550545; crc32table[91] := 1406951526; 
  crc32table[92] := 1302016099; crc32table[93] := 1230646740; 
  crc32table[94] := 1142491917; crc32table[95] := 1087903418; 
  crc32table[96] := -1398421865; crc32table[97] := -1469785312; 
  crc32table[98] := -1524105735; crc32table[99] := -1578704818; 
  crc32table[100] := -1079922613; crc32table[101] := -1151291908; 
  crc32table[102] := -1239184603; crc32table[103] := -1293773166; 
  crc32table[104] := -1968362705; crc32table[105] := -1905510760; 
  crc32table[106] := -2094067647; crc32table[107] := -2014441994; 
  crc32table[108] := -1716953613; crc32table[109] := -1654112188; 
  crc32table[110] := -1876203875; crc32table[111] := -1796572374; 
  crc32table[112] := -525066777; crc32table[113] := -462094256; 
  crc32table[114] := -382327159; crc32table[115] := -302564546; 
  crc32table[116] := -206542021; crc32table[117] := -143559028; 
  crc32table[118] := -97365931; crc32table[119] := -17609246; 
  crc32table[120] := -960696225; crc32table[121] := -1031934488; 
  crc32table[122] := -817968335; crc32table[123] := -872425850; 
  crc32table[124] := -709327229; crc32table[125] := -780559564; 
  crc32table[126] := -600130067; crc32table[127] := -654598054; 
  crc32table[128] := 1762451694; crc32table[129] := 1842216281; 
  crc32table[130] := 1619975040; crc32table[131] := 1682949687; 
  crc32table[132] := 2047383090; crc32table[133] := 2127137669; 
  crc32table[134] := 1938468188; crc32table[135] := 2001449195; 
  crc32table[136] := 1325665622; crc32table[137] := 1271206113; 
  crc32table[138] := 1183200824; crc32table[139] := 1111960463; 
  crc32table[140] := 1543535498; crc32table[141] := 1489069629; 
  crc32table[142] := 1434599652; crc32table[143] := 1363369299; 
  crc32table[144] := 622672798; crc32table[145] := 568075817; 
  crc32table[146] := 748617968; crc32table[147] := 677256519; 
  crc32table[148] := 907627842; crc32table[149] := 853037301; 
  crc32table[150] := 1067152940; crc32table[151] := 995781531; 
  crc32table[152] := 51762726; crc32table[153] := 131386257; 
  crc32table[154] := 177728840; crc32table[155] := 240578815; 
  crc32table[156] := 269590778; crc32table[157] := 349224269; 
  crc32table[158] := 429104020; crc32table[159] := 491947555; 
  crc32table[160] := -248556018; crc32table[161] := -168932423; 
  crc32table[162] := -122852000; crc32table[163] := -60002089; 
  crc32table[164] := -500490030; crc32table[165] := -420856475; 
  crc32table[166] := -341238852; crc32table[167] := -278395381; 
  crc32table[168] := -685261898; crc32table[169] := -739858943; 
  crc32table[170] := -559578920; crc32table[171] := -630940305; 
  crc32table[172] := -1004286614; crc32table[173] := -1058877219; 
  crc32table[174] := -845023740; crc32table[175] := -916395085; 
  crc32table[176] := -1119974018; crc32table[177] := -1174433591; 
  crc32table[178] := -1262701040; crc32table[179] := -1333941337; 
  crc32table[180] := -1371866206; crc32table[181] := -1426332139; 
  crc32table[182] := -1481064244; crc32table[183] := -1552294533; 
  crc32table[184] := -1690935098; crc32table[185] := -1611170447; 
  crc32table[186] := -1833673816; crc32table[187] := -1770699233; 
  crc32table[188] := -2009983462; crc32table[189] := -1930228819; 
  crc32table[190] := -2119160460; crc32table[191] := -2056179517; 
  crc32table[192] := 1569362073; crc32table[193] := 1498123566; 
  crc32table[194] := 1409854455; crc32table[195] := 1355396672; 
  crc32table[196] := 1317987909; crc32table[197] := 1246755826; 
  crc32table[198] := 1192025387; crc32table[199] := 1137557660; 
  crc32table[200] := 2072149281; crc32table[201] := 2135122070; 
  crc32table[202] := 1912620623; crc32table[203] := 1992383480; 
  crc32table[204] := 1753615357; crc32table[205] := 1816598090; 
  crc32table[206] := 1627664531; crc32table[207] := 1707420964; 
  crc32table[208] := 295390185; crc32table[209] := 358241886; 
  crc32table[210] := 404320391; crc32table[211] := 483945776; 
  crc32table[212] := 43990325; crc32table[213] := 106832002; 
  crc32table[214] := 186451547; crc32table[215] := 266083308; 
  crc32table[216] := 932423249; crc32table[217] := 861060070; 
  crc32table[218] := 1041341759; crc32table[219] := 986742920; 
  crc32table[220] := 613929101; crc32table[221] := 542559546; 
  crc32table[222] := 756411363; crc32table[223] := 701822548; 
  crc32table[224] := -978770311; crc32table[225] := -1050133554; 
  crc32table[226] := -869589737; crc32table[227] := -924188512; 
  crc32table[228] := -693284699; crc32table[229] := -764654318; 
  crc32table[230] := -550540341; crc32table[231] := -605129092; 
  crc32table[232] := -475935807; crc32table[233] := -413084042; 
  crc32table[234] := -366743377; crc32table[235] := -287118056; 
  crc32table[236] := -257573603; crc32table[237] := -194731862; 
  crc32table[238] := -114850189; crc32table[239] := -35218492; 
  crc32table[240] := -1984365303; crc32table[241] := -1921392450; 
  crc32table[242] := -2143631769; crc32table[243] := -2063868976; 
  crc32table[244] := -1698919467; crc32table[245] := -1635936670; 
  crc32table[246] := -1824608069; crc32table[247] := -1744851700; 
  crc32table[248] := -1347415887; crc32table[249] := -1418654458; 
  crc32table[250] := -1506661409; crc32table[251] := -1561119128; 
  crc32table[252] := -1129027987; crc32table[253] := -1200260134; 
  crc32table[254] := -1254728445; crc32table[255] := -1309196108; 
END CRC32.
