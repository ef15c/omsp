(* --COPYRIGHT--,BSD_EX
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *******************************************************************************
 * 
 *                       MSP430 CODE EXAMPLE DISCLAIMER
 *
 * MSP430 code examples are self-contained low-level programs that typically
 * demonstrate a single peripheral function or device feature in a highly
 * concise manner. For this the code may rely on the device's power-on default
 * register values and settings such as the clock configuration and care must
 * be taken when combining code from several examples to avoid potential side
 * effects. Also see www.ti.com/grace for a GUI- and www.ti.com/msp430ware
 * for an API functional library-approach to peripheral configuration.
 *
 * --/COPYRIGHT--*/
//******************************************************************************
//  MSP430G2xx3 Demo - DCO Calibration Constants Programmer
//
//  NOTE: THIS CODE REPLACES THE TI FACTORY-PROGRAMMED DCO CALIBRATION
//  CONSTANTS LOCATED IN INFOA WITH NEW VALUES. USE ONLY IF THE ORIGINAL
//  CONSTANTS ACCIDENTALLY GOT CORRUPTED OR ERASED.
//
//  Description: This code re-programs the G2xx2 DCO calibration constants.
//  A software FLL mechanism is used to set the DCO based on an external
//  32kHz reference clock. After each calibration, the values from the
//  clock system are read out and stored in a temporary variable. The final
//  frequency the DCO is set to is 1MHz, and this frequency is also used
//  during Flash programming of the constants. The program end is indicated
//  by the blinking LED.
//  ACLK = LFXT1/8 = 32768/8, MCLK = SMCLK = target DCO
//  //* External watch crystal installed on XIN XOUT is required for ACLK *//
//
//           MSP430G2xx3
//         ---------------
//     /|\|            XIN|-
//      | |               | 32kHz
//      --|RST        XOUT|-
//        |               |
//        |           P1.0|--> LED
//        |           P1.4|--> SMLCK = target DCO
//
//  D. Dang
//  Texas Instruments Inc.
//  May 2010
// C. Schoffit 20.09.24, built with Oberon MSP430 compiler
//******************************************************************************)

MODULE msp430g2xx3dcoflashcal;
  IMPORT SYSTEM, M := msp430g2553;

  CONST
    DELTA_1MHZ = 244; (* 244 x 4096Hz = 999.4Hz *)
    DELTA_8MHZ = 1953; (* 1953 x 4096Hz = 7.99MHz *)
    DELTA_12MHZ = 2930; (* 2930 x 4096Hz = 12.00MHz *)
    DELTA_16MHZ = 3906; (* 3906 x 4096Hz = 15.99MHz *)


  VAR
    CAL_DATA: ARRAY 8 OF BYTESET; (* Temp. storage for constants *)
    i, j: INTEGER;
    Flash_ptrA:  PBYTESET; (* Segment A pointer *)

  PROCEDURE Set_DCO(Delta: INTEGER); (* Set DCO to selected frequency *)
    VAR Compare, Oldcapture: INTEGER;
  BEGIN
    Oldcapture := 0;

    BIS(M.BCSCTL1^, M.DIVA_3); (* ACLK = LFXT1CLK/8 *)
    M.TA0CCTL0^ := M.CM_1 + M.CCIS_1 + M.CAP; (* CAP, ACLK *)
    M.TA0CTL^ := M.TASSEL_2 + M.MC_2 + M.TACLR; (* SMCLK, cont-mode, clear *)

    REPEAT
      REPEAT UNTIL BIT(M.CCIFG, M.TA0CCTL0^); (* Wait until capture occured *)
      BIC(M.TA0CCTL0^, M.CCIFG); (* Capture occured, clear flag *)
      Compare := M.TA0CCR0^; (* Get current captured SMCLK *)
      DEC(Compare, Oldcapture); (* SMCLK difference *)
      Oldcapture := M.TA0CCR0^; (* Save current captured SMCLK *)

      IF Delta < Compare THEN
        DEC(ORD(M.DCOCTL^)); (* DCO is too fast, slow it down *)
        IF (M.DCOCTL^ = {0..7}) (* Did DCO roll under? *) & (M.BCSCTL1^*{0..3} # {}) THEN
          DEC(ORD(M.BCSCTL1^)) (* Select lower RSEL *)
        END
      ELSIF Delta > Compare THEN
        INC(ORD(M.DCOCTL^)); (* DCO is too slow, speed it up *)
        IF (M.DCOCTL^ = {}) (* Did DCO roll over? *) & (M.BCSCTL1^*{0..3} # {0..3}) THEN
          INC(ORD(M.BCSCTL1^)); (* Sel higher RSEL *)
        END
      END
    UNTIL  Delta = Compare;
    M.TA0CCTL0^ := {}; (* Stop TACCR0 *)
    M.TA0CTL^ := {}; (* Stop Timer_A *)
    BIC(M.BCSCTL1^, M.DIVA_3) (* ACLK = LFXT1CLK *)
  END Set_DCO;

BEGIN
  M.WDTCTL^ := M.WDTPW + M.WDTHOLD; (* Stop WDT *)
  i := 0FFFEH; REPEAT DEC(i) UNTIL i = 0; (* Delay for XTAL stabilization *)
  M.P1OUT^ := {}; (* Clear P1 output latches *)
  M.P1SEL^ := {4}; (* P1.4 SMCLK output *)
  M.P1DIR^ := {0, 4}; (* P1.0,4 output *)

  j := 0; (* Reset pointer *)

  Set_DCO(DELTA_16MHZ); (* Set DCO and obtain constants *)
  CAL_DATA[j] := M.DCOCTL^; INC(j);
  CAL_DATA[j] := M.BCSCTL1^; INC(j);

  Set_DCO(DELTA_12MHZ); (* Set DCO and obtain constants *)
  CAL_DATA[j] := M.DCOCTL^; INC(j);
  CAL_DATA[j] := M.BCSCTL1^; INC(j);

  Set_DCO(DELTA_8MHZ); (* Set DCO and obtain constants *)
  CAL_DATA[j] := M.DCOCTL^; INC(j);
  CAL_DATA[j] := M.BCSCTL1^; INC(j);

  Set_DCO(DELTA_1MHZ); (* Set DCO and obtain constants *)
  CAL_DATA[j] := M.DCOCTL^; INC(j);
  CAL_DATA[j] := M.BCSCTL1^; INC(j);

  Flash_ptrA := SYSTEM.VAL(PBYTESET, 10C0H); (* Segment A pointer *)
  M.FCTL2^ := M.FWKEY + M.FSSEL0 + M.FN1; (* MCLK/3 for Flash Timing Generator *)
  M.FCTL1^ := M.FWKEY + M.ERASE; (* Set Erase bit *)
  M.FCTL3^ := M.FWKEY + M.LOCKA; (* Clear LOCK & LOCKA bits *)
  Flash_ptrA^ := {}; (* Dummy write to erase Flash seg A *)
  M.FCTL1^ := M.FWKEY + M.WRT; (* Set WRT bit for write operation *)
  Flash_ptrA := SYSTEM.VAL(PBYTESET, 10F8H); (* Point to beginning of cal consts *)
  FOR j := 0 TO 7 DO Flash_ptrA^ := CAL_DATA[j]; INC(ORD(Flash_ptrA)) END; (* re-flash DCO calibration data *)
  M.FCTL1^ := M.FWKEY; (* Clear WRT bit *)
  M.FCTL3^ := M.FWKEY + M.LOCKA + M.LOCK; (* Set LOCK & LOCKA bit *)

  REPEAT
    XOR(M.P1OUT^, {0}); (* Toggle LED*)
    i := 4000H; REPEAT DEC(i) UNTIL i = 0; (* SW Delay *)
  UNTIL FALSE
END msp430g2xx3dcoflashcal.

OMSPTool.DecObj msp430g2xx3dcoflashcal.mpc
decode msp430g2xx3dcoflashcal.mpc
msp430g2xx3dcoflashcal 61060AFE Flash   460
imports:
	msp430g2553 F10488DC
type descriptors

data    14
strings

vector table
 FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF
 FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF

entries
 c 0094
fixup procedures in code space chains
 0136     0	 0000
fixup handlers in vector space chains
fixup data in code space chains
 01A0     0	 000C
 019A     0	 0000
 01A4     0	 000A
 01C4     0	 0008
fixup constants in code space chains
fixup variables in constant space chains
fixup constants in constant space chains
entry =  0094
code   460
 0000	     8221	SUB #4,SP
 0002	     4381	MOV #0,2(SP)
 0004	     0002
 0006	     D0F2	BIS.B #48,&87
 0008	     0030
 000A	     0057
 000C	     40B2	MOV #20736,&354
 000E	     5100
 0010	     0162
 0012	     40B2	MOV #548,&352
 0014	     0224
 0016	     0160
 0018	     431F	MOV #1,R15
 001A	     B21F	BIT &354,R15
 001C	     0162
 001E	     27FC	JEQ $-6, goes to  0018
 0020	     C392	BIC #1,&354
 0022	     0162
 0024	     4291	MOV &370,0(SP)
 0026	     0172
 0028	     0000
 002A	     8191	SUB 2(SP),0(SP)
 002C	     0002
 002E	     0000
 0030	     4291	MOV &370,2(SP)
 0032	     0172
 0034	     0002
 0036	     91A1	CMP @SP,6(SP)
 0038	     0006
 003A	     340E	JGE $+30, goes to  0058
 003C	     83D2	SUB.B #1,&86
 003E	     0056
 0040	     93F2	CMP.B #-1,&86
 0042	     0056
 0044	     2008	JNE $+18, goes to  0056
 0046	     425F	MOV.B &87,R15
 0048	     0057
 004A	     F07F	AND.B #15,R15
 004C	     000F
 004E	     934F	CMP.B #0,R15
 0050	     2402	JEQ $+6, goes to  0056
 0052	     83D2	SUB.B #1,&87
 0054	     0057
 0056	     3C12	JMP $+38, goes to  007C
 0058	     9191	CMP 6(SP),0(SP)
 005A	     0006
 005C	     0000
 005E	     340E	JGE $+30, goes to  007C
 0060	     53D2	ADD.B #1,&86
 0062	     0056
 0064	     93C2	CMP.B #0,&86
 0066	     0056
 0068	     2009	JNE $+20, goes to  007C
 006A	     425F	MOV.B &87,R15
 006C	     0057
 006E	     F07F	AND.B #15,R15
 0070	     000F
 0072	     907F	CMP.B #15,R15
 0074	     000F
 0076	     2402	JEQ $+6, goes to  007C
 0078	     53D2	ADD.B #1,&87
 007A	     0057
 007C	     91A1	CMP @SP,6(SP)
 007E	     0006
 0080	     23CB	JNE $-104, goes to  0018
 0082	     4382	MOV #0,&354
 0084	     0162
 0086	     4382	MOV #0,&352
 0088	     0160
 008A	     C0F2	BIC.B #48,&87
 008C	     0030
 008E	     0057
 0090	     5221	ADD #4,SP
 0092	     4130	RET
 0094	     40B2	MOV #23168,&288
 0096	     5A80
 0098	     0120
 009A	     40B2	MOV #-2,&0
 009C	     FFFE
 009E	     0000
 00A0	     8392	SUB #1,&158
 00A2	     009E
 00A4	     9382	CMP #0,&162
 00A6	     00A2
 00A8	     23FB	JNE $-8, goes to  00A0
 00AA	     43C2	MOV.B #0,&33
 00AC	     0021
 00AE	     40F2	MOV.B #16,&38
 00B0	     0010
 00B2	     0026
 00B4	     40F2	MOV.B #17,&34
 00B6	     0011
 00B8	     0022
 00BA	     4382	MOV #0,&0
 00BC	     0000
 00BE	     1230	PUSH #3906
 00C0	     0F42
 00C2	     12B0	CALL #0
 00C4	     0000
 00C6	     5321	ADD #2,SP
 00C8	     421F	MOV &188,R15
 00CA	     00BC
 00CC	     42DF	MOV.B &86,0(R15)
 00CE	     0056
 00D0	     0000
 00D2	     5392	ADD #1,&202
 00D4	     00CA
 00D6	     421F	MOV &212,R15
 00D8	     00D4
 00DA	     42DF	MOV.B &87,208(R15)
 00DC	     0057
 00DE	     00D0
 00E0	     5392	ADD #1,&216
 00E2	     00D8
 00E4	     1230	PUSH #2930
 00E6	     0B72
 00E8	     12B0	CALL #196
 00EA	     00C4
 00EC	     5321	ADD #2,SP
 00EE	     421F	MOV &226,R15
 00F0	     00E2
 00F2	     42DF	MOV.B &86,222(R15)
 00F4	     0056
 00F6	     00DE
 00F8	     5392	ADD #1,&240
 00FA	     00F0
 00FC	     421F	MOV &250,R15
 00FE	     00FA
 0100	     42DF	MOV.B &87,246(R15)
 0102	     0057
 0104	     00F6
 0106	     5392	ADD #1,&254
 0108	     00FE
 010A	     1230	PUSH #1953
 010C	     07A1
 010E	     12B0	CALL #234
 0110	     00EA
 0112	     5321	ADD #2,SP
 0114	     421F	MOV &264,R15
 0116	     0108
 0118	     42DF	MOV.B &86,260(R15)
 011A	     0056
 011C	     0104
 011E	     5392	ADD #1,&278
 0120	     0116
 0122	     421F	MOV &288,R15
 0124	     0120
 0126	     42DF	MOV.B &87,284(R15)
 0128	     0057
 012A	     011C
 012C	     5392	ADD #1,&292
 012E	     0124
 0130	     1230	PUSH #244
 0132	     00F4
 0134	     12B0	CALL #272
 0136	     0110
 0138	     5321	ADD #2,SP
 013A	     421F	MOV &302,R15
 013C	     012E
 013E	     42DF	MOV.B &86,298(R15)
 0140	     0056
 0142	     012A
 0144	     5392	ADD #1,&316
 0146	     013C
 0148	     421F	MOV &326,R15
 014A	     0146
 014C	     42DF	MOV.B &87,322(R15)
 014E	     0057
 0150	     0142
 0152	     5392	ADD #1,&330
 0154	     014A
 0156	     40B2	MOV #4288,&0
 0158	     10C0
 015A	     0000
 015C	     40B2	MOV #-23230,&298
 015E	     A542
 0160	     012A
 0162	     40B2	MOV #-23294,&296
 0164	     A502
 0166	     0128
 0168	     40B2	MOV #-23232,&300
 016A	     A540
 016C	     012C
 016E	     421F	MOV &346,R15
 0170	     015A
 0172	     43CF	MOV.B #0,0(R15)
 0174	     0000
 0176	     40B2	MOV #-23232,&296
 0178	     A540
 017A	     0128
 017C	     40B2	MOV #4344,&368
 017E	     10F8
 0180	     0170
 0182	     4382	MOV #0,&340
 0184	     0154
 0186	     403F	MOV #7,R15
 0188	     0007
 018A	     921F	CMP &388,R15
 018C	     0184
 018E	     380C	JL $+26, goes to  01A8
 0190	     421F	MOV &384,R15
 0192	     0180
 0194	     421E	MOV &396,R14
 0196	     018C
 0198	     4EDF	MOV.B 336(R14),0(R15)
 019A	     0150
 019C	     0000
 019E	     5392	ADD #1,&402
 01A0	     0192
 01A2	     5392	ADD #1,&406
 01A4	     0196
 01A6	     3FEF	JMP $-32, goes to  0186
 01A8	     40B2	MOV #-23296,&296
 01AA	     A500
 01AC	     0128
 01AE	     40B2	MOV #-23216,&300
 01B0	     A550
 01B2	     012C
 01B4	     E3D2	XOR.B #1,&33
 01B6	     0021
 01B8	     40B2	MOV #16384,&166
 01BA	     4000
 01BC	     00A6
 01BE	     8392	SUB #1,&444
 01C0	     01BC
 01C2	     9382	CMP #0,&448
 01C4	     01C0
 01C6	     23FB	JNE $-8, goes to  01BE
 01C8	     3FF5	JMP $-20, goes to  01B4
 01CA	     4130	RET
