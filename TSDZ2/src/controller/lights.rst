                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lights
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lights_set_state
                                     12 	.globl _lights_init
                                     13 	.globl _GPIO_WriteLow
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _GPIO_Init
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                           000000    53 	G$lights_init$0$0 ==.
                           000000    54 	C$lights.c$17$0_0$346 ==.
                                     55 ;	lights.c: 17: void lights_init(void)
                                     56 ;	-----------------------------------------
                                     57 ;	 function lights_init
                                     58 ;	-----------------------------------------
      00D181                         59 _lights_init:
                           000000    60 	C$lights.c$19$1_0$346 ==.
                                     61 ;	lights.c: 19: GPIO_Init(LIGHTS__PORT,
      00D181 4B C0            [ 1]   62 	push	#0xc0
      00D183 4B 10            [ 1]   63 	push	#0x10
      00D185 4B 0F            [ 1]   64 	push	#0x0f
      00D187 4B 50            [ 1]   65 	push	#0x50
      00D189 CD 88 85         [ 4]   66 	call	_GPIO_Init
      00D18C 5B 04            [ 2]   67 	addw	sp, #4
                           00000D    68 	C$lights.c$22$1_0$346 ==.
                                     69 ;	lights.c: 22: }
                           00000D    70 	C$lights.c$22$1_0$346 ==.
                           00000D    71 	XG$lights_init$0$0 ==.
      00D18E 81               [ 4]   72 	ret
                           00000E    73 	G$lights_set_state$0$0 ==.
                           00000E    74 	C$lights.c$27$1_0$348 ==.
                                     75 ;	lights.c: 27: void lights_set_state(uint8_t ui8_state)
                                     76 ;	-----------------------------------------
                                     77 ;	 function lights_set_state
                                     78 ;	-----------------------------------------
      00D18F                         79 _lights_set_state:
                           00000E    80 	C$lights.c$29$1_0$348 ==.
                                     81 ;	lights.c: 29: if(ui8_state)
      00D18F 0D 03            [ 1]   82 	tnz	(0x03, sp)
      00D191 27 0D            [ 1]   83 	jreq	00102$
                           000012    84 	C$lights.c$31$2_0$349 ==.
                                     85 ;	lights.c: 31: GPIO_WriteHigh(LIGHTS__PORT, LIGHTS__PIN);
      00D193 4B 10            [ 1]   86 	push	#0x10
      00D195 4B 0F            [ 1]   87 	push	#0x0f
      00D197 4B 50            [ 1]   88 	push	#0x50
      00D199 CD 89 05         [ 4]   89 	call	_GPIO_WriteHigh
      00D19C 5B 03            [ 2]   90 	addw	sp, #3
      00D19E 20 0B            [ 2]   91 	jra	00104$
      00D1A0                         92 00102$:
                           00001F    93 	C$lights.c$35$2_0$350 ==.
                                     94 ;	lights.c: 35: GPIO_WriteLow(LIGHTS__PORT, LIGHTS__PIN);
      00D1A0 4B 10            [ 1]   95 	push	#0x10
      00D1A2 4B 0F            [ 1]   96 	push	#0x0f
      00D1A4 4B 50            [ 1]   97 	push	#0x50
      00D1A6 CD 89 0C         [ 4]   98 	call	_GPIO_WriteLow
      00D1A9 5B 03            [ 2]   99 	addw	sp, #3
      00D1AB                        100 00104$:
                           00002A   101 	C$lights.c$37$1_0$348 ==.
                                    102 ;	lights.c: 37: }
                           00002A   103 	C$lights.c$37$1_0$348 ==.
                           00002A   104 	XG$lights_set_state$0$0 ==.
      00D1AB 81               [ 4]  105 	ret
                                    106 	.area CODE
                                    107 	.area CONST
                                    108 	.area INITIALIZER
                                    109 	.area CABS (ABS)
