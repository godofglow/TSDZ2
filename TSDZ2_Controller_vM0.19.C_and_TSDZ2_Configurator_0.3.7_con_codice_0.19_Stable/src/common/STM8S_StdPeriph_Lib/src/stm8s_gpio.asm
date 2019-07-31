;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module stm8s_gpio
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_DeInit
	.globl _GPIO_Init
	.globl _GPIO_Write
	.globl _GPIO_WriteHigh
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteReverse
	.globl _GPIO_ReadOutputData
	.globl _GPIO_ReadInputData
	.globl _GPIO_ReadInputPin
	.globl _GPIO_ExternalPullUpConfig
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
	G$GPIO_DeInit$0$0 ==.
	C$stm8s_gpio.c$53$0_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
_GPIO_DeInit:
	C$stm8s_gpio.c$55$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
	ldw	y, (0x03, sp)
	clr	(y)
	C$stm8s_gpio.c$56$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
	ldw	x, y
	incw	x
	incw	x
	clr	(x)
	C$stm8s_gpio.c$57$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
	ldw	x, y
	clr	(0x0003, x)
	C$stm8s_gpio.c$58$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
	ldw	x, y
	clr	(0x0004, x)
	C$stm8s_gpio.c$59$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 59: }
	C$stm8s_gpio.c$59$1_0$346 ==.
	XG$GPIO_DeInit$0$0 ==.
	ret
	G$GPIO_Init$0$0 ==.
	C$stm8s_gpio.c$71$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
_GPIO_Init:
	sub	sp, #7
	C$stm8s_gpio.c$74$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 74: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	y, (0x0a, sp)
	ldw	x, y
	addw	x, #0x0004
	ldw	(0x06, sp), x
	ld	a, (x)
	push	a
	ld	a, (0x0d, sp)
	cpl	a
	ld	(0x04, sp), a
	pop	a
	and	a, (0x03, sp)
	ldw	x, (0x06, sp)
	ld	(x), a
	C$stm8s_gpio.c$80$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 80: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
	tnz	(0x0d, sp)
	jrpl	00105$
	C$stm8s_gpio.c$82$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 82: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
	ld	a, (0x0d, sp)
	bcp	a, #0x10
	jreq	00102$
	C$stm8s_gpio.c$84$3_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 84: GPIOx->ODR |= (uint8_t)GPIO_Pin;
	ld	a, (y)
	or	a, (0x0c, sp)
	ld	(y), a
	jra	00103$
00102$:
	C$stm8s_gpio.c$88$3_0$351 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 88: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
	ld	a, (y)
	and	a, (0x03, sp)
	ld	(y), a
00103$:
	C$stm8s_gpio.c$91$2_0$349 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 91: GPIOx->DDR |= (uint8_t)GPIO_Pin;
	ldw	x, y
	incw	x
	incw	x
	ld	a, (x)
	or	a, (0x0c, sp)
	ld	(x), a
	jra	00106$
00105$:
	C$stm8s_gpio.c$96$2_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 96: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x04, sp), x
	ld	a, (x)
	and	a, (0x03, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
00106$:
	C$stm8s_gpio.c$103$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 103: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
	ld	a, (0x0d, sp)
	bcp	a, #0x40
	jreq	00108$
	C$stm8s_gpio.c$105$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 105: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ldw	x, y
	addw	x, #0x0003
	ld	a, (x)
	or	a, (0x0c, sp)
	ld	(x), a
	jra	00109$
00108$:
	C$stm8s_gpio.c$109$2_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 109: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, y
	addw	x, #0x0003
	ldw	(0x01, sp), x
	ld	a, (x)
	and	a, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
00109$:
	C$stm8s_gpio.c$116$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 116: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
	ld	a, (0x0d, sp)
	bcp	a, #0x20
	jreq	00111$
	C$stm8s_gpio.c$118$2_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 118: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
	ldw	x, (0x06, sp)
	ld	a, (x)
	or	a, (0x0c, sp)
	ldw	x, (0x06, sp)
	ld	(x), a
	jra	00113$
00111$:
	C$stm8s_gpio.c$122$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 122: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x06, sp)
	ld	a, (x)
	and	a, (0x03, sp)
	ldw	x, (0x06, sp)
	ld	(x), a
00113$:
	C$stm8s_gpio.c$124$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 124: }
	addw	sp, #7
	C$stm8s_gpio.c$124$1_0$348 ==.
	XG$GPIO_Init$0$0 ==.
	ret
	G$GPIO_Write$0$0 ==.
	C$stm8s_gpio.c$134$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 134: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
;	-----------------------------------------
;	 function GPIO_Write
;	-----------------------------------------
_GPIO_Write:
	C$stm8s_gpio.c$136$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 136: GPIOx->ODR = PortVal;
	ldw	x, (0x03, sp)
	ld	a, (0x05, sp)
	ld	(x), a
	C$stm8s_gpio.c$137$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 137: }
	C$stm8s_gpio.c$137$1_0$358 ==.
	XG$GPIO_Write$0$0 ==.
	ret
	G$GPIO_WriteHigh$0$0 ==.
	C$stm8s_gpio.c$147$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 147: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteHigh
;	-----------------------------------------
_GPIO_WriteHigh:
	C$stm8s_gpio.c$149$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 149: GPIOx->ODR |= (uint8_t)PortPins;
	ldw	x, (0x03, sp)
	ld	a, (x)
	or	a, (0x05, sp)
	ld	(x), a
	C$stm8s_gpio.c$150$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 150: }
	C$stm8s_gpio.c$150$1_0$360 ==.
	XG$GPIO_WriteHigh$0$0 ==.
	ret
	G$GPIO_WriteLow$0$0 ==.
	C$stm8s_gpio.c$160$1_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 160: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteLow
;	-----------------------------------------
_GPIO_WriteLow:
	push	a
	C$stm8s_gpio.c$162$1_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 162: GPIOx->ODR &= (uint8_t)(~PortPins);
	ldw	x, (0x04, sp)
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
	C$stm8s_gpio.c$163$1_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 163: }
	pop	a
	C$stm8s_gpio.c$163$1_0$362 ==.
	XG$GPIO_WriteLow$0$0 ==.
	ret
	G$GPIO_WriteReverse$0$0 ==.
	C$stm8s_gpio.c$173$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 173: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteReverse
;	-----------------------------------------
_GPIO_WriteReverse:
	C$stm8s_gpio.c$175$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 175: GPIOx->ODR ^= (uint8_t)PortPins;
	ldw	x, (0x03, sp)
	ld	a, (x)
	xor	a, (0x05, sp)
	ld	(x), a
	C$stm8s_gpio.c$176$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 176: }
	C$stm8s_gpio.c$176$1_0$364 ==.
	XG$GPIO_WriteReverse$0$0 ==.
	ret
	G$GPIO_ReadOutputData$0$0 ==.
	C$stm8s_gpio.c$184$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 184: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_ReadOutputData
;	-----------------------------------------
_GPIO_ReadOutputData:
	C$stm8s_gpio.c$186$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 186: return ((uint8_t)GPIOx->ODR);
	ldw	x, (0x03, sp)
	ld	a, (x)
	C$stm8s_gpio.c$187$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 187: }
	C$stm8s_gpio.c$187$1_0$366 ==.
	XG$GPIO_ReadOutputData$0$0 ==.
	ret
	G$GPIO_ReadInputData$0$0 ==.
	C$stm8s_gpio.c$195$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 195: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_ReadInputData
;	-----------------------------------------
_GPIO_ReadInputData:
	C$stm8s_gpio.c$197$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 197: return ((uint8_t)GPIOx->IDR);
	ldw	x, (0x03, sp)
	ld	a, (0x1, x)
	C$stm8s_gpio.c$198$1_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 198: }
	C$stm8s_gpio.c$198$1_0$368 ==.
	XG$GPIO_ReadInputData$0$0 ==.
	ret
	G$GPIO_ReadInputPin$0$0 ==.
	C$stm8s_gpio.c$206$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 206: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ReadInputPin
;	-----------------------------------------
_GPIO_ReadInputPin:
	C$stm8s_gpio.c$208$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 208: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
	ldw	x, (0x03, sp)
	ld	a, (0x1, x)
	and	a, (0x05, sp)
	C$stm8s_gpio.c$209$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 209: }
	C$stm8s_gpio.c$209$1_0$370 ==.
	XG$GPIO_ReadInputPin$0$0 ==.
	ret
	G$GPIO_ExternalPullUpConfig$0$0 ==.
	C$stm8s_gpio.c$218$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 218: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
;	-----------------------------------------
;	 function GPIO_ExternalPullUpConfig
;	-----------------------------------------
_GPIO_ExternalPullUpConfig:
	push	a
	C$stm8s_gpio.c$224$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 224: if (NewState != DISABLE) /* External Pull-Up Set*/
	tnz	(0x07, sp)
	jreq	00102$
	C$stm8s_gpio.c$226$2_0$373 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 226: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ldw	x, (0x04, sp)
	addw	x, #0x0003
	ld	a, (x)
	or	a, (0x06, sp)
	ld	(x), a
	jra	00104$
00102$:
	C$stm8s_gpio.c$229$2_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 229: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x04, sp)
	addw	x, #0x0003
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
00104$:
	C$stm8s_gpio.c$231$1_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 231: }
	pop	a
	C$stm8s_gpio.c$231$1_0$372 ==.
	XG$GPIO_ExternalPullUpConfig$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
