                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
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
      00852B                         79 _CLK_DeInit:
                           000000    80 	C$stm8s_clk.c$74$1_0$346 ==.
                                     81 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      00852B 35 01 50 C0      [ 1]   82 	mov	0x50c0+0, #0x01
                           000004    83 	C$stm8s_clk.c$75$1_0$346 ==.
                                     84 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      00852F 35 00 50 C1      [ 1]   85 	mov	0x50c1+0, #0x00
                           000008    86 	C$stm8s_clk.c$76$1_0$346 ==.
                                     87 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008533 35 E1 50 C4      [ 1]   88 	mov	0x50c4+0, #0xe1
                           00000C    89 	C$stm8s_clk.c$77$1_0$346 ==.
                                     90 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008537 35 00 50 C5      [ 1]   91 	mov	0x50c5+0, #0x00
                           000010    92 	C$stm8s_clk.c$78$1_0$346 ==.
                                     93 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      00853B 35 18 50 C6      [ 1]   94 	mov	0x50c6+0, #0x18
                           000014    95 	C$stm8s_clk.c$79$1_0$346 ==.
                                     96 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      00853F 35 FF 50 C7      [ 1]   97 	mov	0x50c7+0, #0xff
                           000018    98 	C$stm8s_clk.c$80$1_0$346 ==.
                                     99 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008543 35 FF 50 CA      [ 1]  100 	mov	0x50ca+0, #0xff
                           00001C   101 	C$stm8s_clk.c$81$1_0$346 ==.
                                    102 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008547 35 00 50 C8      [ 1]  103 	mov	0x50c8+0, #0x00
                           000020   104 	C$stm8s_clk.c$82$1_0$346 ==.
                                    105 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00854B 35 00 50 C9      [ 1]  106 	mov	0x50c9+0, #0x00
                           000024   107 	C$stm8s_clk.c$83$1_0$346 ==.
                                    108 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      00854F                        109 00101$:
      00854F C6 50 C9         [ 1]  110 	ld	a, 0x50c9
      008552 44               [ 1]  111 	srl	a
      008553 25 FA            [ 1]  112 	jrc	00101$
                           00002A   113 	C$stm8s_clk.c$85$1_0$346 ==.
                                    114 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008555 35 00 50 C9      [ 1]  115 	mov	0x50c9+0, #0x00
                           00002E   116 	C$stm8s_clk.c$86$1_0$346 ==.
                                    117 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008559 35 00 50 CC      [ 1]  118 	mov	0x50cc+0, #0x00
                           000032   119 	C$stm8s_clk.c$87$1_0$346 ==.
                                    120 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      00855D 35 00 50 CD      [ 1]  121 	mov	0x50cd+0, #0x00
                           000036   122 	C$stm8s_clk.c$88$1_0$346 ==.
                                    123 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 88: }
                           000036   124 	C$stm8s_clk.c$88$1_0$346 ==.
                           000036   125 	XG$CLK_DeInit$0$0 ==.
      008561 81               [ 4]  126 	ret
                           000037   127 	G$CLK_FastHaltWakeUpCmd$0$0 ==.
                           000037   128 	C$stm8s_clk.c$99$1_0$349 ==.
                                    129 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    130 ;	-----------------------------------------
                                    131 ;	 function CLK_FastHaltWakeUpCmd
                                    132 ;	-----------------------------------------
      008562                        133 _CLK_FastHaltWakeUpCmd:
                           000037   134 	C$stm8s_clk.c$104$1_0$349 ==.
                                    135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      008562 0D 03            [ 1]  136 	tnz	(0x03, sp)
      008564 27 06            [ 1]  137 	jreq	00102$
                           00003B   138 	C$stm8s_clk.c$107$2_0$350 ==.
                                    139 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008566 72 14 50 C0      [ 1]  140 	bset	20672, #2
      00856A 20 04            [ 2]  141 	jra	00104$
      00856C                        142 00102$:
                           000041   143 	C$stm8s_clk.c$112$2_0$351 ==.
                                    144 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      00856C 72 15 50 C0      [ 1]  145 	bres	20672, #2
      008570                        146 00104$:
                           000045   147 	C$stm8s_clk.c$114$1_0$349 ==.
                                    148 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 114: }
                           000045   149 	C$stm8s_clk.c$114$1_0$349 ==.
                           000045   150 	XG$CLK_FastHaltWakeUpCmd$0$0 ==.
      008570 81               [ 4]  151 	ret
                           000046   152 	G$CLK_HSECmd$0$0 ==.
                           000046   153 	C$stm8s_clk.c$121$1_0$353 ==.
                                    154 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    155 ;	-----------------------------------------
                                    156 ;	 function CLK_HSECmd
                                    157 ;	-----------------------------------------
      008571                        158 _CLK_HSECmd:
                           000046   159 	C$stm8s_clk.c$126$1_0$353 ==.
                                    160 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      008571 0D 03            [ 1]  161 	tnz	(0x03, sp)
      008573 27 06            [ 1]  162 	jreq	00102$
                           00004A   163 	C$stm8s_clk.c$129$2_0$354 ==.
                                    164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      008575 72 10 50 C1      [ 1]  165 	bset	20673, #0
      008579 20 04            [ 2]  166 	jra	00104$
      00857B                        167 00102$:
                           000050   168 	C$stm8s_clk.c$134$2_0$355 ==.
                                    169 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00857B 72 11 50 C1      [ 1]  170 	bres	20673, #0
      00857F                        171 00104$:
                           000054   172 	C$stm8s_clk.c$136$1_0$353 ==.
                                    173 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 136: }
                           000054   174 	C$stm8s_clk.c$136$1_0$353 ==.
                           000054   175 	XG$CLK_HSECmd$0$0 ==.
      00857F 81               [ 4]  176 	ret
                           000055   177 	G$CLK_HSICmd$0$0 ==.
                           000055   178 	C$stm8s_clk.c$143$1_0$357 ==.
                                    179 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    180 ;	-----------------------------------------
                                    181 ;	 function CLK_HSICmd
                                    182 ;	-----------------------------------------
      008580                        183 _CLK_HSICmd:
                           000055   184 	C$stm8s_clk.c$148$1_0$357 ==.
                                    185 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      008580 0D 03            [ 1]  186 	tnz	(0x03, sp)
      008582 27 06            [ 1]  187 	jreq	00102$
                           000059   188 	C$stm8s_clk.c$151$2_0$358 ==.
                                    189 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      008584 72 10 50 C0      [ 1]  190 	bset	20672, #0
      008588 20 04            [ 2]  191 	jra	00104$
      00858A                        192 00102$:
                           00005F   193 	C$stm8s_clk.c$156$2_0$359 ==.
                                    194 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00858A 72 11 50 C0      [ 1]  195 	bres	20672, #0
      00858E                        196 00104$:
                           000063   197 	C$stm8s_clk.c$158$1_0$357 ==.
                                    198 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 158: }
                           000063   199 	C$stm8s_clk.c$158$1_0$357 ==.
                           000063   200 	XG$CLK_HSICmd$0$0 ==.
      00858E 81               [ 4]  201 	ret
                           000064   202 	G$CLK_LSICmd$0$0 ==.
                           000064   203 	C$stm8s_clk.c$166$1_0$361 ==.
                                    204 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    205 ;	-----------------------------------------
                                    206 ;	 function CLK_LSICmd
                                    207 ;	-----------------------------------------
      00858F                        208 _CLK_LSICmd:
                           000064   209 	C$stm8s_clk.c$171$1_0$361 ==.
                                    210 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      00858F 0D 03            [ 1]  211 	tnz	(0x03, sp)
      008591 27 06            [ 1]  212 	jreq	00102$
                           000068   213 	C$stm8s_clk.c$174$2_0$362 ==.
                                    214 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      008593 72 16 50 C0      [ 1]  215 	bset	20672, #3
      008597 20 04            [ 2]  216 	jra	00104$
      008599                        217 00102$:
                           00006E   218 	C$stm8s_clk.c$179$2_0$363 ==.
                                    219 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008599 72 17 50 C0      [ 1]  220 	bres	20672, #3
      00859D                        221 00104$:
                           000072   222 	C$stm8s_clk.c$181$1_0$361 ==.
                                    223 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: }
                           000072   224 	C$stm8s_clk.c$181$1_0$361 ==.
                           000072   225 	XG$CLK_LSICmd$0$0 ==.
      00859D 81               [ 4]  226 	ret
                           000073   227 	G$CLK_CCOCmd$0$0 ==.
                           000073   228 	C$stm8s_clk.c$189$1_0$365 ==.
                                    229 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    230 ;	-----------------------------------------
                                    231 ;	 function CLK_CCOCmd
                                    232 ;	-----------------------------------------
      00859E                        233 _CLK_CCOCmd:
                           000073   234 	C$stm8s_clk.c$194$1_0$365 ==.
                                    235 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      00859E 0D 03            [ 1]  236 	tnz	(0x03, sp)
      0085A0 27 06            [ 1]  237 	jreq	00102$
                           000077   238 	C$stm8s_clk.c$197$2_0$366 ==.
                                    239 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0085A2 72 10 50 C9      [ 1]  240 	bset	20681, #0
      0085A6 20 04            [ 2]  241 	jra	00104$
      0085A8                        242 00102$:
                           00007D   243 	C$stm8s_clk.c$202$2_0$367 ==.
                                    244 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      0085A8 72 11 50 C9      [ 1]  245 	bres	20681, #0
      0085AC                        246 00104$:
                           000081   247 	C$stm8s_clk.c$204$1_0$365 ==.
                                    248 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 204: }
                           000081   249 	C$stm8s_clk.c$204$1_0$365 ==.
                           000081   250 	XG$CLK_CCOCmd$0$0 ==.
      0085AC 81               [ 4]  251 	ret
                           000082   252 	G$CLK_ClockSwitchCmd$0$0 ==.
                           000082   253 	C$stm8s_clk.c$213$1_0$369 ==.
                                    254 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    255 ;	-----------------------------------------
                                    256 ;	 function CLK_ClockSwitchCmd
                                    257 ;	-----------------------------------------
      0085AD                        258 _CLK_ClockSwitchCmd:
                           000082   259 	C$stm8s_clk.c$218$1_0$369 ==.
                                    260 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      0085AD 0D 03            [ 1]  261 	tnz	(0x03, sp)
      0085AF 27 06            [ 1]  262 	jreq	00102$
                           000086   263 	C$stm8s_clk.c$221$2_0$370 ==.
                                    264 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      0085B1 72 12 50 C5      [ 1]  265 	bset	20677, #1
      0085B5 20 04            [ 2]  266 	jra	00104$
      0085B7                        267 00102$:
                           00008C   268 	C$stm8s_clk.c$226$2_0$371 ==.
                                    269 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      0085B7 72 13 50 C5      [ 1]  270 	bres	20677, #1
      0085BB                        271 00104$:
                           000090   272 	C$stm8s_clk.c$228$1_0$369 ==.
                                    273 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 228: }
                           000090   274 	C$stm8s_clk.c$228$1_0$369 ==.
                           000090   275 	XG$CLK_ClockSwitchCmd$0$0 ==.
      0085BB 81               [ 4]  276 	ret
                           000091   277 	G$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
                           000091   278 	C$stm8s_clk.c$238$1_0$373 ==.
                                    279 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    280 ;	-----------------------------------------
                                    281 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    282 ;	-----------------------------------------
      0085BC                        283 _CLK_SlowActiveHaltWakeUpCmd:
                           000091   284 	C$stm8s_clk.c$243$1_0$373 ==.
                                    285 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      0085BC 0D 03            [ 1]  286 	tnz	(0x03, sp)
      0085BE 27 06            [ 1]  287 	jreq	00102$
                           000095   288 	C$stm8s_clk.c$246$2_0$374 ==.
                                    289 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0085C0 72 1A 50 C0      [ 1]  290 	bset	20672, #5
      0085C4 20 04            [ 2]  291 	jra	00104$
      0085C6                        292 00102$:
                           00009B   293 	C$stm8s_clk.c$251$2_0$375 ==.
                                    294 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      0085C6 72 1B 50 C0      [ 1]  295 	bres	20672, #5
      0085CA                        296 00104$:
                           00009F   297 	C$stm8s_clk.c$253$1_0$373 ==.
                                    298 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 253: }
                           00009F   299 	C$stm8s_clk.c$253$1_0$373 ==.
                           00009F   300 	XG$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
      0085CA 81               [ 4]  301 	ret
                           0000A0   302 	G$CLK_PeripheralClockConfig$0$0 ==.
                           0000A0   303 	C$stm8s_clk.c$263$1_0$377 ==.
                                    304 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    305 ;	-----------------------------------------
                                    306 ;	 function CLK_PeripheralClockConfig
                                    307 ;	-----------------------------------------
      0085CB                        308 _CLK_PeripheralClockConfig:
      0085CB 88               [ 1]  309 	push	a
                           0000A1   310 	C$stm8s_clk.c$269$1_0$377 ==.
                                    311 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0085CC 7B 04            [ 1]  312 	ld	a, (0x04, sp)
      0085CE A5 10            [ 1]  313 	bcp	a, #0x10
      0085D0 26 41            [ 1]  314 	jrne	00108$
                           0000A7   315 	C$stm8s_clk.c$271$2_0$378 ==.
                                    316 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      0085D2 0D 05            [ 1]  317 	tnz	(0x05, sp)
      0085D4 27 1E            [ 1]  318 	jreq	00102$
                           0000AB   319 	C$stm8s_clk.c$274$3_0$379 ==.
                                    320 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0085D6 C6 50 C7         [ 1]  321 	ld	a, 0x50c7
      0085D9 97               [ 1]  322 	ld	xl, a
      0085DA 7B 04            [ 1]  323 	ld	a, (0x04, sp)
      0085DC A4 0F            [ 1]  324 	and	a, #0x0f
      0085DE 88               [ 1]  325 	push	a
      0085DF A6 01            [ 1]  326 	ld	a, #0x01
      0085E1 6B 02            [ 1]  327 	ld	(0x02, sp), a
      0085E3 84               [ 1]  328 	pop	a
      0085E4 4D               [ 1]  329 	tnz	a
      0085E5 27 05            [ 1]  330 	jreq	00127$
      0085E7                        331 00126$:
      0085E7 08 01            [ 1]  332 	sll	(0x01, sp)
      0085E9 4A               [ 1]  333 	dec	a
      0085EA 26 FB            [ 1]  334 	jrne	00126$
      0085EC                        335 00127$:
      0085EC 9F               [ 1]  336 	ld	a, xl
      0085ED 1A 01            [ 1]  337 	or	a, (0x01, sp)
      0085EF C7 50 C7         [ 1]  338 	ld	0x50c7, a
      0085F2 20 5E            [ 2]  339 	jra	00110$
      0085F4                        340 00102$:
                           0000C9   341 	C$stm8s_clk.c$279$3_0$380 ==.
                                    342 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0085F4 C6 50 C7         [ 1]  343 	ld	a, 0x50c7
      0085F7 6B 01            [ 1]  344 	ld	(0x01, sp), a
      0085F9 7B 04            [ 1]  345 	ld	a, (0x04, sp)
      0085FB A4 0F            [ 1]  346 	and	a, #0x0f
      0085FD 97               [ 1]  347 	ld	xl, a
      0085FE A6 01            [ 1]  348 	ld	a, #0x01
      008600 88               [ 1]  349 	push	a
      008601 9F               [ 1]  350 	ld	a, xl
      008602 4D               [ 1]  351 	tnz	a
      008603 27 05            [ 1]  352 	jreq	00129$
      008605                        353 00128$:
      008605 08 01            [ 1]  354 	sll	(1, sp)
      008607 4A               [ 1]  355 	dec	a
      008608 26 FB            [ 1]  356 	jrne	00128$
      00860A                        357 00129$:
      00860A 84               [ 1]  358 	pop	a
      00860B 43               [ 1]  359 	cpl	a
      00860C 14 01            [ 1]  360 	and	a, (0x01, sp)
      00860E C7 50 C7         [ 1]  361 	ld	0x50c7, a
      008611 20 3F            [ 2]  362 	jra	00110$
      008613                        363 00108$:
                           0000E8   364 	C$stm8s_clk.c$284$2_0$381 ==.
                                    365 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      008613 0D 05            [ 1]  366 	tnz	(0x05, sp)
      008615 27 1E            [ 1]  367 	jreq	00105$
                           0000EC   368 	C$stm8s_clk.c$287$3_0$382 ==.
                                    369 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008617 C6 50 CA         [ 1]  370 	ld	a, 0x50ca
      00861A 97               [ 1]  371 	ld	xl, a
      00861B 7B 04            [ 1]  372 	ld	a, (0x04, sp)
      00861D A4 0F            [ 1]  373 	and	a, #0x0f
      00861F 88               [ 1]  374 	push	a
      008620 A6 01            [ 1]  375 	ld	a, #0x01
      008622 6B 02            [ 1]  376 	ld	(0x02, sp), a
      008624 84               [ 1]  377 	pop	a
      008625 4D               [ 1]  378 	tnz	a
      008626 27 05            [ 1]  379 	jreq	00132$
      008628                        380 00131$:
      008628 08 01            [ 1]  381 	sll	(0x01, sp)
      00862A 4A               [ 1]  382 	dec	a
      00862B 26 FB            [ 1]  383 	jrne	00131$
      00862D                        384 00132$:
      00862D 9F               [ 1]  385 	ld	a, xl
      00862E 1A 01            [ 1]  386 	or	a, (0x01, sp)
      008630 C7 50 CA         [ 1]  387 	ld	0x50ca, a
      008633 20 1D            [ 2]  388 	jra	00110$
      008635                        389 00105$:
                           00010A   390 	C$stm8s_clk.c$292$3_0$383 ==.
                                    391 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008635 C6 50 CA         [ 1]  392 	ld	a, 0x50ca
      008638 6B 01            [ 1]  393 	ld	(0x01, sp), a
      00863A 7B 04            [ 1]  394 	ld	a, (0x04, sp)
      00863C A4 0F            [ 1]  395 	and	a, #0x0f
      00863E 97               [ 1]  396 	ld	xl, a
      00863F A6 01            [ 1]  397 	ld	a, #0x01
      008641 88               [ 1]  398 	push	a
      008642 9F               [ 1]  399 	ld	a, xl
      008643 4D               [ 1]  400 	tnz	a
      008644 27 05            [ 1]  401 	jreq	00134$
      008646                        402 00133$:
      008646 08 01            [ 1]  403 	sll	(1, sp)
      008648 4A               [ 1]  404 	dec	a
      008649 26 FB            [ 1]  405 	jrne	00133$
      00864B                        406 00134$:
      00864B 84               [ 1]  407 	pop	a
      00864C 43               [ 1]  408 	cpl	a
      00864D 14 01            [ 1]  409 	and	a, (0x01, sp)
      00864F C7 50 CA         [ 1]  410 	ld	0x50ca, a
      008652                        411 00110$:
                           000127   412 	C$stm8s_clk.c$295$1_0$377 ==.
                                    413 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 295: }
      008652 84               [ 1]  414 	pop	a
                           000128   415 	C$stm8s_clk.c$295$1_0$377 ==.
                           000128   416 	XG$CLK_PeripheralClockConfig$0$0 ==.
      008653 81               [ 4]  417 	ret
                           000129   418 	G$CLK_ClockSwitchConfig$0$0 ==.
                           000129   419 	C$stm8s_clk.c$309$1_0$385 ==.
                                    420 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    421 ;	-----------------------------------------
                                    422 ;	 function CLK_ClockSwitchConfig
                                    423 ;	-----------------------------------------
      008654                        424 _CLK_ClockSwitchConfig:
                           000129   425 	C$stm8s_clk.c$322$1_0$385 ==.
                                    426 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008654 C6 50 C3         [ 1]  427 	ld	a, 0x50c3
      008657 90 97            [ 1]  428 	ld	yl, a
                           00012E   429 	C$stm8s_clk.c$325$1_0$385 ==.
                                    430 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      008659 7B 03            [ 1]  431 	ld	a, (0x03, sp)
      00865B 4A               [ 1]  432 	dec	a
      00865C 26 32            [ 1]  433 	jrne	00122$
                           000133   434 	C$stm8s_clk.c$328$2_0$386 ==.
                                    435 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00865E 72 12 50 C5      [ 1]  436 	bset	20677, #1
                           000137   437 	C$stm8s_clk.c$331$2_0$386 ==.
                                    438 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      008662 0D 05            [ 1]  439 	tnz	(0x05, sp)
      008664 27 06            [ 1]  440 	jreq	00102$
                           00013B   441 	C$stm8s_clk.c$333$3_0$387 ==.
                                    442 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      008666 72 14 50 C5      [ 1]  443 	bset	20677, #2
      00866A 20 04            [ 2]  444 	jra	00103$
      00866C                        445 00102$:
                           000141   446 	C$stm8s_clk.c$337$3_0$388 ==.
                                    447 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00866C 72 15 50 C5      [ 1]  448 	bres	20677, #2
      008670                        449 00103$:
                           000145   450 	C$stm8s_clk.c$341$2_0$386 ==.
                                    451 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      008670 AE 50 C4         [ 2]  452 	ldw	x, #0x50c4
      008673 7B 04            [ 1]  453 	ld	a, (0x04, sp)
      008675 F7               [ 1]  454 	ld	(x), a
                           00014B   455 	C$stm8s_clk.c$344$1_0$385 ==.
                                    456 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008676 5F               [ 1]  457 	clrw	x
      008677 5A               [ 2]  458 	decw	x
      008678                        459 00105$:
      008678 C6 50 C5         [ 1]  460 	ld	a, 0x50c5
      00867B 44               [ 1]  461 	srl	a
      00867C 24 06            [ 1]  462 	jrnc	00107$
      00867E 5D               [ 2]  463 	tnzw	x
      00867F 27 03            [ 1]  464 	jreq	00107$
                           000156   465 	C$stm8s_clk.c$346$3_0$389 ==.
                                    466 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 346: DownCounter--;
      008681 5A               [ 2]  467 	decw	x
      008682 20 F4            [ 2]  468 	jra	00105$
      008684                        469 00107$:
                           000159   470 	C$stm8s_clk.c$349$2_0$386 ==.
                                    471 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 349: if(DownCounter != 0)
      008684 5D               [ 2]  472 	tnzw	x
      008685 27 05            [ 1]  473 	jreq	00109$
                           00015C   474 	C$stm8s_clk.c$351$3_0$390 ==.
                                    475 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 351: Swif = SUCCESS;
      008687 A6 01            [ 1]  476 	ld	a, #0x01
      008689 97               [ 1]  477 	ld	xl, a
      00868A 20 35            [ 2]  478 	jra	00123$
      00868C                        479 00109$:
                           000161   480 	C$stm8s_clk.c$355$3_0$391 ==.
                                    481 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 355: Swif = ERROR;
      00868C 4F               [ 1]  482 	clr	a
      00868D 97               [ 1]  483 	ld	xl, a
      00868E 20 31            [ 2]  484 	jra	00123$
      008690                        485 00122$:
                           000165   486 	C$stm8s_clk.c$361$2_0$392 ==.
                                    487 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      008690 0D 05            [ 1]  488 	tnz	(0x05, sp)
      008692 27 06            [ 1]  489 	jreq	00112$
                           000169   490 	C$stm8s_clk.c$363$3_0$393 ==.
                                    491 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      008694 72 14 50 C5      [ 1]  492 	bset	20677, #2
      008698 20 04            [ 2]  493 	jra	00113$
      00869A                        494 00112$:
                           00016F   495 	C$stm8s_clk.c$367$3_0$394 ==.
                                    496 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00869A 72 15 50 C5      [ 1]  497 	bres	20677, #2
      00869E                        498 00113$:
                           000173   499 	C$stm8s_clk.c$371$2_0$392 ==.
                                    500 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      00869E AE 50 C4         [ 2]  501 	ldw	x, #0x50c4
      0086A1 7B 04            [ 1]  502 	ld	a, (0x04, sp)
      0086A3 F7               [ 1]  503 	ld	(x), a
                           000179   504 	C$stm8s_clk.c$374$1_0$385 ==.
                                    505 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      0086A4 5F               [ 1]  506 	clrw	x
      0086A5 5A               [ 2]  507 	decw	x
      0086A6                        508 00115$:
      0086A6 C6 50 C5         [ 1]  509 	ld	a, 0x50c5
      0086A9 A5 08            [ 1]  510 	bcp	a, #0x08
      0086AB 27 06            [ 1]  511 	jreq	00117$
      0086AD 5D               [ 2]  512 	tnzw	x
      0086AE 27 03            [ 1]  513 	jreq	00117$
                           000185   514 	C$stm8s_clk.c$376$3_0$395 ==.
                                    515 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 376: DownCounter--;
      0086B0 5A               [ 2]  516 	decw	x
      0086B1 20 F3            [ 2]  517 	jra	00115$
      0086B3                        518 00117$:
                           000188   519 	C$stm8s_clk.c$379$2_0$392 ==.
                                    520 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 379: if(DownCounter != 0)
      0086B3 5D               [ 2]  521 	tnzw	x
      0086B4 27 09            [ 1]  522 	jreq	00119$
                           00018B   523 	C$stm8s_clk.c$382$3_0$396 ==.
                                    524 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      0086B6 72 12 50 C5      [ 1]  525 	bset	20677, #1
                           00018F   526 	C$stm8s_clk.c$383$3_0$396 ==.
                                    527 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 383: Swif = SUCCESS;
      0086BA A6 01            [ 1]  528 	ld	a, #0x01
      0086BC 97               [ 1]  529 	ld	xl, a
      0086BD 20 02            [ 2]  530 	jra	00123$
      0086BF                        531 00119$:
                           000194   532 	C$stm8s_clk.c$387$3_0$397 ==.
                                    533 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 387: Swif = ERROR;
      0086BF 4F               [ 1]  534 	clr	a
      0086C0 97               [ 1]  535 	ld	xl, a
      0086C1                        536 00123$:
                           000196   537 	C$stm8s_clk.c$390$1_0$385 ==.
                                    538 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 390: if(Swif != ERROR)
      0086C1 9F               [ 1]  539 	ld	a, xl
      0086C2 4D               [ 1]  540 	tnz	a
      0086C3 27 2E            [ 1]  541 	jreq	00136$
                           00019A   542 	C$stm8s_clk.c$393$2_0$398 ==.
                                    543 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0086C5 0D 06            [ 1]  544 	tnz	(0x06, sp)
      0086C7 26 0C            [ 1]  545 	jrne	00132$
      0086C9 90 9F            [ 1]  546 	ld	a, yl
      0086CB A1 E1            [ 1]  547 	cp	a, #0xe1
      0086CD 26 06            [ 1]  548 	jrne	00132$
                           0001A4   549 	C$stm8s_clk.c$395$3_0$399 ==.
                                    550 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0086CF 72 11 50 C0      [ 1]  551 	bres	20672, #0
      0086D3 20 1E            [ 2]  552 	jra	00136$
      0086D5                        553 00132$:
                           0001AA   554 	C$stm8s_clk.c$397$2_0$398 ==.
                                    555 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      0086D5 0D 06            [ 1]  556 	tnz	(0x06, sp)
      0086D7 26 0C            [ 1]  557 	jrne	00128$
      0086D9 90 9F            [ 1]  558 	ld	a, yl
      0086DB A1 D2            [ 1]  559 	cp	a, #0xd2
      0086DD 26 06            [ 1]  560 	jrne	00128$
                           0001B4   561 	C$stm8s_clk.c$399$3_0$400 ==.
                                    562 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0086DF 72 17 50 C0      [ 1]  563 	bres	20672, #3
      0086E3 20 0E            [ 2]  564 	jra	00136$
      0086E5                        565 00128$:
                           0001BA   566 	C$stm8s_clk.c$401$2_0$398 ==.
                                    567 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      0086E5 0D 06            [ 1]  568 	tnz	(0x06, sp)
      0086E7 26 0A            [ 1]  569 	jrne	00136$
      0086E9 90 9F            [ 1]  570 	ld	a, yl
      0086EB A1 B4            [ 1]  571 	cp	a, #0xb4
      0086ED 26 04            [ 1]  572 	jrne	00136$
                           0001C4   573 	C$stm8s_clk.c$403$3_0$401 ==.
                                    574 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0086EF 72 11 50 C1      [ 1]  575 	bres	20673, #0
      0086F3                        576 00136$:
                           0001C8   577 	C$stm8s_clk.c$406$1_0$385 ==.
                                    578 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 406: return(Swif);
      0086F3 9F               [ 1]  579 	ld	a, xl
                           0001C9   580 	C$stm8s_clk.c$407$1_0$385 ==.
                                    581 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 407: }
                           0001C9   582 	C$stm8s_clk.c$407$1_0$385 ==.
                           0001C9   583 	XG$CLK_ClockSwitchConfig$0$0 ==.
      0086F4 81               [ 4]  584 	ret
                           0001CA   585 	G$CLK_HSIPrescalerConfig$0$0 ==.
                           0001CA   586 	C$stm8s_clk.c$415$1_0$403 ==.
                                    587 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    588 ;	-----------------------------------------
                                    589 ;	 function CLK_HSIPrescalerConfig
                                    590 ;	-----------------------------------------
      0086F5                        591 _CLK_HSIPrescalerConfig:
                           0001CA   592 	C$stm8s_clk.c$421$1_0$403 ==.
                                    593 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0086F5 C6 50 C6         [ 1]  594 	ld	a, 0x50c6
      0086F8 A4 E7            [ 1]  595 	and	a, #0xe7
      0086FA C7 50 C6         [ 1]  596 	ld	0x50c6, a
                           0001D2   597 	C$stm8s_clk.c$424$1_0$403 ==.
                                    598 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      0086FD C6 50 C6         [ 1]  599 	ld	a, 0x50c6
      008700 1A 03            [ 1]  600 	or	a, (0x03, sp)
      008702 C7 50 C6         [ 1]  601 	ld	0x50c6, a
                           0001DA   602 	C$stm8s_clk.c$425$1_0$403 ==.
                                    603 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 425: }
                           0001DA   604 	C$stm8s_clk.c$425$1_0$403 ==.
                           0001DA   605 	XG$CLK_HSIPrescalerConfig$0$0 ==.
      008705 81               [ 4]  606 	ret
                           0001DB   607 	G$CLK_CCOConfig$0$0 ==.
                           0001DB   608 	C$stm8s_clk.c$436$1_0$405 ==.
                                    609 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    610 ;	-----------------------------------------
                                    611 ;	 function CLK_CCOConfig
                                    612 ;	-----------------------------------------
      008706                        613 _CLK_CCOConfig:
                           0001DB   614 	C$stm8s_clk.c$442$1_0$405 ==.
                                    615 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      008706 C6 50 C9         [ 1]  616 	ld	a, 0x50c9
      008709 A4 E1            [ 1]  617 	and	a, #0xe1
      00870B C7 50 C9         [ 1]  618 	ld	0x50c9, a
                           0001E3   619 	C$stm8s_clk.c$445$1_0$405 ==.
                                    620 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      00870E C6 50 C9         [ 1]  621 	ld	a, 0x50c9
      008711 1A 03            [ 1]  622 	or	a, (0x03, sp)
      008713 C7 50 C9         [ 1]  623 	ld	0x50c9, a
                           0001EB   624 	C$stm8s_clk.c$448$1_0$405 ==.
                                    625 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      008716 72 10 50 C9      [ 1]  626 	bset	20681, #0
                           0001EF   627 	C$stm8s_clk.c$449$1_0$405 ==.
                                    628 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 449: }
                           0001EF   629 	C$stm8s_clk.c$449$1_0$405 ==.
                           0001EF   630 	XG$CLK_CCOConfig$0$0 ==.
      00871A 81               [ 4]  631 	ret
                           0001F0   632 	G$CLK_ITConfig$0$0 ==.
                           0001F0   633 	C$stm8s_clk.c$459$1_0$407 ==.
                                    634 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    635 ;	-----------------------------------------
                                    636 ;	 function CLK_ITConfig
                                    637 ;	-----------------------------------------
      00871B                        638 _CLK_ITConfig:
                           0001F0   639 	C$stm8s_clk.c$465$1_0$407 ==.
                                    640 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      00871B 0D 04            [ 1]  641 	tnz	(0x04, sp)
      00871D 27 18            [ 1]  642 	jreq	00110$
                           0001F4   643 	C$stm8s_clk.c$467$2_0$408 ==.
                                    644 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 467: switch (CLK_IT)
      00871F 7B 03            [ 1]  645 	ld	a, (0x03, sp)
      008721 A1 0C            [ 1]  646 	cp	a, #0x0c
      008723 27 0C            [ 1]  647 	jreq	00102$
      008725 7B 03            [ 1]  648 	ld	a, (0x03, sp)
      008727 A1 1C            [ 1]  649 	cp	a, #0x1c
      008729 26 22            [ 1]  650 	jrne	00112$
                           000200   651 	C$stm8s_clk.c$470$3_0$409 ==.
                                    652 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      00872B 72 14 50 C5      [ 1]  653 	bset	20677, #2
                           000204   654 	C$stm8s_clk.c$471$3_0$409 ==.
                                    655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 471: break;
      00872F 20 1C            [ 2]  656 	jra	00112$
                           000206   657 	C$stm8s_clk.c$472$3_0$409 ==.
                                    658 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      008731                        659 00102$:
                           000206   660 	C$stm8s_clk.c$473$3_0$409 ==.
                                    661 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      008731 72 14 50 C8      [ 1]  662 	bset	20680, #2
                           00020A   663 	C$stm8s_clk.c$474$3_0$409 ==.
                                    664 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 474: break;
      008735 20 16            [ 2]  665 	jra	00112$
                           00020C   666 	C$stm8s_clk.c$477$1_0$407 ==.
                                    667 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 477: }
      008737                        668 00110$:
                           00020C   669 	C$stm8s_clk.c$481$2_0$410 ==.
                                    670 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 481: switch (CLK_IT)
      008737 7B 03            [ 1]  671 	ld	a, (0x03, sp)
      008739 A1 0C            [ 1]  672 	cp	a, #0x0c
      00873B 27 0C            [ 1]  673 	jreq	00106$
      00873D 7B 03            [ 1]  674 	ld	a, (0x03, sp)
      00873F A1 1C            [ 1]  675 	cp	a, #0x1c
      008741 26 0A            [ 1]  676 	jrne	00112$
                           000218   677 	C$stm8s_clk.c$484$3_0$411 ==.
                                    678 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      008743 72 15 50 C5      [ 1]  679 	bres	20677, #2
                           00021C   680 	C$stm8s_clk.c$485$3_0$411 ==.
                                    681 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 485: break;
      008747 20 04            [ 2]  682 	jra	00112$
                           00021E   683 	C$stm8s_clk.c$486$3_0$411 ==.
                                    684 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      008749                        685 00106$:
                           00021E   686 	C$stm8s_clk.c$487$3_0$411 ==.
                                    687 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      008749 72 15 50 C8      [ 1]  688 	bres	20680, #2
                           000222   689 	C$stm8s_clk.c$491$1_0$407 ==.
                                    690 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 491: }
      00874D                        691 00112$:
                           000222   692 	C$stm8s_clk.c$493$1_0$407 ==.
                                    693 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 493: }
                           000222   694 	C$stm8s_clk.c$493$1_0$407 ==.
                           000222   695 	XG$CLK_ITConfig$0$0 ==.
      00874D 81               [ 4]  696 	ret
                           000223   697 	G$CLK_SYSCLKConfig$0$0 ==.
                           000223   698 	C$stm8s_clk.c$500$1_0$413 ==.
                                    699 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    700 ;	-----------------------------------------
                                    701 ;	 function CLK_SYSCLKConfig
                                    702 ;	-----------------------------------------
      00874E                        703 _CLK_SYSCLKConfig:
      00874E 88               [ 1]  704 	push	a
                           000224   705 	C$stm8s_clk.c$505$1_0$413 ==.
                                    706 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      00874F 0D 04            [ 1]  707 	tnz	(0x04, sp)
      008751 2B 18            [ 1]  708 	jrmi	00102$
                           000228   709 	C$stm8s_clk.c$507$2_0$414 ==.
                                    710 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008753 C6 50 C6         [ 1]  711 	ld	a, 0x50c6
      008756 A4 E7            [ 1]  712 	and	a, #0xe7
      008758 C7 50 C6         [ 1]  713 	ld	0x50c6, a
                           000230   714 	C$stm8s_clk.c$508$2_0$414 ==.
                                    715 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      00875B C6 50 C6         [ 1]  716 	ld	a, 0x50c6
      00875E 6B 01            [ 1]  717 	ld	(0x01, sp), a
      008760 7B 04            [ 1]  718 	ld	a, (0x04, sp)
      008762 A4 18            [ 1]  719 	and	a, #0x18
      008764 1A 01            [ 1]  720 	or	a, (0x01, sp)
      008766 C7 50 C6         [ 1]  721 	ld	0x50c6, a
      008769 20 16            [ 2]  722 	jra	00104$
      00876B                        723 00102$:
                           000240   724 	C$stm8s_clk.c$512$2_0$415 ==.
                                    725 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      00876B C6 50 C6         [ 1]  726 	ld	a, 0x50c6
      00876E A4 F8            [ 1]  727 	and	a, #0xf8
      008770 C7 50 C6         [ 1]  728 	ld	0x50c6, a
                           000248   729 	C$stm8s_clk.c$513$2_0$415 ==.
                                    730 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      008773 C6 50 C6         [ 1]  731 	ld	a, 0x50c6
      008776 6B 01            [ 1]  732 	ld	(0x01, sp), a
      008778 7B 04            [ 1]  733 	ld	a, (0x04, sp)
      00877A A4 07            [ 1]  734 	and	a, #0x07
      00877C 1A 01            [ 1]  735 	or	a, (0x01, sp)
      00877E C7 50 C6         [ 1]  736 	ld	0x50c6, a
      008781                        737 00104$:
                           000256   738 	C$stm8s_clk.c$515$1_0$413 ==.
                                    739 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 515: }
      008781 84               [ 1]  740 	pop	a
                           000257   741 	C$stm8s_clk.c$515$1_0$413 ==.
                           000257   742 	XG$CLK_SYSCLKConfig$0$0 ==.
      008782 81               [ 4]  743 	ret
                           000258   744 	G$CLK_SWIMConfig$0$0 ==.
                           000258   745 	C$stm8s_clk.c$523$1_0$417 ==.
                                    746 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    747 ;	-----------------------------------------
                                    748 ;	 function CLK_SWIMConfig
                                    749 ;	-----------------------------------------
      008783                        750 _CLK_SWIMConfig:
                           000258   751 	C$stm8s_clk.c$528$1_0$417 ==.
                                    752 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      008783 0D 03            [ 1]  753 	tnz	(0x03, sp)
      008785 27 06            [ 1]  754 	jreq	00102$
                           00025C   755 	C$stm8s_clk.c$531$2_0$418 ==.
                                    756 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008787 72 10 50 CD      [ 1]  757 	bset	20685, #0
      00878B 20 04            [ 2]  758 	jra	00104$
      00878D                        759 00102$:
                           000262   760 	C$stm8s_clk.c$536$2_0$419 ==.
                                    761 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      00878D 72 11 50 CD      [ 1]  762 	bres	20685, #0
      008791                        763 00104$:
                           000266   764 	C$stm8s_clk.c$538$1_0$417 ==.
                                    765 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 538: }
                           000266   766 	C$stm8s_clk.c$538$1_0$417 ==.
                           000266   767 	XG$CLK_SWIMConfig$0$0 ==.
      008791 81               [ 4]  768 	ret
                           000267   769 	G$CLK_ClockSecuritySystemEnable$0$0 ==.
                           000267   770 	C$stm8s_clk.c$547$1_0$421 ==.
                                    771 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                    772 ;	-----------------------------------------
                                    773 ;	 function CLK_ClockSecuritySystemEnable
                                    774 ;	-----------------------------------------
      008792                        775 _CLK_ClockSecuritySystemEnable:
                           000267   776 	C$stm8s_clk.c$550$1_0$421 ==.
                                    777 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      008792 72 10 50 C8      [ 1]  778 	bset	20680, #0
                           00026B   779 	C$stm8s_clk.c$551$1_0$421 ==.
                                    780 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 551: }
                           00026B   781 	C$stm8s_clk.c$551$1_0$421 ==.
                           00026B   782 	XG$CLK_ClockSecuritySystemEnable$0$0 ==.
      008796 81               [ 4]  783 	ret
                           00026C   784 	G$CLK_GetSYSCLKSource$0$0 ==.
                           00026C   785 	C$stm8s_clk.c$559$1_0$423 ==.
                                    786 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                    787 ;	-----------------------------------------
                                    788 ;	 function CLK_GetSYSCLKSource
                                    789 ;	-----------------------------------------
      008797                        790 _CLK_GetSYSCLKSource:
                           00026C   791 	C$stm8s_clk.c$561$1_0$423 ==.
                                    792 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      008797 C6 50 C3         [ 1]  793 	ld	a, 0x50c3
                           00026F   794 	C$stm8s_clk.c$562$1_0$423 ==.
                                    795 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 562: }
                           00026F   796 	C$stm8s_clk.c$562$1_0$423 ==.
                           00026F   797 	XG$CLK_GetSYSCLKSource$0$0 ==.
      00879A 81               [ 4]  798 	ret
                           000270   799 	G$CLK_GetClockFreq$0$0 ==.
                           000270   800 	C$stm8s_clk.c$569$1_0$425 ==.
                                    801 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    802 ;	-----------------------------------------
                                    803 ;	 function CLK_GetClockFreq
                                    804 ;	-----------------------------------------
      00879B                        805 _CLK_GetClockFreq:
      00879B 52 04            [ 2]  806 	sub	sp, #4
                           000272   807 	C$stm8s_clk.c$576$1_0$425 ==.
                                    808 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00879D C6 50 C3         [ 1]  809 	ld	a, 0x50c3
      0087A0 6B 04            [ 1]  810 	ld	(0x04, sp), a
                           000277   811 	C$stm8s_clk.c$578$1_0$425 ==.
                                    812 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      0087A2 7B 04            [ 1]  813 	ld	a, (0x04, sp)
      0087A4 A1 E1            [ 1]  814 	cp	a, #0xe1
      0087A6 26 26            [ 1]  815 	jrne	00105$
                           00027D   816 	C$stm8s_clk.c$580$2_0$426 ==.
                                    817 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0087A8 C6 50 C6         [ 1]  818 	ld	a, 0x50c6
      0087AB A4 18            [ 1]  819 	and	a, #0x18
                           000282   820 	C$stm8s_clk.c$581$2_0$426 ==.
                                    821 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      0087AD 44               [ 1]  822 	srl	a
      0087AE 44               [ 1]  823 	srl	a
      0087AF 44               [ 1]  824 	srl	a
                           000285   825 	C$stm8s_clk.c$582$2_0$426 ==.
                                    826 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      0087B0 5F               [ 1]  827 	clrw	x
      0087B1 97               [ 1]  828 	ld	xl, a
      0087B2 1C 80 84         [ 2]  829 	addw	x, #(_HSIDivFactor + 0)
      0087B5 F6               [ 1]  830 	ld	a, (x)
                           00028B   831 	C$stm8s_clk.c$583$2_0$426 ==.
                                    832 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0087B6 5F               [ 1]  833 	clrw	x
      0087B7 97               [ 1]  834 	ld	xl, a
      0087B8 90 5F            [ 1]  835 	clrw	y
      0087BA 89               [ 2]  836 	pushw	x
      0087BB 90 89            [ 2]  837 	pushw	y
      0087BD 4B 00            [ 1]  838 	push	#0x00
      0087BF 4B 24            [ 1]  839 	push	#0x24
      0087C1 4B F4            [ 1]  840 	push	#0xf4
      0087C3 4B 00            [ 1]  841 	push	#0x00
      0087C5 CD D7 76         [ 4]  842 	call	__divulong
      0087C8 5B 08            [ 2]  843 	addw	sp, #8
      0087CA 1F 03            [ 2]  844 	ldw	(0x03, sp), x
      0087CC 20 1A            [ 2]  845 	jra	00106$
      0087CE                        846 00105$:
                           0002A3   847 	C$stm8s_clk.c$585$1_0$425 ==.
                                    848 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0087CE 7B 04            [ 1]  849 	ld	a, (0x04, sp)
      0087D0 A1 D2            [ 1]  850 	cp	a, #0xd2
      0087D2 26 0B            [ 1]  851 	jrne	00102$
                           0002A9   852 	C$stm8s_clk.c$587$2_0$427 ==.
                                    853 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0087D4 AE F4 00         [ 2]  854 	ldw	x, #0xf400
      0087D7 1F 03            [ 2]  855 	ldw	(0x03, sp), x
      0087D9 90 AE 00 01      [ 2]  856 	ldw	y, #0x0001
      0087DD 20 09            [ 2]  857 	jra	00106$
      0087DF                        858 00102$:
                           0002B4   859 	C$stm8s_clk.c$591$2_0$428 ==.
                                    860 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0087DF AE 24 00         [ 2]  861 	ldw	x, #0x2400
      0087E2 1F 03            [ 2]  862 	ldw	(0x03, sp), x
      0087E4 90 AE 00 F4      [ 2]  863 	ldw	y, #0x00f4
      0087E8                        864 00106$:
                           0002BD   865 	C$stm8s_clk.c$594$1_0$425 ==.
                                    866 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0087E8 1E 03            [ 2]  867 	ldw	x, (0x03, sp)
                           0002BF   868 	C$stm8s_clk.c$595$1_0$425 ==.
                                    869 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 595: }
      0087EA 5B 04            [ 2]  870 	addw	sp, #4
                           0002C1   871 	C$stm8s_clk.c$595$1_0$425 ==.
                           0002C1   872 	XG$CLK_GetClockFreq$0$0 ==.
      0087EC 81               [ 4]  873 	ret
                           0002C2   874 	G$CLK_AdjustHSICalibrationValue$0$0 ==.
                           0002C2   875 	C$stm8s_clk.c$604$1_0$430 ==.
                                    876 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                    877 ;	-----------------------------------------
                                    878 ;	 function CLK_AdjustHSICalibrationValue
                                    879 ;	-----------------------------------------
      0087ED                        880 _CLK_AdjustHSICalibrationValue:
                           0002C2   881 	C$stm8s_clk.c$610$1_0$430 ==.
                                    882 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      0087ED C6 50 CC         [ 1]  883 	ld	a, 0x50cc
      0087F0 A4 F8            [ 1]  884 	and	a, #0xf8
      0087F2 1A 03            [ 1]  885 	or	a, (0x03, sp)
      0087F4 C7 50 CC         [ 1]  886 	ld	0x50cc, a
                           0002CC   887 	C$stm8s_clk.c$611$1_0$430 ==.
                                    888 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 611: }
                           0002CC   889 	C$stm8s_clk.c$611$1_0$430 ==.
                           0002CC   890 	XG$CLK_AdjustHSICalibrationValue$0$0 ==.
      0087F7 81               [ 4]  891 	ret
                           0002CD   892 	G$CLK_SYSCLKEmergencyClear$0$0 ==.
                           0002CD   893 	C$stm8s_clk.c$622$1_0$432 ==.
                                    894 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                    895 ;	-----------------------------------------
                                    896 ;	 function CLK_SYSCLKEmergencyClear
                                    897 ;	-----------------------------------------
      0087F8                        898 _CLK_SYSCLKEmergencyClear:
                           0002CD   899 	C$stm8s_clk.c$624$1_0$432 ==.
                                    900 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      0087F8 72 11 50 C5      [ 1]  901 	bres	20677, #0
                           0002D1   902 	C$stm8s_clk.c$625$1_0$432 ==.
                                    903 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 625: }
                           0002D1   904 	C$stm8s_clk.c$625$1_0$432 ==.
                           0002D1   905 	XG$CLK_SYSCLKEmergencyClear$0$0 ==.
      0087FC 81               [ 4]  906 	ret
                           0002D2   907 	G$CLK_GetFlagStatus$0$0 ==.
                           0002D2   908 	C$stm8s_clk.c$634$1_0$434 ==.
                                    909 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    910 ;	-----------------------------------------
                                    911 ;	 function CLK_GetFlagStatus
                                    912 ;	-----------------------------------------
      0087FD                        913 _CLK_GetFlagStatus:
      0087FD 88               [ 1]  914 	push	a
                           0002D3   915 	C$stm8s_clk.c$644$1_0$434 ==.
                                    916 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      0087FE 4F               [ 1]  917 	clr	a
      0087FF 97               [ 1]  918 	ld	xl, a
      008800 7B 04            [ 1]  919 	ld	a, (0x04, sp)
      008802 95               [ 1]  920 	ld	xh, a
                           0002D8   921 	C$stm8s_clk.c$647$1_0$434 ==.
                                    922 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008803 A3 01 00         [ 2]  923 	cpw	x, #0x0100
      008806 26 05            [ 1]  924 	jrne	00111$
                           0002DD   925 	C$stm8s_clk.c$649$2_0$435 ==.
                                    926 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      008808 C6 50 C0         [ 1]  927 	ld	a, 0x50c0
      00880B 20 21            [ 2]  928 	jra	00112$
      00880D                        929 00111$:
                           0002E2   930 	C$stm8s_clk.c$651$1_0$434 ==.
                                    931 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      00880D A3 02 00         [ 2]  932 	cpw	x, #0x0200
      008810 26 05            [ 1]  933 	jrne	00108$
                           0002E7   934 	C$stm8s_clk.c$653$2_0$436 ==.
                                    935 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      008812 C6 50 C1         [ 1]  936 	ld	a, 0x50c1
      008815 20 17            [ 2]  937 	jra	00112$
      008817                        938 00108$:
                           0002EC   939 	C$stm8s_clk.c$655$1_0$434 ==.
                                    940 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      008817 A3 03 00         [ 2]  941 	cpw	x, #0x0300
      00881A 26 05            [ 1]  942 	jrne	00105$
                           0002F1   943 	C$stm8s_clk.c$657$2_0$437 ==.
                                    944 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      00881C C6 50 C5         [ 1]  945 	ld	a, 0x50c5
      00881F 20 0D            [ 2]  946 	jra	00112$
      008821                        947 00105$:
                           0002F6   948 	C$stm8s_clk.c$659$1_0$434 ==.
                                    949 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      008821 A3 04 00         [ 2]  950 	cpw	x, #0x0400
      008824 26 05            [ 1]  951 	jrne	00102$
                           0002FB   952 	C$stm8s_clk.c$661$2_0$438 ==.
                                    953 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      008826 C6 50 C8         [ 1]  954 	ld	a, 0x50c8
      008829 20 03            [ 2]  955 	jra	00112$
      00882B                        956 00102$:
                           000300   957 	C$stm8s_clk.c$665$2_0$439 ==.
                                    958 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      00882B C6 50 C9         [ 1]  959 	ld	a, 0x50c9
      00882E                        960 00112$:
                           000303   961 	C$stm8s_clk.c$668$1_0$434 ==.
                                    962 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      00882E 88               [ 1]  963 	push	a
      00882F 7B 06            [ 1]  964 	ld	a, (0x06, sp)
      008831 6B 02            [ 1]  965 	ld	(0x02, sp), a
      008833 84               [ 1]  966 	pop	a
      008834 14 01            [ 1]  967 	and	a, (0x01, sp)
      008836 27 04            [ 1]  968 	jreq	00114$
                           00030D   969 	C$stm8s_clk.c$670$2_0$440 ==.
                                    970 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 670: bitstatus = SET;
      008838 A6 01            [ 1]  971 	ld	a, #0x01
      00883A 20 01            [ 2]  972 	jra	00115$
      00883C                        973 00114$:
                           000311   974 	C$stm8s_clk.c$674$2_0$441 ==.
                                    975 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 674: bitstatus = RESET;
      00883C 4F               [ 1]  976 	clr	a
      00883D                        977 00115$:
                           000312   978 	C$stm8s_clk.c$678$1_0$434 ==.
                                    979 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                           000312   980 	C$stm8s_clk.c$679$1_0$434 ==.
                                    981 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 679: }
      00883D 5B 01            [ 2]  982 	addw	sp, #1
                           000314   983 	C$stm8s_clk.c$679$1_0$434 ==.
                           000314   984 	XG$CLK_GetFlagStatus$0$0 ==.
      00883F 81               [ 4]  985 	ret
                           000315   986 	G$CLK_GetITStatus$0$0 ==.
                           000315   987 	C$stm8s_clk.c$687$1_0$443 ==.
                                    988 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                    989 ;	-----------------------------------------
                                    990 ;	 function CLK_GetITStatus
                                    991 ;	-----------------------------------------
      008840                        992 _CLK_GetITStatus:
                           000315   993 	C$stm8s_clk.c$694$1_0$443 ==.
                                    994 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      008840 7B 03            [ 1]  995 	ld	a, (0x03, sp)
      008842 A1 1C            [ 1]  996 	cp	a, #0x1c
      008844 26 10            [ 1]  997 	jrne	00108$
                           00031B   998 	C$stm8s_clk.c$697$2_0$444 ==.
                                    999 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008846 C6 50 C5         [ 1] 1000 	ld	a, 0x50c5
      008849 14 03            [ 1] 1001 	and	a, (0x03, sp)
      00884B A1 0C            [ 1] 1002 	cp	a, #0x0c
      00884D 26 04            [ 1] 1003 	jrne	00102$
                           000324  1004 	C$stm8s_clk.c$699$3_0$445 ==.
                                   1005 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 699: bitstatus = SET;
      00884F A6 01            [ 1] 1006 	ld	a, #0x01
      008851 20 11            [ 2] 1007 	jra	00109$
      008853                       1008 00102$:
                           000328  1009 	C$stm8s_clk.c$703$3_0$446 ==.
                                   1010 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 703: bitstatus = RESET;
      008853 4F               [ 1] 1011 	clr	a
      008854 20 0E            [ 2] 1012 	jra	00109$
      008856                       1013 00108$:
                           00032B  1014 	C$stm8s_clk.c$709$2_0$447 ==.
                                   1015 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008856 C6 50 C8         [ 1] 1016 	ld	a, 0x50c8
      008859 14 03            [ 1] 1017 	and	a, (0x03, sp)
      00885B A1 0C            [ 1] 1018 	cp	a, #0x0c
      00885D 26 04            [ 1] 1019 	jrne	00105$
                           000334  1020 	C$stm8s_clk.c$711$3_0$448 ==.
                                   1021 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 711: bitstatus = SET;
      00885F A6 01            [ 1] 1022 	ld	a, #0x01
      008861 20 01            [ 2] 1023 	jra	00109$
      008863                       1024 00105$:
                           000338  1025 	C$stm8s_clk.c$715$3_0$449 ==.
                                   1026 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 715: bitstatus = RESET;
      008863 4F               [ 1] 1027 	clr	a
      008864                       1028 00109$:
                           000339  1029 	C$stm8s_clk.c$720$1_0$443 ==.
                                   1030 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 720: return bitstatus;
                           000339  1031 	C$stm8s_clk.c$721$1_0$443 ==.
                                   1032 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 721: }
                           000339  1033 	C$stm8s_clk.c$721$1_0$443 ==.
                           000339  1034 	XG$CLK_GetITStatus$0$0 ==.
      008864 81               [ 4] 1035 	ret
                           00033A  1036 	G$CLK_ClearITPendingBit$0$0 ==.
                           00033A  1037 	C$stm8s_clk.c$729$1_0$451 ==.
                                   1038 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function CLK_ClearITPendingBit
                                   1041 ;	-----------------------------------------
      008865                       1042 _CLK_ClearITPendingBit:
                           00033A  1043 	C$stm8s_clk.c$734$1_0$451 ==.
                                   1044 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      008865 7B 03            [ 1] 1045 	ld	a, (0x03, sp)
      008867 A1 0C            [ 1] 1046 	cp	a, #0x0c
      008869 26 06            [ 1] 1047 	jrne	00102$
                           000340  1048 	C$stm8s_clk.c$737$2_0$452 ==.
                                   1049 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      00886B 72 17 50 C8      [ 1] 1050 	bres	20680, #3
      00886F 20 04            [ 2] 1051 	jra	00104$
      008871                       1052 00102$:
                           000346  1053 	C$stm8s_clk.c$742$2_0$453 ==.
                                   1054 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      008871 72 17 50 C5      [ 1] 1055 	bres	20677, #3
      008875                       1056 00104$:
                           00034A  1057 	C$stm8s_clk.c$745$1_0$451 ==.
                                   1058 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 745: }
                           00034A  1059 	C$stm8s_clk.c$745$1_0$451 ==.
                           00034A  1060 	XG$CLK_ClearITPendingBit$0$0 ==.
      008875 81               [ 4] 1061 	ret
                                   1062 	.area CODE
                                   1063 	.area CONST
                           000000  1064 G$HSIDivFactor$0_0$0 == .
      008084                       1065 _HSIDivFactor:
      008084 01                    1066 	.db #0x01	; 1
      008085 02                    1067 	.db #0x02	; 2
      008086 04                    1068 	.db #0x04	; 4
      008087 08                    1069 	.db #0x08	; 8
                           000004  1070 G$CLKPrescTable$0_0$0 == .
      008088                       1071 _CLKPrescTable:
      008088 01                    1072 	.db #0x01	; 1
      008089 02                    1073 	.db #0x02	; 2
      00808A 04                    1074 	.db #0x04	; 4
      00808B 08                    1075 	.db #0x08	; 8
      00808C 0A                    1076 	.db #0x0a	; 10
      00808D 10                    1077 	.db #0x10	; 16
      00808E 14                    1078 	.db #0x14	; 20
      00808F 28                    1079 	.db #0x28	; 40
                                   1080 	.area INITIALIZER
                                   1081 	.area CABS (ABS)
