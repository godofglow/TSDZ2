;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module brake
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _motor_controller_reset_state
	.globl _motor_controller_set_state
	.globl _GPIO_ReadInputPin
	.globl _GPIO_Init
	.globl _EXTI_SetExtIntSensitivity
	.globl _EXTI_PORTC_IRQHandler
	.globl _brake_init
	.globl _brake_is_set
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
	G$EXTI_PORTC_IRQHandler$0$0 ==.
	C$brake.c$21$0_0$386 ==.
;	brake.c: 21: void EXTI_PORTC_IRQHandler(void) __interrupt(EXTI_PORTC_IRQHANDLER) // Brake signal
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
_EXTI_PORTC_IRQHandler:
	clr	a
	div	x, a
	C$brake.c$23$1_0$386 ==.
;	brake.c: 23: if(brake_is_set())
	call	_brake_is_set
	tnz	a
	jreq	00102$
	C$brake.c$25$2_0$387 ==.
;	brake.c: 25: motor_controller_set_state(MOTOR_CONTROLLER_STATE_BRAKE);
	push	#0x02
	call	_motor_controller_set_state
	pop	a
	jra	00104$
00102$:
	C$brake.c$29$2_0$388 ==.
;	brake.c: 29: motor_controller_reset_state(MOTOR_CONTROLLER_STATE_BRAKE);
	push	#0x02
	call	_motor_controller_reset_state
	pop	a
00104$:
	C$brake.c$31$1_0$386 ==.
;	brake.c: 31: }
	C$brake.c$31$1_0$386 ==.
	XG$EXTI_PORTC_IRQHandler$0$0 ==.
	iret
	G$brake_init$0$0 ==.
	C$brake.c$36$1_0$390 ==.
;	brake.c: 36: void brake_init(void)
;	-----------------------------------------
;	 function brake_init
;	-----------------------------------------
_brake_init:
	C$brake.c$45$1_0$390 ==.
;	brake.c: 45: GPIO_Init(BRAKE__PORT,
	push	#0x40
	push	#0x40
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$brake.c$51$1_0$390 ==.
;	brake.c: 51: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC,
	push	#0x03
	push	#0x02
	call	_EXTI_SetExtIntSensitivity
	addw	sp, #2
	C$brake.c$53$1_0$390 ==.
;	brake.c: 53: }
	C$brake.c$53$1_0$390 ==.
	XG$brake_init$0$0 ==.
	ret
	G$brake_is_set$0$0 ==.
	C$brake.c$58$1_0$392 ==.
;	brake.c: 58: BitStatus brake_is_set(void)
;	-----------------------------------------
;	 function brake_is_set
;	-----------------------------------------
_brake_is_set:
	C$brake.c$60$1_0$392 ==.
;	brake.c: 60: if(GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) == 0)
	push	#0x40
	push	#0x0a
	push	#0x50
	call	_GPIO_ReadInputPin
	addw	sp, #3
	tnz	a
	jrne	00102$
	C$brake.c$61$1_0$392 ==.
;	brake.c: 61: return 1;
	ld	a, #0x01
	jra	00104$
00102$:
	C$brake.c$63$1_0$392 ==.
;	brake.c: 63: return 0;
	clr	a
00104$:
	C$brake.c$64$1_0$392 ==.
;	brake.c: 64: }
	C$brake.c$64$1_0$392 ==.
	XG$brake_is_set$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
