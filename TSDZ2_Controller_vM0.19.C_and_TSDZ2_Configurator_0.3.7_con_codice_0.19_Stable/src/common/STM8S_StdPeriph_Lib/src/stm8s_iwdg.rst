                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_iwdg
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _IWDG_WriteAccessCmd
                                     12 	.globl _IWDG_SetPrescaler
                                     13 	.globl _IWDG_SetReload
                                     14 	.globl _IWDG_ReloadCounter
                                     15 	.globl _IWDG_Enable
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
                           000000    53 	G$IWDG_WriteAccessCmd$0$0 ==.
                           000000    54 	C$stm8s_iwdg.c$48$0_0$346 ==.
                                     55 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 48: void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
                                     56 ;	-----------------------------------------
                                     57 ;	 function IWDG_WriteAccessCmd
                                     58 ;	-----------------------------------------
      008337                         59 _IWDG_WriteAccessCmd:
                           000000    60 	C$stm8s_iwdg.c$53$1_0$346 ==.
                                     61 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 53: IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
      008337 AE 50 E0         [ 2]   62 	ldw	x, #0x50e0
      00833A 7B 03            [ 1]   63 	ld	a, (0x03, sp)
      00833C F7               [ 1]   64 	ld	(x), a
                           000006    65 	C$stm8s_iwdg.c$54$1_0$346 ==.
                                     66 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 54: }
                           000006    67 	C$stm8s_iwdg.c$54$1_0$346 ==.
                           000006    68 	XG$IWDG_WriteAccessCmd$0$0 ==.
      00833D 81               [ 4]   69 	ret
                           000007    70 	G$IWDG_SetPrescaler$0$0 ==.
                           000007    71 	C$stm8s_iwdg.c$63$1_0$348 ==.
                                     72 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 63: void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
                                     73 ;	-----------------------------------------
                                     74 ;	 function IWDG_SetPrescaler
                                     75 ;	-----------------------------------------
      00833E                         76 _IWDG_SetPrescaler:
                           000007    77 	C$stm8s_iwdg.c$68$1_0$348 ==.
                                     78 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 68: IWDG->PR = (uint8_t)IWDG_Prescaler;
      00833E AE 50 E1         [ 2]   79 	ldw	x, #0x50e1
      008341 7B 03            [ 1]   80 	ld	a, (0x03, sp)
      008343 F7               [ 1]   81 	ld	(x), a
                           00000D    82 	C$stm8s_iwdg.c$69$1_0$348 ==.
                                     83 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 69: }
                           00000D    84 	C$stm8s_iwdg.c$69$1_0$348 ==.
                           00000D    85 	XG$IWDG_SetPrescaler$0$0 ==.
      008344 81               [ 4]   86 	ret
                           00000E    87 	G$IWDG_SetReload$0$0 ==.
                           00000E    88 	C$stm8s_iwdg.c$78$1_0$350 ==.
                                     89 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 78: void IWDG_SetReload(uint8_t IWDG_Reload)
                                     90 ;	-----------------------------------------
                                     91 ;	 function IWDG_SetReload
                                     92 ;	-----------------------------------------
      008345                         93 _IWDG_SetReload:
                           00000E    94 	C$stm8s_iwdg.c$80$1_0$350 ==.
                                     95 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 80: IWDG->RLR = IWDG_Reload;
      008345 AE 50 E2         [ 2]   96 	ldw	x, #0x50e2
      008348 7B 03            [ 1]   97 	ld	a, (0x03, sp)
      00834A F7               [ 1]   98 	ld	(x), a
                           000014    99 	C$stm8s_iwdg.c$81$1_0$350 ==.
                                    100 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 81: }
                           000014   101 	C$stm8s_iwdg.c$81$1_0$350 ==.
                           000014   102 	XG$IWDG_SetReload$0$0 ==.
      00834B 81               [ 4]  103 	ret
                           000015   104 	G$IWDG_ReloadCounter$0$0 ==.
                           000015   105 	C$stm8s_iwdg.c$89$1_0$352 ==.
                                    106 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 89: void IWDG_ReloadCounter(void)
                                    107 ;	-----------------------------------------
                                    108 ;	 function IWDG_ReloadCounter
                                    109 ;	-----------------------------------------
      00834C                        110 _IWDG_ReloadCounter:
                           000015   111 	C$stm8s_iwdg.c$91$1_0$352 ==.
                                    112 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 91: IWDG->KR = IWDG_KEY_REFRESH;
      00834C 35 AA 50 E0      [ 1]  113 	mov	0x50e0+0, #0xaa
                           000019   114 	C$stm8s_iwdg.c$92$1_0$352 ==.
                                    115 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 92: }
                           000019   116 	C$stm8s_iwdg.c$92$1_0$352 ==.
                           000019   117 	XG$IWDG_ReloadCounter$0$0 ==.
      008350 81               [ 4]  118 	ret
                           00001A   119 	G$IWDG_Enable$0$0 ==.
                           00001A   120 	C$stm8s_iwdg.c$99$1_0$354 ==.
                                    121 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 99: void IWDG_Enable(void)
                                    122 ;	-----------------------------------------
                                    123 ;	 function IWDG_Enable
                                    124 ;	-----------------------------------------
      008351                        125 _IWDG_Enable:
                           00001A   126 	C$stm8s_iwdg.c$101$1_0$354 ==.
                                    127 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 101: IWDG->KR = IWDG_KEY_ENABLE;
      008351 35 CC 50 E0      [ 1]  128 	mov	0x50e0+0, #0xcc
                           00001E   129 	C$stm8s_iwdg.c$102$1_0$354 ==.
                                    130 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 102: }
                           00001E   131 	C$stm8s_iwdg.c$102$1_0$354 ==.
                           00001E   132 	XG$IWDG_Enable$0$0 ==.
      008355 81               [ 4]  133 	ret
                                    134 	.area CODE
                                    135 	.area CONST
                                    136 	.area INITIALIZER
                                    137 	.area CABS (ABS)
