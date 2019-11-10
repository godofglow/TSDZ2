;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module pas
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pas_init
	.globl _GPIO_Init
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
	G$pas_init$0$0 ==.
	C$pas.c$16$0_0$346 ==.
;	pas.c: 16: void pas_init(void)
;	-----------------------------------------
;	 function pas_init
;	-----------------------------------------
_pas_init:
	C$pas.c$19$1_0$346 ==.
;	pas.c: 19: GPIO_Init(PAS1__PORT,
	push	#0x40
	push	#0x01
	push	#0x14
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$pas.c$24$1_0$346 ==.
;	pas.c: 24: GPIO_Init(PAS2__PORT,
	push	#0x40
	push	#0x80
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$pas.c$27$1_0$346 ==.
;	pas.c: 27: }
	C$pas.c$27$1_0$346 ==.
	XG$pas_init$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
