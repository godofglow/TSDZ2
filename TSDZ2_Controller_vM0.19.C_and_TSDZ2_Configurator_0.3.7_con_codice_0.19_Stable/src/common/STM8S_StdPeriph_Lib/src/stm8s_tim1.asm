;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module stm8s_tim1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_DeInit
	.globl _TIM1_TimeBaseInit
	.globl _TIM1_OC1Init
	.globl _TIM1_OC2Init
	.globl _TIM1_OC3Init
	.globl _TIM1_OC4Init
	.globl _TIM1_BDTRConfig
	.globl _TIM1_ICInit
	.globl _TIM1_PWMIConfig
	.globl _TIM1_Cmd
	.globl _TIM1_CtrlPWMOutputs
	.globl _TIM1_ITConfig
	.globl _TIM1_InternalClockConfig
	.globl _TIM1_ETRClockMode1Config
	.globl _TIM1_ETRClockMode2Config
	.globl _TIM1_ETRConfig
	.globl _TIM1_TIxExternalClockConfig
	.globl _TIM1_SelectInputTrigger
	.globl _TIM1_UpdateDisableConfig
	.globl _TIM1_UpdateRequestConfig
	.globl _TIM1_SelectHallSensor
	.globl _TIM1_SelectOnePulseMode
	.globl _TIM1_SelectOutputTrigger
	.globl _TIM1_SelectSlaveMode
	.globl _TIM1_SelectMasterSlaveMode
	.globl _TIM1_EncoderInterfaceConfig
	.globl _TIM1_PrescalerConfig
	.globl _TIM1_CounterModeConfig
	.globl _TIM1_ForcedOC1Config
	.globl _TIM1_ForcedOC2Config
	.globl _TIM1_ForcedOC3Config
	.globl _TIM1_ForcedOC4Config
	.globl _TIM1_ARRPreloadConfig
	.globl _TIM1_SelectCOM
	.globl _TIM1_CCPreloadControl
	.globl _TIM1_OC1PreloadConfig
	.globl _TIM1_OC2PreloadConfig
	.globl _TIM1_OC3PreloadConfig
	.globl _TIM1_OC4PreloadConfig
	.globl _TIM1_OC1FastConfig
	.globl _TIM1_OC2FastConfig
	.globl _TIM1_OC3FastConfig
	.globl _TIM1_OC4FastConfig
	.globl _TIM1_GenerateEvent
	.globl _TIM1_OC1PolarityConfig
	.globl _TIM1_OC1NPolarityConfig
	.globl _TIM1_OC2PolarityConfig
	.globl _TIM1_OC2NPolarityConfig
	.globl _TIM1_OC3PolarityConfig
	.globl _TIM1_OC3NPolarityConfig
	.globl _TIM1_OC4PolarityConfig
	.globl _TIM1_CCxCmd
	.globl _TIM1_CCxNCmd
	.globl _TIM1_SelectOCxM
	.globl _TIM1_SetCounter
	.globl _TIM1_SetAutoreload
	.globl _TIM1_SetCompare1
	.globl _TIM1_SetCompare2
	.globl _TIM1_SetCompare3
	.globl _TIM1_SetCompare4
	.globl _TIM1_SetIC1Prescaler
	.globl _TIM1_SetIC2Prescaler
	.globl _TIM1_SetIC3Prescaler
	.globl _TIM1_SetIC4Prescaler
	.globl _TIM1_GetCapture1
	.globl _TIM1_GetCapture2
	.globl _TIM1_GetCapture3
	.globl _TIM1_GetCapture4
	.globl _TIM1_GetCounter
	.globl _TIM1_GetPrescaler
	.globl _TIM1_GetFlagStatus
	.globl _TIM1_ClearFlag
	.globl _TIM1_GetITStatus
	.globl _TIM1_ClearITPendingBit
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
	G$TIM1_DeInit$0$0 ==.
	C$stm8s_tim1.c$58$0_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 58: void TIM1_DeInit(void)
;	-----------------------------------------
;	 function TIM1_DeInit
;	-----------------------------------------
_TIM1_DeInit:
	C$stm8s_tim1.c$60$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 60: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
	mov	0x5250+0, #0x00
	C$stm8s_tim1.c$61$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 61: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
	mov	0x5251+0, #0x00
	C$stm8s_tim1.c$62$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 62: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
	mov	0x5252+0, #0x00
	C$stm8s_tim1.c$63$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 63: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
	mov	0x5253+0, #0x00
	C$stm8s_tim1.c$64$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 64: TIM1->IER  = TIM1_IER_RESET_VALUE;
	mov	0x5254+0, #0x00
	C$stm8s_tim1.c$65$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 65: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
	mov	0x5256+0, #0x00
	C$stm8s_tim1.c$67$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 67: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
	mov	0x525c+0, #0x00
	C$stm8s_tim1.c$68$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 68: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
	mov	0x525d+0, #0x00
	C$stm8s_tim1.c$70$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 70: TIM1->CCMR1 = 0x01;
	mov	0x5258+0, #0x01
	C$stm8s_tim1.c$71$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 71: TIM1->CCMR2 = 0x01;
	mov	0x5259+0, #0x01
	C$stm8s_tim1.c$72$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 72: TIM1->CCMR3 = 0x01;
	mov	0x525a+0, #0x01
	C$stm8s_tim1.c$73$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 73: TIM1->CCMR4 = 0x01;
	mov	0x525b+0, #0x01
	C$stm8s_tim1.c$75$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 75: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
	mov	0x525c+0, #0x00
	C$stm8s_tim1.c$76$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 76: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
	mov	0x525d+0, #0x00
	C$stm8s_tim1.c$77$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 77: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
	mov	0x5258+0, #0x00
	C$stm8s_tim1.c$78$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 78: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
	mov	0x5259+0, #0x00
	C$stm8s_tim1.c$79$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 79: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
	mov	0x525a+0, #0x00
	C$stm8s_tim1.c$80$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 80: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
	mov	0x525b+0, #0x00
	C$stm8s_tim1.c$81$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 81: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
	mov	0x525e+0, #0x00
	C$stm8s_tim1.c$82$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 82: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
	mov	0x525f+0, #0x00
	C$stm8s_tim1.c$83$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 83: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
	mov	0x5260+0, #0x00
	C$stm8s_tim1.c$84$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 84: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
	mov	0x5261+0, #0x00
	C$stm8s_tim1.c$85$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 85: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
	mov	0x5262+0, #0xff
	C$stm8s_tim1.c$86$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 86: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
	mov	0x5263+0, #0xff
	C$stm8s_tim1.c$87$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 87: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
	mov	0x5265+0, #0x00
	C$stm8s_tim1.c$88$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 88: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
	mov	0x5266+0, #0x00
	C$stm8s_tim1.c$89$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 89: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
	mov	0x5267+0, #0x00
	C$stm8s_tim1.c$90$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 90: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
	mov	0x5268+0, #0x00
	C$stm8s_tim1.c$91$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 91: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
	mov	0x5269+0, #0x00
	C$stm8s_tim1.c$92$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 92: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
	mov	0x526a+0, #0x00
	C$stm8s_tim1.c$93$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 93: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
	mov	0x526b+0, #0x00
	C$stm8s_tim1.c$94$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 94: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
	mov	0x526c+0, #0x00
	C$stm8s_tim1.c$95$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 95: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
	mov	0x526f+0, #0x00
	C$stm8s_tim1.c$96$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 96: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
	mov	0x5257+0, #0x01
	C$stm8s_tim1.c$97$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 97: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
	mov	0x526e+0, #0x00
	C$stm8s_tim1.c$98$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 98: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
	mov	0x526d+0, #0x00
	C$stm8s_tim1.c$99$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 99: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
	mov	0x5264+0, #0x00
	C$stm8s_tim1.c$100$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 100: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
	mov	0x5255+0, #0x00
	C$stm8s_tim1.c$101$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 101: }
	C$stm8s_tim1.c$101$1_0$350 ==.
	XG$TIM1_DeInit$0$0 ==.
	ret
	G$TIM1_TimeBaseInit$0$0 ==.
	C$stm8s_tim1.c$111$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 111: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
;	-----------------------------------------
;	 function TIM1_TimeBaseInit
;	-----------------------------------------
_TIM1_TimeBaseInit:
	sub	sp, #4
	C$stm8s_tim1.c$120$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 120: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
	ld	a, (0x0a, sp)
	clr	(0x01, sp)
	ld	0x5262, a
	C$stm8s_tim1.c$121$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 121: TIM1->ARRL = (uint8_t)(TIM1_Period);
	ld	a, (0x0b, sp)
	ld	0x5263, a
	C$stm8s_tim1.c$124$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 124: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
	ld	a, (0x07, sp)
	clr	(0x03, sp)
	ld	0x5260, a
	C$stm8s_tim1.c$125$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 125: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
	ld	a, (0x08, sp)
	ld	0x5261, a
	C$stm8s_tim1.c$128$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 128: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
	ld	a, 0x5250
	and	a, #0x8f
	C$stm8s_tim1.c$129$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 129: | (uint8_t)(TIM1_CounterMode));
	or	a, (0x09, sp)
	ld	0x5250, a
	C$stm8s_tim1.c$132$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 132: TIM1->RCR = TIM1_RepetitionCounter;
	ldw	x, #0x5264
	ld	a, (0x0c, sp)
	ld	(x), a
	C$stm8s_tim1.c$133$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 133: }
	addw	sp, #4
	C$stm8s_tim1.c$133$1_0$352 ==.
	XG$TIM1_TimeBaseInit$0$0 ==.
	ret
	G$TIM1_OC1Init$0$0 ==.
	C$stm8s_tim1.c$154$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 154: void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC1Init
;	-----------------------------------------
_TIM1_OC1Init:
	sub	sp, #6
	C$stm8s_tim1.c$174$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 174: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
	ld	a, 0x525c
	and	a, #0xf0
	ld	0x525c, a
	C$stm8s_tim1.c$178$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 178: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
	ld	a, 0x525c
	ld	(0x02, sp), a
	ld	a, (0x0a, sp)
	and	a, #0x01
	ld	(0x01, sp), a
	C$stm8s_tim1.c$179$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 179: | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
	ld	a, (0x0b, sp)
	and	a, #0x04
	or	a, (0x01, sp)
	ld	(0x05, sp), a
	C$stm8s_tim1.c$180$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 180: | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
	ld	a, (0x0e, sp)
	and	a, #0x02
	ld	(0x06, sp), a
	C$stm8s_tim1.c$181$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 181: | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
	ld	a, (0x0f, sp)
	and	a, #0x08
	or	a, (0x06, sp)
	or	a, (0x05, sp)
	or	a, (0x02, sp)
	ld	0x525c, a
	C$stm8s_tim1.c$184$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 184: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ld	a, 0x5258
	and	a, #0x8f
	C$stm8s_tim1.c$185$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 185: (uint8_t)TIM1_OCMode);
	or	a, (0x09, sp)
	ld	0x5258, a
	C$stm8s_tim1.c$188$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 188: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
	ld	a, 0x526f
	and	a, #0xfc
	ld	0x526f, a
	C$stm8s_tim1.c$190$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 190: TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
	ld	a, 0x526f
	ld	(0x04, sp), a
	ld	a, (0x10, sp)
	and	a, #0x01
	ld	(0x03, sp), a
	C$stm8s_tim1.c$191$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 191: (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
	ld	a, (0x11, sp)
	and	a, #0x02
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	ld	0x526f, a
	C$stm8s_tim1.c$194$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 194: TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x0c, sp)
	ld	0x5265, a
	C$stm8s_tim1.c$195$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 195: TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x0d, sp)
	ld	0x5266, a
	C$stm8s_tim1.c$196$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 196: }
	addw	sp, #6
	C$stm8s_tim1.c$196$1_0$354 ==.
	XG$TIM1_OC1Init$0$0 ==.
	ret
	G$TIM1_OC2Init$0$0 ==.
	C$stm8s_tim1.c$217$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 217: void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC2Init
;	-----------------------------------------
_TIM1_OC2Init:
	sub	sp, #6
	C$stm8s_tim1.c$237$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 237: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
	ld	a, 0x525c
	and	a, #0x0f
	ld	0x525c, a
	C$stm8s_tim1.c$242$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 242: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
	ld	a, 0x525c
	ld	(0x06, sp), a
	ld	a, (0x0a, sp)
	and	a, #0x10
	ld	(0x05, sp), a
	C$stm8s_tim1.c$243$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 243: (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
	ld	a, (0x0b, sp)
	and	a, #0x40
	or	a, (0x05, sp)
	ld	(0x04, sp), a
	C$stm8s_tim1.c$244$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 244: (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
	ld	a, (0x0e, sp)
	and	a, #0x20
	ld	(0x03, sp), a
	C$stm8s_tim1.c$245$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 245: (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
	ld	a, (0x0f, sp)
	and	a, #0x80
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	or	a, (0x06, sp)
	ld	0x525c, a
	C$stm8s_tim1.c$248$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 248: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ld	a, 0x5259
	and	a, #0x8f
	C$stm8s_tim1.c$249$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 249: (uint8_t)TIM1_OCMode);
	or	a, (0x09, sp)
	ld	0x5259, a
	C$stm8s_tim1.c$252$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 252: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
	ld	a, 0x526f
	and	a, #0xf3
	ld	0x526f, a
	C$stm8s_tim1.c$254$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 254: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
	ld	a, 0x526f
	ld	(0x01, sp), a
	ld	a, (0x10, sp)
	and	a, #0x04
	ld	(0x02, sp), a
	C$stm8s_tim1.c$255$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 255: (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
	ld	a, (0x11, sp)
	and	a, #0x08
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x526f, a
	C$stm8s_tim1.c$258$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 258: TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x0c, sp)
	ld	0x5267, a
	C$stm8s_tim1.c$259$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 259: TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x0d, sp)
	ld	0x5268, a
	C$stm8s_tim1.c$260$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 260: }
	addw	sp, #6
	C$stm8s_tim1.c$260$1_0$356 ==.
	XG$TIM1_OC2Init$0$0 ==.
	ret
	G$TIM1_OC3Init$0$0 ==.
	C$stm8s_tim1.c$281$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 281: void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC3Init
;	-----------------------------------------
_TIM1_OC3Init:
	sub	sp, #6
	C$stm8s_tim1.c$301$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 301: TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
	ld	a, 0x525d
	and	a, #0xf0
	ld	0x525d, a
	C$stm8s_tim1.c$305$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 305: TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
	ld	a, 0x525d
	ld	(0x02, sp), a
	ld	a, (0x0a, sp)
	and	a, #0x01
	ld	(0x06, sp), a
	C$stm8s_tim1.c$306$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 306: (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
	ld	a, (0x0b, sp)
	and	a, #0x04
	or	a, (0x06, sp)
	ld	(0x04, sp), a
	C$stm8s_tim1.c$307$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 307: (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
	ld	a, (0x0e, sp)
	and	a, #0x02
	ld	(0x03, sp), a
	C$stm8s_tim1.c$308$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 308: (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
	ld	a, (0x0f, sp)
	and	a, #0x08
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	or	a, (0x02, sp)
	ld	0x525d, a
	C$stm8s_tim1.c$311$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 311: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ld	a, 0x525a
	and	a, #0x8f
	C$stm8s_tim1.c$312$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 312: (uint8_t)TIM1_OCMode);
	or	a, (0x09, sp)
	ld	0x525a, a
	C$stm8s_tim1.c$315$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 315: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
	ld	a, 0x526f
	and	a, #0xcf
	ld	0x526f, a
	C$stm8s_tim1.c$317$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 317: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
	ld	a, 0x526f
	ld	(0x05, sp), a
	ld	a, (0x10, sp)
	and	a, #0x10
	ld	(0x01, sp), a
	C$stm8s_tim1.c$318$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 318: (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
	ld	a, (0x11, sp)
	and	a, #0x20
	or	a, (0x01, sp)
	or	a, (0x05, sp)
	ld	0x526f, a
	C$stm8s_tim1.c$321$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 321: TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x0c, sp)
	ld	0x5269, a
	C$stm8s_tim1.c$322$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 322: TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x0d, sp)
	ld	0x526a, a
	C$stm8s_tim1.c$323$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 323: }
	addw	sp, #6
	C$stm8s_tim1.c$323$1_0$358 ==.
	XG$TIM1_OC3Init$0$0 ==.
	ret
	G$TIM1_OC4Init$0$0 ==.
	C$stm8s_tim1.c$338$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 338: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC4Init
;	-----------------------------------------
_TIM1_OC4Init:
	sub	sp, #2
	C$stm8s_tim1.c$351$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 351: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
	ld	a, 0x525d
	and	a, #0xcf
	ld	0x525d, a
	C$stm8s_tim1.c$353$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 353: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
	ld	a, 0x525d
	ld	(0x02, sp), a
	ld	a, (0x06, sp)
	and	a, #0x10
	ld	(0x01, sp), a
	C$stm8s_tim1.c$354$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 354: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
	ld	a, (0x09, sp)
	and	a, #0x20
	or	a, (0x01, sp)
	or	a, (0x02, sp)
	ld	0x525d, a
	C$stm8s_tim1.c$357$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 357: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ld	a, 0x525b
	and	a, #0x8f
	or	a, (0x05, sp)
	ld	0x525b, a
	C$stm8s_tim1.c$361$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 361: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
	tnz	(0x0a, sp)
	jreq	00102$
	C$stm8s_tim1.c$363$2_0$361 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
	ld	a, 0x526f
	or	a, #0xdf
	ld	0x526f, a
	jra	00103$
00102$:
	C$stm8s_tim1.c$367$2_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 367: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
	bres	21103, #6
00103$:
	C$stm8s_tim1.c$371$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 371: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x526b, a
	C$stm8s_tim1.c$372$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 372: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x08, sp)
	ld	0x526c, a
	C$stm8s_tim1.c$373$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 373: }
	addw	sp, #2
	C$stm8s_tim1.c$373$1_0$360 ==.
	XG$TIM1_OC4Init$0$0 ==.
	ret
	G$TIM1_BDTRConfig$0$0 ==.
	C$stm8s_tim1.c$388$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 388: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
;	-----------------------------------------
;	 function TIM1_BDTRConfig
;	-----------------------------------------
_TIM1_BDTRConfig:
	push	a
	C$stm8s_tim1.c$402$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 402: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
	ldw	x, #0x526e
	ld	a, (0x06, sp)
	ld	(x), a
	C$stm8s_tim1.c$406$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 406: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
	ld	a, (0x04, sp)
	or	a, (0x05, sp)
	ld	(0x01, sp), a
	C$stm8s_tim1.c$407$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 407: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
	ld	a, (0x07, sp)
	or	a, (0x08, sp)
	C$stm8s_tim1.c$408$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 408: (uint8_t)TIM1_AutomaticOutput));
	or	a, (0x09, sp)
	or	a, (0x01, sp)
	ld	0x526d, a
	C$stm8s_tim1.c$409$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 409: }
	pop	a
	C$stm8s_tim1.c$409$1_0$364 ==.
	XG$TIM1_BDTRConfig$0$0 ==.
	ret
	G$TIM1_ICInit$0$0 ==.
	C$stm8s_tim1.c$423$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 423: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
;	-----------------------------------------
;	 function TIM1_ICInit
;	-----------------------------------------
_TIM1_ICInit:
	C$stm8s_tim1.c$436$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 436: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00108$
	C$stm8s_tim1.c$439$2_0$367 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 439: TI1_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	C$stm8s_tim1.c$443$2_0$367 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 443: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM1_SetIC1Prescaler
	pop	a
	jp	00110$
00108$:
	C$stm8s_tim1.c$445$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 445: else if (TIM1_Channel == TIM1_CHANNEL_2)
	ld	a, (0x03, sp)
	dec	a
	jrne	00105$
	C$stm8s_tim1.c$448$2_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 448: TI2_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	C$stm8s_tim1.c$452$2_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 452: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM1_SetIC2Prescaler
	pop	a
	jra	00110$
00105$:
	C$stm8s_tim1.c$454$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 454: else if (TIM1_Channel == TIM1_CHANNEL_3)
	ld	a, (0x03, sp)
	cp	a, #0x02
	jrne	00102$
	C$stm8s_tim1.c$457$2_0$369 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 457: TI3_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI3_Config
	addw	sp, #3
	C$stm8s_tim1.c$461$2_0$369 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 461: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM1_SetIC3Prescaler
	pop	a
	jra	00110$
00102$:
	C$stm8s_tim1.c$466$2_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 466: TI4_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI4_Config
	addw	sp, #3
	C$stm8s_tim1.c$470$2_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 470: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM1_SetIC4Prescaler
	pop	a
00110$:
	C$stm8s_tim1.c$472$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 472: }
	C$stm8s_tim1.c$472$1_0$366 ==.
	XG$TIM1_ICInit$0$0 ==.
	ret
	G$TIM1_PWMIConfig$0$0 ==.
	C$stm8s_tim1.c$488$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 488: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
;	-----------------------------------------
;	 function TIM1_PWMIConfig
;	-----------------------------------------
_TIM1_PWMIConfig:
	sub	sp, #2
	C$stm8s_tim1.c$504$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 504: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
	ld	a, (0x06, sp)
	dec	a
	jreq	00102$
	C$stm8s_tim1.c$506$2_0$373 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 506: icpolarity = TIM1_ICPOLARITY_FALLING;
	ld	a, #0x01
	ld	(0x02, sp), a
	jra	00103$
00102$:
	C$stm8s_tim1.c$510$2_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 510: icpolarity = TIM1_ICPOLARITY_RISING;
	clr	(0x02, sp)
00103$:
	C$stm8s_tim1.c$514$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 514: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
	ld	a, (0x07, sp)
	dec	a
	jrne	00105$
	C$stm8s_tim1.c$516$2_0$375 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 516: icselection = TIM1_ICSELECTION_INDIRECTTI;
	ld	a, #0x02
	ld	(0x01, sp), a
	jra	00106$
00105$:
	C$stm8s_tim1.c$520$2_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 520: icselection = TIM1_ICSELECTION_DIRECTTI;
	ld	a, #0x01
	ld	(0x01, sp), a
00106$:
	C$stm8s_tim1.c$523$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 523: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00108$
	C$stm8s_tim1.c$526$2_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 526: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	C$stm8s_tim1.c$530$2_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 530: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC1Prescaler
	pop	a
	C$stm8s_tim1.c$533$2_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 533: TI2_Config(icpolarity, icselection, TIM1_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	C$stm8s_tim1.c$536$2_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 536: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC2Prescaler
	pop	a
	jra	00110$
00108$:
	C$stm8s_tim1.c$541$2_0$378 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 541: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	C$stm8s_tim1.c$545$2_0$378 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 545: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC2Prescaler
	pop	a
	C$stm8s_tim1.c$548$2_0$378 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 548: TI1_Config(icpolarity, icselection, TIM1_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	C$stm8s_tim1.c$551$2_0$378 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 551: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC1Prescaler
	pop	a
00110$:
	C$stm8s_tim1.c$553$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 553: }
	addw	sp, #2
	C$stm8s_tim1.c$553$1_0$372 ==.
	XG$TIM1_PWMIConfig$0$0 ==.
	ret
	G$TIM1_Cmd$0$0 ==.
	C$stm8s_tim1.c$561$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 561: void TIM1_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_Cmd
;	-----------------------------------------
_TIM1_Cmd:
	C$stm8s_tim1.c$567$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 567: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$569$2_0$381 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
	bset	21072, #0
	jra	00104$
00102$:
	C$stm8s_tim1.c$573$2_0$382 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 573: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
	bres	21072, #0
00104$:
	C$stm8s_tim1.c$575$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 575: }
	C$stm8s_tim1.c$575$1_0$380 ==.
	XG$TIM1_Cmd$0$0 ==.
	ret
	G$TIM1_CtrlPWMOutputs$0$0 ==.
	C$stm8s_tim1.c$583$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 583: void TIM1_CtrlPWMOutputs(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CtrlPWMOutputs
;	-----------------------------------------
_TIM1_CtrlPWMOutputs:
	C$stm8s_tim1.c$590$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 590: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$592$2_0$385 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
	bset	21101, #7
	jra	00104$
00102$:
	C$stm8s_tim1.c$596$2_0$386 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 596: TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
	bres	21101, #7
00104$:
	C$stm8s_tim1.c$598$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 598: }
	C$stm8s_tim1.c$598$1_0$384 ==.
	XG$TIM1_CtrlPWMOutputs$0$0 ==.
	ret
	G$TIM1_ITConfig$0$0 ==.
	C$stm8s_tim1.c$617$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 617: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_ITConfig
;	-----------------------------------------
_TIM1_ITConfig:
	push	a
	C$stm8s_tim1.c$623$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 623: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	C$stm8s_tim1.c$626$2_0$389 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
	ld	a, 0x5254
	or	a, (0x04, sp)
	ld	0x5254, a
	jra	00104$
00102$:
	C$stm8s_tim1.c$631$2_0$390 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 631: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
	ld	a, 0x5254
	ld	(0x01, sp), a
	ld	a, (0x04, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	0x5254, a
00104$:
	C$stm8s_tim1.c$633$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 633: }
	pop	a
	C$stm8s_tim1.c$633$1_0$388 ==.
	XG$TIM1_ITConfig$0$0 ==.
	ret
	G$TIM1_InternalClockConfig$0$0 ==.
	C$stm8s_tim1.c$640$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 640: void TIM1_InternalClockConfig(void)
;	-----------------------------------------
;	 function TIM1_InternalClockConfig
;	-----------------------------------------
_TIM1_InternalClockConfig:
	C$stm8s_tim1.c$643$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 643: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
	ld	a, 0x5252
	and	a, #0xf8
	ld	0x5252, a
	C$stm8s_tim1.c$644$1_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 644: }
	C$stm8s_tim1.c$644$1_0$392 ==.
	XG$TIM1_InternalClockConfig$0$0 ==.
	ret
	G$TIM1_ETRClockMode1Config$0$0 ==.
	C$stm8s_tim1.c$662$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 662: void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
;	-----------------------------------------
;	 function TIM1_ETRClockMode1Config
;	-----------------------------------------
_TIM1_ETRClockMode1Config:
	C$stm8s_tim1.c$671$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 671: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	call	_TIM1_ETRConfig
	addw	sp, #3
	C$stm8s_tim1.c$674$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 674: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
	ld	a, 0x5252
	and	a, #0x88
	or	a, #0x77
	ld	0x5252, a
	C$stm8s_tim1.c$676$1_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 676: }
	C$stm8s_tim1.c$676$1_0$394 ==.
	XG$TIM1_ETRClockMode1Config$0$0 ==.
	ret
	G$TIM1_ETRClockMode2Config$0$0 ==.
	C$stm8s_tim1.c$694$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 694: void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
;	-----------------------------------------
;	 function TIM1_ETRClockMode2Config
;	-----------------------------------------
_TIM1_ETRClockMode2Config:
	C$stm8s_tim1.c$703$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 703: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	call	_TIM1_ETRConfig
	addw	sp, #3
	C$stm8s_tim1.c$706$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 706: TIM1->ETR |= TIM1_ETR_ECE;
	bset	21075, #6
	C$stm8s_tim1.c$707$1_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 707: }
	C$stm8s_tim1.c$707$1_0$396 ==.
	XG$TIM1_ETRClockMode2Config$0$0 ==.
	ret
	G$TIM1_ETRConfig$0$0 ==.
	C$stm8s_tim1.c$725$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 725: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
;	-----------------------------------------
;	 function TIM1_ETRConfig
;	-----------------------------------------
_TIM1_ETRConfig:
	push	a
	C$stm8s_tim1.c$732$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 732: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
	ld	a, 0x5253
	ld	(0x01, sp), a
	ld	a, (0x04, sp)
	or	a, (0x05, sp)
	C$stm8s_tim1.c$733$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 733: (uint8_t)ExtTRGFilter );
	or	a, (0x06, sp)
	or	a, (0x01, sp)
	ld	0x5253, a
	C$stm8s_tim1.c$734$1_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 734: }
	pop	a
	C$stm8s_tim1.c$734$1_0$398 ==.
	XG$TIM1_ETRConfig$0$0 ==.
	ret
	G$TIM1_TIxExternalClockConfig$0$0 ==.
	C$stm8s_tim1.c$751$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 751: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
;	-----------------------------------------
;	 function TIM1_TIxExternalClockConfig
;	-----------------------------------------
_TIM1_TIxExternalClockConfig:
	C$stm8s_tim1.c$761$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 761: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
	ld	a, (0x03, sp)
	cp	a, #0x60
	jrne	00102$
	C$stm8s_tim1.c$763$2_0$401 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 763: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
	ld	a, (0x05, sp)
	push	a
	push	#0x01
	ld	a, (0x06, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	jra	00103$
00102$:
	C$stm8s_tim1.c$767$2_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 767: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
	ld	a, (0x05, sp)
	push	a
	push	#0x01
	ld	a, (0x06, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
00103$:
	C$stm8s_tim1.c$771$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 771: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
	ld	a, (0x03, sp)
	push	a
	call	_TIM1_SelectInputTrigger
	pop	a
	C$stm8s_tim1.c$774$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 774: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
	ld	a, 0x5252
	or	a, #0x07
	ld	0x5252, a
	C$stm8s_tim1.c$775$1_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 775: }
	C$stm8s_tim1.c$775$1_0$400 ==.
	XG$TIM1_TIxExternalClockConfig$0$0 ==.
	ret
	G$TIM1_SelectInputTrigger$0$0 ==.
	C$stm8s_tim1.c$787$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 787: void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
;	-----------------------------------------
;	 function TIM1_SelectInputTrigger
;	-----------------------------------------
_TIM1_SelectInputTrigger:
	C$stm8s_tim1.c$793$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 793: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
	ld	a, 0x5252
	and	a, #0x8f
	or	a, (0x03, sp)
	ld	0x5252, a
	C$stm8s_tim1.c$794$1_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 794: }
	C$stm8s_tim1.c$794$1_0$404 ==.
	XG$TIM1_SelectInputTrigger$0$0 ==.
	ret
	G$TIM1_UpdateDisableConfig$0$0 ==.
	C$stm8s_tim1.c$803$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 803: void TIM1_UpdateDisableConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_UpdateDisableConfig
;	-----------------------------------------
_TIM1_UpdateDisableConfig:
	C$stm8s_tim1.c$809$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 809: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$811$2_0$407 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
	bset	21072, #1
	jra	00104$
00102$:
	C$stm8s_tim1.c$815$2_0$408 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 815: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
	bres	21072, #1
00104$:
	C$stm8s_tim1.c$817$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 817: }
	C$stm8s_tim1.c$817$1_0$406 ==.
	XG$TIM1_UpdateDisableConfig$0$0 ==.
	ret
	G$TIM1_UpdateRequestConfig$0$0 ==.
	C$stm8s_tim1.c$827$1_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 827: void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
;	-----------------------------------------
;	 function TIM1_UpdateRequestConfig
;	-----------------------------------------
_TIM1_UpdateRequestConfig:
	C$stm8s_tim1.c$833$1_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 833: if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$835$2_0$411 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
	bset	21072, #2
	jra	00104$
00102$:
	C$stm8s_tim1.c$839$2_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 839: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
	bres	21072, #2
00104$:
	C$stm8s_tim1.c$841$1_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 841: }
	C$stm8s_tim1.c$841$1_0$410 ==.
	XG$TIM1_UpdateRequestConfig$0$0 ==.
	ret
	G$TIM1_SelectHallSensor$0$0 ==.
	C$stm8s_tim1.c$849$1_0$414 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 849: void TIM1_SelectHallSensor(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_SelectHallSensor
;	-----------------------------------------
_TIM1_SelectHallSensor:
	C$stm8s_tim1.c$855$1_0$414 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 855: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$857$2_0$415 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
	bset	21073, #7
	jra	00104$
00102$:
	C$stm8s_tim1.c$861$2_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 861: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
	bres	21073, #7
00104$:
	C$stm8s_tim1.c$863$1_0$414 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 863: }
	C$stm8s_tim1.c$863$1_0$414 ==.
	XG$TIM1_SelectHallSensor$0$0 ==.
	ret
	G$TIM1_SelectOnePulseMode$0$0 ==.
	C$stm8s_tim1.c$873$1_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 873: void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
;	-----------------------------------------
;	 function TIM1_SelectOnePulseMode
;	-----------------------------------------
_TIM1_SelectOnePulseMode:
	C$stm8s_tim1.c$879$1_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 879: if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$881$2_0$419 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
	bset	21072, #3
	jra	00104$
00102$:
	C$stm8s_tim1.c$885$2_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 885: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
	bres	21072, #3
00104$:
	C$stm8s_tim1.c$888$1_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 888: }
	C$stm8s_tim1.c$888$1_0$418 ==.
	XG$TIM1_SelectOnePulseMode$0$0 ==.
	ret
	G$TIM1_SelectOutputTrigger$0$0 ==.
	C$stm8s_tim1.c$903$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 903: void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
;	-----------------------------------------
;	 function TIM1_SelectOutputTrigger
;	-----------------------------------------
_TIM1_SelectOutputTrigger:
	C$stm8s_tim1.c$909$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 909: TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
	ld	a, 0x5251
	and	a, #0x8f
	C$stm8s_tim1.c$910$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 910: (uint8_t) TIM1_TRGOSource);
	or	a, (0x03, sp)
	ld	0x5251, a
	C$stm8s_tim1.c$911$1_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 911: }
	C$stm8s_tim1.c$911$1_0$422 ==.
	XG$TIM1_SelectOutputTrigger$0$0 ==.
	ret
	G$TIM1_SelectSlaveMode$0$0 ==.
	C$stm8s_tim1.c$923$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 923: void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
;	-----------------------------------------
;	 function TIM1_SelectSlaveMode
;	-----------------------------------------
_TIM1_SelectSlaveMode:
	C$stm8s_tim1.c$929$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 929: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
	ld	a, 0x5252
	and	a, #0xf8
	C$stm8s_tim1.c$930$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 930: (uint8_t)TIM1_SlaveMode);
	or	a, (0x03, sp)
	ld	0x5252, a
	C$stm8s_tim1.c$931$1_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 931: }
	C$stm8s_tim1.c$931$1_0$424 ==.
	XG$TIM1_SelectSlaveMode$0$0 ==.
	ret
	G$TIM1_SelectMasterSlaveMode$0$0 ==.
	C$stm8s_tim1.c$939$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 939: void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_SelectMasterSlaveMode
;	-----------------------------------------
_TIM1_SelectMasterSlaveMode:
	C$stm8s_tim1.c$945$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 945: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$947$2_0$427 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
	bset	21074, #7
	jra	00104$
00102$:
	C$stm8s_tim1.c$951$2_0$428 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 951: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
	bres	21074, #7
00104$:
	C$stm8s_tim1.c$953$1_0$426 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 953: }
	C$stm8s_tim1.c$953$1_0$426 ==.
	XG$TIM1_SelectMasterSlaveMode$0$0 ==.
	ret
	G$TIM1_EncoderInterfaceConfig$0$0 ==.
	C$stm8s_tim1.c$975$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 975: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
;	-----------------------------------------
;	 function TIM1_EncoderInterfaceConfig
;	-----------------------------------------
_TIM1_EncoderInterfaceConfig:
	C$stm8s_tim1.c$985$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 985: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim1.c$987$2_0$431 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
	bset	21084, #1
	jra	00103$
00102$:
	C$stm8s_tim1.c$991$2_0$432 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 991: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
	bres	21084, #1
00103$:
	C$stm8s_tim1.c$994$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 994: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x05, sp)
	jreq	00105$
	C$stm8s_tim1.c$996$2_0$433 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 996: TIM1->CCER1 |= TIM1_CCER1_CC2P;
	bset	21084, #5
	jra	00106$
00105$:
	C$stm8s_tim1.c$1000$2_0$434 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1000: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
	bres	21084, #5
00106$:
	C$stm8s_tim1.c$1003$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1003: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
	ld	a, 0x5252
	and	a, #0xf0
	C$stm8s_tim1.c$1004$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1004: | (uint8_t) TIM1_EncoderMode);
	or	a, (0x03, sp)
	ld	0x5252, a
	C$stm8s_tim1.c$1007$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1007: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
	ld	a, 0x5258
	and	a, #0xfc
	or	a, #0x01
	ld	0x5258, a
	C$stm8s_tim1.c$1009$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1009: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
	ld	a, 0x5259
	and	a, #0xfc
	or	a, #0x01
	ld	0x5259, a
	C$stm8s_tim1.c$1011$1_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1011: }
	C$stm8s_tim1.c$1011$1_0$430 ==.
	XG$TIM1_EncoderInterfaceConfig$0$0 ==.
	ret
	G$TIM1_PrescalerConfig$0$0 ==.
	C$stm8s_tim1.c$1023$1_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1023: void TIM1_PrescalerConfig(uint16_t Prescaler,
;	-----------------------------------------
;	 function TIM1_PrescalerConfig
;	-----------------------------------------
_TIM1_PrescalerConfig:
	sub	sp, #2
	C$stm8s_tim1.c$1030$1_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1030: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x5260, a
	C$stm8s_tim1.c$1031$1_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1031: TIM1->PSCRL = (uint8_t)(Prescaler);
	ld	a, (0x06, sp)
	ld	0x5261, a
	C$stm8s_tim1.c$1034$1_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1034: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
	ldw	x, #0x5257
	ld	a, (0x07, sp)
	ld	(x), a
	C$stm8s_tim1.c$1035$1_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1035: }
	addw	sp, #2
	C$stm8s_tim1.c$1035$1_0$436 ==.
	XG$TIM1_PrescalerConfig$0$0 ==.
	ret
	G$TIM1_CounterModeConfig$0$0 ==.
	C$stm8s_tim1.c$1048$1_0$438 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1048: void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
;	-----------------------------------------
;	 function TIM1_CounterModeConfig
;	-----------------------------------------
_TIM1_CounterModeConfig:
	C$stm8s_tim1.c$1055$1_0$438 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1055: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
	ld	a, 0x5250
	and	a, #0x8f
	C$stm8s_tim1.c$1056$1_0$438 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1056: | (uint8_t)TIM1_CounterMode);
	or	a, (0x03, sp)
	ld	0x5250, a
	C$stm8s_tim1.c$1057$1_0$438 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1057: }
	C$stm8s_tim1.c$1057$1_0$438 ==.
	XG$TIM1_CounterModeConfig$0$0 ==.
	ret
	G$TIM1_ForcedOC1Config$0$0 ==.
	C$stm8s_tim1.c$1067$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1067: void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
;	-----------------------------------------
;	 function TIM1_ForcedOC1Config
;	-----------------------------------------
_TIM1_ForcedOC1Config:
	C$stm8s_tim1.c$1073$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1073: TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
	ld	a, 0x5258
	and	a, #0x8f
	C$stm8s_tim1.c$1074$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1074: (uint8_t)TIM1_ForcedAction);
	or	a, (0x03, sp)
	ld	0x5258, a
	C$stm8s_tim1.c$1075$1_0$440 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1075: }
	C$stm8s_tim1.c$1075$1_0$440 ==.
	XG$TIM1_ForcedOC1Config$0$0 ==.
	ret
	G$TIM1_ForcedOC2Config$0$0 ==.
	C$stm8s_tim1.c$1085$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1085: void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
;	-----------------------------------------
;	 function TIM1_ForcedOC2Config
;	-----------------------------------------
_TIM1_ForcedOC2Config:
	C$stm8s_tim1.c$1091$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1091: TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
	ld	a, 0x5259
	and	a, #0x8f
	C$stm8s_tim1.c$1092$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1092: | (uint8_t)TIM1_ForcedAction);
	or	a, (0x03, sp)
	ld	0x5259, a
	C$stm8s_tim1.c$1093$1_0$442 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1093: }
	C$stm8s_tim1.c$1093$1_0$442 ==.
	XG$TIM1_ForcedOC2Config$0$0 ==.
	ret
	G$TIM1_ForcedOC3Config$0$0 ==.
	C$stm8s_tim1.c$1104$1_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1104: void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
;	-----------------------------------------
;	 function TIM1_ForcedOC3Config
;	-----------------------------------------
_TIM1_ForcedOC3Config:
	C$stm8s_tim1.c$1110$1_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1110: TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
	ld	a, 0x525a
	and	a, #0x8f
	C$stm8s_tim1.c$1111$1_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1111: | (uint8_t)TIM1_ForcedAction);
	or	a, (0x03, sp)
	ld	0x525a, a
	C$stm8s_tim1.c$1112$1_0$444 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1112: }
	C$stm8s_tim1.c$1112$1_0$444 ==.
	XG$TIM1_ForcedOC3Config$0$0 ==.
	ret
	G$TIM1_ForcedOC4Config$0$0 ==.
	C$stm8s_tim1.c$1123$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1123: void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
;	-----------------------------------------
;	 function TIM1_ForcedOC4Config
;	-----------------------------------------
_TIM1_ForcedOC4Config:
	C$stm8s_tim1.c$1129$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1129: TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ld	a, 0x525b
	and	a, #0x8f
	C$stm8s_tim1.c$1130$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1130: | (uint8_t)TIM1_ForcedAction);
	or	a, (0x03, sp)
	ld	0x525b, a
	C$stm8s_tim1.c$1131$1_0$446 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1131: }
	C$stm8s_tim1.c$1131$1_0$446 ==.
	XG$TIM1_ForcedOC4Config$0$0 ==.
	ret
	G$TIM1_ARRPreloadConfig$0$0 ==.
	C$stm8s_tim1.c$1139$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1139: void TIM1_ARRPreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_ARRPreloadConfig
;	-----------------------------------------
_TIM1_ARRPreloadConfig:
	C$stm8s_tim1.c$1145$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1145: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1147$2_0$449 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
	bset	21072, #7
	jra	00104$
00102$:
	C$stm8s_tim1.c$1151$2_0$450 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1151: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
	bres	21072, #7
00104$:
	C$stm8s_tim1.c$1153$1_0$448 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1153: }
	C$stm8s_tim1.c$1153$1_0$448 ==.
	XG$TIM1_ARRPreloadConfig$0$0 ==.
	ret
	G$TIM1_SelectCOM$0$0 ==.
	C$stm8s_tim1.c$1161$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1161: void TIM1_SelectCOM(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_SelectCOM
;	-----------------------------------------
_TIM1_SelectCOM:
	C$stm8s_tim1.c$1167$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1167: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1169$2_0$453 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
	bset	21073, #2
	jra	00104$
00102$:
	C$stm8s_tim1.c$1173$2_0$454 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1173: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
	bres	21073, #2
00104$:
	C$stm8s_tim1.c$1175$1_0$452 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1175: }
	C$stm8s_tim1.c$1175$1_0$452 ==.
	XG$TIM1_SelectCOM$0$0 ==.
	ret
	G$TIM1_CCPreloadControl$0$0 ==.
	C$stm8s_tim1.c$1183$1_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1183: void TIM1_CCPreloadControl(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CCPreloadControl
;	-----------------------------------------
_TIM1_CCPreloadControl:
	C$stm8s_tim1.c$1189$1_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1189: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1191$2_0$457 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
	bset	21073, #0
	jra	00104$
00102$:
	C$stm8s_tim1.c$1195$2_0$458 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1195: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
	bres	21073, #0
00104$:
	C$stm8s_tim1.c$1197$1_0$456 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1197: }
	C$stm8s_tim1.c$1197$1_0$456 ==.
	XG$TIM1_CCPreloadControl$0$0 ==.
	ret
	G$TIM1_OC1PreloadConfig$0$0 ==.
	C$stm8s_tim1.c$1205$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1205: void TIM1_OC1PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC1PreloadConfig
;	-----------------------------------------
_TIM1_OC1PreloadConfig:
	C$stm8s_tim1.c$1211$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1211: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1213$2_0$461 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
	bset	21080, #3
	jra	00104$
00102$:
	C$stm8s_tim1.c$1217$2_0$462 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1217: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
	bres	21080, #3
00104$:
	C$stm8s_tim1.c$1219$1_0$460 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1219: }
	C$stm8s_tim1.c$1219$1_0$460 ==.
	XG$TIM1_OC1PreloadConfig$0$0 ==.
	ret
	G$TIM1_OC2PreloadConfig$0$0 ==.
	C$stm8s_tim1.c$1227$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1227: void TIM1_OC2PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC2PreloadConfig
;	-----------------------------------------
_TIM1_OC2PreloadConfig:
	C$stm8s_tim1.c$1233$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1233: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1235$2_0$465 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
	bset	21081, #3
	jra	00104$
00102$:
	C$stm8s_tim1.c$1239$2_0$466 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1239: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
	bres	21081, #3
00104$:
	C$stm8s_tim1.c$1241$1_0$464 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1241: }
	C$stm8s_tim1.c$1241$1_0$464 ==.
	XG$TIM1_OC2PreloadConfig$0$0 ==.
	ret
	G$TIM1_OC3PreloadConfig$0$0 ==.
	C$stm8s_tim1.c$1249$1_0$468 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1249: void TIM1_OC3PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC3PreloadConfig
;	-----------------------------------------
_TIM1_OC3PreloadConfig:
	C$stm8s_tim1.c$1255$1_0$468 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1255: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1257$2_0$469 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
	bset	21082, #3
	jra	00104$
00102$:
	C$stm8s_tim1.c$1261$2_0$470 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1261: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
	bres	21082, #3
00104$:
	C$stm8s_tim1.c$1263$1_0$468 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1263: }
	C$stm8s_tim1.c$1263$1_0$468 ==.
	XG$TIM1_OC3PreloadConfig$0$0 ==.
	ret
	G$TIM1_OC4PreloadConfig$0$0 ==.
	C$stm8s_tim1.c$1271$1_0$472 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1271: void TIM1_OC4PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC4PreloadConfig
;	-----------------------------------------
_TIM1_OC4PreloadConfig:
	C$stm8s_tim1.c$1277$1_0$472 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1277: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1279$2_0$473 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
	bset	21083, #3
	jra	00104$
00102$:
	C$stm8s_tim1.c$1283$2_0$474 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1283: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
	bres	21083, #3
00104$:
	C$stm8s_tim1.c$1285$1_0$472 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1285: }
	C$stm8s_tim1.c$1285$1_0$472 ==.
	XG$TIM1_OC4PreloadConfig$0$0 ==.
	ret
	G$TIM1_OC1FastConfig$0$0 ==.
	C$stm8s_tim1.c$1293$1_0$476 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1293: void TIM1_OC1FastConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC1FastConfig
;	-----------------------------------------
_TIM1_OC1FastConfig:
	C$stm8s_tim1.c$1299$1_0$476 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1299: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1301$2_0$477 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
	bset	21080, #2
	jra	00104$
00102$:
	C$stm8s_tim1.c$1305$2_0$478 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1305: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
	bres	21080, #2
00104$:
	C$stm8s_tim1.c$1307$1_0$476 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1307: }
	C$stm8s_tim1.c$1307$1_0$476 ==.
	XG$TIM1_OC1FastConfig$0$0 ==.
	ret
	G$TIM1_OC2FastConfig$0$0 ==.
	C$stm8s_tim1.c$1315$1_0$480 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1315: void TIM1_OC2FastConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC2FastConfig
;	-----------------------------------------
_TIM1_OC2FastConfig:
	C$stm8s_tim1.c$1321$1_0$480 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1321: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1323$2_0$481 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
	bset	21081, #2
	jra	00104$
00102$:
	C$stm8s_tim1.c$1327$2_0$482 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1327: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
	bres	21081, #2
00104$:
	C$stm8s_tim1.c$1329$1_0$480 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1329: }
	C$stm8s_tim1.c$1329$1_0$480 ==.
	XG$TIM1_OC2FastConfig$0$0 ==.
	ret
	G$TIM1_OC3FastConfig$0$0 ==.
	C$stm8s_tim1.c$1337$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1337: void TIM1_OC3FastConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC3FastConfig
;	-----------------------------------------
_TIM1_OC3FastConfig:
	C$stm8s_tim1.c$1343$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1343: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1345$2_0$485 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
	bset	21082, #2
	jra	00104$
00102$:
	C$stm8s_tim1.c$1349$2_0$486 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1349: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
	bres	21082, #2
00104$:
	C$stm8s_tim1.c$1351$1_0$484 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1351: }
	C$stm8s_tim1.c$1351$1_0$484 ==.
	XG$TIM1_OC3FastConfig$0$0 ==.
	ret
	G$TIM1_OC4FastConfig$0$0 ==.
	C$stm8s_tim1.c$1359$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1359: void TIM1_OC4FastConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC4FastConfig
;	-----------------------------------------
_TIM1_OC4FastConfig:
	C$stm8s_tim1.c$1365$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1365: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1367$2_0$489 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
	bset	21083, #2
	jra	00104$
00102$:
	C$stm8s_tim1.c$1371$2_0$490 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1371: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
	bres	21083, #2
00104$:
	C$stm8s_tim1.c$1373$1_0$488 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1373: }
	C$stm8s_tim1.c$1373$1_0$488 ==.
	XG$TIM1_OC4FastConfig$0$0 ==.
	ret
	G$TIM1_GenerateEvent$0$0 ==.
	C$stm8s_tim1.c$1389$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1389: void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
;	-----------------------------------------
;	 function TIM1_GenerateEvent
;	-----------------------------------------
_TIM1_GenerateEvent:
	C$stm8s_tim1.c$1395$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1395: TIM1->EGR = (uint8_t)TIM1_EventSource;
	ldw	x, #0x5257
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_tim1.c$1396$1_0$492 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1396: }
	C$stm8s_tim1.c$1396$1_0$492 ==.
	XG$TIM1_GenerateEvent$0$0 ==.
	ret
	G$TIM1_OC1PolarityConfig$0$0 ==.
	C$stm8s_tim1.c$1406$1_0$494 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1406: void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
;	-----------------------------------------
;	 function TIM1_OC1PolarityConfig
;	-----------------------------------------
_TIM1_OC1PolarityConfig:
	C$stm8s_tim1.c$1412$1_0$494 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1412: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1414$2_0$495 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
	bset	21084, #1
	jra	00104$
00102$:
	C$stm8s_tim1.c$1418$2_0$496 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1418: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
	bres	21084, #1
00104$:
	C$stm8s_tim1.c$1420$1_0$494 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1420: }
	C$stm8s_tim1.c$1420$1_0$494 ==.
	XG$TIM1_OC1PolarityConfig$0$0 ==.
	ret
	G$TIM1_OC1NPolarityConfig$0$0 ==.
	C$stm8s_tim1.c$1430$1_0$498 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1430: void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
;	-----------------------------------------
;	 function TIM1_OC1NPolarityConfig
;	-----------------------------------------
_TIM1_OC1NPolarityConfig:
	C$stm8s_tim1.c$1436$1_0$498 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1436: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1438$2_0$499 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
	bset	21084, #3
	jra	00104$
00102$:
	C$stm8s_tim1.c$1442$2_0$500 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1442: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
	bres	21084, #3
00104$:
	C$stm8s_tim1.c$1444$1_0$498 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1444: }
	C$stm8s_tim1.c$1444$1_0$498 ==.
	XG$TIM1_OC1NPolarityConfig$0$0 ==.
	ret
	G$TIM1_OC2PolarityConfig$0$0 ==.
	C$stm8s_tim1.c$1454$1_0$502 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1454: void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
;	-----------------------------------------
;	 function TIM1_OC2PolarityConfig
;	-----------------------------------------
_TIM1_OC2PolarityConfig:
	C$stm8s_tim1.c$1460$1_0$502 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1460: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1462$2_0$503 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
	bset	21084, #5
	jra	00104$
00102$:
	C$stm8s_tim1.c$1466$2_0$504 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1466: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
	bres	21084, #5
00104$:
	C$stm8s_tim1.c$1468$1_0$502 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1468: }
	C$stm8s_tim1.c$1468$1_0$502 ==.
	XG$TIM1_OC2PolarityConfig$0$0 ==.
	ret
	G$TIM1_OC2NPolarityConfig$0$0 ==.
	C$stm8s_tim1.c$1478$1_0$506 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1478: void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
;	-----------------------------------------
;	 function TIM1_OC2NPolarityConfig
;	-----------------------------------------
_TIM1_OC2NPolarityConfig:
	C$stm8s_tim1.c$1484$1_0$506 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1484: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1486$2_0$507 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
	bset	21084, #7
	jra	00104$
00102$:
	C$stm8s_tim1.c$1490$2_0$508 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1490: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
	bres	21084, #7
00104$:
	C$stm8s_tim1.c$1492$1_0$506 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1492: }
	C$stm8s_tim1.c$1492$1_0$506 ==.
	XG$TIM1_OC2NPolarityConfig$0$0 ==.
	ret
	G$TIM1_OC3PolarityConfig$0$0 ==.
	C$stm8s_tim1.c$1502$1_0$510 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1502: void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
;	-----------------------------------------
;	 function TIM1_OC3PolarityConfig
;	-----------------------------------------
_TIM1_OC3PolarityConfig:
	C$stm8s_tim1.c$1508$1_0$510 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1508: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1510$2_0$511 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
	bset	21085, #1
	jra	00104$
00102$:
	C$stm8s_tim1.c$1514$2_0$512 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1514: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
	bres	21085, #1
00104$:
	C$stm8s_tim1.c$1516$1_0$510 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1516: }
	C$stm8s_tim1.c$1516$1_0$510 ==.
	XG$TIM1_OC3PolarityConfig$0$0 ==.
	ret
	G$TIM1_OC3NPolarityConfig$0$0 ==.
	C$stm8s_tim1.c$1527$1_0$514 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1527: void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
;	-----------------------------------------
;	 function TIM1_OC3NPolarityConfig
;	-----------------------------------------
_TIM1_OC3NPolarityConfig:
	C$stm8s_tim1.c$1533$1_0$514 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1533: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1535$2_0$515 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
	bset	21085, #3
	jra	00104$
00102$:
	C$stm8s_tim1.c$1539$2_0$516 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1539: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
	bres	21085, #3
00104$:
	C$stm8s_tim1.c$1541$1_0$514 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1541: }
	C$stm8s_tim1.c$1541$1_0$514 ==.
	XG$TIM1_OC3NPolarityConfig$0$0 ==.
	ret
	G$TIM1_OC4PolarityConfig$0$0 ==.
	C$stm8s_tim1.c$1551$1_0$518 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1551: void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
;	-----------------------------------------
;	 function TIM1_OC4PolarityConfig
;	-----------------------------------------
_TIM1_OC4PolarityConfig:
	C$stm8s_tim1.c$1557$1_0$518 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1557: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_tim1.c$1559$2_0$519 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
	bset	21085, #5
	jra	00104$
00102$:
	C$stm8s_tim1.c$1563$2_0$520 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1563: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
	bres	21085, #5
00104$:
	C$stm8s_tim1.c$1565$1_0$518 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1565: }
	C$stm8s_tim1.c$1565$1_0$518 ==.
	XG$TIM1_OC4PolarityConfig$0$0 ==.
	ret
	G$TIM1_CCxCmd$0$0 ==.
	C$stm8s_tim1.c$1579$1_0$522 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1579: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CCxCmd
;	-----------------------------------------
_TIM1_CCxCmd:
	C$stm8s_tim1.c$1585$1_0$522 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1585: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00120$
	C$stm8s_tim1.c$1588$2_0$523 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1588: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim1.c$1590$3_0$524 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
	bset	21084, #0
	jra	00122$
00102$:
	C$stm8s_tim1.c$1594$3_0$525 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1594: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	bres	21084, #0
	jra	00122$
00120$:
	C$stm8s_tim1.c$1598$1_0$522 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1598: else if (TIM1_Channel == TIM1_CHANNEL_2)
	ld	a, (0x03, sp)
	dec	a
	jrne	00117$
	C$stm8s_tim1.c$1601$2_0$526 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1601: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
	C$stm8s_tim1.c$1603$3_0$527 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1603: TIM1->CCER1 |= TIM1_CCER1_CC2E;
	bset	21084, #4
	jra	00122$
00105$:
	C$stm8s_tim1.c$1607$3_0$528 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1607: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
	bres	21084, #4
	jra	00122$
00117$:
	C$stm8s_tim1.c$1610$1_0$522 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1610: else if (TIM1_Channel == TIM1_CHANNEL_3)
	ld	a, (0x03, sp)
	cp	a, #0x02
	jrne	00114$
	C$stm8s_tim1.c$1613$2_0$529 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1613: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00108$
	C$stm8s_tim1.c$1615$3_0$530 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
	bset	21085, #0
	jra	00122$
00108$:
	C$stm8s_tim1.c$1619$3_0$531 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1619: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
	bres	21085, #0
	jra	00122$
00114$:
	C$stm8s_tim1.c$1625$2_0$532 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1625: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00111$
	C$stm8s_tim1.c$1627$3_0$533 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1627: TIM1->CCER2 |= TIM1_CCER2_CC4E;
	bset	21085, #4
	jra	00122$
00111$:
	C$stm8s_tim1.c$1631$3_0$534 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1631: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
	bres	21085, #4
00122$:
	C$stm8s_tim1.c$1634$1_0$522 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1634: }
	C$stm8s_tim1.c$1634$1_0$522 ==.
	XG$TIM1_CCxCmd$0$0 ==.
	ret
	G$TIM1_CCxNCmd$0$0 ==.
	C$stm8s_tim1.c$1647$1_0$536 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1647: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CCxNCmd
;	-----------------------------------------
_TIM1_CCxNCmd:
	C$stm8s_tim1.c$1653$1_0$536 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1653: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00114$
	C$stm8s_tim1.c$1656$2_0$537 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1656: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim1.c$1658$3_0$538 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
	bset	21084, #2
	jra	00116$
00102$:
	C$stm8s_tim1.c$1662$3_0$539 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1662: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
	bres	21084, #2
	jra	00116$
00114$:
	C$stm8s_tim1.c$1665$1_0$536 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1665: else if (TIM1_Channel == TIM1_CHANNEL_2)
	ld	a, (0x03, sp)
	dec	a
	jrne	00111$
	C$stm8s_tim1.c$1668$2_0$540 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1668: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
	C$stm8s_tim1.c$1670$3_0$541 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1670: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
	bset	21084, #6
	jra	00116$
00105$:
	C$stm8s_tim1.c$1674$3_0$542 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1674: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
	bres	21084, #6
	jra	00116$
00111$:
	C$stm8s_tim1.c$1680$2_0$543 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1680: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00108$
	C$stm8s_tim1.c$1682$3_0$544 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
	bset	21085, #2
	jra	00116$
00108$:
	C$stm8s_tim1.c$1686$3_0$545 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1686: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
	bres	21085, #2
00116$:
	C$stm8s_tim1.c$1689$1_0$536 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1689: }
	C$stm8s_tim1.c$1689$1_0$536 ==.
	XG$TIM1_CCxNCmd$0$0 ==.
	ret
	G$TIM1_SelectOCxM$0$0 ==.
	C$stm8s_tim1.c$1712$1_0$547 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1712: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
;	-----------------------------------------
;	 function TIM1_SelectOCxM
;	-----------------------------------------
_TIM1_SelectOCxM:
	C$stm8s_tim1.c$1718$1_0$547 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1718: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00108$
	C$stm8s_tim1.c$1721$2_0$548 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1721: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	bres	21084, #0
	C$stm8s_tim1.c$1724$2_0$548 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1724: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ld	a, 0x5258
	and	a, #0x8f
	C$stm8s_tim1.c$1725$2_0$548 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1725: | (uint8_t)TIM1_OCMode);
	or	a, (0x04, sp)
	ld	0x5258, a
	jra	00110$
00108$:
	C$stm8s_tim1.c$1727$1_0$547 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1727: else if (TIM1_Channel == TIM1_CHANNEL_2)
	ld	a, (0x03, sp)
	dec	a
	jrne	00105$
	C$stm8s_tim1.c$1730$2_0$549 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1730: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
	bres	21084, #4
	C$stm8s_tim1.c$1733$2_0$549 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1733: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
	ld	a, 0x5259
	and	a, #0x8f
	C$stm8s_tim1.c$1734$2_0$549 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1734: | (uint8_t)TIM1_OCMode);
	or	a, (0x04, sp)
	ld	0x5259, a
	jra	00110$
00105$:
	C$stm8s_tim1.c$1736$1_0$547 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1736: else if (TIM1_Channel == TIM1_CHANNEL_3)
	ld	a, (0x03, sp)
	cp	a, #0x02
	jrne	00102$
	C$stm8s_tim1.c$1739$2_0$550 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
	ld	a, 0x525d
	and	a, #0xfe
	ld	0x525d, a
	C$stm8s_tim1.c$1742$2_0$550 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1742: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ld	a, 0x525a
	and	a, #0x8f
	C$stm8s_tim1.c$1743$2_0$550 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1743: | (uint8_t)TIM1_OCMode);
	or	a, (0x04, sp)
	ld	0x525a, a
	jra	00110$
00102$:
	C$stm8s_tim1.c$1748$2_0$551 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1748: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
	bres	21085, #4
	C$stm8s_tim1.c$1751$2_0$551 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1751: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ld	a, 0x525b
	and	a, #0x8f
	C$stm8s_tim1.c$1752$2_0$551 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1752: | (uint8_t)TIM1_OCMode);
	or	a, (0x04, sp)
	ld	0x525b, a
00110$:
	C$stm8s_tim1.c$1754$1_0$547 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1754: }
	C$stm8s_tim1.c$1754$1_0$547 ==.
	XG$TIM1_SelectOCxM$0$0 ==.
	ret
	G$TIM1_SetCounter$0$0 ==.
	C$stm8s_tim1.c$1762$1_0$553 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1762: void TIM1_SetCounter(uint16_t Counter)
;	-----------------------------------------
;	 function TIM1_SetCounter
;	-----------------------------------------
_TIM1_SetCounter:
	sub	sp, #2
	C$stm8s_tim1.c$1765$1_0$553 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1765: TIM1->CNTRH = (uint8_t)(Counter >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x525e, a
	C$stm8s_tim1.c$1766$1_0$553 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1766: TIM1->CNTRL = (uint8_t)(Counter);
	ld	a, (0x06, sp)
	ld	0x525f, a
	C$stm8s_tim1.c$1767$1_0$553 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1767: }
	addw	sp, #2
	C$stm8s_tim1.c$1767$1_0$553 ==.
	XG$TIM1_SetCounter$0$0 ==.
	ret
	G$TIM1_SetAutoreload$0$0 ==.
	C$stm8s_tim1.c$1775$1_0$555 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1775: void TIM1_SetAutoreload(uint16_t Autoreload)
;	-----------------------------------------
;	 function TIM1_SetAutoreload
;	-----------------------------------------
_TIM1_SetAutoreload:
	sub	sp, #2
	C$stm8s_tim1.c$1778$1_0$555 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1778: TIM1->ARRH = (uint8_t)(Autoreload >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x5262, a
	C$stm8s_tim1.c$1779$1_0$555 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1779: TIM1->ARRL = (uint8_t)(Autoreload);
	ld	a, (0x06, sp)
	ld	0x5263, a
	C$stm8s_tim1.c$1780$1_0$555 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1780: }
	addw	sp, #2
	C$stm8s_tim1.c$1780$1_0$555 ==.
	XG$TIM1_SetAutoreload$0$0 ==.
	ret
	G$TIM1_SetCompare1$0$0 ==.
	C$stm8s_tim1.c$1788$1_0$557 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1788: void TIM1_SetCompare1(uint16_t Compare1)
;	-----------------------------------------
;	 function TIM1_SetCompare1
;	-----------------------------------------
_TIM1_SetCompare1:
	sub	sp, #2
	C$stm8s_tim1.c$1791$1_0$557 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1791: TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x5265, a
	C$stm8s_tim1.c$1792$1_0$557 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1792: TIM1->CCR1L = (uint8_t)(Compare1);
	ld	a, (0x06, sp)
	ld	0x5266, a
	C$stm8s_tim1.c$1793$1_0$557 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1793: }
	addw	sp, #2
	C$stm8s_tim1.c$1793$1_0$557 ==.
	XG$TIM1_SetCompare1$0$0 ==.
	ret
	G$TIM1_SetCompare2$0$0 ==.
	C$stm8s_tim1.c$1801$1_0$559 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1801: void TIM1_SetCompare2(uint16_t Compare2)
;	-----------------------------------------
;	 function TIM1_SetCompare2
;	-----------------------------------------
_TIM1_SetCompare2:
	sub	sp, #2
	C$stm8s_tim1.c$1804$1_0$559 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1804: TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x5267, a
	C$stm8s_tim1.c$1805$1_0$559 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1805: TIM1->CCR2L = (uint8_t)(Compare2);
	ld	a, (0x06, sp)
	ld	0x5268, a
	C$stm8s_tim1.c$1806$1_0$559 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1806: }
	addw	sp, #2
	C$stm8s_tim1.c$1806$1_0$559 ==.
	XG$TIM1_SetCompare2$0$0 ==.
	ret
	G$TIM1_SetCompare3$0$0 ==.
	C$stm8s_tim1.c$1814$1_0$561 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1814: void TIM1_SetCompare3(uint16_t Compare3)
;	-----------------------------------------
;	 function TIM1_SetCompare3
;	-----------------------------------------
_TIM1_SetCompare3:
	sub	sp, #2
	C$stm8s_tim1.c$1817$1_0$561 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1817: TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x5269, a
	C$stm8s_tim1.c$1818$1_0$561 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1818: TIM1->CCR3L = (uint8_t)(Compare3);
	ld	a, (0x06, sp)
	ld	0x526a, a
	C$stm8s_tim1.c$1819$1_0$561 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1819: }
	addw	sp, #2
	C$stm8s_tim1.c$1819$1_0$561 ==.
	XG$TIM1_SetCompare3$0$0 ==.
	ret
	G$TIM1_SetCompare4$0$0 ==.
	C$stm8s_tim1.c$1827$1_0$563 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1827: void TIM1_SetCompare4(uint16_t Compare4)
;	-----------------------------------------
;	 function TIM1_SetCompare4
;	-----------------------------------------
_TIM1_SetCompare4:
	sub	sp, #2
	C$stm8s_tim1.c$1830$1_0$563 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1830: TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ld	0x526b, a
	C$stm8s_tim1.c$1831$1_0$563 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1831: TIM1->CCR4L = (uint8_t)(Compare4);
	ld	a, (0x06, sp)
	ld	0x526c, a
	C$stm8s_tim1.c$1832$1_0$563 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1832: }
	addw	sp, #2
	C$stm8s_tim1.c$1832$1_0$563 ==.
	XG$TIM1_SetCompare4$0$0 ==.
	ret
	G$TIM1_SetIC1Prescaler$0$0 ==.
	C$stm8s_tim1.c$1844$1_0$565 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1844: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
;	-----------------------------------------
;	 function TIM1_SetIC1Prescaler
;	-----------------------------------------
_TIM1_SetIC1Prescaler:
	C$stm8s_tim1.c$1850$1_0$565 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1850: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
	ld	a, 0x5258
	and	a, #0xf3
	C$stm8s_tim1.c$1851$1_0$565 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1851: | (uint8_t)TIM1_IC1Prescaler);
	or	a, (0x03, sp)
	ld	0x5258, a
	C$stm8s_tim1.c$1852$1_0$565 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1852: }
	C$stm8s_tim1.c$1852$1_0$565 ==.
	XG$TIM1_SetIC1Prescaler$0$0 ==.
	ret
	G$TIM1_SetIC2Prescaler$0$0 ==.
	C$stm8s_tim1.c$1864$1_0$567 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1864: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
;	-----------------------------------------
;	 function TIM1_SetIC2Prescaler
;	-----------------------------------------
_TIM1_SetIC2Prescaler:
	C$stm8s_tim1.c$1871$1_0$567 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1871: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
	ld	a, 0x5259
	and	a, #0xf3
	C$stm8s_tim1.c$1872$1_0$567 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1872: | (uint8_t)TIM1_IC2Prescaler);
	or	a, (0x03, sp)
	ld	0x5259, a
	C$stm8s_tim1.c$1873$1_0$567 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1873: }
	C$stm8s_tim1.c$1873$1_0$567 ==.
	XG$TIM1_SetIC2Prescaler$0$0 ==.
	ret
	G$TIM1_SetIC3Prescaler$0$0 ==.
	C$stm8s_tim1.c$1885$1_0$569 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1885: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
;	-----------------------------------------
;	 function TIM1_SetIC3Prescaler
;	-----------------------------------------
_TIM1_SetIC3Prescaler:
	C$stm8s_tim1.c$1892$1_0$569 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1892: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
	ld	a, 0x525a
	and	a, #0xf3
	C$stm8s_tim1.c$1893$1_0$569 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1893: (uint8_t)TIM1_IC3Prescaler);
	or	a, (0x03, sp)
	ld	0x525a, a
	C$stm8s_tim1.c$1894$1_0$569 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1894: }
	C$stm8s_tim1.c$1894$1_0$569 ==.
	XG$TIM1_SetIC3Prescaler$0$0 ==.
	ret
	G$TIM1_SetIC4Prescaler$0$0 ==.
	C$stm8s_tim1.c$1906$1_0$571 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1906: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
;	-----------------------------------------
;	 function TIM1_SetIC4Prescaler
;	-----------------------------------------
_TIM1_SetIC4Prescaler:
	C$stm8s_tim1.c$1913$1_0$571 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1913: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
	ld	a, 0x525b
	and	a, #0xf3
	C$stm8s_tim1.c$1914$1_0$571 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1914: (uint8_t)TIM1_IC4Prescaler);
	or	a, (0x03, sp)
	ld	0x525b, a
	C$stm8s_tim1.c$1915$1_0$571 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1915: }
	C$stm8s_tim1.c$1915$1_0$571 ==.
	XG$TIM1_SetIC4Prescaler$0$0 ==.
	ret
	G$TIM1_GetCapture1$0$0 ==.
	C$stm8s_tim1.c$1922$1_0$573 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1922: uint16_t TIM1_GetCapture1(void)
;	-----------------------------------------
;	 function TIM1_GetCapture1
;	-----------------------------------------
_TIM1_GetCapture1:
	sub	sp, #2
	C$stm8s_tim1.c$1929$1_0$573 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1929: tmpccr1h = TIM1->CCR1H;
	ld	a, 0x5265
	ld	xh, a
	C$stm8s_tim1.c$1930$1_0$573 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1930: tmpccr1l = TIM1->CCR1L;
	ld	a, 0x5266
	C$stm8s_tim1.c$1932$1_0$573 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1932: tmpccr1 = (uint16_t)(tmpccr1l);
	ld	xl, a
	clr	a
	C$stm8s_tim1.c$1933$1_0$573 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1933: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
	clrw	y
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	C$stm8s_tim1.c$1935$1_0$573 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1935: return (uint16_t)tmpccr1;
	C$stm8s_tim1.c$1936$1_0$573 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1936: }
	addw	sp, #2
	C$stm8s_tim1.c$1936$1_0$573 ==.
	XG$TIM1_GetCapture1$0$0 ==.
	ret
	G$TIM1_GetCapture2$0$0 ==.
	C$stm8s_tim1.c$1943$1_0$575 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1943: uint16_t TIM1_GetCapture2(void)
;	-----------------------------------------
;	 function TIM1_GetCapture2
;	-----------------------------------------
_TIM1_GetCapture2:
	sub	sp, #2
	C$stm8s_tim1.c$1950$1_0$575 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1950: tmpccr2h = TIM1->CCR2H;
	ld	a, 0x5267
	ld	xh, a
	C$stm8s_tim1.c$1951$1_0$575 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1951: tmpccr2l = TIM1->CCR2L;
	ld	a, 0x5268
	C$stm8s_tim1.c$1953$1_0$575 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1953: tmpccr2 = (uint16_t)(tmpccr2l);
	ld	xl, a
	clr	a
	C$stm8s_tim1.c$1954$1_0$575 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1954: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
	clrw	y
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	C$stm8s_tim1.c$1956$1_0$575 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1956: return (uint16_t)tmpccr2;
	C$stm8s_tim1.c$1957$1_0$575 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1957: }
	addw	sp, #2
	C$stm8s_tim1.c$1957$1_0$575 ==.
	XG$TIM1_GetCapture2$0$0 ==.
	ret
	G$TIM1_GetCapture3$0$0 ==.
	C$stm8s_tim1.c$1964$1_0$577 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1964: uint16_t TIM1_GetCapture3(void)
;	-----------------------------------------
;	 function TIM1_GetCapture3
;	-----------------------------------------
_TIM1_GetCapture3:
	sub	sp, #2
	C$stm8s_tim1.c$1970$1_0$577 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1970: tmpccr3h = TIM1->CCR3H;
	ld	a, 0x5269
	ld	xh, a
	C$stm8s_tim1.c$1971$1_0$577 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1971: tmpccr3l = TIM1->CCR3L;
	ld	a, 0x526a
	C$stm8s_tim1.c$1973$1_0$577 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1973: tmpccr3 = (uint16_t)(tmpccr3l);
	ld	xl, a
	clr	a
	C$stm8s_tim1.c$1974$1_0$577 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1974: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
	clrw	y
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	C$stm8s_tim1.c$1976$1_0$577 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1976: return (uint16_t)tmpccr3;
	C$stm8s_tim1.c$1977$1_0$577 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1977: }
	addw	sp, #2
	C$stm8s_tim1.c$1977$1_0$577 ==.
	XG$TIM1_GetCapture3$0$0 ==.
	ret
	G$TIM1_GetCapture4$0$0 ==.
	C$stm8s_tim1.c$1984$1_0$579 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1984: uint16_t TIM1_GetCapture4(void)
;	-----------------------------------------
;	 function TIM1_GetCapture4
;	-----------------------------------------
_TIM1_GetCapture4:
	sub	sp, #2
	C$stm8s_tim1.c$1990$1_0$579 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1990: tmpccr4h = TIM1->CCR4H;
	ld	a, 0x526b
	ld	xh, a
	C$stm8s_tim1.c$1991$1_0$579 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1991: tmpccr4l = TIM1->CCR4L;
	ld	a, 0x526c
	C$stm8s_tim1.c$1993$1_0$579 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1993: tmpccr4 = (uint16_t)(tmpccr4l);
	ld	xl, a
	clr	a
	C$stm8s_tim1.c$1994$1_0$579 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1994: tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
	clrw	y
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	C$stm8s_tim1.c$1996$1_0$579 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1996: return (uint16_t)tmpccr4;
	C$stm8s_tim1.c$1997$1_0$579 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1997: }
	addw	sp, #2
	C$stm8s_tim1.c$1997$1_0$579 ==.
	XG$TIM1_GetCapture4$0$0 ==.
	ret
	G$TIM1_GetCounter$0$0 ==.
	C$stm8s_tim1.c$2004$1_0$581 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2004: uint16_t TIM1_GetCounter(void)
;	-----------------------------------------
;	 function TIM1_GetCounter
;	-----------------------------------------
_TIM1_GetCounter:
	sub	sp, #4
	C$stm8s_tim1.c$2008$1_0$581 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2008: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
	ld	a, 0x525e
	ld	xh, a
	clr	a
	ld	(0x02, sp), a
	C$stm8s_tim1.c$2011$1_0$581 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2011: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
	ld	a, 0x525f
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	C$stm8s_tim1.c$2012$1_0$581 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2012: }
	addw	sp, #4
	C$stm8s_tim1.c$2012$1_0$581 ==.
	XG$TIM1_GetCounter$0$0 ==.
	ret
	G$TIM1_GetPrescaler$0$0 ==.
	C$stm8s_tim1.c$2019$1_0$583 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2019: uint16_t TIM1_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM1_GetPrescaler
;	-----------------------------------------
_TIM1_GetPrescaler:
	sub	sp, #4
	C$stm8s_tim1.c$2023$1_0$583 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2023: temp = ((uint16_t)TIM1->PSCRH << 8);
	ld	a, 0x5260
	ld	xh, a
	clr	a
	ld	(0x04, sp), a
	C$stm8s_tim1.c$2026$1_0$583 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2026: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
	ld	a, 0x5261
	clr	(0x01, sp)
	or	a, (0x04, sp)
	rlwa	x
	or	a, (0x01, sp)
	ld	xh, a
	C$stm8s_tim1.c$2027$1_0$583 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2027: }
	addw	sp, #4
	C$stm8s_tim1.c$2027$1_0$583 ==.
	XG$TIM1_GetPrescaler$0$0 ==.
	ret
	G$TIM1_GetFlagStatus$0$0 ==.
	C$stm8s_tim1.c$2047$1_0$585 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2047: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
;	-----------------------------------------
;	 function TIM1_GetFlagStatus
;	-----------------------------------------
_TIM1_GetFlagStatus:
	sub	sp, #5
	C$stm8s_tim1.c$2055$1_0$585 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2055: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
	ld	a, 0x5255
	ld	(0x03, sp), a
	ld	a, (0x09, sp)
	and	a, (0x03, sp)
	ld	(0x04, sp), a
	C$stm8s_tim1.c$2056$1_0$585 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2056: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
	ld	a, (0x08, sp)
	clr	(0x01, sp)
	ld	(0x05, sp), a
	C$stm8s_tim1.c$2058$1_0$585 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2058: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
	ld	a, 0x5256
	and	a, (0x05, sp)
	or	a, (0x04, sp)
	jreq	00102$
	C$stm8s_tim1.c$2060$2_0$586 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2060: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	C$stm8s_tim1.c$2064$2_0$587 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2064: bitstatus = RESET;
	clr	a
00103$:
	C$stm8s_tim1.c$2066$1_0$585 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2066: return (FlagStatus)(bitstatus);
	C$stm8s_tim1.c$2067$1_0$585 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2067: }
	addw	sp, #5
	C$stm8s_tim1.c$2067$1_0$585 ==.
	XG$TIM1_GetFlagStatus$0$0 ==.
	ret
	G$TIM1_ClearFlag$0$0 ==.
	C$stm8s_tim1.c$2087$1_0$589 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2087: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
;	-----------------------------------------
;	 function TIM1_ClearFlag
;	-----------------------------------------
_TIM1_ClearFlag:
	C$stm8s_tim1.c$2093$1_0$589 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2093: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
	ld	a, (0x04, sp)
	cpl	a
	ld	0x5255, a
	C$stm8s_tim1.c$2094$1_0$589 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2094: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
	ld	a, (0x03, sp)
	cpl	a
	and	a, #0x1e
	ld	0x5256, a
	C$stm8s_tim1.c$2096$1_0$589 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2096: }
	C$stm8s_tim1.c$2096$1_0$589 ==.
	XG$TIM1_ClearFlag$0$0 ==.
	ret
	G$TIM1_GetITStatus$0$0 ==.
	C$stm8s_tim1.c$2112$1_0$591 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2112: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
;	-----------------------------------------
;	 function TIM1_GetITStatus
;	-----------------------------------------
_TIM1_GetITStatus:
	push	a
	C$stm8s_tim1.c$2120$1_0$591 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2120: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
	ld	a, 0x5255
	and	a, (0x04, sp)
	ld	(0x01, sp), a
	C$stm8s_tim1.c$2122$1_0$591 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2122: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
	ld	a, 0x5254
	and	a, (0x04, sp)
	C$stm8s_tim1.c$2124$1_0$591 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2124: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
	C$stm8s_tim1.c$2126$2_0$592 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2126: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	C$stm8s_tim1.c$2130$2_0$593 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2130: bitstatus = RESET;
	clr	a
00103$:
	C$stm8s_tim1.c$2132$1_0$591 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2132: return (ITStatus)(bitstatus);
	C$stm8s_tim1.c$2133$1_0$591 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2133: }
	addw	sp, #1
	C$stm8s_tim1.c$2133$1_0$591 ==.
	XG$TIM1_GetITStatus$0$0 ==.
	ret
	G$TIM1_ClearITPendingBit$0$0 ==.
	C$stm8s_tim1.c$2149$1_0$595 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2149: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
;	-----------------------------------------
;	 function TIM1_ClearITPendingBit
;	-----------------------------------------
_TIM1_ClearITPendingBit:
	C$stm8s_tim1.c$2155$1_0$595 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2155: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
	ld	a, (0x03, sp)
	cpl	a
	ld	0x5255, a
	C$stm8s_tim1.c$2156$1_0$595 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2156: }
	C$stm8s_tim1.c$2156$1_0$595 ==.
	XG$TIM1_ClearITPendingBit$0$0 ==.
	ret
	Fstm8s_tim1$TI1_Config$0$0 ==.
	C$stm8s_tim1.c$2174$1_0$597 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2174: static void TI1_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
_TI1_Config:
	push	a
	C$stm8s_tim1.c$2179$1_0$597 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	bres	21084, #0
	C$stm8s_tim1.c$2182$1_0$597 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2182: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
	ld	a, 0x5258
	and	a, #0x0c
	ld	(0x01, sp), a
	C$stm8s_tim1.c$2183$1_0$597 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2183: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5258, a
	C$stm8s_tim1.c$2186$1_0$597 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2186: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim1.c$2188$2_0$598 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2188: TIM1->CCER1 |= TIM1_CCER1_CC1P;
	bset	21084, #1
	jra	00103$
00102$:
	C$stm8s_tim1.c$2192$2_0$599 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2192: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
	bres	21084, #1
00103$:
	C$stm8s_tim1.c$2196$1_0$597 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2196: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
	bset	21084, #0
	C$stm8s_tim1.c$2197$1_0$597 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2197: }
	pop	a
	C$stm8s_tim1.c$2197$1_0$597 ==.
	XFstm8s_tim1$TI1_Config$0$0 ==.
	ret
	Fstm8s_tim1$TI2_Config$0$0 ==.
	C$stm8s_tim1.c$2215$1_0$601 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2215: static void TI2_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
_TI2_Config:
	push	a
	C$stm8s_tim1.c$2220$1_0$601 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
	bres	21084, #4
	C$stm8s_tim1.c$2223$1_0$601 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2223: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
	ld	a, 0x5259
	and	a, #0x0c
	ld	(0x01, sp), a
	C$stm8s_tim1.c$2224$1_0$601 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2224: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5259, a
	C$stm8s_tim1.c$2226$1_0$601 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2226: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim1.c$2228$2_0$602 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2228: TIM1->CCER1 |= TIM1_CCER1_CC2P;
	bset	21084, #5
	jra	00103$
00102$:
	C$stm8s_tim1.c$2232$2_0$603 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2232: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
	bres	21084, #5
00103$:
	C$stm8s_tim1.c$2235$1_0$601 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2235: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
	bset	21084, #4
	C$stm8s_tim1.c$2236$1_0$601 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2236: }
	pop	a
	C$stm8s_tim1.c$2236$1_0$601 ==.
	XFstm8s_tim1$TI2_Config$0$0 ==.
	ret
	Fstm8s_tim1$TI3_Config$0$0 ==.
	C$stm8s_tim1.c$2254$1_0$605 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2254: static void TI3_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TI3_Config
;	-----------------------------------------
_TI3_Config:
	push	a
	C$stm8s_tim1.c$2259$1_0$605 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
	ld	a, 0x525d
	and	a, #0xfe
	ld	0x525d, a
	C$stm8s_tim1.c$2262$1_0$605 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2262: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
	ld	a, 0x525a
	and	a, #0x0c
	ld	(0x01, sp), a
	C$stm8s_tim1.c$2263$1_0$605 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2263: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x525a, a
	C$stm8s_tim1.c$2266$1_0$605 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2266: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim1.c$2268$2_0$606 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2268: TIM1->CCER2 |= TIM1_CCER2_CC3P;
	bset	21085, #1
	jra	00103$
00102$:
	C$stm8s_tim1.c$2272$2_0$607 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2272: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
	bres	21085, #1
00103$:
	C$stm8s_tim1.c$2275$1_0$605 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2275: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
	bset	21085, #0
	C$stm8s_tim1.c$2276$1_0$605 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2276: }
	pop	a
	C$stm8s_tim1.c$2276$1_0$605 ==.
	XFstm8s_tim1$TI3_Config$0$0 ==.
	ret
	Fstm8s_tim1$TI4_Config$0$0 ==.
	C$stm8s_tim1.c$2294$1_0$609 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2294: static void TI4_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TI4_Config
;	-----------------------------------------
_TI4_Config:
	push	a
	C$stm8s_tim1.c$2299$1_0$609 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
	bres	21085, #4
	C$stm8s_tim1.c$2302$1_0$609 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2302: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
	ld	a, 0x525b
	and	a, #0x0c
	ld	(0x01, sp), a
	C$stm8s_tim1.c$2303$1_0$609 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2303: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x525b, a
	C$stm8s_tim1.c$2306$1_0$609 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2306: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim1.c$2308$2_0$610 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2308: TIM1->CCER2 |= TIM1_CCER2_CC4P;
	bset	21085, #5
	jra	00103$
00102$:
	C$stm8s_tim1.c$2312$2_0$611 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2312: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
	bres	21085, #5
00103$:
	C$stm8s_tim1.c$2316$1_0$609 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2316: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
	bset	21085, #4
	C$stm8s_tim1.c$2317$1_0$609 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2317: }
	pop	a
	C$stm8s_tim1.c$2317$1_0$609 ==.
	XFstm8s_tim1$TI4_Config$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
