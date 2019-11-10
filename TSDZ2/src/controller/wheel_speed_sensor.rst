                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module wheel_speed_sensor
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _wheel_speed_sensor_init
                                     12 	.globl _GPIO_Init
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
                           000000    50 	G$wheel_speed_sensor_init$0$0 ==.
                           000000    51 	C$wheel_speed_sensor.c$13$0_0$346 ==.
                                     52 ;	wheel_speed_sensor.c: 13: void wheel_speed_sensor_init(void)
                                     53 ;	-----------------------------------------
                                     54 ;	 function wheel_speed_sensor_init
                                     55 ;	-----------------------------------------
      00B1F7                         56 _wheel_speed_sensor_init:
                           000000    57 	C$wheel_speed_sensor.c$16$1_0$346 ==.
                                     58 ;	wheel_speed_sensor.c: 16: GPIO_Init(WHEEL_SPEED_SENSOR__PORT,
      00B1F7 4B 40            [ 1]   59 	push	#0x40
      00B1F9 4B 02            [ 1]   60 	push	#0x02
      00B1FB 4B 00            [ 1]   61 	push	#0x00
      00B1FD 4B 50            [ 1]   62 	push	#0x50
      00B1FF CD 88 85         [ 4]   63 	call	_GPIO_Init
      00B202 5B 04            [ 2]   64 	addw	sp, #4
                           00000D    65 	C$wheel_speed_sensor.c$19$1_0$346 ==.
                                     66 ;	wheel_speed_sensor.c: 19: }
                           00000D    67 	C$wheel_speed_sensor.c$19$1_0$346 ==.
                           00000D    68 	XG$wheel_speed_sensor_init$0$0 ==.
      00B204 81               [ 4]   69 	ret
                                     70 	.area CODE
                                     71 	.area CONST
                                     72 	.area INITIALIZER
                                     73 	.area CABS (ABS)
