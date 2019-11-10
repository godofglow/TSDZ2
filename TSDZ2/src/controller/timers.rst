                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module timers
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer3_init
                                     12 	.globl _timer2_init
                                     13 	.globl _TIM3_Cmd
                                     14 	.globl _TIM3_TimeBaseInit
                                     15 	.globl _TIM3_DeInit
                                     16 	.globl _TIM2_OC2PreloadConfig
                                     17 	.globl _TIM2_ARRPreloadConfig
                                     18 	.globl _TIM2_Cmd
                                     19 	.globl _TIM2_OC2Init
                                     20 	.globl _TIM2_TimeBaseInit
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                           000000    58 	G$timer2_init$0$0 ==.
                           000000    59 	C$timers.c$17$0_0$346 ==.
                                     60 ;	timers.c: 17: void timer2_init(void)
                                     61 ;	-----------------------------------------
                                     62 ;	 function timer2_init
                                     63 ;	-----------------------------------------
      00B3E9                         64 _timer2_init:
                           000000    65 	C$timers.c$23$1_0$346 ==.
                                     66 ;	timers.c: 23: TIM2_TimeBaseInit(TIM2_PRESCALER_2, 159);
      00B3E9 4B 9F            [ 1]   67 	push	#0x9f
      00B3EB 4B 00            [ 1]   68 	push	#0x00
      00B3ED 4B 01            [ 1]   69 	push	#0x01
      00B3EF CD 97 5E         [ 4]   70 	call	_TIM2_TimeBaseInit
      00B3F2 5B 03            [ 2]   71 	addw	sp, #3
                           00000B    72 	C$timers.c$26$1_0$346 ==.
                                     73 ;	timers.c: 26: TIM2_OC2Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE, 16, TIM2_OCPOLARITY_HIGH);
      00B3F4 4B 00            [ 1]   74 	push	#0x00
      00B3F6 4B 10            [ 1]   75 	push	#0x10
      00B3F8 4B 00            [ 1]   76 	push	#0x00
      00B3FA 4B 11            [ 1]   77 	push	#0x11
      00B3FC 4B 60            [ 1]   78 	push	#0x60
      00B3FE CD 97 B0         [ 4]   79 	call	_TIM2_OC2Init
      00B401 5B 05            [ 2]   80 	addw	sp, #5
                           00001A    81 	C$timers.c$27$1_0$346 ==.
                                     82 ;	timers.c: 27: TIM2_OC2PreloadConfig(ENABLE);
      00B403 4B 01            [ 1]   83 	push	#0x01
      00B405 CD 99 8D         [ 4]   84 	call	_TIM2_OC2PreloadConfig
      00B408 84               [ 1]   85 	pop	a
                           000020    86 	C$timers.c$29$1_0$346 ==.
                                     87 ;	timers.c: 29: TIM2_ARRPreloadConfig(ENABLE);
      00B409 4B 01            [ 1]   88 	push	#0x01
      00B40B CD 99 6F         [ 4]   89 	call	_TIM2_ARRPreloadConfig
      00B40E 84               [ 1]   90 	pop	a
                           000026    91 	C$timers.c$31$1_0$346 ==.
                                     92 ;	timers.c: 31: TIM2_Cmd(ENABLE);
      00B40F 4B 01            [ 1]   93 	push	#0x01
      00B411 CD 98 E7         [ 4]   94 	call	_TIM2_Cmd
      00B414 84               [ 1]   95 	pop	a
                           00002C    96 	C$timers.c$34$2_0$347 ==.
                                     97 ;	timers.c: 34: for(ui16_i = 0; ui16_i < (65000); ui16_i++) { ; }
      00B415 90 AE FD E8      [ 2]   98 	ldw	y, #0xfde8
      00B419                         99 00104$:
      00B419 93               [ 1]  100 	ldw	x, y
      00B41A 5A               [ 2]  101 	decw	x
      00B41B 90 93            [ 1]  102 	ldw	y, x
      00B41D 5D               [ 2]  103 	tnzw	x
      00B41E 26 F9            [ 1]  104 	jrne	00104$
                           000037   105 	C$timers.c$35$2_0$346 ==.
                                    106 ;	timers.c: 35: }
                           000037   107 	C$timers.c$35$2_0$346 ==.
                           000037   108 	XG$timer2_init$0$0 ==.
      00B420 81               [ 4]  109 	ret
                           000038   110 	G$timer3_init$0$0 ==.
                           000038   111 	C$timers.c$40$2_0$350 ==.
                                    112 ;	timers.c: 40: void timer3_init(void)
                                    113 ;	-----------------------------------------
                                    114 ;	 function timer3_init
                                    115 ;	-----------------------------------------
      00B421                        116 _timer3_init:
                           000038   117 	C$timers.c$45$1_0$350 ==.
                                    118 ;	timers.c: 45: TIM3_DeInit();
      00B421 CD 9C 18         [ 4]  119 	call	_TIM3_DeInit
                           00003B   120 	C$timers.c$46$1_0$350 ==.
                                    121 ;	timers.c: 46: TIM3_TimeBaseInit(TIM3_PRESCALER_16384, 0xffff); // each incremment at every ~1ms
      00B424 4B FF            [ 1]  122 	push	#0xff
      00B426 4B FF            [ 1]  123 	push	#0xff
      00B428 4B 0E            [ 1]  124 	push	#0x0e
      00B42A CD 9C 5D         [ 4]  125 	call	_TIM3_TimeBaseInit
      00B42D 5B 03            [ 2]  126 	addw	sp, #3
                           000046   127 	C$timers.c$47$1_0$350 ==.
                                    128 ;	timers.c: 47: TIM3_Cmd(ENABLE); // TIM3 counter enable
      00B42F 4B 01            [ 1]  129 	push	#0x01
      00B431 CD 9D 95         [ 4]  130 	call	_TIM3_Cmd
      00B434 84               [ 1]  131 	pop	a
                           00004C   132 	C$timers.c$50$2_0$351 ==.
                                    133 ;	timers.c: 50: for(ui16_i = 0; ui16_i < (65000); ui16_i++) { ; }
      00B435 90 AE FD E8      [ 2]  134 	ldw	y, #0xfde8
      00B439                        135 00104$:
      00B439 93               [ 1]  136 	ldw	x, y
      00B43A 5A               [ 2]  137 	decw	x
      00B43B 90 93            [ 1]  138 	ldw	y, x
      00B43D 5D               [ 2]  139 	tnzw	x
      00B43E 26 F9            [ 1]  140 	jrne	00104$
                           000057   141 	C$timers.c$51$2_0$350 ==.
                                    142 ;	timers.c: 51: }
                           000057   143 	C$timers.c$51$2_0$350 ==.
                           000057   144 	XG$timer3_init$0$0 ==.
      00B440 81               [ 4]  145 	ret
                                    146 	.area CODE
                                    147 	.area CONST
                                    148 	.area INITIALIZER
                                    149 	.area CABS (ABS)
