                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module torque_sensor
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_Init
                                     12 	.globl _torque_sensor_init
                                     13 ;--------------------------------------------------------
                                     14 ; ram data
                                     15 ;--------------------------------------------------------
                                     16 	.area DATA
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area INITIALIZED
                                     21 ;--------------------------------------------------------
                                     22 ; absolute external ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DABS (ABS)
                                     25 
                                     26 ; default segment ordering for linker
                                     27 	.area HOME
                                     28 	.area GSINIT
                                     29 	.area GSFINAL
                                     30 	.area CONST
                                     31 	.area INITIALIZER
                                     32 	.area CODE
                                     33 
                                     34 ;--------------------------------------------------------
                                     35 ; global & static initialisations
                                     36 ;--------------------------------------------------------
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area GSINIT
                                     41 ;--------------------------------------------------------
                                     42 ; Home
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area HOME
                                     46 ;--------------------------------------------------------
                                     47 ; code
                                     48 ;--------------------------------------------------------
                                     49 	.area CODE
                           000000    50 	G$torque_sensor_init$0$0 ==.
                           000000    51 	C$torque_sensor.c$17$0_0$347 ==.
                                     52 ;	torque_sensor.c: 17: void torque_sensor_init(void)
                                     53 ;	-----------------------------------------
                                     54 ;	 function torque_sensor_init
                                     55 ;	-----------------------------------------
      00A84B                         56 _torque_sensor_init:
                           000000    57 	C$torque_sensor.c$19$1_0$347 ==.
                                     58 ;	torque_sensor.c: 19: GPIO_Init(TORQUE_SENSOR_EXCITATION__PORT,
      00A84B 4B B0            [ 1]   59 	push	#0xb0
      00A84D 4B 08            [ 1]   60 	push	#0x08
      00A84F 4B 0F            [ 1]   61 	push	#0x0f
      00A851 4B 50            [ 1]   62 	push	#0x50
      00A853 CD 88 85         [ 4]   63 	call	_GPIO_Init
      00A856 5B 04            [ 2]   64 	addw	sp, #4
                           00000D    65 	C$torque_sensor.c$22$1_0$347 ==.
                                     66 ;	torque_sensor.c: 22: }
                           00000D    67 	C$torque_sensor.c$22$1_0$347 ==.
                           00000D    68 	XG$torque_sensor_init$0$0 ==.
      00A858 81               [ 4]   69 	ret
                                     70 	.area CODE
                                     71 	.area CONST
                                     72 	.area INITIALIZER
                                     73 	.area CABS (ABS)
