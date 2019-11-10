;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module uart
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart2_init
	.globl _UART2_GetFlagStatus
	.globl _UART2_SendData8
	.globl _UART2_ReceiveData8
	.globl _UART2_ITConfig
	.globl _UART2_Init
	.globl _UART2_DeInit
	.globl _putchar
	.globl _getchar
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
	G$uart2_init$0$0 ==.
	C$uart.c$19$0_0$357 ==.
;	uart.c: 19: void uart2_init(void)
;	-----------------------------------------
;	 function uart2_init
;	-----------------------------------------
_uart2_init:
	C$uart.c$21$1_0$357 ==.
;	uart.c: 21: UART2_DeInit();
	call	_UART2_DeInit
	C$uart.c$25$1_0$357 ==.
;	uart.c: 25: UART2_Init((uint32_t) 9600,
	push	#0x0c
	push	#0x80
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x25
	clrw	x
	pushw	x
	call	_UART2_Init
	addw	sp, #9
	C$uart.c$33$1_0$357 ==.
;	uart.c: 33: UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
	push	#0x01
	push	#0x05
	push	#0x02
	call	_UART2_ITConfig
	addw	sp, #3
	C$uart.c$34$1_0$357 ==.
;	uart.c: 34: }
	C$uart.c$34$1_0$357 ==.
	XG$uart2_init$0$0 ==.
	ret
	G$putchar$0$0 ==.
	C$uart.c$52$1_0$359 ==.
;	uart.c: 52: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	push	a
	C$uart.c$55$1_0$359 ==.
;	uart.c: 55: UART2_SendData8(c);
	ld	a, (0x05, sp)
	ld	(0x01, sp), a
	push	a
	call	_UART2_SendData8
	pop	a
	C$uart.c$58$1_0$359 ==.
;	uart.c: 58: while(UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
00101$:
	push	#0x80
	push	#0x00
	call	_UART2_GetFlagStatus
	addw	sp, #2
	tnz	a
	jreq	00101$
	C$uart.c$60$1_0$359 ==.
;	uart.c: 60: return((unsigned char)c);
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
	C$uart.c$61$1_0$359 ==.
;	uart.c: 61: }
	pop	a
	C$uart.c$61$1_0$359 ==.
	XG$putchar$0$0 ==.
	ret
	G$getchar$0$0 ==.
	C$uart.c$70$1_0$361 ==.
;	uart.c: 70: int getchar(void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	C$uart.c$76$1_0$361 ==.
;	uart.c: 76: while(UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
00101$:
	push	#0x20
	push	#0x00
	call	_UART2_GetFlagStatus
	addw	sp, #2
	tnz	a
	jreq	00101$
	C$uart.c$78$1_0$361 ==.
;	uart.c: 78: c = UART2_ReceiveData8();
	call	_UART2_ReceiveData8
	C$uart.c$80$1_0$361 ==.
;	uart.c: 80: return (c);
	clrw	x
	ld	xl, a
	C$uart.c$81$1_0$361 ==.
;	uart.c: 81: }
	C$uart.c$81$1_0$361 ==.
	XG$getchar$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
