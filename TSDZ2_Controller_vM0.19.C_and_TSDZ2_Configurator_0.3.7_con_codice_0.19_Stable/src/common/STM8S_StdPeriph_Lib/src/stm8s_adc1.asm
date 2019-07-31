;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module stm8s_adc1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_DeInit
	.globl _ADC1_Init
	.globl _ADC1_Cmd
	.globl _ADC1_ScanModeCmd
	.globl _ADC1_DataBufferCmd
	.globl _ADC1_ITConfig
	.globl _ADC1_PrescalerConfig
	.globl _ADC1_SchmittTriggerConfig
	.globl _ADC1_ConversionConfig
	.globl _ADC1_ExternalTriggerConfig
	.globl _ADC1_StartConversion
	.globl _ADC1_GetConversionValue
	.globl _ADC1_AWDChannelConfig
	.globl _ADC1_SetHighThreshold
	.globl _ADC1_SetLowThreshold
	.globl _ADC1_GetBufferValue
	.globl _ADC1_GetAWDChannelStatus
	.globl _ADC1_GetFlagStatus
	.globl _ADC1_ClearFlag
	.globl _ADC1_GetITStatus
	.globl _ADC1_ClearITPendingBit
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
	G$ADC1_DeInit$0$0 ==.
	C$stm8s_adc1.c$52$0_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 52: void ADC1_DeInit(void)
;	-----------------------------------------
;	 function ADC1_DeInit
;	-----------------------------------------
_ADC1_DeInit:
	C$stm8s_adc1.c$54$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
	mov	0x5400+0, #0x00
	C$stm8s_adc1.c$55$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
	mov	0x5401+0, #0x00
	C$stm8s_adc1.c$56$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
	mov	0x5402+0, #0x00
	C$stm8s_adc1.c$57$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
	mov	0x5403+0, #0x00
	C$stm8s_adc1.c$58$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
	mov	0x5406+0, #0x00
	C$stm8s_adc1.c$59$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
	mov	0x5407+0, #0x00
	C$stm8s_adc1.c$60$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
	mov	0x5408+0, #0xff
	C$stm8s_adc1.c$61$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
	mov	0x5409+0, #0x03
	C$stm8s_adc1.c$62$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
	mov	0x540a+0, #0x00
	C$stm8s_adc1.c$63$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
	mov	0x540b+0, #0x00
	C$stm8s_adc1.c$64$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
	mov	0x540e+0, #0x00
	C$stm8s_adc1.c$65$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
	mov	0x540f+0, #0x00
	C$stm8s_adc1.c$66$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 66: }
	C$stm8s_adc1.c$66$1_0$346 ==.
	XG$ADC1_DeInit$0$0 ==.
	ret
	G$ADC1_Init$0$0 ==.
	C$stm8s_adc1.c$88$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
;	-----------------------------------------
;	 function ADC1_Init
;	-----------------------------------------
_ADC1_Init:
	C$stm8s_adc1.c$93$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 93: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	call	_ADC1_ConversionConfig
	addw	sp, #3
	C$stm8s_adc1.c$95$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 95: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
	ld	a, (0x05, sp)
	push	a
	call	_ADC1_PrescalerConfig
	pop	a
	C$stm8s_adc1.c$100$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 100: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_ADC1_ExternalTriggerConfig
	addw	sp, #2
	C$stm8s_adc1.c$105$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 105: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	call	_ADC1_SchmittTriggerConfig
	addw	sp, #2
	C$stm8s_adc1.c$108$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 108: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	21505, #0
	C$stm8s_adc1.c$109$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 109: }
	C$stm8s_adc1.c$109$1_0$348 ==.
	XG$ADC1_Init$0$0 ==.
	ret
	G$ADC1_Cmd$0$0 ==.
	C$stm8s_adc1.c$116$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 116: void ADC1_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_Cmd
;	-----------------------------------------
_ADC1_Cmd:
	C$stm8s_adc1.c$121$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 121: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_adc1.c$123$2_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 123: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	21505, #0
	jra	00104$
00102$:
	C$stm8s_adc1.c$127$2_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 127: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
	bres	21505, #0
00104$:
	C$stm8s_adc1.c$129$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 129: }
	C$stm8s_adc1.c$129$1_0$350 ==.
	XG$ADC1_Cmd$0$0 ==.
	ret
	G$ADC1_ScanModeCmd$0$0 ==.
	C$stm8s_adc1.c$136$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 136: void ADC1_ScanModeCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ScanModeCmd
;	-----------------------------------------
_ADC1_ScanModeCmd:
	C$stm8s_adc1.c$141$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 141: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_adc1.c$143$2_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 143: ADC1->CR2 |= ADC1_CR2_SCAN;
	bset	21506, #1
	jra	00104$
00102$:
	C$stm8s_adc1.c$147$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 147: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
	bres	21506, #1
00104$:
	C$stm8s_adc1.c$149$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 149: }
	C$stm8s_adc1.c$149$1_0$354 ==.
	XG$ADC1_ScanModeCmd$0$0 ==.
	ret
	G$ADC1_DataBufferCmd$0$0 ==.
	C$stm8s_adc1.c$156$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 156: void ADC1_DataBufferCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_DataBufferCmd
;	-----------------------------------------
_ADC1_DataBufferCmd:
	C$stm8s_adc1.c$161$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 161: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_adc1.c$163$2_0$359 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 163: ADC1->CR3 |= ADC1_CR3_DBUF;
	bset	21507, #7
	jra	00104$
00102$:
	C$stm8s_adc1.c$167$2_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 167: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
	bres	21507, #7
00104$:
	C$stm8s_adc1.c$169$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 169: }
	C$stm8s_adc1.c$169$1_0$358 ==.
	XG$ADC1_DataBufferCmd$0$0 ==.
	ret
	G$ADC1_ITConfig$0$0 ==.
	C$stm8s_adc1.c$180$1_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 180: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ITConfig
;	-----------------------------------------
_ADC1_ITConfig:
	push	a
	C$stm8s_adc1.c$182$1_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 182: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
	C$stm8s_adc1.c$185$2_0$363 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 185: ADC1->CSR |= (uint8_t)ADC1_IT;
	ld	a, 0x5400
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5400, a
	jra	00104$
00102$:
	C$stm8s_adc1.c$190$2_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 190: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
	ld	a, 0x5400
	ldw	x, (0x04, sp)
	cplw	x
	pushw	x
	and	a, (2, sp)
	popw	x
	ld	0x5400, a
00104$:
	C$stm8s_adc1.c$192$1_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 192: }
	pop	a
	C$stm8s_adc1.c$192$1_0$362 ==.
	XG$ADC1_ITConfig$0$0 ==.
	ret
	G$ADC1_PrescalerConfig$0$0 ==.
	C$stm8s_adc1.c$200$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 200: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
;	-----------------------------------------
;	 function ADC1_PrescalerConfig
;	-----------------------------------------
_ADC1_PrescalerConfig:
	C$stm8s_adc1.c$203$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 203: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
	ld	a, 0x5401
	and	a, #0x8f
	ld	0x5401, a
	C$stm8s_adc1.c$205$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 205: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
	ld	a, 0x5401
	or	a, (0x03, sp)
	ld	0x5401, a
	C$stm8s_adc1.c$206$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 206: }
	C$stm8s_adc1.c$206$1_0$366 ==.
	XG$ADC1_PrescalerConfig$0$0 ==.
	ret
	G$ADC1_SchmittTriggerConfig$0$0 ==.
	C$stm8s_adc1.c$216$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 216: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_SchmittTriggerConfig
;	-----------------------------------------
_ADC1_SchmittTriggerConfig:
	sub	sp, #4
	C$stm8s_adc1.c$218$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 218: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
	ld	a, (0x07, sp)
	inc	a
	jrne	00114$
	C$stm8s_adc1.c$220$2_0$369 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 220: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00102$
	C$stm8s_adc1.c$222$3_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 222: ADC1->TDRL &= (uint8_t)0x0;
	ld	a, 0x5407
	mov	0x5407+0, #0x00
	C$stm8s_adc1.c$223$3_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 223: ADC1->TDRH &= (uint8_t)0x0;
	ld	a, 0x5406
	mov	0x5406+0, #0x00
	jp	00116$
00102$:
	C$stm8s_adc1.c$227$3_0$371 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 227: ADC1->TDRL |= (uint8_t)0xFF;
	ld	a, 0x5407
	mov	0x5407+0, #0xff
	C$stm8s_adc1.c$228$3_0$371 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 228: ADC1->TDRH |= (uint8_t)0xFF;
	ld	a, 0x5406
	mov	0x5406+0, #0xff
	jp	00116$
00114$:
	C$stm8s_adc1.c$231$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 231: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
	ld	a, (0x07, sp)
	cp	a, #0x08
	jrnc	00111$
	C$stm8s_adc1.c$233$2_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 233: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00105$
	C$stm8s_adc1.c$235$3_0$373 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 235: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
	ld	a, 0x5407
	ld	(0x03, sp), a
	ld	a, #0x01
	push	a
	ld	a, (0x08, sp)
	jreq	00145$
00144$:
	sll	(1, sp)
	dec	a
	jrne	00144$
00145$:
	pop	a
	cpl	a
	and	a, (0x03, sp)
	ld	0x5407, a
	jra	00116$
00105$:
	C$stm8s_adc1.c$239$3_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 239: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
	ld	a, 0x5407
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, (0x08, sp)
	jreq	00147$
00146$:
	sll	(0x03, sp)
	dec	a
	jrne	00146$
00147$:
	pop	a
	or	a, (0x02, sp)
	ld	0x5407, a
	jra	00116$
00111$:
	C$stm8s_adc1.c$244$2_0$375 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 244: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00108$
	C$stm8s_adc1.c$246$3_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 246: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
	ld	a, 0x5406
	ld	(0x04, sp), a
	ld	a, (0x07, sp)
	sub	a, #0x08
	ld	xl, a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00150$
00149$:
	sll	(1, sp)
	dec	a
	jrne	00149$
00150$:
	pop	a
	cpl	a
	and	a, (0x04, sp)
	ld	0x5406, a
	jra	00116$
00108$:
	C$stm8s_adc1.c$250$3_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 250: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
	ld	a, 0x5406
	ld	xl, a
	ld	a, (0x07, sp)
	sub	a, #0x08
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00152$
00151$:
	sll	(0x01, sp)
	dec	a
	jrne	00151$
00152$:
	ld	a, xl
	or	a, (0x01, sp)
	ld	0x5406, a
00116$:
	C$stm8s_adc1.c$253$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 253: }
	addw	sp, #4
	C$stm8s_adc1.c$253$1_0$368 ==.
	XG$ADC1_SchmittTriggerConfig$0$0 ==.
	ret
	G$ADC1_ConversionConfig$0$0 ==.
	C$stm8s_adc1.c$265$1_0$379 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 265: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
;	-----------------------------------------
;	 function ADC1_ConversionConfig
;	-----------------------------------------
_ADC1_ConversionConfig:
	C$stm8s_adc1.c$268$1_0$379 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 268: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
	bres	21506, #3
	C$stm8s_adc1.c$270$1_0$379 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 270: ADC1->CR2 |= (uint8_t)(ADC1_Align);
	ld	a, 0x5402
	or	a, (0x05, sp)
	ld	0x5402, a
	C$stm8s_adc1.c$272$1_0$379 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 272: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
	ld	a, (0x03, sp)
	dec	a
	jrne	00102$
	C$stm8s_adc1.c$275$2_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 275: ADC1->CR1 |= ADC1_CR1_CONT;
	bset	21505, #1
	jra	00103$
00102$:
	C$stm8s_adc1.c$280$2_0$381 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 280: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
	bres	21505, #1
00103$:
	C$stm8s_adc1.c$284$1_0$379 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 284: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
	ld	a, 0x5400
	and	a, #0xf0
	ld	0x5400, a
	C$stm8s_adc1.c$286$1_0$379 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 286: ADC1->CSR |= (uint8_t)(ADC1_Channel);
	ld	a, 0x5400
	or	a, (0x04, sp)
	ld	0x5400, a
	C$stm8s_adc1.c$287$1_0$379 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 287: }
	C$stm8s_adc1.c$287$1_0$379 ==.
	XG$ADC1_ConversionConfig$0$0 ==.
	ret
	G$ADC1_ExternalTriggerConfig$0$0 ==.
	C$stm8s_adc1.c$299$1_0$383 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 299: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ExternalTriggerConfig
;	-----------------------------------------
_ADC1_ExternalTriggerConfig:
	C$stm8s_adc1.c$302$1_0$383 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 302: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
	ld	a, 0x5402
	and	a, #0xcf
	ld	0x5402, a
	C$stm8s_adc1.c$304$1_0$383 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 304: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_adc1.c$307$2_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 307: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
	bset	21506, #6
	jra	00103$
00102$:
	C$stm8s_adc1.c$312$2_0$385 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 312: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
	bres	21506, #6
00103$:
	C$stm8s_adc1.c$316$1_0$383 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 316: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
	ld	a, 0x5402
	or	a, (0x03, sp)
	ld	0x5402, a
	C$stm8s_adc1.c$317$1_0$383 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 317: }
	C$stm8s_adc1.c$317$1_0$383 ==.
	XG$ADC1_ExternalTriggerConfig$0$0 ==.
	ret
	G$ADC1_StartConversion$0$0 ==.
	C$stm8s_adc1.c$328$1_0$387 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 328: void ADC1_StartConversion(void)
;	-----------------------------------------
;	 function ADC1_StartConversion
;	-----------------------------------------
_ADC1_StartConversion:
	C$stm8s_adc1.c$330$1_0$387 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 330: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	21505, #0
	C$stm8s_adc1.c$331$1_0$387 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 331: }
	C$stm8s_adc1.c$331$1_0$387 ==.
	XG$ADC1_StartConversion$0$0 ==.
	ret
	G$ADC1_GetConversionValue$0$0 ==.
	C$stm8s_adc1.c$340$1_0$389 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 340: uint16_t ADC1_GetConversionValue(void)
;	-----------------------------------------
;	 function ADC1_GetConversionValue
;	-----------------------------------------
_ADC1_GetConversionValue:
	sub	sp, #8
	C$stm8s_adc1.c$345$1_0$389 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 345: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ld	a, 0x5402
	bcp	a, #0x08
	jreq	00102$
	C$stm8s_adc1.c$348$2_0$390 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 348: templ = ADC1->DRL;
	ld	a, 0x5405
	ld	xl, a
	C$stm8s_adc1.c$350$2_0$390 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 350: temph = ADC1->DRH;
	ld	a, 0x5404
	C$stm8s_adc1.c$352$2_0$390 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 352: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
	clr	(0x02, sp)
	clr	(0x07, sp)
	or	a, (0x07, sp)
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	ldw	(0x05, sp), x
	jra	00103$
00102$:
	C$stm8s_adc1.c$357$2_0$391 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 357: temph = ADC1->DRH;
	ld	a, 0x5404
	clrw	x
	ld	xl, a
	exgw	x, y
	C$stm8s_adc1.c$359$2_0$391 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 359: templ = ADC1->DRL;
	ld	a, 0x5405
	C$stm8s_adc1.c$361$2_0$391 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 361: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x03, sp), x
	ld	a, (0x04, sp)
	ld	xl, a
	ld	a, yl
	or	a, (0x03, sp)
	ld	xh, a
	ldw	(0x05, sp), x
00103$:
	C$stm8s_adc1.c$364$1_0$389 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 364: return ((uint16_t)temph);
	ldw	x, (0x05, sp)
	C$stm8s_adc1.c$365$1_0$389 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 365: }
	addw	sp, #8
	C$stm8s_adc1.c$365$1_0$389 ==.
	XG$ADC1_GetConversionValue$0$0 ==.
	ret
	G$ADC1_AWDChannelConfig$0$0 ==.
	C$stm8s_adc1.c$375$1_0$393 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 375: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_AWDChannelConfig
;	-----------------------------------------
_ADC1_AWDChannelConfig:
	sub	sp, #4
	C$stm8s_adc1.c$381$1_0$393 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 381: if (Channel < (uint8_t)8)
	ld	a, (0x07, sp)
	cp	a, #0x08
	jrnc	00108$
	C$stm8s_adc1.c$383$2_0$394 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 383: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00102$
	C$stm8s_adc1.c$385$3_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 385: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
	ld	a, 0x540f
	push	a
	ld	a, #0x01
	ld	(0x04, sp), a
	ld	a, (0x08, sp)
	jreq	00127$
00126$:
	sll	(0x04, sp)
	dec	a
	jrne	00126$
00127$:
	pop	a
	or	a, (0x03, sp)
	ld	0x540f, a
	jra	00110$
00102$:
	C$stm8s_adc1.c$389$3_0$396 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 389: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
	ld	a, 0x540f
	ld	(0x02, sp), a
	ld	a, #0x01
	push	a
	ld	a, (0x08, sp)
	jreq	00129$
00128$:
	sll	(1, sp)
	dec	a
	jrne	00128$
00129$:
	pop	a
	cpl	a
	and	a, (0x02, sp)
	ld	0x540f, a
	jra	00110$
00108$:
	C$stm8s_adc1.c$394$2_0$397 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 394: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00105$
	C$stm8s_adc1.c$396$3_0$398 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 396: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
	ld	a, 0x540e
	ld	xl, a
	ld	a, (0x07, sp)
	sub	a, #0x08
	push	a
	ld	a, #0x01
	ld	(0x05, sp), a
	pop	a
	tnz	a
	jreq	00132$
00131$:
	sll	(0x04, sp)
	dec	a
	jrne	00131$
00132$:
	ld	a, xl
	or	a, (0x04, sp)
	ld	0x540e, a
	jra	00110$
00105$:
	C$stm8s_adc1.c$400$3_0$399 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 400: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
	ld	a, 0x540e
	ld	(0x01, sp), a
	ld	a, (0x07, sp)
	sub	a, #0x08
	ld	xl, a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00134$
00133$:
	sll	(1, sp)
	dec	a
	jrne	00133$
00134$:
	pop	a
	cpl	a
	and	a, (0x01, sp)
	ld	0x540e, a
00110$:
	C$stm8s_adc1.c$403$1_0$393 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 403: }
	addw	sp, #4
	C$stm8s_adc1.c$403$1_0$393 ==.
	XG$ADC1_AWDChannelConfig$0$0 ==.
	ret
	G$ADC1_SetHighThreshold$0$0 ==.
	C$stm8s_adc1.c$411$1_0$401 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 411: void ADC1_SetHighThreshold(uint16_t Threshold)
;	-----------------------------------------
;	 function ADC1_SetHighThreshold
;	-----------------------------------------
_ADC1_SetHighThreshold:
	C$stm8s_adc1.c$413$1_0$401 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 413: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
	ldw	x, (0x03, sp)
	srlw	x
	srlw	x
	ld	a, xl
	ld	0x5408, a
	C$stm8s_adc1.c$414$1_0$401 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 414: ADC1->HTRL = (uint8_t)Threshold;
	ld	a, (0x04, sp)
	ld	0x5409, a
	C$stm8s_adc1.c$415$1_0$401 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 415: }
	C$stm8s_adc1.c$415$1_0$401 ==.
	XG$ADC1_SetHighThreshold$0$0 ==.
	ret
	G$ADC1_SetLowThreshold$0$0 ==.
	C$stm8s_adc1.c$423$1_0$403 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 423: void ADC1_SetLowThreshold(uint16_t Threshold)
;	-----------------------------------------
;	 function ADC1_SetLowThreshold
;	-----------------------------------------
_ADC1_SetLowThreshold:
	C$stm8s_adc1.c$425$1_0$403 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 425: ADC1->LTRL = (uint8_t)Threshold;
	ld	a, (0x04, sp)
	ld	0x540b, a
	C$stm8s_adc1.c$426$1_0$403 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 426: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
	ldw	x, (0x03, sp)
	srlw	x
	srlw	x
	ld	a, xl
	ld	0x540a, a
	C$stm8s_adc1.c$427$1_0$403 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 427: }
	C$stm8s_adc1.c$427$1_0$403 ==.
	XG$ADC1_SetLowThreshold$0$0 ==.
	ret
	G$ADC1_GetBufferValue$0$0 ==.
	C$stm8s_adc1.c$436$1_0$405 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 436: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
;	-----------------------------------------
;	 function ADC1_GetBufferValue
;	-----------------------------------------
_ADC1_GetBufferValue:
	sub	sp, #8
	C$stm8s_adc1.c$444$1_0$405 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 444: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ld	a, 0x5402
	bcp	a, #0x08
	jreq	00102$
	C$stm8s_adc1.c$447$2_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 447: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	ld	a, (0x0b, sp)
	sll	a
	clrw	x
	ld	xl, a
	exgw	x, y
	ldw	x, y
	addw	x, #0x53e1
	ld	a, (x)
	ld	xl, a
	C$stm8s_adc1.c$449$2_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 449: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	addw	y, #0x53e0
	ld	a, (y)
	C$stm8s_adc1.c$451$2_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 451: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
	clr	(0x06, sp)
	clr	(0x03, sp)
	or	a, (0x03, sp)
	rrwa	x
	or	a, (0x06, sp)
	ld	xl, a
	ldw	(0x07, sp), x
	jra	00103$
00102$:
	C$stm8s_adc1.c$456$2_0$407 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 456: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	ld	a, (0x0b, sp)
	sll	a
	clrw	x
	ld	xl, a
	ldw	y, x
	addw	y, #0x53e0
	ld	a, (y)
	clrw	y
	ld	yl, a
	C$stm8s_adc1.c$458$2_0$407 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 458: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	addw	x, #0x53e1
	ld	a, (x)
	C$stm8s_adc1.c$460$2_0$407 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 460: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x01, sp), x
	ld	a, (0x02, sp)
	ld	xl, a
	ld	a, yl
	or	a, (0x01, sp)
	ld	xh, a
	ldw	(0x07, sp), x
00103$:
	C$stm8s_adc1.c$463$1_0$405 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 463: return ((uint16_t)temph);
	ldw	x, (0x07, sp)
	C$stm8s_adc1.c$464$1_0$405 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 464: }
	addw	sp, #8
	C$stm8s_adc1.c$464$1_0$405 ==.
	XG$ADC1_GetBufferValue$0$0 ==.
	ret
	G$ADC1_GetAWDChannelStatus$0$0 ==.
	C$stm8s_adc1.c$472$1_0$409 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 472: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
;	-----------------------------------------
;	 function ADC1_GetAWDChannelStatus
;	-----------------------------------------
_ADC1_GetAWDChannelStatus:
	sub	sp, #2
	C$stm8s_adc1.c$479$1_0$409 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 479: if (Channel < (uint8_t)8)
	ld	a, (0x05, sp)
	cp	a, #0x08
	jrnc	00102$
	C$stm8s_adc1.c$481$2_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 481: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
	ld	a, 0x540d
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, (0x06, sp)
	jreq	00112$
00111$:
	sll	(0x03, sp)
	dec	a
	jrne	00111$
00112$:
	pop	a
	and	a, (0x02, sp)
	jra	00103$
00102$:
	C$stm8s_adc1.c$485$2_0$411 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 485: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
	ld	a, 0x540c
	ld	xl, a
	ld	a, (0x05, sp)
	sub	a, #0x08
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00114$
00113$:
	sll	(0x01, sp)
	dec	a
	jrne	00113$
00114$:
	ld	a, xl
	and	a, (0x01, sp)
00103$:
	C$stm8s_adc1.c$488$1_0$409 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 488: return ((FlagStatus)status);
	C$stm8s_adc1.c$489$1_0$409 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 489: }
	addw	sp, #2
	C$stm8s_adc1.c$489$1_0$409 ==.
	XG$ADC1_GetAWDChannelStatus$0$0 ==.
	ret
	G$ADC1_GetFlagStatus$0$0 ==.
	C$stm8s_adc1.c$497$1_0$413 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 497: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
;	-----------------------------------------
;	 function ADC1_GetFlagStatus
;	-----------------------------------------
_ADC1_GetFlagStatus:
	sub	sp, #4
	C$stm8s_adc1.c$502$1_0$413 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 502: if ((Flag & 0x0F) == 0x01)
	ld	a, (0x07, sp)
	ld	(0x04, sp), a
	clr	(0x03, sp)
	ld	a, (0x04, sp)
	and	a, #0x0f
	ld	xl, a
	clr	a
	ld	xh, a
	decw	x
	jrne	00108$
	C$stm8s_adc1.c$505$2_0$414 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 505: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
	ld	a, 0x5403
	and	a, #0x40
	jra	00109$
00108$:
	C$stm8s_adc1.c$507$1_0$413 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 507: else if ((Flag & 0xF0) == 0x10)
	ld	a, (0x04, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0010
	jrne	00105$
	C$stm8s_adc1.c$510$2_0$415 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 510: temp = (uint8_t)(Flag & (uint8_t)0x0F);
	ld	a, (0x07, sp)
	and	a, #0x0f
	ld	xl, a
	C$stm8s_adc1.c$511$2_0$415 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 511: if (temp < 8)
	ld	a, xl
	cp	a, #0x08
	jrnc	00102$
	C$stm8s_adc1.c$513$3_0$416 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 513: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
	ld	a, 0x540d
	ld	(0x01, sp), a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00132$
00131$:
	sll	(1, sp)
	dec	a
	jrne	00131$
00132$:
	pop	a
	and	a, (0x01, sp)
	jra	00109$
00102$:
	C$stm8s_adc1.c$517$3_0$417 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 517: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
	ld	a, 0x540c
	ld	(0x02, sp), a
	subw	x, #8
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00134$
00133$:
	sll	(1, sp)
	dec	a
	jrne	00133$
00134$:
	pop	a
	and	a, (0x02, sp)
	jra	00109$
00105$:
	C$stm8s_adc1.c$522$2_0$418 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 522: flagstatus = (uint8_t)(ADC1->CSR & Flag);
	ld	a, 0x5400
	and	a, (0x07, sp)
00109$:
	C$stm8s_adc1.c$524$1_0$413 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 524: return ((FlagStatus)flagstatus);
	C$stm8s_adc1.c$526$1_0$413 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 526: }
	addw	sp, #4
	C$stm8s_adc1.c$526$1_0$413 ==.
	XG$ADC1_GetFlagStatus$0$0 ==.
	ret
	G$ADC1_ClearFlag$0$0 ==.
	C$stm8s_adc1.c$534$1_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 534: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
;	-----------------------------------------
;	 function ADC1_ClearFlag
;	-----------------------------------------
_ADC1_ClearFlag:
	sub	sp, #5
	C$stm8s_adc1.c$541$1_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 541: if ((Flag & 0x0F) == 0x01)
	ld	a, (0x08, sp)
	clr	(0x04, sp)
	push	a
	and	a, #0x0f
	ld	xl, a
	clr	a
	ld	xh, a
	pop	a
	decw	x
	jrne	00108$
	C$stm8s_adc1.c$544$2_0$421 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 544: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
	bres	21507, #6
	jra	00110$
00108$:
	C$stm8s_adc1.c$546$1_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 546: else if ((Flag & 0xF0) == 0x10)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0010
	jrne	00105$
	C$stm8s_adc1.c$549$2_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 549: temp = (uint8_t)(Flag & (uint8_t)0x0F);
	ld	a, (0x08, sp)
	and	a, #0x0f
	ld	xl, a
	C$stm8s_adc1.c$550$2_0$422 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 550: if (temp < 8)
	ld	a, xl
	cp	a, #0x08
	jrnc	00102$
	C$stm8s_adc1.c$552$3_0$423 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 552: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
	ld	a, 0x540d
	ld	(0x03, sp), a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00132$
00131$:
	sll	(1, sp)
	dec	a
	jrne	00131$
00132$:
	pop	a
	cpl	a
	and	a, (0x03, sp)
	ld	0x540d, a
	jra	00110$
00102$:
	C$stm8s_adc1.c$556$3_0$424 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 556: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
	ld	a, 0x540c
	ld	(0x02, sp), a
	subw	x, #8
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00134$
00133$:
	sll	(1, sp)
	dec	a
	jrne	00133$
00134$:
	pop	a
	cpl	a
	and	a, (0x02, sp)
	ld	0x540c, a
	jra	00110$
00105$:
	C$stm8s_adc1.c$561$2_0$425 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 561: ADC1->CSR &= (uint8_t) (~Flag);
	ld	a, 0x5400
	ld	(0x01, sp), a
	ld	a, (0x08, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	0x5400, a
00110$:
	C$stm8s_adc1.c$563$1_0$420 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 563: }
	addw	sp, #5
	C$stm8s_adc1.c$563$1_0$420 ==.
	XG$ADC1_ClearFlag$0$0 ==.
	ret
	G$ADC1_GetITStatus$0$0 ==.
	C$stm8s_adc1.c$583$1_0$427 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 583: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
;	-----------------------------------------
;	 function ADC1_GetITStatus
;	-----------------------------------------
_ADC1_GetITStatus:
	sub	sp, #3
	C$stm8s_adc1.c$591$1_0$427 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 591: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
	ld	a, (0x07, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0010
	jrne	00105$
	C$stm8s_adc1.c$594$1_0$427 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 594: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
	ld	a, (0x07, sp)
	and	a, #0x0f
	ld	xl, a
	C$stm8s_adc1.c$595$2_0$428 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 595: if (temp < 8)
	ld	a, xl
	cp	a, #0x08
	jrnc	00102$
	C$stm8s_adc1.c$597$3_0$429 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 597: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
	ld	a, 0x540d
	ld	(0x03, sp), a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00122$
00121$:
	sll	(1, sp)
	dec	a
	jrne	00121$
00122$:
	pop	a
	and	a, (0x03, sp)
	jra	00106$
00102$:
	C$stm8s_adc1.c$601$3_0$430 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 601: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
	ld	a, 0x540c
	ld	(0x02, sp), a
	subw	x, #8
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00124$
00123$:
	sll	(1, sp)
	dec	a
	jrne	00123$
00124$:
	pop	a
	and	a, (0x02, sp)
	jra	00106$
00105$:
	C$stm8s_adc1.c$606$2_0$431 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 606: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
	ld	a, 0x5400
	ld	(0x01, sp), a
	ld	a, (0x07, sp)
	and	a, (0x01, sp)
00106$:
	C$stm8s_adc1.c$608$1_0$427 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 608: return ((ITStatus)itstatus);
	C$stm8s_adc1.c$609$1_0$427 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 609: }
	addw	sp, #3
	C$stm8s_adc1.c$609$1_0$427 ==.
	XG$ADC1_GetITStatus$0$0 ==.
	ret
	G$ADC1_ClearITPendingBit$0$0 ==.
	C$stm8s_adc1.c$629$1_0$433 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 629: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
;	-----------------------------------------
;	 function ADC1_ClearITPendingBit
;	-----------------------------------------
_ADC1_ClearITPendingBit:
	sub	sp, #2
	C$stm8s_adc1.c$636$1_0$433 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 636: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
	ld	a, (0x06, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0010
	jrne	00105$
	C$stm8s_adc1.c$639$1_0$433 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 639: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
	ld	a, (0x06, sp)
	and	a, #0x0f
	ld	xl, a
	C$stm8s_adc1.c$640$2_0$434 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 640: if (temp < 8)
	ld	a, xl
	cp	a, #0x08
	jrnc	00102$
	C$stm8s_adc1.c$642$3_0$435 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 642: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
	ld	a, 0x540d
	ld	(0x02, sp), a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00122$
00121$:
	sll	(1, sp)
	dec	a
	jrne	00121$
00122$:
	pop	a
	cpl	a
	and	a, (0x02, sp)
	ld	0x540d, a
	jra	00107$
00102$:
	C$stm8s_adc1.c$646$3_0$436 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 646: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
	ld	a, 0x540c
	ld	(0x01, sp), a
	subw	x, #8
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00124$
00123$:
	sll	(1, sp)
	dec	a
	jrne	00123$
00124$:
	pop	a
	cpl	a
	and	a, (0x01, sp)
	ld	0x540c, a
	jra	00107$
00105$:
	C$stm8s_adc1.c$651$2_0$437 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 651: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
	ld	a, 0x5400
	ldw	x, (0x05, sp)
	cplw	x
	pushw	x
	and	a, (2, sp)
	popw	x
	ld	0x5400, a
00107$:
	C$stm8s_adc1.c$653$1_0$433 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 653: }
	addw	sp, #2
	C$stm8s_adc1.c$653$1_0$433 ==.
	XG$ADC1_ClearITPendingBit$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
