#!/bin/bash
export OMSPDIR=$PWD

#MSP430 specific code
pushd ${OMSPDIR}/msp430
${OMSPDIR}/omspc msp430g2553.Mod/s msp430g2231.Mod/s Traps.Mod/s Arith.Mod/s MultiPrecisionArith.Mod/s Types.Mod/s msp430delay.Mod Conv.Mod~
${OMSPDIR}/omspc jsmn.Mod mpack.Mod QMath8.Mod nrf24l01p.Mod String.Mod pcd8544.Mod PosixTime.Mod~
popd

#Test programs
pushd ${OMSPDIR}/tests
ln -sf ${OMSPDIR}/msp430/msp430g2553.sms .
ln -sf ${OMSPDIR}/msp430/Traps.sms .
ln -sf ${OMSPDIR}/msp430/Arith.sms .
${OMSPDIR}/omspc testFunc.Mod testFor.Mod testDeRef.Mod testCond.Mod testAssert.Mod testIntRelat.Mod testIntArith.Mod testInEx.Mod testInc.Mod testIfThen.Mod
${OMSPDIR}/omspc testLoadAdr.Mod testNeg.Mod testParam.Mod testProc.Mod testRecord.Mod testSet.Mod testStore.Mod testString.Mod/s testImportString.Mod testStringRelat.Mod
${OMSPDIR}/omspc testTypTag.Mod testSFuncs.Mod testSFuncs2.Mod/s testSFuncs3.Mod testSProcs.Mod testArray.Mod testExport.Mod/s testImport.Mod testRepeat.Mod testSelector.Mod
${OMSPDIR}/omspc testVector.Mod Facto.Mod testPRU.Mod/s testFunc2.Mod testFrame.Mod testVarParam.Mod testSProcs2.Mod testRecStr.Mod ISRTrap.Mod testInit.Mod testInitImp.Mod
${OMSPDIR}/omspc testRAMcode.Mod ~
ln -sf ${OMSPDIR}/msp430/msp430g2553.mpc .
ln -sf ${OMSPDIR}/msp430/Traps.mpc .
ln -sf ${OMSPDIR}/msp430/Arith.mpc .
${OMSPDIR}/omsplk 32 4000H 200H testFrame
${OMSPDIR}/omsplk 32 4000H 200H testTypTag
${OMSPDIR}/omsplk 32 4000H 200H testString
${OMSPDIR}/omsplk 32 4000H 200H testImportString
${OMSPDIR}/omsplk 32 4000H 200H testInitImp
${OMSPDIR}/omsplk 32 4000H 200H testRAMcode ~
popd

#Texas Instruments examples
#peripherals
#Compilation
pushd ${OMSPDIR}/examples/msp430g2553/peripherals
ln -sf ${OMSPDIR}/msp430/msp430g2553.sms .
ln -sf ${OMSPDIR}/msp430/Traps.sms .
ln -sf ${OMSPDIR}/msp430/Arith.sms .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.sms .
ln -sf ${OMSPDIR}/msp430/Types.sms .
ln -sf ${OMSPDIR}/msp430/msp430delay.sms .
${OMSPDIR}/omspc msp430g2x13ca01.Mod msp430g2x13ca02.Mod msp430g2x13ca03.Mod ~

${OMSPDIR}/omspc msp430g2x33adc1001.Mod msp430g2x33adc1002.Mod msp430g2x33adc1003.Mod msp430g2x33adc1004.Mod  msp430g2x33adc1005.Mod msp430g2x33adc1006.Mod
${OMSPDIR}/omspc msp430g2x33adc1007.Mod msp430g2x33adc1008.Mod msp430g2x33adc1009.Mod msp430g2x33adc1010.Mod msp430g2x33adc1011.Mod msp430g2x33adc1012.Mod
${OMSPDIR}/omspc msp430g2x33adc1013.Mod msp430g2x33adc1014.Mod msp430g2x33adc1016.Mod msp430g2x33adc10temp.Mod ~

${OMSPDIR}/omspc msp430g2xx31.Mod msp430g2xx31vlo.Mod msp430g2xx3clks.Mod msp430g2xx3dcocalib.Mod msp430g2xx3dcoflashcal.Mod msp430g2xx3flashwrite01.Mod
${OMSPDIR}/omspc msp430g2xx3LFxtalnmi.Mod msp430g2xx3lpm3.Mod msp430g2xx3lpm3vlo.Mod msp430g2xx3nmi.Mod ~

${OMSPDIR}/omspc msp430g2xx3P101.Mod msp430g2xx3P102.Mod msp430g2xx3P103.Mod msp430g2xx3P104.Mod ~

${OMSPDIR}/omspc msp430g2xx3ta01.Mod msp430g2xx3ta02.Mod msp430g2xx3ta03.Mod msp430g2xx3ta04.Mod msp430g2xx3ta05.Mod msp430g2xx3ta06.Mod
${OMSPDIR}/omspc msp430g2xx3ta07.Mod msp430g2xx3ta08.Mod msp430g2xx3ta10.Mod msp430g2xx3ta11.Mod msp430g2xx3ta13.Mod msp430g2xx3ta14.Mod
${OMSPDIR}/omspc msp430g2xx3ta16.Mod msp430g2xx3ta17.Mod msp430g2xx3ta19.Mod msp430g2xx3ta20.Mod  msp430g2xx3ta21.Mod msp430g2xx3tauart2400.Mod
${OMSPDIR}/omspc msp430g2xx3tauart9600.Mod ~

${OMSPDIR}/omspc msp430g2xx3uscia0irda01.Mod msp430g2xx3uscia0spi09.Mod msp430g2xx3uscia0spi10.Mod msp430g2xx3uscia0u115k.Mod
${OMSPDIR}/omspc msp430g2xx3uscia0u115kl.Mod msp430g2xx3uscia0u19200.Mod msp430g2xx3uscia0u9600.Mod msp430g2xx3uscia0u59600.Mod
${OMSPDIR}/omspc msp430g2xx3uscia0u69600.Mod msp430g2xx3uscia0u79600.Mod msp430g2xx3uscia0u89600.Mod ~

${OMSPDIR}/omspc msp430g2xx3uscib0i2c01.Mod msp430g2xx3uscib0i2c02.Mod msp430g2xx3uscib0i2c03.Mod msp430g2xx3uscib0i2c04.Mod
${OMSPDIR}/omspc msp430g2xx3uscib0i2c05.Mod msp430g2xx3uscib0i2c06.Mod msp430g2xx3uscib0i2c07.Mod msp430g2xx3uscib0i2c08.Mod msp430g2xx3uscib0i2c09.Mod
${OMSPDIR}/omspc msp430g2xx3uscib0i2c10.Mod msp430g2xx3uscib0i2c11.Mod msp430g2xx3uscib0i2c12.Mod msp430g2xx3uscib0i2c13.Mod msp430g2xx3uscib0i2csm.Mod
${OMSPDIR}/omspc msp430g2xx3uscib0i2css.Mod msp430g2xx3usciuarttrcv.Mod ~

${OMSPDIR}/omspc msp430g2xx3wdt01.Mod msp430g2xx3wdt02.Mod msp430g2xx3wdt04.Mod msp430g2xx3wdt05.Mod msp430g2xx3wdt06.Mod ~

#Link
ln -sf ${OMSPDIR}/msp430/msp430g2553.mpc .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.mpc .
ln -sf ${OMSPDIR}/msp430/Types.mpc .
ln -sf ${OMSPDIR}/msp430/msp430delay.mpc .

${OMSPDIR}/omsplk 32 4000H 200H msp430g2x13ca01 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x13ca02 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x13ca03 ~

${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1001 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1002 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1003 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1004 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1005 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1006 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1007 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1008 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1009 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1010 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1011 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1012 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1013 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1014 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc1016 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2x33adc10temp ~


${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx31 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx31vlo ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3clks ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3dcocalib ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3dcoflashcal ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3flashwrite01 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3LFxtalnmi ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3lpm3 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3lpm3vlo ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3nmi ~


${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3P101 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3P102 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3P103 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3P104 ~


${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta01 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta02 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta03 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta04 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta05 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta06 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta07 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta08 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta10 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta11 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta13 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta14 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta16 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta17 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta19 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta20 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3ta21 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3tauart2400 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3tauart9600 ~


${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0irda01 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0spi09 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0spi10 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0u115k ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0u115kl ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0u19200 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0u9600 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0u59600 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0u69600 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0u79600 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscia0u89600 ~


${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c01 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c02 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c03 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c04 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c05 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c06 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c07 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c08 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c09 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c10 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c11 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c12 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2c13 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2csm ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3uscib0i2css ~ 


${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3usciuarttrcv ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3wdt01 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3wdt02 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3wdt04 ~ 
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3wdt05 ~
${OMSPDIR}/omsplk 32 4000H 200H msp430g2xx3wdt06 ~

popd

#GUIComposerMod
pushd ${OMSPDIR}/examples/msp430g2553/GUIComposerMod
#JSON
ln -sf ${OMSPDIR}/msp430/msp430g2553.sms .
ln -sf ${OMSPDIR}/msp430/Arith.sms .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.sms .
ln -sf ${OMSPDIR}/msp430/jsmn.sms .

${OMSPDIR}/omspc HALSYSmsp430g255x.Mod GUIJson.Mod HALCallbacks.Mod HALIOmsp430g255x.Mod HALTIMmsp430g255x.Mod ~
${OMSPDIR}/omspc JSONCallbacks.Mod/s HALGUImsp430g255x.Mod JSONGUIComm.Mod msp430g2553GcSmplJson.Mod ~

ln -sf ${OMSPDIR}/msp430/msp430g2553.mpc .
ln -sf ${OMSPDIR}/msp430/Arith.mpc .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.mpc .
ln -sf ${OMSPDIR}/msp430/jsmn.mpc .

${OMSPDIR}/omsplk 32 4000H 200H msp430g2553GcSmplJson ~

#GUIComposer
pushd ${OMSPDIR}/examples/msp430g2553/GUIComposer
#JSON
ln -sf ${OMSPDIR}/msp430/msp430g2553.sms .
ln -sf ${OMSPDIR}/msp430/Arith.sms .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.sms .
ln -sf ${OMSPDIR}/msp430/jsmn.sms .
ln -sf ${OMSPDIR}/examples/msp430g2553/GUIComposerMod/HALSYSmsp430g255x.sms .
ln -sf ${OMSPDIR}/examples/msp430g2553/GUIComposerMod/JSONCallbacks.sms .

${OMSPDIR}/omspc HALIOmsp430g255x.Mod HALTIMmsp430g255x.Mod HALGUImsp430g255x.Mod GUIJson.Mod JSONGUIComm.Mod ~
${OMSPDIR}/omspc msp430g2553GcSmplJson.Mod ~

ln -sf ${OMSPDIR}/msp430/msp430g2553.mpc .
ln -sf ${OMSPDIR}/msp430/Arith.mpc .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.mpc .
ln -sf ${OMSPDIR}/msp430/jsmn.mpc .
ln -sf ${OMSPDIR}/examples/msp430g2553/GUIComposerMod/HALSYSmsp430g255x.mpc .
ln -sf ${OMSPDIR}/examples/msp430g2553/GUIComposerMod/JSONCallbacks.mpc .

${OMSPDIR}/omsplk 32 4000H 200H msp430g2553GcSmplJson ~

#MPack
ln -sf ${OMSPDIR}/msp430/mpack.sms .

${OMSPDIR}/omspc MpackCallbacks.Mod HALGUImsp430g255x.Mod GUIMpack.Mod MpackGUIComm.Mod msp430g2553GcSmplMpack.Mod

ln -sf ${OMSPDIR}/msp430/mpack.mpc .

${OMSPDIR}/omsplk 32 4000H 200H msp430g2553GcSmplMpack ~
popd

pushd ${OMSPDIR}/examples/msp430g2553/launchpads

ln -sf ${OMSPDIR}/msp430/msp430g2553.sms .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.sms .
ln -sf ${OMSPDIR}/msp430/msp430delay.sms .

${OMSPDIR}/omspc MSPEXP430G2Launchpad.Mod ~

ln -sf ${OMSPDIR}/msp430/msp430g2553.mpc .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.mpc .
ln -sf ${OMSPDIR}/msp430/msp430delay.mpc .

${OMSPDIR}/omsplk 32 4000H 200H MSPEXP430G2Launchpad ~
popd

pushd ${OMSPDIR}/examples/msp430g2231/Thermometre

ln -sf ${OMSPDIR}/msp430/msp430g2231.sms .
ln -sf ${OMSPDIR}/msp430/Conv.sms .
ln -sf ${OMSPDIR}/msp430/msp430delay.sms .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.sms .

${OMSPDIR}/omspc nrf24l01pThermo.Mod Thermometre.Mod~

ln -sf ${OMSPDIR}/msp430/msp430g2231.mpc .
ln -sf ${OMSPDIR}/msp430/Conv.mpc .
ln -sf ${OMSPDIR}/msp430/msp430delay.mpc .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.mpc .

${OMSPDIR}/omsplk 32 800H 80H Thermometre~
popd

pushd ${OMSPDIR}/examples/msp430g2553/nrf24pxx_relay_COTA

ln -sf ${OMSPDIR}/msp430/msp430g2553.sms .
ln -sf ${OMSPDIR}/msp430/msp430delay.sms .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.sms .
ln -sf ${OMSPDIR}/msp430/nrf24l01p.sms .
ln -sf ${OMSPDIR}/msp430/String.sms .
ln -sf ${OMSPDIR}/msp430/pcd8544.sms .

${OMSPDIR}/omspc nrf24pRelayTypes.Mod/s minihdlc.Mod/s nrf24pRelay.Mod/s ~

ln -sf ${OMSPDIR}/msp430/msp430g2553.mpc .
ln -sf ${OMSPDIR}/msp430/msp430delay.mpc .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.mpc .
ln -sf ${OMSPDIR}/msp430/nrf24l01p.mpc .
ln -sf ${OMSPDIR}/msp430/String.mpc .
ln -sf ${OMSPDIR}/msp430/pcd8544.mpc .

${OMSPDIR}/omsplk 32 4000H 200H nrf24pRelay~

pushd ${OMSPDIR}/examples/msp430g2553/bootloader

ln -sf ${OMSPDIR}/msp430/msp430g2553.sms .
ln -sf ${OMSPDIR}/msp430/msp430delay.sms .
ln -sf ${OMSPDIR}/msp430/Types.sms .

${OMSPDIR}/omspc MSPFlashTypes.Mod/s MSPFlash.Mod/s preserveMSPFlash.Mod/s bootloader.Mod ~

ln -sf ${OMSPDIR}/msp430/msp430g2553.mpc .
ln -sf ${OMSPDIR}/msp430/msp430delay.mpc .
ln -sf ${OMSPDIR}/msp430/Types.mpc .

${OMSPDIR}/omsplk 32 4000H 200H bootloader ~

popd

pushd ${OMSPDIR}/examples/msp430g2553/sDiary

ln -sf ${OMSPDIR}/msp430/msp430g2553.sms .
ln -sf ${OMSPDIR}/msp430/msp430delay.sms .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.sms .
ln -sf ${OMSPDIR}/msp430/nrf24l01p.sms .
ln -sf ${OMSPDIR}/msp430/String.sms .
ln -sf ${OMSPDIR}/msp430/pcd8544.sms .
ln -sf ${OMSPDIR}/msp430/PosixTime.sms .
ln -sf ${OMSPDIR}/examples/msp430g2553/bootloader/preserveMSPFlash.sms .

${OMSPDIR}/omspc sDiaryTypes.Mod/s sDiary.Mod/s ~

ln -sf ${OMSPDIR}/msp430/msp430g2553.mpc .
ln -sf ${OMSPDIR}/msp430/msp430delay.mpc .
ln -sf ${OMSPDIR}/msp430/MultiPrecisionArith.mpc .
ln -sf ${OMSPDIR}/msp430/nrf24l01p.mpc .
ln -sf ${OMSPDIR}/msp430/String.mpc .
ln -sf ${OMSPDIR}/msp430/pcd8544.mpc .
ln -sf ${OMSPDIR}/msp430/PosixTime.mpc .
ln -sf ${OMSPDIR}/msp430/Arith.mpc .
ln -sf ${OMSPDIR}/examples/msp430g2553/bootloader/preserveMSPFlash.mpc .
ln -sf ${OMSPDIR}/examples/msp430g2553/bootloader/MSPFlashTypes.mpc .

${OMSPDIR}/omsplk 32 2800H 200H sDiary~

popd
