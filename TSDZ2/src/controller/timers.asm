;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module timers
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer3_init
	.globl _timer2_init
	.globl _TIM3_Cmd
	.globl _TIM3_TimeBaseInit
	.globl _TIM3_DeInit
	.globl _TIM2_OC2PreloadConfig
	.globl _TIM2_ARRPreloadConfig
	.globl _TIM2_Cmd
	.globl _TIM2_OC2Init
	.globl _TIM2_TimeBaseInit
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
	G$timer2_init$0$0 ==.
	C$timers.c$17$0_0$346 ==.
;	timers.c: 17: void timer2_init(void)
;	-----------------------------------------
;	 function timer2_init
;	-----------------------------------------
_timer2_init:
	C$timers.c$23$1_0$346 ==.
;	timers.c: 23: TIM2_TimeBaseInit(TIM2_PRESCALER_2, 159);
	push	#0x9f
	push	#0x00
	push	#0x01
	call	_TIM2_TimeBaseInit
	addw	sp, #3
	C$timers.c$26$1_0$346 ==.
;	timers.c: 26: TIM2_OC2Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE, 16, TIM2_OCPOLARITY_HIGH);
	push	#0x00
	push	#0x10
	push	#0x00
	push	#0x11
	push	#0x60
	call	_TIM2_OC2Init
	addw	sp, #5
	C$timers.c$27$1_0$346 ==.
;	timers.c: 27: TIM2_OC2PreloadConfig(ENABLE);
	push	#0x01
	call	_TIM2_OC2PreloadConfig
	pop	a
	C$timers.c$29$1_0$346 ==.
;	timers.c: 29: TIM2_ARRPreloadConfig(ENABLE);
	push	#0x01
	call	_TIM2_ARRPreloadConfig
	pop	a
	C$timers.c$31$1_0$346 ==.
;	timers.c: 31: TIM2_Cmd(ENABLE);
	push	#0x01
	call	_TIM2_Cmd
	pop	a
	C$timers.c$34$2_0$347 ==.
;	timers.c: 34: for(ui16_i = 0; ui16_i < (65000); ui16_i++) { ; }
	ldw	y, #0xfde8
00104$:
	ldw	x, y
	decw	x
	ldw	y, x
	tnzw	x
	jrne	00104$
	C$timers.c$35$2_0$346 ==.
;	timers.c: 35: }
	C$timers.c$35$2_0$346 ==.
	XG$timer2_init$0$0 ==.
	ret
	G$timer3_init$0$0 ==.
	C$timers.c$40$2_0$350 ==.
;	timers.c: 40: void timer3_init(void)
;	-----------------------------------------
;	 function timer3_init
;	-----------------------------------------
_timer3_init:
	C$timers.c$45$1_0$350 ==.
;	timers.c: 45: TIM3_DeInit();
	call	_TIM3_DeInit
	C$timers.c$46$1_0$350 ==.
;	timers.c: 46: TIM3_TimeBaseInit(TIM3_PRESCALER_16384, 0xffff); // each incremment at every ~1ms
	push	#0xff
	push	#0xff
	push	#0x0e
	call	_TIM3_TimeBaseInit
	addw	sp, #3
	C$timers.c$47$1_0$350 ==.
;	timers.c: 47: TIM3_Cmd(ENABLE); // TIM3 counter enable
	push	#0x01
	call	_TIM3_Cmd
	pop	a
	C$timers.c$50$2_0$351 ==.
;	timers.c: 50: for(ui16_i = 0; ui16_i < (65000); ui16_i++) { ; }
	ldw	y, #0xfde8
00104$:
	ldw	x, y
	decw	x
	ldw	y, x
	tnzw	x
	jrne	00104$
	C$timers.c$51$2_0$350 ==.
;	timers.c: 51: }
	C$timers.c$51$2_0$350 ==.
	XG$timer3_init$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
