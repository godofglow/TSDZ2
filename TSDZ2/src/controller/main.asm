;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lights_init
	.globl _eeprom_init_variables
	.globl _eeprom_init
	.globl _torque_sensor_init
	.globl _ebike_app_controller
	.globl _ebike_app_init
	.globl _timer3_init
	.globl _timer2_init
	.globl _adc_init
	.globl _pas_init
	.globl _brake_init
	.globl _wheel_speed_sensor_init
	.globl _motor_controller
	.globl _motor_init
	.globl _hall_sensor_init
	.globl _pwm_init_bipolar_4q
	.globl _uart2_init
	.globl _TIM3_GetCounter
	.globl _CLK_HSIPrescalerConfig
	.globl _main
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int 0x000000 ; trap
	int 0x000000 ; int0
	int 0x000000 ; int1
	int 0x000000 ; int2
	int 0x000000 ; int3
	int 0x000000 ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int 0x000000 ; int6
	int 0x000000 ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int 0x000000 ; int10
	int 0x000000 ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int 0x000000 ; int13
	int 0x000000 ; int14
	int 0x000000 ; int15
	int 0x000000 ; int16
	int 0x000000 ; int17
	int 0x000000 ; int18
	int 0x000000 ; int19
	int 0x000000 ; int20
	int _UART2_IRQHandler ; int21
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	G$main$0$0 ==.
	C$main.c$66$0_0$403 ==.
;	main.c: 66: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	sub	sp, #12
	C$main.c$69$2_0$403 ==.
;	main.c: 69: uint16_t ui16_ebike_app_controller_counter = 0;
	clrw	x
	ldw	(0x01, sp), x
	C$main.c$70$2_0$403 ==.
;	main.c: 70: uint16_t ui16_motor_controller_counter = 0;
	clrw	x
	ldw	(0x03, sp), x
	C$main.c$77$1_0$403 ==.
;	main.c: 77: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	push	#0x00
	call	_CLK_HSIPrescalerConfig
	pop	a
	C$main.c$80$2_0$404 ==.
;	main.c: 80: for(ui32_delay=0; ui32_delay<1000000; ui32_delay++);
	ldw	x, #0x4240
	ldw	(0x07, sp), x
	ldw	x, #0x000f
00110$:
	ldw	y, (0x07, sp)
	subw	y, #0x0001
	ldw	(0x0b, sp), y
	ld	a, xl
	sbc	a, #0x00
	ld	(0x0a, sp), a
	ld	a, xh
	sbc	a, #0x00
	ld	(0x09, sp), a
	ldw	x, (0x0b, sp)
	ldw	(0x07, sp), x
	ldw	x, (0x09, sp)
	ldw	y, (0x0b, sp)
	jrne	00110$
	ldw	y, (0x09, sp)
	jrne	00110$
	C$main.c$88$1_0$403 ==.
;	main.c: 88: eeprom_init();
	call	_eeprom_init
	C$main.c$91$1_0$403 ==.
;	main.c: 91: eeprom_init_variables();
	call	_eeprom_init_variables
	C$main.c$94$1_0$403 ==.
;	main.c: 94: brake_init();
	call	_brake_init
	C$main.c$101$1_0$403 ==.
;	main.c: 101: lights_init();
	call	_lights_init
	C$main.c$104$1_0$403 ==.
;	main.c: 104: uart2_init();
	call	_uart2_init
	C$main.c$107$1_0$403 ==.
;	main.c: 107: timer2_init();
	call	_timer2_init
	C$main.c$110$1_0$403 ==.
;	main.c: 110: timer3_init();
	call	_timer3_init
	C$main.c$113$1_0$403 ==.
;	main.c: 113: adc_init();
	call	_adc_init
	C$main.c$116$1_0$403 ==.
;	main.c: 116: torque_sensor_init();
	call	_torque_sensor_init
	C$main.c$119$1_0$403 ==.
;	main.c: 119: pas_init();
	call	_pas_init
	C$main.c$122$1_0$403 ==.
;	main.c: 122: wheel_speed_sensor_init();
	call	_wheel_speed_sensor_init
	C$main.c$125$1_0$403 ==.
;	main.c: 125: hall_sensor_init();
	call	_hall_sensor_init
	C$main.c$128$1_0$403 ==.
;	main.c: 128: pwm_init_bipolar_4q();
	call	_pwm_init_bipolar_4q
	C$main.c$131$1_0$403 ==.
;	main.c: 131: motor_init();
	call	_motor_init
	C$main.c$134$1_0$403 ==.
;	main.c: 134: ebike_app_init();
	call	_ebike_app_init
	C$main.c$137$2_0$405 ==.
;	main.c: 137: enableInterrupts();
	rim
00111$:
	C$main.c$144$3_0$407 ==.
;	main.c: 144: ui16_TIM3_counter = TIM3_GetCounter();
	call	_TIM3_GetCounter
	ldw	(0x0b, sp), x
	C$main.c$145$3_0$407 ==.
;	main.c: 145: if((ui16_TIM3_counter - ui16_motor_controller_counter) > 4) // every 4ms
	ldw	x, (0x0b, sp)
	subw	x, (0x03, sp)
	cpw	x, #0x0004
	jrule	00103$
	C$main.c$147$4_0$408 ==.
;	main.c: 147: ui16_motor_controller_counter = ui16_TIM3_counter;
	ldw	y, (0x0b, sp)
	ldw	(0x03, sp), y
	C$main.c$148$4_0$408 ==.
;	main.c: 148: motor_controller();
	call	_motor_controller
	C$main.c$149$4_0$408 ==.
;	main.c: 149: continue;
	jra	00111$
00103$:
	C$main.c$152$3_0$407 ==.
;	main.c: 152: ui16_TIM3_counter = TIM3_GetCounter();
	call	_TIM3_GetCounter
	exgw	x, y
	C$main.c$153$3_0$407 ==.
;	main.c: 153: if((ui16_TIM3_counter - ui16_ebike_app_controller_counter) > 100) // every 100ms
	ldw	x, y
	subw	x, (0x01, sp)
	cpw	x, #0x0064
	jrule	00111$
	C$main.c$155$4_0$409 ==.
;	main.c: 155: ui16_ebike_app_controller_counter = ui16_TIM3_counter;
	ldw	(0x01, sp), y
	C$main.c$156$4_0$409 ==.
;	main.c: 156: ebike_app_controller();
	call	_ebike_app_controller
	C$main.c$157$4_0$409 ==.
;	main.c: 157: continue;
	jra	00111$
	C$main.c$190$2_0$403 ==.
;	main.c: 190: }
	addw	sp, #12
	C$main.c$190$2_0$403 ==.
	XG$main$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
