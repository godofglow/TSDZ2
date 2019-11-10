                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module brake
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _motor_controller_reset_state
                                     12 	.globl _motor_controller_set_state
                                     13 	.globl _GPIO_ReadInputPin
                                     14 	.globl _GPIO_Init
                                     15 	.globl _EXTI_SetExtIntSensitivity
                                     16 	.globl _EXTI_PORTC_IRQHandler
                                     17 	.globl _brake_init
                                     18 	.globl _brake_is_set
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area DATA
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area INITIALIZED
                                     27 ;--------------------------------------------------------
                                     28 ; absolute external ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DABS (ABS)
                                     31 
                                     32 ; default segment ordering for linker
                                     33 	.area HOME
                                     34 	.area GSINIT
                                     35 	.area GSFINAL
                                     36 	.area CONST
                                     37 	.area INITIALIZER
                                     38 	.area CODE
                                     39 
                                     40 ;--------------------------------------------------------
                                     41 ; global & static initialisations
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area GSINIT
                                     47 ;--------------------------------------------------------
                                     48 ; Home
                                     49 ;--------------------------------------------------------
                                     50 	.area HOME
                                     51 	.area HOME
                                     52 ;--------------------------------------------------------
                                     53 ; code
                                     54 ;--------------------------------------------------------
                                     55 	.area CODE
                           000000    56 	G$EXTI_PORTC_IRQHandler$0$0 ==.
                           000000    57 	C$brake.c$21$0_0$386 ==.
                                     58 ;	brake.c: 21: void EXTI_PORTC_IRQHandler(void) __interrupt(EXTI_PORTC_IRQHANDLER) // Brake signal
                                     59 ;	-----------------------------------------
                                     60 ;	 function EXTI_PORTC_IRQHandler
                                     61 ;	-----------------------------------------
      00B205                         62 _EXTI_PORTC_IRQHandler:
      00B205 4F               [ 1]   63 	clr	a
      00B206 62               [ 2]   64 	div	x, a
                           000002    65 	C$brake.c$23$1_0$386 ==.
                                     66 ;	brake.c: 23: if(brake_is_set())
      00B207 CD B2 33         [ 4]   67 	call	_brake_is_set
      00B20A 4D               [ 1]   68 	tnz	a
      00B20B 27 08            [ 1]   69 	jreq	00102$
                           000008    70 	C$brake.c$25$2_0$387 ==.
                                     71 ;	brake.c: 25: motor_controller_set_state(MOTOR_CONTROLLER_STATE_BRAKE);
      00B20D 4B 02            [ 1]   72 	push	#0x02
      00B20F CD AF BC         [ 4]   73 	call	_motor_controller_set_state
      00B212 84               [ 1]   74 	pop	a
      00B213 20 06            [ 2]   75 	jra	00104$
      00B215                         76 00102$:
                           000010    77 	C$brake.c$29$2_0$388 ==.
                                     78 ;	brake.c: 29: motor_controller_reset_state(MOTOR_CONTROLLER_STATE_BRAKE);
      00B215 4B 02            [ 1]   79 	push	#0x02
      00B217 CD AF C5         [ 4]   80 	call	_motor_controller_reset_state
      00B21A 84               [ 1]   81 	pop	a
      00B21B                         82 00104$:
                           000016    83 	C$brake.c$31$1_0$386 ==.
                                     84 ;	brake.c: 31: }
                           000016    85 	C$brake.c$31$1_0$386 ==.
                           000016    86 	XG$EXTI_PORTC_IRQHandler$0$0 ==.
      00B21B 80               [11]   87 	iret
                           000017    88 	G$brake_init$0$0 ==.
                           000017    89 	C$brake.c$36$1_0$390 ==.
                                     90 ;	brake.c: 36: void brake_init(void)
                                     91 ;	-----------------------------------------
                                     92 ;	 function brake_init
                                     93 ;	-----------------------------------------
      00B21C                         94 _brake_init:
                           000017    95 	C$brake.c$45$1_0$390 ==.
                                     96 ;	brake.c: 45: GPIO_Init(BRAKE__PORT,
      00B21C 4B 40            [ 1]   97 	push	#0x40
      00B21E 4B 40            [ 1]   98 	push	#0x40
      00B220 4B 0A            [ 1]   99 	push	#0x0a
      00B222 4B 50            [ 1]  100 	push	#0x50
      00B224 CD 88 85         [ 4]  101 	call	_GPIO_Init
      00B227 5B 04            [ 2]  102 	addw	sp, #4
                           000024   103 	C$brake.c$51$1_0$390 ==.
                                    104 ;	brake.c: 51: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC,
      00B229 4B 03            [ 1]  105 	push	#0x03
      00B22B 4B 02            [ 1]  106 	push	#0x02
      00B22D CD A0 18         [ 4]  107 	call	_EXTI_SetExtIntSensitivity
      00B230 5B 02            [ 2]  108 	addw	sp, #2
                           00002D   109 	C$brake.c$53$1_0$390 ==.
                                    110 ;	brake.c: 53: }
                           00002D   111 	C$brake.c$53$1_0$390 ==.
                           00002D   112 	XG$brake_init$0$0 ==.
      00B232 81               [ 4]  113 	ret
                           00002E   114 	G$brake_is_set$0$0 ==.
                           00002E   115 	C$brake.c$58$1_0$392 ==.
                                    116 ;	brake.c: 58: BitStatus brake_is_set(void)
                                    117 ;	-----------------------------------------
                                    118 ;	 function brake_is_set
                                    119 ;	-----------------------------------------
      00B233                        120 _brake_is_set:
                           00002E   121 	C$brake.c$60$1_0$392 ==.
                                    122 ;	brake.c: 60: if(GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) == 0)
      00B233 4B 40            [ 1]  123 	push	#0x40
      00B235 4B 0A            [ 1]  124 	push	#0x0a
      00B237 4B 50            [ 1]  125 	push	#0x50
      00B239 CD 89 2A         [ 4]  126 	call	_GPIO_ReadInputPin
      00B23C 5B 03            [ 2]  127 	addw	sp, #3
      00B23E 4D               [ 1]  128 	tnz	a
      00B23F 26 04            [ 1]  129 	jrne	00102$
                           00003C   130 	C$brake.c$61$1_0$392 ==.
                                    131 ;	brake.c: 61: return 1;
      00B241 A6 01            [ 1]  132 	ld	a, #0x01
      00B243 20 01            [ 2]  133 	jra	00104$
      00B245                        134 00102$:
                           000040   135 	C$brake.c$63$1_0$392 ==.
                                    136 ;	brake.c: 63: return 0;
      00B245 4F               [ 1]  137 	clr	a
      00B246                        138 00104$:
                           000041   139 	C$brake.c$64$1_0$392 ==.
                                    140 ;	brake.c: 64: }
                           000041   141 	C$brake.c$64$1_0$392 ==.
                           000041   142 	XG$brake_is_set$0$0 ==.
      00B246 81               [ 4]  143 	ret
                                    144 	.area CODE
                                    145 	.area CONST
                                    146 	.area INITIALIZER
                                    147 	.area CABS (ABS)
