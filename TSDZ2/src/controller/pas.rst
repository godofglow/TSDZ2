                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module pas
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _pas_init
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
                           000000    50 	G$pas_init$0$0 ==.
                           000000    51 	C$pas.c$16$0_0$346 ==.
                                     52 ;	pas.c: 16: void pas_init(void)
                                     53 ;	-----------------------------------------
                                     54 ;	 function pas_init
                                     55 ;	-----------------------------------------
      00B247                         56 _pas_init:
                           000000    57 	C$pas.c$19$1_0$346 ==.
                                     58 ;	pas.c: 19: GPIO_Init(PAS1__PORT,
      00B247 4B 40            [ 1]   59 	push	#0x40
      00B249 4B 01            [ 1]   60 	push	#0x01
      00B24B 4B 14            [ 1]   61 	push	#0x14
      00B24D 4B 50            [ 1]   62 	push	#0x50
      00B24F CD 88 85         [ 4]   63 	call	_GPIO_Init
      00B252 5B 04            [ 2]   64 	addw	sp, #4
                           00000D    65 	C$pas.c$24$1_0$346 ==.
                                     66 ;	pas.c: 24: GPIO_Init(PAS2__PORT,
      00B254 4B 40            [ 1]   67 	push	#0x40
      00B256 4B 80            [ 1]   68 	push	#0x80
      00B258 4B 0F            [ 1]   69 	push	#0x0f
      00B25A 4B 50            [ 1]   70 	push	#0x50
      00B25C CD 88 85         [ 4]   71 	call	_GPIO_Init
      00B25F 5B 04            [ 2]   72 	addw	sp, #4
                           00001A    73 	C$pas.c$27$1_0$346 ==.
                                     74 ;	pas.c: 27: }
                           00001A    75 	C$pas.c$27$1_0$346 ==.
                           00001A    76 	XG$pas_init$0$0 ==.
      00B261 81               [ 4]   77 	ret
                                     78 	.area CODE
                                     79 	.area CONST
                                     80 	.area INITIALIZER
                                     81 	.area CABS (ABS)
