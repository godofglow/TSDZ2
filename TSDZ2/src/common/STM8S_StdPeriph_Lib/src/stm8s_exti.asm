;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module stm8s_exti
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_DeInit
	.globl _EXTI_SetExtIntSensitivity
	.globl _EXTI_SetTLISensitivity
	.globl _EXTI_GetExtIntSensitivity
	.globl _EXTI_GetTLISensitivity
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
	G$EXTI_DeInit$0$0 ==.
	C$stm8s_exti.c$53$0_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 53: void EXTI_DeInit(void)
;	-----------------------------------------
;	 function EXTI_DeInit
;	-----------------------------------------
_EXTI_DeInit:
	C$stm8s_exti.c$55$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 55: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
	mov	0x50a0+0, #0x00
	C$stm8s_exti.c$56$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 56: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
	mov	0x50a1+0, #0x00
	C$stm8s_exti.c$57$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 57: }
	C$stm8s_exti.c$57$1_0$346 ==.
	XG$EXTI_DeInit$0$0 ==.
	ret
	G$EXTI_SetExtIntSensitivity$0$0 ==.
	C$stm8s_exti.c$70$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 70: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
;	-----------------------------------------
;	 function EXTI_SetExtIntSensitivity
;	-----------------------------------------
_EXTI_SetExtIntSensitivity:
	sub	sp, #3
	C$stm8s_exti.c$77$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 77: switch (Port)
	ld	a, (0x06, sp)
	cp	a, #0x04
	jrule	00114$
	jp	00108$
00114$:
	clrw	x
	ld	a, (0x06, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00115$, x)
	jp	(x)
00115$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
	C$stm8s_exti.c$79$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 79: case EXTI_PORT_GPIOA:
00101$:
	C$stm8s_exti.c$80$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 80: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
	ld	a, 0x50a0
	and	a, #0xfc
	ld	0x50a0, a
	C$stm8s_exti.c$81$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 81: EXTI->CR1 |= (uint8_t)(SensitivityValue);
	ld	a, 0x50a0
	or	a, (0x07, sp)
	ld	0x50a0, a
	C$stm8s_exti.c$82$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 82: break;
	jp	00108$
	C$stm8s_exti.c$83$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 83: case EXTI_PORT_GPIOB:
00102$:
	C$stm8s_exti.c$84$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 84: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
	ld	a, 0x50a0
	and	a, #0xf3
	ld	0x50a0, a
	C$stm8s_exti.c$85$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
	ld	a, 0x50a0
	ld	(0x02, sp), a
	ld	a, (0x07, sp)
	sll	a
	sll	a
	or	a, (0x02, sp)
	ld	0x50a0, a
	C$stm8s_exti.c$86$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 86: break;
	jp	00108$
	C$stm8s_exti.c$87$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 87: case EXTI_PORT_GPIOC:
00103$:
	C$stm8s_exti.c$88$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 88: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
	ld	a, 0x50a0
	and	a, #0xcf
	ld	0x50a0, a
	C$stm8s_exti.c$89$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 89: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
	ld	a, 0x50a0
	ld	(0x01, sp), a
	ld	a, (0x07, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x01, sp)
	ld	0x50a0, a
	C$stm8s_exti.c$90$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 90: break;
	jra	00108$
	C$stm8s_exti.c$91$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 91: case EXTI_PORT_GPIOD:
00104$:
	C$stm8s_exti.c$92$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 92: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
	ld	a, 0x50a0
	and	a, #0x3f
	ld	0x50a0, a
	C$stm8s_exti.c$93$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 93: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
	ld	a, 0x50a0
	ld	(0x03, sp), a
	ld	a, (0x07, sp)
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	or	a, (0x03, sp)
	ld	0x50a0, a
	C$stm8s_exti.c$94$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 94: break;
	jra	00108$
	C$stm8s_exti.c$95$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 95: case EXTI_PORT_GPIOE:
00105$:
	C$stm8s_exti.c$96$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 96: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
	ld	a, 0x50a1
	and	a, #0xfc
	ld	0x50a1, a
	C$stm8s_exti.c$97$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 97: EXTI->CR2 |= (uint8_t)(SensitivityValue);
	ld	a, 0x50a1
	or	a, (0x07, sp)
	ld	0x50a1, a
	C$stm8s_exti.c$101$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 101: }
00108$:
	C$stm8s_exti.c$102$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 102: }
	addw	sp, #3
	C$stm8s_exti.c$102$1_0$348 ==.
	XG$EXTI_SetExtIntSensitivity$0$0 ==.
	ret
	G$EXTI_SetTLISensitivity$0$0 ==.
	C$stm8s_exti.c$111$1_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 111: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
;	-----------------------------------------
;	 function EXTI_SetTLISensitivity
;	-----------------------------------------
_EXTI_SetTLISensitivity:
	C$stm8s_exti.c$117$1_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 117: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
	ld	a, 0x50a1
	and	a, #0xfb
	ld	0x50a1, a
	C$stm8s_exti.c$118$1_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 118: EXTI->CR2 |= (uint8_t)(SensitivityValue);
	ld	a, 0x50a1
	or	a, (0x03, sp)
	ld	0x50a1, a
	C$stm8s_exti.c$119$1_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 119: }
	C$stm8s_exti.c$119$1_0$351 ==.
	XG$EXTI_SetTLISensitivity$0$0 ==.
	ret
	G$EXTI_GetExtIntSensitivity$0$0 ==.
	C$stm8s_exti.c$126$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 126: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
;	-----------------------------------------
;	 function EXTI_GetExtIntSensitivity
;	-----------------------------------------
_EXTI_GetExtIntSensitivity:
	C$stm8s_exti.c$128$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 128: uint8_t value = 0;
	clr	a
	C$stm8s_exti.c$133$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 133: switch (Port)
	push	a
	ld	a, (0x04, sp)
	cp	a, #0x04
	pop	a
	jrule	00114$
	jp	00107$
00114$:
	clrw	x
	ld	a, (0x03, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00115$, x)
	jp	(x)
00115$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
	C$stm8s_exti.c$135$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 135: case EXTI_PORT_GPIOA:
00101$:
	C$stm8s_exti.c$136$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 136: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
	ld	a, 0x50a0
	and	a, #0x03
	C$stm8s_exti.c$137$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 137: break;
	jra	00107$
	C$stm8s_exti.c$138$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 138: case EXTI_PORT_GPIOB:
00102$:
	C$stm8s_exti.c$139$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 139: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
	ld	a, 0x50a0
	and	a, #0x0c
	srl	a
	srl	a
	C$stm8s_exti.c$140$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 140: break;
	jra	00107$
	C$stm8s_exti.c$141$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 141: case EXTI_PORT_GPIOC:
00103$:
	C$stm8s_exti.c$142$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 142: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
	ld	a, 0x50a0
	and	a, #0x30
	swap	a
	and	a, #0x0f
	C$stm8s_exti.c$143$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 143: break;
	jra	00107$
	C$stm8s_exti.c$144$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 144: case EXTI_PORT_GPIOD:
00104$:
	C$stm8s_exti.c$145$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 145: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
	ld	a, 0x50a0
	and	a, #0xc0
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
	C$stm8s_exti.c$146$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 146: break;
	jra	00107$
	C$stm8s_exti.c$147$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 147: case EXTI_PORT_GPIOE:
00105$:
	C$stm8s_exti.c$148$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 148: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
	ld	a, 0x50a1
	and	a, #0x03
	C$stm8s_exti.c$152$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 152: }
00107$:
	C$stm8s_exti.c$154$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 154: return((EXTI_Sensitivity_TypeDef)value);
	C$stm8s_exti.c$155$1_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 155: }
	C$stm8s_exti.c$155$1_0$353 ==.
	XG$EXTI_GetExtIntSensitivity$0$0 ==.
	ret
	G$EXTI_GetTLISensitivity$0$0 ==.
	C$stm8s_exti.c$162$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 162: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
;	-----------------------------------------
;	 function EXTI_GetTLISensitivity
;	-----------------------------------------
_EXTI_GetTLISensitivity:
	C$stm8s_exti.c$167$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 167: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
	ld	a, 0x50a1
	and	a, #0x04
	C$stm8s_exti.c$169$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 169: return((EXTI_TLISensitivity_TypeDef)value);
	C$stm8s_exti.c$170$1_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 170: }
	C$stm8s_exti.c$170$1_0$356 ==.
	XG$EXTI_GetTLISensitivity$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
