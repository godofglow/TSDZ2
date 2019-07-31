;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module stm8s_uart2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _UART2_DeInit
	.globl _UART2_Init
	.globl _UART2_Cmd
	.globl _UART2_ITConfig
	.globl _UART2_IrDAConfig
	.globl _UART2_IrDACmd
	.globl _UART2_LINBreakDetectionConfig
	.globl _UART2_LINConfig
	.globl _UART2_LINCmd
	.globl _UART2_SmartCardCmd
	.globl _UART2_SmartCardNACKCmd
	.globl _UART2_WakeUpConfig
	.globl _UART2_ReceiverWakeUpCmd
	.globl _UART2_ReceiveData8
	.globl _UART2_ReceiveData9
	.globl _UART2_SendData8
	.globl _UART2_SendData9
	.globl _UART2_SendBreak
	.globl _UART2_SetAddress
	.globl _UART2_SetGuardTime
	.globl _UART2_SetPrescaler
	.globl _UART2_GetFlagStatus
	.globl _UART2_ClearFlag
	.globl _UART2_GetITStatus
	.globl _UART2_ClearITPendingBit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	G$UART2_DeInit$0$0 ==.
	C$stm8s_uart2.c$53$0_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 53: void UART2_DeInit(void)
;	-----------------------------------------
;	 function UART2_DeInit
;	-----------------------------------------
_UART2_DeInit:
	C$stm8s_uart2.c$57$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 57: (void) UART2->SR;
	ld	a, 0x5240
	C$stm8s_uart2.c$58$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 58: (void)UART2->DR;
	ld	a, 0x5241
	C$stm8s_uart2.c$60$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
	mov	0x5243+0, #0x00
	C$stm8s_uart2.c$61$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
	mov	0x5242+0, #0x00
	C$stm8s_uart2.c$63$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
	mov	0x5244+0, #0x00
	C$stm8s_uart2.c$64$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
	mov	0x5245+0, #0x00
	C$stm8s_uart2.c$65$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
	mov	0x5246+0, #0x00
	C$stm8s_uart2.c$66$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
	mov	0x5247+0, #0x00
	C$stm8s_uart2.c$67$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
	mov	0x5248+0, #0x00
	C$stm8s_uart2.c$68$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
	mov	0x5249+0, #0x00
	C$stm8s_uart2.c$69$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 69: }
	C$stm8s_uart2.c$69$1_0$346 ==.
	XG$UART2_DeInit$0$0 ==.
	ret
	G$UART2_Init$0$0 ==.
	C$stm8s_uart2.c$85$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
;	-----------------------------------------
;	 function UART2_Init
;	-----------------------------------------
_UART2_Init:
	sub	sp, #35
	C$stm8s_uart2.c$99$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
	bres	21060, #4
	C$stm8s_uart2.c$101$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
	ld	a, 0x5244
	or	a, (0x2a, sp)
	ld	0x5244, a
	C$stm8s_uart2.c$104$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
	ld	a, 0x5246
	and	a, #0xcf
	ld	0x5246, a
	C$stm8s_uart2.c$106$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
	ld	a, 0x5246
	or	a, (0x2b, sp)
	ld	0x5246, a
	C$stm8s_uart2.c$109$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
	ld	a, 0x5244
	and	a, #0xf9
	ld	0x5244, a
	C$stm8s_uart2.c$111$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
	ld	a, 0x5244
	or	a, (0x2c, sp)
	ld	0x5244, a
	C$stm8s_uart2.c$114$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
	ld	a, 0x5242
	mov	0x5242+0, #0x00
	C$stm8s_uart2.c$116$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
	ld	a, 0x5243
	and	a, #0x0f
	ld	0x5243, a
	C$stm8s_uart2.c$118$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
	ld	a, 0x5243
	and	a, #0xf0
	ld	0x5243, a
	C$stm8s_uart2.c$121$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ldw	(0x07, sp), x
	ldw	x, (0x26, sp)
	ldw	(0x01, sp), x
	ldw	x, (0x28, sp)
	ld	a, #0x04
00124$:
	sllw	x
	rlc	(0x02, sp)
	rlc	(0x01, sp)
	dec	a
	jrne	00124$
	ldw	(0x03, sp), x
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x1e, sp), x
	ldw	(0x1c, sp), y
	ldw	y, (0x1d, sp)
	ldw	(0x1d, sp), y
	C$stm8s_uart2.c$122$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ldw	(0x14, sp), x
	ldw	(0x12, sp), y
	ldw	x, (0x14, sp)
	pushw	x
	ldw	x, (0x14, sp)
	pushw	x
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x0c, sp), x
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x22, sp), x
	ldw	(0x20, sp), y
	C$stm8s_uart2.c$126$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
	ldw	x, (0x1e, sp)
	pushw	x
	ldw	x, (0x1e, sp)
	pushw	x
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x18, sp), x
	ldw	(0x16, sp), y
	ldw	x, (0x22, sp)
	subw	x, (0x18, sp)
	ldw	(0x10, sp), x
	ld	a, (0x21, sp)
	sbc	a, (0x17, sp)
	ld	(0x0f, sp), a
	ld	a, (0x20, sp)
	sbc	a, (0x16, sp)
	ld	(0x0e, sp), a
	ldw	x, (0x10, sp)
	ldw	y, (0x0e, sp)
	ld	a, #0x04
00126$:
	sllw	x
	rlcw	y
	dec	a
	jrne	00126$
	push	#0x64
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ld	a, xl
	and	a, #0x0f
	ld	(0x1b, sp), a
	C$stm8s_uart2.c$128$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
	ldw	x, (0x1e, sp)
	ld	a, #0x10
	div	x, a
	ld	a, xl
	and	a, #0xf0
	C$stm8s_uart2.c$130$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
	or	a, (0x1b, sp)
	ld	0x5243, a
	C$stm8s_uart2.c$132$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
	ld	a, (0x1f, sp)
	ld	0x5242, a
	C$stm8s_uart2.c$135$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
	ld	a, 0x5245
	and	a, #0xf3
	ld	0x5245, a
	C$stm8s_uart2.c$137$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
	ld	a, 0x5246
	and	a, #0xf8
	ld	0x5246, a
	C$stm8s_uart2.c$139$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
	ld	a, 0x5246
	ld	(0x1a, sp), a
	ld	a, (0x2d, sp)
	and	a, #0x07
	or	a, (0x1a, sp)
	ld	0x5246, a
	C$stm8s_uart2.c$142$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
	ld	a, (0x2e, sp)
	bcp	a, #0x04
	jreq	00102$
	C$stm8s_uart2.c$145$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
	bset	21061, #3
	jra	00103$
00102$:
	C$stm8s_uart2.c$150$2_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
	bres	21061, #3
00103$:
	C$stm8s_uart2.c$152$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
	ld	a, (0x2e, sp)
	bcp	a, #0x08
	jreq	00105$
	C$stm8s_uart2.c$155$2_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
	bset	21061, #2
	jra	00106$
00105$:
	C$stm8s_uart2.c$160$2_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
	bres	21061, #2
00106$:
	C$stm8s_uart2.c$164$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
	tnz	(0x2d, sp)
	jrpl	00108$
	C$stm8s_uart2.c$167$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
	bres	21062, #3
	jra	00110$
00108$:
	C$stm8s_uart2.c$171$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
	ld	a, 0x5246
	ld	(0x09, sp), a
	ld	a, (0x2d, sp)
	and	a, #0x08
	or	a, (0x09, sp)
	ld	0x5246, a
00110$:
	C$stm8s_uart2.c$173$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 173: }
	addw	sp, #35
	C$stm8s_uart2.c$173$1_0$348 ==.
	XG$UART2_Init$0$0 ==.
	ret
	G$UART2_Cmd$0$0 ==.
	C$stm8s_uart2.c$181$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_Cmd
;	-----------------------------------------
_UART2_Cmd:
	C$stm8s_uart2.c$183$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_uart2.c$186$2_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
	bres	21060, #5
	jra	00104$
00102$:
	C$stm8s_uart2.c$191$2_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
	bset	21060, #5
00104$:
	C$stm8s_uart2.c$193$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 193: }
	C$stm8s_uart2.c$193$1_0$356 ==.
	XG$UART2_Cmd$0$0 ==.
	ret
	G$UART2_ITConfig$0$0 ==.
	C$stm8s_uart2.c$210$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_ITConfig
;	-----------------------------------------
_UART2_ITConfig:
	sub	sp, #5
	C$stm8s_uart2.c$219$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
	ld	a, (0x08, sp)
	ld	xl, a
	C$stm8s_uart2.c$222$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
	ld	a, (0x09, sp)
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x06, sp), a
	pop	a
	tnz	a
	jreq	00153$
00152$:
	sll	(0x05, sp)
	dec	a
	jrne	00152$
00153$:
	C$stm8s_uart2.c$224$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
	tnz	(0x0a, sp)
	jreq	00120$
	C$stm8s_uart2.c$227$2_0$361 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
	ld	a, xl
	dec	a
	jrne	00108$
	C$stm8s_uart2.c$229$3_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
	ld	a, 0x5244
	or	a, (0x05, sp)
	ld	0x5244, a
	jp	00122$
00108$:
	C$stm8s_uart2.c$231$2_0$361 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
	ld	a, xl
	cp	a, #0x02
	jrne	00105$
	C$stm8s_uart2.c$233$3_0$363 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
	ld	a, 0x5245
	or	a, (0x05, sp)
	ld	0x5245, a
	jp	00122$
00105$:
	C$stm8s_uart2.c$235$2_0$361 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
	ld	a, xl
	cp	a, #0x03
	jrne	00102$
	C$stm8s_uart2.c$237$3_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
	ld	a, 0x5247
	or	a, (0x05, sp)
	ld	0x5247, a
	jra	00122$
00102$:
	C$stm8s_uart2.c$241$3_0$365 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
	ld	a, 0x5249
	or	a, (0x05, sp)
	ld	0x5249, a
	jra	00122$
00120$:
	C$stm8s_uart2.c$247$2_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
	ld	a, xl
	dec	a
	jrne	00117$
	C$stm8s_uart2.c$249$3_0$367 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
	ld	a, 0x5244
	ld	(0x04, sp), a
	ld	a, (0x05, sp)
	cpl	a
	and	a, (0x04, sp)
	ld	0x5244, a
	jra	00122$
00117$:
	C$stm8s_uart2.c$251$2_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
	ld	a, xl
	cp	a, #0x02
	jrne	00114$
	C$stm8s_uart2.c$253$3_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
	ld	a, 0x5245
	ld	(0x03, sp), a
	ld	a, (0x05, sp)
	cpl	a
	and	a, (0x03, sp)
	ld	0x5245, a
	jra	00122$
00114$:
	C$stm8s_uart2.c$255$2_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
	ld	a, xl
	cp	a, #0x03
	jrne	00111$
	C$stm8s_uart2.c$257$3_0$369 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
	ld	a, 0x5247
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	0x5247, a
	jra	00122$
00111$:
	C$stm8s_uart2.c$261$3_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
	ld	a, 0x5249
	ld	(0x02, sp), a
	ld	a, (0x05, sp)
	cpl	a
	and	a, (0x02, sp)
	ld	0x5249, a
00122$:
	C$stm8s_uart2.c$264$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 264: }
	addw	sp, #5
	C$stm8s_uart2.c$264$1_0$360 ==.
	XG$UART2_ITConfig$0$0 ==.
	ret
	G$UART2_IrDAConfig$0$0 ==.
	C$stm8s_uart2.c$272$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
;	-----------------------------------------
;	 function UART2_IrDAConfig
;	-----------------------------------------
_UART2_IrDAConfig:
	C$stm8s_uart2.c$276$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_uart2.c$278$2_0$373 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
	bset	21064, #2
	jra	00104$
00102$:
	C$stm8s_uart2.c$282$2_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
	bres	21064, #2
00104$:
	C$stm8s_uart2.c$284$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 284: }
	C$stm8s_uart2.c$284$1_0$372 ==.
	XG$UART2_IrDAConfig$0$0 ==.
	ret
	G$UART2_IrDACmd$0$0 ==.
	C$stm8s_uart2.c$292$1_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_IrDACmd
;	-----------------------------------------
_UART2_IrDACmd:
	C$stm8s_uart2.c$297$1_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_uart2.c$300$2_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
	bset	21064, #1
	jra	00104$
00102$:
	C$stm8s_uart2.c$305$2_0$378 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
	bres	21064, #1
00104$:
	C$stm8s_uart2.c$307$1_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 307: }
	C$stm8s_uart2.c$307$1_0$376 ==.
	XG$UART2_IrDACmd$0$0 ==.
	ret
	G$UART2_LINBreakDetectionConfig$0$0 ==.
	C$stm8s_uart2.c$316$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
;	-----------------------------------------
;	 function UART2_LINBreakDetectionConfig
;	-----------------------------------------
_UART2_LINBreakDetectionConfig:
	C$stm8s_uart2.c$321$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_uart2.c$323$2_0$381 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
	bset	21063, #5
	jra	00104$
00102$:
	C$stm8s_uart2.c$327$2_0$382 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
	bres	21063, #5
00104$:
	C$stm8s_uart2.c$329$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 329: }
	C$stm8s_uart2.c$329$1_0$380 ==.
	XG$UART2_LINBreakDetectionConfig$0$0 ==.
	ret
	G$UART2_LINConfig$0$0 ==.
	C$stm8s_uart2.c$341$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
;	-----------------------------------------
;	 function UART2_LINConfig
;	-----------------------------------------
_UART2_LINConfig:
	C$stm8s_uart2.c$350$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_uart2.c$352$2_0$385 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
	bset	21065, #5
	jra	00103$
00102$:
	C$stm8s_uart2.c$356$2_0$386 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
	bres	21065, #5
00103$:
	C$stm8s_uart2.c$359$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
	C$stm8s_uart2.c$361$2_0$387 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
	bset	21065, #4
	jra	00106$
00105$:
	C$stm8s_uart2.c$365$2_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
	bres	21065, #4
00106$:
	C$stm8s_uart2.c$368$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
	tnz	(0x05, sp)
	jreq	00108$
	C$stm8s_uart2.c$370$2_0$389 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
	bset	21065, #7
	jra	00110$
00108$:
	C$stm8s_uart2.c$374$2_0$390 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
	bres	21065, #7
00110$:
	C$stm8s_uart2.c$376$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 376: }
	C$stm8s_uart2.c$376$1_0$384 ==.
	XG$UART2_LINConfig$0$0 ==.
	ret
	G$UART2_LINCmd$0$0 ==.
	C$stm8s_uart2.c$384$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_LINCmd
;	-----------------------------------------
_UART2_LINCmd:
	C$stm8s_uart2.c$388$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_uart2.c$391$2_0$393 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
	bset	21062, #6
	jra	00104$
00102$:
	C$stm8s_uart2.c$396$2_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
	bres	21062, #6
00104$:
	C$stm8s_uart2.c$398$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 398: }
	C$stm8s_uart2.c$398$1_0$392 ==.
	XG$UART2_LINCmd$0$0 ==.
	ret
	G$UART2_SmartCardCmd$0$0 ==.
	C$stm8s_uart2.c$406$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_SmartCardCmd
;	-----------------------------------------
_UART2_SmartCardCmd:
	C$stm8s_uart2.c$411$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_uart2.c$414$2_0$397 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
	bset	21064, #5
	jra	00104$
00102$:
	C$stm8s_uart2.c$419$2_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
	bres	21064, #5
00104$:
	C$stm8s_uart2.c$421$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 421: }
	C$stm8s_uart2.c$421$1_0$396 ==.
	XG$UART2_SmartCardCmd$0$0 ==.
	ret
	G$UART2_SmartCardNACKCmd$0$0 ==.
	C$stm8s_uart2.c$429$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_SmartCardNACKCmd
;	-----------------------------------------
_UART2_SmartCardNACKCmd:
	C$stm8s_uart2.c$434$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_uart2.c$437$2_0$401 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
	bset	21064, #4
	jra	00104$
00102$:
	C$stm8s_uart2.c$442$2_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
	bres	21064, #4
00104$:
	C$stm8s_uart2.c$444$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 444: }
	C$stm8s_uart2.c$444$1_0$400 ==.
	XG$UART2_SmartCardNACKCmd$0$0 ==.
	ret
	G$UART2_WakeUpConfig$0$0 ==.
	C$stm8s_uart2.c$452$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
;	-----------------------------------------
;	 function UART2_WakeUpConfig
;	-----------------------------------------
_UART2_WakeUpConfig:
	C$stm8s_uart2.c$456$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
	bres	21060, #3
	C$stm8s_uart2.c$457$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
	ld	a, 0x5244
	or	a, (0x03, sp)
	ld	0x5244, a
	C$stm8s_uart2.c$458$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 458: }
	C$stm8s_uart2.c$458$1_0$404 ==.
	XG$UART2_WakeUpConfig$0$0 ==.
	ret
	G$UART2_ReceiverWakeUpCmd$0$0 ==.
	C$stm8s_uart2.c$466$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_ReceiverWakeUpCmd
;	-----------------------------------------
_UART2_ReceiverWakeUpCmd:
	C$stm8s_uart2.c$470$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_uart2.c$473$2_0$407 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
	bset	21061, #1
	jra	00104$
00102$:
	C$stm8s_uart2.c$478$2_0$408 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
	bres	21061, #1
00104$:
	C$stm8s_uart2.c$480$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 480: }
	C$stm8s_uart2.c$480$1_0$406 ==.
	XG$UART2_ReceiverWakeUpCmd$0$0 ==.
	ret
	G$UART2_ReceiveData8$0$0 ==.
	C$stm8s_uart2.c$487$1_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
;	-----------------------------------------
;	 function UART2_ReceiveData8
;	-----------------------------------------
_UART2_ReceiveData8:
	C$stm8s_uart2.c$489$1_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
	ld	a, 0x5241
	C$stm8s_uart2.c$490$1_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 490: }
	C$stm8s_uart2.c$490$1_0$410 ==.
	XG$UART2_ReceiveData8$0$0 ==.
	ret
	G$UART2_ReceiveData9$0$0 ==.
	C$stm8s_uart2.c$497$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
;	-----------------------------------------
;	 function UART2_ReceiveData9
;	-----------------------------------------
_UART2_ReceiveData9:
	sub	sp, #2
	C$stm8s_uart2.c$501$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
	ld	a, 0x5244
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
	sllw	x
	C$stm8s_uart2.c$503$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
	ld	a, 0x5241
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, xl
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	and	a, #0x01
	ld	xh, a
	C$stm8s_uart2.c$504$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 504: }
	addw	sp, #2
	C$stm8s_uart2.c$504$1_0$412 ==.
	XG$UART2_ReceiveData9$0$0 ==.
	ret
	G$UART2_SendData8$0$0 ==.
	C$stm8s_uart2.c$511$1_0$414 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
;	-----------------------------------------
;	 function UART2_SendData8
;	-----------------------------------------
_UART2_SendData8:
	C$stm8s_uart2.c$514$1_0$414 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 514: UART2->DR = Data;
	ldw	x, #0x5241
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_uart2.c$515$1_0$414 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 515: }
	C$stm8s_uart2.c$515$1_0$414 ==.
	XG$UART2_SendData8$0$0 ==.
	ret
	G$UART2_SendData9$0$0 ==.
	C$stm8s_uart2.c$522$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
;	-----------------------------------------
;	 function UART2_SendData9
;	-----------------------------------------
_UART2_SendData9:
	push	a
	C$stm8s_uart2.c$525$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
	bres	21060, #6
	C$stm8s_uart2.c$528$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
	ld	a, 0x5244
	ld	(0x01, sp), a
	ldw	x, (0x04, sp)
	srlw	x
	srlw	x
	ld	a, xl
	and	a, #0x40
	or	a, (0x01, sp)
	ld	0x5244, a
	C$stm8s_uart2.c$531$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
	ld	a, (0x05, sp)
	ld	0x5241, a
	C$stm8s_uart2.c$532$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 532: }
	pop	a
	C$stm8s_uart2.c$532$1_0$416 ==.
	XG$UART2_SendData9$0$0 ==.
	ret
	G$UART2_SendBreak$0$0 ==.
	C$stm8s_uart2.c$539$1_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
;	-----------------------------------------
;	 function UART2_SendBreak
;	-----------------------------------------
_UART2_SendBreak:
	C$stm8s_uart2.c$541$1_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
	bset	21061, #0
	C$stm8s_uart2.c$542$1_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 542: }
	C$stm8s_uart2.c$542$1_0$418 ==.
	XG$UART2_SendBreak$0$0 ==.
	ret
	G$UART2_SetAddress$0$0 ==.
	C$stm8s_uart2.c$549$1_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
;	-----------------------------------------
;	 function UART2_SetAddress
;	-----------------------------------------
_UART2_SetAddress:
	C$stm8s_uart2.c$555$1_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
	ld	a, 0x5247
	and	a, #0xf0
	ld	0x5247, a
	C$stm8s_uart2.c$557$1_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
	ld	a, 0x5247
	or	a, (0x03, sp)
	ld	0x5247, a
	C$stm8s_uart2.c$558$1_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 558: }
	C$stm8s_uart2.c$558$1_0$420 ==.
	XG$UART2_SetAddress$0$0 ==.
	ret
	G$UART2_SetGuardTime$0$0 ==.
	C$stm8s_uart2.c$566$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
;	-----------------------------------------
;	 function UART2_SetGuardTime
;	-----------------------------------------
_UART2_SetGuardTime:
	C$stm8s_uart2.c$569$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
	ldw	x, #0x524a
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_uart2.c$570$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 570: }
	C$stm8s_uart2.c$570$1_0$422 ==.
	XG$UART2_SetGuardTime$0$0 ==.
	ret
	G$UART2_SetPrescaler$0$0 ==.
	C$stm8s_uart2.c$594$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
;	-----------------------------------------
;	 function UART2_SetPrescaler
;	-----------------------------------------
_UART2_SetPrescaler:
	C$stm8s_uart2.c$597$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
	ldw	x, #0x524b
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_uart2.c$598$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 598: }
	C$stm8s_uart2.c$598$1_0$424 ==.
	XG$UART2_SetPrescaler$0$0 ==.
	ret
	G$UART2_GetFlagStatus$0$0 ==.
	C$stm8s_uart2.c$606$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
;	-----------------------------------------
;	 function UART2_GetFlagStatus
;	-----------------------------------------
_UART2_GetFlagStatus:
	sub	sp, #4
	C$stm8s_uart2.c$614$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
	ldw	x, (0x07, sp)
	cpw	x, #0x0210
	jrne	00121$
	C$stm8s_uart2.c$616$2_0$427 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ld	a, 0x5247
	ld	(0x01, sp), a
	ld	a, (0x08, sp)
	and	a, (0x01, sp)
	jreq	00102$
	C$stm8s_uart2.c$619$3_0$428 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 619: status = SET;
	ld	a, #0x01
	jp	00122$
00102$:
	C$stm8s_uart2.c$624$3_0$429 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 624: status = RESET;
	clr	a
	jp	00122$
00121$:
	C$stm8s_uart2.c$627$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
	ldw	x, (0x07, sp)
	cpw	x, #0x0101
	jrne	00118$
	C$stm8s_uart2.c$629$2_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ld	a, 0x5245
	ld	(0x02, sp), a
	ld	a, (0x08, sp)
	and	a, (0x02, sp)
	jreq	00105$
	C$stm8s_uart2.c$632$3_0$431 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 632: status = SET;
	ld	a, #0x01
	jra	00122$
00105$:
	C$stm8s_uart2.c$637$3_0$432 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 637: status = RESET;
	clr	a
	jra	00122$
00118$:
	C$stm8s_uart2.c$640$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
	ldw	x, (0x07, sp)
	cpw	x, #0x0302
	jreq	00113$
	ldw	x, (0x07, sp)
	cpw	x, #0x0301
	jrne	00114$
00113$:
	C$stm8s_uart2.c$642$2_0$433 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ld	a, 0x5249
	ld	(0x04, sp), a
	ld	a, (0x08, sp)
	and	a, (0x04, sp)
	jreq	00108$
	C$stm8s_uart2.c$645$3_0$434 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 645: status = SET;
	ld	a, #0x01
	jra	00122$
00108$:
	C$stm8s_uart2.c$650$3_0$435 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 650: status = RESET;
	clr	a
	jra	00122$
00114$:
	C$stm8s_uart2.c$655$2_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ld	a, 0x5240
	ld	(0x03, sp), a
	ld	a, (0x08, sp)
	and	a, (0x03, sp)
	jreq	00111$
	C$stm8s_uart2.c$658$3_0$437 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 658: status = SET;
	ld	a, #0x01
	jra	00122$
00111$:
	C$stm8s_uart2.c$663$3_0$438 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 663: status = RESET;
	clr	a
00122$:
	C$stm8s_uart2.c$668$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 668: return  status;
	C$stm8s_uart2.c$669$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 669: }
	addw	sp, #4
	C$stm8s_uart2.c$669$1_0$426 ==.
	XG$UART2_GetFlagStatus$0$0 ==.
	ret
	G$UART2_ClearFlag$0$0 ==.
	C$stm8s_uart2.c$699$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
;	-----------------------------------------
;	 function UART2_ClearFlag
;	-----------------------------------------
_UART2_ClearFlag:
	C$stm8s_uart2.c$704$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
	ldw	x, (0x03, sp)
	cpw	x, #0x0020
	jrne	00108$
	C$stm8s_uart2.c$706$2_0$441 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
	mov	0x5240+0, #0xdf
	jra	00110$
00108$:
	C$stm8s_uart2.c$709$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
	ldw	x, (0x03, sp)
	cpw	x, #0x0210
	jrne	00105$
	C$stm8s_uart2.c$711$2_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
	bres	21063, #4
	jra	00110$
00105$:
	C$stm8s_uart2.c$714$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
	ldw	x, (0x03, sp)
	cpw	x, #0x0302
	jrne	00102$
	C$stm8s_uart2.c$716$2_0$443 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
	bres	21065, #1
	jra	00110$
00102$:
	C$stm8s_uart2.c$721$2_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
	bres	21065, #0
00110$:
	C$stm8s_uart2.c$723$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 723: }
	C$stm8s_uart2.c$723$1_0$440 ==.
	XG$UART2_ClearFlag$0$0 ==.
	ret
	G$UART2_GetITStatus$0$0 ==.
	C$stm8s_uart2.c$738$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
;	-----------------------------------------
;	 function UART2_GetITStatus
;	-----------------------------------------
_UART2_GetITStatus:
	sub	sp, #2
	C$stm8s_uart2.c$750$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
	ld	a, (0x06, sp)
	ld	xl, a
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00184$
00183$:
	sll	(0x01, sp)
	dec	a
	jrne	00183$
00184$:
	C$stm8s_uart2.c$752$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
	ld	a, xl
	swap	a
	and	a, #0x0f
	C$stm8s_uart2.c$754$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00186$
00185$:
	sll	(0x02, sp)
	dec	a
	jrne	00185$
00186$:
	C$stm8s_uart2.c$757$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
	ldw	x, (0x05, sp)
	cpw	x, #0x0100
	jrne	00124$
	C$stm8s_uart2.c$760$2_0$447 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
	ld	a, 0x5244
	and	a, (0x02, sp)
	ld	xl, a
	C$stm8s_uart2.c$763$2_0$447 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5240
	and	a, (0x01, sp)
	jreq	00102$
	ld	a, xl
	tnz	a
	jreq	00102$
	C$stm8s_uart2.c$766$3_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
	ld	a, #0x01
	jp	00125$
00102$:
	C$stm8s_uart2.c$771$3_0$449 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
	clr	a
	jp	00125$
00124$:
	C$stm8s_uart2.c$774$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
	ldw	x, (0x05, sp)
	cpw	x, #0x0346
	jrne	00121$
	C$stm8s_uart2.c$777$2_0$450 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
	ld	a, 0x5247
	and	a, (0x02, sp)
	ld	xl, a
	C$stm8s_uart2.c$779$2_0$450 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5247
	and	a, (0x01, sp)
	jreq	00106$
	ld	a, xl
	tnz	a
	jreq	00106$
	C$stm8s_uart2.c$782$3_0$451 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00106$:
	C$stm8s_uart2.c$787$3_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00121$:
	C$stm8s_uart2.c$790$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
	ldw	x, (0x05, sp)
	cpw	x, #0x0412
	jrne	00118$
	C$stm8s_uart2.c$793$2_0$453 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
	ld	a, 0x5249
	and	a, (0x02, sp)
	ld	xl, a
	C$stm8s_uart2.c$795$2_0$453 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5249
	and	a, (0x01, sp)
	jreq	00110$
	ld	a, xl
	tnz	a
	jreq	00110$
	C$stm8s_uart2.c$798$3_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00110$:
	C$stm8s_uart2.c$803$3_0$455 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00118$:
	C$stm8s_uart2.c$809$2_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
	ld	a, 0x5245
	and	a, (0x02, sp)
	ld	xl, a
	C$stm8s_uart2.c$811$2_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5240
	and	a, (0x01, sp)
	jreq	00114$
	ld	a, xl
	tnz	a
	jreq	00114$
	C$stm8s_uart2.c$814$3_0$457 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00114$:
	C$stm8s_uart2.c$819$3_0$458 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
	clr	a
00125$:
	C$stm8s_uart2.c$823$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 823: return  pendingbitstatus;
	C$stm8s_uart2.c$824$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 824: }
	addw	sp, #2
	C$stm8s_uart2.c$824$1_0$446 ==.
	XG$UART2_GetITStatus$0$0 ==.
	ret
	G$UART2_ClearITPendingBit$0$0 ==.
	C$stm8s_uart2.c$852$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
;	-----------------------------------------
;	 function UART2_ClearITPendingBit
;	-----------------------------------------
_UART2_ClearITPendingBit:
	C$stm8s_uart2.c$857$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
	ldw	x, (0x03, sp)
	cpw	x, #0x0255
	jrne	00105$
	C$stm8s_uart2.c$859$2_0$461 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
	mov	0x5240+0, #0xdf
	jra	00107$
00105$:
	C$stm8s_uart2.c$862$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
	ldw	x, (0x03, sp)
	cpw	x, #0x0346
	jrne	00102$
	C$stm8s_uart2.c$864$2_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
	bres	21063, #4
	jra	00107$
00102$:
	C$stm8s_uart2.c$869$2_0$463 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
	bres	21065, #1
00107$:
	C$stm8s_uart2.c$871$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 871: }
	C$stm8s_uart2.c$871$1_0$460 ==.
	XG$UART2_ClearITPendingBit$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
