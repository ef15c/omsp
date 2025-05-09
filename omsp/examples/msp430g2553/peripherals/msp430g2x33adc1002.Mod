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
//  MSP430G2x33/G2x53 Demo - ADC10, Sample A1, 1.5V Ref, Set P1.0 if > 0.2V
//
//  Description: A single sample is made on A1 with reference to internal
//  1.5V Vref. Software sets ADC10SC to start sample and conversion - ADC10SC
//  automatically cleared at EOC. ADC10 internal oscillator times sample (16x)
//  and conversion. In Mainloop MSP430 waits in LPM0 to save power until ADC10
//  conversion complete, ADC10_ISR will force exit from any LPMx in Mainloop on
//  reti. If A1 > 0.2V, P1.0 set, else reset.
//
//                MSP430G2x33/G2x53
//             -----------------
//         /|\|              XIN|-
//          | |                 |
//          --|RST          XOUT|-
//            |                 |
//        >---|P1.1/A1      P1.0|-->LED
//
//  D. Dang
//  Texas Instruments Inc.
//  December 2010
//  C. Schoffit, built with Oberon MSP430 compiler
//******************************************************************************)

MODULE msp430g2x33adc1002;
  IMPORT SYSTEM, M := msp430g2553;

  (* ADC10 interrupt service routine *)
  PROCEDURE* (M.ADC10_VECTOR) {} ADC10_ISR;
  BEGIN SYSTEM.BIC_SR_ON_EXIT(M.CPUOFF);(* Clear CPUOFF bit from 0(SP) *)
  END ADC10_ISR;

  PROCEDURE* (M.TIMER0_A0_VECTOR) {} ta0_isr;
  BEGIN M.TA0CTL^ := {};
    SYSTEM.BIC_SR_ON_EXIT(M.LPM0_bits) (* Exit LPM0 on return *)
  END ta0_isr;

BEGIN
  M.WDTCTL^ := M.WDTPW + M.WDTHOLD; (* Stop WDT *)
  M.ADC10CTL0^ := M.SREF_1 + M.ADC10SHT_2 + M.REFON + M.ADC10ON + M.ADC10IE;
  SYSTEM.BIS_SR(M.GIE); (* Enable interrupts. *)
  M.TA0CCR0^ := 30; (* Delay to allow Ref to settle*)
  M.TA0CCTL0^ := M.CCIE; (* Compare-mode interrupt. *)
  M.TA0CTL^ := M.TASSEL_2 + M.MC_1; (* TACLK = SMCLK, Up mode. *)
  SYSTEM.BIS_SR(M.LPM0_bits); (* Wait for delay. *)
  BIC(M.TA0CCTL0^, M.CCIE); (* Disable timer Interrupt *)
  SYSTEM.BIC_SR(M.GIE);
  M.ADC10CTL1^ := M.INCH_1; (* input A1 *)
  BIS(M.ADC10AE0^, {1}); (* PA.1 ADC option select *)
  BIS(M.P1DIR^, {0}); (* Set P1.0 to output direction *)

  REPEAT
    BIS(M.ADC10CTL0^, M.ENC + M.ADC10SC); (* Sampling and conversion start *)
    SYSTEM.BIS_SR(M.CPUOFF + M. GIE); (* LPM0, ADC10_ISR will force exit *)
    IF M.ADC10MEM^ < 88H THEN (* ADC10MEM = A1 > 0.2V?*)
      BIC(M.P1OUT^, {0}); (* Clear P1.0 LED off *)
    ELSE
      BIS(M.P1OUT^, {0}); (* Set P1.0 LED on *)
    END
  UNTIL FALSE
END msp430g2x33adc1002.
