;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module stm8s_tim2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_DeInit
	.globl _TIM2_TimeBaseInit
	.globl _TIM2_OC1Init
	.globl _TIM2_OC2Init
	.globl _TIM2_OC3Init
	.globl _TIM2_ICInit
	.globl _TIM2_PWMIConfig
	.globl _TIM2_Cmd
	.globl _TIM2_ITConfig
	.globl _TIM2_UpdateDisableConfig
	.globl _TIM2_UpdateRequestConfig
	.globl _TIM2_SelectOnePulseMode
	.globl _TIM2_PrescalerConfig
	.globl _TIM2_ForcedOC1Config
	.globl _TIM2_ForcedOC2Config
	.globl _TIM2_ForcedOC3Config
	.globl _TIM2_ARRPreloadConfig
	.globl _TIM2_OC1PreloadConfig
	.globl _TIM2_OC2PreloadConfig
	.globl _TIM2_OC3PreloadConfig
	.globl _TIM2_GenerateEvent
	.globl _TIM2_OC1PolarityConfig
	.globl _TIM2_OC2PolarityConfig
	.globl _TIM2_OC3PolarityConfig
	.globl _TIM2_CCxCmd
	.globl _TIM2_SelectOCxM
	.globl _TIM2_SetCounter
	.globl _TIM2_SetAutoreload
	.globl _TIM2_SetCompare1
	.globl _TIM2_SetCompare2
	.globl _TIM2_SetCompare3
	.globl _TIM2_SetIC1Prescaler
	.globl _TIM2_SetIC2Prescaler
	.globl _TIM2_SetIC3Prescaler
	.globl _TIM2_GetCapture1
	.globl _TIM2_GetCapture2
	.globl _TIM2_GetCapture3
	.globl _TIM2_GetCounter
	.globl _TIM2_GetPrescaler
	.globl _TIM2_GetFlagStatus
	.globl _TIM2_ClearFlag
	.globl _TIM2_GetITStatus
	.globl _TIM2_ClearITPendingBit
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
	G$TIM2_DeInit$0$0 ==.
	C$stm8s_tim2.c$52$0_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 52: void TIM2_DeInit(void)
;	-----------------------------------------
;	 function TIM2_DeInit
;	-----------------------------------------
_TIM2_DeInit:
	C$stm8s_tim2.c$54$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
	mov	0x5300+0, #0x00
	C$stm8s_tim2.c$55$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
	mov	0x5301+0, #0x00
	C$stm8s_tim2.c$56$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
	mov	0x5303+0, #0x00
	C$stm8s_tim2.c$59$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
	mov	0x5308+0, #0x00
	C$stm8s_tim2.c$60$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
	mov	0x5309+0, #0x00
	C$stm8s_tim2.c$64$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
	mov	0x5308+0, #0x00
	C$stm8s_tim2.c$65$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
	mov	0x5309+0, #0x00
	C$stm8s_tim2.c$66$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
	mov	0x5305+0, #0x00
	C$stm8s_tim2.c$67$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
	mov	0x5306+0, #0x00
	C$stm8s_tim2.c$68$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
	mov	0x5307+0, #0x00
	C$stm8s_tim2.c$69$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
	mov	0x530a+0, #0x00
	C$stm8s_tim2.c$70$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
	mov	0x530b+0, #0x00
	C$stm8s_tim2.c$71$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
	mov	0x530c+0, #0x00
	C$stm8s_tim2.c$72$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
	mov	0x530d+0, #0xff
	C$stm8s_tim2.c$73$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
	mov	0x530e+0, #0xff
	C$stm8s_tim2.c$74$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
	mov	0x530f+0, #0x00
	C$stm8s_tim2.c$75$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
	mov	0x5310+0, #0x00
	C$stm8s_tim2.c$76$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
	mov	0x5311+0, #0x00
	C$stm8s_tim2.c$77$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
	mov	0x5312+0, #0x00
	C$stm8s_tim2.c$78$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
	mov	0x5313+0, #0x00
	C$stm8s_tim2.c$79$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
	mov	0x5314+0, #0x00
	C$stm8s_tim2.c$80$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
	mov	0x5302+0, #0x00
	C$stm8s_tim2.c$81$1_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 81: }
	C$stm8s_tim2.c$81$1_0$349 ==.
	XG$TIM2_DeInit$0$0 ==.
	ret
	G$TIM2_TimeBaseInit$0$0 ==.
	C$stm8s_tim2.c$89$1_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
;	-----------------------------------------
;	 function TIM2_TimeBaseInit
;	-----------------------------------------
_TIM2_TimeBaseInit:
	sub	sp, #2
	C$stm8s_tim2.c$93$1_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
	ldw	x, #0x530c
	ld	a, (0x05, sp)
	ld	(x), a
	C$stm8s_tim2.c$95$1_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
	ld	a, (0x06, sp)
	clr	(0x01, sp)
	ld	0x530d, a
	C$stm8s_tim2.c$96$1_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
	ld	a, (0x07, sp)
	ld	0x530e, a
	C$stm8s_tim2.c$97$1_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 97: }
	addw	sp, #2
	C$stm8s_tim2.c$97$1_0$351 ==.
	XG$TIM2_TimeBaseInit$0$0 ==.
	ret
	G$TIM2_OC1Init$0$0 ==.
	C$stm8s_tim2.c$108$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
;	-----------------------------------------
;	 function TIM2_OC1Init
;	-----------------------------------------
_TIM2_OC1Init:
	sub	sp, #2
	C$stm8s_tim2.c$119$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
	ld	a, 0x5308
	and	a, #0xfc
	ld	0x5308, a
	C$stm8s_tim2.c$121$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) |
	ld	a, 0x5308
	ld	(0x02, sp), a
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x01, sp), a
	C$stm8s_tim2.c$122$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
	ld	a, (0x09, sp)
	and	a, #0x02
	or	a, (0x01, sp)
	or	a, (0x02, sp)
	ld	0x5308, a
	C$stm8s_tim2.c$125$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
	ld	a, 0x5305
	and	a, #0x8f
	C$stm8s_tim2.c$126$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
	or	a, (0x05, sp)
	ld	0x5305, a
	C$stm8s_tim2.c$129$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x530f, a
	C$stm8s_tim2.c$130$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
	ld	a, (0x08, sp)
	ld	0x5310, a
	C$stm8s_tim2.c$131$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 131: }
	addw	sp, #2
	C$stm8s_tim2.c$131$1_0$353 ==.
	XG$TIM2_OC1Init$0$0 ==.
	ret
	G$TIM2_OC2Init$0$0 ==.
	C$stm8s_tim2.c$142$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
;	-----------------------------------------
;	 function TIM2_OC2Init
;	-----------------------------------------
_TIM2_OC2Init:
	sub	sp, #2
	C$stm8s_tim2.c$154$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
	ld	a, 0x5308
	and	a, #0xcf
	ld	0x5308, a
	C$stm8s_tim2.c$156$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
	ld	a, 0x5308
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	and	a, #0x10
	ld	(0x02, sp), a
	C$stm8s_tim2.c$157$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
	ld	a, (0x09, sp)
	and	a, #0x20
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x5308, a
	C$stm8s_tim2.c$161$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) |
	ld	a, 0x5306
	and	a, #0x8f
	C$stm8s_tim2.c$162$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
	or	a, (0x05, sp)
	ld	0x5306, a
	C$stm8s_tim2.c$166$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x5311, a
	C$stm8s_tim2.c$167$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
	ld	a, (0x08, sp)
	ld	0x5312, a
	C$stm8s_tim2.c$168$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 168: }
	addw	sp, #2
	C$stm8s_tim2.c$168$1_0$355 ==.
	XG$TIM2_OC2Init$0$0 ==.
	ret
	G$TIM2_OC3Init$0$0 ==.
	C$stm8s_tim2.c$179$1_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
;	-----------------------------------------
;	 function TIM2_OC3Init
;	-----------------------------------------
_TIM2_OC3Init:
	sub	sp, #2
	C$stm8s_tim2.c$189$1_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
	ld	a, 0x5309
	and	a, #0xfc
	ld	0x5309, a
	C$stm8s_tim2.c$191$1_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |
	ld	a, 0x5309
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
	C$stm8s_tim2.c$192$1_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
	ld	a, (0x09, sp)
	and	a, #0x02
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x5309, a
	C$stm8s_tim2.c$195$1_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
	ld	a, 0x5307
	and	a, #0x8f
	C$stm8s_tim2.c$196$1_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
	or	a, (0x05, sp)
	ld	0x5307, a
	C$stm8s_tim2.c$199$1_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x5313, a
	C$stm8s_tim2.c$200$1_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
	ld	a, (0x08, sp)
	ld	0x5314, a
	C$stm8s_tim2.c$201$1_0$357 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 201: }
	addw	sp, #2
	C$stm8s_tim2.c$201$1_0$357 ==.
	XG$TIM2_OC3Init$0$0 ==.
	ret
	G$TIM2_ICInit$0$0 ==.
	C$stm8s_tim2.c$212$1_0$359 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
;	-----------------------------------------
;	 function TIM2_ICInit
;	-----------------------------------------
_TIM2_ICInit:
	C$stm8s_tim2.c$225$1_0$359 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00105$
	C$stm8s_tim2.c$228$2_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	C$stm8s_tim2.c$233$2_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM2_SetIC1Prescaler
	pop	a
	jra	00107$
00105$:
	C$stm8s_tim2.c$235$1_0$359 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
	ld	a, (0x03, sp)
	dec	a
	jrne	00102$
	C$stm8s_tim2.c$238$2_0$361 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	C$stm8s_tim2.c$243$2_0$361 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM2_SetIC2Prescaler
	pop	a
	jra	00107$
00102$:
	C$stm8s_tim2.c$248$2_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI3_Config
	addw	sp, #3
	C$stm8s_tim2.c$253$2_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM2_SetIC3Prescaler
	pop	a
00107$:
	C$stm8s_tim2.c$255$1_0$359 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 255: }
	C$stm8s_tim2.c$255$1_0$359 ==.
	XG$TIM2_ICInit$0$0 ==.
	ret
	G$TIM2_PWMIConfig$0$0 ==.
	C$stm8s_tim2.c$266$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
;	-----------------------------------------
;	 function TIM2_PWMIConfig
;	-----------------------------------------
_TIM2_PWMIConfig:
	sub	sp, #2
	C$stm8s_tim2.c$282$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
	ld	a, (0x06, sp)
	cp	a, #0x44
	jreq	00102$
	C$stm8s_tim2.c$284$2_0$365 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
	ld	a, #0x44
	ld	(0x02, sp), a
	jra	00103$
00102$:
	C$stm8s_tim2.c$288$2_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
	clr	(0x02, sp)
00103$:
	C$stm8s_tim2.c$292$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
	ld	a, (0x07, sp)
	dec	a
	jrne	00105$
	C$stm8s_tim2.c$294$2_0$367 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
	ld	a, #0x02
	ld	(0x01, sp), a
	jra	00106$
00105$:
	C$stm8s_tim2.c$298$2_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
	ld	a, #0x01
	ld	(0x01, sp), a
00106$:
	C$stm8s_tim2.c$301$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00108$
	C$stm8s_tim2.c$304$2_0$369 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	C$stm8s_tim2.c$308$2_0$369 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC1Prescaler
	pop	a
	C$stm8s_tim2.c$311$2_0$369 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	C$stm8s_tim2.c$314$2_0$369 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC2Prescaler
	pop	a
	jra	00110$
00108$:
	C$stm8s_tim2.c$319$2_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	C$stm8s_tim2.c$323$2_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC2Prescaler
	pop	a
	C$stm8s_tim2.c$326$2_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	C$stm8s_tim2.c$329$2_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC1Prescaler
	pop	a
00110$:
	C$stm8s_tim2.c$331$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 331: }
	addw	sp, #2
	C$stm8s_tim2.c$331$1_0$364 ==.
	XG$TIM2_PWMIConfig$0$0 ==.
	ret
	G$TIM2_Cmd$0$0 ==.
	C$stm8s_tim2.c$339$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_Cmd
;	-----------------------------------------
_TIM2_Cmd:
	C$stm8s_tim2.c$345$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 345: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$347$2_0$373 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
	bset	21248, #0
	jra	00104$
00102$:
	C$stm8s_tim2.c$351$2_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
	bres	21248, #0
00104$:
	C$stm8s_tim2.c$353$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 353: }
	C$stm8s_tim2.c$353$1_0$372 ==.
	XG$TIM2_Cmd$0$0 ==.
	ret
	G$TIM2_ITConfig$0$0 ==.
	C$stm8s_tim2.c$368$1_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_ITConfig
;	-----------------------------------------
_TIM2_ITConfig:
	push	a
	C$stm8s_tim2.c$374$1_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 374: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	C$stm8s_tim2.c$377$2_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
	ld	a, 0x5301
	or	a, (0x04, sp)
	ld	0x5301, a
	jra	00104$
00102$:
	C$stm8s_tim2.c$382$2_0$378 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
	ld	a, 0x5301
	ld	(0x01, sp), a
	ld	a, (0x04, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	0x5301, a
00104$:
	C$stm8s_tim2.c$384$1_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 384: }
	pop	a
	C$stm8s_tim2.c$384$1_0$376 ==.
	XG$TIM2_ITConfig$0$0 ==.
	ret
	G$TIM2_UpdateDisableConfig$0$0 ==.
	C$stm8s_tim2.c$392$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_UpdateDisableConfig
;	-----------------------------------------
_TIM2_UpdateDisableConfig:
	C$stm8s_tim2.c$398$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 398: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$400$2_0$381 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
	bset	21248, #1
	jra	00104$
00102$:
	C$stm8s_tim2.c$404$2_0$382 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
	bres	21248, #1
00104$:
	C$stm8s_tim2.c$406$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 406: }
	C$stm8s_tim2.c$406$1_0$380 ==.
	XG$TIM2_UpdateDisableConfig$0$0 ==.
	ret
	G$TIM2_UpdateRequestConfig$0$0 ==.
	C$stm8s_tim2.c$416$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
;	-----------------------------------------
;	 function TIM2_UpdateRequestConfig
;	-----------------------------------------
_TIM2_UpdateRequestConfig:
	C$stm8s_tim2.c$422$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$424$2_0$385 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
	bset	21248, #2
	jra	00104$
00102$:
	C$stm8s_tim2.c$428$2_0$386 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
	bres	21248, #2
00104$:
	C$stm8s_tim2.c$430$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 430: }
	C$stm8s_tim2.c$430$1_0$384 ==.
	XG$TIM2_UpdateRequestConfig$0$0 ==.
	ret
	G$TIM2_SelectOnePulseMode$0$0 ==.
	C$stm8s_tim2.c$440$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
;	-----------------------------------------
;	 function TIM2_SelectOnePulseMode
;	-----------------------------------------
_TIM2_SelectOnePulseMode:
	C$stm8s_tim2.c$446$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$448$2_0$389 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
	bset	21248, #3
	jra	00104$
00102$:
	C$stm8s_tim2.c$452$2_0$390 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
	bres	21248, #3
00104$:
	C$stm8s_tim2.c$454$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 454: }
	C$stm8s_tim2.c$454$1_0$388 ==.
	XG$TIM2_SelectOnePulseMode$0$0 ==.
	ret
	G$TIM2_PrescalerConfig$0$0 ==.
	C$stm8s_tim2.c$484$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
;	-----------------------------------------
;	 function TIM2_PrescalerConfig
;	-----------------------------------------
_TIM2_PrescalerConfig:
	C$stm8s_tim2.c$492$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
	ldw	x, #0x530c
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_tim2.c$495$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
	ldw	x, #0x5304
	ld	a, (0x04, sp)
	ld	(x), a
	C$stm8s_tim2.c$496$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 496: }
	C$stm8s_tim2.c$496$1_0$392 ==.
	XG$TIM2_PrescalerConfig$0$0 ==.
	ret
	G$TIM2_ForcedOC1Config$0$0 ==.
	C$stm8s_tim2.c$507$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
;	-----------------------------------------
;	 function TIM2_ForcedOC1Config
;	-----------------------------------------
_TIM2_ForcedOC1Config:
	C$stm8s_tim2.c$513$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5305
	and	a, #0x8f
	C$stm8s_tim2.c$514$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
	or	a, (0x03, sp)
	ld	0x5305, a
	C$stm8s_tim2.c$515$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 515: }
	C$stm8s_tim2.c$515$1_0$394 ==.
	XG$TIM2_ForcedOC1Config$0$0 ==.
	ret
	G$TIM2_ForcedOC2Config$0$0 ==.
	C$stm8s_tim2.c$526$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
;	-----------------------------------------
;	 function TIM2_ForcedOC2Config
;	-----------------------------------------
_TIM2_ForcedOC2Config:
	C$stm8s_tim2.c$532$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5306
	and	a, #0x8f
	C$stm8s_tim2.c$533$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
	or	a, (0x03, sp)
	ld	0x5306, a
	C$stm8s_tim2.c$534$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 534: }
	C$stm8s_tim2.c$534$1_0$396 ==.
	XG$TIM2_ForcedOC2Config$0$0 ==.
	ret
	G$TIM2_ForcedOC3Config$0$0 ==.
	C$stm8s_tim2.c$545$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
;	-----------------------------------------
;	 function TIM2_ForcedOC3Config
;	-----------------------------------------
_TIM2_ForcedOC3Config:
	C$stm8s_tim2.c$551$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5307
	and	a, #0x8f
	C$stm8s_tim2.c$552$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
	or	a, (0x03, sp)
	ld	0x5307, a
	C$stm8s_tim2.c$553$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 553: }
	C$stm8s_tim2.c$553$1_0$398 ==.
	XG$TIM2_ForcedOC3Config$0$0 ==.
	ret
	G$TIM2_ARRPreloadConfig$0$0 ==.
	C$stm8s_tim2.c$561$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_ARRPreloadConfig
;	-----------------------------------------
_TIM2_ARRPreloadConfig:
	C$stm8s_tim2.c$567$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 567: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$569$2_0$401 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
	bset	21248, #7
	jra	00104$
00102$:
	C$stm8s_tim2.c$573$2_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
	bres	21248, #7
00104$:
	C$stm8s_tim2.c$575$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 575: }
	C$stm8s_tim2.c$575$1_0$400 ==.
	XG$TIM2_ARRPreloadConfig$0$0 ==.
	ret
	G$TIM2_OC1PreloadConfig$0$0 ==.
	C$stm8s_tim2.c$583$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_OC1PreloadConfig
;	-----------------------------------------
_TIM2_OC1PreloadConfig:
	C$stm8s_tim2.c$589$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 589: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$591$2_0$405 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
	bset	21253, #3
	jra	00104$
00102$:
	C$stm8s_tim2.c$595$2_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
	bres	21253, #3
00104$:
	C$stm8s_tim2.c$597$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 597: }
	C$stm8s_tim2.c$597$1_0$404 ==.
	XG$TIM2_OC1PreloadConfig$0$0 ==.
	ret
	G$TIM2_OC2PreloadConfig$0$0 ==.
	C$stm8s_tim2.c$605$1_0$408 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_OC2PreloadConfig
;	-----------------------------------------
_TIM2_OC2PreloadConfig:
	C$stm8s_tim2.c$611$1_0$408 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 611: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$613$2_0$409 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
	bset	21254, #3
	jra	00104$
00102$:
	C$stm8s_tim2.c$617$2_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
	bres	21254, #3
00104$:
	C$stm8s_tim2.c$619$1_0$408 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 619: }
	C$stm8s_tim2.c$619$1_0$408 ==.
	XG$TIM2_OC2PreloadConfig$0$0 ==.
	ret
	G$TIM2_OC3PreloadConfig$0$0 ==.
	C$stm8s_tim2.c$627$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_OC3PreloadConfig
;	-----------------------------------------
_TIM2_OC3PreloadConfig:
	C$stm8s_tim2.c$633$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 633: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$635$2_0$413 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
	bset	21255, #3
	jra	00104$
00102$:
	C$stm8s_tim2.c$639$2_0$414 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
	bres	21255, #3
00104$:
	C$stm8s_tim2.c$641$1_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 641: }
	C$stm8s_tim2.c$641$1_0$412 ==.
	XG$TIM2_OC3PreloadConfig$0$0 ==.
	ret
	G$TIM2_GenerateEvent$0$0 ==.
	C$stm8s_tim2.c$653$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
;	-----------------------------------------
;	 function TIM2_GenerateEvent
;	-----------------------------------------
_TIM2_GenerateEvent:
	C$stm8s_tim2.c$659$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
	ldw	x, #0x5304
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_tim2.c$660$1_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 660: }
	C$stm8s_tim2.c$660$1_0$416 ==.
	XG$TIM2_GenerateEvent$0$0 ==.
	ret
	G$TIM2_OC1PolarityConfig$0$0 ==.
	C$stm8s_tim2.c$670$1_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
;	-----------------------------------------
;	 function TIM2_OC1PolarityConfig
;	-----------------------------------------
_TIM2_OC1PolarityConfig:
	C$stm8s_tim2.c$676$1_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$678$2_0$419 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
	bset	21256, #1
	jra	00104$
00102$:
	C$stm8s_tim2.c$682$2_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
	bres	21256, #1
00104$:
	C$stm8s_tim2.c$684$1_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 684: }
	C$stm8s_tim2.c$684$1_0$418 ==.
	XG$TIM2_OC1PolarityConfig$0$0 ==.
	ret
	G$TIM2_OC2PolarityConfig$0$0 ==.
	C$stm8s_tim2.c$694$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
;	-----------------------------------------
;	 function TIM2_OC2PolarityConfig
;	-----------------------------------------
_TIM2_OC2PolarityConfig:
	C$stm8s_tim2.c$700$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$702$2_0$423 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
	bset	21256, #5
	jra	00104$
00102$:
	C$stm8s_tim2.c$706$2_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
	bres	21256, #5
00104$:
	C$stm8s_tim2.c$708$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 708: }
	C$stm8s_tim2.c$708$1_0$422 ==.
	XG$TIM2_OC2PolarityConfig$0$0 ==.
	ret
	G$TIM2_OC3PolarityConfig$0$0 ==.
	C$stm8s_tim2.c$718$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
;	-----------------------------------------
;	 function TIM2_OC3PolarityConfig
;	-----------------------------------------
_TIM2_OC3PolarityConfig:
	C$stm8s_tim2.c$724$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim2.c$726$2_0$427 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
	bset	21257, #1
	jra	00104$
00102$:
	C$stm8s_tim2.c$730$2_0$428 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
	bres	21257, #1
00104$:
	C$stm8s_tim2.c$732$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 732: }
	C$stm8s_tim2.c$732$1_0$426 ==.
	XG$TIM2_OC3PolarityConfig$0$0 ==.
	ret
	G$TIM2_CCxCmd$0$0 ==.
	C$stm8s_tim2.c$745$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_CCxCmd
;	-----------------------------------------
_TIM2_CCxCmd:
	C$stm8s_tim2.c$751$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00114$
	C$stm8s_tim2.c$754$2_0$431 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 754: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim2.c$756$3_0$432 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
	bset	21256, #0
	jra	00116$
00102$:
	C$stm8s_tim2.c$760$3_0$433 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	bres	21256, #0
	jra	00116$
00114$:
	C$stm8s_tim2.c$764$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
	ld	a, (0x03, sp)
	dec	a
	jrne	00111$
	C$stm8s_tim2.c$767$2_0$434 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 767: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
	C$stm8s_tim2.c$769$3_0$435 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
	bset	21256, #4
	jra	00116$
00105$:
	C$stm8s_tim2.c$773$3_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	bres	21256, #4
	jra	00116$
00111$:
	C$stm8s_tim2.c$779$2_0$437 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 779: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00108$
	C$stm8s_tim2.c$781$3_0$438 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
	bset	21257, #0
	jra	00116$
00108$:
	C$stm8s_tim2.c$785$3_0$439 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
	bres	21257, #0
00116$:
	C$stm8s_tim2.c$788$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 788: }
	C$stm8s_tim2.c$788$1_0$430 ==.
	XG$TIM2_CCxCmd$0$0 ==.
	ret
	G$TIM2_SelectOCxM$0$0 ==.
	C$stm8s_tim2.c$810$1_0$441 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
;	-----------------------------------------
;	 function TIM2_SelectOCxM
;	-----------------------------------------
_TIM2_SelectOCxM:
	C$stm8s_tim2.c$816$1_0$441 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00105$
	C$stm8s_tim2.c$819$2_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	bres	21256, #0
	C$stm8s_tim2.c$822$2_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5305
	and	a, #0x8f
	C$stm8s_tim2.c$823$2_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
	or	a, (0x04, sp)
	ld	0x5305, a
	jra	00107$
00105$:
	C$stm8s_tim2.c$825$1_0$441 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
	ld	a, (0x03, sp)
	dec	a
	jrne	00102$
	C$stm8s_tim2.c$828$2_0$443 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	bres	21256, #4
	C$stm8s_tim2.c$831$2_0$443 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5306
	and	a, #0x8f
	C$stm8s_tim2.c$832$2_0$443 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
	or	a, (0x04, sp)
	ld	0x5306, a
	jra	00107$
00102$:
	C$stm8s_tim2.c$837$2_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
	bres	21257, #0
	C$stm8s_tim2.c$840$2_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5307
	and	a, #0x8f
	C$stm8s_tim2.c$841$2_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
	or	a, (0x04, sp)
	ld	0x5307, a
00107$:
	C$stm8s_tim2.c$843$1_0$441 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 843: }
	C$stm8s_tim2.c$843$1_0$441 ==.
	XG$TIM2_SelectOCxM$0$0 ==.
	ret
	G$TIM2_SetCounter$0$0 ==.
	C$stm8s_tim2.c$851$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
;	-----------------------------------------
;	 function TIM2_SetCounter
;	-----------------------------------------
_TIM2_SetCounter:
	sub	sp, #2
	C$stm8s_tim2.c$854$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x530a, a
	C$stm8s_tim2.c$855$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
	ld	a, (0x06, sp)
	ld	0x530b, a
	C$stm8s_tim2.c$856$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 856: }
	addw	sp, #2
	C$stm8s_tim2.c$856$1_0$446 ==.
	XG$TIM2_SetCounter$0$0 ==.
	ret
	G$TIM2_SetAutoreload$0$0 ==.
	C$stm8s_tim2.c$864$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
;	-----------------------------------------
;	 function TIM2_SetAutoreload
;	-----------------------------------------
_TIM2_SetAutoreload:
	sub	sp, #2
	C$stm8s_tim2.c$867$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x530d, a
	C$stm8s_tim2.c$868$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
	ld	a, (0x06, sp)
	ld	0x530e, a
	C$stm8s_tim2.c$869$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 869: }
	addw	sp, #2
	C$stm8s_tim2.c$869$1_0$448 ==.
	XG$TIM2_SetAutoreload$0$0 ==.
	ret
	G$TIM2_SetCompare1$0$0 ==.
	C$stm8s_tim2.c$877$1_0$450 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
;	-----------------------------------------
;	 function TIM2_SetCompare1
;	-----------------------------------------
_TIM2_SetCompare1:
	sub	sp, #2
	C$stm8s_tim2.c$880$1_0$450 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x530f, a
	C$stm8s_tim2.c$881$1_0$450 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
	ld	a, (0x06, sp)
	ld	0x5310, a
	C$stm8s_tim2.c$882$1_0$450 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 882: }
	addw	sp, #2
	C$stm8s_tim2.c$882$1_0$450 ==.
	XG$TIM2_SetCompare1$0$0 ==.
	ret
	G$TIM2_SetCompare2$0$0 ==.
	C$stm8s_tim2.c$890$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
;	-----------------------------------------
;	 function TIM2_SetCompare2
;	-----------------------------------------
_TIM2_SetCompare2:
	sub	sp, #2
	C$stm8s_tim2.c$893$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x5311, a
	C$stm8s_tim2.c$894$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
	ld	a, (0x06, sp)
	ld	0x5312, a
	C$stm8s_tim2.c$895$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 895: }
	addw	sp, #2
	C$stm8s_tim2.c$895$1_0$452 ==.
	XG$TIM2_SetCompare2$0$0 ==.
	ret
	G$TIM2_SetCompare3$0$0 ==.
	C$stm8s_tim2.c$903$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
;	-----------------------------------------
;	 function TIM2_SetCompare3
;	-----------------------------------------
_TIM2_SetCompare3:
	sub	sp, #2
	C$stm8s_tim2.c$906$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x5313, a
	C$stm8s_tim2.c$907$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
	ld	a, (0x06, sp)
	ld	0x5314, a
	C$stm8s_tim2.c$908$1_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 908: }
	addw	sp, #2
	C$stm8s_tim2.c$908$1_0$454 ==.
	XG$TIM2_SetCompare3$0$0 ==.
	ret
	G$TIM2_SetIC1Prescaler$0$0 ==.
	C$stm8s_tim2.c$920$1_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
;	-----------------------------------------
;	 function TIM2_SetIC1Prescaler
;	-----------------------------------------
_TIM2_SetIC1Prescaler:
	C$stm8s_tim2.c$926$1_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
	ld	a, 0x5305
	and	a, #0xf3
	C$stm8s_tim2.c$927$1_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
	or	a, (0x03, sp)
	ld	0x5305, a
	C$stm8s_tim2.c$928$1_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 928: }
	C$stm8s_tim2.c$928$1_0$456 ==.
	XG$TIM2_SetIC1Prescaler$0$0 ==.
	ret
	G$TIM2_SetIC2Prescaler$0$0 ==.
	C$stm8s_tim2.c$940$1_0$458 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
;	-----------------------------------------
;	 function TIM2_SetIC2Prescaler
;	-----------------------------------------
_TIM2_SetIC2Prescaler:
	C$stm8s_tim2.c$946$1_0$458 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
	ld	a, 0x5306
	and	a, #0xf3
	C$stm8s_tim2.c$947$1_0$458 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
	or	a, (0x03, sp)
	ld	0x5306, a
	C$stm8s_tim2.c$948$1_0$458 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 948: }
	C$stm8s_tim2.c$948$1_0$458 ==.
	XG$TIM2_SetIC2Prescaler$0$0 ==.
	ret
	G$TIM2_SetIC3Prescaler$0$0 ==.
	C$stm8s_tim2.c$960$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
;	-----------------------------------------
;	 function TIM2_SetIC3Prescaler
;	-----------------------------------------
_TIM2_SetIC3Prescaler:
	C$stm8s_tim2.c$966$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
	ld	a, 0x5307
	and	a, #0xf3
	C$stm8s_tim2.c$967$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
	or	a, (0x03, sp)
	ld	0x5307, a
	C$stm8s_tim2.c$968$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 968: }
	C$stm8s_tim2.c$968$1_0$460 ==.
	XG$TIM2_SetIC3Prescaler$0$0 ==.
	ret
	G$TIM2_GetCapture1$0$0 ==.
	C$stm8s_tim2.c$975$1_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
;	-----------------------------------------
;	 function TIM2_GetCapture1
;	-----------------------------------------
_TIM2_GetCapture1:
	sub	sp, #2
	C$stm8s_tim2.c$981$1_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
	ld	a, 0x530f
	ld	xh, a
	C$stm8s_tim2.c$982$1_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
	ld	a, 0x5310
	C$stm8s_tim2.c$984$1_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
	ld	xl, a
	clr	a
	C$stm8s_tim2.c$985$1_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
	clrw	y
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	C$stm8s_tim2.c$987$1_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
	C$stm8s_tim2.c$988$1_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 988: }
	addw	sp, #2
	C$stm8s_tim2.c$988$1_0$462 ==.
	XG$TIM2_GetCapture1$0$0 ==.
	ret
	G$TIM2_GetCapture2$0$0 ==.
	C$stm8s_tim2.c$995$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
;	-----------------------------------------
;	 function TIM2_GetCapture2
;	-----------------------------------------
_TIM2_GetCapture2:
	sub	sp, #2
	C$stm8s_tim2.c$1001$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
	ld	a, 0x5311
	ld	xh, a
	C$stm8s_tim2.c$1002$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
	ld	a, 0x5312
	C$stm8s_tim2.c$1004$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
	ld	xl, a
	clr	a
	C$stm8s_tim2.c$1005$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
	clrw	y
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	C$stm8s_tim2.c$1007$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
	C$stm8s_tim2.c$1008$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1008: }
	addw	sp, #2
	C$stm8s_tim2.c$1008$1_0$464 ==.
	XG$TIM2_GetCapture2$0$0 ==.
	ret
	G$TIM2_GetCapture3$0$0 ==.
	C$stm8s_tim2.c$1015$1_0$466 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
;	-----------------------------------------
;	 function TIM2_GetCapture3
;	-----------------------------------------
_TIM2_GetCapture3:
	sub	sp, #2
	C$stm8s_tim2.c$1021$1_0$466 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
	ld	a, 0x5313
	ld	xh, a
	C$stm8s_tim2.c$1022$1_0$466 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
	ld	a, 0x5314
	C$stm8s_tim2.c$1024$1_0$466 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
	ld	xl, a
	clr	a
	C$stm8s_tim2.c$1025$1_0$466 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
	clrw	y
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	C$stm8s_tim2.c$1027$1_0$466 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
	C$stm8s_tim2.c$1028$1_0$466 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1028: }
	addw	sp, #2
	C$stm8s_tim2.c$1028$1_0$466 ==.
	XG$TIM2_GetCapture3$0$0 ==.
	ret
	G$TIM2_GetCounter$0$0 ==.
	C$stm8s_tim2.c$1035$1_0$468 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
;	-----------------------------------------
;	 function TIM2_GetCounter
;	-----------------------------------------
_TIM2_GetCounter:
	sub	sp, #4
	C$stm8s_tim2.c$1039$1_0$468 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
	ld	a, 0x530a
	ld	xh, a
	clr	a
	ld	(0x04, sp), a
	C$stm8s_tim2.c$1041$1_0$468 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
	ld	a, 0x530b
	clr	(0x01, sp)
	or	a, (0x04, sp)
	rlwa	x
	or	a, (0x01, sp)
	ld	xh, a
	C$stm8s_tim2.c$1042$1_0$468 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1042: }
	addw	sp, #4
	C$stm8s_tim2.c$1042$1_0$468 ==.
	XG$TIM2_GetCounter$0$0 ==.
	ret
	G$TIM2_GetPrescaler$0$0 ==.
	C$stm8s_tim2.c$1049$1_0$470 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM2_GetPrescaler
;	-----------------------------------------
_TIM2_GetPrescaler:
	C$stm8s_tim2.c$1052$1_0$470 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
	ld	a, 0x530c
	C$stm8s_tim2.c$1053$1_0$470 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1053: }
	C$stm8s_tim2.c$1053$1_0$470 ==.
	XG$TIM2_GetPrescaler$0$0 ==.
	ret
	G$TIM2_GetFlagStatus$0$0 ==.
	C$stm8s_tim2.c$1068$1_0$472 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
;	-----------------------------------------
;	 function TIM2_GetFlagStatus
;	-----------------------------------------
_TIM2_GetFlagStatus:
	sub	sp, #5
	C$stm8s_tim2.c$1076$1_0$472 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
	ld	a, 0x5302
	ld	(0x01, sp), a
	ld	a, (0x09, sp)
	and	a, (0x01, sp)
	ld	(0x05, sp), a
	C$stm8s_tim2.c$1077$1_0$472 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
	ld	a, (0x08, sp)
	clr	(0x02, sp)
	ld	(0x04, sp), a
	C$stm8s_tim2.c$1079$1_0$472 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
	ld	a, 0x5303
	and	a, (0x04, sp)
	or	a, (0x05, sp)
	jreq	00102$
	C$stm8s_tim2.c$1081$2_0$473 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1081: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	C$stm8s_tim2.c$1085$2_0$474 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1085: bitstatus = RESET;
	clr	a
00103$:
	C$stm8s_tim2.c$1087$1_0$472 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
	C$stm8s_tim2.c$1088$1_0$472 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1088: }
	addw	sp, #5
	C$stm8s_tim2.c$1088$1_0$472 ==.
	XG$TIM2_GetFlagStatus$0$0 ==.
	ret
	G$TIM2_ClearFlag$0$0 ==.
	C$stm8s_tim2.c$1103$1_0$476 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
;	-----------------------------------------
;	 function TIM2_ClearFlag
;	-----------------------------------------
_TIM2_ClearFlag:
	C$stm8s_tim2.c$1109$1_0$476 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
	ld	a, (0x04, sp)
	cpl	a
	ld	0x5302, a
	C$stm8s_tim2.c$1111$1_0$476 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1111: TIM2->SR2 = (uint8_t)(~((uint8_t)(TIM2_FLAG >> 8))); // [Roshan, 2015-Nov-09]
	ld	a, (0x03, sp)
	cpl	a
	ld	0x5303, a
	C$stm8s_tim2.c$1112$1_0$476 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1112: }
	C$stm8s_tim2.c$1112$1_0$476 ==.
	XG$TIM2_ClearFlag$0$0 ==.
	ret
	G$TIM2_GetITStatus$0$0 ==.
	C$stm8s_tim2.c$1124$1_0$478 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1124: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
;	-----------------------------------------
;	 function TIM2_GetITStatus
;	-----------------------------------------
_TIM2_GetITStatus:
	push	a
	C$stm8s_tim2.c$1132$1_0$478 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1132: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
	ld	a, 0x5302
	and	a, (0x04, sp)
	ld	(0x01, sp), a
	C$stm8s_tim2.c$1134$1_0$478 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1134: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
	ld	a, 0x5301
	and	a, (0x04, sp)
	C$stm8s_tim2.c$1136$1_0$478 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1136: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
	C$stm8s_tim2.c$1138$2_0$479 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1138: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	C$stm8s_tim2.c$1142$2_0$480 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1142: bitstatus = RESET;
	clr	a
00103$:
	C$stm8s_tim2.c$1144$1_0$478 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1144: return (ITStatus)(bitstatus);
	C$stm8s_tim2.c$1145$1_0$478 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1145: }
	addw	sp, #1
	C$stm8s_tim2.c$1145$1_0$478 ==.
	XG$TIM2_GetITStatus$0$0 ==.
	ret
	G$TIM2_ClearITPendingBit$0$0 ==.
	C$stm8s_tim2.c$1157$1_0$482 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1157: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
;	-----------------------------------------
;	 function TIM2_ClearITPendingBit
;	-----------------------------------------
_TIM2_ClearITPendingBit:
	C$stm8s_tim2.c$1163$1_0$482 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1163: TIM2->SR1 = (uint8_t)(~TIM2_IT);
	ld	a, (0x03, sp)
	cpl	a
	ld	0x5302, a
	C$stm8s_tim2.c$1164$1_0$482 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1164: }
	C$stm8s_tim2.c$1164$1_0$482 ==.
	XG$TIM2_ClearITPendingBit$0$0 ==.
	ret
	Fstm8s_tim2$TI1_Config$0$0 ==.
	C$stm8s_tim2.c$1182$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1182: static void TI1_Config(uint8_t TIM2_ICPolarity,
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
_TI1_Config:
	push	a
	C$stm8s_tim2.c$1187$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1187: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	bres	21256, #0
	C$stm8s_tim2.c$1190$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1190: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
	ld	a, 0x5305
	and	a, #0x0c
	ld	(0x01, sp), a
	C$stm8s_tim2.c$1191$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1191: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5305, a
	C$stm8s_tim2.c$1194$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1194: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim2.c$1196$2_0$485 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1196: TIM2->CCER1 |= TIM2_CCER1_CC1P;
	bset	21256, #1
	jra	00103$
00102$:
	C$stm8s_tim2.c$1200$2_0$486 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1200: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
	bres	21256, #1
00103$:
	C$stm8s_tim2.c$1203$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1203: TIM2->CCER1 |= TIM2_CCER1_CC1E;
	bset	21256, #0
	C$stm8s_tim2.c$1204$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1204: }
	pop	a
	C$stm8s_tim2.c$1204$1_0$484 ==.
	XFstm8s_tim2$TI1_Config$0$0 ==.
	ret
	Fstm8s_tim2$TI2_Config$0$0 ==.
	C$stm8s_tim2.c$1222$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1222: static void TI2_Config(uint8_t TIM2_ICPolarity,
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
_TI2_Config:
	push	a
	C$stm8s_tim2.c$1227$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1227: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	bres	21256, #4
	C$stm8s_tim2.c$1230$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1230: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
	ld	a, 0x5306
	and	a, #0x0c
	ld	(0x01, sp), a
	C$stm8s_tim2.c$1231$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1231: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5306, a
	C$stm8s_tim2.c$1235$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1235: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim2.c$1237$2_0$489 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1237: TIM2->CCER1 |= TIM2_CCER1_CC2P;
	bset	21256, #5
	jra	00103$
00102$:
	C$stm8s_tim2.c$1241$2_0$490 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1241: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
	bres	21256, #5
00103$:
	C$stm8s_tim2.c$1245$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1245: TIM2->CCER1 |= TIM2_CCER1_CC2E;
	bset	21256, #4
	C$stm8s_tim2.c$1246$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1246: }
	pop	a
	C$stm8s_tim2.c$1246$1_0$488 ==.
	XFstm8s_tim2$TI2_Config$0$0 ==.
	ret
	Fstm8s_tim2$TI3_Config$0$0 ==.
	C$stm8s_tim2.c$1262$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1262: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
;	-----------------------------------------
;	 function TI3_Config
;	-----------------------------------------
_TI3_Config:
	push	a
	C$stm8s_tim2.c$1266$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1266: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
	bres	21257, #0
	C$stm8s_tim2.c$1269$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1269: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF)))
	ld	a, 0x5307
	and	a, #0x0c
	ld	(0x01, sp), a
	C$stm8s_tim2.c$1270$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1270: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5307, a
	C$stm8s_tim2.c$1274$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1274: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim2.c$1276$2_0$493 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1276: TIM2->CCER2 |= TIM2_CCER2_CC3P;
	bset	21257, #1
	jra	00103$
00102$:
	C$stm8s_tim2.c$1280$2_0$494 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1280: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
	bres	21257, #1
00103$:
	C$stm8s_tim2.c$1283$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1283: TIM2->CCER2 |= TIM2_CCER2_CC3E;
	bset	21257, #0
	C$stm8s_tim2.c$1284$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1284: }
	pop	a
	C$stm8s_tim2.c$1284$1_0$492 ==.
	XFstm8s_tim2$TI3_Config$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
