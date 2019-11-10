                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
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
      009705                         97 _TIM2_DeInit:
                           000000    98 	C$stm8s_tim2.c$54$1_0$349 ==.
                                     99 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
      009705 35 00 53 00      [ 1]  100 	mov	0x5300+0, #0x00
                           000004   101 	C$stm8s_tim2.c$55$1_0$349 ==.
                                    102 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
      009709 35 00 53 01      [ 1]  103 	mov	0x5301+0, #0x00
                           000008   104 	C$stm8s_tim2.c$56$1_0$349 ==.
                                    105 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
      00970D 35 00 53 03      [ 1]  106 	mov	0x5303+0, #0x00
                           00000C   107 	C$stm8s_tim2.c$59$1_0$349 ==.
                                    108 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      009711 35 00 53 08      [ 1]  109 	mov	0x5308+0, #0x00
                           000010   110 	C$stm8s_tim2.c$60$1_0$349 ==.
                                    111 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      009715 35 00 53 09      [ 1]  112 	mov	0x5309+0, #0x00
                           000014   113 	C$stm8s_tim2.c$64$1_0$349 ==.
                                    114 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      009719 35 00 53 08      [ 1]  115 	mov	0x5308+0, #0x00
                           000018   116 	C$stm8s_tim2.c$65$1_0$349 ==.
                                    117 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      00971D 35 00 53 09      [ 1]  118 	mov	0x5309+0, #0x00
                           00001C   119 	C$stm8s_tim2.c$66$1_0$349 ==.
                                    120 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
      009721 35 00 53 05      [ 1]  121 	mov	0x5305+0, #0x00
                           000020   122 	C$stm8s_tim2.c$67$1_0$349 ==.
                                    123 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
      009725 35 00 53 06      [ 1]  124 	mov	0x5306+0, #0x00
                           000024   125 	C$stm8s_tim2.c$68$1_0$349 ==.
                                    126 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
      009729 35 00 53 07      [ 1]  127 	mov	0x5307+0, #0x00
                           000028   128 	C$stm8s_tim2.c$69$1_0$349 ==.
                                    129 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
      00972D 35 00 53 0A      [ 1]  130 	mov	0x530a+0, #0x00
                           00002C   131 	C$stm8s_tim2.c$70$1_0$349 ==.
                                    132 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
      009731 35 00 53 0B      [ 1]  133 	mov	0x530b+0, #0x00
                           000030   134 	C$stm8s_tim2.c$71$1_0$349 ==.
                                    135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
      009735 35 00 53 0C      [ 1]  136 	mov	0x530c+0, #0x00
                           000034   137 	C$stm8s_tim2.c$72$1_0$349 ==.
                                    138 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
      009739 35 FF 53 0D      [ 1]  139 	mov	0x530d+0, #0xff
                           000038   140 	C$stm8s_tim2.c$73$1_0$349 ==.
                                    141 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
      00973D 35 FF 53 0E      [ 1]  142 	mov	0x530e+0, #0xff
                           00003C   143 	C$stm8s_tim2.c$74$1_0$349 ==.
                                    144 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
      009741 35 00 53 0F      [ 1]  145 	mov	0x530f+0, #0x00
                           000040   146 	C$stm8s_tim2.c$75$1_0$349 ==.
                                    147 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
      009745 35 00 53 10      [ 1]  148 	mov	0x5310+0, #0x00
                           000044   149 	C$stm8s_tim2.c$76$1_0$349 ==.
                                    150 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
      009749 35 00 53 11      [ 1]  151 	mov	0x5311+0, #0x00
                           000048   152 	C$stm8s_tim2.c$77$1_0$349 ==.
                                    153 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
      00974D 35 00 53 12      [ 1]  154 	mov	0x5312+0, #0x00
                           00004C   155 	C$stm8s_tim2.c$78$1_0$349 ==.
                                    156 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
      009751 35 00 53 13      [ 1]  157 	mov	0x5313+0, #0x00
                           000050   158 	C$stm8s_tim2.c$79$1_0$349 ==.
                                    159 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
      009755 35 00 53 14      [ 1]  160 	mov	0x5314+0, #0x00
                           000054   161 	C$stm8s_tim2.c$80$1_0$349 ==.
                                    162 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
      009759 35 00 53 02      [ 1]  163 	mov	0x5302+0, #0x00
                           000058   164 	C$stm8s_tim2.c$81$1_0$349 ==.
                                    165 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 81: }
                           000058   166 	C$stm8s_tim2.c$81$1_0$349 ==.
                           000058   167 	XG$TIM2_DeInit$0$0 ==.
      00975D 81               [ 4]  168 	ret
                           000059   169 	G$TIM2_TimeBaseInit$0$0 ==.
                           000059   170 	C$stm8s_tim2.c$89$1_0$351 ==.
                                    171 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
                                    172 ;	-----------------------------------------
                                    173 ;	 function TIM2_TimeBaseInit
                                    174 ;	-----------------------------------------
      00975E                        175 _TIM2_TimeBaseInit:
      00975E 52 02            [ 2]  176 	sub	sp, #2
                           00005B   177 	C$stm8s_tim2.c$93$1_0$351 ==.
                                    178 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
      009760 AE 53 0C         [ 2]  179 	ldw	x, #0x530c
      009763 7B 05            [ 1]  180 	ld	a, (0x05, sp)
      009765 F7               [ 1]  181 	ld	(x), a
                           000061   182 	C$stm8s_tim2.c$95$1_0$351 ==.
                                    183 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
      009766 7B 06            [ 1]  184 	ld	a, (0x06, sp)
      009768 6B 02            [ 1]  185 	ld	(0x02, sp), a
      00976A 0F 01            [ 1]  186 	clr	(0x01, sp)
      00976C 7B 02            [ 1]  187 	ld	a, (0x02, sp)
      00976E C7 53 0D         [ 1]  188 	ld	0x530d, a
                           00006C   189 	C$stm8s_tim2.c$96$1_0$351 ==.
                                    190 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
      009771 7B 07            [ 1]  191 	ld	a, (0x07, sp)
      009773 C7 53 0E         [ 1]  192 	ld	0x530e, a
                           000071   193 	C$stm8s_tim2.c$97$1_0$351 ==.
                                    194 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 97: }
      009776 5B 02            [ 2]  195 	addw	sp, #2
                           000073   196 	C$stm8s_tim2.c$97$1_0$351 ==.
                           000073   197 	XG$TIM2_TimeBaseInit$0$0 ==.
      009778 81               [ 4]  198 	ret
                           000074   199 	G$TIM2_OC1Init$0$0 ==.
                           000074   200 	C$stm8s_tim2.c$108$1_0$353 ==.
                                    201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    202 ;	-----------------------------------------
                                    203 ;	 function TIM2_OC1Init
                                    204 ;	-----------------------------------------
      009779                        205 _TIM2_OC1Init:
      009779 52 02            [ 2]  206 	sub	sp, #2
                           000076   207 	C$stm8s_tim2.c$119$1_0$353 ==.
                                    208 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
      00977B C6 53 08         [ 1]  209 	ld	a, 0x5308
      00977E A4 FC            [ 1]  210 	and	a, #0xfc
      009780 C7 53 08         [ 1]  211 	ld	0x5308, a
                           00007E   212 	C$stm8s_tim2.c$121$1_0$353 ==.
                                    213 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) |
      009783 C6 53 08         [ 1]  214 	ld	a, 0x5308
      009786 6B 01            [ 1]  215 	ld	(0x01, sp), a
      009788 7B 06            [ 1]  216 	ld	a, (0x06, sp)
      00978A A4 01            [ 1]  217 	and	a, #0x01
      00978C 6B 02            [ 1]  218 	ld	(0x02, sp), a
                           000089   219 	C$stm8s_tim2.c$122$1_0$353 ==.
                                    220 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
      00978E 7B 09            [ 1]  221 	ld	a, (0x09, sp)
      009790 A4 02            [ 1]  222 	and	a, #0x02
      009792 1A 02            [ 1]  223 	or	a, (0x02, sp)
      009794 1A 01            [ 1]  224 	or	a, (0x01, sp)
      009796 C7 53 08         [ 1]  225 	ld	0x5308, a
                           000094   226 	C$stm8s_tim2.c$125$1_0$353 ==.
                                    227 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
      009799 C6 53 05         [ 1]  228 	ld	a, 0x5305
      00979C A4 8F            [ 1]  229 	and	a, #0x8f
                           000099   230 	C$stm8s_tim2.c$126$1_0$353 ==.
                                    231 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
      00979E 1A 05            [ 1]  232 	or	a, (0x05, sp)
      0097A0 C7 53 05         [ 1]  233 	ld	0x5305, a
                           00009E   234 	C$stm8s_tim2.c$129$1_0$353 ==.
                                    235 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
      0097A3 7B 07            [ 1]  236 	ld	a, (0x07, sp)
      0097A5 C7 53 0F         [ 1]  237 	ld	0x530f, a
                           0000A3   238 	C$stm8s_tim2.c$130$1_0$353 ==.
                                    239 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
      0097A8 7B 08            [ 1]  240 	ld	a, (0x08, sp)
      0097AA C7 53 10         [ 1]  241 	ld	0x5310, a
                           0000A8   242 	C$stm8s_tim2.c$131$1_0$353 ==.
                                    243 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 131: }
      0097AD 5B 02            [ 2]  244 	addw	sp, #2
                           0000AA   245 	C$stm8s_tim2.c$131$1_0$353 ==.
                           0000AA   246 	XG$TIM2_OC1Init$0$0 ==.
      0097AF 81               [ 4]  247 	ret
                           0000AB   248 	G$TIM2_OC2Init$0$0 ==.
                           0000AB   249 	C$stm8s_tim2.c$142$1_0$355 ==.
                                    250 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    251 ;	-----------------------------------------
                                    252 ;	 function TIM2_OC2Init
                                    253 ;	-----------------------------------------
      0097B0                        254 _TIM2_OC2Init:
      0097B0 52 02            [ 2]  255 	sub	sp, #2
                           0000AD   256 	C$stm8s_tim2.c$154$1_0$355 ==.
                                    257 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
      0097B2 C6 53 08         [ 1]  258 	ld	a, 0x5308
      0097B5 A4 CF            [ 1]  259 	and	a, #0xcf
      0097B7 C7 53 08         [ 1]  260 	ld	0x5308, a
                           0000B5   261 	C$stm8s_tim2.c$156$1_0$355 ==.
                                    262 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
      0097BA C6 53 08         [ 1]  263 	ld	a, 0x5308
      0097BD 6B 01            [ 1]  264 	ld	(0x01, sp), a
      0097BF 7B 06            [ 1]  265 	ld	a, (0x06, sp)
      0097C1 A4 10            [ 1]  266 	and	a, #0x10
      0097C3 6B 02            [ 1]  267 	ld	(0x02, sp), a
                           0000C0   268 	C$stm8s_tim2.c$157$1_0$355 ==.
                                    269 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
      0097C5 7B 09            [ 1]  270 	ld	a, (0x09, sp)
      0097C7 A4 20            [ 1]  271 	and	a, #0x20
      0097C9 1A 02            [ 1]  272 	or	a, (0x02, sp)
      0097CB 1A 01            [ 1]  273 	or	a, (0x01, sp)
      0097CD C7 53 08         [ 1]  274 	ld	0x5308, a
                           0000CB   275 	C$stm8s_tim2.c$161$1_0$355 ==.
                                    276 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) |
      0097D0 C6 53 06         [ 1]  277 	ld	a, 0x5306
      0097D3 A4 8F            [ 1]  278 	and	a, #0x8f
                           0000D0   279 	C$stm8s_tim2.c$162$1_0$355 ==.
                                    280 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
      0097D5 1A 05            [ 1]  281 	or	a, (0x05, sp)
      0097D7 C7 53 06         [ 1]  282 	ld	0x5306, a
                           0000D5   283 	C$stm8s_tim2.c$166$1_0$355 ==.
                                    284 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
      0097DA 7B 07            [ 1]  285 	ld	a, (0x07, sp)
      0097DC C7 53 11         [ 1]  286 	ld	0x5311, a
                           0000DA   287 	C$stm8s_tim2.c$167$1_0$355 ==.
                                    288 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
      0097DF 7B 08            [ 1]  289 	ld	a, (0x08, sp)
      0097E1 C7 53 12         [ 1]  290 	ld	0x5312, a
                           0000DF   291 	C$stm8s_tim2.c$168$1_0$355 ==.
                                    292 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 168: }
      0097E4 5B 02            [ 2]  293 	addw	sp, #2
                           0000E1   294 	C$stm8s_tim2.c$168$1_0$355 ==.
                           0000E1   295 	XG$TIM2_OC2Init$0$0 ==.
      0097E6 81               [ 4]  296 	ret
                           0000E2   297 	G$TIM2_OC3Init$0$0 ==.
                           0000E2   298 	C$stm8s_tim2.c$179$1_0$357 ==.
                                    299 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    300 ;	-----------------------------------------
                                    301 ;	 function TIM2_OC3Init
                                    302 ;	-----------------------------------------
      0097E7                        303 _TIM2_OC3Init:
      0097E7 52 02            [ 2]  304 	sub	sp, #2
                           0000E4   305 	C$stm8s_tim2.c$189$1_0$357 ==.
                                    306 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
      0097E9 C6 53 09         [ 1]  307 	ld	a, 0x5309
      0097EC A4 FC            [ 1]  308 	and	a, #0xfc
      0097EE C7 53 09         [ 1]  309 	ld	0x5309, a
                           0000EC   310 	C$stm8s_tim2.c$191$1_0$357 ==.
                                    311 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |
      0097F1 C6 53 09         [ 1]  312 	ld	a, 0x5309
      0097F4 6B 01            [ 1]  313 	ld	(0x01, sp), a
      0097F6 7B 06            [ 1]  314 	ld	a, (0x06, sp)
      0097F8 A4 01            [ 1]  315 	and	a, #0x01
      0097FA 6B 02            [ 1]  316 	ld	(0x02, sp), a
                           0000F7   317 	C$stm8s_tim2.c$192$1_0$357 ==.
                                    318 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
      0097FC 7B 09            [ 1]  319 	ld	a, (0x09, sp)
      0097FE A4 02            [ 1]  320 	and	a, #0x02
      009800 1A 02            [ 1]  321 	or	a, (0x02, sp)
      009802 1A 01            [ 1]  322 	or	a, (0x01, sp)
      009804 C7 53 09         [ 1]  323 	ld	0x5309, a
                           000102   324 	C$stm8s_tim2.c$195$1_0$357 ==.
                                    325 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
      009807 C6 53 07         [ 1]  326 	ld	a, 0x5307
      00980A A4 8F            [ 1]  327 	and	a, #0x8f
                           000107   328 	C$stm8s_tim2.c$196$1_0$357 ==.
                                    329 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
      00980C 1A 05            [ 1]  330 	or	a, (0x05, sp)
      00980E C7 53 07         [ 1]  331 	ld	0x5307, a
                           00010C   332 	C$stm8s_tim2.c$199$1_0$357 ==.
                                    333 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
      009811 7B 07            [ 1]  334 	ld	a, (0x07, sp)
      009813 C7 53 13         [ 1]  335 	ld	0x5313, a
                           000111   336 	C$stm8s_tim2.c$200$1_0$357 ==.
                                    337 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
      009816 7B 08            [ 1]  338 	ld	a, (0x08, sp)
      009818 C7 53 14         [ 1]  339 	ld	0x5314, a
                           000116   340 	C$stm8s_tim2.c$201$1_0$357 ==.
                                    341 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 201: }
      00981B 5B 02            [ 2]  342 	addw	sp, #2
                           000118   343 	C$stm8s_tim2.c$201$1_0$357 ==.
                           000118   344 	XG$TIM2_OC3Init$0$0 ==.
      00981D 81               [ 4]  345 	ret
                           000119   346 	G$TIM2_ICInit$0$0 ==.
                           000119   347 	C$stm8s_tim2.c$212$1_0$359 ==.
                                    348 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
                                    349 ;	-----------------------------------------
                                    350 ;	 function TIM2_ICInit
                                    351 ;	-----------------------------------------
      00981E                        352 _TIM2_ICInit:
                           000119   353 	C$stm8s_tim2.c$225$1_0$359 ==.
                                    354 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
      00981E 0D 03            [ 1]  355 	tnz	(0x03, sp)
      009820 26 17            [ 1]  356 	jrne	00105$
                           00011D   357 	C$stm8s_tim2.c$228$2_0$360 ==.
                                    358 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
      009822 7B 07            [ 1]  359 	ld	a, (0x07, sp)
      009824 88               [ 1]  360 	push	a
      009825 7B 06            [ 1]  361 	ld	a, (0x06, sp)
      009827 88               [ 1]  362 	push	a
      009828 7B 06            [ 1]  363 	ld	a, (0x06, sp)
      00982A 88               [ 1]  364 	push	a
      00982B CD 9B 94         [ 4]  365 	call	_TI1_Config
      00982E 5B 03            [ 2]  366 	addw	sp, #3
                           00012B   367 	C$stm8s_tim2.c$233$2_0$360 ==.
                                    368 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      009830 7B 06            [ 1]  369 	ld	a, (0x06, sp)
      009832 88               [ 1]  370 	push	a
      009833 CD 9A B8         [ 4]  371 	call	_TIM2_SetIC1Prescaler
      009836 84               [ 1]  372 	pop	a
      009837 20 31            [ 2]  373 	jra	00107$
      009839                        374 00105$:
                           000134   375 	C$stm8s_tim2.c$235$1_0$359 ==.
                                    376 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
      009839 7B 03            [ 1]  377 	ld	a, (0x03, sp)
      00983B 4A               [ 1]  378 	dec	a
      00983C 26 17            [ 1]  379 	jrne	00102$
                           000139   380 	C$stm8s_tim2.c$238$2_0$361 ==.
                                    381 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
      00983E 7B 07            [ 1]  382 	ld	a, (0x07, sp)
      009840 88               [ 1]  383 	push	a
      009841 7B 06            [ 1]  384 	ld	a, (0x06, sp)
      009843 88               [ 1]  385 	push	a
      009844 7B 06            [ 1]  386 	ld	a, (0x06, sp)
      009846 88               [ 1]  387 	push	a
      009847 CD 9B C0         [ 4]  388 	call	_TI2_Config
      00984A 5B 03            [ 2]  389 	addw	sp, #3
                           000147   390 	C$stm8s_tim2.c$243$2_0$361 ==.
                                    391 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00984C 7B 06            [ 1]  392 	ld	a, (0x06, sp)
      00984E 88               [ 1]  393 	push	a
      00984F CD 9A C3         [ 4]  394 	call	_TIM2_SetIC2Prescaler
      009852 84               [ 1]  395 	pop	a
      009853 20 15            [ 2]  396 	jra	00107$
      009855                        397 00102$:
                           000150   398 	C$stm8s_tim2.c$248$2_0$362 ==.
                                    399 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
      009855 7B 07            [ 1]  400 	ld	a, (0x07, sp)
      009857 88               [ 1]  401 	push	a
      009858 7B 06            [ 1]  402 	ld	a, (0x06, sp)
      00985A 88               [ 1]  403 	push	a
      00985B 7B 06            [ 1]  404 	ld	a, (0x06, sp)
      00985D 88               [ 1]  405 	push	a
      00985E CD 9B EC         [ 4]  406 	call	_TI3_Config
      009861 5B 03            [ 2]  407 	addw	sp, #3
                           00015E   408 	C$stm8s_tim2.c$253$2_0$362 ==.
                                    409 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
      009863 7B 06            [ 1]  410 	ld	a, (0x06, sp)
      009865 88               [ 1]  411 	push	a
      009866 CD 9A CE         [ 4]  412 	call	_TIM2_SetIC3Prescaler
      009869 84               [ 1]  413 	pop	a
      00986A                        414 00107$:
                           000165   415 	C$stm8s_tim2.c$255$1_0$359 ==.
                                    416 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 255: }
                           000165   417 	C$stm8s_tim2.c$255$1_0$359 ==.
                           000165   418 	XG$TIM2_ICInit$0$0 ==.
      00986A 81               [ 4]  419 	ret
                           000166   420 	G$TIM2_PWMIConfig$0$0 ==.
                           000166   421 	C$stm8s_tim2.c$266$1_0$364 ==.
                                    422 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
                                    423 ;	-----------------------------------------
                                    424 ;	 function TIM2_PWMIConfig
                                    425 ;	-----------------------------------------
      00986B                        426 _TIM2_PWMIConfig:
      00986B 52 02            [ 2]  427 	sub	sp, #2
                           000168   428 	C$stm8s_tim2.c$282$1_0$364 ==.
                                    429 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
      00986D 7B 06            [ 1]  430 	ld	a, (0x06, sp)
      00986F A1 44            [ 1]  431 	cp	a, #0x44
      009871 27 06            [ 1]  432 	jreq	00102$
                           00016E   433 	C$stm8s_tim2.c$284$2_0$365 ==.
                                    434 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
      009873 A6 44            [ 1]  435 	ld	a, #0x44
      009875 6B 01            [ 1]  436 	ld	(0x01, sp), a
      009877 20 02            [ 2]  437 	jra	00103$
      009879                        438 00102$:
                           000174   439 	C$stm8s_tim2.c$288$2_0$366 ==.
                                    440 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
      009879 0F 01            [ 1]  441 	clr	(0x01, sp)
      00987B                        442 00103$:
                           000176   443 	C$stm8s_tim2.c$292$1_0$364 ==.
                                    444 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
      00987B 7B 07            [ 1]  445 	ld	a, (0x07, sp)
      00987D 4A               [ 1]  446 	dec	a
      00987E 26 06            [ 1]  447 	jrne	00105$
                           00017B   448 	C$stm8s_tim2.c$294$2_0$367 ==.
                                    449 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
      009880 A6 02            [ 1]  450 	ld	a, #0x02
      009882 6B 02            [ 1]  451 	ld	(0x02, sp), a
      009884 20 04            [ 2]  452 	jra	00106$
      009886                        453 00105$:
                           000181   454 	C$stm8s_tim2.c$298$2_0$368 ==.
                                    455 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
      009886 A6 01            [ 1]  456 	ld	a, #0x01
      009888 6B 02            [ 1]  457 	ld	(0x02, sp), a
      00988A                        458 00106$:
                           000185   459 	C$stm8s_tim2.c$301$1_0$364 ==.
                                    460 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
      00988A 0D 05            [ 1]  461 	tnz	(0x05, sp)
      00988C 26 2C            [ 1]  462 	jrne	00108$
                           000189   463 	C$stm8s_tim2.c$304$2_0$369 ==.
                                    464 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      00988E 7B 09            [ 1]  465 	ld	a, (0x09, sp)
      009890 88               [ 1]  466 	push	a
      009891 7B 08            [ 1]  467 	ld	a, (0x08, sp)
      009893 88               [ 1]  468 	push	a
      009894 7B 08            [ 1]  469 	ld	a, (0x08, sp)
      009896 88               [ 1]  470 	push	a
      009897 CD 9B 94         [ 4]  471 	call	_TI1_Config
      00989A 5B 03            [ 2]  472 	addw	sp, #3
                           000197   473 	C$stm8s_tim2.c$308$2_0$369 ==.
                                    474 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00989C 7B 08            [ 1]  475 	ld	a, (0x08, sp)
      00989E 88               [ 1]  476 	push	a
      00989F CD 9A B8         [ 4]  477 	call	_TIM2_SetIC1Prescaler
      0098A2 84               [ 1]  478 	pop	a
                           00019E   479 	C$stm8s_tim2.c$311$2_0$369 ==.
                                    480 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
      0098A3 7B 09            [ 1]  481 	ld	a, (0x09, sp)
      0098A5 88               [ 1]  482 	push	a
      0098A6 7B 03            [ 1]  483 	ld	a, (0x03, sp)
      0098A8 88               [ 1]  484 	push	a
      0098A9 7B 03            [ 1]  485 	ld	a, (0x03, sp)
      0098AB 88               [ 1]  486 	push	a
      0098AC CD 9B C0         [ 4]  487 	call	_TI2_Config
      0098AF 5B 03            [ 2]  488 	addw	sp, #3
                           0001AC   489 	C$stm8s_tim2.c$314$2_0$369 ==.
                                    490 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      0098B1 7B 08            [ 1]  491 	ld	a, (0x08, sp)
      0098B3 88               [ 1]  492 	push	a
      0098B4 CD 9A C3         [ 4]  493 	call	_TIM2_SetIC2Prescaler
      0098B7 84               [ 1]  494 	pop	a
      0098B8 20 2A            [ 2]  495 	jra	00110$
      0098BA                        496 00108$:
                           0001B5   497 	C$stm8s_tim2.c$319$2_0$370 ==.
                                    498 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      0098BA 7B 09            [ 1]  499 	ld	a, (0x09, sp)
      0098BC 88               [ 1]  500 	push	a
      0098BD 7B 08            [ 1]  501 	ld	a, (0x08, sp)
      0098BF 88               [ 1]  502 	push	a
      0098C0 7B 08            [ 1]  503 	ld	a, (0x08, sp)
      0098C2 88               [ 1]  504 	push	a
      0098C3 CD 9B C0         [ 4]  505 	call	_TI2_Config
      0098C6 5B 03            [ 2]  506 	addw	sp, #3
                           0001C3   507 	C$stm8s_tim2.c$323$2_0$370 ==.
                                    508 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      0098C8 7B 08            [ 1]  509 	ld	a, (0x08, sp)
      0098CA 88               [ 1]  510 	push	a
      0098CB CD 9A C3         [ 4]  511 	call	_TIM2_SetIC2Prescaler
      0098CE 84               [ 1]  512 	pop	a
                           0001CA   513 	C$stm8s_tim2.c$326$2_0$370 ==.
                                    514 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
      0098CF 7B 09            [ 1]  515 	ld	a, (0x09, sp)
      0098D1 88               [ 1]  516 	push	a
      0098D2 7B 03            [ 1]  517 	ld	a, (0x03, sp)
      0098D4 88               [ 1]  518 	push	a
      0098D5 7B 03            [ 1]  519 	ld	a, (0x03, sp)
      0098D7 88               [ 1]  520 	push	a
      0098D8 CD 9B 94         [ 4]  521 	call	_TI1_Config
      0098DB 5B 03            [ 2]  522 	addw	sp, #3
                           0001D8   523 	C$stm8s_tim2.c$329$2_0$370 ==.
                                    524 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      0098DD 7B 08            [ 1]  525 	ld	a, (0x08, sp)
      0098DF 88               [ 1]  526 	push	a
      0098E0 CD 9A B8         [ 4]  527 	call	_TIM2_SetIC1Prescaler
      0098E3 84               [ 1]  528 	pop	a
      0098E4                        529 00110$:
                           0001DF   530 	C$stm8s_tim2.c$331$1_0$364 ==.
                                    531 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 331: }
      0098E4 5B 02            [ 2]  532 	addw	sp, #2
                           0001E1   533 	C$stm8s_tim2.c$331$1_0$364 ==.
                           0001E1   534 	XG$TIM2_PWMIConfig$0$0 ==.
      0098E6 81               [ 4]  535 	ret
                           0001E2   536 	G$TIM2_Cmd$0$0 ==.
                           0001E2   537 	C$stm8s_tim2.c$339$1_0$372 ==.
                                    538 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
                                    539 ;	-----------------------------------------
                                    540 ;	 function TIM2_Cmd
                                    541 ;	-----------------------------------------
      0098E7                        542 _TIM2_Cmd:
                           0001E2   543 	C$stm8s_tim2.c$345$1_0$372 ==.
                                    544 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 345: if (NewState != DISABLE)
      0098E7 0D 03            [ 1]  545 	tnz	(0x03, sp)
      0098E9 27 06            [ 1]  546 	jreq	00102$
                           0001E6   547 	C$stm8s_tim2.c$347$2_0$373 ==.
                                    548 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
      0098EB 72 10 53 00      [ 1]  549 	bset	21248, #0
      0098EF 20 04            [ 2]  550 	jra	00104$
      0098F1                        551 00102$:
                           0001EC   552 	C$stm8s_tim2.c$351$2_0$374 ==.
                                    553 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
      0098F1 72 11 53 00      [ 1]  554 	bres	21248, #0
      0098F5                        555 00104$:
                           0001F0   556 	C$stm8s_tim2.c$353$1_0$372 ==.
                                    557 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 353: }
                           0001F0   558 	C$stm8s_tim2.c$353$1_0$372 ==.
                           0001F0   559 	XG$TIM2_Cmd$0$0 ==.
      0098F5 81               [ 4]  560 	ret
                           0001F1   561 	G$TIM2_ITConfig$0$0 ==.
                           0001F1   562 	C$stm8s_tim2.c$368$1_0$376 ==.
                                    563 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
                                    564 ;	-----------------------------------------
                                    565 ;	 function TIM2_ITConfig
                                    566 ;	-----------------------------------------
      0098F6                        567 _TIM2_ITConfig:
      0098F6 88               [ 1]  568 	push	a
                           0001F2   569 	C$stm8s_tim2.c$374$1_0$376 ==.
                                    570 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 374: if (NewState != DISABLE)
      0098F7 0D 05            [ 1]  571 	tnz	(0x05, sp)
      0098F9 27 0A            [ 1]  572 	jreq	00102$
                           0001F6   573 	C$stm8s_tim2.c$377$2_0$377 ==.
                                    574 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
      0098FB C6 53 01         [ 1]  575 	ld	a, 0x5301
      0098FE 1A 04            [ 1]  576 	or	a, (0x04, sp)
      009900 C7 53 01         [ 1]  577 	ld	0x5301, a
      009903 20 0D            [ 2]  578 	jra	00104$
      009905                        579 00102$:
                           000200   580 	C$stm8s_tim2.c$382$2_0$378 ==.
                                    581 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
      009905 C6 53 01         [ 1]  582 	ld	a, 0x5301
      009908 6B 01            [ 1]  583 	ld	(0x01, sp), a
      00990A 7B 04            [ 1]  584 	ld	a, (0x04, sp)
      00990C 43               [ 1]  585 	cpl	a
      00990D 14 01            [ 1]  586 	and	a, (0x01, sp)
      00990F C7 53 01         [ 1]  587 	ld	0x5301, a
      009912                        588 00104$:
                           00020D   589 	C$stm8s_tim2.c$384$1_0$376 ==.
                                    590 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 384: }
      009912 84               [ 1]  591 	pop	a
                           00020E   592 	C$stm8s_tim2.c$384$1_0$376 ==.
                           00020E   593 	XG$TIM2_ITConfig$0$0 ==.
      009913 81               [ 4]  594 	ret
                           00020F   595 	G$TIM2_UpdateDisableConfig$0$0 ==.
                           00020F   596 	C$stm8s_tim2.c$392$1_0$380 ==.
                                    597 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
                                    598 ;	-----------------------------------------
                                    599 ;	 function TIM2_UpdateDisableConfig
                                    600 ;	-----------------------------------------
      009914                        601 _TIM2_UpdateDisableConfig:
                           00020F   602 	C$stm8s_tim2.c$398$1_0$380 ==.
                                    603 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 398: if (NewState != DISABLE)
      009914 0D 03            [ 1]  604 	tnz	(0x03, sp)
      009916 27 06            [ 1]  605 	jreq	00102$
                           000213   606 	C$stm8s_tim2.c$400$2_0$381 ==.
                                    607 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
      009918 72 12 53 00      [ 1]  608 	bset	21248, #1
      00991C 20 04            [ 2]  609 	jra	00104$
      00991E                        610 00102$:
                           000219   611 	C$stm8s_tim2.c$404$2_0$382 ==.
                                    612 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
      00991E 72 13 53 00      [ 1]  613 	bres	21248, #1
      009922                        614 00104$:
                           00021D   615 	C$stm8s_tim2.c$406$1_0$380 ==.
                                    616 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 406: }
                           00021D   617 	C$stm8s_tim2.c$406$1_0$380 ==.
                           00021D   618 	XG$TIM2_UpdateDisableConfig$0$0 ==.
      009922 81               [ 4]  619 	ret
                           00021E   620 	G$TIM2_UpdateRequestConfig$0$0 ==.
                           00021E   621 	C$stm8s_tim2.c$416$1_0$384 ==.
                                    622 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
                                    623 ;	-----------------------------------------
                                    624 ;	 function TIM2_UpdateRequestConfig
                                    625 ;	-----------------------------------------
      009923                        626 _TIM2_UpdateRequestConfig:
                           00021E   627 	C$stm8s_tim2.c$422$1_0$384 ==.
                                    628 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
      009923 0D 03            [ 1]  629 	tnz	(0x03, sp)
      009925 27 06            [ 1]  630 	jreq	00102$
                           000222   631 	C$stm8s_tim2.c$424$2_0$385 ==.
                                    632 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
      009927 72 14 53 00      [ 1]  633 	bset	21248, #2
      00992B 20 04            [ 2]  634 	jra	00104$
      00992D                        635 00102$:
                           000228   636 	C$stm8s_tim2.c$428$2_0$386 ==.
                                    637 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
      00992D 72 15 53 00      [ 1]  638 	bres	21248, #2
      009931                        639 00104$:
                           00022C   640 	C$stm8s_tim2.c$430$1_0$384 ==.
                                    641 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 430: }
                           00022C   642 	C$stm8s_tim2.c$430$1_0$384 ==.
                           00022C   643 	XG$TIM2_UpdateRequestConfig$0$0 ==.
      009931 81               [ 4]  644 	ret
                           00022D   645 	G$TIM2_SelectOnePulseMode$0$0 ==.
                           00022D   646 	C$stm8s_tim2.c$440$1_0$388 ==.
                                    647 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
                                    648 ;	-----------------------------------------
                                    649 ;	 function TIM2_SelectOnePulseMode
                                    650 ;	-----------------------------------------
      009932                        651 _TIM2_SelectOnePulseMode:
                           00022D   652 	C$stm8s_tim2.c$446$1_0$388 ==.
                                    653 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
      009932 0D 03            [ 1]  654 	tnz	(0x03, sp)
      009934 27 06            [ 1]  655 	jreq	00102$
                           000231   656 	C$stm8s_tim2.c$448$2_0$389 ==.
                                    657 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
      009936 72 16 53 00      [ 1]  658 	bset	21248, #3
      00993A 20 04            [ 2]  659 	jra	00104$
      00993C                        660 00102$:
                           000237   661 	C$stm8s_tim2.c$452$2_0$390 ==.
                                    662 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
      00993C 72 17 53 00      [ 1]  663 	bres	21248, #3
      009940                        664 00104$:
                           00023B   665 	C$stm8s_tim2.c$454$1_0$388 ==.
                                    666 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 454: }
                           00023B   667 	C$stm8s_tim2.c$454$1_0$388 ==.
                           00023B   668 	XG$TIM2_SelectOnePulseMode$0$0 ==.
      009940 81               [ 4]  669 	ret
                           00023C   670 	G$TIM2_PrescalerConfig$0$0 ==.
                           00023C   671 	C$stm8s_tim2.c$484$1_0$392 ==.
                                    672 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
                                    673 ;	-----------------------------------------
                                    674 ;	 function TIM2_PrescalerConfig
                                    675 ;	-----------------------------------------
      009941                        676 _TIM2_PrescalerConfig:
                           00023C   677 	C$stm8s_tim2.c$492$1_0$392 ==.
                                    678 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
      009941 AE 53 0C         [ 2]  679 	ldw	x, #0x530c
      009944 7B 03            [ 1]  680 	ld	a, (0x03, sp)
      009946 F7               [ 1]  681 	ld	(x), a
                           000242   682 	C$stm8s_tim2.c$495$1_0$392 ==.
                                    683 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
      009947 AE 53 04         [ 2]  684 	ldw	x, #0x5304
      00994A 7B 04            [ 1]  685 	ld	a, (0x04, sp)
      00994C F7               [ 1]  686 	ld	(x), a
                           000248   687 	C$stm8s_tim2.c$496$1_0$392 ==.
                                    688 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 496: }
                           000248   689 	C$stm8s_tim2.c$496$1_0$392 ==.
                           000248   690 	XG$TIM2_PrescalerConfig$0$0 ==.
      00994D 81               [ 4]  691 	ret
                           000249   692 	G$TIM2_ForcedOC1Config$0$0 ==.
                           000249   693 	C$stm8s_tim2.c$507$1_0$394 ==.
                                    694 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                    695 ;	-----------------------------------------
                                    696 ;	 function TIM2_ForcedOC1Config
                                    697 ;	-----------------------------------------
      00994E                        698 _TIM2_ForcedOC1Config:
                           000249   699 	C$stm8s_tim2.c$513$1_0$394 ==.
                                    700 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
      00994E C6 53 05         [ 1]  701 	ld	a, 0x5305
      009951 A4 8F            [ 1]  702 	and	a, #0x8f
                           00024E   703 	C$stm8s_tim2.c$514$1_0$394 ==.
                                    704 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
      009953 1A 03            [ 1]  705 	or	a, (0x03, sp)
      009955 C7 53 05         [ 1]  706 	ld	0x5305, a
                           000253   707 	C$stm8s_tim2.c$515$1_0$394 ==.
                                    708 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 515: }
                           000253   709 	C$stm8s_tim2.c$515$1_0$394 ==.
                           000253   710 	XG$TIM2_ForcedOC1Config$0$0 ==.
      009958 81               [ 4]  711 	ret
                           000254   712 	G$TIM2_ForcedOC2Config$0$0 ==.
                           000254   713 	C$stm8s_tim2.c$526$1_0$396 ==.
                                    714 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                    715 ;	-----------------------------------------
                                    716 ;	 function TIM2_ForcedOC2Config
                                    717 ;	-----------------------------------------
      009959                        718 _TIM2_ForcedOC2Config:
                           000254   719 	C$stm8s_tim2.c$532$1_0$396 ==.
                                    720 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
      009959 C6 53 06         [ 1]  721 	ld	a, 0x5306
      00995C A4 8F            [ 1]  722 	and	a, #0x8f
                           000259   723 	C$stm8s_tim2.c$533$1_0$396 ==.
                                    724 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
      00995E 1A 03            [ 1]  725 	or	a, (0x03, sp)
      009960 C7 53 06         [ 1]  726 	ld	0x5306, a
                           00025E   727 	C$stm8s_tim2.c$534$1_0$396 ==.
                                    728 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 534: }
                           00025E   729 	C$stm8s_tim2.c$534$1_0$396 ==.
                           00025E   730 	XG$TIM2_ForcedOC2Config$0$0 ==.
      009963 81               [ 4]  731 	ret
                           00025F   732 	G$TIM2_ForcedOC3Config$0$0 ==.
                           00025F   733 	C$stm8s_tim2.c$545$1_0$398 ==.
                                    734 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                    735 ;	-----------------------------------------
                                    736 ;	 function TIM2_ForcedOC3Config
                                    737 ;	-----------------------------------------
      009964                        738 _TIM2_ForcedOC3Config:
                           00025F   739 	C$stm8s_tim2.c$551$1_0$398 ==.
                                    740 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      009964 C6 53 07         [ 1]  741 	ld	a, 0x5307
      009967 A4 8F            [ 1]  742 	and	a, #0x8f
                           000264   743 	C$stm8s_tim2.c$552$1_0$398 ==.
                                    744 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
      009969 1A 03            [ 1]  745 	or	a, (0x03, sp)
      00996B C7 53 07         [ 1]  746 	ld	0x5307, a
                           000269   747 	C$stm8s_tim2.c$553$1_0$398 ==.
                                    748 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 553: }
                           000269   749 	C$stm8s_tim2.c$553$1_0$398 ==.
                           000269   750 	XG$TIM2_ForcedOC3Config$0$0 ==.
      00996E 81               [ 4]  751 	ret
                           00026A   752 	G$TIM2_ARRPreloadConfig$0$0 ==.
                           00026A   753 	C$stm8s_tim2.c$561$1_0$400 ==.
                                    754 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
                                    755 ;	-----------------------------------------
                                    756 ;	 function TIM2_ARRPreloadConfig
                                    757 ;	-----------------------------------------
      00996F                        758 _TIM2_ARRPreloadConfig:
                           00026A   759 	C$stm8s_tim2.c$567$1_0$400 ==.
                                    760 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 567: if (NewState != DISABLE)
      00996F 0D 03            [ 1]  761 	tnz	(0x03, sp)
      009971 27 06            [ 1]  762 	jreq	00102$
                           00026E   763 	C$stm8s_tim2.c$569$2_0$401 ==.
                                    764 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
      009973 72 1E 53 00      [ 1]  765 	bset	21248, #7
      009977 20 04            [ 2]  766 	jra	00104$
      009979                        767 00102$:
                           000274   768 	C$stm8s_tim2.c$573$2_0$402 ==.
                                    769 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
      009979 72 1F 53 00      [ 1]  770 	bres	21248, #7
      00997D                        771 00104$:
                           000278   772 	C$stm8s_tim2.c$575$1_0$400 ==.
                                    773 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 575: }
                           000278   774 	C$stm8s_tim2.c$575$1_0$400 ==.
                           000278   775 	XG$TIM2_ARRPreloadConfig$0$0 ==.
      00997D 81               [ 4]  776 	ret
                           000279   777 	G$TIM2_OC1PreloadConfig$0$0 ==.
                           000279   778 	C$stm8s_tim2.c$583$1_0$404 ==.
                                    779 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
                                    780 ;	-----------------------------------------
                                    781 ;	 function TIM2_OC1PreloadConfig
                                    782 ;	-----------------------------------------
      00997E                        783 _TIM2_OC1PreloadConfig:
                           000279   784 	C$stm8s_tim2.c$589$1_0$404 ==.
                                    785 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 589: if (NewState != DISABLE)
      00997E 0D 03            [ 1]  786 	tnz	(0x03, sp)
      009980 27 06            [ 1]  787 	jreq	00102$
                           00027D   788 	C$stm8s_tim2.c$591$2_0$405 ==.
                                    789 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
      009982 72 16 53 05      [ 1]  790 	bset	21253, #3
      009986 20 04            [ 2]  791 	jra	00104$
      009988                        792 00102$:
                           000283   793 	C$stm8s_tim2.c$595$2_0$406 ==.
                                    794 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      009988 72 17 53 05      [ 1]  795 	bres	21253, #3
      00998C                        796 00104$:
                           000287   797 	C$stm8s_tim2.c$597$1_0$404 ==.
                                    798 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 597: }
                           000287   799 	C$stm8s_tim2.c$597$1_0$404 ==.
                           000287   800 	XG$TIM2_OC1PreloadConfig$0$0 ==.
      00998C 81               [ 4]  801 	ret
                           000288   802 	G$TIM2_OC2PreloadConfig$0$0 ==.
                           000288   803 	C$stm8s_tim2.c$605$1_0$408 ==.
                                    804 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
                                    805 ;	-----------------------------------------
                                    806 ;	 function TIM2_OC2PreloadConfig
                                    807 ;	-----------------------------------------
      00998D                        808 _TIM2_OC2PreloadConfig:
                           000288   809 	C$stm8s_tim2.c$611$1_0$408 ==.
                                    810 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 611: if (NewState != DISABLE)
      00998D 0D 03            [ 1]  811 	tnz	(0x03, sp)
      00998F 27 06            [ 1]  812 	jreq	00102$
                           00028C   813 	C$stm8s_tim2.c$613$2_0$409 ==.
                                    814 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
      009991 72 16 53 06      [ 1]  815 	bset	21254, #3
      009995 20 04            [ 2]  816 	jra	00104$
      009997                        817 00102$:
                           000292   818 	C$stm8s_tim2.c$617$2_0$410 ==.
                                    819 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      009997 72 17 53 06      [ 1]  820 	bres	21254, #3
      00999B                        821 00104$:
                           000296   822 	C$stm8s_tim2.c$619$1_0$408 ==.
                                    823 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 619: }
                           000296   824 	C$stm8s_tim2.c$619$1_0$408 ==.
                           000296   825 	XG$TIM2_OC2PreloadConfig$0$0 ==.
      00999B 81               [ 4]  826 	ret
                           000297   827 	G$TIM2_OC3PreloadConfig$0$0 ==.
                           000297   828 	C$stm8s_tim2.c$627$1_0$412 ==.
                                    829 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
                                    830 ;	-----------------------------------------
                                    831 ;	 function TIM2_OC3PreloadConfig
                                    832 ;	-----------------------------------------
      00999C                        833 _TIM2_OC3PreloadConfig:
                           000297   834 	C$stm8s_tim2.c$633$1_0$412 ==.
                                    835 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 633: if (NewState != DISABLE)
      00999C 0D 03            [ 1]  836 	tnz	(0x03, sp)
      00999E 27 06            [ 1]  837 	jreq	00102$
                           00029B   838 	C$stm8s_tim2.c$635$2_0$413 ==.
                                    839 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
      0099A0 72 16 53 07      [ 1]  840 	bset	21255, #3
      0099A4 20 04            [ 2]  841 	jra	00104$
      0099A6                        842 00102$:
                           0002A1   843 	C$stm8s_tim2.c$639$2_0$414 ==.
                                    844 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      0099A6 72 17 53 07      [ 1]  845 	bres	21255, #3
      0099AA                        846 00104$:
                           0002A5   847 	C$stm8s_tim2.c$641$1_0$412 ==.
                                    848 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 641: }
                           0002A5   849 	C$stm8s_tim2.c$641$1_0$412 ==.
                           0002A5   850 	XG$TIM2_OC3PreloadConfig$0$0 ==.
      0099AA 81               [ 4]  851 	ret
                           0002A6   852 	G$TIM2_GenerateEvent$0$0 ==.
                           0002A6   853 	C$stm8s_tim2.c$653$1_0$416 ==.
                                    854 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
                                    855 ;	-----------------------------------------
                                    856 ;	 function TIM2_GenerateEvent
                                    857 ;	-----------------------------------------
      0099AB                        858 _TIM2_GenerateEvent:
                           0002A6   859 	C$stm8s_tim2.c$659$1_0$416 ==.
                                    860 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
      0099AB AE 53 04         [ 2]  861 	ldw	x, #0x5304
      0099AE 7B 03            [ 1]  862 	ld	a, (0x03, sp)
      0099B0 F7               [ 1]  863 	ld	(x), a
                           0002AC   864 	C$stm8s_tim2.c$660$1_0$416 ==.
                                    865 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 660: }
                           0002AC   866 	C$stm8s_tim2.c$660$1_0$416 ==.
                           0002AC   867 	XG$TIM2_GenerateEvent$0$0 ==.
      0099B1 81               [ 4]  868 	ret
                           0002AD   869 	G$TIM2_OC1PolarityConfig$0$0 ==.
                           0002AD   870 	C$stm8s_tim2.c$670$1_0$418 ==.
                                    871 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                    872 ;	-----------------------------------------
                                    873 ;	 function TIM2_OC1PolarityConfig
                                    874 ;	-----------------------------------------
      0099B2                        875 _TIM2_OC1PolarityConfig:
                           0002AD   876 	C$stm8s_tim2.c$676$1_0$418 ==.
                                    877 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      0099B2 0D 03            [ 1]  878 	tnz	(0x03, sp)
      0099B4 27 06            [ 1]  879 	jreq	00102$
                           0002B1   880 	C$stm8s_tim2.c$678$2_0$419 ==.
                                    881 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
      0099B6 72 12 53 08      [ 1]  882 	bset	21256, #1
      0099BA 20 04            [ 2]  883 	jra	00104$
      0099BC                        884 00102$:
                           0002B7   885 	C$stm8s_tim2.c$682$2_0$420 ==.
                                    886 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      0099BC 72 13 53 08      [ 1]  887 	bres	21256, #1
      0099C0                        888 00104$:
                           0002BB   889 	C$stm8s_tim2.c$684$1_0$418 ==.
                                    890 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 684: }
                           0002BB   891 	C$stm8s_tim2.c$684$1_0$418 ==.
                           0002BB   892 	XG$TIM2_OC1PolarityConfig$0$0 ==.
      0099C0 81               [ 4]  893 	ret
                           0002BC   894 	G$TIM2_OC2PolarityConfig$0$0 ==.
                           0002BC   895 	C$stm8s_tim2.c$694$1_0$422 ==.
                                    896 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                    897 ;	-----------------------------------------
                                    898 ;	 function TIM2_OC2PolarityConfig
                                    899 ;	-----------------------------------------
      0099C1                        900 _TIM2_OC2PolarityConfig:
                           0002BC   901 	C$stm8s_tim2.c$700$1_0$422 ==.
                                    902 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      0099C1 0D 03            [ 1]  903 	tnz	(0x03, sp)
      0099C3 27 06            [ 1]  904 	jreq	00102$
                           0002C0   905 	C$stm8s_tim2.c$702$2_0$423 ==.
                                    906 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      0099C5 72 1A 53 08      [ 1]  907 	bset	21256, #5
      0099C9 20 04            [ 2]  908 	jra	00104$
      0099CB                        909 00102$:
                           0002C6   910 	C$stm8s_tim2.c$706$2_0$424 ==.
                                    911 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      0099CB 72 1B 53 08      [ 1]  912 	bres	21256, #5
      0099CF                        913 00104$:
                           0002CA   914 	C$stm8s_tim2.c$708$1_0$422 ==.
                                    915 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 708: }
                           0002CA   916 	C$stm8s_tim2.c$708$1_0$422 ==.
                           0002CA   917 	XG$TIM2_OC2PolarityConfig$0$0 ==.
      0099CF 81               [ 4]  918 	ret
                           0002CB   919 	G$TIM2_OC3PolarityConfig$0$0 ==.
                           0002CB   920 	C$stm8s_tim2.c$718$1_0$426 ==.
                                    921 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                    922 ;	-----------------------------------------
                                    923 ;	 function TIM2_OC3PolarityConfig
                                    924 ;	-----------------------------------------
      0099D0                        925 _TIM2_OC3PolarityConfig:
                           0002CB   926 	C$stm8s_tim2.c$724$1_0$426 ==.
                                    927 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      0099D0 0D 03            [ 1]  928 	tnz	(0x03, sp)
      0099D2 27 06            [ 1]  929 	jreq	00102$
                           0002CF   930 	C$stm8s_tim2.c$726$2_0$427 ==.
                                    931 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
      0099D4 72 12 53 09      [ 1]  932 	bset	21257, #1
      0099D8 20 04            [ 2]  933 	jra	00104$
      0099DA                        934 00102$:
                           0002D5   935 	C$stm8s_tim2.c$730$2_0$428 ==.
                                    936 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      0099DA 72 13 53 09      [ 1]  937 	bres	21257, #1
      0099DE                        938 00104$:
                           0002D9   939 	C$stm8s_tim2.c$732$1_0$426 ==.
                                    940 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 732: }
                           0002D9   941 	C$stm8s_tim2.c$732$1_0$426 ==.
                           0002D9   942 	XG$TIM2_OC3PolarityConfig$0$0 ==.
      0099DE 81               [ 4]  943 	ret
                           0002DA   944 	G$TIM2_CCxCmd$0$0 ==.
                           0002DA   945 	C$stm8s_tim2.c$745$1_0$430 ==.
                                    946 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
                                    947 ;	-----------------------------------------
                                    948 ;	 function TIM2_CCxCmd
                                    949 ;	-----------------------------------------
      0099DF                        950 _TIM2_CCxCmd:
                           0002DA   951 	C$stm8s_tim2.c$751$1_0$430 ==.
                                    952 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
      0099DF 0D 03            [ 1]  953 	tnz	(0x03, sp)
      0099E1 26 10            [ 1]  954 	jrne	00114$
                           0002DE   955 	C$stm8s_tim2.c$754$2_0$431 ==.
                                    956 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 754: if (NewState != DISABLE)
      0099E3 0D 04            [ 1]  957 	tnz	(0x04, sp)
      0099E5 27 06            [ 1]  958 	jreq	00102$
                           0002E2   959 	C$stm8s_tim2.c$756$3_0$432 ==.
                                    960 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      0099E7 72 10 53 08      [ 1]  961 	bset	21256, #0
      0099EB 20 29            [ 2]  962 	jra	00116$
      0099ED                        963 00102$:
                           0002E8   964 	C$stm8s_tim2.c$760$3_0$433 ==.
                                    965 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      0099ED 72 11 53 08      [ 1]  966 	bres	21256, #0
      0099F1 20 23            [ 2]  967 	jra	00116$
      0099F3                        968 00114$:
                           0002EE   969 	C$stm8s_tim2.c$764$1_0$430 ==.
                                    970 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
      0099F3 7B 03            [ 1]  971 	ld	a, (0x03, sp)
      0099F5 4A               [ 1]  972 	dec	a
      0099F6 26 10            [ 1]  973 	jrne	00111$
                           0002F3   974 	C$stm8s_tim2.c$767$2_0$434 ==.
                                    975 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 767: if (NewState != DISABLE)
      0099F8 0D 04            [ 1]  976 	tnz	(0x04, sp)
      0099FA 27 06            [ 1]  977 	jreq	00105$
                           0002F7   978 	C$stm8s_tim2.c$769$3_0$435 ==.
                                    979 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
      0099FC 72 18 53 08      [ 1]  980 	bset	21256, #4
      009A00 20 14            [ 2]  981 	jra	00116$
      009A02                        982 00105$:
                           0002FD   983 	C$stm8s_tim2.c$773$3_0$436 ==.
                                    984 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      009A02 72 19 53 08      [ 1]  985 	bres	21256, #4
      009A06 20 0E            [ 2]  986 	jra	00116$
      009A08                        987 00111$:
                           000303   988 	C$stm8s_tim2.c$779$2_0$437 ==.
                                    989 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 779: if (NewState != DISABLE)
      009A08 0D 04            [ 1]  990 	tnz	(0x04, sp)
      009A0A 27 06            [ 1]  991 	jreq	00108$
                           000307   992 	C$stm8s_tim2.c$781$3_0$438 ==.
                                    993 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
      009A0C 72 10 53 09      [ 1]  994 	bset	21257, #0
      009A10 20 04            [ 2]  995 	jra	00116$
      009A12                        996 00108$:
                           00030D   997 	C$stm8s_tim2.c$785$3_0$439 ==.
                                    998 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      009A12 72 11 53 09      [ 1]  999 	bres	21257, #0
      009A16                       1000 00116$:
                           000311  1001 	C$stm8s_tim2.c$788$1_0$430 ==.
                                   1002 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 788: }
                           000311  1003 	C$stm8s_tim2.c$788$1_0$430 ==.
                           000311  1004 	XG$TIM2_CCxCmd$0$0 ==.
      009A16 81               [ 4] 1005 	ret
                           000312  1006 	G$TIM2_SelectOCxM$0$0 ==.
                           000312  1007 	C$stm8s_tim2.c$810$1_0$441 ==.
                                   1008 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
                                   1009 ;	-----------------------------------------
                                   1010 ;	 function TIM2_SelectOCxM
                                   1011 ;	-----------------------------------------
      009A17                       1012 _TIM2_SelectOCxM:
                           000312  1013 	C$stm8s_tim2.c$816$1_0$441 ==.
                                   1014 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
      009A17 0D 03            [ 1] 1015 	tnz	(0x03, sp)
      009A19 26 10            [ 1] 1016 	jrne	00105$
                           000316  1017 	C$stm8s_tim2.c$819$2_0$442 ==.
                                   1018 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      009A1B 72 11 53 08      [ 1] 1019 	bres	21256, #0
                           00031A  1020 	C$stm8s_tim2.c$822$2_0$442 ==.
                                   1021 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
      009A1F C6 53 05         [ 1] 1022 	ld	a, 0x5305
      009A22 A4 8F            [ 1] 1023 	and	a, #0x8f
                           00031F  1024 	C$stm8s_tim2.c$823$2_0$442 ==.
                                   1025 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
      009A24 1A 04            [ 1] 1026 	or	a, (0x04, sp)
      009A26 C7 53 05         [ 1] 1027 	ld	0x5305, a
      009A29 20 23            [ 2] 1028 	jra	00107$
      009A2B                       1029 00105$:
                           000326  1030 	C$stm8s_tim2.c$825$1_0$441 ==.
                                   1031 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
      009A2B 7B 03            [ 1] 1032 	ld	a, (0x03, sp)
      009A2D 4A               [ 1] 1033 	dec	a
      009A2E 26 10            [ 1] 1034 	jrne	00102$
                           00032B  1035 	C$stm8s_tim2.c$828$2_0$443 ==.
                                   1036 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      009A30 72 19 53 08      [ 1] 1037 	bres	21256, #4
                           00032F  1038 	C$stm8s_tim2.c$831$2_0$443 ==.
                                   1039 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
      009A34 C6 53 06         [ 1] 1040 	ld	a, 0x5306
      009A37 A4 8F            [ 1] 1041 	and	a, #0x8f
                           000334  1042 	C$stm8s_tim2.c$832$2_0$443 ==.
                                   1043 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
      009A39 1A 04            [ 1] 1044 	or	a, (0x04, sp)
      009A3B C7 53 06         [ 1] 1045 	ld	0x5306, a
      009A3E 20 0E            [ 2] 1046 	jra	00107$
      009A40                       1047 00102$:
                           00033B  1048 	C$stm8s_tim2.c$837$2_0$444 ==.
                                   1049 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      009A40 72 11 53 09      [ 1] 1050 	bres	21257, #0
                           00033F  1051 	C$stm8s_tim2.c$840$2_0$444 ==.
                                   1052 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      009A44 C6 53 07         [ 1] 1053 	ld	a, 0x5307
      009A47 A4 8F            [ 1] 1054 	and	a, #0x8f
                           000344  1055 	C$stm8s_tim2.c$841$2_0$444 ==.
                                   1056 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
      009A49 1A 04            [ 1] 1057 	or	a, (0x04, sp)
      009A4B C7 53 07         [ 1] 1058 	ld	0x5307, a
      009A4E                       1059 00107$:
                           000349  1060 	C$stm8s_tim2.c$843$1_0$441 ==.
                                   1061 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 843: }
                           000349  1062 	C$stm8s_tim2.c$843$1_0$441 ==.
                           000349  1063 	XG$TIM2_SelectOCxM$0$0 ==.
      009A4E 81               [ 4] 1064 	ret
                           00034A  1065 	G$TIM2_SetCounter$0$0 ==.
                           00034A  1066 	C$stm8s_tim2.c$851$1_0$446 ==.
                                   1067 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
                                   1068 ;	-----------------------------------------
                                   1069 ;	 function TIM2_SetCounter
                                   1070 ;	-----------------------------------------
      009A4F                       1071 _TIM2_SetCounter:
      009A4F 52 02            [ 2] 1072 	sub	sp, #2
                           00034C  1073 	C$stm8s_tim2.c$854$1_0$446 ==.
                                   1074 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
      009A51 7B 05            [ 1] 1075 	ld	a, (0x05, sp)
      009A53 6B 02            [ 1] 1076 	ld	(0x02, sp), a
      009A55 0F 01            [ 1] 1077 	clr	(0x01, sp)
      009A57 7B 02            [ 1] 1078 	ld	a, (0x02, sp)
      009A59 C7 53 0A         [ 1] 1079 	ld	0x530a, a
                           000357  1080 	C$stm8s_tim2.c$855$1_0$446 ==.
                                   1081 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
      009A5C 7B 06            [ 1] 1082 	ld	a, (0x06, sp)
      009A5E C7 53 0B         [ 1] 1083 	ld	0x530b, a
                           00035C  1084 	C$stm8s_tim2.c$856$1_0$446 ==.
                                   1085 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 856: }
      009A61 5B 02            [ 2] 1086 	addw	sp, #2
                           00035E  1087 	C$stm8s_tim2.c$856$1_0$446 ==.
                           00035E  1088 	XG$TIM2_SetCounter$0$0 ==.
      009A63 81               [ 4] 1089 	ret
                           00035F  1090 	G$TIM2_SetAutoreload$0$0 ==.
                           00035F  1091 	C$stm8s_tim2.c$864$1_0$448 ==.
                                   1092 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
                                   1093 ;	-----------------------------------------
                                   1094 ;	 function TIM2_SetAutoreload
                                   1095 ;	-----------------------------------------
      009A64                       1096 _TIM2_SetAutoreload:
      009A64 52 02            [ 2] 1097 	sub	sp, #2
                           000361  1098 	C$stm8s_tim2.c$867$1_0$448 ==.
                                   1099 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
      009A66 7B 05            [ 1] 1100 	ld	a, (0x05, sp)
      009A68 6B 02            [ 1] 1101 	ld	(0x02, sp), a
      009A6A 0F 01            [ 1] 1102 	clr	(0x01, sp)
      009A6C 7B 02            [ 1] 1103 	ld	a, (0x02, sp)
      009A6E C7 53 0D         [ 1] 1104 	ld	0x530d, a
                           00036C  1105 	C$stm8s_tim2.c$868$1_0$448 ==.
                                   1106 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
      009A71 7B 06            [ 1] 1107 	ld	a, (0x06, sp)
      009A73 C7 53 0E         [ 1] 1108 	ld	0x530e, a
                           000371  1109 	C$stm8s_tim2.c$869$1_0$448 ==.
                                   1110 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 869: }
      009A76 5B 02            [ 2] 1111 	addw	sp, #2
                           000373  1112 	C$stm8s_tim2.c$869$1_0$448 ==.
                           000373  1113 	XG$TIM2_SetAutoreload$0$0 ==.
      009A78 81               [ 4] 1114 	ret
                           000374  1115 	G$TIM2_SetCompare1$0$0 ==.
                           000374  1116 	C$stm8s_tim2.c$877$1_0$450 ==.
                                   1117 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
                                   1118 ;	-----------------------------------------
                                   1119 ;	 function TIM2_SetCompare1
                                   1120 ;	-----------------------------------------
      009A79                       1121 _TIM2_SetCompare1:
      009A79 52 02            [ 2] 1122 	sub	sp, #2
                           000376  1123 	C$stm8s_tim2.c$880$1_0$450 ==.
                                   1124 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
      009A7B 7B 05            [ 1] 1125 	ld	a, (0x05, sp)
      009A7D 6B 02            [ 1] 1126 	ld	(0x02, sp), a
      009A7F 0F 01            [ 1] 1127 	clr	(0x01, sp)
      009A81 7B 02            [ 1] 1128 	ld	a, (0x02, sp)
      009A83 C7 53 0F         [ 1] 1129 	ld	0x530f, a
                           000381  1130 	C$stm8s_tim2.c$881$1_0$450 ==.
                                   1131 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
      009A86 7B 06            [ 1] 1132 	ld	a, (0x06, sp)
      009A88 C7 53 10         [ 1] 1133 	ld	0x5310, a
                           000386  1134 	C$stm8s_tim2.c$882$1_0$450 ==.
                                   1135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 882: }
      009A8B 5B 02            [ 2] 1136 	addw	sp, #2
                           000388  1137 	C$stm8s_tim2.c$882$1_0$450 ==.
                           000388  1138 	XG$TIM2_SetCompare1$0$0 ==.
      009A8D 81               [ 4] 1139 	ret
                           000389  1140 	G$TIM2_SetCompare2$0$0 ==.
                           000389  1141 	C$stm8s_tim2.c$890$1_0$452 ==.
                                   1142 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
                                   1143 ;	-----------------------------------------
                                   1144 ;	 function TIM2_SetCompare2
                                   1145 ;	-----------------------------------------
      009A8E                       1146 _TIM2_SetCompare2:
      009A8E 52 02            [ 2] 1147 	sub	sp, #2
                           00038B  1148 	C$stm8s_tim2.c$893$1_0$452 ==.
                                   1149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
      009A90 7B 05            [ 1] 1150 	ld	a, (0x05, sp)
      009A92 6B 02            [ 1] 1151 	ld	(0x02, sp), a
      009A94 0F 01            [ 1] 1152 	clr	(0x01, sp)
      009A96 7B 02            [ 1] 1153 	ld	a, (0x02, sp)
      009A98 C7 53 11         [ 1] 1154 	ld	0x5311, a
                           000396  1155 	C$stm8s_tim2.c$894$1_0$452 ==.
                                   1156 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
      009A9B 7B 06            [ 1] 1157 	ld	a, (0x06, sp)
      009A9D C7 53 12         [ 1] 1158 	ld	0x5312, a
                           00039B  1159 	C$stm8s_tim2.c$895$1_0$452 ==.
                                   1160 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 895: }
      009AA0 5B 02            [ 2] 1161 	addw	sp, #2
                           00039D  1162 	C$stm8s_tim2.c$895$1_0$452 ==.
                           00039D  1163 	XG$TIM2_SetCompare2$0$0 ==.
      009AA2 81               [ 4] 1164 	ret
                           00039E  1165 	G$TIM2_SetCompare3$0$0 ==.
                           00039E  1166 	C$stm8s_tim2.c$903$1_0$454 ==.
                                   1167 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
                                   1168 ;	-----------------------------------------
                                   1169 ;	 function TIM2_SetCompare3
                                   1170 ;	-----------------------------------------
      009AA3                       1171 _TIM2_SetCompare3:
      009AA3 52 02            [ 2] 1172 	sub	sp, #2
                           0003A0  1173 	C$stm8s_tim2.c$906$1_0$454 ==.
                                   1174 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
      009AA5 7B 05            [ 1] 1175 	ld	a, (0x05, sp)
      009AA7 6B 02            [ 1] 1176 	ld	(0x02, sp), a
      009AA9 0F 01            [ 1] 1177 	clr	(0x01, sp)
      009AAB 7B 02            [ 1] 1178 	ld	a, (0x02, sp)
      009AAD C7 53 13         [ 1] 1179 	ld	0x5313, a
                           0003AB  1180 	C$stm8s_tim2.c$907$1_0$454 ==.
                                   1181 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
      009AB0 7B 06            [ 1] 1182 	ld	a, (0x06, sp)
      009AB2 C7 53 14         [ 1] 1183 	ld	0x5314, a
                           0003B0  1184 	C$stm8s_tim2.c$908$1_0$454 ==.
                                   1185 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 908: }
      009AB5 5B 02            [ 2] 1186 	addw	sp, #2
                           0003B2  1187 	C$stm8s_tim2.c$908$1_0$454 ==.
                           0003B2  1188 	XG$TIM2_SetCompare3$0$0 ==.
      009AB7 81               [ 4] 1189 	ret
                           0003B3  1190 	G$TIM2_SetIC1Prescaler$0$0 ==.
                           0003B3  1191 	C$stm8s_tim2.c$920$1_0$456 ==.
                                   1192 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
                                   1193 ;	-----------------------------------------
                                   1194 ;	 function TIM2_SetIC1Prescaler
                                   1195 ;	-----------------------------------------
      009AB8                       1196 _TIM2_SetIC1Prescaler:
                           0003B3  1197 	C$stm8s_tim2.c$926$1_0$456 ==.
                                   1198 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      009AB8 C6 53 05         [ 1] 1199 	ld	a, 0x5305
      009ABB A4 F3            [ 1] 1200 	and	a, #0xf3
                           0003B8  1201 	C$stm8s_tim2.c$927$1_0$456 ==.
                                   1202 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
      009ABD 1A 03            [ 1] 1203 	or	a, (0x03, sp)
      009ABF C7 53 05         [ 1] 1204 	ld	0x5305, a
                           0003BD  1205 	C$stm8s_tim2.c$928$1_0$456 ==.
                                   1206 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 928: }
                           0003BD  1207 	C$stm8s_tim2.c$928$1_0$456 ==.
                           0003BD  1208 	XG$TIM2_SetIC1Prescaler$0$0 ==.
      009AC2 81               [ 4] 1209 	ret
                           0003BE  1210 	G$TIM2_SetIC2Prescaler$0$0 ==.
                           0003BE  1211 	C$stm8s_tim2.c$940$1_0$458 ==.
                                   1212 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
                                   1213 ;	-----------------------------------------
                                   1214 ;	 function TIM2_SetIC2Prescaler
                                   1215 ;	-----------------------------------------
      009AC3                       1216 _TIM2_SetIC2Prescaler:
                           0003BE  1217 	C$stm8s_tim2.c$946$1_0$458 ==.
                                   1218 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      009AC3 C6 53 06         [ 1] 1219 	ld	a, 0x5306
      009AC6 A4 F3            [ 1] 1220 	and	a, #0xf3
                           0003C3  1221 	C$stm8s_tim2.c$947$1_0$458 ==.
                                   1222 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
      009AC8 1A 03            [ 1] 1223 	or	a, (0x03, sp)
      009ACA C7 53 06         [ 1] 1224 	ld	0x5306, a
                           0003C8  1225 	C$stm8s_tim2.c$948$1_0$458 ==.
                                   1226 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 948: }
                           0003C8  1227 	C$stm8s_tim2.c$948$1_0$458 ==.
                           0003C8  1228 	XG$TIM2_SetIC2Prescaler$0$0 ==.
      009ACD 81               [ 4] 1229 	ret
                           0003C9  1230 	G$TIM2_SetIC3Prescaler$0$0 ==.
                           0003C9  1231 	C$stm8s_tim2.c$960$1_0$460 ==.
                                   1232 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
                                   1233 ;	-----------------------------------------
                                   1234 ;	 function TIM2_SetIC3Prescaler
                                   1235 ;	-----------------------------------------
      009ACE                       1236 _TIM2_SetIC3Prescaler:
                           0003C9  1237 	C$stm8s_tim2.c$966$1_0$460 ==.
                                   1238 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      009ACE C6 53 07         [ 1] 1239 	ld	a, 0x5307
      009AD1 A4 F3            [ 1] 1240 	and	a, #0xf3
                           0003CE  1241 	C$stm8s_tim2.c$967$1_0$460 ==.
                                   1242 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
      009AD3 1A 03            [ 1] 1243 	or	a, (0x03, sp)
      009AD5 C7 53 07         [ 1] 1244 	ld	0x5307, a
                           0003D3  1245 	C$stm8s_tim2.c$968$1_0$460 ==.
                                   1246 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 968: }
                           0003D3  1247 	C$stm8s_tim2.c$968$1_0$460 ==.
                           0003D3  1248 	XG$TIM2_SetIC3Prescaler$0$0 ==.
      009AD8 81               [ 4] 1249 	ret
                           0003D4  1250 	G$TIM2_GetCapture1$0$0 ==.
                           0003D4  1251 	C$stm8s_tim2.c$975$1_0$462 ==.
                                   1252 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
                                   1253 ;	-----------------------------------------
                                   1254 ;	 function TIM2_GetCapture1
                                   1255 ;	-----------------------------------------
      009AD9                       1256 _TIM2_GetCapture1:
      009AD9 52 02            [ 2] 1257 	sub	sp, #2
                           0003D6  1258 	C$stm8s_tim2.c$981$1_0$462 ==.
                                   1259 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
      009ADB C6 53 0F         [ 1] 1260 	ld	a, 0x530f
      009ADE 95               [ 1] 1261 	ld	xh, a
                           0003DA  1262 	C$stm8s_tim2.c$982$1_0$462 ==.
                                   1263 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
      009ADF C6 53 10         [ 1] 1264 	ld	a, 0x5310
                           0003DD  1265 	C$stm8s_tim2.c$984$1_0$462 ==.
                                   1266 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
      009AE2 97               [ 1] 1267 	ld	xl, a
      009AE3 4F               [ 1] 1268 	clr	a
                           0003DF  1269 	C$stm8s_tim2.c$985$1_0$462 ==.
                                   1270 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      009AE4 0F 02            [ 1] 1271 	clr	(0x02, sp)
      009AE6 89               [ 2] 1272 	pushw	x
      009AE7 1A 01            [ 1] 1273 	or	a, (1, sp)
      009AE9 85               [ 2] 1274 	popw	x
      009AEA 01               [ 1] 1275 	rrwa	x
      009AEB 1A 02            [ 1] 1276 	or	a, (0x02, sp)
      009AED 97               [ 1] 1277 	ld	xl, a
                           0003E9  1278 	C$stm8s_tim2.c$987$1_0$462 ==.
                                   1279 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
                           0003E9  1280 	C$stm8s_tim2.c$988$1_0$462 ==.
                                   1281 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 988: }
      009AEE 5B 02            [ 2] 1282 	addw	sp, #2
                           0003EB  1283 	C$stm8s_tim2.c$988$1_0$462 ==.
                           0003EB  1284 	XG$TIM2_GetCapture1$0$0 ==.
      009AF0 81               [ 4] 1285 	ret
                           0003EC  1286 	G$TIM2_GetCapture2$0$0 ==.
                           0003EC  1287 	C$stm8s_tim2.c$995$1_0$464 ==.
                                   1288 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function TIM2_GetCapture2
                                   1291 ;	-----------------------------------------
      009AF1                       1292 _TIM2_GetCapture2:
      009AF1 52 02            [ 2] 1293 	sub	sp, #2
                           0003EE  1294 	C$stm8s_tim2.c$1001$1_0$464 ==.
                                   1295 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
      009AF3 C6 53 11         [ 1] 1296 	ld	a, 0x5311
      009AF6 95               [ 1] 1297 	ld	xh, a
                           0003F2  1298 	C$stm8s_tim2.c$1002$1_0$464 ==.
                                   1299 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
      009AF7 C6 53 12         [ 1] 1300 	ld	a, 0x5312
                           0003F5  1301 	C$stm8s_tim2.c$1004$1_0$464 ==.
                                   1302 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
      009AFA 97               [ 1] 1303 	ld	xl, a
      009AFB 4F               [ 1] 1304 	clr	a
                           0003F7  1305 	C$stm8s_tim2.c$1005$1_0$464 ==.
                                   1306 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      009AFC 0F 02            [ 1] 1307 	clr	(0x02, sp)
      009AFE 89               [ 2] 1308 	pushw	x
      009AFF 1A 01            [ 1] 1309 	or	a, (1, sp)
      009B01 85               [ 2] 1310 	popw	x
      009B02 01               [ 1] 1311 	rrwa	x
      009B03 1A 02            [ 1] 1312 	or	a, (0x02, sp)
      009B05 97               [ 1] 1313 	ld	xl, a
                           000401  1314 	C$stm8s_tim2.c$1007$1_0$464 ==.
                                   1315 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
                           000401  1316 	C$stm8s_tim2.c$1008$1_0$464 ==.
                                   1317 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1008: }
      009B06 5B 02            [ 2] 1318 	addw	sp, #2
                           000403  1319 	C$stm8s_tim2.c$1008$1_0$464 ==.
                           000403  1320 	XG$TIM2_GetCapture2$0$0 ==.
      009B08 81               [ 4] 1321 	ret
                           000404  1322 	G$TIM2_GetCapture3$0$0 ==.
                           000404  1323 	C$stm8s_tim2.c$1015$1_0$466 ==.
                                   1324 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
                                   1325 ;	-----------------------------------------
                                   1326 ;	 function TIM2_GetCapture3
                                   1327 ;	-----------------------------------------
      009B09                       1328 _TIM2_GetCapture3:
      009B09 52 02            [ 2] 1329 	sub	sp, #2
                           000406  1330 	C$stm8s_tim2.c$1021$1_0$466 ==.
                                   1331 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
      009B0B C6 53 13         [ 1] 1332 	ld	a, 0x5313
      009B0E 95               [ 1] 1333 	ld	xh, a
                           00040A  1334 	C$stm8s_tim2.c$1022$1_0$466 ==.
                                   1335 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
      009B0F C6 53 14         [ 1] 1336 	ld	a, 0x5314
                           00040D  1337 	C$stm8s_tim2.c$1024$1_0$466 ==.
                                   1338 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
      009B12 97               [ 1] 1339 	ld	xl, a
      009B13 4F               [ 1] 1340 	clr	a
                           00040F  1341 	C$stm8s_tim2.c$1025$1_0$466 ==.
                                   1342 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      009B14 0F 02            [ 1] 1343 	clr	(0x02, sp)
      009B16 89               [ 2] 1344 	pushw	x
      009B17 1A 01            [ 1] 1345 	or	a, (1, sp)
      009B19 85               [ 2] 1346 	popw	x
      009B1A 01               [ 1] 1347 	rrwa	x
      009B1B 1A 02            [ 1] 1348 	or	a, (0x02, sp)
      009B1D 97               [ 1] 1349 	ld	xl, a
                           000419  1350 	C$stm8s_tim2.c$1027$1_0$466 ==.
                                   1351 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
                           000419  1352 	C$stm8s_tim2.c$1028$1_0$466 ==.
                                   1353 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1028: }
      009B1E 5B 02            [ 2] 1354 	addw	sp, #2
                           00041B  1355 	C$stm8s_tim2.c$1028$1_0$466 ==.
                           00041B  1356 	XG$TIM2_GetCapture3$0$0 ==.
      009B20 81               [ 4] 1357 	ret
                           00041C  1358 	G$TIM2_GetCounter$0$0 ==.
                           00041C  1359 	C$stm8s_tim2.c$1035$1_0$468 ==.
                                   1360 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
                                   1361 ;	-----------------------------------------
                                   1362 ;	 function TIM2_GetCounter
                                   1363 ;	-----------------------------------------
      009B21                       1364 _TIM2_GetCounter:
      009B21 52 04            [ 2] 1365 	sub	sp, #4
                           00041E  1366 	C$stm8s_tim2.c$1039$1_0$468 ==.
                                   1367 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
      009B23 C6 53 0A         [ 1] 1368 	ld	a, 0x530a
      009B26 95               [ 1] 1369 	ld	xh, a
      009B27 4F               [ 1] 1370 	clr	a
      009B28 6B 02            [ 1] 1371 	ld	(0x02, sp), a
                           000425  1372 	C$stm8s_tim2.c$1041$1_0$468 ==.
                                   1373 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
      009B2A C6 53 0B         [ 1] 1374 	ld	a, 0x530b
      009B2D 6B 04            [ 1] 1375 	ld	(0x04, sp), a
      009B2F 0F 03            [ 1] 1376 	clr	(0x03, sp)
      009B31 7B 02            [ 1] 1377 	ld	a, (0x02, sp)
      009B33 1A 04            [ 1] 1378 	or	a, (0x04, sp)
      009B35 02               [ 1] 1379 	rlwa	x
      009B36 1A 03            [ 1] 1380 	or	a, (0x03, sp)
      009B38 95               [ 1] 1381 	ld	xh, a
                           000434  1382 	C$stm8s_tim2.c$1042$1_0$468 ==.
                                   1383 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1042: }
      009B39 5B 04            [ 2] 1384 	addw	sp, #4
                           000436  1385 	C$stm8s_tim2.c$1042$1_0$468 ==.
                           000436  1386 	XG$TIM2_GetCounter$0$0 ==.
      009B3B 81               [ 4] 1387 	ret
                           000437  1388 	G$TIM2_GetPrescaler$0$0 ==.
                           000437  1389 	C$stm8s_tim2.c$1049$1_0$470 ==.
                                   1390 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
                                   1391 ;	-----------------------------------------
                                   1392 ;	 function TIM2_GetPrescaler
                                   1393 ;	-----------------------------------------
      009B3C                       1394 _TIM2_GetPrescaler:
                           000437  1395 	C$stm8s_tim2.c$1052$1_0$470 ==.
                                   1396 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
      009B3C C6 53 0C         [ 1] 1397 	ld	a, 0x530c
                           00043A  1398 	C$stm8s_tim2.c$1053$1_0$470 ==.
                                   1399 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1053: }
                           00043A  1400 	C$stm8s_tim2.c$1053$1_0$470 ==.
                           00043A  1401 	XG$TIM2_GetPrescaler$0$0 ==.
      009B3F 81               [ 4] 1402 	ret
                           00043B  1403 	G$TIM2_GetFlagStatus$0$0 ==.
                           00043B  1404 	C$stm8s_tim2.c$1068$1_0$472 ==.
                                   1405 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1406 ;	-----------------------------------------
                                   1407 ;	 function TIM2_GetFlagStatus
                                   1408 ;	-----------------------------------------
      009B40                       1409 _TIM2_GetFlagStatus:
      009B40 52 03            [ 2] 1410 	sub	sp, #3
                           00043D  1411 	C$stm8s_tim2.c$1076$1_0$472 ==.
                                   1412 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
      009B42 C6 53 02         [ 1] 1413 	ld	a, 0x5302
      009B45 6B 03            [ 1] 1414 	ld	(0x03, sp), a
      009B47 7B 07            [ 1] 1415 	ld	a, (0x07, sp)
      009B49 14 03            [ 1] 1416 	and	a, (0x03, sp)
      009B4B 6B 01            [ 1] 1417 	ld	(0x01, sp), a
                           000448  1418 	C$stm8s_tim2.c$1077$1_0$472 ==.
                                   1419 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
      009B4D 7B 06            [ 1] 1420 	ld	a, (0x06, sp)
      009B4F 6B 03            [ 1] 1421 	ld	(0x03, sp), a
      009B51 0F 02            [ 1] 1422 	clr	(0x02, sp)
                           00044E  1423 	C$stm8s_tim2.c$1079$1_0$472 ==.
                                   1424 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
      009B53 C6 53 03         [ 1] 1425 	ld	a, 0x5303
      009B56 14 03            [ 1] 1426 	and	a, (0x03, sp)
      009B58 1A 01            [ 1] 1427 	or	a, (0x01, sp)
      009B5A 27 04            [ 1] 1428 	jreq	00102$
                           000457  1429 	C$stm8s_tim2.c$1081$2_0$473 ==.
                                   1430 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1081: bitstatus = SET;
      009B5C A6 01            [ 1] 1431 	ld	a, #0x01
      009B5E 20 01            [ 2] 1432 	jra	00103$
      009B60                       1433 00102$:
                           00045B  1434 	C$stm8s_tim2.c$1085$2_0$474 ==.
                                   1435 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1085: bitstatus = RESET;
      009B60 4F               [ 1] 1436 	clr	a
      009B61                       1437 00103$:
                           00045C  1438 	C$stm8s_tim2.c$1087$1_0$472 ==.
                                   1439 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
                           00045C  1440 	C$stm8s_tim2.c$1088$1_0$472 ==.
                                   1441 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1088: }
      009B61 5B 03            [ 2] 1442 	addw	sp, #3
                           00045E  1443 	C$stm8s_tim2.c$1088$1_0$472 ==.
                           00045E  1444 	XG$TIM2_GetFlagStatus$0$0 ==.
      009B63 81               [ 4] 1445 	ret
                           00045F  1446 	G$TIM2_ClearFlag$0$0 ==.
                           00045F  1447 	C$stm8s_tim2.c$1103$1_0$476 ==.
                                   1448 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1449 ;	-----------------------------------------
                                   1450 ;	 function TIM2_ClearFlag
                                   1451 ;	-----------------------------------------
      009B64                       1452 _TIM2_ClearFlag:
                           00045F  1453 	C$stm8s_tim2.c$1109$1_0$476 ==.
                                   1454 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
      009B64 7B 04            [ 1] 1455 	ld	a, (0x04, sp)
      009B66 43               [ 1] 1456 	cpl	a
      009B67 C7 53 02         [ 1] 1457 	ld	0x5302, a
                           000465  1458 	C$stm8s_tim2.c$1111$1_0$476 ==.
                                   1459 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1111: TIM2->SR2 = (uint8_t)(~((uint8_t)(TIM2_FLAG >> 8))); // [Roshan, 2015-Nov-09]
      009B6A 7B 03            [ 1] 1460 	ld	a, (0x03, sp)
      009B6C 43               [ 1] 1461 	cpl	a
      009B6D C7 53 03         [ 1] 1462 	ld	0x5303, a
                           00046B  1463 	C$stm8s_tim2.c$1112$1_0$476 ==.
                                   1464 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1112: }
                           00046B  1465 	C$stm8s_tim2.c$1112$1_0$476 ==.
                           00046B  1466 	XG$TIM2_ClearFlag$0$0 ==.
      009B70 81               [ 4] 1467 	ret
                           00046C  1468 	G$TIM2_GetITStatus$0$0 ==.
                           00046C  1469 	C$stm8s_tim2.c$1124$1_0$478 ==.
                                   1470 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1124: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
                                   1471 ;	-----------------------------------------
                                   1472 ;	 function TIM2_GetITStatus
                                   1473 ;	-----------------------------------------
      009B71                       1474 _TIM2_GetITStatus:
      009B71 88               [ 1] 1475 	push	a
                           00046D  1476 	C$stm8s_tim2.c$1132$1_0$478 ==.
                                   1477 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1132: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
      009B72 C6 53 02         [ 1] 1478 	ld	a, 0x5302
      009B75 14 04            [ 1] 1479 	and	a, (0x04, sp)
      009B77 6B 01            [ 1] 1480 	ld	(0x01, sp), a
                           000474  1481 	C$stm8s_tim2.c$1134$1_0$478 ==.
                                   1482 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1134: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
      009B79 C6 53 01         [ 1] 1483 	ld	a, 0x5301
      009B7C 14 04            [ 1] 1484 	and	a, (0x04, sp)
                           000479  1485 	C$stm8s_tim2.c$1136$1_0$478 ==.
                                   1486 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1136: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
      009B7E 0D 01            [ 1] 1487 	tnz	(0x01, sp)
      009B80 27 07            [ 1] 1488 	jreq	00102$
      009B82 4D               [ 1] 1489 	tnz	a
      009B83 27 04            [ 1] 1490 	jreq	00102$
                           000480  1491 	C$stm8s_tim2.c$1138$2_0$479 ==.
                                   1492 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1138: bitstatus = SET;
      009B85 A6 01            [ 1] 1493 	ld	a, #0x01
      009B87 20 01            [ 2] 1494 	jra	00103$
      009B89                       1495 00102$:
                           000484  1496 	C$stm8s_tim2.c$1142$2_0$480 ==.
                                   1497 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1142: bitstatus = RESET;
      009B89 4F               [ 1] 1498 	clr	a
      009B8A                       1499 00103$:
                           000485  1500 	C$stm8s_tim2.c$1144$1_0$478 ==.
                                   1501 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1144: return (ITStatus)(bitstatus);
                           000485  1502 	C$stm8s_tim2.c$1145$1_0$478 ==.
                                   1503 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1145: }
      009B8A 5B 01            [ 2] 1504 	addw	sp, #1
                           000487  1505 	C$stm8s_tim2.c$1145$1_0$478 ==.
                           000487  1506 	XG$TIM2_GetITStatus$0$0 ==.
      009B8C 81               [ 4] 1507 	ret
                           000488  1508 	G$TIM2_ClearITPendingBit$0$0 ==.
                           000488  1509 	C$stm8s_tim2.c$1157$1_0$482 ==.
                                   1510 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1157: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
                                   1511 ;	-----------------------------------------
                                   1512 ;	 function TIM2_ClearITPendingBit
                                   1513 ;	-----------------------------------------
      009B8D                       1514 _TIM2_ClearITPendingBit:
                           000488  1515 	C$stm8s_tim2.c$1163$1_0$482 ==.
                                   1516 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1163: TIM2->SR1 = (uint8_t)(~TIM2_IT);
      009B8D 7B 03            [ 1] 1517 	ld	a, (0x03, sp)
      009B8F 43               [ 1] 1518 	cpl	a
      009B90 C7 53 02         [ 1] 1519 	ld	0x5302, a
                           00048E  1520 	C$stm8s_tim2.c$1164$1_0$482 ==.
                                   1521 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1164: }
                           00048E  1522 	C$stm8s_tim2.c$1164$1_0$482 ==.
                           00048E  1523 	XG$TIM2_ClearITPendingBit$0$0 ==.
      009B93 81               [ 4] 1524 	ret
                           00048F  1525 	Fstm8s_tim2$TI1_Config$0$0 ==.
                           00048F  1526 	C$stm8s_tim2.c$1182$1_0$484 ==.
                                   1527 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1182: static void TI1_Config(uint8_t TIM2_ICPolarity,
                                   1528 ;	-----------------------------------------
                                   1529 ;	 function TI1_Config
                                   1530 ;	-----------------------------------------
      009B94                       1531 _TI1_Config:
      009B94 88               [ 1] 1532 	push	a
                           000490  1533 	C$stm8s_tim2.c$1187$1_0$484 ==.
                                   1534 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1187: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      009B95 72 11 53 08      [ 1] 1535 	bres	21256, #0
                           000494  1536 	C$stm8s_tim2.c$1190$1_0$484 ==.
                                   1537 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1190: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
      009B99 C6 53 05         [ 1] 1538 	ld	a, 0x5305
      009B9C A4 0C            [ 1] 1539 	and	a, #0x0c
      009B9E 6B 01            [ 1] 1540 	ld	(0x01, sp), a
                           00049B  1541 	C$stm8s_tim2.c$1191$1_0$484 ==.
                                   1542 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1191: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      009BA0 7B 06            [ 1] 1543 	ld	a, (0x06, sp)
      009BA2 4E               [ 1] 1544 	swap	a
      009BA3 A4 F0            [ 1] 1545 	and	a, #0xf0
      009BA5 1A 05            [ 1] 1546 	or	a, (0x05, sp)
      009BA7 1A 01            [ 1] 1547 	or	a, (0x01, sp)
      009BA9 C7 53 05         [ 1] 1548 	ld	0x5305, a
                           0004A7  1549 	C$stm8s_tim2.c$1194$1_0$484 ==.
                                   1550 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1194: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      009BAC 0D 04            [ 1] 1551 	tnz	(0x04, sp)
      009BAE 27 06            [ 1] 1552 	jreq	00102$
                           0004AB  1553 	C$stm8s_tim2.c$1196$2_0$485 ==.
                                   1554 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1196: TIM2->CCER1 |= TIM2_CCER1_CC1P;
      009BB0 72 12 53 08      [ 1] 1555 	bset	21256, #1
      009BB4 20 04            [ 2] 1556 	jra	00103$
      009BB6                       1557 00102$:
                           0004B1  1558 	C$stm8s_tim2.c$1200$2_0$486 ==.
                                   1559 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1200: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      009BB6 72 13 53 08      [ 1] 1560 	bres	21256, #1
      009BBA                       1561 00103$:
                           0004B5  1562 	C$stm8s_tim2.c$1203$1_0$484 ==.
                                   1563 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1203: TIM2->CCER1 |= TIM2_CCER1_CC1E;
      009BBA 72 10 53 08      [ 1] 1564 	bset	21256, #0
                           0004B9  1565 	C$stm8s_tim2.c$1204$1_0$484 ==.
                                   1566 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1204: }
      009BBE 84               [ 1] 1567 	pop	a
                           0004BA  1568 	C$stm8s_tim2.c$1204$1_0$484 ==.
                           0004BA  1569 	XFstm8s_tim2$TI1_Config$0$0 ==.
      009BBF 81               [ 4] 1570 	ret
                           0004BB  1571 	Fstm8s_tim2$TI2_Config$0$0 ==.
                           0004BB  1572 	C$stm8s_tim2.c$1222$1_0$488 ==.
                                   1573 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1222: static void TI2_Config(uint8_t TIM2_ICPolarity,
                                   1574 ;	-----------------------------------------
                                   1575 ;	 function TI2_Config
                                   1576 ;	-----------------------------------------
      009BC0                       1577 _TI2_Config:
      009BC0 88               [ 1] 1578 	push	a
                           0004BC  1579 	C$stm8s_tim2.c$1227$1_0$488 ==.
                                   1580 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1227: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      009BC1 72 19 53 08      [ 1] 1581 	bres	21256, #4
                           0004C0  1582 	C$stm8s_tim2.c$1230$1_0$488 ==.
                                   1583 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1230: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
      009BC5 C6 53 06         [ 1] 1584 	ld	a, 0x5306
      009BC8 A4 0C            [ 1] 1585 	and	a, #0x0c
      009BCA 6B 01            [ 1] 1586 	ld	(0x01, sp), a
                           0004C7  1587 	C$stm8s_tim2.c$1231$1_0$488 ==.
                                   1588 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1231: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      009BCC 7B 06            [ 1] 1589 	ld	a, (0x06, sp)
      009BCE 4E               [ 1] 1590 	swap	a
      009BCF A4 F0            [ 1] 1591 	and	a, #0xf0
      009BD1 1A 05            [ 1] 1592 	or	a, (0x05, sp)
      009BD3 1A 01            [ 1] 1593 	or	a, (0x01, sp)
      009BD5 C7 53 06         [ 1] 1594 	ld	0x5306, a
                           0004D3  1595 	C$stm8s_tim2.c$1235$1_0$488 ==.
                                   1596 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1235: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      009BD8 0D 04            [ 1] 1597 	tnz	(0x04, sp)
      009BDA 27 06            [ 1] 1598 	jreq	00102$
                           0004D7  1599 	C$stm8s_tim2.c$1237$2_0$489 ==.
                                   1600 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1237: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      009BDC 72 1A 53 08      [ 1] 1601 	bset	21256, #5
      009BE0 20 04            [ 2] 1602 	jra	00103$
      009BE2                       1603 00102$:
                           0004DD  1604 	C$stm8s_tim2.c$1241$2_0$490 ==.
                                   1605 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1241: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      009BE2 72 1B 53 08      [ 1] 1606 	bres	21256, #5
      009BE6                       1607 00103$:
                           0004E1  1608 	C$stm8s_tim2.c$1245$1_0$488 ==.
                                   1609 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1245: TIM2->CCER1 |= TIM2_CCER1_CC2E;
      009BE6 72 18 53 08      [ 1] 1610 	bset	21256, #4
                           0004E5  1611 	C$stm8s_tim2.c$1246$1_0$488 ==.
                                   1612 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1246: }
      009BEA 84               [ 1] 1613 	pop	a
                           0004E6  1614 	C$stm8s_tim2.c$1246$1_0$488 ==.
                           0004E6  1615 	XFstm8s_tim2$TI2_Config$0$0 ==.
      009BEB 81               [ 4] 1616 	ret
                           0004E7  1617 	Fstm8s_tim2$TI3_Config$0$0 ==.
                           0004E7  1618 	C$stm8s_tim2.c$1262$1_0$492 ==.
                                   1619 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1262: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
                                   1620 ;	-----------------------------------------
                                   1621 ;	 function TI3_Config
                                   1622 ;	-----------------------------------------
      009BEC                       1623 _TI3_Config:
      009BEC 88               [ 1] 1624 	push	a
                           0004E8  1625 	C$stm8s_tim2.c$1266$1_0$492 ==.
                                   1626 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1266: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
      009BED 72 11 53 09      [ 1] 1627 	bres	21257, #0
                           0004EC  1628 	C$stm8s_tim2.c$1269$1_0$492 ==.
                                   1629 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1269: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF)))
      009BF1 C6 53 07         [ 1] 1630 	ld	a, 0x5307
      009BF4 A4 0C            [ 1] 1631 	and	a, #0x0c
      009BF6 6B 01            [ 1] 1632 	ld	(0x01, sp), a
                           0004F3  1633 	C$stm8s_tim2.c$1270$1_0$492 ==.
                                   1634 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1270: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      009BF8 7B 06            [ 1] 1635 	ld	a, (0x06, sp)
      009BFA 4E               [ 1] 1636 	swap	a
      009BFB A4 F0            [ 1] 1637 	and	a, #0xf0
      009BFD 1A 05            [ 1] 1638 	or	a, (0x05, sp)
      009BFF 1A 01            [ 1] 1639 	or	a, (0x01, sp)
      009C01 C7 53 07         [ 1] 1640 	ld	0x5307, a
                           0004FF  1641 	C$stm8s_tim2.c$1274$1_0$492 ==.
                                   1642 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1274: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      009C04 0D 04            [ 1] 1643 	tnz	(0x04, sp)
      009C06 27 06            [ 1] 1644 	jreq	00102$
                           000503  1645 	C$stm8s_tim2.c$1276$2_0$493 ==.
                                   1646 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1276: TIM2->CCER2 |= TIM2_CCER2_CC3P;
      009C08 72 12 53 09      [ 1] 1647 	bset	21257, #1
      009C0C 20 04            [ 2] 1648 	jra	00103$
      009C0E                       1649 00102$:
                           000509  1650 	C$stm8s_tim2.c$1280$2_0$494 ==.
                                   1651 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1280: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      009C0E 72 13 53 09      [ 1] 1652 	bres	21257, #1
      009C12                       1653 00103$:
                           00050D  1654 	C$stm8s_tim2.c$1283$1_0$492 ==.
                                   1655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1283: TIM2->CCER2 |= TIM2_CCER2_CC3E;
      009C12 72 10 53 09      [ 1] 1656 	bset	21257, #0
                           000511  1657 	C$stm8s_tim2.c$1284$1_0$492 ==.
                                   1658 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim2.c: 1284: }
      009C16 84               [ 1] 1659 	pop	a
                           000512  1660 	C$stm8s_tim2.c$1284$1_0$492 ==.
                           000512  1661 	XFstm8s_tim2$TI3_Config$0$0 ==.
      009C17 81               [ 4] 1662 	ret
                                   1663 	.area CODE
                                   1664 	.area CONST
                                   1665 	.area INITIALIZER
                                   1666 	.area CABS (ABS)
