                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _CLK_DeInit
                                     14 	.globl _CLK_FastHaltWakeUpCmd
                                     15 	.globl _CLK_HSECmd
                                     16 	.globl _CLK_HSICmd
                                     17 	.globl _CLK_LSICmd
                                     18 	.globl _CLK_CCOCmd
                                     19 	.globl _CLK_ClockSwitchCmd
                                     20 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     21 	.globl _CLK_PeripheralClockConfig
                                     22 	.globl _CLK_ClockSwitchConfig
                                     23 	.globl _CLK_HSIPrescalerConfig
                                     24 	.globl _CLK_CCOConfig
                                     25 	.globl _CLK_ITConfig
                                     26 	.globl _CLK_SYSCLKConfig
                                     27 	.globl _CLK_SWIMConfig
                                     28 	.globl _CLK_ClockSecuritySystemEnable
                                     29 	.globl _CLK_GetSYSCLKSource
                                     30 	.globl _CLK_GetClockFreq
                                     31 	.globl _CLK_AdjustHSICalibrationValue
                                     32 	.globl _CLK_SYSCLKEmergencyClear
                                     33 	.globl _CLK_GetFlagStatus
                                     34 	.globl _CLK_GetITStatus
                                     35 	.globl _CLK_ClearITPendingBit
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DATA
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area INITIALIZED
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DABS (ABS)
                                     48 
                                     49 ; default segment ordering for linker
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area CONST
                                     54 	.area INITIALIZER
                                     55 	.area CODE
                                     56 
                                     57 ;--------------------------------------------------------
                                     58 ; global & static initialisations
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area GSINIT
                                     62 	.area GSFINAL
                                     63 	.area GSINIT
                                     64 ;--------------------------------------------------------
                                     65 ; Home
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area HOME
                                     69 ;--------------------------------------------------------
                                     70 ; code
                                     71 ;--------------------------------------------------------
                                     72 	.area CODE
                           000000    73 	G$CLK_DeInit$0$0 ==.
                           000000    74 	C$stm8s_clk.c$72$0_0$346 ==.
                                     75 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     76 ;	-----------------------------------------
                                     77 ;	 function CLK_DeInit
                                     78 ;	-----------------------------------------
      00851B                         79 _CLK_DeInit:
                           000000    80 	C$stm8s_clk.c$74$1_0$346 ==.
                                     81 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      00851B 35 01 50 C0      [ 1]   82 	mov	0x50c0+0, #0x01
                           000004    83 	C$stm8s_clk.c$75$1_0$346 ==.
                                     84 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      00851F 35 00 50 C1      [ 1]   85 	mov	0x50c1+0, #0x00
                           000008    86 	C$stm8s_clk.c$76$1_0$346 ==.
                                     87 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008523 35 E1 50 C4      [ 1]   88 	mov	0x50c4+0, #0xe1
                           00000C    89 	C$stm8s_clk.c$77$1_0$346 ==.
                                     90 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008527 35 00 50 C5      [ 1]   91 	mov	0x50c5+0, #0x00
                           000010    92 	C$stm8s_clk.c$78$1_0$346 ==.
                                     93 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      00852B 35 18 50 C6      [ 1]   94 	mov	0x50c6+0, #0x18
                           000014    95 	C$stm8s_clk.c$79$1_0$346 ==.
                                     96 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      00852F 35 FF 50 C7      [ 1]   97 	mov	0x50c7+0, #0xff
                           000018    98 	C$stm8s_clk.c$80$1_0$346 ==.
                                     99 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008533 35 FF 50 CA      [ 1]  100 	mov	0x50ca+0, #0xff
                           00001C   101 	C$stm8s_clk.c$81$1_0$346 ==.
                                    102 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008537 35 00 50 C8      [ 1]  103 	mov	0x50c8+0, #0x00
                           000020   104 	C$stm8s_clk.c$82$1_0$346 ==.
                                    105 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00853B 35 00 50 C9      [ 1]  106 	mov	0x50c9+0, #0x00
                           000024   107 	C$stm8s_clk.c$83$1_0$346 ==.
                                    108 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      00853F                        109 00101$:
      00853F C6 50 C9         [ 1]  110 	ld	a, 0x50c9
      008542 44               [ 1]  111 	srl	a
      008543 25 FA            [ 1]  112 	jrc	00101$
                           00002A   113 	C$stm8s_clk.c$85$1_0$346 ==.
                                    114 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008545 35 00 50 C9      [ 1]  115 	mov	0x50c9+0, #0x00
                           00002E   116 	C$stm8s_clk.c$86$1_0$346 ==.
                                    117 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008549 35 00 50 CC      [ 1]  118 	mov	0x50cc+0, #0x00
                           000032   119 	C$stm8s_clk.c$87$1_0$346 ==.
                                    120 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      00854D 35 00 50 CD      [ 1]  121 	mov	0x50cd+0, #0x00
                           000036   122 	C$stm8s_clk.c$88$1_0$346 ==.
                                    123 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 88: }
                           000036   124 	C$stm8s_clk.c$88$1_0$346 ==.
                           000036   125 	XG$CLK_DeInit$0$0 ==.
      008551 81               [ 4]  126 	ret
                           000037   127 	G$CLK_FastHaltWakeUpCmd$0$0 ==.
                           000037   128 	C$stm8s_clk.c$99$1_0$349 ==.
                                    129 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    130 ;	-----------------------------------------
                                    131 ;	 function CLK_FastHaltWakeUpCmd
                                    132 ;	-----------------------------------------
      008552                        133 _CLK_FastHaltWakeUpCmd:
                           000037   134 	C$stm8s_clk.c$104$1_0$349 ==.
                                    135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      008552 0D 03            [ 1]  136 	tnz	(0x03, sp)
      008554 27 06            [ 1]  137 	jreq	00102$
                           00003B   138 	C$stm8s_clk.c$107$2_0$350 ==.
                                    139 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008556 72 14 50 C0      [ 1]  140 	bset	20672, #2
      00855A 20 04            [ 2]  141 	jra	00104$
      00855C                        142 00102$:
                           000041   143 	C$stm8s_clk.c$112$2_0$351 ==.
                                    144 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      00855C 72 15 50 C0      [ 1]  145 	bres	20672, #2
      008560                        146 00104$:
                           000045   147 	C$stm8s_clk.c$114$1_0$349 ==.
                                    148 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 114: }
                           000045   149 	C$stm8s_clk.c$114$1_0$349 ==.
                           000045   150 	XG$CLK_FastHaltWakeUpCmd$0$0 ==.
      008560 81               [ 4]  151 	ret
                           000046   152 	G$CLK_HSECmd$0$0 ==.
                           000046   153 	C$stm8s_clk.c$121$1_0$353 ==.
                                    154 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    155 ;	-----------------------------------------
                                    156 ;	 function CLK_HSECmd
                                    157 ;	-----------------------------------------
      008561                        158 _CLK_HSECmd:
                           000046   159 	C$stm8s_clk.c$126$1_0$353 ==.
                                    160 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      008561 0D 03            [ 1]  161 	tnz	(0x03, sp)
      008563 27 06            [ 1]  162 	jreq	00102$
                           00004A   163 	C$stm8s_clk.c$129$2_0$354 ==.
                                    164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      008565 72 10 50 C1      [ 1]  165 	bset	20673, #0
      008569 20 04            [ 2]  166 	jra	00104$
      00856B                        167 00102$:
                           000050   168 	C$stm8s_clk.c$134$2_0$355 ==.
                                    169 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00856B 72 11 50 C1      [ 1]  170 	bres	20673, #0
      00856F                        171 00104$:
                           000054   172 	C$stm8s_clk.c$136$1_0$353 ==.
                                    173 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 136: }
                           000054   174 	C$stm8s_clk.c$136$1_0$353 ==.
                           000054   175 	XG$CLK_HSECmd$0$0 ==.
      00856F 81               [ 4]  176 	ret
                           000055   177 	G$CLK_HSICmd$0$0 ==.
                           000055   178 	C$stm8s_clk.c$143$1_0$357 ==.
                                    179 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    180 ;	-----------------------------------------
                                    181 ;	 function CLK_HSICmd
                                    182 ;	-----------------------------------------
      008570                        183 _CLK_HSICmd:
                           000055   184 	C$stm8s_clk.c$148$1_0$357 ==.
                                    185 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      008570 0D 03            [ 1]  186 	tnz	(0x03, sp)
      008572 27 06            [ 1]  187 	jreq	00102$
                           000059   188 	C$stm8s_clk.c$151$2_0$358 ==.
                                    189 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      008574 72 10 50 C0      [ 1]  190 	bset	20672, #0
      008578 20 04            [ 2]  191 	jra	00104$
      00857A                        192 00102$:
                           00005F   193 	C$stm8s_clk.c$156$2_0$359 ==.
                                    194 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00857A 72 11 50 C0      [ 1]  195 	bres	20672, #0
      00857E                        196 00104$:
                           000063   197 	C$stm8s_clk.c$158$1_0$357 ==.
                                    198 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 158: }
                           000063   199 	C$stm8s_clk.c$158$1_0$357 ==.
                           000063   200 	XG$CLK_HSICmd$0$0 ==.
      00857E 81               [ 4]  201 	ret
                           000064   202 	G$CLK_LSICmd$0$0 ==.
                           000064   203 	C$stm8s_clk.c$166$1_0$361 ==.
                                    204 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    205 ;	-----------------------------------------
                                    206 ;	 function CLK_LSICmd
                                    207 ;	-----------------------------------------
      00857F                        208 _CLK_LSICmd:
                           000064   209 	C$stm8s_clk.c$171$1_0$361 ==.
                                    210 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      00857F 0D 03            [ 1]  211 	tnz	(0x03, sp)
      008581 27 06            [ 1]  212 	jreq	00102$
                           000068   213 	C$stm8s_clk.c$174$2_0$362 ==.
                                    214 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      008583 72 16 50 C0      [ 1]  215 	bset	20672, #3
      008587 20 04            [ 2]  216 	jra	00104$
      008589                        217 00102$:
                           00006E   218 	C$stm8s_clk.c$179$2_0$363 ==.
                                    219 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008589 72 17 50 C0      [ 1]  220 	bres	20672, #3
      00858D                        221 00104$:
                           000072   222 	C$stm8s_clk.c$181$1_0$361 ==.
                                    223 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: }
                           000072   224 	C$stm8s_clk.c$181$1_0$361 ==.
                           000072   225 	XG$CLK_LSICmd$0$0 ==.
      00858D 81               [ 4]  226 	ret
                           000073   227 	G$CLK_CCOCmd$0$0 ==.
                           000073   228 	C$stm8s_clk.c$189$1_0$365 ==.
                                    229 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    230 ;	-----------------------------------------
                                    231 ;	 function CLK_CCOCmd
                                    232 ;	-----------------------------------------
      00858E                        233 _CLK_CCOCmd:
                           000073   234 	C$stm8s_clk.c$194$1_0$365 ==.
                                    235 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      00858E 0D 03            [ 1]  236 	tnz	(0x03, sp)
      008590 27 06            [ 1]  237 	jreq	00102$
                           000077   238 	C$stm8s_clk.c$197$2_0$366 ==.
                                    239 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008592 72 10 50 C9      [ 1]  240 	bset	20681, #0
      008596 20 04            [ 2]  241 	jra	00104$
      008598                        242 00102$:
                           00007D   243 	C$stm8s_clk.c$202$2_0$367 ==.
                                    244 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      008598 72 11 50 C9      [ 1]  245 	bres	20681, #0
      00859C                        246 00104$:
                           000081   247 	C$stm8s_clk.c$204$1_0$365 ==.
                                    248 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 204: }
                           000081   249 	C$stm8s_clk.c$204$1_0$365 ==.
                           000081   250 	XG$CLK_CCOCmd$0$0 ==.
      00859C 81               [ 4]  251 	ret
                           000082   252 	G$CLK_ClockSwitchCmd$0$0 ==.
                           000082   253 	C$stm8s_clk.c$213$1_0$369 ==.
                                    254 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    255 ;	-----------------------------------------
                                    256 ;	 function CLK_ClockSwitchCmd
                                    257 ;	-----------------------------------------
      00859D                        258 _CLK_ClockSwitchCmd:
                           000082   259 	C$stm8s_clk.c$218$1_0$369 ==.
                                    260 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      00859D 0D 03            [ 1]  261 	tnz	(0x03, sp)
      00859F 27 06            [ 1]  262 	jreq	00102$
                           000086   263 	C$stm8s_clk.c$221$2_0$370 ==.
                                    264 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      0085A1 72 12 50 C5      [ 1]  265 	bset	20677, #1
      0085A5 20 04            [ 2]  266 	jra	00104$
      0085A7                        267 00102$:
                           00008C   268 	C$stm8s_clk.c$226$2_0$371 ==.
                                    269 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      0085A7 72 13 50 C5      [ 1]  270 	bres	20677, #1
      0085AB                        271 00104$:
                           000090   272 	C$stm8s_clk.c$228$1_0$369 ==.
                                    273 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 228: }
                           000090   274 	C$stm8s_clk.c$228$1_0$369 ==.
                           000090   275 	XG$CLK_ClockSwitchCmd$0$0 ==.
      0085AB 81               [ 4]  276 	ret
                           000091   277 	G$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
                           000091   278 	C$stm8s_clk.c$238$1_0$373 ==.
                                    279 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    280 ;	-----------------------------------------
                                    281 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    282 ;	-----------------------------------------
      0085AC                        283 _CLK_SlowActiveHaltWakeUpCmd:
                           000091   284 	C$stm8s_clk.c$243$1_0$373 ==.
                                    285 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      0085AC 0D 03            [ 1]  286 	tnz	(0x03, sp)
      0085AE 27 06            [ 1]  287 	jreq	00102$
                           000095   288 	C$stm8s_clk.c$246$2_0$374 ==.
                                    289 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0085B0 72 1A 50 C0      [ 1]  290 	bset	20672, #5
      0085B4 20 04            [ 2]  291 	jra	00104$
      0085B6                        292 00102$:
                           00009B   293 	C$stm8s_clk.c$251$2_0$375 ==.
                                    294 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      0085B6 72 1B 50 C0      [ 1]  295 	bres	20672, #5
      0085BA                        296 00104$:
                           00009F   297 	C$stm8s_clk.c$253$1_0$373 ==.
                                    298 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 253: }
                           00009F   299 	C$stm8s_clk.c$253$1_0$373 ==.
                           00009F   300 	XG$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
      0085BA 81               [ 4]  301 	ret
                           0000A0   302 	G$CLK_PeripheralClockConfig$0$0 ==.
                           0000A0   303 	C$stm8s_clk.c$263$1_0$377 ==.
                                    304 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    305 ;	-----------------------------------------
                                    306 ;	 function CLK_PeripheralClockConfig
                                    307 ;	-----------------------------------------
      0085BB                        308 _CLK_PeripheralClockConfig:
      0085BB 52 04            [ 2]  309 	sub	sp, #4
                           0000A2   310 	C$stm8s_clk.c$269$1_0$377 ==.
                                    311 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0085BD 7B 07            [ 1]  312 	ld	a, (0x07, sp)
      0085BF A5 10            [ 1]  313 	bcp	a, #0x10
      0085C1 26 41            [ 1]  314 	jrne	00108$
                           0000A8   315 	C$stm8s_clk.c$271$2_0$378 ==.
                                    316 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      0085C3 0D 08            [ 1]  317 	tnz	(0x08, sp)
      0085C5 27 1E            [ 1]  318 	jreq	00102$
                           0000AC   319 	C$stm8s_clk.c$274$3_0$379 ==.
                                    320 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0085C7 C6 50 C7         [ 1]  321 	ld	a, 0x50c7
      0085CA 97               [ 1]  322 	ld	xl, a
      0085CB 7B 07            [ 1]  323 	ld	a, (0x07, sp)
      0085CD A4 0F            [ 1]  324 	and	a, #0x0f
      0085CF 88               [ 1]  325 	push	a
      0085D0 A6 01            [ 1]  326 	ld	a, #0x01
      0085D2 6B 05            [ 1]  327 	ld	(0x05, sp), a
      0085D4 84               [ 1]  328 	pop	a
      0085D5 4D               [ 1]  329 	tnz	a
      0085D6 27 05            [ 1]  330 	jreq	00127$
      0085D8                        331 00126$:
      0085D8 08 04            [ 1]  332 	sll	(0x04, sp)
      0085DA 4A               [ 1]  333 	dec	a
      0085DB 26 FB            [ 1]  334 	jrne	00126$
      0085DD                        335 00127$:
      0085DD 9F               [ 1]  336 	ld	a, xl
      0085DE 1A 04            [ 1]  337 	or	a, (0x04, sp)
      0085E0 C7 50 C7         [ 1]  338 	ld	0x50c7, a
      0085E3 20 5E            [ 2]  339 	jra	00110$
      0085E5                        340 00102$:
                           0000CA   341 	C$stm8s_clk.c$279$3_0$380 ==.
                                    342 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0085E5 C6 50 C7         [ 1]  343 	ld	a, 0x50c7
      0085E8 6B 01            [ 1]  344 	ld	(0x01, sp), a
      0085EA 7B 07            [ 1]  345 	ld	a, (0x07, sp)
      0085EC A4 0F            [ 1]  346 	and	a, #0x0f
      0085EE 97               [ 1]  347 	ld	xl, a
      0085EF A6 01            [ 1]  348 	ld	a, #0x01
      0085F1 88               [ 1]  349 	push	a
      0085F2 9F               [ 1]  350 	ld	a, xl
      0085F3 4D               [ 1]  351 	tnz	a
      0085F4 27 05            [ 1]  352 	jreq	00129$
      0085F6                        353 00128$:
      0085F6 08 01            [ 1]  354 	sll	(1, sp)
      0085F8 4A               [ 1]  355 	dec	a
      0085F9 26 FB            [ 1]  356 	jrne	00128$
      0085FB                        357 00129$:
      0085FB 84               [ 1]  358 	pop	a
      0085FC 43               [ 1]  359 	cpl	a
      0085FD 14 01            [ 1]  360 	and	a, (0x01, sp)
      0085FF C7 50 C7         [ 1]  361 	ld	0x50c7, a
      008602 20 3F            [ 2]  362 	jra	00110$
      008604                        363 00108$:
                           0000E9   364 	C$stm8s_clk.c$284$2_0$381 ==.
                                    365 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      008604 0D 08            [ 1]  366 	tnz	(0x08, sp)
      008606 27 1E            [ 1]  367 	jreq	00105$
                           0000ED   368 	C$stm8s_clk.c$287$3_0$382 ==.
                                    369 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008608 C6 50 CA         [ 1]  370 	ld	a, 0x50ca
      00860B 97               [ 1]  371 	ld	xl, a
      00860C 7B 07            [ 1]  372 	ld	a, (0x07, sp)
      00860E A4 0F            [ 1]  373 	and	a, #0x0f
      008610 88               [ 1]  374 	push	a
      008611 A6 01            [ 1]  375 	ld	a, #0x01
      008613 6B 04            [ 1]  376 	ld	(0x04, sp), a
      008615 84               [ 1]  377 	pop	a
      008616 4D               [ 1]  378 	tnz	a
      008617 27 05            [ 1]  379 	jreq	00132$
      008619                        380 00131$:
      008619 08 03            [ 1]  381 	sll	(0x03, sp)
      00861B 4A               [ 1]  382 	dec	a
      00861C 26 FB            [ 1]  383 	jrne	00131$
      00861E                        384 00132$:
      00861E 9F               [ 1]  385 	ld	a, xl
      00861F 1A 03            [ 1]  386 	or	a, (0x03, sp)
      008621 C7 50 CA         [ 1]  387 	ld	0x50ca, a
      008624 20 1D            [ 2]  388 	jra	00110$
      008626                        389 00105$:
                           00010B   390 	C$stm8s_clk.c$292$3_0$383 ==.
                                    391 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008626 C6 50 CA         [ 1]  392 	ld	a, 0x50ca
      008629 6B 02            [ 1]  393 	ld	(0x02, sp), a
      00862B 7B 07            [ 1]  394 	ld	a, (0x07, sp)
      00862D A4 0F            [ 1]  395 	and	a, #0x0f
      00862F 97               [ 1]  396 	ld	xl, a
      008630 A6 01            [ 1]  397 	ld	a, #0x01
      008632 88               [ 1]  398 	push	a
      008633 9F               [ 1]  399 	ld	a, xl
      008634 4D               [ 1]  400 	tnz	a
      008635 27 05            [ 1]  401 	jreq	00134$
      008637                        402 00133$:
      008637 08 01            [ 1]  403 	sll	(1, sp)
      008639 4A               [ 1]  404 	dec	a
      00863A 26 FB            [ 1]  405 	jrne	00133$
      00863C                        406 00134$:
      00863C 84               [ 1]  407 	pop	a
      00863D 43               [ 1]  408 	cpl	a
      00863E 14 02            [ 1]  409 	and	a, (0x02, sp)
      008640 C7 50 CA         [ 1]  410 	ld	0x50ca, a
      008643                        411 00110$:
                           000128   412 	C$stm8s_clk.c$295$1_0$377 ==.
                                    413 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 295: }
      008643 5B 04            [ 2]  414 	addw	sp, #4
                           00012A   415 	C$stm8s_clk.c$295$1_0$377 ==.
                           00012A   416 	XG$CLK_PeripheralClockConfig$0$0 ==.
      008645 81               [ 4]  417 	ret
                           00012B   418 	G$CLK_ClockSwitchConfig$0$0 ==.
                           00012B   419 	C$stm8s_clk.c$309$1_0$385 ==.
                                    420 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    421 ;	-----------------------------------------
                                    422 ;	 function CLK_ClockSwitchConfig
                                    423 ;	-----------------------------------------
      008646                        424 _CLK_ClockSwitchConfig:
                           00012B   425 	C$stm8s_clk.c$322$1_0$385 ==.
                                    426 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008646 C6 50 C3         [ 1]  427 	ld	a, 0x50c3
      008649 90 97            [ 1]  428 	ld	yl, a
                           000130   429 	C$stm8s_clk.c$325$1_0$385 ==.
                                    430 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      00864B 7B 03            [ 1]  431 	ld	a, (0x03, sp)
      00864D 4A               [ 1]  432 	dec	a
      00864E 26 32            [ 1]  433 	jrne	00122$
                           000135   434 	C$stm8s_clk.c$328$2_0$386 ==.
                                    435 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      008650 72 12 50 C5      [ 1]  436 	bset	20677, #1
                           000139   437 	C$stm8s_clk.c$331$2_0$386 ==.
                                    438 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      008654 0D 05            [ 1]  439 	tnz	(0x05, sp)
      008656 27 06            [ 1]  440 	jreq	00102$
                           00013D   441 	C$stm8s_clk.c$333$3_0$387 ==.
                                    442 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      008658 72 14 50 C5      [ 1]  443 	bset	20677, #2
      00865C 20 04            [ 2]  444 	jra	00103$
      00865E                        445 00102$:
                           000143   446 	C$stm8s_clk.c$337$3_0$388 ==.
                                    447 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00865E 72 15 50 C5      [ 1]  448 	bres	20677, #2
      008662                        449 00103$:
                           000147   450 	C$stm8s_clk.c$341$2_0$386 ==.
                                    451 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      008662 AE 50 C4         [ 2]  452 	ldw	x, #0x50c4
      008665 7B 04            [ 1]  453 	ld	a, (0x04, sp)
      008667 F7               [ 1]  454 	ld	(x), a
                           00014D   455 	C$stm8s_clk.c$344$1_0$385 ==.
                                    456 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008668 5F               [ 1]  457 	clrw	x
      008669 5A               [ 2]  458 	decw	x
      00866A                        459 00105$:
      00866A C6 50 C5         [ 1]  460 	ld	a, 0x50c5
      00866D 44               [ 1]  461 	srl	a
      00866E 24 06            [ 1]  462 	jrnc	00107$
      008670 5D               [ 2]  463 	tnzw	x
      008671 27 03            [ 1]  464 	jreq	00107$
                           000158   465 	C$stm8s_clk.c$346$3_0$389 ==.
                                    466 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 346: DownCounter--;
      008673 5A               [ 2]  467 	decw	x
      008674 20 F4            [ 2]  468 	jra	00105$
      008676                        469 00107$:
                           00015B   470 	C$stm8s_clk.c$349$2_0$386 ==.
                                    471 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 349: if(DownCounter != 0)
      008676 5D               [ 2]  472 	tnzw	x
      008677 27 05            [ 1]  473 	jreq	00109$
                           00015E   474 	C$stm8s_clk.c$351$3_0$390 ==.
                                    475 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 351: Swif = SUCCESS;
      008679 A6 01            [ 1]  476 	ld	a, #0x01
      00867B 97               [ 1]  477 	ld	xl, a
      00867C 20 35            [ 2]  478 	jra	00123$
      00867E                        479 00109$:
                           000163   480 	C$stm8s_clk.c$355$3_0$391 ==.
                                    481 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 355: Swif = ERROR;
      00867E 4F               [ 1]  482 	clr	a
      00867F 97               [ 1]  483 	ld	xl, a
      008680 20 31            [ 2]  484 	jra	00123$
      008682                        485 00122$:
                           000167   486 	C$stm8s_clk.c$361$2_0$392 ==.
                                    487 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      008682 0D 05            [ 1]  488 	tnz	(0x05, sp)
      008684 27 06            [ 1]  489 	jreq	00112$
                           00016B   490 	C$stm8s_clk.c$363$3_0$393 ==.
                                    491 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      008686 72 14 50 C5      [ 1]  492 	bset	20677, #2
      00868A 20 04            [ 2]  493 	jra	00113$
      00868C                        494 00112$:
                           000171   495 	C$stm8s_clk.c$367$3_0$394 ==.
                                    496 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00868C 72 15 50 C5      [ 1]  497 	bres	20677, #2
      008690                        498 00113$:
                           000175   499 	C$stm8s_clk.c$371$2_0$392 ==.
                                    500 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      008690 AE 50 C4         [ 2]  501 	ldw	x, #0x50c4
      008693 7B 04            [ 1]  502 	ld	a, (0x04, sp)
      008695 F7               [ 1]  503 	ld	(x), a
                           00017B   504 	C$stm8s_clk.c$374$1_0$385 ==.
                                    505 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008696 5F               [ 1]  506 	clrw	x
      008697 5A               [ 2]  507 	decw	x
      008698                        508 00115$:
      008698 C6 50 C5         [ 1]  509 	ld	a, 0x50c5
      00869B A5 08            [ 1]  510 	bcp	a, #0x08
      00869D 27 06            [ 1]  511 	jreq	00117$
      00869F 5D               [ 2]  512 	tnzw	x
      0086A0 27 03            [ 1]  513 	jreq	00117$
                           000187   514 	C$stm8s_clk.c$376$3_0$395 ==.
                                    515 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 376: DownCounter--;
      0086A2 5A               [ 2]  516 	decw	x
      0086A3 20 F3            [ 2]  517 	jra	00115$
      0086A5                        518 00117$:
                           00018A   519 	C$stm8s_clk.c$379$2_0$392 ==.
                                    520 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 379: if(DownCounter != 0)
      0086A5 5D               [ 2]  521 	tnzw	x
      0086A6 27 09            [ 1]  522 	jreq	00119$
                           00018D   523 	C$stm8s_clk.c$382$3_0$396 ==.
                                    524 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      0086A8 72 12 50 C5      [ 1]  525 	bset	20677, #1
                           000191   526 	C$stm8s_clk.c$383$3_0$396 ==.
                                    527 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 383: Swif = SUCCESS;
      0086AC A6 01            [ 1]  528 	ld	a, #0x01
      0086AE 97               [ 1]  529 	ld	xl, a
      0086AF 20 02            [ 2]  530 	jra	00123$
      0086B1                        531 00119$:
                           000196   532 	C$stm8s_clk.c$387$3_0$397 ==.
                                    533 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 387: Swif = ERROR;
      0086B1 4F               [ 1]  534 	clr	a
      0086B2 97               [ 1]  535 	ld	xl, a
      0086B3                        536 00123$:
                           000198   537 	C$stm8s_clk.c$390$1_0$385 ==.
                                    538 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 390: if(Swif != ERROR)
      0086B3 9F               [ 1]  539 	ld	a, xl
      0086B4 4D               [ 1]  540 	tnz	a
      0086B5 27 2E            [ 1]  541 	jreq	00136$
                           00019C   542 	C$stm8s_clk.c$393$2_0$398 ==.
                                    543 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0086B7 0D 06            [ 1]  544 	tnz	(0x06, sp)
      0086B9 26 0C            [ 1]  545 	jrne	00132$
      0086BB 90 9F            [ 1]  546 	ld	a, yl
      0086BD A1 E1            [ 1]  547 	cp	a, #0xe1
      0086BF 26 06            [ 1]  548 	jrne	00132$
                           0001A6   549 	C$stm8s_clk.c$395$3_0$399 ==.
                                    550 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0086C1 72 11 50 C0      [ 1]  551 	bres	20672, #0
      0086C5 20 1E            [ 2]  552 	jra	00136$
      0086C7                        553 00132$:
                           0001AC   554 	C$stm8s_clk.c$397$2_0$398 ==.
                                    555 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      0086C7 0D 06            [ 1]  556 	tnz	(0x06, sp)
      0086C9 26 0C            [ 1]  557 	jrne	00128$
      0086CB 90 9F            [ 1]  558 	ld	a, yl
      0086CD A1 D2            [ 1]  559 	cp	a, #0xd2
      0086CF 26 06            [ 1]  560 	jrne	00128$
                           0001B6   561 	C$stm8s_clk.c$399$3_0$400 ==.
                                    562 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0086D1 72 17 50 C0      [ 1]  563 	bres	20672, #3
      0086D5 20 0E            [ 2]  564 	jra	00136$
      0086D7                        565 00128$:
                           0001BC   566 	C$stm8s_clk.c$401$2_0$398 ==.
                                    567 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      0086D7 0D 06            [ 1]  568 	tnz	(0x06, sp)
      0086D9 26 0A            [ 1]  569 	jrne	00136$
      0086DB 90 9F            [ 1]  570 	ld	a, yl
      0086DD A1 B4            [ 1]  571 	cp	a, #0xb4
      0086DF 26 04            [ 1]  572 	jrne	00136$
                           0001C6   573 	C$stm8s_clk.c$403$3_0$401 ==.
                                    574 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0086E1 72 11 50 C1      [ 1]  575 	bres	20673, #0
      0086E5                        576 00136$:
                           0001CA   577 	C$stm8s_clk.c$406$1_0$385 ==.
                                    578 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 406: return(Swif);
      0086E5 9F               [ 1]  579 	ld	a, xl
                           0001CB   580 	C$stm8s_clk.c$407$1_0$385 ==.
                                    581 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 407: }
                           0001CB   582 	C$stm8s_clk.c$407$1_0$385 ==.
                           0001CB   583 	XG$CLK_ClockSwitchConfig$0$0 ==.
      0086E6 81               [ 4]  584 	ret
                           0001CC   585 	G$CLK_HSIPrescalerConfig$0$0 ==.
                           0001CC   586 	C$stm8s_clk.c$415$1_0$403 ==.
                                    587 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    588 ;	-----------------------------------------
                                    589 ;	 function CLK_HSIPrescalerConfig
                                    590 ;	-----------------------------------------
      0086E7                        591 _CLK_HSIPrescalerConfig:
                           0001CC   592 	C$stm8s_clk.c$421$1_0$403 ==.
                                    593 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0086E7 C6 50 C6         [ 1]  594 	ld	a, 0x50c6
      0086EA A4 E7            [ 1]  595 	and	a, #0xe7
      0086EC C7 50 C6         [ 1]  596 	ld	0x50c6, a
                           0001D4   597 	C$stm8s_clk.c$424$1_0$403 ==.
                                    598 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      0086EF C6 50 C6         [ 1]  599 	ld	a, 0x50c6
      0086F2 1A 03            [ 1]  600 	or	a, (0x03, sp)
      0086F4 C7 50 C6         [ 1]  601 	ld	0x50c6, a
                           0001DC   602 	C$stm8s_clk.c$425$1_0$403 ==.
                                    603 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 425: }
                           0001DC   604 	C$stm8s_clk.c$425$1_0$403 ==.
                           0001DC   605 	XG$CLK_HSIPrescalerConfig$0$0 ==.
      0086F7 81               [ 4]  606 	ret
                           0001DD   607 	G$CLK_CCOConfig$0$0 ==.
                           0001DD   608 	C$stm8s_clk.c$436$1_0$405 ==.
                                    609 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    610 ;	-----------------------------------------
                                    611 ;	 function CLK_CCOConfig
                                    612 ;	-----------------------------------------
      0086F8                        613 _CLK_CCOConfig:
                           0001DD   614 	C$stm8s_clk.c$442$1_0$405 ==.
                                    615 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      0086F8 C6 50 C9         [ 1]  616 	ld	a, 0x50c9
      0086FB A4 E1            [ 1]  617 	and	a, #0xe1
      0086FD C7 50 C9         [ 1]  618 	ld	0x50c9, a
                           0001E5   619 	C$stm8s_clk.c$445$1_0$405 ==.
                                    620 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      008700 C6 50 C9         [ 1]  621 	ld	a, 0x50c9
      008703 1A 03            [ 1]  622 	or	a, (0x03, sp)
      008705 C7 50 C9         [ 1]  623 	ld	0x50c9, a
                           0001ED   624 	C$stm8s_clk.c$448$1_0$405 ==.
                                    625 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      008708 72 10 50 C9      [ 1]  626 	bset	20681, #0
                           0001F1   627 	C$stm8s_clk.c$449$1_0$405 ==.
                                    628 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 449: }
                           0001F1   629 	C$stm8s_clk.c$449$1_0$405 ==.
                           0001F1   630 	XG$CLK_CCOConfig$0$0 ==.
      00870C 81               [ 4]  631 	ret
                           0001F2   632 	G$CLK_ITConfig$0$0 ==.
                           0001F2   633 	C$stm8s_clk.c$459$1_0$407 ==.
                                    634 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    635 ;	-----------------------------------------
                                    636 ;	 function CLK_ITConfig
                                    637 ;	-----------------------------------------
      00870D                        638 _CLK_ITConfig:
                           0001F2   639 	C$stm8s_clk.c$465$1_0$407 ==.
                                    640 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      00870D 0D 04            [ 1]  641 	tnz	(0x04, sp)
      00870F 27 18            [ 1]  642 	jreq	00110$
                           0001F6   643 	C$stm8s_clk.c$467$2_0$408 ==.
                                    644 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 467: switch (CLK_IT)
      008711 7B 03            [ 1]  645 	ld	a, (0x03, sp)
      008713 A1 0C            [ 1]  646 	cp	a, #0x0c
      008715 27 0C            [ 1]  647 	jreq	00102$
      008717 7B 03            [ 1]  648 	ld	a, (0x03, sp)
      008719 A1 1C            [ 1]  649 	cp	a, #0x1c
      00871B 26 22            [ 1]  650 	jrne	00112$
                           000202   651 	C$stm8s_clk.c$470$3_0$409 ==.
                                    652 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      00871D 72 14 50 C5      [ 1]  653 	bset	20677, #2
                           000206   654 	C$stm8s_clk.c$471$3_0$409 ==.
                                    655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 471: break;
      008721 20 1C            [ 2]  656 	jra	00112$
                           000208   657 	C$stm8s_clk.c$472$3_0$409 ==.
                                    658 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      008723                        659 00102$:
                           000208   660 	C$stm8s_clk.c$473$3_0$409 ==.
                                    661 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      008723 72 14 50 C8      [ 1]  662 	bset	20680, #2
                           00020C   663 	C$stm8s_clk.c$474$3_0$409 ==.
                                    664 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 474: break;
      008727 20 16            [ 2]  665 	jra	00112$
                           00020E   666 	C$stm8s_clk.c$477$1_0$407 ==.
                                    667 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 477: }
      008729                        668 00110$:
                           00020E   669 	C$stm8s_clk.c$481$2_0$410 ==.
                                    670 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 481: switch (CLK_IT)
      008729 7B 03            [ 1]  671 	ld	a, (0x03, sp)
      00872B A1 0C            [ 1]  672 	cp	a, #0x0c
      00872D 27 0C            [ 1]  673 	jreq	00106$
      00872F 7B 03            [ 1]  674 	ld	a, (0x03, sp)
      008731 A1 1C            [ 1]  675 	cp	a, #0x1c
      008733 26 0A            [ 1]  676 	jrne	00112$
                           00021A   677 	C$stm8s_clk.c$484$3_0$411 ==.
                                    678 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      008735 72 15 50 C5      [ 1]  679 	bres	20677, #2
                           00021E   680 	C$stm8s_clk.c$485$3_0$411 ==.
                                    681 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 485: break;
      008739 20 04            [ 2]  682 	jra	00112$
                           000220   683 	C$stm8s_clk.c$486$3_0$411 ==.
                                    684 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      00873B                        685 00106$:
                           000220   686 	C$stm8s_clk.c$487$3_0$411 ==.
                                    687 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      00873B 72 15 50 C8      [ 1]  688 	bres	20680, #2
                           000224   689 	C$stm8s_clk.c$491$1_0$407 ==.
                                    690 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 491: }
      00873F                        691 00112$:
                           000224   692 	C$stm8s_clk.c$493$1_0$407 ==.
                                    693 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 493: }
                           000224   694 	C$stm8s_clk.c$493$1_0$407 ==.
                           000224   695 	XG$CLK_ITConfig$0$0 ==.
      00873F 81               [ 4]  696 	ret
                           000225   697 	G$CLK_SYSCLKConfig$0$0 ==.
                           000225   698 	C$stm8s_clk.c$500$1_0$413 ==.
                                    699 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    700 ;	-----------------------------------------
                                    701 ;	 function CLK_SYSCLKConfig
                                    702 ;	-----------------------------------------
      008740                        703 _CLK_SYSCLKConfig:
      008740 52 02            [ 2]  704 	sub	sp, #2
                           000227   705 	C$stm8s_clk.c$505$1_0$413 ==.
                                    706 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      008742 0D 05            [ 1]  707 	tnz	(0x05, sp)
      008744 2B 18            [ 1]  708 	jrmi	00102$
                           00022B   709 	C$stm8s_clk.c$507$2_0$414 ==.
                                    710 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008746 C6 50 C6         [ 1]  711 	ld	a, 0x50c6
      008749 A4 E7            [ 1]  712 	and	a, #0xe7
      00874B C7 50 C6         [ 1]  713 	ld	0x50c6, a
                           000233   714 	C$stm8s_clk.c$508$2_0$414 ==.
                                    715 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      00874E C6 50 C6         [ 1]  716 	ld	a, 0x50c6
      008751 6B 01            [ 1]  717 	ld	(0x01, sp), a
      008753 7B 05            [ 1]  718 	ld	a, (0x05, sp)
      008755 A4 18            [ 1]  719 	and	a, #0x18
      008757 1A 01            [ 1]  720 	or	a, (0x01, sp)
      008759 C7 50 C6         [ 1]  721 	ld	0x50c6, a
      00875C 20 16            [ 2]  722 	jra	00104$
      00875E                        723 00102$:
                           000243   724 	C$stm8s_clk.c$512$2_0$415 ==.
                                    725 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      00875E C6 50 C6         [ 1]  726 	ld	a, 0x50c6
      008761 A4 F8            [ 1]  727 	and	a, #0xf8
      008763 C7 50 C6         [ 1]  728 	ld	0x50c6, a
                           00024B   729 	C$stm8s_clk.c$513$2_0$415 ==.
                                    730 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      008766 C6 50 C6         [ 1]  731 	ld	a, 0x50c6
      008769 6B 02            [ 1]  732 	ld	(0x02, sp), a
      00876B 7B 05            [ 1]  733 	ld	a, (0x05, sp)
      00876D A4 07            [ 1]  734 	and	a, #0x07
      00876F 1A 02            [ 1]  735 	or	a, (0x02, sp)
      008771 C7 50 C6         [ 1]  736 	ld	0x50c6, a
      008774                        737 00104$:
                           000259   738 	C$stm8s_clk.c$515$1_0$413 ==.
                                    739 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 515: }
      008774 5B 02            [ 2]  740 	addw	sp, #2
                           00025B   741 	C$stm8s_clk.c$515$1_0$413 ==.
                           00025B   742 	XG$CLK_SYSCLKConfig$0$0 ==.
      008776 81               [ 4]  743 	ret
                           00025C   744 	G$CLK_SWIMConfig$0$0 ==.
                           00025C   745 	C$stm8s_clk.c$523$1_0$417 ==.
                                    746 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    747 ;	-----------------------------------------
                                    748 ;	 function CLK_SWIMConfig
                                    749 ;	-----------------------------------------
      008777                        750 _CLK_SWIMConfig:
                           00025C   751 	C$stm8s_clk.c$528$1_0$417 ==.
                                    752 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      008777 0D 03            [ 1]  753 	tnz	(0x03, sp)
      008779 27 06            [ 1]  754 	jreq	00102$
                           000260   755 	C$stm8s_clk.c$531$2_0$418 ==.
                                    756 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      00877B 72 10 50 CD      [ 1]  757 	bset	20685, #0
      00877F 20 04            [ 2]  758 	jra	00104$
      008781                        759 00102$:
                           000266   760 	C$stm8s_clk.c$536$2_0$419 ==.
                                    761 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      008781 72 11 50 CD      [ 1]  762 	bres	20685, #0
      008785                        763 00104$:
                           00026A   764 	C$stm8s_clk.c$538$1_0$417 ==.
                                    765 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 538: }
                           00026A   766 	C$stm8s_clk.c$538$1_0$417 ==.
                           00026A   767 	XG$CLK_SWIMConfig$0$0 ==.
      008785 81               [ 4]  768 	ret
                           00026B   769 	G$CLK_ClockSecuritySystemEnable$0$0 ==.
                           00026B   770 	C$stm8s_clk.c$547$1_0$421 ==.
                                    771 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                    772 ;	-----------------------------------------
                                    773 ;	 function CLK_ClockSecuritySystemEnable
                                    774 ;	-----------------------------------------
      008786                        775 _CLK_ClockSecuritySystemEnable:
                           00026B   776 	C$stm8s_clk.c$550$1_0$421 ==.
                                    777 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      008786 72 10 50 C8      [ 1]  778 	bset	20680, #0
                           00026F   779 	C$stm8s_clk.c$551$1_0$421 ==.
                                    780 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 551: }
                           00026F   781 	C$stm8s_clk.c$551$1_0$421 ==.
                           00026F   782 	XG$CLK_ClockSecuritySystemEnable$0$0 ==.
      00878A 81               [ 4]  783 	ret
                           000270   784 	G$CLK_GetSYSCLKSource$0$0 ==.
                           000270   785 	C$stm8s_clk.c$559$1_0$423 ==.
                                    786 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                    787 ;	-----------------------------------------
                                    788 ;	 function CLK_GetSYSCLKSource
                                    789 ;	-----------------------------------------
      00878B                        790 _CLK_GetSYSCLKSource:
                           000270   791 	C$stm8s_clk.c$561$1_0$423 ==.
                                    792 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      00878B C6 50 C3         [ 1]  793 	ld	a, 0x50c3
                           000273   794 	C$stm8s_clk.c$562$1_0$423 ==.
                                    795 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 562: }
                           000273   796 	C$stm8s_clk.c$562$1_0$423 ==.
                           000273   797 	XG$CLK_GetSYSCLKSource$0$0 ==.
      00878E 81               [ 4]  798 	ret
                           000274   799 	G$CLK_GetClockFreq$0$0 ==.
                           000274   800 	C$stm8s_clk.c$569$1_0$425 ==.
                                    801 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    802 ;	-----------------------------------------
                                    803 ;	 function CLK_GetClockFreq
                                    804 ;	-----------------------------------------
      00878F                        805 _CLK_GetClockFreq:
      00878F 52 05            [ 2]  806 	sub	sp, #5
                           000276   807 	C$stm8s_clk.c$576$1_0$425 ==.
                                    808 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      008791 C6 50 C3         [ 1]  809 	ld	a, 0x50c3
      008794 6B 05            [ 1]  810 	ld	(0x05, sp), a
                           00027B   811 	C$stm8s_clk.c$578$1_0$425 ==.
                                    812 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      008796 7B 05            [ 1]  813 	ld	a, (0x05, sp)
      008798 A1 E1            [ 1]  814 	cp	a, #0xe1
      00879A 26 26            [ 1]  815 	jrne	00105$
                           000281   816 	C$stm8s_clk.c$580$2_0$426 ==.
                                    817 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      00879C C6 50 C6         [ 1]  818 	ld	a, 0x50c6
      00879F A4 18            [ 1]  819 	and	a, #0x18
                           000286   820 	C$stm8s_clk.c$581$2_0$426 ==.
                                    821 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      0087A1 44               [ 1]  822 	srl	a
      0087A2 44               [ 1]  823 	srl	a
      0087A3 44               [ 1]  824 	srl	a
                           000289   825 	C$stm8s_clk.c$582$2_0$426 ==.
                                    826 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      0087A4 5F               [ 1]  827 	clrw	x
      0087A5 97               [ 1]  828 	ld	xl, a
      0087A6 1C 80 80         [ 2]  829 	addw	x, #_HSIDivFactor
      0087A9 F6               [ 1]  830 	ld	a, (x)
                           00028F   831 	C$stm8s_clk.c$583$2_0$426 ==.
                                    832 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0087AA 5F               [ 1]  833 	clrw	x
      0087AB 97               [ 1]  834 	ld	xl, a
      0087AC 90 5F            [ 1]  835 	clrw	y
      0087AE 89               [ 2]  836 	pushw	x
      0087AF 90 89            [ 2]  837 	pushw	y
      0087B1 4B 00            [ 1]  838 	push	#0x00
      0087B3 4B 24            [ 1]  839 	push	#0x24
      0087B5 4B F4            [ 1]  840 	push	#0xf4
      0087B7 4B 00            [ 1]  841 	push	#0x00
      0087B9 CD DB 5F         [ 4]  842 	call	__divulong
      0087BC 5B 08            [ 2]  843 	addw	sp, #8
      0087BE 1F 03            [ 2]  844 	ldw	(0x03, sp), x
      0087C0 20 1A            [ 2]  845 	jra	00106$
      0087C2                        846 00105$:
                           0002A7   847 	C$stm8s_clk.c$585$1_0$425 ==.
                                    848 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0087C2 7B 05            [ 1]  849 	ld	a, (0x05, sp)
      0087C4 A1 D2            [ 1]  850 	cp	a, #0xd2
      0087C6 26 0B            [ 1]  851 	jrne	00102$
                           0002AD   852 	C$stm8s_clk.c$587$2_0$427 ==.
                                    853 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0087C8 AE F4 00         [ 2]  854 	ldw	x, #0xf400
      0087CB 1F 03            [ 2]  855 	ldw	(0x03, sp), x
      0087CD 90 AE 00 01      [ 2]  856 	ldw	y, #0x0001
      0087D1 20 09            [ 2]  857 	jra	00106$
      0087D3                        858 00102$:
                           0002B8   859 	C$stm8s_clk.c$591$2_0$428 ==.
                                    860 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0087D3 AE 24 00         [ 2]  861 	ldw	x, #0x2400
      0087D6 1F 03            [ 2]  862 	ldw	(0x03, sp), x
      0087D8 90 AE 00 F4      [ 2]  863 	ldw	y, #0x00f4
      0087DC                        864 00106$:
                           0002C1   865 	C$stm8s_clk.c$594$1_0$425 ==.
                                    866 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0087DC 1E 03            [ 2]  867 	ldw	x, (0x03, sp)
                           0002C3   868 	C$stm8s_clk.c$595$1_0$425 ==.
                                    869 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 595: }
      0087DE 5B 05            [ 2]  870 	addw	sp, #5
                           0002C5   871 	C$stm8s_clk.c$595$1_0$425 ==.
                           0002C5   872 	XG$CLK_GetClockFreq$0$0 ==.
      0087E0 81               [ 4]  873 	ret
                           0002C6   874 	G$CLK_AdjustHSICalibrationValue$0$0 ==.
                           0002C6   875 	C$stm8s_clk.c$604$1_0$430 ==.
                                    876 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                    877 ;	-----------------------------------------
                                    878 ;	 function CLK_AdjustHSICalibrationValue
                                    879 ;	-----------------------------------------
      0087E1                        880 _CLK_AdjustHSICalibrationValue:
                           0002C6   881 	C$stm8s_clk.c$610$1_0$430 ==.
                                    882 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      0087E1 C6 50 CC         [ 1]  883 	ld	a, 0x50cc
      0087E4 A4 F8            [ 1]  884 	and	a, #0xf8
      0087E6 1A 03            [ 1]  885 	or	a, (0x03, sp)
      0087E8 C7 50 CC         [ 1]  886 	ld	0x50cc, a
                           0002D0   887 	C$stm8s_clk.c$611$1_0$430 ==.
                                    888 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 611: }
                           0002D0   889 	C$stm8s_clk.c$611$1_0$430 ==.
                           0002D0   890 	XG$CLK_AdjustHSICalibrationValue$0$0 ==.
      0087EB 81               [ 4]  891 	ret
                           0002D1   892 	G$CLK_SYSCLKEmergencyClear$0$0 ==.
                           0002D1   893 	C$stm8s_clk.c$622$1_0$432 ==.
                                    894 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                    895 ;	-----------------------------------------
                                    896 ;	 function CLK_SYSCLKEmergencyClear
                                    897 ;	-----------------------------------------
      0087EC                        898 _CLK_SYSCLKEmergencyClear:
                           0002D1   899 	C$stm8s_clk.c$624$1_0$432 ==.
                                    900 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      0087EC 72 11 50 C5      [ 1]  901 	bres	20677, #0
                           0002D5   902 	C$stm8s_clk.c$625$1_0$432 ==.
                                    903 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 625: }
                           0002D5   904 	C$stm8s_clk.c$625$1_0$432 ==.
                           0002D5   905 	XG$CLK_SYSCLKEmergencyClear$0$0 ==.
      0087F0 81               [ 4]  906 	ret
                           0002D6   907 	G$CLK_GetFlagStatus$0$0 ==.
                           0002D6   908 	C$stm8s_clk.c$634$1_0$434 ==.
                                    909 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    910 ;	-----------------------------------------
                                    911 ;	 function CLK_GetFlagStatus
                                    912 ;	-----------------------------------------
      0087F1                        913 _CLK_GetFlagStatus:
      0087F1 88               [ 1]  914 	push	a
                           0002D7   915 	C$stm8s_clk.c$644$1_0$434 ==.
                                    916 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      0087F2 4F               [ 1]  917 	clr	a
      0087F3 97               [ 1]  918 	ld	xl, a
      0087F4 7B 04            [ 1]  919 	ld	a, (0x04, sp)
      0087F6 95               [ 1]  920 	ld	xh, a
                           0002DC   921 	C$stm8s_clk.c$647$1_0$434 ==.
                                    922 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      0087F7 A3 01 00         [ 2]  923 	cpw	x, #0x0100
      0087FA 26 05            [ 1]  924 	jrne	00111$
                           0002E1   925 	C$stm8s_clk.c$649$2_0$435 ==.
                                    926 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      0087FC C6 50 C0         [ 1]  927 	ld	a, 0x50c0
      0087FF 20 21            [ 2]  928 	jra	00112$
      008801                        929 00111$:
                           0002E6   930 	C$stm8s_clk.c$651$1_0$434 ==.
                                    931 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      008801 A3 02 00         [ 2]  932 	cpw	x, #0x0200
      008804 26 05            [ 1]  933 	jrne	00108$
                           0002EB   934 	C$stm8s_clk.c$653$2_0$436 ==.
                                    935 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      008806 C6 50 C1         [ 1]  936 	ld	a, 0x50c1
      008809 20 17            [ 2]  937 	jra	00112$
      00880B                        938 00108$:
                           0002F0   939 	C$stm8s_clk.c$655$1_0$434 ==.
                                    940 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      00880B A3 03 00         [ 2]  941 	cpw	x, #0x0300
      00880E 26 05            [ 1]  942 	jrne	00105$
                           0002F5   943 	C$stm8s_clk.c$657$2_0$437 ==.
                                    944 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      008810 C6 50 C5         [ 1]  945 	ld	a, 0x50c5
      008813 20 0D            [ 2]  946 	jra	00112$
      008815                        947 00105$:
                           0002FA   948 	C$stm8s_clk.c$659$1_0$434 ==.
                                    949 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      008815 A3 04 00         [ 2]  950 	cpw	x, #0x0400
      008818 26 05            [ 1]  951 	jrne	00102$
                           0002FF   952 	C$stm8s_clk.c$661$2_0$438 ==.
                                    953 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      00881A C6 50 C8         [ 1]  954 	ld	a, 0x50c8
      00881D 20 03            [ 2]  955 	jra	00112$
      00881F                        956 00102$:
                           000304   957 	C$stm8s_clk.c$665$2_0$439 ==.
                                    958 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      00881F C6 50 C9         [ 1]  959 	ld	a, 0x50c9
      008822                        960 00112$:
                           000307   961 	C$stm8s_clk.c$668$1_0$434 ==.
                                    962 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      008822 88               [ 1]  963 	push	a
      008823 7B 06            [ 1]  964 	ld	a, (0x06, sp)
      008825 6B 02            [ 1]  965 	ld	(0x02, sp), a
      008827 84               [ 1]  966 	pop	a
      008828 14 01            [ 1]  967 	and	a, (0x01, sp)
      00882A 27 04            [ 1]  968 	jreq	00114$
                           000311   969 	C$stm8s_clk.c$670$2_0$440 ==.
                                    970 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 670: bitstatus = SET;
      00882C A6 01            [ 1]  971 	ld	a, #0x01
      00882E 20 01            [ 2]  972 	jra	00115$
      008830                        973 00114$:
                           000315   974 	C$stm8s_clk.c$674$2_0$441 ==.
                                    975 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 674: bitstatus = RESET;
      008830 4F               [ 1]  976 	clr	a
      008831                        977 00115$:
                           000316   978 	C$stm8s_clk.c$678$1_0$434 ==.
                                    979 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                           000316   980 	C$stm8s_clk.c$679$1_0$434 ==.
                                    981 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 679: }
      008831 5B 01            [ 2]  982 	addw	sp, #1
                           000318   983 	C$stm8s_clk.c$679$1_0$434 ==.
                           000318   984 	XG$CLK_GetFlagStatus$0$0 ==.
      008833 81               [ 4]  985 	ret
                           000319   986 	G$CLK_GetITStatus$0$0 ==.
                           000319   987 	C$stm8s_clk.c$687$1_0$443 ==.
                                    988 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                    989 ;	-----------------------------------------
                                    990 ;	 function CLK_GetITStatus
                                    991 ;	-----------------------------------------
      008834                        992 _CLK_GetITStatus:
                           000319   993 	C$stm8s_clk.c$694$1_0$443 ==.
                                    994 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      008834 7B 03            [ 1]  995 	ld	a, (0x03, sp)
      008836 A1 1C            [ 1]  996 	cp	a, #0x1c
      008838 26 10            [ 1]  997 	jrne	00108$
                           00031F   998 	C$stm8s_clk.c$697$2_0$444 ==.
                                    999 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00883A C6 50 C5         [ 1] 1000 	ld	a, 0x50c5
      00883D 14 03            [ 1] 1001 	and	a, (0x03, sp)
      00883F A1 0C            [ 1] 1002 	cp	a, #0x0c
      008841 26 04            [ 1] 1003 	jrne	00102$
                           000328  1004 	C$stm8s_clk.c$699$3_0$445 ==.
                                   1005 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 699: bitstatus = SET;
      008843 A6 01            [ 1] 1006 	ld	a, #0x01
      008845 20 11            [ 2] 1007 	jra	00109$
      008847                       1008 00102$:
                           00032C  1009 	C$stm8s_clk.c$703$3_0$446 ==.
                                   1010 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 703: bitstatus = RESET;
      008847 4F               [ 1] 1011 	clr	a
      008848 20 0E            [ 2] 1012 	jra	00109$
      00884A                       1013 00108$:
                           00032F  1014 	C$stm8s_clk.c$709$2_0$447 ==.
                                   1015 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00884A C6 50 C8         [ 1] 1016 	ld	a, 0x50c8
      00884D 14 03            [ 1] 1017 	and	a, (0x03, sp)
      00884F A1 0C            [ 1] 1018 	cp	a, #0x0c
      008851 26 04            [ 1] 1019 	jrne	00105$
                           000338  1020 	C$stm8s_clk.c$711$3_0$448 ==.
                                   1021 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 711: bitstatus = SET;
      008853 A6 01            [ 1] 1022 	ld	a, #0x01
      008855 20 01            [ 2] 1023 	jra	00109$
      008857                       1024 00105$:
                           00033C  1025 	C$stm8s_clk.c$715$3_0$449 ==.
                                   1026 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 715: bitstatus = RESET;
      008857 4F               [ 1] 1027 	clr	a
      008858                       1028 00109$:
                           00033D  1029 	C$stm8s_clk.c$720$1_0$443 ==.
                                   1030 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 720: return bitstatus;
                           00033D  1031 	C$stm8s_clk.c$721$1_0$443 ==.
                                   1032 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 721: }
                           00033D  1033 	C$stm8s_clk.c$721$1_0$443 ==.
                           00033D  1034 	XG$CLK_GetITStatus$0$0 ==.
      008858 81               [ 4] 1035 	ret
                           00033E  1036 	G$CLK_ClearITPendingBit$0$0 ==.
                           00033E  1037 	C$stm8s_clk.c$729$1_0$451 ==.
                                   1038 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function CLK_ClearITPendingBit
                                   1041 ;	-----------------------------------------
      008859                       1042 _CLK_ClearITPendingBit:
                           00033E  1043 	C$stm8s_clk.c$734$1_0$451 ==.
                                   1044 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      008859 7B 03            [ 1] 1045 	ld	a, (0x03, sp)
      00885B A1 0C            [ 1] 1046 	cp	a, #0x0c
      00885D 26 06            [ 1] 1047 	jrne	00102$
                           000344  1048 	C$stm8s_clk.c$737$2_0$452 ==.
                                   1049 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      00885F 72 17 50 C8      [ 1] 1050 	bres	20680, #3
      008863 20 04            [ 2] 1051 	jra	00104$
      008865                       1052 00102$:
                           00034A  1053 	C$stm8s_clk.c$742$2_0$453 ==.
                                   1054 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      008865 72 17 50 C5      [ 1] 1055 	bres	20677, #3
      008869                       1056 00104$:
                           00034E  1057 	C$stm8s_clk.c$745$1_0$451 ==.
                                   1058 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 745: }
                           00034E  1059 	C$stm8s_clk.c$745$1_0$451 ==.
                           00034E  1060 	XG$CLK_ClearITPendingBit$0$0 ==.
      008869 81               [ 4] 1061 	ret
                                   1062 	.area CODE
                                   1063 	.area CONST
                           000000  1064 G$HSIDivFactor$0_0$0 == .
      008080                       1065 _HSIDivFactor:
      008080 01                    1066 	.db #0x01	; 1
      008081 02                    1067 	.db #0x02	; 2
      008082 04                    1068 	.db #0x04	; 4
      008083 08                    1069 	.db #0x08	; 8
                           000004  1070 G$CLKPrescTable$0_0$0 == .
      008084                       1071 _CLKPrescTable:
      008084 01                    1072 	.db #0x01	; 1
      008085 02                    1073 	.db #0x02	; 2
      008086 04                    1074 	.db #0x04	; 4
      008087 08                    1075 	.db #0x08	; 8
      008088 0A                    1076 	.db #0x0a	; 10
      008089 10                    1077 	.db #0x10	; 16
      00808A 14                    1078 	.db #0x14	; 20
      00808B 28                    1079 	.db #0x28	; 40
                                   1080 	.area INITIALIZER
                                   1081 	.area CABS (ABS)
