;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module torque_sensor
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_Init
	.globl _torque_sensor_init
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
	G$torque_sensor_init$0$0 ==.
	C$torque_sensor.c$17$0_0$347 ==.
;	torque_sensor.c: 17: void torque_sensor_init(void)
;	-----------------------------------------
;	 function torque_sensor_init
;	-----------------------------------------
_torque_sensor_init:
	C$torque_sensor.c$19$1_0$347 ==.
;	torque_sensor.c: 19: GPIO_Init(TORQUE_SENSOR_EXCITATION__PORT,
	push	#0xb0
	push	#0x08
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$torque_sensor.c$22$1_0$347 ==.
;	torque_sensor.c: 22: }
	C$torque_sensor.c$22$1_0$347 ==.
	XG$torque_sensor_init$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
