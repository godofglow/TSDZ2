                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM2_DeInit
                                     12 	.globl _TIM2_TimeBaseInit
                                     13 	.globl _TIM2_OC1Init
                                     14 	.globl _TIM2_OC2Init
                                     15 	.globl _TIM2_OC3Init
                                     16 	.globl _TIM2_ICInit
                                     17 	.globl _TIM2_PWMIConfig
                                     18 	.globl _TIM2_Cmd
                                     19 	.globl _TIM2_ITConfig
                                     20 	.globl _TIM2_UpdateDisableConfig
                                     21 	.globl _TIM2_UpdateRequestConfig
                                     22 	.globl _TIM2_SelectOnePulseMode
                                     23 	.globl _TIM2_PrescalerConfig
                                     24 	.globl _TIM2_ForcedOC1Config
                                     25 	.globl _TIM2_ForcedOC2Config
                                     26 	.globl _TIM2_ForcedOC3Config
                                     27 	.globl _TIM2_ARRPreloadConfig
                                     28 	.globl _TIM2_OC1PreloadConfig
                                     29 	.globl _TIM2_OC2PreloadConfig
                                     30 	.globl _TIM2_OC3PreloadConfig
                                     31 	.globl _TIM2_GenerateEvent
                                     32 	.globl _TIM2_OC1PolarityConfig
                                     33 	.globl _TIM2_OC2PolarityConfig
                                     34 	.globl _TIM2_OC3PolarityConfig
                                     35 	.globl _TIM2_CCxCmd
                                     36 	.globl _TIM2_SelectOCxM
                                     37 	.globl _TIM2_SetCounter
                                     38 	.globl _TIM2_SetAutoreload
                                     39 	.globl _TIM2_SetCompare1
                                     40 	.globl _TIM2_SetCompare2
                                     41 	.globl _TIM2_SetCompare3
                                     42 	.globl _TIM2_SetIC1Prescaler
                                     43 	.globl _TIM2_SetIC2Prescaler
                                     44 	.globl _TIM2_SetIC3Prescaler
                                     45 	.globl _TIM2_GetCapture1
                                     46 	.globl _TIM2_GetCapture2
                                     47 	.globl _TIM2_GetCapture3
                                     48 	.globl _TIM2_GetCounter
                                     49 	.globl _TIM2_GetPrescaler
                                     50 	.globl _TIM2_GetFlagStatus
                                     51 	.globl _TIM2_ClearFlag
                                     52 	.globl _TIM2_GetITStatus
                                     53 	.globl _TIM2_ClearITPendingBit
                                     54 ;--------------------------------------------------------
                                     55 ; ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area DATA
                                     58 ;--------------------------------------------------------
                                     59 ; ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area INITIALIZED
                                     62 ;--------------------------------------------------------
                                     63 ; absolute external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area DABS (ABS)
                                     66 
                                     67 ; default segment ordering for linker
                                     68 	.area HOME
                                     69 	.area GSINIT
                                     70 	.area GSFINAL
                                     71 	.area CONST
                                     72 	.area INITIALIZER
                                     73 	.area CODE
                                     74 
                                     75 ;--------------------------------------------------------
                                     76 ; global & static initialisations
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME
                                     79 	.area GSINIT
                                     80 	.area GSFINAL
                                     81 	.area GSINIT
                                     82 ;--------------------------------------------------------
                                     83 ; Home
                                     84 ;--------------------------------------------------------
                                     85 	.area HOME
                                     86 	.area HOME
                                     87 ;--------------------------------------------------------
                                     88 ; code
                                     89 ;--------------------------------------------------------
                                     90 	.area CODE
                           000000    91 	G$TIM2_DeInit$0$0 ==.
                           000000    92 	C$stm8s_tim2.c$52$0_0$349 ==.
                                     93 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 52: void TIM2_DeInit(void)
                                     94 ;	-----------------------------------------
                                     95 ;	 function TIM2_DeInit
                                     96 ;	-----------------------------------------
      0096D3                         97 _TIM2_DeInit:
                           000000    98 	C$stm8s_tim2.c$54$1_0$349 ==.
                                     99 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
      0096D3 35 00 53 00      [ 1]  100 	mov	0x5300+0, #0x00
                           000004   101 	C$stm8s_tim2.c$55$1_0$349 ==.
                                    102 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
      0096D7 35 00 53 01      [ 1]  103 	mov	0x5301+0, #0x00
                           000008   104 	C$stm8s_tim2.c$56$1_0$349 ==.
                                    105 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
      0096DB 35 00 53 03      [ 1]  106 	mov	0x5303+0, #0x00
                           00000C   107 	C$stm8s_tim2.c$59$1_0$349 ==.
                                    108 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      0096DF 35 00 53 08      [ 1]  109 	mov	0x5308+0, #0x00
                           000010   110 	C$stm8s_tim2.c$60$1_0$349 ==.
                                    111 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      0096E3 35 00 53 09      [ 1]  112 	mov	0x5309+0, #0x00
                           000014   113 	C$stm8s_tim2.c$64$1_0$349 ==.
                                    114 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      0096E7 35 00 53 08      [ 1]  115 	mov	0x5308+0, #0x00
                           000018   116 	C$stm8s_tim2.c$65$1_0$349 ==.
                                    117 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      0096EB 35 00 53 09      [ 1]  118 	mov	0x5309+0, #0x00
                           00001C   119 	C$stm8s_tim2.c$66$1_0$349 ==.
                                    120 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
      0096EF 35 00 53 05      [ 1]  121 	mov	0x5305+0, #0x00
                           000020   122 	C$stm8s_tim2.c$67$1_0$349 ==.
                                    123 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
      0096F3 35 00 53 06      [ 1]  124 	mov	0x5306+0, #0x00
                           000024   125 	C$stm8s_tim2.c$68$1_0$349 ==.
                                    126 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
      0096F7 35 00 53 07      [ 1]  127 	mov	0x5307+0, #0x00
                           000028   128 	C$stm8s_tim2.c$69$1_0$349 ==.
                                    129 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
      0096FB 35 00 53 0A      [ 1]  130 	mov	0x530a+0, #0x00
                           00002C   131 	C$stm8s_tim2.c$70$1_0$349 ==.
                                    132 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
      0096FF 35 00 53 0B      [ 1]  133 	mov	0x530b+0, #0x00
                           000030   134 	C$stm8s_tim2.c$71$1_0$349 ==.
                                    135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
      009703 35 00 53 0C      [ 1]  136 	mov	0x530c+0, #0x00
                           000034   137 	C$stm8s_tim2.c$72$1_0$349 ==.
                                    138 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
      009707 35 FF 53 0D      [ 1]  139 	mov	0x530d+0, #0xff
                           000038   140 	C$stm8s_tim2.c$73$1_0$349 ==.
                                    141 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
      00970B 35 FF 53 0E      [ 1]  142 	mov	0x530e+0, #0xff
                           00003C   143 	C$stm8s_tim2.c$74$1_0$349 ==.
                                    144 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
      00970F 35 00 53 0F      [ 1]  145 	mov	0x530f+0, #0x00
                           000040   146 	C$stm8s_tim2.c$75$1_0$349 ==.
                                    147 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
      009713 35 00 53 10      [ 1]  148 	mov	0x5310+0, #0x00
                           000044   149 	C$stm8s_tim2.c$76$1_0$349 ==.
                                    150 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
      009717 35 00 53 11      [ 1]  151 	mov	0x5311+0, #0x00
                           000048   152 	C$stm8s_tim2.c$77$1_0$349 ==.
                                    153 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
      00971B 35 00 53 12      [ 1]  154 	mov	0x5312+0, #0x00
                           00004C   155 	C$stm8s_tim2.c$78$1_0$349 ==.
                                    156 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
      00971F 35 00 53 13      [ 1]  157 	mov	0x5313+0, #0x00
                           000050   158 	C$stm8s_tim2.c$79$1_0$349 ==.
                                    159 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
      009723 35 00 53 14      [ 1]  160 	mov	0x5314+0, #0x00
                           000054   161 	C$stm8s_tim2.c$80$1_0$349 ==.
                                    162 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
      009727 35 00 53 02      [ 1]  163 	mov	0x5302+0, #0x00
                           000058   164 	C$stm8s_tim2.c$81$1_0$349 ==.
                                    165 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 81: }
                           000058   166 	C$stm8s_tim2.c$81$1_0$349 ==.
                           000058   167 	XG$TIM2_DeInit$0$0 ==.
      00972B 81               [ 4]  168 	ret
                           000059   169 	G$TIM2_TimeBaseInit$0$0 ==.
                           000059   170 	C$stm8s_tim2.c$89$1_0$351 ==.
                                    171 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
                                    172 ;	-----------------------------------------
                                    173 ;	 function TIM2_TimeBaseInit
                                    174 ;	-----------------------------------------
      00972C                        175 _TIM2_TimeBaseInit:
      00972C 52 02            [ 2]  176 	sub	sp, #2
                           00005B   177 	C$stm8s_tim2.c$93$1_0$351 ==.
                                    178 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
      00972E AE 53 0C         [ 2]  179 	ldw	x, #0x530c
      009731 7B 05            [ 1]  180 	ld	a, (0x05, sp)
      009733 F7               [ 1]  181 	ld	(x), a
                           000061   182 	C$stm8s_tim2.c$95$1_0$351 ==.
                                    183 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
      009734 7B 06            [ 1]  184 	ld	a, (0x06, sp)
      009736 0F 01            [ 1]  185 	clr	(0x01, sp)
      009738 C7 53 0D         [ 1]  186 	ld	0x530d, a
                           000068   187 	C$stm8s_tim2.c$96$1_0$351 ==.
                                    188 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
      00973B 7B 07            [ 1]  189 	ld	a, (0x07, sp)
      00973D C7 53 0E         [ 1]  190 	ld	0x530e, a
                           00006D   191 	C$stm8s_tim2.c$97$1_0$351 ==.
                                    192 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 97: }
      009740 5B 02            [ 2]  193 	addw	sp, #2
                           00006F   194 	C$stm8s_tim2.c$97$1_0$351 ==.
                           00006F   195 	XG$TIM2_TimeBaseInit$0$0 ==.
      009742 81               [ 4]  196 	ret
                           000070   197 	G$TIM2_OC1Init$0$0 ==.
                           000070   198 	C$stm8s_tim2.c$108$1_0$353 ==.
                                    199 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    200 ;	-----------------------------------------
                                    201 ;	 function TIM2_OC1Init
                                    202 ;	-----------------------------------------
      009743                        203 _TIM2_OC1Init:
      009743 52 02            [ 2]  204 	sub	sp, #2
                           000072   205 	C$stm8s_tim2.c$119$1_0$353 ==.
                                    206 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
      009745 C6 53 08         [ 1]  207 	ld	a, 0x5308
      009748 A4 FC            [ 1]  208 	and	a, #0xfc
      00974A C7 53 08         [ 1]  209 	ld	0x5308, a
                           00007A   210 	C$stm8s_tim2.c$121$1_0$353 ==.
                                    211 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) |
      00974D C6 53 08         [ 1]  212 	ld	a, 0x5308
      009750 6B 02            [ 1]  213 	ld	(0x02, sp), a
      009752 7B 06            [ 1]  214 	ld	a, (0x06, sp)
      009754 A4 01            [ 1]  215 	and	a, #0x01
      009756 6B 01            [ 1]  216 	ld	(0x01, sp), a
                           000085   217 	C$stm8s_tim2.c$122$1_0$353 ==.
                                    218 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
      009758 7B 09            [ 1]  219 	ld	a, (0x09, sp)
      00975A A4 02            [ 1]  220 	and	a, #0x02
      00975C 1A 01            [ 1]  221 	or	a, (0x01, sp)
      00975E 1A 02            [ 1]  222 	or	a, (0x02, sp)
      009760 C7 53 08         [ 1]  223 	ld	0x5308, a
                           000090   224 	C$stm8s_tim2.c$125$1_0$353 ==.
                                    225 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
      009763 C6 53 05         [ 1]  226 	ld	a, 0x5305
      009766 A4 8F            [ 1]  227 	and	a, #0x8f
                           000095   228 	C$stm8s_tim2.c$126$1_0$353 ==.
                                    229 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
      009768 1A 05            [ 1]  230 	or	a, (0x05, sp)
      00976A C7 53 05         [ 1]  231 	ld	0x5305, a
                           00009A   232 	C$stm8s_tim2.c$129$1_0$353 ==.
                                    233 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
      00976D 7B 07            [ 1]  234 	ld	a, (0x07, sp)
      00976F C7 53 0F         [ 1]  235 	ld	0x530f, a
                           00009F   236 	C$stm8s_tim2.c$130$1_0$353 ==.
                                    237 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
      009772 7B 08            [ 1]  238 	ld	a, (0x08, sp)
      009774 C7 53 10         [ 1]  239 	ld	0x5310, a
                           0000A4   240 	C$stm8s_tim2.c$131$1_0$353 ==.
                                    241 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 131: }
      009777 5B 02            [ 2]  242 	addw	sp, #2
                           0000A6   243 	C$stm8s_tim2.c$131$1_0$353 ==.
                           0000A6   244 	XG$TIM2_OC1Init$0$0 ==.
      009779 81               [ 4]  245 	ret
                           0000A7   246 	G$TIM2_OC2Init$0$0 ==.
                           0000A7   247 	C$stm8s_tim2.c$142$1_0$355 ==.
                                    248 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    249 ;	-----------------------------------------
                                    250 ;	 function TIM2_OC2Init
                                    251 ;	-----------------------------------------
      00977A                        252 _TIM2_OC2Init:
      00977A 52 02            [ 2]  253 	sub	sp, #2
                           0000A9   254 	C$stm8s_tim2.c$154$1_0$355 ==.
                                    255 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
      00977C C6 53 08         [ 1]  256 	ld	a, 0x5308
      00977F A4 CF            [ 1]  257 	and	a, #0xcf
      009781 C7 53 08         [ 1]  258 	ld	0x5308, a
                           0000B1   259 	C$stm8s_tim2.c$156$1_0$355 ==.
                                    260 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
      009784 C6 53 08         [ 1]  261 	ld	a, 0x5308
      009787 6B 01            [ 1]  262 	ld	(0x01, sp), a
      009789 7B 06            [ 1]  263 	ld	a, (0x06, sp)
      00978B A4 10            [ 1]  264 	and	a, #0x10
      00978D 6B 02            [ 1]  265 	ld	(0x02, sp), a
                           0000BC   266 	C$stm8s_tim2.c$157$1_0$355 ==.
                                    267 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
      00978F 7B 09            [ 1]  268 	ld	a, (0x09, sp)
      009791 A4 20            [ 1]  269 	and	a, #0x20
      009793 1A 02            [ 1]  270 	or	a, (0x02, sp)
      009795 1A 01            [ 1]  271 	or	a, (0x01, sp)
      009797 C7 53 08         [ 1]  272 	ld	0x5308, a
                           0000C7   273 	C$stm8s_tim2.c$161$1_0$355 ==.
                                    274 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) |
      00979A C6 53 06         [ 1]  275 	ld	a, 0x5306
      00979D A4 8F            [ 1]  276 	and	a, #0x8f
                           0000CC   277 	C$stm8s_tim2.c$162$1_0$355 ==.
                                    278 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
      00979F 1A 05            [ 1]  279 	or	a, (0x05, sp)
      0097A1 C7 53 06         [ 1]  280 	ld	0x5306, a
                           0000D1   281 	C$stm8s_tim2.c$166$1_0$355 ==.
                                    282 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
      0097A4 7B 07            [ 1]  283 	ld	a, (0x07, sp)
      0097A6 C7 53 11         [ 1]  284 	ld	0x5311, a
                           0000D6   285 	C$stm8s_tim2.c$167$1_0$355 ==.
                                    286 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
      0097A9 7B 08            [ 1]  287 	ld	a, (0x08, sp)
      0097AB C7 53 12         [ 1]  288 	ld	0x5312, a
                           0000DB   289 	C$stm8s_tim2.c$168$1_0$355 ==.
                                    290 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 168: }
      0097AE 5B 02            [ 2]  291 	addw	sp, #2
                           0000DD   292 	C$stm8s_tim2.c$168$1_0$355 ==.
                           0000DD   293 	XG$TIM2_OC2Init$0$0 ==.
      0097B0 81               [ 4]  294 	ret
                           0000DE   295 	G$TIM2_OC3Init$0$0 ==.
                           0000DE   296 	C$stm8s_tim2.c$179$1_0$357 ==.
                                    297 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    298 ;	-----------------------------------------
                                    299 ;	 function TIM2_OC3Init
                                    300 ;	-----------------------------------------
      0097B1                        301 _TIM2_OC3Init:
      0097B1 52 02            [ 2]  302 	sub	sp, #2
                           0000E0   303 	C$stm8s_tim2.c$189$1_0$357 ==.
                                    304 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
      0097B3 C6 53 09         [ 1]  305 	ld	a, 0x5309
      0097B6 A4 FC            [ 1]  306 	and	a, #0xfc
      0097B8 C7 53 09         [ 1]  307 	ld	0x5309, a
                           0000E8   308 	C$stm8s_tim2.c$191$1_0$357 ==.
                                    309 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |
      0097BB C6 53 09         [ 1]  310 	ld	a, 0x5309
      0097BE 6B 01            [ 1]  311 	ld	(0x01, sp), a
      0097C0 7B 06            [ 1]  312 	ld	a, (0x06, sp)
      0097C2 A4 01            [ 1]  313 	and	a, #0x01
      0097C4 6B 02            [ 1]  314 	ld	(0x02, sp), a
                           0000F3   315 	C$stm8s_tim2.c$192$1_0$357 ==.
                                    316 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
      0097C6 7B 09            [ 1]  317 	ld	a, (0x09, sp)
      0097C8 A4 02            [ 1]  318 	and	a, #0x02
      0097CA 1A 02            [ 1]  319 	or	a, (0x02, sp)
      0097CC 1A 01            [ 1]  320 	or	a, (0x01, sp)
      0097CE C7 53 09         [ 1]  321 	ld	0x5309, a
                           0000FE   322 	C$stm8s_tim2.c$195$1_0$357 ==.
                                    323 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
      0097D1 C6 53 07         [ 1]  324 	ld	a, 0x5307
      0097D4 A4 8F            [ 1]  325 	and	a, #0x8f
                           000103   326 	C$stm8s_tim2.c$196$1_0$357 ==.
                                    327 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
      0097D6 1A 05            [ 1]  328 	or	a, (0x05, sp)
      0097D8 C7 53 07         [ 1]  329 	ld	0x5307, a
                           000108   330 	C$stm8s_tim2.c$199$1_0$357 ==.
                                    331 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
      0097DB 7B 07            [ 1]  332 	ld	a, (0x07, sp)
      0097DD C7 53 13         [ 1]  333 	ld	0x5313, a
                           00010D   334 	C$stm8s_tim2.c$200$1_0$357 ==.
                                    335 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
      0097E0 7B 08            [ 1]  336 	ld	a, (0x08, sp)
      0097E2 C7 53 14         [ 1]  337 	ld	0x5314, a
                           000112   338 	C$stm8s_tim2.c$201$1_0$357 ==.
                                    339 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 201: }
      0097E5 5B 02            [ 2]  340 	addw	sp, #2
                           000114   341 	C$stm8s_tim2.c$201$1_0$357 ==.
                           000114   342 	XG$TIM2_OC3Init$0$0 ==.
      0097E7 81               [ 4]  343 	ret
                           000115   344 	G$TIM2_ICInit$0$0 ==.
                           000115   345 	C$stm8s_tim2.c$212$1_0$359 ==.
                                    346 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
                                    347 ;	-----------------------------------------
                                    348 ;	 function TIM2_ICInit
                                    349 ;	-----------------------------------------
      0097E8                        350 _TIM2_ICInit:
                           000115   351 	C$stm8s_tim2.c$225$1_0$359 ==.
                                    352 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
      0097E8 0D 03            [ 1]  353 	tnz	(0x03, sp)
      0097EA 26 17            [ 1]  354 	jrne	00105$
                           000119   355 	C$stm8s_tim2.c$228$2_0$360 ==.
                                    356 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
      0097EC 7B 07            [ 1]  357 	ld	a, (0x07, sp)
      0097EE 88               [ 1]  358 	push	a
      0097EF 7B 06            [ 1]  359 	ld	a, (0x06, sp)
      0097F1 88               [ 1]  360 	push	a
      0097F2 7B 06            [ 1]  361 	ld	a, (0x06, sp)
      0097F4 88               [ 1]  362 	push	a
      0097F5 CD 9B 4C         [ 4]  363 	call	_TI1_Config
      0097F8 5B 03            [ 2]  364 	addw	sp, #3
                           000127   365 	C$stm8s_tim2.c$233$2_0$360 ==.
                                    366 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      0097FA 7B 06            [ 1]  367 	ld	a, (0x06, sp)
      0097FC 88               [ 1]  368 	push	a
      0097FD CD 9A 6E         [ 4]  369 	call	_TIM2_SetIC1Prescaler
      009800 84               [ 1]  370 	pop	a
      009801 20 31            [ 2]  371 	jra	00107$
      009803                        372 00105$:
                           000130   373 	C$stm8s_tim2.c$235$1_0$359 ==.
                                    374 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
      009803 7B 03            [ 1]  375 	ld	a, (0x03, sp)
      009805 4A               [ 1]  376 	dec	a
      009806 26 17            [ 1]  377 	jrne	00102$
                           000135   378 	C$stm8s_tim2.c$238$2_0$361 ==.
                                    379 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
      009808 7B 07            [ 1]  380 	ld	a, (0x07, sp)
      00980A 88               [ 1]  381 	push	a
      00980B 7B 06            [ 1]  382 	ld	a, (0x06, sp)
      00980D 88               [ 1]  383 	push	a
      00980E 7B 06            [ 1]  384 	ld	a, (0x06, sp)
      009810 88               [ 1]  385 	push	a
      009811 CD 9B 78         [ 4]  386 	call	_TI2_Config
      009814 5B 03            [ 2]  387 	addw	sp, #3
                           000143   388 	C$stm8s_tim2.c$243$2_0$361 ==.
                                    389 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      009816 7B 06            [ 1]  390 	ld	a, (0x06, sp)
      009818 88               [ 1]  391 	push	a
      009819 CD 9A 79         [ 4]  392 	call	_TIM2_SetIC2Prescaler
      00981C 84               [ 1]  393 	pop	a
      00981D 20 15            [ 2]  394 	jra	00107$
      00981F                        395 00102$:
                           00014C   396 	C$stm8s_tim2.c$248$2_0$362 ==.
                                    397 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
      00981F 7B 07            [ 1]  398 	ld	a, (0x07, sp)
      009821 88               [ 1]  399 	push	a
      009822 7B 06            [ 1]  400 	ld	a, (0x06, sp)
      009824 88               [ 1]  401 	push	a
      009825 7B 06            [ 1]  402 	ld	a, (0x06, sp)
      009827 88               [ 1]  403 	push	a
      009828 CD 9B A4         [ 4]  404 	call	_TI3_Config
      00982B 5B 03            [ 2]  405 	addw	sp, #3
                           00015A   406 	C$stm8s_tim2.c$253$2_0$362 ==.
                                    407 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
      00982D 7B 06            [ 1]  408 	ld	a, (0x06, sp)
      00982F 88               [ 1]  409 	push	a
      009830 CD 9A 84         [ 4]  410 	call	_TIM2_SetIC3Prescaler
      009833 84               [ 1]  411 	pop	a
      009834                        412 00107$:
                           000161   413 	C$stm8s_tim2.c$255$1_0$359 ==.
                                    414 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 255: }
                           000161   415 	C$stm8s_tim2.c$255$1_0$359 ==.
                           000161   416 	XG$TIM2_ICInit$0$0 ==.
      009834 81               [ 4]  417 	ret
                           000162   418 	G$TIM2_PWMIConfig$0$0 ==.
                           000162   419 	C$stm8s_tim2.c$266$1_0$364 ==.
                                    420 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
                                    421 ;	-----------------------------------------
                                    422 ;	 function TIM2_PWMIConfig
                                    423 ;	-----------------------------------------
      009835                        424 _TIM2_PWMIConfig:
      009835 52 02            [ 2]  425 	sub	sp, #2
                           000164   426 	C$stm8s_tim2.c$282$1_0$364 ==.
                                    427 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
      009837 7B 06            [ 1]  428 	ld	a, (0x06, sp)
      009839 A1 44            [ 1]  429 	cp	a, #0x44
      00983B 27 06            [ 1]  430 	jreq	00102$
                           00016A   431 	C$stm8s_tim2.c$284$2_0$365 ==.
                                    432 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
      00983D A6 44            [ 1]  433 	ld	a, #0x44
      00983F 6B 02            [ 1]  434 	ld	(0x02, sp), a
      009841 20 02            [ 2]  435 	jra	00103$
      009843                        436 00102$:
                           000170   437 	C$stm8s_tim2.c$288$2_0$366 ==.
                                    438 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
      009843 0F 02            [ 1]  439 	clr	(0x02, sp)
      009845                        440 00103$:
                           000172   441 	C$stm8s_tim2.c$292$1_0$364 ==.
                                    442 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
      009845 7B 07            [ 1]  443 	ld	a, (0x07, sp)
      009847 4A               [ 1]  444 	dec	a
      009848 26 06            [ 1]  445 	jrne	00105$
                           000177   446 	C$stm8s_tim2.c$294$2_0$367 ==.
                                    447 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
      00984A A6 02            [ 1]  448 	ld	a, #0x02
      00984C 6B 01            [ 1]  449 	ld	(0x01, sp), a
      00984E 20 04            [ 2]  450 	jra	00106$
      009850                        451 00105$:
                           00017D   452 	C$stm8s_tim2.c$298$2_0$368 ==.
                                    453 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
      009850 A6 01            [ 1]  454 	ld	a, #0x01
      009852 6B 01            [ 1]  455 	ld	(0x01, sp), a
      009854                        456 00106$:
                           000181   457 	C$stm8s_tim2.c$301$1_0$364 ==.
                                    458 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
      009854 0D 05            [ 1]  459 	tnz	(0x05, sp)
      009856 26 2C            [ 1]  460 	jrne	00108$
                           000185   461 	C$stm8s_tim2.c$304$2_0$369 ==.
                                    462 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      009858 7B 09            [ 1]  463 	ld	a, (0x09, sp)
      00985A 88               [ 1]  464 	push	a
      00985B 7B 08            [ 1]  465 	ld	a, (0x08, sp)
      00985D 88               [ 1]  466 	push	a
      00985E 7B 08            [ 1]  467 	ld	a, (0x08, sp)
      009860 88               [ 1]  468 	push	a
      009861 CD 9B 4C         [ 4]  469 	call	_TI1_Config
      009864 5B 03            [ 2]  470 	addw	sp, #3
                           000193   471 	C$stm8s_tim2.c$308$2_0$369 ==.
                                    472 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      009866 7B 08            [ 1]  473 	ld	a, (0x08, sp)
      009868 88               [ 1]  474 	push	a
      009869 CD 9A 6E         [ 4]  475 	call	_TIM2_SetIC1Prescaler
      00986C 84               [ 1]  476 	pop	a
                           00019A   477 	C$stm8s_tim2.c$311$2_0$369 ==.
                                    478 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
      00986D 7B 09            [ 1]  479 	ld	a, (0x09, sp)
      00986F 88               [ 1]  480 	push	a
      009870 7B 02            [ 1]  481 	ld	a, (0x02, sp)
      009872 88               [ 1]  482 	push	a
      009873 7B 04            [ 1]  483 	ld	a, (0x04, sp)
      009875 88               [ 1]  484 	push	a
      009876 CD 9B 78         [ 4]  485 	call	_TI2_Config
      009879 5B 03            [ 2]  486 	addw	sp, #3
                           0001A8   487 	C$stm8s_tim2.c$314$2_0$369 ==.
                                    488 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00987B 7B 08            [ 1]  489 	ld	a, (0x08, sp)
      00987D 88               [ 1]  490 	push	a
      00987E CD 9A 79         [ 4]  491 	call	_TIM2_SetIC2Prescaler
      009881 84               [ 1]  492 	pop	a
      009882 20 2A            [ 2]  493 	jra	00110$
      009884                        494 00108$:
                           0001B1   495 	C$stm8s_tim2.c$319$2_0$370 ==.
                                    496 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      009884 7B 09            [ 1]  497 	ld	a, (0x09, sp)
      009886 88               [ 1]  498 	push	a
      009887 7B 08            [ 1]  499 	ld	a, (0x08, sp)
      009889 88               [ 1]  500 	push	a
      00988A 7B 08            [ 1]  501 	ld	a, (0x08, sp)
      00988C 88               [ 1]  502 	push	a
      00988D CD 9B 78         [ 4]  503 	call	_TI2_Config
      009890 5B 03            [ 2]  504 	addw	sp, #3
                           0001BF   505 	C$stm8s_tim2.c$323$2_0$370 ==.
                                    506 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      009892 7B 08            [ 1]  507 	ld	a, (0x08, sp)
      009894 88               [ 1]  508 	push	a
      009895 CD 9A 79         [ 4]  509 	call	_TIM2_SetIC2Prescaler
      009898 84               [ 1]  510 	pop	a
                           0001C6   511 	C$stm8s_tim2.c$326$2_0$370 ==.
                                    512 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
      009899 7B 09            [ 1]  513 	ld	a, (0x09, sp)
      00989B 88               [ 1]  514 	push	a
      00989C 7B 02            [ 1]  515 	ld	a, (0x02, sp)
      00989E 88               [ 1]  516 	push	a
      00989F 7B 04            [ 1]  517 	ld	a, (0x04, sp)
      0098A1 88               [ 1]  518 	push	a
      0098A2 CD 9B 4C         [ 4]  519 	call	_TI1_Config
      0098A5 5B 03            [ 2]  520 	addw	sp, #3
                           0001D4   521 	C$stm8s_tim2.c$329$2_0$370 ==.
                                    522 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      0098A7 7B 08            [ 1]  523 	ld	a, (0x08, sp)
      0098A9 88               [ 1]  524 	push	a
      0098AA CD 9A 6E         [ 4]  525 	call	_TIM2_SetIC1Prescaler
      0098AD 84               [ 1]  526 	pop	a
      0098AE                        527 00110$:
                           0001DB   528 	C$stm8s_tim2.c$331$1_0$364 ==.
                                    529 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 331: }
      0098AE 5B 02            [ 2]  530 	addw	sp, #2
                           0001DD   531 	C$stm8s_tim2.c$331$1_0$364 ==.
                           0001DD   532 	XG$TIM2_PWMIConfig$0$0 ==.
      0098B0 81               [ 4]  533 	ret
                           0001DE   534 	G$TIM2_Cmd$0$0 ==.
                           0001DE   535 	C$stm8s_tim2.c$339$1_0$372 ==.
                                    536 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
                                    537 ;	-----------------------------------------
                                    538 ;	 function TIM2_Cmd
                                    539 ;	-----------------------------------------
      0098B1                        540 _TIM2_Cmd:
                           0001DE   541 	C$stm8s_tim2.c$345$1_0$372 ==.
                                    542 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 345: if (NewState != DISABLE)
      0098B1 0D 03            [ 1]  543 	tnz	(0x03, sp)
      0098B3 27 06            [ 1]  544 	jreq	00102$
                           0001E2   545 	C$stm8s_tim2.c$347$2_0$373 ==.
                                    546 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
      0098B5 72 10 53 00      [ 1]  547 	bset	21248, #0
      0098B9 20 04            [ 2]  548 	jra	00104$
      0098BB                        549 00102$:
                           0001E8   550 	C$stm8s_tim2.c$351$2_0$374 ==.
                                    551 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
      0098BB 72 11 53 00      [ 1]  552 	bres	21248, #0
      0098BF                        553 00104$:
                           0001EC   554 	C$stm8s_tim2.c$353$1_0$372 ==.
                                    555 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 353: }
                           0001EC   556 	C$stm8s_tim2.c$353$1_0$372 ==.
                           0001EC   557 	XG$TIM2_Cmd$0$0 ==.
      0098BF 81               [ 4]  558 	ret
                           0001ED   559 	G$TIM2_ITConfig$0$0 ==.
                           0001ED   560 	C$stm8s_tim2.c$368$1_0$376 ==.
                                    561 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
                                    562 ;	-----------------------------------------
                                    563 ;	 function TIM2_ITConfig
                                    564 ;	-----------------------------------------
      0098C0                        565 _TIM2_ITConfig:
      0098C0 88               [ 1]  566 	push	a
                           0001EE   567 	C$stm8s_tim2.c$374$1_0$376 ==.
                                    568 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 374: if (NewState != DISABLE)
      0098C1 0D 05            [ 1]  569 	tnz	(0x05, sp)
      0098C3 27 0A            [ 1]  570 	jreq	00102$
                           0001F2   571 	C$stm8s_tim2.c$377$2_0$377 ==.
                                    572 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
      0098C5 C6 53 01         [ 1]  573 	ld	a, 0x5301
      0098C8 1A 04            [ 1]  574 	or	a, (0x04, sp)
      0098CA C7 53 01         [ 1]  575 	ld	0x5301, a
      0098CD 20 0D            [ 2]  576 	jra	00104$
      0098CF                        577 00102$:
                           0001FC   578 	C$stm8s_tim2.c$382$2_0$378 ==.
                                    579 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
      0098CF C6 53 01         [ 1]  580 	ld	a, 0x5301
      0098D2 6B 01            [ 1]  581 	ld	(0x01, sp), a
      0098D4 7B 04            [ 1]  582 	ld	a, (0x04, sp)
      0098D6 43               [ 1]  583 	cpl	a
      0098D7 14 01            [ 1]  584 	and	a, (0x01, sp)
      0098D9 C7 53 01         [ 1]  585 	ld	0x5301, a
      0098DC                        586 00104$:
                           000209   587 	C$stm8s_tim2.c$384$1_0$376 ==.
                                    588 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 384: }
      0098DC 84               [ 1]  589 	pop	a
                           00020A   590 	C$stm8s_tim2.c$384$1_0$376 ==.
                           00020A   591 	XG$TIM2_ITConfig$0$0 ==.
      0098DD 81               [ 4]  592 	ret
                           00020B   593 	G$TIM2_UpdateDisableConfig$0$0 ==.
                           00020B   594 	C$stm8s_tim2.c$392$1_0$380 ==.
                                    595 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
                                    596 ;	-----------------------------------------
                                    597 ;	 function TIM2_UpdateDisableConfig
                                    598 ;	-----------------------------------------
      0098DE                        599 _TIM2_UpdateDisableConfig:
                           00020B   600 	C$stm8s_tim2.c$398$1_0$380 ==.
                                    601 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 398: if (NewState != DISABLE)
      0098DE 0D 03            [ 1]  602 	tnz	(0x03, sp)
      0098E0 27 06            [ 1]  603 	jreq	00102$
                           00020F   604 	C$stm8s_tim2.c$400$2_0$381 ==.
                                    605 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
      0098E2 72 12 53 00      [ 1]  606 	bset	21248, #1
      0098E6 20 04            [ 2]  607 	jra	00104$
      0098E8                        608 00102$:
                           000215   609 	C$stm8s_tim2.c$404$2_0$382 ==.
                                    610 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
      0098E8 72 13 53 00      [ 1]  611 	bres	21248, #1
      0098EC                        612 00104$:
                           000219   613 	C$stm8s_tim2.c$406$1_0$380 ==.
                                    614 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 406: }
                           000219   615 	C$stm8s_tim2.c$406$1_0$380 ==.
                           000219   616 	XG$TIM2_UpdateDisableConfig$0$0 ==.
      0098EC 81               [ 4]  617 	ret
                           00021A   618 	G$TIM2_UpdateRequestConfig$0$0 ==.
                           00021A   619 	C$stm8s_tim2.c$416$1_0$384 ==.
                                    620 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
                                    621 ;	-----------------------------------------
                                    622 ;	 function TIM2_UpdateRequestConfig
                                    623 ;	-----------------------------------------
      0098ED                        624 _TIM2_UpdateRequestConfig:
                           00021A   625 	C$stm8s_tim2.c$422$1_0$384 ==.
                                    626 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
      0098ED 0D 03            [ 1]  627 	tnz	(0x03, sp)
      0098EF 27 06            [ 1]  628 	jreq	00102$
                           00021E   629 	C$stm8s_tim2.c$424$2_0$385 ==.
                                    630 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
      0098F1 72 14 53 00      [ 1]  631 	bset	21248, #2
      0098F5 20 04            [ 2]  632 	jra	00104$
      0098F7                        633 00102$:
                           000224   634 	C$stm8s_tim2.c$428$2_0$386 ==.
                                    635 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
      0098F7 72 15 53 00      [ 1]  636 	bres	21248, #2
      0098FB                        637 00104$:
                           000228   638 	C$stm8s_tim2.c$430$1_0$384 ==.
                                    639 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 430: }
                           000228   640 	C$stm8s_tim2.c$430$1_0$384 ==.
                           000228   641 	XG$TIM2_UpdateRequestConfig$0$0 ==.
      0098FB 81               [ 4]  642 	ret
                           000229   643 	G$TIM2_SelectOnePulseMode$0$0 ==.
                           000229   644 	C$stm8s_tim2.c$440$1_0$388 ==.
                                    645 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
                                    646 ;	-----------------------------------------
                                    647 ;	 function TIM2_SelectOnePulseMode
                                    648 ;	-----------------------------------------
      0098FC                        649 _TIM2_SelectOnePulseMode:
                           000229   650 	C$stm8s_tim2.c$446$1_0$388 ==.
                                    651 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
      0098FC 0D 03            [ 1]  652 	tnz	(0x03, sp)
      0098FE 27 06            [ 1]  653 	jreq	00102$
                           00022D   654 	C$stm8s_tim2.c$448$2_0$389 ==.
                                    655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
      009900 72 16 53 00      [ 1]  656 	bset	21248, #3
      009904 20 04            [ 2]  657 	jra	00104$
      009906                        658 00102$:
                           000233   659 	C$stm8s_tim2.c$452$2_0$390 ==.
                                    660 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
      009906 72 17 53 00      [ 1]  661 	bres	21248, #3
      00990A                        662 00104$:
                           000237   663 	C$stm8s_tim2.c$454$1_0$388 ==.
                                    664 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 454: }
                           000237   665 	C$stm8s_tim2.c$454$1_0$388 ==.
                           000237   666 	XG$TIM2_SelectOnePulseMode$0$0 ==.
      00990A 81               [ 4]  667 	ret
                           000238   668 	G$TIM2_PrescalerConfig$0$0 ==.
                           000238   669 	C$stm8s_tim2.c$484$1_0$392 ==.
                                    670 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
                                    671 ;	-----------------------------------------
                                    672 ;	 function TIM2_PrescalerConfig
                                    673 ;	-----------------------------------------
      00990B                        674 _TIM2_PrescalerConfig:
                           000238   675 	C$stm8s_tim2.c$492$1_0$392 ==.
                                    676 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
      00990B AE 53 0C         [ 2]  677 	ldw	x, #0x530c
      00990E 7B 03            [ 1]  678 	ld	a, (0x03, sp)
      009910 F7               [ 1]  679 	ld	(x), a
                           00023E   680 	C$stm8s_tim2.c$495$1_0$392 ==.
                                    681 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
      009911 AE 53 04         [ 2]  682 	ldw	x, #0x5304
      009914 7B 04            [ 1]  683 	ld	a, (0x04, sp)
      009916 F7               [ 1]  684 	ld	(x), a
                           000244   685 	C$stm8s_tim2.c$496$1_0$392 ==.
                                    686 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 496: }
                           000244   687 	C$stm8s_tim2.c$496$1_0$392 ==.
                           000244   688 	XG$TIM2_PrescalerConfig$0$0 ==.
      009917 81               [ 4]  689 	ret
                           000245   690 	G$TIM2_ForcedOC1Config$0$0 ==.
                           000245   691 	C$stm8s_tim2.c$507$1_0$394 ==.
                                    692 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                    693 ;	-----------------------------------------
                                    694 ;	 function TIM2_ForcedOC1Config
                                    695 ;	-----------------------------------------
      009918                        696 _TIM2_ForcedOC1Config:
                           000245   697 	C$stm8s_tim2.c$513$1_0$394 ==.
                                    698 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
      009918 C6 53 05         [ 1]  699 	ld	a, 0x5305
      00991B A4 8F            [ 1]  700 	and	a, #0x8f
                           00024A   701 	C$stm8s_tim2.c$514$1_0$394 ==.
                                    702 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
      00991D 1A 03            [ 1]  703 	or	a, (0x03, sp)
      00991F C7 53 05         [ 1]  704 	ld	0x5305, a
                           00024F   705 	C$stm8s_tim2.c$515$1_0$394 ==.
                                    706 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 515: }
                           00024F   707 	C$stm8s_tim2.c$515$1_0$394 ==.
                           00024F   708 	XG$TIM2_ForcedOC1Config$0$0 ==.
      009922 81               [ 4]  709 	ret
                           000250   710 	G$TIM2_ForcedOC2Config$0$0 ==.
                           000250   711 	C$stm8s_tim2.c$526$1_0$396 ==.
                                    712 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                    713 ;	-----------------------------------------
                                    714 ;	 function TIM2_ForcedOC2Config
                                    715 ;	-----------------------------------------
      009923                        716 _TIM2_ForcedOC2Config:
                           000250   717 	C$stm8s_tim2.c$532$1_0$396 ==.
                                    718 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
      009923 C6 53 06         [ 1]  719 	ld	a, 0x5306
      009926 A4 8F            [ 1]  720 	and	a, #0x8f
                           000255   721 	C$stm8s_tim2.c$533$1_0$396 ==.
                                    722 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
      009928 1A 03            [ 1]  723 	or	a, (0x03, sp)
      00992A C7 53 06         [ 1]  724 	ld	0x5306, a
                           00025A   725 	C$stm8s_tim2.c$534$1_0$396 ==.
                                    726 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 534: }
                           00025A   727 	C$stm8s_tim2.c$534$1_0$396 ==.
                           00025A   728 	XG$TIM2_ForcedOC2Config$0$0 ==.
      00992D 81               [ 4]  729 	ret
                           00025B   730 	G$TIM2_ForcedOC3Config$0$0 ==.
                           00025B   731 	C$stm8s_tim2.c$545$1_0$398 ==.
                                    732 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                    733 ;	-----------------------------------------
                                    734 ;	 function TIM2_ForcedOC3Config
                                    735 ;	-----------------------------------------
      00992E                        736 _TIM2_ForcedOC3Config:
                           00025B   737 	C$stm8s_tim2.c$551$1_0$398 ==.
                                    738 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      00992E C6 53 07         [ 1]  739 	ld	a, 0x5307
      009931 A4 8F            [ 1]  740 	and	a, #0x8f
                           000260   741 	C$stm8s_tim2.c$552$1_0$398 ==.
                                    742 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
      009933 1A 03            [ 1]  743 	or	a, (0x03, sp)
      009935 C7 53 07         [ 1]  744 	ld	0x5307, a
                           000265   745 	C$stm8s_tim2.c$553$1_0$398 ==.
                                    746 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 553: }
                           000265   747 	C$stm8s_tim2.c$553$1_0$398 ==.
                           000265   748 	XG$TIM2_ForcedOC3Config$0$0 ==.
      009938 81               [ 4]  749 	ret
                           000266   750 	G$TIM2_ARRPreloadConfig$0$0 ==.
                           000266   751 	C$stm8s_tim2.c$561$1_0$400 ==.
                                    752 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
                                    753 ;	-----------------------------------------
                                    754 ;	 function TIM2_ARRPreloadConfig
                                    755 ;	-----------------------------------------
      009939                        756 _TIM2_ARRPreloadConfig:
                           000266   757 	C$stm8s_tim2.c$567$1_0$400 ==.
                                    758 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 567: if (NewState != DISABLE)
      009939 0D 03            [ 1]  759 	tnz	(0x03, sp)
      00993B 27 06            [ 1]  760 	jreq	00102$
                           00026A   761 	C$stm8s_tim2.c$569$2_0$401 ==.
                                    762 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
      00993D 72 1E 53 00      [ 1]  763 	bset	21248, #7
      009941 20 04            [ 2]  764 	jra	00104$
      009943                        765 00102$:
                           000270   766 	C$stm8s_tim2.c$573$2_0$402 ==.
                                    767 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
      009943 72 1F 53 00      [ 1]  768 	bres	21248, #7
      009947                        769 00104$:
                           000274   770 	C$stm8s_tim2.c$575$1_0$400 ==.
                                    771 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 575: }
                           000274   772 	C$stm8s_tim2.c$575$1_0$400 ==.
                           000274   773 	XG$TIM2_ARRPreloadConfig$0$0 ==.
      009947 81               [ 4]  774 	ret
                           000275   775 	G$TIM2_OC1PreloadConfig$0$0 ==.
                           000275   776 	C$stm8s_tim2.c$583$1_0$404 ==.
                                    777 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
                                    778 ;	-----------------------------------------
                                    779 ;	 function TIM2_OC1PreloadConfig
                                    780 ;	-----------------------------------------
      009948                        781 _TIM2_OC1PreloadConfig:
                           000275   782 	C$stm8s_tim2.c$589$1_0$404 ==.
                                    783 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 589: if (NewState != DISABLE)
      009948 0D 03            [ 1]  784 	tnz	(0x03, sp)
      00994A 27 06            [ 1]  785 	jreq	00102$
                           000279   786 	C$stm8s_tim2.c$591$2_0$405 ==.
                                    787 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
      00994C 72 16 53 05      [ 1]  788 	bset	21253, #3
      009950 20 04            [ 2]  789 	jra	00104$
      009952                        790 00102$:
                           00027F   791 	C$stm8s_tim2.c$595$2_0$406 ==.
                                    792 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      009952 72 17 53 05      [ 1]  793 	bres	21253, #3
      009956                        794 00104$:
                           000283   795 	C$stm8s_tim2.c$597$1_0$404 ==.
                                    796 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 597: }
                           000283   797 	C$stm8s_tim2.c$597$1_0$404 ==.
                           000283   798 	XG$TIM2_OC1PreloadConfig$0$0 ==.
      009956 81               [ 4]  799 	ret
                           000284   800 	G$TIM2_OC2PreloadConfig$0$0 ==.
                           000284   801 	C$stm8s_tim2.c$605$1_0$408 ==.
                                    802 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
                                    803 ;	-----------------------------------------
                                    804 ;	 function TIM2_OC2PreloadConfig
                                    805 ;	-----------------------------------------
      009957                        806 _TIM2_OC2PreloadConfig:
                           000284   807 	C$stm8s_tim2.c$611$1_0$408 ==.
                                    808 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 611: if (NewState != DISABLE)
      009957 0D 03            [ 1]  809 	tnz	(0x03, sp)
      009959 27 06            [ 1]  810 	jreq	00102$
                           000288   811 	C$stm8s_tim2.c$613$2_0$409 ==.
                                    812 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
      00995B 72 16 53 06      [ 1]  813 	bset	21254, #3
      00995F 20 04            [ 2]  814 	jra	00104$
      009961                        815 00102$:
                           00028E   816 	C$stm8s_tim2.c$617$2_0$410 ==.
                                    817 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      009961 72 17 53 06      [ 1]  818 	bres	21254, #3
      009965                        819 00104$:
                           000292   820 	C$stm8s_tim2.c$619$1_0$408 ==.
                                    821 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 619: }
                           000292   822 	C$stm8s_tim2.c$619$1_0$408 ==.
                           000292   823 	XG$TIM2_OC2PreloadConfig$0$0 ==.
      009965 81               [ 4]  824 	ret
                           000293   825 	G$TIM2_OC3PreloadConfig$0$0 ==.
                           000293   826 	C$stm8s_tim2.c$627$1_0$412 ==.
                                    827 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
                                    828 ;	-----------------------------------------
                                    829 ;	 function TIM2_OC3PreloadConfig
                                    830 ;	-----------------------------------------
      009966                        831 _TIM2_OC3PreloadConfig:
                           000293   832 	C$stm8s_tim2.c$633$1_0$412 ==.
                                    833 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 633: if (NewState != DISABLE)
      009966 0D 03            [ 1]  834 	tnz	(0x03, sp)
      009968 27 06            [ 1]  835 	jreq	00102$
                           000297   836 	C$stm8s_tim2.c$635$2_0$413 ==.
                                    837 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
      00996A 72 16 53 07      [ 1]  838 	bset	21255, #3
      00996E 20 04            [ 2]  839 	jra	00104$
      009970                        840 00102$:
                           00029D   841 	C$stm8s_tim2.c$639$2_0$414 ==.
                                    842 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      009970 72 17 53 07      [ 1]  843 	bres	21255, #3
      009974                        844 00104$:
                           0002A1   845 	C$stm8s_tim2.c$641$1_0$412 ==.
                                    846 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 641: }
                           0002A1   847 	C$stm8s_tim2.c$641$1_0$412 ==.
                           0002A1   848 	XG$TIM2_OC3PreloadConfig$0$0 ==.
      009974 81               [ 4]  849 	ret
                           0002A2   850 	G$TIM2_GenerateEvent$0$0 ==.
                           0002A2   851 	C$stm8s_tim2.c$653$1_0$416 ==.
                                    852 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
                                    853 ;	-----------------------------------------
                                    854 ;	 function TIM2_GenerateEvent
                                    855 ;	-----------------------------------------
      009975                        856 _TIM2_GenerateEvent:
                           0002A2   857 	C$stm8s_tim2.c$659$1_0$416 ==.
                                    858 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
      009975 AE 53 04         [ 2]  859 	ldw	x, #0x5304
      009978 7B 03            [ 1]  860 	ld	a, (0x03, sp)
      00997A F7               [ 1]  861 	ld	(x), a
                           0002A8   862 	C$stm8s_tim2.c$660$1_0$416 ==.
                                    863 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 660: }
                           0002A8   864 	C$stm8s_tim2.c$660$1_0$416 ==.
                           0002A8   865 	XG$TIM2_GenerateEvent$0$0 ==.
      00997B 81               [ 4]  866 	ret
                           0002A9   867 	G$TIM2_OC1PolarityConfig$0$0 ==.
                           0002A9   868 	C$stm8s_tim2.c$670$1_0$418 ==.
                                    869 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                    870 ;	-----------------------------------------
                                    871 ;	 function TIM2_OC1PolarityConfig
                                    872 ;	-----------------------------------------
      00997C                        873 _TIM2_OC1PolarityConfig:
                           0002A9   874 	C$stm8s_tim2.c$676$1_0$418 ==.
                                    875 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00997C 0D 03            [ 1]  876 	tnz	(0x03, sp)
      00997E 27 06            [ 1]  877 	jreq	00102$
                           0002AD   878 	C$stm8s_tim2.c$678$2_0$419 ==.
                                    879 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
      009980 72 12 53 08      [ 1]  880 	bset	21256, #1
      009984 20 04            [ 2]  881 	jra	00104$
      009986                        882 00102$:
                           0002B3   883 	C$stm8s_tim2.c$682$2_0$420 ==.
                                    884 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      009986 72 13 53 08      [ 1]  885 	bres	21256, #1
      00998A                        886 00104$:
                           0002B7   887 	C$stm8s_tim2.c$684$1_0$418 ==.
                                    888 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 684: }
                           0002B7   889 	C$stm8s_tim2.c$684$1_0$418 ==.
                           0002B7   890 	XG$TIM2_OC1PolarityConfig$0$0 ==.
      00998A 81               [ 4]  891 	ret
                           0002B8   892 	G$TIM2_OC2PolarityConfig$0$0 ==.
                           0002B8   893 	C$stm8s_tim2.c$694$1_0$422 ==.
                                    894 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                    895 ;	-----------------------------------------
                                    896 ;	 function TIM2_OC2PolarityConfig
                                    897 ;	-----------------------------------------
      00998B                        898 _TIM2_OC2PolarityConfig:
                           0002B8   899 	C$stm8s_tim2.c$700$1_0$422 ==.
                                    900 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00998B 0D 03            [ 1]  901 	tnz	(0x03, sp)
      00998D 27 06            [ 1]  902 	jreq	00102$
                           0002BC   903 	C$stm8s_tim2.c$702$2_0$423 ==.
                                    904 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00998F 72 1A 53 08      [ 1]  905 	bset	21256, #5
      009993 20 04            [ 2]  906 	jra	00104$
      009995                        907 00102$:
                           0002C2   908 	C$stm8s_tim2.c$706$2_0$424 ==.
                                    909 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      009995 72 1B 53 08      [ 1]  910 	bres	21256, #5
      009999                        911 00104$:
                           0002C6   912 	C$stm8s_tim2.c$708$1_0$422 ==.
                                    913 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 708: }
                           0002C6   914 	C$stm8s_tim2.c$708$1_0$422 ==.
                           0002C6   915 	XG$TIM2_OC2PolarityConfig$0$0 ==.
      009999 81               [ 4]  916 	ret
                           0002C7   917 	G$TIM2_OC3PolarityConfig$0$0 ==.
                           0002C7   918 	C$stm8s_tim2.c$718$1_0$426 ==.
                                    919 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                    920 ;	-----------------------------------------
                                    921 ;	 function TIM2_OC3PolarityConfig
                                    922 ;	-----------------------------------------
      00999A                        923 _TIM2_OC3PolarityConfig:
                           0002C7   924 	C$stm8s_tim2.c$724$1_0$426 ==.
                                    925 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00999A 0D 03            [ 1]  926 	tnz	(0x03, sp)
      00999C 27 06            [ 1]  927 	jreq	00102$
                           0002CB   928 	C$stm8s_tim2.c$726$2_0$427 ==.
                                    929 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
      00999E 72 12 53 09      [ 1]  930 	bset	21257, #1
      0099A2 20 04            [ 2]  931 	jra	00104$
      0099A4                        932 00102$:
                           0002D1   933 	C$stm8s_tim2.c$730$2_0$428 ==.
                                    934 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      0099A4 72 13 53 09      [ 1]  935 	bres	21257, #1
      0099A8                        936 00104$:
                           0002D5   937 	C$stm8s_tim2.c$732$1_0$426 ==.
                                    938 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 732: }
                           0002D5   939 	C$stm8s_tim2.c$732$1_0$426 ==.
                           0002D5   940 	XG$TIM2_OC3PolarityConfig$0$0 ==.
      0099A8 81               [ 4]  941 	ret
                           0002D6   942 	G$TIM2_CCxCmd$0$0 ==.
                           0002D6   943 	C$stm8s_tim2.c$745$1_0$430 ==.
                                    944 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
                                    945 ;	-----------------------------------------
                                    946 ;	 function TIM2_CCxCmd
                                    947 ;	-----------------------------------------
      0099A9                        948 _TIM2_CCxCmd:
                           0002D6   949 	C$stm8s_tim2.c$751$1_0$430 ==.
                                    950 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
      0099A9 0D 03            [ 1]  951 	tnz	(0x03, sp)
      0099AB 26 10            [ 1]  952 	jrne	00114$
                           0002DA   953 	C$stm8s_tim2.c$754$2_0$431 ==.
                                    954 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 754: if (NewState != DISABLE)
      0099AD 0D 04            [ 1]  955 	tnz	(0x04, sp)
      0099AF 27 06            [ 1]  956 	jreq	00102$
                           0002DE   957 	C$stm8s_tim2.c$756$3_0$432 ==.
                                    958 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      0099B1 72 10 53 08      [ 1]  959 	bset	21256, #0
      0099B5 20 29            [ 2]  960 	jra	00116$
      0099B7                        961 00102$:
                           0002E4   962 	C$stm8s_tim2.c$760$3_0$433 ==.
                                    963 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      0099B7 72 11 53 08      [ 1]  964 	bres	21256, #0
      0099BB 20 23            [ 2]  965 	jra	00116$
      0099BD                        966 00114$:
                           0002EA   967 	C$stm8s_tim2.c$764$1_0$430 ==.
                                    968 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
      0099BD 7B 03            [ 1]  969 	ld	a, (0x03, sp)
      0099BF 4A               [ 1]  970 	dec	a
      0099C0 26 10            [ 1]  971 	jrne	00111$
                           0002EF   972 	C$stm8s_tim2.c$767$2_0$434 ==.
                                    973 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 767: if (NewState != DISABLE)
      0099C2 0D 04            [ 1]  974 	tnz	(0x04, sp)
      0099C4 27 06            [ 1]  975 	jreq	00105$
                           0002F3   976 	C$stm8s_tim2.c$769$3_0$435 ==.
                                    977 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
      0099C6 72 18 53 08      [ 1]  978 	bset	21256, #4
      0099CA 20 14            [ 2]  979 	jra	00116$
      0099CC                        980 00105$:
                           0002F9   981 	C$stm8s_tim2.c$773$3_0$436 ==.
                                    982 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      0099CC 72 19 53 08      [ 1]  983 	bres	21256, #4
      0099D0 20 0E            [ 2]  984 	jra	00116$
      0099D2                        985 00111$:
                           0002FF   986 	C$stm8s_tim2.c$779$2_0$437 ==.
                                    987 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 779: if (NewState != DISABLE)
      0099D2 0D 04            [ 1]  988 	tnz	(0x04, sp)
      0099D4 27 06            [ 1]  989 	jreq	00108$
                           000303   990 	C$stm8s_tim2.c$781$3_0$438 ==.
                                    991 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
      0099D6 72 10 53 09      [ 1]  992 	bset	21257, #0
      0099DA 20 04            [ 2]  993 	jra	00116$
      0099DC                        994 00108$:
                           000309   995 	C$stm8s_tim2.c$785$3_0$439 ==.
                                    996 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      0099DC 72 11 53 09      [ 1]  997 	bres	21257, #0
      0099E0                        998 00116$:
                           00030D   999 	C$stm8s_tim2.c$788$1_0$430 ==.
                                   1000 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 788: }
                           00030D  1001 	C$stm8s_tim2.c$788$1_0$430 ==.
                           00030D  1002 	XG$TIM2_CCxCmd$0$0 ==.
      0099E0 81               [ 4] 1003 	ret
                           00030E  1004 	G$TIM2_SelectOCxM$0$0 ==.
                           00030E  1005 	C$stm8s_tim2.c$810$1_0$441 ==.
                                   1006 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
                                   1007 ;	-----------------------------------------
                                   1008 ;	 function TIM2_SelectOCxM
                                   1009 ;	-----------------------------------------
      0099E1                       1010 _TIM2_SelectOCxM:
                           00030E  1011 	C$stm8s_tim2.c$816$1_0$441 ==.
                                   1012 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
      0099E1 0D 03            [ 1] 1013 	tnz	(0x03, sp)
      0099E3 26 10            [ 1] 1014 	jrne	00105$
                           000312  1015 	C$stm8s_tim2.c$819$2_0$442 ==.
                                   1016 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      0099E5 72 11 53 08      [ 1] 1017 	bres	21256, #0
                           000316  1018 	C$stm8s_tim2.c$822$2_0$442 ==.
                                   1019 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
      0099E9 C6 53 05         [ 1] 1020 	ld	a, 0x5305
      0099EC A4 8F            [ 1] 1021 	and	a, #0x8f
                           00031B  1022 	C$stm8s_tim2.c$823$2_0$442 ==.
                                   1023 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
      0099EE 1A 04            [ 1] 1024 	or	a, (0x04, sp)
      0099F0 C7 53 05         [ 1] 1025 	ld	0x5305, a
      0099F3 20 23            [ 2] 1026 	jra	00107$
      0099F5                       1027 00105$:
                           000322  1028 	C$stm8s_tim2.c$825$1_0$441 ==.
                                   1029 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
      0099F5 7B 03            [ 1] 1030 	ld	a, (0x03, sp)
      0099F7 4A               [ 1] 1031 	dec	a
      0099F8 26 10            [ 1] 1032 	jrne	00102$
                           000327  1033 	C$stm8s_tim2.c$828$2_0$443 ==.
                                   1034 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      0099FA 72 19 53 08      [ 1] 1035 	bres	21256, #4
                           00032B  1036 	C$stm8s_tim2.c$831$2_0$443 ==.
                                   1037 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
      0099FE C6 53 06         [ 1] 1038 	ld	a, 0x5306
      009A01 A4 8F            [ 1] 1039 	and	a, #0x8f
                           000330  1040 	C$stm8s_tim2.c$832$2_0$443 ==.
                                   1041 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
      009A03 1A 04            [ 1] 1042 	or	a, (0x04, sp)
      009A05 C7 53 06         [ 1] 1043 	ld	0x5306, a
      009A08 20 0E            [ 2] 1044 	jra	00107$
      009A0A                       1045 00102$:
                           000337  1046 	C$stm8s_tim2.c$837$2_0$444 ==.
                                   1047 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      009A0A 72 11 53 09      [ 1] 1048 	bres	21257, #0
                           00033B  1049 	C$stm8s_tim2.c$840$2_0$444 ==.
                                   1050 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      009A0E C6 53 07         [ 1] 1051 	ld	a, 0x5307
      009A11 A4 8F            [ 1] 1052 	and	a, #0x8f
                           000340  1053 	C$stm8s_tim2.c$841$2_0$444 ==.
                                   1054 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
      009A13 1A 04            [ 1] 1055 	or	a, (0x04, sp)
      009A15 C7 53 07         [ 1] 1056 	ld	0x5307, a
      009A18                       1057 00107$:
                           000345  1058 	C$stm8s_tim2.c$843$1_0$441 ==.
                                   1059 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 843: }
                           000345  1060 	C$stm8s_tim2.c$843$1_0$441 ==.
                           000345  1061 	XG$TIM2_SelectOCxM$0$0 ==.
      009A18 81               [ 4] 1062 	ret
                           000346  1063 	G$TIM2_SetCounter$0$0 ==.
                           000346  1064 	C$stm8s_tim2.c$851$1_0$446 ==.
                                   1065 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
                                   1066 ;	-----------------------------------------
                                   1067 ;	 function TIM2_SetCounter
                                   1068 ;	-----------------------------------------
      009A19                       1069 _TIM2_SetCounter:
      009A19 52 02            [ 2] 1070 	sub	sp, #2
                           000348  1071 	C$stm8s_tim2.c$854$1_0$446 ==.
                                   1072 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
      009A1B 7B 05            [ 1] 1073 	ld	a, (0x05, sp)
      009A1D 0F 01            [ 1] 1074 	clr	(0x01, sp)
      009A1F C7 53 0A         [ 1] 1075 	ld	0x530a, a
                           00034F  1076 	C$stm8s_tim2.c$855$1_0$446 ==.
                                   1077 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
      009A22 7B 06            [ 1] 1078 	ld	a, (0x06, sp)
      009A24 C7 53 0B         [ 1] 1079 	ld	0x530b, a
                           000354  1080 	C$stm8s_tim2.c$856$1_0$446 ==.
                                   1081 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 856: }
      009A27 5B 02            [ 2] 1082 	addw	sp, #2
                           000356  1083 	C$stm8s_tim2.c$856$1_0$446 ==.
                           000356  1084 	XG$TIM2_SetCounter$0$0 ==.
      009A29 81               [ 4] 1085 	ret
                           000357  1086 	G$TIM2_SetAutoreload$0$0 ==.
                           000357  1087 	C$stm8s_tim2.c$864$1_0$448 ==.
                                   1088 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
                                   1089 ;	-----------------------------------------
                                   1090 ;	 function TIM2_SetAutoreload
                                   1091 ;	-----------------------------------------
      009A2A                       1092 _TIM2_SetAutoreload:
      009A2A 52 02            [ 2] 1093 	sub	sp, #2
                           000359  1094 	C$stm8s_tim2.c$867$1_0$448 ==.
                                   1095 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
      009A2C 7B 05            [ 1] 1096 	ld	a, (0x05, sp)
      009A2E 0F 01            [ 1] 1097 	clr	(0x01, sp)
      009A30 C7 53 0D         [ 1] 1098 	ld	0x530d, a
                           000360  1099 	C$stm8s_tim2.c$868$1_0$448 ==.
                                   1100 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
      009A33 7B 06            [ 1] 1101 	ld	a, (0x06, sp)
      009A35 C7 53 0E         [ 1] 1102 	ld	0x530e, a
                           000365  1103 	C$stm8s_tim2.c$869$1_0$448 ==.
                                   1104 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 869: }
      009A38 5B 02            [ 2] 1105 	addw	sp, #2
                           000367  1106 	C$stm8s_tim2.c$869$1_0$448 ==.
                           000367  1107 	XG$TIM2_SetAutoreload$0$0 ==.
      009A3A 81               [ 4] 1108 	ret
                           000368  1109 	G$TIM2_SetCompare1$0$0 ==.
                           000368  1110 	C$stm8s_tim2.c$877$1_0$450 ==.
                                   1111 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
                                   1112 ;	-----------------------------------------
                                   1113 ;	 function TIM2_SetCompare1
                                   1114 ;	-----------------------------------------
      009A3B                       1115 _TIM2_SetCompare1:
      009A3B 52 02            [ 2] 1116 	sub	sp, #2
                           00036A  1117 	C$stm8s_tim2.c$880$1_0$450 ==.
                                   1118 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
      009A3D 7B 05            [ 1] 1119 	ld	a, (0x05, sp)
      009A3F 0F 01            [ 1] 1120 	clr	(0x01, sp)
      009A41 C7 53 0F         [ 1] 1121 	ld	0x530f, a
                           000371  1122 	C$stm8s_tim2.c$881$1_0$450 ==.
                                   1123 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
      009A44 7B 06            [ 1] 1124 	ld	a, (0x06, sp)
      009A46 C7 53 10         [ 1] 1125 	ld	0x5310, a
                           000376  1126 	C$stm8s_tim2.c$882$1_0$450 ==.
                                   1127 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 882: }
      009A49 5B 02            [ 2] 1128 	addw	sp, #2
                           000378  1129 	C$stm8s_tim2.c$882$1_0$450 ==.
                           000378  1130 	XG$TIM2_SetCompare1$0$0 ==.
      009A4B 81               [ 4] 1131 	ret
                           000379  1132 	G$TIM2_SetCompare2$0$0 ==.
                           000379  1133 	C$stm8s_tim2.c$890$1_0$452 ==.
                                   1134 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
                                   1135 ;	-----------------------------------------
                                   1136 ;	 function TIM2_SetCompare2
                                   1137 ;	-----------------------------------------
      009A4C                       1138 _TIM2_SetCompare2:
      009A4C 52 02            [ 2] 1139 	sub	sp, #2
                           00037B  1140 	C$stm8s_tim2.c$893$1_0$452 ==.
                                   1141 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
      009A4E 7B 05            [ 1] 1142 	ld	a, (0x05, sp)
      009A50 0F 01            [ 1] 1143 	clr	(0x01, sp)
      009A52 C7 53 11         [ 1] 1144 	ld	0x5311, a
                           000382  1145 	C$stm8s_tim2.c$894$1_0$452 ==.
                                   1146 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
      009A55 7B 06            [ 1] 1147 	ld	a, (0x06, sp)
      009A57 C7 53 12         [ 1] 1148 	ld	0x5312, a
                           000387  1149 	C$stm8s_tim2.c$895$1_0$452 ==.
                                   1150 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 895: }
      009A5A 5B 02            [ 2] 1151 	addw	sp, #2
                           000389  1152 	C$stm8s_tim2.c$895$1_0$452 ==.
                           000389  1153 	XG$TIM2_SetCompare2$0$0 ==.
      009A5C 81               [ 4] 1154 	ret
                           00038A  1155 	G$TIM2_SetCompare3$0$0 ==.
                           00038A  1156 	C$stm8s_tim2.c$903$1_0$454 ==.
                                   1157 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
                                   1158 ;	-----------------------------------------
                                   1159 ;	 function TIM2_SetCompare3
                                   1160 ;	-----------------------------------------
      009A5D                       1161 _TIM2_SetCompare3:
      009A5D 52 02            [ 2] 1162 	sub	sp, #2
                           00038C  1163 	C$stm8s_tim2.c$906$1_0$454 ==.
                                   1164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
      009A5F 7B 05            [ 1] 1165 	ld	a, (0x05, sp)
      009A61 0F 01            [ 1] 1166 	clr	(0x01, sp)
      009A63 C7 53 13         [ 1] 1167 	ld	0x5313, a
                           000393  1168 	C$stm8s_tim2.c$907$1_0$454 ==.
                                   1169 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
      009A66 7B 06            [ 1] 1170 	ld	a, (0x06, sp)
      009A68 C7 53 14         [ 1] 1171 	ld	0x5314, a
                           000398  1172 	C$stm8s_tim2.c$908$1_0$454 ==.
                                   1173 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 908: }
      009A6B 5B 02            [ 2] 1174 	addw	sp, #2
                           00039A  1175 	C$stm8s_tim2.c$908$1_0$454 ==.
                           00039A  1176 	XG$TIM2_SetCompare3$0$0 ==.
      009A6D 81               [ 4] 1177 	ret
                           00039B  1178 	G$TIM2_SetIC1Prescaler$0$0 ==.
                           00039B  1179 	C$stm8s_tim2.c$920$1_0$456 ==.
                                   1180 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
                                   1181 ;	-----------------------------------------
                                   1182 ;	 function TIM2_SetIC1Prescaler
                                   1183 ;	-----------------------------------------
      009A6E                       1184 _TIM2_SetIC1Prescaler:
                           00039B  1185 	C$stm8s_tim2.c$926$1_0$456 ==.
                                   1186 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      009A6E C6 53 05         [ 1] 1187 	ld	a, 0x5305
      009A71 A4 F3            [ 1] 1188 	and	a, #0xf3
                           0003A0  1189 	C$stm8s_tim2.c$927$1_0$456 ==.
                                   1190 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
      009A73 1A 03            [ 1] 1191 	or	a, (0x03, sp)
      009A75 C7 53 05         [ 1] 1192 	ld	0x5305, a
                           0003A5  1193 	C$stm8s_tim2.c$928$1_0$456 ==.
                                   1194 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 928: }
                           0003A5  1195 	C$stm8s_tim2.c$928$1_0$456 ==.
                           0003A5  1196 	XG$TIM2_SetIC1Prescaler$0$0 ==.
      009A78 81               [ 4] 1197 	ret
                           0003A6  1198 	G$TIM2_SetIC2Prescaler$0$0 ==.
                           0003A6  1199 	C$stm8s_tim2.c$940$1_0$458 ==.
                                   1200 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
                                   1201 ;	-----------------------------------------
                                   1202 ;	 function TIM2_SetIC2Prescaler
                                   1203 ;	-----------------------------------------
      009A79                       1204 _TIM2_SetIC2Prescaler:
                           0003A6  1205 	C$stm8s_tim2.c$946$1_0$458 ==.
                                   1206 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      009A79 C6 53 06         [ 1] 1207 	ld	a, 0x5306
      009A7C A4 F3            [ 1] 1208 	and	a, #0xf3
                           0003AB  1209 	C$stm8s_tim2.c$947$1_0$458 ==.
                                   1210 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
      009A7E 1A 03            [ 1] 1211 	or	a, (0x03, sp)
      009A80 C7 53 06         [ 1] 1212 	ld	0x5306, a
                           0003B0  1213 	C$stm8s_tim2.c$948$1_0$458 ==.
                                   1214 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 948: }
                           0003B0  1215 	C$stm8s_tim2.c$948$1_0$458 ==.
                           0003B0  1216 	XG$TIM2_SetIC2Prescaler$0$0 ==.
      009A83 81               [ 4] 1217 	ret
                           0003B1  1218 	G$TIM2_SetIC3Prescaler$0$0 ==.
                           0003B1  1219 	C$stm8s_tim2.c$960$1_0$460 ==.
                                   1220 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
                                   1221 ;	-----------------------------------------
                                   1222 ;	 function TIM2_SetIC3Prescaler
                                   1223 ;	-----------------------------------------
      009A84                       1224 _TIM2_SetIC3Prescaler:
                           0003B1  1225 	C$stm8s_tim2.c$966$1_0$460 ==.
                                   1226 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      009A84 C6 53 07         [ 1] 1227 	ld	a, 0x5307
      009A87 A4 F3            [ 1] 1228 	and	a, #0xf3
                           0003B6  1229 	C$stm8s_tim2.c$967$1_0$460 ==.
                                   1230 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
      009A89 1A 03            [ 1] 1231 	or	a, (0x03, sp)
      009A8B C7 53 07         [ 1] 1232 	ld	0x5307, a
                           0003BB  1233 	C$stm8s_tim2.c$968$1_0$460 ==.
                                   1234 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 968: }
                           0003BB  1235 	C$stm8s_tim2.c$968$1_0$460 ==.
                           0003BB  1236 	XG$TIM2_SetIC3Prescaler$0$0 ==.
      009A8E 81               [ 4] 1237 	ret
                           0003BC  1238 	G$TIM2_GetCapture1$0$0 ==.
                           0003BC  1239 	C$stm8s_tim2.c$975$1_0$462 ==.
                                   1240 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
                                   1241 ;	-----------------------------------------
                                   1242 ;	 function TIM2_GetCapture1
                                   1243 ;	-----------------------------------------
      009A8F                       1244 _TIM2_GetCapture1:
      009A8F 52 02            [ 2] 1245 	sub	sp, #2
                           0003BE  1246 	C$stm8s_tim2.c$981$1_0$462 ==.
                                   1247 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
      009A91 C6 53 0F         [ 1] 1248 	ld	a, 0x530f
      009A94 95               [ 1] 1249 	ld	xh, a
                           0003C2  1250 	C$stm8s_tim2.c$982$1_0$462 ==.
                                   1251 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
      009A95 C6 53 10         [ 1] 1252 	ld	a, 0x5310
                           0003C5  1253 	C$stm8s_tim2.c$984$1_0$462 ==.
                                   1254 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
      009A98 97               [ 1] 1255 	ld	xl, a
      009A99 4F               [ 1] 1256 	clr	a
                           0003C7  1257 	C$stm8s_tim2.c$985$1_0$462 ==.
                                   1258 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      009A9A 90 5F            [ 1] 1259 	clrw	y
      009A9C 0F 02            [ 1] 1260 	clr	(0x02, sp)
      009A9E 89               [ 2] 1261 	pushw	x
      009A9F 1A 01            [ 1] 1262 	or	a, (1, sp)
      009AA1 85               [ 2] 1263 	popw	x
      009AA2 01               [ 1] 1264 	rrwa	x
      009AA3 1A 02            [ 1] 1265 	or	a, (0x02, sp)
      009AA5 97               [ 1] 1266 	ld	xl, a
                           0003D3  1267 	C$stm8s_tim2.c$987$1_0$462 ==.
                                   1268 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
                           0003D3  1269 	C$stm8s_tim2.c$988$1_0$462 ==.
                                   1270 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 988: }
      009AA6 5B 02            [ 2] 1271 	addw	sp, #2
                           0003D5  1272 	C$stm8s_tim2.c$988$1_0$462 ==.
                           0003D5  1273 	XG$TIM2_GetCapture1$0$0 ==.
      009AA8 81               [ 4] 1274 	ret
                           0003D6  1275 	G$TIM2_GetCapture2$0$0 ==.
                           0003D6  1276 	C$stm8s_tim2.c$995$1_0$464 ==.
                                   1277 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
                                   1278 ;	-----------------------------------------
                                   1279 ;	 function TIM2_GetCapture2
                                   1280 ;	-----------------------------------------
      009AA9                       1281 _TIM2_GetCapture2:
      009AA9 52 02            [ 2] 1282 	sub	sp, #2
                           0003D8  1283 	C$stm8s_tim2.c$1001$1_0$464 ==.
                                   1284 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
      009AAB C6 53 11         [ 1] 1285 	ld	a, 0x5311
      009AAE 95               [ 1] 1286 	ld	xh, a
                           0003DC  1287 	C$stm8s_tim2.c$1002$1_0$464 ==.
                                   1288 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
      009AAF C6 53 12         [ 1] 1289 	ld	a, 0x5312
                           0003DF  1290 	C$stm8s_tim2.c$1004$1_0$464 ==.
                                   1291 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
      009AB2 97               [ 1] 1292 	ld	xl, a
      009AB3 4F               [ 1] 1293 	clr	a
                           0003E1  1294 	C$stm8s_tim2.c$1005$1_0$464 ==.
                                   1295 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      009AB4 90 5F            [ 1] 1296 	clrw	y
      009AB6 0F 02            [ 1] 1297 	clr	(0x02, sp)
      009AB8 89               [ 2] 1298 	pushw	x
      009AB9 1A 01            [ 1] 1299 	or	a, (1, sp)
      009ABB 85               [ 2] 1300 	popw	x
      009ABC 01               [ 1] 1301 	rrwa	x
      009ABD 1A 02            [ 1] 1302 	or	a, (0x02, sp)
      009ABF 97               [ 1] 1303 	ld	xl, a
                           0003ED  1304 	C$stm8s_tim2.c$1007$1_0$464 ==.
                                   1305 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
                           0003ED  1306 	C$stm8s_tim2.c$1008$1_0$464 ==.
                                   1307 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1008: }
      009AC0 5B 02            [ 2] 1308 	addw	sp, #2
                           0003EF  1309 	C$stm8s_tim2.c$1008$1_0$464 ==.
                           0003EF  1310 	XG$TIM2_GetCapture2$0$0 ==.
      009AC2 81               [ 4] 1311 	ret
                           0003F0  1312 	G$TIM2_GetCapture3$0$0 ==.
                           0003F0  1313 	C$stm8s_tim2.c$1015$1_0$466 ==.
                                   1314 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function TIM2_GetCapture3
                                   1317 ;	-----------------------------------------
      009AC3                       1318 _TIM2_GetCapture3:
      009AC3 52 02            [ 2] 1319 	sub	sp, #2
                           0003F2  1320 	C$stm8s_tim2.c$1021$1_0$466 ==.
                                   1321 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
      009AC5 C6 53 13         [ 1] 1322 	ld	a, 0x5313
      009AC8 95               [ 1] 1323 	ld	xh, a
                           0003F6  1324 	C$stm8s_tim2.c$1022$1_0$466 ==.
                                   1325 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
      009AC9 C6 53 14         [ 1] 1326 	ld	a, 0x5314
                           0003F9  1327 	C$stm8s_tim2.c$1024$1_0$466 ==.
                                   1328 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
      009ACC 97               [ 1] 1329 	ld	xl, a
      009ACD 4F               [ 1] 1330 	clr	a
                           0003FB  1331 	C$stm8s_tim2.c$1025$1_0$466 ==.
                                   1332 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      009ACE 90 5F            [ 1] 1333 	clrw	y
      009AD0 0F 02            [ 1] 1334 	clr	(0x02, sp)
      009AD2 89               [ 2] 1335 	pushw	x
      009AD3 1A 01            [ 1] 1336 	or	a, (1, sp)
      009AD5 85               [ 2] 1337 	popw	x
      009AD6 01               [ 1] 1338 	rrwa	x
      009AD7 1A 02            [ 1] 1339 	or	a, (0x02, sp)
      009AD9 97               [ 1] 1340 	ld	xl, a
                           000407  1341 	C$stm8s_tim2.c$1027$1_0$466 ==.
                                   1342 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
                           000407  1343 	C$stm8s_tim2.c$1028$1_0$466 ==.
                                   1344 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1028: }
      009ADA 5B 02            [ 2] 1345 	addw	sp, #2
                           000409  1346 	C$stm8s_tim2.c$1028$1_0$466 ==.
                           000409  1347 	XG$TIM2_GetCapture3$0$0 ==.
      009ADC 81               [ 4] 1348 	ret
                           00040A  1349 	G$TIM2_GetCounter$0$0 ==.
                           00040A  1350 	C$stm8s_tim2.c$1035$1_0$468 ==.
                                   1351 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
                                   1352 ;	-----------------------------------------
                                   1353 ;	 function TIM2_GetCounter
                                   1354 ;	-----------------------------------------
      009ADD                       1355 _TIM2_GetCounter:
      009ADD 52 04            [ 2] 1356 	sub	sp, #4
                           00040C  1357 	C$stm8s_tim2.c$1039$1_0$468 ==.
                                   1358 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
      009ADF C6 53 0A         [ 1] 1359 	ld	a, 0x530a
      009AE2 95               [ 1] 1360 	ld	xh, a
      009AE3 4F               [ 1] 1361 	clr	a
      009AE4 6B 04            [ 1] 1362 	ld	(0x04, sp), a
                           000413  1363 	C$stm8s_tim2.c$1041$1_0$468 ==.
                                   1364 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
      009AE6 C6 53 0B         [ 1] 1365 	ld	a, 0x530b
      009AE9 0F 01            [ 1] 1366 	clr	(0x01, sp)
      009AEB 1A 04            [ 1] 1367 	or	a, (0x04, sp)
      009AED 02               [ 1] 1368 	rlwa	x
      009AEE 1A 01            [ 1] 1369 	or	a, (0x01, sp)
      009AF0 95               [ 1] 1370 	ld	xh, a
                           00041E  1371 	C$stm8s_tim2.c$1042$1_0$468 ==.
                                   1372 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1042: }
      009AF1 5B 04            [ 2] 1373 	addw	sp, #4
                           000420  1374 	C$stm8s_tim2.c$1042$1_0$468 ==.
                           000420  1375 	XG$TIM2_GetCounter$0$0 ==.
      009AF3 81               [ 4] 1376 	ret
                           000421  1377 	G$TIM2_GetPrescaler$0$0 ==.
                           000421  1378 	C$stm8s_tim2.c$1049$1_0$470 ==.
                                   1379 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
                                   1380 ;	-----------------------------------------
                                   1381 ;	 function TIM2_GetPrescaler
                                   1382 ;	-----------------------------------------
      009AF4                       1383 _TIM2_GetPrescaler:
                           000421  1384 	C$stm8s_tim2.c$1052$1_0$470 ==.
                                   1385 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
      009AF4 C6 53 0C         [ 1] 1386 	ld	a, 0x530c
                           000424  1387 	C$stm8s_tim2.c$1053$1_0$470 ==.
                                   1388 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1053: }
                           000424  1389 	C$stm8s_tim2.c$1053$1_0$470 ==.
                           000424  1390 	XG$TIM2_GetPrescaler$0$0 ==.
      009AF7 81               [ 4] 1391 	ret
                           000425  1392 	G$TIM2_GetFlagStatus$0$0 ==.
                           000425  1393 	C$stm8s_tim2.c$1068$1_0$472 ==.
                                   1394 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1395 ;	-----------------------------------------
                                   1396 ;	 function TIM2_GetFlagStatus
                                   1397 ;	-----------------------------------------
      009AF8                       1398 _TIM2_GetFlagStatus:
      009AF8 52 05            [ 2] 1399 	sub	sp, #5
                           000427  1400 	C$stm8s_tim2.c$1076$1_0$472 ==.
                                   1401 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
      009AFA C6 53 02         [ 1] 1402 	ld	a, 0x5302
      009AFD 6B 01            [ 1] 1403 	ld	(0x01, sp), a
      009AFF 7B 09            [ 1] 1404 	ld	a, (0x09, sp)
      009B01 14 01            [ 1] 1405 	and	a, (0x01, sp)
      009B03 6B 05            [ 1] 1406 	ld	(0x05, sp), a
                           000432  1407 	C$stm8s_tim2.c$1077$1_0$472 ==.
                                   1408 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
      009B05 7B 08            [ 1] 1409 	ld	a, (0x08, sp)
      009B07 0F 02            [ 1] 1410 	clr	(0x02, sp)
      009B09 6B 04            [ 1] 1411 	ld	(0x04, sp), a
                           000438  1412 	C$stm8s_tim2.c$1079$1_0$472 ==.
                                   1413 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
      009B0B C6 53 03         [ 1] 1414 	ld	a, 0x5303
      009B0E 14 04            [ 1] 1415 	and	a, (0x04, sp)
      009B10 1A 05            [ 1] 1416 	or	a, (0x05, sp)
      009B12 27 04            [ 1] 1417 	jreq	00102$
                           000441  1418 	C$stm8s_tim2.c$1081$2_0$473 ==.
                                   1419 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1081: bitstatus = SET;
      009B14 A6 01            [ 1] 1420 	ld	a, #0x01
      009B16 20 01            [ 2] 1421 	jra	00103$
      009B18                       1422 00102$:
                           000445  1423 	C$stm8s_tim2.c$1085$2_0$474 ==.
                                   1424 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1085: bitstatus = RESET;
      009B18 4F               [ 1] 1425 	clr	a
      009B19                       1426 00103$:
                           000446  1427 	C$stm8s_tim2.c$1087$1_0$472 ==.
                                   1428 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
                           000446  1429 	C$stm8s_tim2.c$1088$1_0$472 ==.
                                   1430 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1088: }
      009B19 5B 05            [ 2] 1431 	addw	sp, #5
                           000448  1432 	C$stm8s_tim2.c$1088$1_0$472 ==.
                           000448  1433 	XG$TIM2_GetFlagStatus$0$0 ==.
      009B1B 81               [ 4] 1434 	ret
                           000449  1435 	G$TIM2_ClearFlag$0$0 ==.
                           000449  1436 	C$stm8s_tim2.c$1103$1_0$476 ==.
                                   1437 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1438 ;	-----------------------------------------
                                   1439 ;	 function TIM2_ClearFlag
                                   1440 ;	-----------------------------------------
      009B1C                       1441 _TIM2_ClearFlag:
                           000449  1442 	C$stm8s_tim2.c$1109$1_0$476 ==.
                                   1443 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
      009B1C 7B 04            [ 1] 1444 	ld	a, (0x04, sp)
      009B1E 43               [ 1] 1445 	cpl	a
      009B1F C7 53 02         [ 1] 1446 	ld	0x5302, a
                           00044F  1447 	C$stm8s_tim2.c$1111$1_0$476 ==.
                                   1448 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1111: TIM2->SR2 = (uint8_t)(~((uint8_t)(TIM2_FLAG >> 8))); // [Roshan, 2015-Nov-09]
      009B22 7B 03            [ 1] 1449 	ld	a, (0x03, sp)
      009B24 43               [ 1] 1450 	cpl	a
      009B25 C7 53 03         [ 1] 1451 	ld	0x5303, a
                           000455  1452 	C$stm8s_tim2.c$1112$1_0$476 ==.
                                   1453 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1112: }
                           000455  1454 	C$stm8s_tim2.c$1112$1_0$476 ==.
                           000455  1455 	XG$TIM2_ClearFlag$0$0 ==.
      009B28 81               [ 4] 1456 	ret
                           000456  1457 	G$TIM2_GetITStatus$0$0 ==.
                           000456  1458 	C$stm8s_tim2.c$1124$1_0$478 ==.
                                   1459 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1124: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
                                   1460 ;	-----------------------------------------
                                   1461 ;	 function TIM2_GetITStatus
                                   1462 ;	-----------------------------------------
      009B29                       1463 _TIM2_GetITStatus:
      009B29 88               [ 1] 1464 	push	a
                           000457  1465 	C$stm8s_tim2.c$1132$1_0$478 ==.
                                   1466 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1132: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
      009B2A C6 53 02         [ 1] 1467 	ld	a, 0x5302
      009B2D 14 04            [ 1] 1468 	and	a, (0x04, sp)
      009B2F 6B 01            [ 1] 1469 	ld	(0x01, sp), a
                           00045E  1470 	C$stm8s_tim2.c$1134$1_0$478 ==.
                                   1471 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1134: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
      009B31 C6 53 01         [ 1] 1472 	ld	a, 0x5301
      009B34 14 04            [ 1] 1473 	and	a, (0x04, sp)
                           000463  1474 	C$stm8s_tim2.c$1136$1_0$478 ==.
                                   1475 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1136: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
      009B36 0D 01            [ 1] 1476 	tnz	(0x01, sp)
      009B38 27 07            [ 1] 1477 	jreq	00102$
      009B3A 4D               [ 1] 1478 	tnz	a
      009B3B 27 04            [ 1] 1479 	jreq	00102$
                           00046A  1480 	C$stm8s_tim2.c$1138$2_0$479 ==.
                                   1481 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1138: bitstatus = SET;
      009B3D A6 01            [ 1] 1482 	ld	a, #0x01
      009B3F 20 01            [ 2] 1483 	jra	00103$
      009B41                       1484 00102$:
                           00046E  1485 	C$stm8s_tim2.c$1142$2_0$480 ==.
                                   1486 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1142: bitstatus = RESET;
      009B41 4F               [ 1] 1487 	clr	a
      009B42                       1488 00103$:
                           00046F  1489 	C$stm8s_tim2.c$1144$1_0$478 ==.
                                   1490 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1144: return (ITStatus)(bitstatus);
                           00046F  1491 	C$stm8s_tim2.c$1145$1_0$478 ==.
                                   1492 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1145: }
      009B42 5B 01            [ 2] 1493 	addw	sp, #1
                           000471  1494 	C$stm8s_tim2.c$1145$1_0$478 ==.
                           000471  1495 	XG$TIM2_GetITStatus$0$0 ==.
      009B44 81               [ 4] 1496 	ret
                           000472  1497 	G$TIM2_ClearITPendingBit$0$0 ==.
                           000472  1498 	C$stm8s_tim2.c$1157$1_0$482 ==.
                                   1499 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1157: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
                                   1500 ;	-----------------------------------------
                                   1501 ;	 function TIM2_ClearITPendingBit
                                   1502 ;	-----------------------------------------
      009B45                       1503 _TIM2_ClearITPendingBit:
                           000472  1504 	C$stm8s_tim2.c$1163$1_0$482 ==.
                                   1505 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1163: TIM2->SR1 = (uint8_t)(~TIM2_IT);
      009B45 7B 03            [ 1] 1506 	ld	a, (0x03, sp)
      009B47 43               [ 1] 1507 	cpl	a
      009B48 C7 53 02         [ 1] 1508 	ld	0x5302, a
                           000478  1509 	C$stm8s_tim2.c$1164$1_0$482 ==.
                                   1510 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1164: }
                           000478  1511 	C$stm8s_tim2.c$1164$1_0$482 ==.
                           000478  1512 	XG$TIM2_ClearITPendingBit$0$0 ==.
      009B4B 81               [ 4] 1513 	ret
                           000479  1514 	Fstm8s_tim2$TI1_Config$0$0 ==.
                           000479  1515 	C$stm8s_tim2.c$1182$1_0$484 ==.
                                   1516 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1182: static void TI1_Config(uint8_t TIM2_ICPolarity,
                                   1517 ;	-----------------------------------------
                                   1518 ;	 function TI1_Config
                                   1519 ;	-----------------------------------------
      009B4C                       1520 _TI1_Config:
      009B4C 88               [ 1] 1521 	push	a
                           00047A  1522 	C$stm8s_tim2.c$1187$1_0$484 ==.
                                   1523 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1187: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      009B4D 72 11 53 08      [ 1] 1524 	bres	21256, #0
                           00047E  1525 	C$stm8s_tim2.c$1190$1_0$484 ==.
                                   1526 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1190: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
      009B51 C6 53 05         [ 1] 1527 	ld	a, 0x5305
      009B54 A4 0C            [ 1] 1528 	and	a, #0x0c
      009B56 6B 01            [ 1] 1529 	ld	(0x01, sp), a
                           000485  1530 	C$stm8s_tim2.c$1191$1_0$484 ==.
                                   1531 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1191: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      009B58 7B 06            [ 1] 1532 	ld	a, (0x06, sp)
      009B5A 4E               [ 1] 1533 	swap	a
      009B5B A4 F0            [ 1] 1534 	and	a, #0xf0
      009B5D 1A 05            [ 1] 1535 	or	a, (0x05, sp)
      009B5F 1A 01            [ 1] 1536 	or	a, (0x01, sp)
      009B61 C7 53 05         [ 1] 1537 	ld	0x5305, a
                           000491  1538 	C$stm8s_tim2.c$1194$1_0$484 ==.
                                   1539 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1194: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      009B64 0D 04            [ 1] 1540 	tnz	(0x04, sp)
      009B66 27 06            [ 1] 1541 	jreq	00102$
                           000495  1542 	C$stm8s_tim2.c$1196$2_0$485 ==.
                                   1543 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1196: TIM2->CCER1 |= TIM2_CCER1_CC1P;
      009B68 72 12 53 08      [ 1] 1544 	bset	21256, #1
      009B6C 20 04            [ 2] 1545 	jra	00103$
      009B6E                       1546 00102$:
                           00049B  1547 	C$stm8s_tim2.c$1200$2_0$486 ==.
                                   1548 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1200: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      009B6E 72 13 53 08      [ 1] 1549 	bres	21256, #1
      009B72                       1550 00103$:
                           00049F  1551 	C$stm8s_tim2.c$1203$1_0$484 ==.
                                   1552 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1203: TIM2->CCER1 |= TIM2_CCER1_CC1E;
      009B72 72 10 53 08      [ 1] 1553 	bset	21256, #0
                           0004A3  1554 	C$stm8s_tim2.c$1204$1_0$484 ==.
                                   1555 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1204: }
      009B76 84               [ 1] 1556 	pop	a
                           0004A4  1557 	C$stm8s_tim2.c$1204$1_0$484 ==.
                           0004A4  1558 	XFstm8s_tim2$TI1_Config$0$0 ==.
      009B77 81               [ 4] 1559 	ret
                           0004A5  1560 	Fstm8s_tim2$TI2_Config$0$0 ==.
                           0004A5  1561 	C$stm8s_tim2.c$1222$1_0$488 ==.
                                   1562 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1222: static void TI2_Config(uint8_t TIM2_ICPolarity,
                                   1563 ;	-----------------------------------------
                                   1564 ;	 function TI2_Config
                                   1565 ;	-----------------------------------------
      009B78                       1566 _TI2_Config:
      009B78 88               [ 1] 1567 	push	a
                           0004A6  1568 	C$stm8s_tim2.c$1227$1_0$488 ==.
                                   1569 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1227: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      009B79 72 19 53 08      [ 1] 1570 	bres	21256, #4
                           0004AA  1571 	C$stm8s_tim2.c$1230$1_0$488 ==.
                                   1572 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1230: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
      009B7D C6 53 06         [ 1] 1573 	ld	a, 0x5306
      009B80 A4 0C            [ 1] 1574 	and	a, #0x0c
      009B82 6B 01            [ 1] 1575 	ld	(0x01, sp), a
                           0004B1  1576 	C$stm8s_tim2.c$1231$1_0$488 ==.
                                   1577 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1231: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      009B84 7B 06            [ 1] 1578 	ld	a, (0x06, sp)
      009B86 4E               [ 1] 1579 	swap	a
      009B87 A4 F0            [ 1] 1580 	and	a, #0xf0
      009B89 1A 05            [ 1] 1581 	or	a, (0x05, sp)
      009B8B 1A 01            [ 1] 1582 	or	a, (0x01, sp)
      009B8D C7 53 06         [ 1] 1583 	ld	0x5306, a
                           0004BD  1584 	C$stm8s_tim2.c$1235$1_0$488 ==.
                                   1585 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1235: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      009B90 0D 04            [ 1] 1586 	tnz	(0x04, sp)
      009B92 27 06            [ 1] 1587 	jreq	00102$
                           0004C1  1588 	C$stm8s_tim2.c$1237$2_0$489 ==.
                                   1589 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1237: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      009B94 72 1A 53 08      [ 1] 1590 	bset	21256, #5
      009B98 20 04            [ 2] 1591 	jra	00103$
      009B9A                       1592 00102$:
                           0004C7  1593 	C$stm8s_tim2.c$1241$2_0$490 ==.
                                   1594 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1241: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      009B9A 72 1B 53 08      [ 1] 1595 	bres	21256, #5
      009B9E                       1596 00103$:
                           0004CB  1597 	C$stm8s_tim2.c$1245$1_0$488 ==.
                                   1598 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1245: TIM2->CCER1 |= TIM2_CCER1_CC2E;
      009B9E 72 18 53 08      [ 1] 1599 	bset	21256, #4
                           0004CF  1600 	C$stm8s_tim2.c$1246$1_0$488 ==.
                                   1601 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1246: }
      009BA2 84               [ 1] 1602 	pop	a
                           0004D0  1603 	C$stm8s_tim2.c$1246$1_0$488 ==.
                           0004D0  1604 	XFstm8s_tim2$TI2_Config$0$0 ==.
      009BA3 81               [ 4] 1605 	ret
                           0004D1  1606 	Fstm8s_tim2$TI3_Config$0$0 ==.
                           0004D1  1607 	C$stm8s_tim2.c$1262$1_0$492 ==.
                                   1608 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1262: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
                                   1609 ;	-----------------------------------------
                                   1610 ;	 function TI3_Config
                                   1611 ;	-----------------------------------------
      009BA4                       1612 _TI3_Config:
      009BA4 88               [ 1] 1613 	push	a
                           0004D2  1614 	C$stm8s_tim2.c$1266$1_0$492 ==.
                                   1615 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1266: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
      009BA5 72 11 53 09      [ 1] 1616 	bres	21257, #0
                           0004D6  1617 	C$stm8s_tim2.c$1269$1_0$492 ==.
                                   1618 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1269: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF)))
      009BA9 C6 53 07         [ 1] 1619 	ld	a, 0x5307
      009BAC A4 0C            [ 1] 1620 	and	a, #0x0c
      009BAE 6B 01            [ 1] 1621 	ld	(0x01, sp), a
                           0004DD  1622 	C$stm8s_tim2.c$1270$1_0$492 ==.
                                   1623 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1270: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      009BB0 7B 06            [ 1] 1624 	ld	a, (0x06, sp)
      009BB2 4E               [ 1] 1625 	swap	a
      009BB3 A4 F0            [ 1] 1626 	and	a, #0xf0
      009BB5 1A 05            [ 1] 1627 	or	a, (0x05, sp)
      009BB7 1A 01            [ 1] 1628 	or	a, (0x01, sp)
      009BB9 C7 53 07         [ 1] 1629 	ld	0x5307, a
                           0004E9  1630 	C$stm8s_tim2.c$1274$1_0$492 ==.
                                   1631 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1274: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      009BBC 0D 04            [ 1] 1632 	tnz	(0x04, sp)
      009BBE 27 06            [ 1] 1633 	jreq	00102$
                           0004ED  1634 	C$stm8s_tim2.c$1276$2_0$493 ==.
                                   1635 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1276: TIM2->CCER2 |= TIM2_CCER2_CC3P;
      009BC0 72 12 53 09      [ 1] 1636 	bset	21257, #1
      009BC4 20 04            [ 2] 1637 	jra	00103$
      009BC6                       1638 00102$:
                           0004F3  1639 	C$stm8s_tim2.c$1280$2_0$494 ==.
                                   1640 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1280: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      009BC6 72 13 53 09      [ 1] 1641 	bres	21257, #1
      009BCA                       1642 00103$:
                           0004F7  1643 	C$stm8s_tim2.c$1283$1_0$492 ==.
                                   1644 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1283: TIM2->CCER2 |= TIM2_CCER2_CC3E;
      009BCA 72 10 53 09      [ 1] 1645 	bset	21257, #0
                           0004FB  1646 	C$stm8s_tim2.c$1284$1_0$492 ==.
                                   1647 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1284: }
      009BCE 84               [ 1] 1648 	pop	a
                           0004FC  1649 	C$stm8s_tim2.c$1284$1_0$492 ==.
                           0004FC  1650 	XFstm8s_tim2$TI3_Config$0$0 ==.
      009BCF 81               [ 4] 1651 	ret
                                   1652 	.area CODE
                                   1653 	.area CONST
                                   1654 	.area INITIALIZER
                                   1655 	.area CABS (ABS)
