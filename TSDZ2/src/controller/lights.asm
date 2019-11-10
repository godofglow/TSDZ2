;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module lights
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lights_set_state
	.globl _lights_init
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
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
	G$lights_init$0$0 ==.
	C$lights.c$17$0_0$346 ==.
;	lights.c: 17: void lights_init(void)
;	-----------------------------------------
;	 function lights_init
;	-----------------------------------------
_lights_init:
	C$lights.c$19$1_0$346 ==.
;	lights.c: 19: GPIO_Init(LIGHTS__PORT,
	push	#0xc0
	push	#0x10
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$lights.c$22$1_0$346 ==.
;	lights.c: 22: }
	C$lights.c$22$1_0$346 ==.
	XG$lights_init$0$0 ==.
	ret
	G$lights_set_state$0$0 ==.
	C$lights.c$27$1_0$348 ==.
;	lights.c: 27: void lights_set_state(uint8_t ui8_state)
;	-----------------------------------------
;	 function lights_set_state
;	-----------------------------------------
_lights_set_state:
	C$lights.c$29$1_0$348 ==.
;	lights.c: 29: if(ui8_state)
	tnz	(0x03, sp)
	jreq	00102$
	C$lights.c$31$2_0$349 ==.
;	lights.c: 31: GPIO_WriteHigh(LIGHTS__PORT, LIGHTS__PIN);
	push	#0x10
	push	#0x0f
	push	#0x50
	call	_GPIO_WriteHigh
	addw	sp, #3
	jra	00104$
00102$:
	C$lights.c$35$2_0$350 ==.
;	lights.c: 35: GPIO_WriteLow(LIGHTS__PORT, LIGHTS__PIN);
	push	#0x10
	push	#0x0f
	push	#0x50
	call	_GPIO_WriteLow
	addw	sp, #3
00104$:
	C$lights.c$37$1_0$348 ==.
;	lights.c: 37: }
	C$lights.c$37$1_0$348 ==.
	XG$lights_set_state$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
