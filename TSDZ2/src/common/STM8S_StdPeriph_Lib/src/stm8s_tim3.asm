;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module stm8s_tim3
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_DeInit
	.globl _TIM3_TimeBaseInit
	.globl _TIM3_OC1Init
	.globl _TIM3_OC2Init
	.globl _TIM3_ICInit
	.globl _TIM3_PWMIConfig
	.globl _TIM3_Cmd
	.globl _TIM3_ITConfig
	.globl _TIM3_UpdateDisableConfig
	.globl _TIM3_UpdateRequestConfig
	.globl _TIM3_SelectOnePulseMode
	.globl _TIM3_PrescalerConfig
	.globl _TIM3_ForcedOC1Config
	.globl _TIM3_ForcedOC2Config
	.globl _TIM3_ARRPreloadConfig
	.globl _TIM3_OC1PreloadConfig
	.globl _TIM3_OC2PreloadConfig
	.globl _TIM3_GenerateEvent
	.globl _TIM3_OC1PolarityConfig
	.globl _TIM3_OC2PolarityConfig
	.globl _TIM3_CCxCmd
	.globl _TIM3_SelectOCxM
	.globl _TIM3_SetCounter
	.globl _TIM3_SetAutoreload
	.globl _TIM3_SetCompare1
	.globl _TIM3_SetCompare2
	.globl _TIM3_SetIC1Prescaler
	.globl _TIM3_SetIC2Prescaler
	.globl _TIM3_GetCapture1
	.globl _TIM3_GetCapture2
	.globl _TIM3_GetCounter
	.globl _TIM3_GetPrescaler
	.globl _TIM3_GetFlagStatus
	.globl _TIM3_ClearFlag
	.globl _TIM3_GetITStatus
	.globl _TIM3_ClearITPendingBit
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
	G$TIM3_DeInit$0$0 ==.
	C$stm8s_tim3.c$51$0_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 51: void TIM3_DeInit(void)
;	-----------------------------------------
;	 function TIM3_DeInit
;	-----------------------------------------
_TIM3_DeInit:
	C$stm8s_tim3.c$53$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 53: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
	mov	0x5320+0, #0x00
	C$stm8s_tim3.c$54$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 54: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
	mov	0x5321+0, #0x00
	C$stm8s_tim3.c$55$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 55: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
	mov	0x5323+0, #0x00
	C$stm8s_tim3.c$58$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 58: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
	mov	0x5327+0, #0x00
	C$stm8s_tim3.c$61$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 61: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
	mov	0x5327+0, #0x00
	C$stm8s_tim3.c$62$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 62: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
	mov	0x5325+0, #0x00
	C$stm8s_tim3.c$63$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 63: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
	mov	0x5326+0, #0x00
	C$stm8s_tim3.c$64$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 64: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
	mov	0x5328+0, #0x00
	C$stm8s_tim3.c$65$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 65: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
	mov	0x5329+0, #0x00
	C$stm8s_tim3.c$66$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 66: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
	mov	0x532a+0, #0x00
	C$stm8s_tim3.c$67$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 67: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
	mov	0x532b+0, #0xff
	C$stm8s_tim3.c$68$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 68: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
	mov	0x532c+0, #0xff
	C$stm8s_tim3.c$69$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 69: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
	mov	0x532d+0, #0x00
	C$stm8s_tim3.c$70$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 70: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
	mov	0x532e+0, #0x00
	C$stm8s_tim3.c$71$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 71: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
	mov	0x532f+0, #0x00
	C$stm8s_tim3.c$72$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 72: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
	mov	0x5330+0, #0x00
	C$stm8s_tim3.c$73$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 73: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
	mov	0x5322+0, #0x00
	C$stm8s_tim3.c$74$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 74: }
	C$stm8s_tim3.c$74$1_0$348 ==.
	XG$TIM3_DeInit$0$0 ==.
	ret
	G$TIM3_TimeBaseInit$0$0 ==.
	C$stm8s_tim3.c$82$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 82: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
;	-----------------------------------------
;	 function TIM3_TimeBaseInit
;	-----------------------------------------
_TIM3_TimeBaseInit:
	sub	sp, #2
	C$stm8s_tim3.c$86$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 86: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
	ldw	x, #0x532a
	ld	a, (0x05, sp)
	ld	(x), a
	C$stm8s_tim3.c$88$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 88: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
	ld	a, (0x06, sp)
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	0x532b, a
	C$stm8s_tim3.c$89$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 89: TIM3->ARRL = (uint8_t)(TIM3_Period);
	ld	a, (0x07, sp)
	ld	0x532c, a
	C$stm8s_tim3.c$90$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 90: }
	addw	sp, #2
	C$stm8s_tim3.c$90$1_0$350 ==.
	XG$TIM3_TimeBaseInit$0$0 ==.
	ret
	G$TIM3_OC1Init$0$0 ==.
	C$stm8s_tim3.c$100$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 100: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
;	-----------------------------------------
;	 function TIM3_OC1Init
;	-----------------------------------------
_TIM3_OC1Init:
	sub	sp, #2
	C$stm8s_tim3.c$111$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 111: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
	ld	a, 0x5327
	and	a, #0xfc
	ld	0x5327, a
	C$stm8s_tim3.c$113$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 113: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
	ld	a, 0x5327
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
	ld	a, (0x09, sp)
	and	a, #0x02
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x5327, a
	C$stm8s_tim3.c$116$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 116: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ld	a, 0x5325
	and	a, #0x8f
	or	a, (0x05, sp)
	ld	0x5325, a
	C$stm8s_tim3.c$119$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 119: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x532d, a
	C$stm8s_tim3.c$120$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 120: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
	ld	a, (0x08, sp)
	ld	0x532e, a
	C$stm8s_tim3.c$121$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 121: }
	addw	sp, #2
	C$stm8s_tim3.c$121$1_0$352 ==.
	XG$TIM3_OC1Init$0$0 ==.
	ret
	G$TIM3_OC2Init$0$0 ==.
	C$stm8s_tim3.c$131$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 131: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
;	-----------------------------------------
;	 function TIM3_OC2Init
;	-----------------------------------------
_TIM3_OC2Init:
	sub	sp, #2
	C$stm8s_tim3.c$143$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 143: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
	ld	a, 0x5327
	and	a, #0xcf
	ld	0x5327, a
	C$stm8s_tim3.c$145$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 145: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
	ld	a, 0x5327
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	and	a, #0x10
	ld	(0x02, sp), a
	ld	a, (0x09, sp)
	and	a, #0x20
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x5327, a
	C$stm8s_tim3.c$149$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 149: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ld	a, 0x5326
	and	a, #0x8f
	or	a, (0x05, sp)
	ld	0x5326, a
	C$stm8s_tim3.c$153$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 153: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x532f, a
	C$stm8s_tim3.c$154$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 154: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
	ld	a, (0x08, sp)
	ld	0x5330, a
	C$stm8s_tim3.c$155$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 155: }
	addw	sp, #2
	C$stm8s_tim3.c$155$1_0$354 ==.
	XG$TIM3_OC2Init$0$0 ==.
	ret
	G$TIM3_ICInit$0$0 ==.
	C$stm8s_tim3.c$166$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 166: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
;	-----------------------------------------
;	 function TIM3_ICInit
;	-----------------------------------------
_TIM3_ICInit:
	C$stm8s_tim3.c$179$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 179: if (TIM3_Channel != TIM3_CHANNEL_2)
	ld	a, (0x03, sp)
	dec	a
	jreq	00102$
	C$stm8s_tim3.c$182$2_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 182: TI1_Config((uint8_t)TIM3_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	C$stm8s_tim3.c$187$2_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 187: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM3_SetIC1Prescaler
	pop	a
	jra	00104$
00102$:
	C$stm8s_tim3.c$192$2_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 192: TI2_Config((uint8_t)TIM3_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	C$stm8s_tim3.c$197$2_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 197: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM3_SetIC2Prescaler
	pop	a
00104$:
	C$stm8s_tim3.c$199$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 199: }
	C$stm8s_tim3.c$199$1_0$356 ==.
	XG$TIM3_ICInit$0$0 ==.
	ret
	G$TIM3_PWMIConfig$0$0 ==.
	C$stm8s_tim3.c$210$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 210: void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
;	-----------------------------------------
;	 function TIM3_PWMIConfig
;	-----------------------------------------
_TIM3_PWMIConfig:
	sub	sp, #2
	C$stm8s_tim3.c$226$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 226: if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
	ld	a, (0x06, sp)
	cp	a, #0x44
	jreq	00102$
	C$stm8s_tim3.c$228$2_0$361 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 228: icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
	ld	a, #0x44
	ld	(0x01, sp), a
	jra	00103$
00102$:
	C$stm8s_tim3.c$232$2_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 232: icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
	clr	(0x01, sp)
00103$:
	C$stm8s_tim3.c$236$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 236: if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
	ld	a, (0x07, sp)
	dec	a
	jrne	00105$
	C$stm8s_tim3.c$238$2_0$363 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 238: icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
	ld	a, #0x02
	ld	(0x02, sp), a
	jra	00106$
00105$:
	C$stm8s_tim3.c$242$2_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 242: icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
	ld	a, #0x01
	ld	(0x02, sp), a
00106$:
	C$stm8s_tim3.c$245$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 245: if (TIM3_Channel != TIM3_CHANNEL_2)
	ld	a, (0x05, sp)
	dec	a
	jreq	00108$
	C$stm8s_tim3.c$248$2_0$365 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 248: TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	C$stm8s_tim3.c$252$2_0$365 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 252: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM3_SetIC1Prescaler
	pop	a
	C$stm8s_tim3.c$255$2_0$365 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 255: TI2_Config(icpolarity, icselection, TIM3_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x03, sp)
	push	a
	ld	a, (0x03, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	C$stm8s_tim3.c$258$2_0$365 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 258: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM3_SetIC2Prescaler
	pop	a
	jra	00110$
00108$:
	C$stm8s_tim3.c$263$2_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 263: TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	C$stm8s_tim3.c$267$2_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 267: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM3_SetIC2Prescaler
	pop	a
	C$stm8s_tim3.c$270$2_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 270: TI1_Config(icpolarity, icselection, TIM3_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x03, sp)
	push	a
	ld	a, (0x03, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	C$stm8s_tim3.c$273$2_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 273: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM3_SetIC1Prescaler
	pop	a
00110$:
	C$stm8s_tim3.c$275$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 275: }
	addw	sp, #2
	C$stm8s_tim3.c$275$1_0$360 ==.
	XG$TIM3_PWMIConfig$0$0 ==.
	ret
	G$TIM3_Cmd$0$0 ==.
	C$stm8s_tim3.c$283$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 283: void TIM3_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_Cmd
;	-----------------------------------------
_TIM3_Cmd:
	C$stm8s_tim3.c$289$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 289: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim3.c$291$2_0$369 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
	bset	21280, #0
	jra	00104$
00102$:
	C$stm8s_tim3.c$295$2_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 295: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
	bres	21280, #0
00104$:
	C$stm8s_tim3.c$297$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 297: }
	C$stm8s_tim3.c$297$1_0$368 ==.
	XG$TIM3_Cmd$0$0 ==.
	ret
	G$TIM3_ITConfig$0$0 ==.
	C$stm8s_tim3.c$311$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 311: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_ITConfig
;	-----------------------------------------
_TIM3_ITConfig:
	push	a
	C$stm8s_tim3.c$317$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 317: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	C$stm8s_tim3.c$320$2_0$373 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
	ld	a, 0x5321
	or	a, (0x04, sp)
	ld	0x5321, a
	jra	00104$
00102$:
	C$stm8s_tim3.c$325$2_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 325: TIM3->IER &= (uint8_t)(~TIM3_IT);
	ld	a, 0x5321
	ld	(0x01, sp), a
	ld	a, (0x04, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	0x5321, a
00104$:
	C$stm8s_tim3.c$327$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 327: }
	pop	a
	C$stm8s_tim3.c$327$1_0$372 ==.
	XG$TIM3_ITConfig$0$0 ==.
	ret
	G$TIM3_UpdateDisableConfig$0$0 ==.
	C$stm8s_tim3.c$335$1_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 335: void TIM3_UpdateDisableConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_UpdateDisableConfig
;	-----------------------------------------
_TIM3_UpdateDisableConfig:
	C$stm8s_tim3.c$341$1_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 341: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim3.c$343$2_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
	bset	21280, #1
	jra	00104$
00102$:
	C$stm8s_tim3.c$347$2_0$378 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 347: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
	bres	21280, #1
00104$:
	C$stm8s_tim3.c$349$1_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 349: }
	C$stm8s_tim3.c$349$1_0$376 ==.
	XG$TIM3_UpdateDisableConfig$0$0 ==.
	ret
	G$TIM3_UpdateRequestConfig$0$0 ==.
	C$stm8s_tim3.c$359$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 359: void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
;	-----------------------------------------
;	 function TIM3_UpdateRequestConfig
;	-----------------------------------------
_TIM3_UpdateRequestConfig:
	C$stm8s_tim3.c$365$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 365: if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim3.c$367$2_0$381 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
	bset	21280, #2
	jra	00104$
00102$:
	C$stm8s_tim3.c$371$2_0$382 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 371: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
	bres	21280, #2
00104$:
	C$stm8s_tim3.c$373$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 373: }
	C$stm8s_tim3.c$373$1_0$380 ==.
	XG$TIM3_UpdateRequestConfig$0$0 ==.
	ret
	G$TIM3_SelectOnePulseMode$0$0 ==.
	C$stm8s_tim3.c$383$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 383: void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
;	-----------------------------------------
;	 function TIM3_SelectOnePulseMode
;	-----------------------------------------
_TIM3_SelectOnePulseMode:
	C$stm8s_tim3.c$389$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 389: if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim3.c$391$2_0$385 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
	bset	21280, #3
	jra	00104$
00102$:
	C$stm8s_tim3.c$395$2_0$386 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 395: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
	bres	21280, #3
00104$:
	C$stm8s_tim3.c$397$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 397: }
	C$stm8s_tim3.c$397$1_0$384 ==.
	XG$TIM3_SelectOnePulseMode$0$0 ==.
	ret
	G$TIM3_PrescalerConfig$0$0 ==.
	C$stm8s_tim3.c$427$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 427: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
;	-----------------------------------------
;	 function TIM3_PrescalerConfig
;	-----------------------------------------
_TIM3_PrescalerConfig:
	C$stm8s_tim3.c$435$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 435: TIM3->PSCR = (uint8_t)Prescaler;
	ldw	x, #0x532a
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_tim3.c$438$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 438: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
	ldw	x, #0x5324
	ld	a, (0x04, sp)
	ld	(x), a
	C$stm8s_tim3.c$439$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 439: }
	C$stm8s_tim3.c$439$1_0$388 ==.
	XG$TIM3_PrescalerConfig$0$0 ==.
	ret
	G$TIM3_ForcedOC1Config$0$0 ==.
	C$stm8s_tim3.c$450$1_0$390 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 450: void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
;	-----------------------------------------
;	 function TIM3_ForcedOC1Config
;	-----------------------------------------
_TIM3_ForcedOC1Config:
	C$stm8s_tim3.c$456$1_0$390 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 456: TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
	ld	a, 0x5325
	and	a, #0x8f
	or	a, (0x03, sp)
	ld	0x5325, a
	C$stm8s_tim3.c$457$1_0$390 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 457: }
	C$stm8s_tim3.c$457$1_0$390 ==.
	XG$TIM3_ForcedOC1Config$0$0 ==.
	ret
	G$TIM3_ForcedOC2Config$0$0 ==.
	C$stm8s_tim3.c$468$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 468: void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
;	-----------------------------------------
;	 function TIM3_ForcedOC2Config
;	-----------------------------------------
_TIM3_ForcedOC2Config:
	C$stm8s_tim3.c$474$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 474: TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
	ld	a, 0x5326
	and	a, #0x8f
	or	a, (0x03, sp)
	ld	0x5326, a
	C$stm8s_tim3.c$475$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 475: }
	C$stm8s_tim3.c$475$1_0$392 ==.
	XG$TIM3_ForcedOC2Config$0$0 ==.
	ret
	G$TIM3_ARRPreloadConfig$0$0 ==.
	C$stm8s_tim3.c$483$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 483: void TIM3_ARRPreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_ARRPreloadConfig
;	-----------------------------------------
_TIM3_ARRPreloadConfig:
	C$stm8s_tim3.c$489$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 489: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim3.c$491$2_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
	bset	21280, #7
	jra	00104$
00102$:
	C$stm8s_tim3.c$495$2_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 495: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
	bres	21280, #7
00104$:
	C$stm8s_tim3.c$497$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 497: }
	C$stm8s_tim3.c$497$1_0$394 ==.
	XG$TIM3_ARRPreloadConfig$0$0 ==.
	ret
	G$TIM3_OC1PreloadConfig$0$0 ==.
	C$stm8s_tim3.c$505$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 505: void TIM3_OC1PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_OC1PreloadConfig
;	-----------------------------------------
_TIM3_OC1PreloadConfig:
	C$stm8s_tim3.c$511$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 511: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim3.c$513$2_0$399 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
	bset	21285, #3
	jra	00104$
00102$:
	C$stm8s_tim3.c$517$2_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 517: TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
	bres	21285, #3
00104$:
	C$stm8s_tim3.c$519$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 519: }
	C$stm8s_tim3.c$519$1_0$398 ==.
	XG$TIM3_OC1PreloadConfig$0$0 ==.
	ret
	G$TIM3_OC2PreloadConfig$0$0 ==.
	C$stm8s_tim3.c$527$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 527: void TIM3_OC2PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_OC2PreloadConfig
;	-----------------------------------------
_TIM3_OC2PreloadConfig:
	C$stm8s_tim3.c$533$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 533: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim3.c$535$2_0$403 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
	bset	21286, #3
	jra	00104$
00102$:
	C$stm8s_tim3.c$539$2_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 539: TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
	bres	21286, #3
00104$:
	C$stm8s_tim3.c$541$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 541: }
	C$stm8s_tim3.c$541$1_0$402 ==.
	XG$TIM3_OC2PreloadConfig$0$0 ==.
	ret
	G$TIM3_GenerateEvent$0$0 ==.
	C$stm8s_tim3.c$552$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 552: void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
;	-----------------------------------------
;	 function TIM3_GenerateEvent
;	-----------------------------------------
_TIM3_GenerateEvent:
	C$stm8s_tim3.c$558$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 558: TIM3->EGR = (uint8_t)TIM3_EventSource;
	ldw	x, #0x5324
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_tim3.c$559$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 559: }
	C$stm8s_tim3.c$559$1_0$406 ==.
	XG$TIM3_GenerateEvent$0$0 ==.
	ret
	G$TIM3_OC1PolarityConfig$0$0 ==.
	C$stm8s_tim3.c$569$1_0$408 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 569: void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
;	-----------------------------------------
;	 function TIM3_OC1PolarityConfig
;	-----------------------------------------
_TIM3_OC1PolarityConfig:
	C$stm8s_tim3.c$575$1_0$408 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 575: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim3.c$577$2_0$409 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
	bset	21287, #1
	jra	00104$
00102$:
	C$stm8s_tim3.c$581$2_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 581: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
	bres	21287, #1
00104$:
	C$stm8s_tim3.c$583$1_0$408 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 583: }
	C$stm8s_tim3.c$583$1_0$408 ==.
	XG$TIM3_OC1PolarityConfig$0$0 ==.
	ret
	G$TIM3_OC2PolarityConfig$0$0 ==.
	C$stm8s_tim3.c$593$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 593: void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
;	-----------------------------------------
;	 function TIM3_OC2PolarityConfig
;	-----------------------------------------
_TIM3_OC2PolarityConfig:
	C$stm8s_tim3.c$599$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 599: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim3.c$601$2_0$413 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
	bset	21287, #5
	jra	00104$
00102$:
	C$stm8s_tim3.c$605$2_0$414 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 605: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
	bres	21287, #5
00104$:
	C$stm8s_tim3.c$607$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 607: }
	C$stm8s_tim3.c$607$1_0$412 ==.
	XG$TIM3_OC2PolarityConfig$0$0 ==.
	ret
	G$TIM3_CCxCmd$0$0 ==.
	C$stm8s_tim3.c$619$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 619: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_CCxCmd
;	-----------------------------------------
_TIM3_CCxCmd:
	C$stm8s_tim3.c$625$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 625: if (TIM3_Channel == TIM3_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00108$
	C$stm8s_tim3.c$628$2_0$417 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 628: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim3.c$630$3_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
	bset	21287, #0
	jra	00110$
00102$:
	C$stm8s_tim3.c$634$3_0$419 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 634: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	bres	21287, #0
	jra	00110$
00108$:
	C$stm8s_tim3.c$641$2_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 641: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
	C$stm8s_tim3.c$643$3_0$421 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 643: TIM3->CCER1 |= TIM3_CCER1_CC2E;
	bset	21287, #4
	jra	00110$
00105$:
	C$stm8s_tim3.c$647$3_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 647: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
	bres	21287, #4
00110$:
	C$stm8s_tim3.c$650$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 650: }
	C$stm8s_tim3.c$650$1_0$416 ==.
	XG$TIM3_CCxCmd$0$0 ==.
	ret
	G$TIM3_SelectOCxM$0$0 ==.
	C$stm8s_tim3.c$671$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 671: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
;	-----------------------------------------
;	 function TIM3_SelectOCxM
;	-----------------------------------------
_TIM3_SelectOCxM:
	C$stm8s_tim3.c$677$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 677: if (TIM3_Channel == TIM3_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00102$
	C$stm8s_tim3.c$680$2_0$425 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	bres	21287, #0
	C$stm8s_tim3.c$683$2_0$425 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 683: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ld	a, 0x5325
	and	a, #0x8f
	or	a, (0x04, sp)
	ld	0x5325, a
	jra	00104$
00102$:
	C$stm8s_tim3.c$688$2_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 688: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
	bres	21287, #4
	C$stm8s_tim3.c$691$2_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 691: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ld	a, 0x5326
	and	a, #0x8f
	or	a, (0x04, sp)
	ld	0x5326, a
00104$:
	C$stm8s_tim3.c$693$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 693: }
	C$stm8s_tim3.c$693$1_0$424 ==.
	XG$TIM3_SelectOCxM$0$0 ==.
	ret
	G$TIM3_SetCounter$0$0 ==.
	C$stm8s_tim3.c$701$1_0$428 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 701: void TIM3_SetCounter(uint16_t Counter)
;	-----------------------------------------
;	 function TIM3_SetCounter
;	-----------------------------------------
_TIM3_SetCounter:
	sub	sp, #2
	C$stm8s_tim3.c$704$1_0$428 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 704: TIM3->CNTRH = (uint8_t)(Counter >> 8);
	ld	a, (0x05, sp)
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	0x5328, a
	C$stm8s_tim3.c$705$1_0$428 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 705: TIM3->CNTRL = (uint8_t)(Counter);
	ld	a, (0x06, sp)
	ld	0x5329, a
	C$stm8s_tim3.c$706$1_0$428 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 706: }
	addw	sp, #2
	C$stm8s_tim3.c$706$1_0$428 ==.
	XG$TIM3_SetCounter$0$0 ==.
	ret
	G$TIM3_SetAutoreload$0$0 ==.
	C$stm8s_tim3.c$714$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 714: void TIM3_SetAutoreload(uint16_t Autoreload)
;	-----------------------------------------
;	 function TIM3_SetAutoreload
;	-----------------------------------------
_TIM3_SetAutoreload:
	sub	sp, #2
	C$stm8s_tim3.c$717$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 717: TIM3->ARRH = (uint8_t)(Autoreload >> 8);
	ld	a, (0x05, sp)
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	0x532b, a
	C$stm8s_tim3.c$718$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 718: TIM3->ARRL = (uint8_t)(Autoreload);
	ld	a, (0x06, sp)
	ld	0x532c, a
	C$stm8s_tim3.c$719$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 719: }
	addw	sp, #2
	C$stm8s_tim3.c$719$1_0$430 ==.
	XG$TIM3_SetAutoreload$0$0 ==.
	ret
	G$TIM3_SetCompare1$0$0 ==.
	C$stm8s_tim3.c$727$1_0$432 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 727: void TIM3_SetCompare1(uint16_t Compare1)
;	-----------------------------------------
;	 function TIM3_SetCompare1
;	-----------------------------------------
_TIM3_SetCompare1:
	sub	sp, #2
	C$stm8s_tim3.c$730$1_0$432 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 730: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
	ld	a, (0x05, sp)
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	0x532d, a
	C$stm8s_tim3.c$731$1_0$432 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 731: TIM3->CCR1L = (uint8_t)(Compare1);
	ld	a, (0x06, sp)
	ld	0x532e, a
	C$stm8s_tim3.c$732$1_0$432 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 732: }
	addw	sp, #2
	C$stm8s_tim3.c$732$1_0$432 ==.
	XG$TIM3_SetCompare1$0$0 ==.
	ret
	G$TIM3_SetCompare2$0$0 ==.
	C$stm8s_tim3.c$740$1_0$434 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 740: void TIM3_SetCompare2(uint16_t Compare2)
;	-----------------------------------------
;	 function TIM3_SetCompare2
;	-----------------------------------------
_TIM3_SetCompare2:
	sub	sp, #2
	C$stm8s_tim3.c$743$1_0$434 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 743: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
	ld	a, (0x05, sp)
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	0x532f, a
	C$stm8s_tim3.c$744$1_0$434 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 744: TIM3->CCR2L = (uint8_t)(Compare2);
	ld	a, (0x06, sp)
	ld	0x5330, a
	C$stm8s_tim3.c$745$1_0$434 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 745: }
	addw	sp, #2
	C$stm8s_tim3.c$745$1_0$434 ==.
	XG$TIM3_SetCompare2$0$0 ==.
	ret
	G$TIM3_SetIC1Prescaler$0$0 ==.
	C$stm8s_tim3.c$757$1_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 757: void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
;	-----------------------------------------
;	 function TIM3_SetIC1Prescaler
;	-----------------------------------------
_TIM3_SetIC1Prescaler:
	C$stm8s_tim3.c$763$1_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 763: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
	ld	a, 0x5325
	and	a, #0xf3
	or	a, (0x03, sp)
	ld	0x5325, a
	C$stm8s_tim3.c$764$1_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 764: }
	C$stm8s_tim3.c$764$1_0$436 ==.
	XG$TIM3_SetIC1Prescaler$0$0 ==.
	ret
	G$TIM3_SetIC2Prescaler$0$0 ==.
	C$stm8s_tim3.c$776$1_0$438 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 776: void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
;	-----------------------------------------
;	 function TIM3_SetIC2Prescaler
;	-----------------------------------------
_TIM3_SetIC2Prescaler:
	C$stm8s_tim3.c$782$1_0$438 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 782: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
	ld	a, 0x5326
	and	a, #0xf3
	or	a, (0x03, sp)
	ld	0x5326, a
	C$stm8s_tim3.c$783$1_0$438 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 783: }
	C$stm8s_tim3.c$783$1_0$438 ==.
	XG$TIM3_SetIC2Prescaler$0$0 ==.
	ret
	G$TIM3_GetCapture1$0$0 ==.
	C$stm8s_tim3.c$790$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 790: uint16_t TIM3_GetCapture1(void)
;	-----------------------------------------
;	 function TIM3_GetCapture1
;	-----------------------------------------
_TIM3_GetCapture1:
	sub	sp, #2
	C$stm8s_tim3.c$796$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 796: tmpccr1h = TIM3->CCR1H;
	ld	a, 0x532d
	ld	xh, a
	C$stm8s_tim3.c$797$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 797: tmpccr1l = TIM3->CCR1L;
	ld	a, 0x532e
	C$stm8s_tim3.c$799$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 799: tmpccr1 = (uint16_t)(tmpccr1l);
	ld	xl, a
	clr	a
	C$stm8s_tim3.c$800$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 800: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	C$stm8s_tim3.c$802$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 802: return (uint16_t)tmpccr1;
	C$stm8s_tim3.c$803$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 803: }
	addw	sp, #2
	C$stm8s_tim3.c$803$1_0$440 ==.
	XG$TIM3_GetCapture1$0$0 ==.
	ret
	G$TIM3_GetCapture2$0$0 ==.
	C$stm8s_tim3.c$810$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 810: uint16_t TIM3_GetCapture2(void)
;	-----------------------------------------
;	 function TIM3_GetCapture2
;	-----------------------------------------
_TIM3_GetCapture2:
	sub	sp, #2
	C$stm8s_tim3.c$816$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 816: tmpccr2h = TIM3->CCR2H;
	ld	a, 0x532f
	ld	xh, a
	C$stm8s_tim3.c$817$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 817: tmpccr2l = TIM3->CCR2L;
	ld	a, 0x5330
	C$stm8s_tim3.c$819$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 819: tmpccr2 = (uint16_t)(tmpccr2l);
	ld	xl, a
	clr	a
	C$stm8s_tim3.c$820$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 820: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	C$stm8s_tim3.c$822$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 822: return (uint16_t)tmpccr2;
	C$stm8s_tim3.c$823$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 823: }
	addw	sp, #2
	C$stm8s_tim3.c$823$1_0$442 ==.
	XG$TIM3_GetCapture2$0$0 ==.
	ret
	G$TIM3_GetCounter$0$0 ==.
	C$stm8s_tim3.c$830$1_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 830: uint16_t TIM3_GetCounter(void)
;	-----------------------------------------
;	 function TIM3_GetCounter
;	-----------------------------------------
_TIM3_GetCounter:
	sub	sp, #4
	C$stm8s_tim3.c$834$1_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 834: tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
	ld	a, 0x5328
	ld	xh, a
	clr	a
	ld	(0x02, sp), a
	C$stm8s_tim3.c$836$1_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 836: return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
	ld	a, 0x5329
	ld	(0x04, sp), a
	clr	(0x03, sp)
	ld	a, (0x02, sp)
	or	a, (0x04, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	C$stm8s_tim3.c$837$1_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 837: }
	addw	sp, #4
	C$stm8s_tim3.c$837$1_0$444 ==.
	XG$TIM3_GetCounter$0$0 ==.
	ret
	G$TIM3_GetPrescaler$0$0 ==.
	C$stm8s_tim3.c$844$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 844: TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM3_GetPrescaler
;	-----------------------------------------
_TIM3_GetPrescaler:
	C$stm8s_tim3.c$847$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 847: return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
	ld	a, 0x532a
	C$stm8s_tim3.c$848$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 848: }
	C$stm8s_tim3.c$848$1_0$446 ==.
	XG$TIM3_GetPrescaler$0$0 ==.
	ret
	G$TIM3_GetFlagStatus$0$0 ==.
	C$stm8s_tim3.c$861$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 861: FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
;	-----------------------------------------
;	 function TIM3_GetFlagStatus
;	-----------------------------------------
_TIM3_GetFlagStatus:
	sub	sp, #3
	C$stm8s_tim3.c$869$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 869: tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
	ld	a, 0x5322
	ld	(0x03, sp), a
	ld	a, (0x07, sp)
	and	a, (0x03, sp)
	ld	(0x01, sp), a
	C$stm8s_tim3.c$870$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 870: tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
	ld	a, (0x06, sp)
	ld	(0x03, sp), a
	clr	(0x02, sp)
	C$stm8s_tim3.c$872$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 872: if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
	ld	a, 0x5323
	and	a, (0x03, sp)
	or	a, (0x01, sp)
	jreq	00102$
	C$stm8s_tim3.c$874$2_0$449 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 874: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	C$stm8s_tim3.c$878$2_0$450 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 878: bitstatus = RESET;
	clr	a
00103$:
	C$stm8s_tim3.c$880$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 880: return (FlagStatus)bitstatus;
	C$stm8s_tim3.c$881$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 881: }
	addw	sp, #3
	C$stm8s_tim3.c$881$1_0$448 ==.
	XG$TIM3_GetFlagStatus$0$0 ==.
	ret
	G$TIM3_ClearFlag$0$0 ==.
	C$stm8s_tim3.c$894$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 894: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
;	-----------------------------------------
;	 function TIM3_ClearFlag
;	-----------------------------------------
_TIM3_ClearFlag:
	C$stm8s_tim3.c$900$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 900: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
	ld	a, (0x04, sp)
	cpl	a
	ld	0x5322, a
	C$stm8s_tim3.c$901$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 901: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
	ld	a, (0x03, sp)
	cpl	a
	ld	0x5323, a
	C$stm8s_tim3.c$902$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 902: }
	C$stm8s_tim3.c$902$1_0$452 ==.
	XG$TIM3_ClearFlag$0$0 ==.
	ret
	G$TIM3_GetITStatus$0$0 ==.
	C$stm8s_tim3.c$913$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 913: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
;	-----------------------------------------
;	 function TIM3_GetITStatus
;	-----------------------------------------
_TIM3_GetITStatus:
	push	a
	C$stm8s_tim3.c$921$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 921: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
	ld	a, 0x5322
	and	a, (0x04, sp)
	ld	(0x01, sp), a
	C$stm8s_tim3.c$923$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 923: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
	ld	a, 0x5321
	and	a, (0x04, sp)
	C$stm8s_tim3.c$925$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 925: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
	C$stm8s_tim3.c$927$2_0$455 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 927: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	C$stm8s_tim3.c$931$2_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 931: bitstatus = RESET;
	clr	a
00103$:
	C$stm8s_tim3.c$933$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 933: return (ITStatus)(bitstatus);
	C$stm8s_tim3.c$934$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 934: }
	addw	sp, #1
	C$stm8s_tim3.c$934$1_0$454 ==.
	XG$TIM3_GetITStatus$0$0 ==.
	ret
	G$TIM3_ClearITPendingBit$0$0 ==.
	C$stm8s_tim3.c$945$1_0$458 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 945: void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
;	-----------------------------------------
;	 function TIM3_ClearITPendingBit
;	-----------------------------------------
_TIM3_ClearITPendingBit:
	C$stm8s_tim3.c$951$1_0$458 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 951: TIM3->SR1 = (uint8_t)(~TIM3_IT);
	ld	a, (0x03, sp)
	cpl	a
	ld	0x5322, a
	C$stm8s_tim3.c$952$1_0$458 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 952: }
	C$stm8s_tim3.c$952$1_0$458 ==.
	XG$TIM3_ClearITPendingBit$0$0 ==.
	ret
	Fstm8s_tim3$TI1_Config$0$0 ==.
	C$stm8s_tim3.c$970$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 970: static void TI1_Config(uint8_t TIM3_ICPolarity,
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
_TI1_Config:
	push	a
	C$stm8s_tim3.c$975$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	bres	21287, #0
	C$stm8s_tim3.c$978$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 978: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
	ld	a, 0x5325
	and	a, #0x0c
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5325, a
	C$stm8s_tim3.c$981$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 981: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim3.c$983$2_0$461 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 983: TIM3->CCER1 |= TIM3_CCER1_CC1P;
	bset	21287, #1
	jra	00103$
00102$:
	C$stm8s_tim3.c$987$2_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 987: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
	bres	21287, #1
00103$:
	C$stm8s_tim3.c$990$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 990: TIM3->CCER1 |= TIM3_CCER1_CC1E;
	bset	21287, #0
	C$stm8s_tim3.c$991$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 991: }
	pop	a
	C$stm8s_tim3.c$991$1_0$460 ==.
	XFstm8s_tim3$TI1_Config$0$0 ==.
	ret
	Fstm8s_tim3$TI2_Config$0$0 ==.
	C$stm8s_tim3.c$1009$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1009: static void TI2_Config(uint8_t TIM3_ICPolarity,
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
_TI2_Config:
	push	a
	C$stm8s_tim3.c$1014$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
	bres	21287, #4
	C$stm8s_tim3.c$1017$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1017: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
	ld	a, 0x5326
	and	a, #0x0c
	ld	(0x01, sp), a
	C$stm8s_tim3.c$1019$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1019: ((uint8_t)( TIM3_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5326, a
	C$stm8s_tim3.c$1022$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1022: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim3.c$1024$2_0$465 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1024: TIM3->CCER1 |= TIM3_CCER1_CC2P;
	bset	21287, #5
	jra	00103$
00102$:
	C$stm8s_tim3.c$1028$2_0$466 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1028: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
	bres	21287, #5
00103$:
	C$stm8s_tim3.c$1032$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1032: TIM3->CCER1 |= TIM3_CCER1_CC2E;
	bset	21287, #4
	C$stm8s_tim3.c$1033$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1033: }
	pop	a
	C$stm8s_tim3.c$1033$1_0$464 ==.
	XFstm8s_tim3$TI2_Config$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
