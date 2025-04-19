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
//   MSP430G2xx3 Demo - USCI_A0, Ultra-Low Pwr UART 9600 String, 32kHz ACLK
//
//   Description: This program demonstrates a full-duplex 9600-baud UART using
//   USCI_A0 and a 32kHz crystal.  The program will wait in LPM3, and will
//   respond to a received 'u' character using 8N1 protocol. The response will
//   be the string 'Hello World'.
//   ACLK = BRCLK = LFXT1 = 32768Hz, MCLK = SMCLK = DCO ~1.2MHz
//   Baud rate divider with 32768Hz XTAL @9600 = 32768Hz/9600 = 3.41
//* An external watch crystal is required on XIN XOUT for ACLK *//
//
//                MSP430G2xx3
//             -----------------
//         /|\|              XIN|-
//          | |                 | 32kHz
//          --|RST          XOUT|-
//            |                 |
//            |     P1.2/UCA0TXD|------------>
//            |                 | 9600 - 8N1
//            |     P1.1/UCA0RXD|<------------
//
//   D. Dang
//   Texas Instruments Inc.
//   February 2011
//   C. Schoffit 08.10.24, built with Oberon MSP430 compiler
//******************************************************************************)

MODULE msp430g2xx3uscia0u69600;
  IMPORT SYSTEM, M := msp430g2553;

  CONST string1 = "Hello World" + 0DX + 0AX;

  VAR i: INTEGER;

  PROCEDURE* (M.USCIAB0TX_VECTOR) {15} USCI0TX_ISR;
  BEGIN  M.UCA0TXBUF^ := ORD(string1[i]); INC(i); (* TX next character *)
    IF i = LEN(string1) - 1 THEN (* TX over ? *) BIC(M.IE2^, M.UCA0TXIE) END (* Disable USCI_A0 TX interrupt *)
  END USCI0TX_ISR;

  PROCEDURE* (M.USCIAB0RX_VECTOR) {15} USCI0RX_ISR;
  BEGIN
    IF M.UCA0RXBUF^ = ORD("u") THEN (* 'u' received? *)
      i := 0;
      BIS(M.IE2^, M.UCA0TXIE); (* Enable USCI_A0 TX interrupt *)
      M.UCA0TXBUF^ := ORD(string1[i]); INC(i)
    END
  END USCI0RX_ISR;

BEGIN
  M.WDTCTL^ := M.WDTPW + M.WDTHOLD; (* Stop WDT *)
  M.P1DIR^ := {0..7}; (* All P1.x outputs *)
  M.P1OUT^ := {}; (* All P1.x reset *)
  M.P1SEL^ := {1, 2}; (* P1.1 = RXD, P1.2=TXD *)
  M.P1SEL2^ := {1, 2}; (* P1.1 = RXD, P1.2=TXD *)
  M.P2DIR^ := {0..7}; (* All P2.x outputs *)
  M.P2OUT^ := {}; (* All P2.x reset *)
  M.P3DIR^ := {0..7}; (* All P3.x outputs *)
  M.P3OUT^ := {}; (* All P3.x reset *)
  BIS(M.UCA0CTL1^, M.UCSSEL_1); (* CLK = ACLK *)
  M.UCA0BR0^ := 3; (* 32kHz/9600 = 3.41 *)
  M.UCA0BR1^ := 0;
  M.UCA0MCTL^ := M.UCBRS1 + M.UCBRS0; (* Modulation UCBRSx = 3 *)
  BIC(M.UCA0CTL1^, M.UCSWRST); (* **Initialize USCI state machine** *)
  BIS(M.IE2^, M.UCA0RXIE); (* Enable USCI_A0 RX interrupt *)

  SYSTEM.BIS_SR(M.LPM3_bits + M.GIE) (* Enter LPM3 w/ int until Byte RXed *)
END msp430g2xx3uscia0u69600.

OMSPTool.DecObj msp430g2xx3uscia0u69600.mpc
decode msp430g2xx3uscia0u69600.mpc
msp430g2xx3uscia0u69600 824256D3 Flash   160
imports:
	msp430g2553 F10488DC
type descriptors

data     2
strings
Hello World
|
vector table
 FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF
 FFFF FFFF FFFF FFFF FFFF FFFF 0000 0000 FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF

entries
 c 0044
fixup procedures in code space chains
fixup handlers in vector space chains
 0116     0	 0000
 0117     0	 0020
fixup data in code space chains
 003E     0	 0000
fixup constants in code space chains
 0038     0	 0000
fixup variables in constant space chains
fixup constants in constant space chains
entry =  0044
code   146
 0000	     120F	PUSH R15
 0002	     421F	MOV &0,R15
 0004	     0000
 0006	     4FD2	MOV.B 0(R15),&103
 0008	     0000
 000A	     0067
 000C	     5392	ADD #1,&4
 000E	     0004
 0010	     90B2	CMP #13,&14
 0012	     000D
 0014	     000E
 0016	     2002	JNE $+6, goes to  001C
 0018	     C3E2	BIC.B #2,&1
 001A	     0001
 001C	     413F	POP R15
 001E	     1300	RETI
 0020	     120F	PUSH R15
 0022	     90F2	CMP.B #117,&102
 0024	     0075
 0026	     0066
 0028	     200B	JNE $+24, goes to  0040
 002A	     4382	MOV #0,&20
 002C	     0014
 002E	     D3E2	BIS.B #2,&1
 0030	     0001
 0032	     421F	MOV &44,R15
 0034	     002C
 0036	     4FD2	MOV.B 8(R15),&103
 0038	     0008
 003A	     0067
 003C	     5392	ADD #1,&52
 003E	     0034
 0040	     413F	POP R15
 0042	     1300	RETI
 0044	     40B2	MOV #23168,&288
 0046	     5A80
 0048	     0120
 004A	     43F2	MOV.B #-1,&34
 004C	     0022
 004E	     43C2	MOV.B #0,&33
 0050	     0021
 0052	     40F2	MOV.B #6,&38
 0054	     0006
 0056	     0026
 0058	     40F2	MOV.B #6,&65
 005A	     0006
 005C	     0041
 005E	     43F2	MOV.B #-1,&42
 0060	     002A
 0062	     43C2	MOV.B #0,&41
 0064	     0029
 0066	     43F2	MOV.B #-1,&26
 0068	     001A
 006A	     43C2	MOV.B #0,&25
 006C	     0019
 006E	     D0F2	BIS.B #64,&97
 0070	     0040
 0072	     0061
 0074	     40F2	MOV.B #3,&98
 0076	     0003
 0078	     0062
 007A	     43C2	MOV.B #0,&99
 007C	     0063
 007E	     40F2	MOV.B #6,&100
 0080	     0006
 0082	     0064
 0084	     C3D2	BIC.B #1,&97
 0086	     0061
 0088	     D3D2	BIS.B #1,&1
 008A	     0001
 008C	     D032	BIS #216,SR
 008E	     00D8
 0090	     4130	RET
