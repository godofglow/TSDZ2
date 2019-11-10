;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module wheel_speed_sensor
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wheel_speed_sensor_init
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
	G$wheel_speed_sensor_init$0$0 ==.
	C$wheel_speed_sensor.c$13$0_0$346 ==.
;	wheel_speed_sensor.c: 13: void wheel_speed_sensor_init(void)
;	-----------------------------------------
;	 function wheel_speed_sensor_init
;	-----------------------------------------
_wheel_speed_sensor_init:
	C$wheel_speed_sensor.c$16$1_0$346 ==.
;	wheel_speed_sensor.c: 16: GPIO_Init(WHEEL_SPEED_SENSOR__PORT,
	push	#0x40
	push	#0x02
	push	#0x00
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$wheel_speed_sensor.c$19$1_0$346 ==.
;	wheel_speed_sensor.c: 19: }
	C$wheel_speed_sensor.c$19$1_0$346 ==.
	XG$wheel_speed_sensor_init$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
