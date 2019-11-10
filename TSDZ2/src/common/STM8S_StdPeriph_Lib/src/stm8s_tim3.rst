                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim3
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM3_DeInit
                                     12 	.globl _TIM3_TimeBaseInit
                                     13 	.globl _TIM3_OC1Init
                                     14 	.globl _TIM3_OC2Init
                                     15 	.globl _TIM3_ICInit
                                     16 	.globl _TIM3_PWMIConfig
                                     17 	.globl _TIM3_Cmd
                                     18 	.globl _TIM3_ITConfig
                                     19 	.globl _TIM3_UpdateDisableConfig
                                     20 	.globl _TIM3_UpdateRequestConfig
                                     21 	.globl _TIM3_SelectOnePulseMode
                                     22 	.globl _TIM3_PrescalerConfig
                                     23 	.globl _TIM3_ForcedOC1Config
                                     24 	.globl _TIM3_ForcedOC2Config
                                     25 	.globl _TIM3_ARRPreloadConfig
                                     26 	.globl _TIM3_OC1PreloadConfig
                                     27 	.globl _TIM3_OC2PreloadConfig
                                     28 	.globl _TIM3_GenerateEvent
                                     29 	.globl _TIM3_OC1PolarityConfig
                                     30 	.globl _TIM3_OC2PolarityConfig
                                     31 	.globl _TIM3_CCxCmd
                                     32 	.globl _TIM3_SelectOCxM
                                     33 	.globl _TIM3_SetCounter
                                     34 	.globl _TIM3_SetAutoreload
                                     35 	.globl _TIM3_SetCompare1
                                     36 	.globl _TIM3_SetCompare2
                                     37 	.globl _TIM3_SetIC1Prescaler
                                     38 	.globl _TIM3_SetIC2Prescaler
                                     39 	.globl _TIM3_GetCapture1
                                     40 	.globl _TIM3_GetCapture2
                                     41 	.globl _TIM3_GetCounter
                                     42 	.globl _TIM3_GetPrescaler
                                     43 	.globl _TIM3_GetFlagStatus
                                     44 	.globl _TIM3_ClearFlag
                                     45 	.globl _TIM3_GetITStatus
                                     46 	.globl _TIM3_ClearITPendingBit
                                     47 ;--------------------------------------------------------
                                     48 ; ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area DATA
                                     51 ;--------------------------------------------------------
                                     52 ; ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area INITIALIZED
                                     55 ;--------------------------------------------------------
                                     56 ; absolute external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area DABS (ABS)
                                     59 
                                     60 ; default segment ordering for linker
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area CONST
                                     65 	.area INITIALIZER
                                     66 	.area CODE
                                     67 
                                     68 ;--------------------------------------------------------
                                     69 ; global & static initialisations
                                     70 ;--------------------------------------------------------
                                     71 	.area HOME
                                     72 	.area GSINIT
                                     73 	.area GSFINAL
                                     74 	.area GSINIT
                                     75 ;--------------------------------------------------------
                                     76 ; Home
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME
                                     79 	.area HOME
                                     80 ;--------------------------------------------------------
                                     81 ; code
                                     82 ;--------------------------------------------------------
                                     83 	.area CODE
                           000000    84 	G$TIM3_DeInit$0$0 ==.
                           000000    85 	C$stm8s_tim3.c$51$0_0$348 ==.
                                     86 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 51: void TIM3_DeInit(void)
                                     87 ;	-----------------------------------------
                                     88 ;	 function TIM3_DeInit
                                     89 ;	-----------------------------------------
      009BD0                         90 _TIM3_DeInit:
                           000000    91 	C$stm8s_tim3.c$53$1_0$348 ==.
                                     92 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 53: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
      009BD0 35 00 53 20      [ 1]   93 	mov	0x5320+0, #0x00
                           000004    94 	C$stm8s_tim3.c$54$1_0$348 ==.
                                     95 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 54: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
      009BD4 35 00 53 21      [ 1]   96 	mov	0x5321+0, #0x00
                           000008    97 	C$stm8s_tim3.c$55$1_0$348 ==.
                                     98 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 55: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
      009BD8 35 00 53 23      [ 1]   99 	mov	0x5323+0, #0x00
                           00000C   100 	C$stm8s_tim3.c$58$1_0$348 ==.
                                    101 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 58: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      009BDC 35 00 53 27      [ 1]  102 	mov	0x5327+0, #0x00
                           000010   103 	C$stm8s_tim3.c$61$1_0$348 ==.
                                    104 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 61: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      009BE0 35 00 53 27      [ 1]  105 	mov	0x5327+0, #0x00
                           000014   106 	C$stm8s_tim3.c$62$1_0$348 ==.
                                    107 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 62: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
      009BE4 35 00 53 25      [ 1]  108 	mov	0x5325+0, #0x00
                           000018   109 	C$stm8s_tim3.c$63$1_0$348 ==.
                                    110 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 63: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
      009BE8 35 00 53 26      [ 1]  111 	mov	0x5326+0, #0x00
                           00001C   112 	C$stm8s_tim3.c$64$1_0$348 ==.
                                    113 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 64: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
      009BEC 35 00 53 28      [ 1]  114 	mov	0x5328+0, #0x00
                           000020   115 	C$stm8s_tim3.c$65$1_0$348 ==.
                                    116 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 65: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
      009BF0 35 00 53 29      [ 1]  117 	mov	0x5329+0, #0x00
                           000024   118 	C$stm8s_tim3.c$66$1_0$348 ==.
                                    119 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 66: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
      009BF4 35 00 53 2A      [ 1]  120 	mov	0x532a+0, #0x00
                           000028   121 	C$stm8s_tim3.c$67$1_0$348 ==.
                                    122 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 67: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
      009BF8 35 FF 53 2B      [ 1]  123 	mov	0x532b+0, #0xff
                           00002C   124 	C$stm8s_tim3.c$68$1_0$348 ==.
                                    125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 68: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
      009BFC 35 FF 53 2C      [ 1]  126 	mov	0x532c+0, #0xff
                           000030   127 	C$stm8s_tim3.c$69$1_0$348 ==.
                                    128 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 69: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
      009C00 35 00 53 2D      [ 1]  129 	mov	0x532d+0, #0x00
                           000034   130 	C$stm8s_tim3.c$70$1_0$348 ==.
                                    131 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 70: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
      009C04 35 00 53 2E      [ 1]  132 	mov	0x532e+0, #0x00
                           000038   133 	C$stm8s_tim3.c$71$1_0$348 ==.
                                    134 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 71: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
      009C08 35 00 53 2F      [ 1]  135 	mov	0x532f+0, #0x00
                           00003C   136 	C$stm8s_tim3.c$72$1_0$348 ==.
                                    137 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 72: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
      009C0C 35 00 53 30      [ 1]  138 	mov	0x5330+0, #0x00
                           000040   139 	C$stm8s_tim3.c$73$1_0$348 ==.
                                    140 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 73: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
      009C10 35 00 53 22      [ 1]  141 	mov	0x5322+0, #0x00
                           000044   142 	C$stm8s_tim3.c$74$1_0$348 ==.
                                    143 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 74: }
                           000044   144 	C$stm8s_tim3.c$74$1_0$348 ==.
                           000044   145 	XG$TIM3_DeInit$0$0 ==.
      009C14 81               [ 4]  146 	ret
                           000045   147 	G$TIM3_TimeBaseInit$0$0 ==.
                           000045   148 	C$stm8s_tim3.c$82$1_0$350 ==.
                                    149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 82: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
                                    150 ;	-----------------------------------------
                                    151 ;	 function TIM3_TimeBaseInit
                                    152 ;	-----------------------------------------
      009C15                        153 _TIM3_TimeBaseInit:
      009C15 52 02            [ 2]  154 	sub	sp, #2
                           000047   155 	C$stm8s_tim3.c$86$1_0$350 ==.
                                    156 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 86: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
      009C17 AE 53 2A         [ 2]  157 	ldw	x, #0x532a
      009C1A 7B 05            [ 1]  158 	ld	a, (0x05, sp)
      009C1C F7               [ 1]  159 	ld	(x), a
                           00004D   160 	C$stm8s_tim3.c$88$1_0$350 ==.
                                    161 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 88: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
      009C1D 7B 06            [ 1]  162 	ld	a, (0x06, sp)
      009C1F 0F 01            [ 1]  163 	clr	(0x01, sp)
      009C21 C7 53 2B         [ 1]  164 	ld	0x532b, a
                           000054   165 	C$stm8s_tim3.c$89$1_0$350 ==.
                                    166 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 89: TIM3->ARRL = (uint8_t)(TIM3_Period);
      009C24 7B 07            [ 1]  167 	ld	a, (0x07, sp)
      009C26 C7 53 2C         [ 1]  168 	ld	0x532c, a
                           000059   169 	C$stm8s_tim3.c$90$1_0$350 ==.
                                    170 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 90: }
      009C29 5B 02            [ 2]  171 	addw	sp, #2
                           00005B   172 	C$stm8s_tim3.c$90$1_0$350 ==.
                           00005B   173 	XG$TIM3_TimeBaseInit$0$0 ==.
      009C2B 81               [ 4]  174 	ret
                           00005C   175 	G$TIM3_OC1Init$0$0 ==.
                           00005C   176 	C$stm8s_tim3.c$100$1_0$352 ==.
                                    177 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 100: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    178 ;	-----------------------------------------
                                    179 ;	 function TIM3_OC1Init
                                    180 ;	-----------------------------------------
      009C2C                        181 _TIM3_OC1Init:
      009C2C 52 02            [ 2]  182 	sub	sp, #2
                           00005E   183 	C$stm8s_tim3.c$111$1_0$352 ==.
                                    184 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 111: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
      009C2E C6 53 27         [ 1]  185 	ld	a, 0x5327
      009C31 A4 FC            [ 1]  186 	and	a, #0xfc
      009C33 C7 53 27         [ 1]  187 	ld	0x5327, a
                           000066   188 	C$stm8s_tim3.c$113$1_0$352 ==.
                                    189 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 113: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
      009C36 C6 53 27         [ 1]  190 	ld	a, 0x5327
      009C39 6B 01            [ 1]  191 	ld	(0x01, sp), a
      009C3B 7B 06            [ 1]  192 	ld	a, (0x06, sp)
      009C3D A4 01            [ 1]  193 	and	a, #0x01
      009C3F 6B 02            [ 1]  194 	ld	(0x02, sp), a
      009C41 7B 09            [ 1]  195 	ld	a, (0x09, sp)
      009C43 A4 02            [ 1]  196 	and	a, #0x02
      009C45 1A 02            [ 1]  197 	or	a, (0x02, sp)
      009C47 1A 01            [ 1]  198 	or	a, (0x01, sp)
      009C49 C7 53 27         [ 1]  199 	ld	0x5327, a
                           00007C   200 	C$stm8s_tim3.c$116$1_0$352 ==.
                                    201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 116: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009C4C C6 53 25         [ 1]  202 	ld	a, 0x5325
      009C4F A4 8F            [ 1]  203 	and	a, #0x8f
      009C51 1A 05            [ 1]  204 	or	a, (0x05, sp)
      009C53 C7 53 25         [ 1]  205 	ld	0x5325, a
                           000086   206 	C$stm8s_tim3.c$119$1_0$352 ==.
                                    207 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 119: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
      009C56 7B 07            [ 1]  208 	ld	a, (0x07, sp)
      009C58 C7 53 2D         [ 1]  209 	ld	0x532d, a
                           00008B   210 	C$stm8s_tim3.c$120$1_0$352 ==.
                                    211 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 120: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
      009C5B 7B 08            [ 1]  212 	ld	a, (0x08, sp)
      009C5D C7 53 2E         [ 1]  213 	ld	0x532e, a
                           000090   214 	C$stm8s_tim3.c$121$1_0$352 ==.
                                    215 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 121: }
      009C60 5B 02            [ 2]  216 	addw	sp, #2
                           000092   217 	C$stm8s_tim3.c$121$1_0$352 ==.
                           000092   218 	XG$TIM3_OC1Init$0$0 ==.
      009C62 81               [ 4]  219 	ret
                           000093   220 	G$TIM3_OC2Init$0$0 ==.
                           000093   221 	C$stm8s_tim3.c$131$1_0$354 ==.
                                    222 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 131: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    223 ;	-----------------------------------------
                                    224 ;	 function TIM3_OC2Init
                                    225 ;	-----------------------------------------
      009C63                        226 _TIM3_OC2Init:
      009C63 52 02            [ 2]  227 	sub	sp, #2
                           000095   228 	C$stm8s_tim3.c$143$1_0$354 ==.
                                    229 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 143: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
      009C65 C6 53 27         [ 1]  230 	ld	a, 0x5327
      009C68 A4 CF            [ 1]  231 	and	a, #0xcf
      009C6A C7 53 27         [ 1]  232 	ld	0x5327, a
                           00009D   233 	C$stm8s_tim3.c$145$1_0$354 ==.
                                    234 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 145: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
      009C6D C6 53 27         [ 1]  235 	ld	a, 0x5327
      009C70 6B 02            [ 1]  236 	ld	(0x02, sp), a
      009C72 7B 06            [ 1]  237 	ld	a, (0x06, sp)
      009C74 A4 10            [ 1]  238 	and	a, #0x10
      009C76 6B 01            [ 1]  239 	ld	(0x01, sp), a
      009C78 7B 09            [ 1]  240 	ld	a, (0x09, sp)
      009C7A A4 20            [ 1]  241 	and	a, #0x20
      009C7C 1A 01            [ 1]  242 	or	a, (0x01, sp)
      009C7E 1A 02            [ 1]  243 	or	a, (0x02, sp)
      009C80 C7 53 27         [ 1]  244 	ld	0x5327, a
                           0000B3   245 	C$stm8s_tim3.c$149$1_0$354 ==.
                                    246 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 149: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009C83 C6 53 26         [ 1]  247 	ld	a, 0x5326
      009C86 A4 8F            [ 1]  248 	and	a, #0x8f
      009C88 1A 05            [ 1]  249 	or	a, (0x05, sp)
      009C8A C7 53 26         [ 1]  250 	ld	0x5326, a
                           0000BD   251 	C$stm8s_tim3.c$153$1_0$354 ==.
                                    252 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 153: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
      009C8D 7B 07            [ 1]  253 	ld	a, (0x07, sp)
      009C8F C7 53 2F         [ 1]  254 	ld	0x532f, a
                           0000C2   255 	C$stm8s_tim3.c$154$1_0$354 ==.
                                    256 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 154: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
      009C92 7B 08            [ 1]  257 	ld	a, (0x08, sp)
      009C94 C7 53 30         [ 1]  258 	ld	0x5330, a
                           0000C7   259 	C$stm8s_tim3.c$155$1_0$354 ==.
                                    260 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 155: }
      009C97 5B 02            [ 2]  261 	addw	sp, #2
                           0000C9   262 	C$stm8s_tim3.c$155$1_0$354 ==.
                           0000C9   263 	XG$TIM3_OC2Init$0$0 ==.
      009C99 81               [ 4]  264 	ret
                           0000CA   265 	G$TIM3_ICInit$0$0 ==.
                           0000CA   266 	C$stm8s_tim3.c$166$1_0$356 ==.
                                    267 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 166: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
                                    268 ;	-----------------------------------------
                                    269 ;	 function TIM3_ICInit
                                    270 ;	-----------------------------------------
      009C9A                        271 _TIM3_ICInit:
                           0000CA   272 	C$stm8s_tim3.c$179$1_0$356 ==.
                                    273 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 179: if (TIM3_Channel != TIM3_CHANNEL_2)
      009C9A 7B 03            [ 1]  274 	ld	a, (0x03, sp)
      009C9C 4A               [ 1]  275 	dec	a
      009C9D 27 17            [ 1]  276 	jreq	00102$
                           0000CF   277 	C$stm8s_tim3.c$182$2_0$357 ==.
                                    278 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 182: TI1_Config((uint8_t)TIM3_ICPolarity,
      009C9F 7B 07            [ 1]  279 	ld	a, (0x07, sp)
      009CA1 88               [ 1]  280 	push	a
      009CA2 7B 06            [ 1]  281 	ld	a, (0x06, sp)
      009CA4 88               [ 1]  282 	push	a
      009CA5 7B 06            [ 1]  283 	ld	a, (0x06, sp)
      009CA7 88               [ 1]  284 	push	a
      009CA8 CD 9F 5B         [ 4]  285 	call	_TI1_Config
      009CAB 5B 03            [ 2]  286 	addw	sp, #3
                           0000DD   287 	C$stm8s_tim3.c$187$2_0$357 ==.
                                    288 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 187: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      009CAD 7B 06            [ 1]  289 	ld	a, (0x06, sp)
      009CAF 88               [ 1]  290 	push	a
      009CB0 CD 9E A2         [ 4]  291 	call	_TIM3_SetIC1Prescaler
      009CB3 84               [ 1]  292 	pop	a
      009CB4 20 15            [ 2]  293 	jra	00104$
      009CB6                        294 00102$:
                           0000E6   295 	C$stm8s_tim3.c$192$2_0$358 ==.
                                    296 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 192: TI2_Config((uint8_t)TIM3_ICPolarity,
      009CB6 7B 07            [ 1]  297 	ld	a, (0x07, sp)
      009CB8 88               [ 1]  298 	push	a
      009CB9 7B 06            [ 1]  299 	ld	a, (0x06, sp)
      009CBB 88               [ 1]  300 	push	a
      009CBC 7B 06            [ 1]  301 	ld	a, (0x06, sp)
      009CBE 88               [ 1]  302 	push	a
      009CBF CD 9F 87         [ 4]  303 	call	_TI2_Config
      009CC2 5B 03            [ 2]  304 	addw	sp, #3
                           0000F4   305 	C$stm8s_tim3.c$197$2_0$358 ==.
                                    306 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 197: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      009CC4 7B 06            [ 1]  307 	ld	a, (0x06, sp)
      009CC6 88               [ 1]  308 	push	a
      009CC7 CD 9E AD         [ 4]  309 	call	_TIM3_SetIC2Prescaler
      009CCA 84               [ 1]  310 	pop	a
      009CCB                        311 00104$:
                           0000FB   312 	C$stm8s_tim3.c$199$1_0$356 ==.
                                    313 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 199: }
                           0000FB   314 	C$stm8s_tim3.c$199$1_0$356 ==.
                           0000FB   315 	XG$TIM3_ICInit$0$0 ==.
      009CCB 81               [ 4]  316 	ret
                           0000FC   317 	G$TIM3_PWMIConfig$0$0 ==.
                           0000FC   318 	C$stm8s_tim3.c$210$1_0$360 ==.
                                    319 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 210: void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
                                    320 ;	-----------------------------------------
                                    321 ;	 function TIM3_PWMIConfig
                                    322 ;	-----------------------------------------
      009CCC                        323 _TIM3_PWMIConfig:
      009CCC 52 02            [ 2]  324 	sub	sp, #2
                           0000FE   325 	C$stm8s_tim3.c$226$1_0$360 ==.
                                    326 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 226: if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
      009CCE 7B 06            [ 1]  327 	ld	a, (0x06, sp)
      009CD0 A1 44            [ 1]  328 	cp	a, #0x44
      009CD2 27 06            [ 1]  329 	jreq	00102$
                           000104   330 	C$stm8s_tim3.c$228$2_0$361 ==.
                                    331 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 228: icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
      009CD4 A6 44            [ 1]  332 	ld	a, #0x44
      009CD6 6B 02            [ 1]  333 	ld	(0x02, sp), a
      009CD8 20 02            [ 2]  334 	jra	00103$
      009CDA                        335 00102$:
                           00010A   336 	C$stm8s_tim3.c$232$2_0$362 ==.
                                    337 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 232: icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
      009CDA 0F 02            [ 1]  338 	clr	(0x02, sp)
      009CDC                        339 00103$:
                           00010C   340 	C$stm8s_tim3.c$236$1_0$360 ==.
                                    341 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 236: if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
      009CDC 7B 07            [ 1]  342 	ld	a, (0x07, sp)
      009CDE 4A               [ 1]  343 	dec	a
      009CDF 26 06            [ 1]  344 	jrne	00105$
                           000111   345 	C$stm8s_tim3.c$238$2_0$363 ==.
                                    346 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 238: icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
      009CE1 A6 02            [ 1]  347 	ld	a, #0x02
      009CE3 6B 01            [ 1]  348 	ld	(0x01, sp), a
      009CE5 20 04            [ 2]  349 	jra	00106$
      009CE7                        350 00105$:
                           000117   351 	C$stm8s_tim3.c$242$2_0$364 ==.
                                    352 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 242: icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
      009CE7 A6 01            [ 1]  353 	ld	a, #0x01
      009CE9 6B 01            [ 1]  354 	ld	(0x01, sp), a
      009CEB                        355 00106$:
                           00011B   356 	C$stm8s_tim3.c$245$1_0$360 ==.
                                    357 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 245: if (TIM3_Channel != TIM3_CHANNEL_2)
      009CEB 7B 05            [ 1]  358 	ld	a, (0x05, sp)
      009CED 4A               [ 1]  359 	dec	a
      009CEE 27 2C            [ 1]  360 	jreq	00108$
                           000120   361 	C$stm8s_tim3.c$248$2_0$365 ==.
                                    362 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 248: TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      009CF0 7B 09            [ 1]  363 	ld	a, (0x09, sp)
      009CF2 88               [ 1]  364 	push	a
      009CF3 7B 08            [ 1]  365 	ld	a, (0x08, sp)
      009CF5 88               [ 1]  366 	push	a
      009CF6 7B 08            [ 1]  367 	ld	a, (0x08, sp)
      009CF8 88               [ 1]  368 	push	a
      009CF9 CD 9F 5B         [ 4]  369 	call	_TI1_Config
      009CFC 5B 03            [ 2]  370 	addw	sp, #3
                           00012E   371 	C$stm8s_tim3.c$252$2_0$365 ==.
                                    372 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 252: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      009CFE 7B 08            [ 1]  373 	ld	a, (0x08, sp)
      009D00 88               [ 1]  374 	push	a
      009D01 CD 9E A2         [ 4]  375 	call	_TIM3_SetIC1Prescaler
      009D04 84               [ 1]  376 	pop	a
                           000135   377 	C$stm8s_tim3.c$255$2_0$365 ==.
                                    378 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 255: TI2_Config(icpolarity, icselection, TIM3_ICFilter);
      009D05 7B 09            [ 1]  379 	ld	a, (0x09, sp)
      009D07 88               [ 1]  380 	push	a
      009D08 7B 02            [ 1]  381 	ld	a, (0x02, sp)
      009D0A 88               [ 1]  382 	push	a
      009D0B 7B 04            [ 1]  383 	ld	a, (0x04, sp)
      009D0D 88               [ 1]  384 	push	a
      009D0E CD 9F 87         [ 4]  385 	call	_TI2_Config
      009D11 5B 03            [ 2]  386 	addw	sp, #3
                           000143   387 	C$stm8s_tim3.c$258$2_0$365 ==.
                                    388 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 258: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      009D13 7B 08            [ 1]  389 	ld	a, (0x08, sp)
      009D15 88               [ 1]  390 	push	a
      009D16 CD 9E AD         [ 4]  391 	call	_TIM3_SetIC2Prescaler
      009D19 84               [ 1]  392 	pop	a
      009D1A 20 2A            [ 2]  393 	jra	00110$
      009D1C                        394 00108$:
                           00014C   395 	C$stm8s_tim3.c$263$2_0$366 ==.
                                    396 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 263: TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      009D1C 7B 09            [ 1]  397 	ld	a, (0x09, sp)
      009D1E 88               [ 1]  398 	push	a
      009D1F 7B 08            [ 1]  399 	ld	a, (0x08, sp)
      009D21 88               [ 1]  400 	push	a
      009D22 7B 08            [ 1]  401 	ld	a, (0x08, sp)
      009D24 88               [ 1]  402 	push	a
      009D25 CD 9F 87         [ 4]  403 	call	_TI2_Config
      009D28 5B 03            [ 2]  404 	addw	sp, #3
                           00015A   405 	C$stm8s_tim3.c$267$2_0$366 ==.
                                    406 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 267: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      009D2A 7B 08            [ 1]  407 	ld	a, (0x08, sp)
      009D2C 88               [ 1]  408 	push	a
      009D2D CD 9E AD         [ 4]  409 	call	_TIM3_SetIC2Prescaler
      009D30 84               [ 1]  410 	pop	a
                           000161   411 	C$stm8s_tim3.c$270$2_0$366 ==.
                                    412 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 270: TI1_Config(icpolarity, icselection, TIM3_ICFilter);
      009D31 7B 09            [ 1]  413 	ld	a, (0x09, sp)
      009D33 88               [ 1]  414 	push	a
      009D34 7B 02            [ 1]  415 	ld	a, (0x02, sp)
      009D36 88               [ 1]  416 	push	a
      009D37 7B 04            [ 1]  417 	ld	a, (0x04, sp)
      009D39 88               [ 1]  418 	push	a
      009D3A CD 9F 5B         [ 4]  419 	call	_TI1_Config
      009D3D 5B 03            [ 2]  420 	addw	sp, #3
                           00016F   421 	C$stm8s_tim3.c$273$2_0$366 ==.
                                    422 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 273: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      009D3F 7B 08            [ 1]  423 	ld	a, (0x08, sp)
      009D41 88               [ 1]  424 	push	a
      009D42 CD 9E A2         [ 4]  425 	call	_TIM3_SetIC1Prescaler
      009D45 84               [ 1]  426 	pop	a
      009D46                        427 00110$:
                           000176   428 	C$stm8s_tim3.c$275$1_0$360 ==.
                                    429 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 275: }
      009D46 5B 02            [ 2]  430 	addw	sp, #2
                           000178   431 	C$stm8s_tim3.c$275$1_0$360 ==.
                           000178   432 	XG$TIM3_PWMIConfig$0$0 ==.
      009D48 81               [ 4]  433 	ret
                           000179   434 	G$TIM3_Cmd$0$0 ==.
                           000179   435 	C$stm8s_tim3.c$283$1_0$368 ==.
                                    436 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 283: void TIM3_Cmd(FunctionalState NewState)
                                    437 ;	-----------------------------------------
                                    438 ;	 function TIM3_Cmd
                                    439 ;	-----------------------------------------
      009D49                        440 _TIM3_Cmd:
                           000179   441 	C$stm8s_tim3.c$289$1_0$368 ==.
                                    442 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 289: if (NewState != DISABLE)
      009D49 0D 03            [ 1]  443 	tnz	(0x03, sp)
      009D4B 27 06            [ 1]  444 	jreq	00102$
                           00017D   445 	C$stm8s_tim3.c$291$2_0$369 ==.
                                    446 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
      009D4D 72 10 53 20      [ 1]  447 	bset	21280, #0
      009D51 20 04            [ 2]  448 	jra	00104$
      009D53                        449 00102$:
                           000183   450 	C$stm8s_tim3.c$295$2_0$370 ==.
                                    451 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 295: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
      009D53 72 11 53 20      [ 1]  452 	bres	21280, #0
      009D57                        453 00104$:
                           000187   454 	C$stm8s_tim3.c$297$1_0$368 ==.
                                    455 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 297: }
                           000187   456 	C$stm8s_tim3.c$297$1_0$368 ==.
                           000187   457 	XG$TIM3_Cmd$0$0 ==.
      009D57 81               [ 4]  458 	ret
                           000188   459 	G$TIM3_ITConfig$0$0 ==.
                           000188   460 	C$stm8s_tim3.c$311$1_0$372 ==.
                                    461 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 311: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
                                    462 ;	-----------------------------------------
                                    463 ;	 function TIM3_ITConfig
                                    464 ;	-----------------------------------------
      009D58                        465 _TIM3_ITConfig:
      009D58 88               [ 1]  466 	push	a
                           000189   467 	C$stm8s_tim3.c$317$1_0$372 ==.
                                    468 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 317: if (NewState != DISABLE)
      009D59 0D 05            [ 1]  469 	tnz	(0x05, sp)
      009D5B 27 0A            [ 1]  470 	jreq	00102$
                           00018D   471 	C$stm8s_tim3.c$320$2_0$373 ==.
                                    472 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
      009D5D C6 53 21         [ 1]  473 	ld	a, 0x5321
      009D60 1A 04            [ 1]  474 	or	a, (0x04, sp)
      009D62 C7 53 21         [ 1]  475 	ld	0x5321, a
      009D65 20 0D            [ 2]  476 	jra	00104$
      009D67                        477 00102$:
                           000197   478 	C$stm8s_tim3.c$325$2_0$374 ==.
                                    479 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 325: TIM3->IER &= (uint8_t)(~TIM3_IT);
      009D67 C6 53 21         [ 1]  480 	ld	a, 0x5321
      009D6A 6B 01            [ 1]  481 	ld	(0x01, sp), a
      009D6C 7B 04            [ 1]  482 	ld	a, (0x04, sp)
      009D6E 43               [ 1]  483 	cpl	a
      009D6F 14 01            [ 1]  484 	and	a, (0x01, sp)
      009D71 C7 53 21         [ 1]  485 	ld	0x5321, a
      009D74                        486 00104$:
                           0001A4   487 	C$stm8s_tim3.c$327$1_0$372 ==.
                                    488 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 327: }
      009D74 84               [ 1]  489 	pop	a
                           0001A5   490 	C$stm8s_tim3.c$327$1_0$372 ==.
                           0001A5   491 	XG$TIM3_ITConfig$0$0 ==.
      009D75 81               [ 4]  492 	ret
                           0001A6   493 	G$TIM3_UpdateDisableConfig$0$0 ==.
                           0001A6   494 	C$stm8s_tim3.c$335$1_0$376 ==.
                                    495 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 335: void TIM3_UpdateDisableConfig(FunctionalState NewState)
                                    496 ;	-----------------------------------------
                                    497 ;	 function TIM3_UpdateDisableConfig
                                    498 ;	-----------------------------------------
      009D76                        499 _TIM3_UpdateDisableConfig:
                           0001A6   500 	C$stm8s_tim3.c$341$1_0$376 ==.
                                    501 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 341: if (NewState != DISABLE)
      009D76 0D 03            [ 1]  502 	tnz	(0x03, sp)
      009D78 27 06            [ 1]  503 	jreq	00102$
                           0001AA   504 	C$stm8s_tim3.c$343$2_0$377 ==.
                                    505 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
      009D7A 72 12 53 20      [ 1]  506 	bset	21280, #1
      009D7E 20 04            [ 2]  507 	jra	00104$
      009D80                        508 00102$:
                           0001B0   509 	C$stm8s_tim3.c$347$2_0$378 ==.
                                    510 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 347: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
      009D80 72 13 53 20      [ 1]  511 	bres	21280, #1
      009D84                        512 00104$:
                           0001B4   513 	C$stm8s_tim3.c$349$1_0$376 ==.
                                    514 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 349: }
                           0001B4   515 	C$stm8s_tim3.c$349$1_0$376 ==.
                           0001B4   516 	XG$TIM3_UpdateDisableConfig$0$0 ==.
      009D84 81               [ 4]  517 	ret
                           0001B5   518 	G$TIM3_UpdateRequestConfig$0$0 ==.
                           0001B5   519 	C$stm8s_tim3.c$359$1_0$380 ==.
                                    520 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 359: void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
                                    521 ;	-----------------------------------------
                                    522 ;	 function TIM3_UpdateRequestConfig
                                    523 ;	-----------------------------------------
      009D85                        524 _TIM3_UpdateRequestConfig:
                           0001B5   525 	C$stm8s_tim3.c$365$1_0$380 ==.
                                    526 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 365: if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
      009D85 0D 03            [ 1]  527 	tnz	(0x03, sp)
      009D87 27 06            [ 1]  528 	jreq	00102$
                           0001B9   529 	C$stm8s_tim3.c$367$2_0$381 ==.
                                    530 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
      009D89 72 14 53 20      [ 1]  531 	bset	21280, #2
      009D8D 20 04            [ 2]  532 	jra	00104$
      009D8F                        533 00102$:
                           0001BF   534 	C$stm8s_tim3.c$371$2_0$382 ==.
                                    535 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 371: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
      009D8F 72 15 53 20      [ 1]  536 	bres	21280, #2
      009D93                        537 00104$:
                           0001C3   538 	C$stm8s_tim3.c$373$1_0$380 ==.
                                    539 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 373: }
                           0001C3   540 	C$stm8s_tim3.c$373$1_0$380 ==.
                           0001C3   541 	XG$TIM3_UpdateRequestConfig$0$0 ==.
      009D93 81               [ 4]  542 	ret
                           0001C4   543 	G$TIM3_SelectOnePulseMode$0$0 ==.
                           0001C4   544 	C$stm8s_tim3.c$383$1_0$384 ==.
                                    545 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 383: void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
                                    546 ;	-----------------------------------------
                                    547 ;	 function TIM3_SelectOnePulseMode
                                    548 ;	-----------------------------------------
      009D94                        549 _TIM3_SelectOnePulseMode:
                           0001C4   550 	C$stm8s_tim3.c$389$1_0$384 ==.
                                    551 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 389: if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
      009D94 0D 03            [ 1]  552 	tnz	(0x03, sp)
      009D96 27 06            [ 1]  553 	jreq	00102$
                           0001C8   554 	C$stm8s_tim3.c$391$2_0$385 ==.
                                    555 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
      009D98 72 16 53 20      [ 1]  556 	bset	21280, #3
      009D9C 20 04            [ 2]  557 	jra	00104$
      009D9E                        558 00102$:
                           0001CE   559 	C$stm8s_tim3.c$395$2_0$386 ==.
                                    560 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 395: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
      009D9E 72 17 53 20      [ 1]  561 	bres	21280, #3
      009DA2                        562 00104$:
                           0001D2   563 	C$stm8s_tim3.c$397$1_0$384 ==.
                                    564 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 397: }
                           0001D2   565 	C$stm8s_tim3.c$397$1_0$384 ==.
                           0001D2   566 	XG$TIM3_SelectOnePulseMode$0$0 ==.
      009DA2 81               [ 4]  567 	ret
                           0001D3   568 	G$TIM3_PrescalerConfig$0$0 ==.
                           0001D3   569 	C$stm8s_tim3.c$427$1_0$388 ==.
                                    570 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 427: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
                                    571 ;	-----------------------------------------
                                    572 ;	 function TIM3_PrescalerConfig
                                    573 ;	-----------------------------------------
      009DA3                        574 _TIM3_PrescalerConfig:
                           0001D3   575 	C$stm8s_tim3.c$435$1_0$388 ==.
                                    576 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 435: TIM3->PSCR = (uint8_t)Prescaler;
      009DA3 AE 53 2A         [ 2]  577 	ldw	x, #0x532a
      009DA6 7B 03            [ 1]  578 	ld	a, (0x03, sp)
      009DA8 F7               [ 1]  579 	ld	(x), a
                           0001D9   580 	C$stm8s_tim3.c$438$1_0$388 ==.
                                    581 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 438: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
      009DA9 AE 53 24         [ 2]  582 	ldw	x, #0x5324
      009DAC 7B 04            [ 1]  583 	ld	a, (0x04, sp)
      009DAE F7               [ 1]  584 	ld	(x), a
                           0001DF   585 	C$stm8s_tim3.c$439$1_0$388 ==.
                                    586 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 439: }
                           0001DF   587 	C$stm8s_tim3.c$439$1_0$388 ==.
                           0001DF   588 	XG$TIM3_PrescalerConfig$0$0 ==.
      009DAF 81               [ 4]  589 	ret
                           0001E0   590 	G$TIM3_ForcedOC1Config$0$0 ==.
                           0001E0   591 	C$stm8s_tim3.c$450$1_0$390 ==.
                                    592 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 450: void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    593 ;	-----------------------------------------
                                    594 ;	 function TIM3_ForcedOC1Config
                                    595 ;	-----------------------------------------
      009DB0                        596 _TIM3_ForcedOC1Config:
                           0001E0   597 	C$stm8s_tim3.c$456$1_0$390 ==.
                                    598 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 456: TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
      009DB0 C6 53 25         [ 1]  599 	ld	a, 0x5325
      009DB3 A4 8F            [ 1]  600 	and	a, #0x8f
      009DB5 1A 03            [ 1]  601 	or	a, (0x03, sp)
      009DB7 C7 53 25         [ 1]  602 	ld	0x5325, a
                           0001EA   603 	C$stm8s_tim3.c$457$1_0$390 ==.
                                    604 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 457: }
                           0001EA   605 	C$stm8s_tim3.c$457$1_0$390 ==.
                           0001EA   606 	XG$TIM3_ForcedOC1Config$0$0 ==.
      009DBA 81               [ 4]  607 	ret
                           0001EB   608 	G$TIM3_ForcedOC2Config$0$0 ==.
                           0001EB   609 	C$stm8s_tim3.c$468$1_0$392 ==.
                                    610 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 468: void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    611 ;	-----------------------------------------
                                    612 ;	 function TIM3_ForcedOC2Config
                                    613 ;	-----------------------------------------
      009DBB                        614 _TIM3_ForcedOC2Config:
                           0001EB   615 	C$stm8s_tim3.c$474$1_0$392 ==.
                                    616 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 474: TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
      009DBB C6 53 26         [ 1]  617 	ld	a, 0x5326
      009DBE A4 8F            [ 1]  618 	and	a, #0x8f
      009DC0 1A 03            [ 1]  619 	or	a, (0x03, sp)
      009DC2 C7 53 26         [ 1]  620 	ld	0x5326, a
                           0001F5   621 	C$stm8s_tim3.c$475$1_0$392 ==.
                                    622 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 475: }
                           0001F5   623 	C$stm8s_tim3.c$475$1_0$392 ==.
                           0001F5   624 	XG$TIM3_ForcedOC2Config$0$0 ==.
      009DC5 81               [ 4]  625 	ret
                           0001F6   626 	G$TIM3_ARRPreloadConfig$0$0 ==.
                           0001F6   627 	C$stm8s_tim3.c$483$1_0$394 ==.
                                    628 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 483: void TIM3_ARRPreloadConfig(FunctionalState NewState)
                                    629 ;	-----------------------------------------
                                    630 ;	 function TIM3_ARRPreloadConfig
                                    631 ;	-----------------------------------------
      009DC6                        632 _TIM3_ARRPreloadConfig:
                           0001F6   633 	C$stm8s_tim3.c$489$1_0$394 ==.
                                    634 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 489: if (NewState != DISABLE)
      009DC6 0D 03            [ 1]  635 	tnz	(0x03, sp)
      009DC8 27 06            [ 1]  636 	jreq	00102$
                           0001FA   637 	C$stm8s_tim3.c$491$2_0$395 ==.
                                    638 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
      009DCA 72 1E 53 20      [ 1]  639 	bset	21280, #7
      009DCE 20 04            [ 2]  640 	jra	00104$
      009DD0                        641 00102$:
                           000200   642 	C$stm8s_tim3.c$495$2_0$396 ==.
                                    643 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 495: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
      009DD0 72 1F 53 20      [ 1]  644 	bres	21280, #7
      009DD4                        645 00104$:
                           000204   646 	C$stm8s_tim3.c$497$1_0$394 ==.
                                    647 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 497: }
                           000204   648 	C$stm8s_tim3.c$497$1_0$394 ==.
                           000204   649 	XG$TIM3_ARRPreloadConfig$0$0 ==.
      009DD4 81               [ 4]  650 	ret
                           000205   651 	G$TIM3_OC1PreloadConfig$0$0 ==.
                           000205   652 	C$stm8s_tim3.c$505$1_0$398 ==.
                                    653 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 505: void TIM3_OC1PreloadConfig(FunctionalState NewState)
                                    654 ;	-----------------------------------------
                                    655 ;	 function TIM3_OC1PreloadConfig
                                    656 ;	-----------------------------------------
      009DD5                        657 _TIM3_OC1PreloadConfig:
                           000205   658 	C$stm8s_tim3.c$511$1_0$398 ==.
                                    659 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 511: if (NewState != DISABLE)
      009DD5 0D 03            [ 1]  660 	tnz	(0x03, sp)
      009DD7 27 06            [ 1]  661 	jreq	00102$
                           000209   662 	C$stm8s_tim3.c$513$2_0$399 ==.
                                    663 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
      009DD9 72 16 53 25      [ 1]  664 	bset	21285, #3
      009DDD 20 04            [ 2]  665 	jra	00104$
      009DDF                        666 00102$:
                           00020F   667 	C$stm8s_tim3.c$517$2_0$400 ==.
                                    668 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 517: TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      009DDF 72 17 53 25      [ 1]  669 	bres	21285, #3
      009DE3                        670 00104$:
                           000213   671 	C$stm8s_tim3.c$519$1_0$398 ==.
                                    672 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 519: }
                           000213   673 	C$stm8s_tim3.c$519$1_0$398 ==.
                           000213   674 	XG$TIM3_OC1PreloadConfig$0$0 ==.
      009DE3 81               [ 4]  675 	ret
                           000214   676 	G$TIM3_OC2PreloadConfig$0$0 ==.
                           000214   677 	C$stm8s_tim3.c$527$1_0$402 ==.
                                    678 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 527: void TIM3_OC2PreloadConfig(FunctionalState NewState)
                                    679 ;	-----------------------------------------
                                    680 ;	 function TIM3_OC2PreloadConfig
                                    681 ;	-----------------------------------------
      009DE4                        682 _TIM3_OC2PreloadConfig:
                           000214   683 	C$stm8s_tim3.c$533$1_0$402 ==.
                                    684 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 533: if (NewState != DISABLE)
      009DE4 0D 03            [ 1]  685 	tnz	(0x03, sp)
      009DE6 27 06            [ 1]  686 	jreq	00102$
                           000218   687 	C$stm8s_tim3.c$535$2_0$403 ==.
                                    688 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
      009DE8 72 16 53 26      [ 1]  689 	bset	21286, #3
      009DEC 20 04            [ 2]  690 	jra	00104$
      009DEE                        691 00102$:
                           00021E   692 	C$stm8s_tim3.c$539$2_0$404 ==.
                                    693 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 539: TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      009DEE 72 17 53 26      [ 1]  694 	bres	21286, #3
      009DF2                        695 00104$:
                           000222   696 	C$stm8s_tim3.c$541$1_0$402 ==.
                                    697 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 541: }
                           000222   698 	C$stm8s_tim3.c$541$1_0$402 ==.
                           000222   699 	XG$TIM3_OC2PreloadConfig$0$0 ==.
      009DF2 81               [ 4]  700 	ret
                           000223   701 	G$TIM3_GenerateEvent$0$0 ==.
                           000223   702 	C$stm8s_tim3.c$552$1_0$406 ==.
                                    703 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 552: void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
                                    704 ;	-----------------------------------------
                                    705 ;	 function TIM3_GenerateEvent
                                    706 ;	-----------------------------------------
      009DF3                        707 _TIM3_GenerateEvent:
                           000223   708 	C$stm8s_tim3.c$558$1_0$406 ==.
                                    709 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 558: TIM3->EGR = (uint8_t)TIM3_EventSource;
      009DF3 AE 53 24         [ 2]  710 	ldw	x, #0x5324
      009DF6 7B 03            [ 1]  711 	ld	a, (0x03, sp)
      009DF8 F7               [ 1]  712 	ld	(x), a
                           000229   713 	C$stm8s_tim3.c$559$1_0$406 ==.
                                    714 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 559: }
                           000229   715 	C$stm8s_tim3.c$559$1_0$406 ==.
                           000229   716 	XG$TIM3_GenerateEvent$0$0 ==.
      009DF9 81               [ 4]  717 	ret
                           00022A   718 	G$TIM3_OC1PolarityConfig$0$0 ==.
                           00022A   719 	C$stm8s_tim3.c$569$1_0$408 ==.
                                    720 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 569: void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                    721 ;	-----------------------------------------
                                    722 ;	 function TIM3_OC1PolarityConfig
                                    723 ;	-----------------------------------------
      009DFA                        724 _TIM3_OC1PolarityConfig:
                           00022A   725 	C$stm8s_tim3.c$575$1_0$408 ==.
                                    726 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 575: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      009DFA 0D 03            [ 1]  727 	tnz	(0x03, sp)
      009DFC 27 06            [ 1]  728 	jreq	00102$
                           00022E   729 	C$stm8s_tim3.c$577$2_0$409 ==.
                                    730 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      009DFE 72 12 53 27      [ 1]  731 	bset	21287, #1
      009E02 20 04            [ 2]  732 	jra	00104$
      009E04                        733 00102$:
                           000234   734 	C$stm8s_tim3.c$581$2_0$410 ==.
                                    735 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 581: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      009E04 72 13 53 27      [ 1]  736 	bres	21287, #1
      009E08                        737 00104$:
                           000238   738 	C$stm8s_tim3.c$583$1_0$408 ==.
                                    739 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 583: }
                           000238   740 	C$stm8s_tim3.c$583$1_0$408 ==.
                           000238   741 	XG$TIM3_OC1PolarityConfig$0$0 ==.
      009E08 81               [ 4]  742 	ret
                           000239   743 	G$TIM3_OC2PolarityConfig$0$0 ==.
                           000239   744 	C$stm8s_tim3.c$593$1_0$412 ==.
                                    745 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 593: void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                    746 ;	-----------------------------------------
                                    747 ;	 function TIM3_OC2PolarityConfig
                                    748 ;	-----------------------------------------
      009E09                        749 _TIM3_OC2PolarityConfig:
                           000239   750 	C$stm8s_tim3.c$599$1_0$412 ==.
                                    751 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 599: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      009E09 0D 03            [ 1]  752 	tnz	(0x03, sp)
      009E0B 27 06            [ 1]  753 	jreq	00102$
                           00023D   754 	C$stm8s_tim3.c$601$2_0$413 ==.
                                    755 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      009E0D 72 1A 53 27      [ 1]  756 	bset	21287, #5
      009E11 20 04            [ 2]  757 	jra	00104$
      009E13                        758 00102$:
                           000243   759 	C$stm8s_tim3.c$605$2_0$414 ==.
                                    760 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 605: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      009E13 72 1B 53 27      [ 1]  761 	bres	21287, #5
      009E17                        762 00104$:
                           000247   763 	C$stm8s_tim3.c$607$1_0$412 ==.
                                    764 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 607: }
                           000247   765 	C$stm8s_tim3.c$607$1_0$412 ==.
                           000247   766 	XG$TIM3_OC2PolarityConfig$0$0 ==.
      009E17 81               [ 4]  767 	ret
                           000248   768 	G$TIM3_CCxCmd$0$0 ==.
                           000248   769 	C$stm8s_tim3.c$619$1_0$416 ==.
                                    770 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 619: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
                                    771 ;	-----------------------------------------
                                    772 ;	 function TIM3_CCxCmd
                                    773 ;	-----------------------------------------
      009E18                        774 _TIM3_CCxCmd:
                           000248   775 	C$stm8s_tim3.c$625$1_0$416 ==.
                                    776 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 625: if (TIM3_Channel == TIM3_CHANNEL_1)
      009E18 0D 03            [ 1]  777 	tnz	(0x03, sp)
      009E1A 26 10            [ 1]  778 	jrne	00108$
                           00024C   779 	C$stm8s_tim3.c$628$2_0$417 ==.
                                    780 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 628: if (NewState != DISABLE)
      009E1C 0D 04            [ 1]  781 	tnz	(0x04, sp)
      009E1E 27 06            [ 1]  782 	jreq	00102$
                           000250   783 	C$stm8s_tim3.c$630$3_0$418 ==.
                                    784 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      009E20 72 10 53 27      [ 1]  785 	bset	21287, #0
      009E24 20 14            [ 2]  786 	jra	00110$
      009E26                        787 00102$:
                           000256   788 	C$stm8s_tim3.c$634$3_0$419 ==.
                                    789 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 634: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      009E26 72 11 53 27      [ 1]  790 	bres	21287, #0
      009E2A 20 0E            [ 2]  791 	jra	00110$
      009E2C                        792 00108$:
                           00025C   793 	C$stm8s_tim3.c$641$2_0$420 ==.
                                    794 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 641: if (NewState != DISABLE)
      009E2C 0D 04            [ 1]  795 	tnz	(0x04, sp)
      009E2E 27 06            [ 1]  796 	jreq	00105$
                           000260   797 	C$stm8s_tim3.c$643$3_0$421 ==.
                                    798 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 643: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      009E30 72 18 53 27      [ 1]  799 	bset	21287, #4
      009E34 20 04            [ 2]  800 	jra	00110$
      009E36                        801 00105$:
                           000266   802 	C$stm8s_tim3.c$647$3_0$422 ==.
                                    803 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 647: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      009E36 72 19 53 27      [ 1]  804 	bres	21287, #4
      009E3A                        805 00110$:
                           00026A   806 	C$stm8s_tim3.c$650$1_0$416 ==.
                                    807 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 650: }
                           00026A   808 	C$stm8s_tim3.c$650$1_0$416 ==.
                           00026A   809 	XG$TIM3_CCxCmd$0$0 ==.
      009E3A 81               [ 4]  810 	ret
                           00026B   811 	G$TIM3_SelectOCxM$0$0 ==.
                           00026B   812 	C$stm8s_tim3.c$671$1_0$424 ==.
                                    813 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 671: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
                                    814 ;	-----------------------------------------
                                    815 ;	 function TIM3_SelectOCxM
                                    816 ;	-----------------------------------------
      009E3B                        817 _TIM3_SelectOCxM:
                           00026B   818 	C$stm8s_tim3.c$677$1_0$424 ==.
                                    819 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 677: if (TIM3_Channel == TIM3_CHANNEL_1)
      009E3B 0D 03            [ 1]  820 	tnz	(0x03, sp)
      009E3D 26 10            [ 1]  821 	jrne	00102$
                           00026F   822 	C$stm8s_tim3.c$680$2_0$425 ==.
                                    823 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      009E3F 72 11 53 27      [ 1]  824 	bres	21287, #0
                           000273   825 	C$stm8s_tim3.c$683$2_0$425 ==.
                                    826 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 683: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009E43 C6 53 25         [ 1]  827 	ld	a, 0x5325
      009E46 A4 8F            [ 1]  828 	and	a, #0x8f
      009E48 1A 04            [ 1]  829 	or	a, (0x04, sp)
      009E4A C7 53 25         [ 1]  830 	ld	0x5325, a
      009E4D 20 0E            [ 2]  831 	jra	00104$
      009E4F                        832 00102$:
                           00027F   833 	C$stm8s_tim3.c$688$2_0$426 ==.
                                    834 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 688: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      009E4F 72 19 53 27      [ 1]  835 	bres	21287, #4
                           000283   836 	C$stm8s_tim3.c$691$2_0$426 ==.
                                    837 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 691: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009E53 C6 53 26         [ 1]  838 	ld	a, 0x5326
      009E56 A4 8F            [ 1]  839 	and	a, #0x8f
      009E58 1A 04            [ 1]  840 	or	a, (0x04, sp)
      009E5A C7 53 26         [ 1]  841 	ld	0x5326, a
      009E5D                        842 00104$:
                           00028D   843 	C$stm8s_tim3.c$693$1_0$424 ==.
                                    844 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 693: }
                           00028D   845 	C$stm8s_tim3.c$693$1_0$424 ==.
                           00028D   846 	XG$TIM3_SelectOCxM$0$0 ==.
      009E5D 81               [ 4]  847 	ret
                           00028E   848 	G$TIM3_SetCounter$0$0 ==.
                           00028E   849 	C$stm8s_tim3.c$701$1_0$428 ==.
                                    850 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 701: void TIM3_SetCounter(uint16_t Counter)
                                    851 ;	-----------------------------------------
                                    852 ;	 function TIM3_SetCounter
                                    853 ;	-----------------------------------------
      009E5E                        854 _TIM3_SetCounter:
      009E5E 52 02            [ 2]  855 	sub	sp, #2
                           000290   856 	C$stm8s_tim3.c$704$1_0$428 ==.
                                    857 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 704: TIM3->CNTRH = (uint8_t)(Counter >> 8);
      009E60 7B 05            [ 1]  858 	ld	a, (0x05, sp)
      009E62 0F 01            [ 1]  859 	clr	(0x01, sp)
      009E64 C7 53 28         [ 1]  860 	ld	0x5328, a
                           000297   861 	C$stm8s_tim3.c$705$1_0$428 ==.
                                    862 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 705: TIM3->CNTRL = (uint8_t)(Counter);
      009E67 7B 06            [ 1]  863 	ld	a, (0x06, sp)
      009E69 C7 53 29         [ 1]  864 	ld	0x5329, a
                           00029C   865 	C$stm8s_tim3.c$706$1_0$428 ==.
                                    866 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 706: }
      009E6C 5B 02            [ 2]  867 	addw	sp, #2
                           00029E   868 	C$stm8s_tim3.c$706$1_0$428 ==.
                           00029E   869 	XG$TIM3_SetCounter$0$0 ==.
      009E6E 81               [ 4]  870 	ret
                           00029F   871 	G$TIM3_SetAutoreload$0$0 ==.
                           00029F   872 	C$stm8s_tim3.c$714$1_0$430 ==.
                                    873 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 714: void TIM3_SetAutoreload(uint16_t Autoreload)
                                    874 ;	-----------------------------------------
                                    875 ;	 function TIM3_SetAutoreload
                                    876 ;	-----------------------------------------
      009E6F                        877 _TIM3_SetAutoreload:
      009E6F 52 02            [ 2]  878 	sub	sp, #2
                           0002A1   879 	C$stm8s_tim3.c$717$1_0$430 ==.
                                    880 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 717: TIM3->ARRH = (uint8_t)(Autoreload >> 8);
      009E71 7B 05            [ 1]  881 	ld	a, (0x05, sp)
      009E73 0F 01            [ 1]  882 	clr	(0x01, sp)
      009E75 C7 53 2B         [ 1]  883 	ld	0x532b, a
                           0002A8   884 	C$stm8s_tim3.c$718$1_0$430 ==.
                                    885 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 718: TIM3->ARRL = (uint8_t)(Autoreload);
      009E78 7B 06            [ 1]  886 	ld	a, (0x06, sp)
      009E7A C7 53 2C         [ 1]  887 	ld	0x532c, a
                           0002AD   888 	C$stm8s_tim3.c$719$1_0$430 ==.
                                    889 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 719: }
      009E7D 5B 02            [ 2]  890 	addw	sp, #2
                           0002AF   891 	C$stm8s_tim3.c$719$1_0$430 ==.
                           0002AF   892 	XG$TIM3_SetAutoreload$0$0 ==.
      009E7F 81               [ 4]  893 	ret
                           0002B0   894 	G$TIM3_SetCompare1$0$0 ==.
                           0002B0   895 	C$stm8s_tim3.c$727$1_0$432 ==.
                                    896 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 727: void TIM3_SetCompare1(uint16_t Compare1)
                                    897 ;	-----------------------------------------
                                    898 ;	 function TIM3_SetCompare1
                                    899 ;	-----------------------------------------
      009E80                        900 _TIM3_SetCompare1:
      009E80 52 02            [ 2]  901 	sub	sp, #2
                           0002B2   902 	C$stm8s_tim3.c$730$1_0$432 ==.
                                    903 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 730: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
      009E82 7B 05            [ 1]  904 	ld	a, (0x05, sp)
      009E84 0F 01            [ 1]  905 	clr	(0x01, sp)
      009E86 C7 53 2D         [ 1]  906 	ld	0x532d, a
                           0002B9   907 	C$stm8s_tim3.c$731$1_0$432 ==.
                                    908 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 731: TIM3->CCR1L = (uint8_t)(Compare1);
      009E89 7B 06            [ 1]  909 	ld	a, (0x06, sp)
      009E8B C7 53 2E         [ 1]  910 	ld	0x532e, a
                           0002BE   911 	C$stm8s_tim3.c$732$1_0$432 ==.
                                    912 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 732: }
      009E8E 5B 02            [ 2]  913 	addw	sp, #2
                           0002C0   914 	C$stm8s_tim3.c$732$1_0$432 ==.
                           0002C0   915 	XG$TIM3_SetCompare1$0$0 ==.
      009E90 81               [ 4]  916 	ret
                           0002C1   917 	G$TIM3_SetCompare2$0$0 ==.
                           0002C1   918 	C$stm8s_tim3.c$740$1_0$434 ==.
                                    919 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 740: void TIM3_SetCompare2(uint16_t Compare2)
                                    920 ;	-----------------------------------------
                                    921 ;	 function TIM3_SetCompare2
                                    922 ;	-----------------------------------------
      009E91                        923 _TIM3_SetCompare2:
      009E91 52 02            [ 2]  924 	sub	sp, #2
                           0002C3   925 	C$stm8s_tim3.c$743$1_0$434 ==.
                                    926 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 743: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
      009E93 7B 05            [ 1]  927 	ld	a, (0x05, sp)
      009E95 0F 01            [ 1]  928 	clr	(0x01, sp)
      009E97 C7 53 2F         [ 1]  929 	ld	0x532f, a
                           0002CA   930 	C$stm8s_tim3.c$744$1_0$434 ==.
                                    931 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 744: TIM3->CCR2L = (uint8_t)(Compare2);
      009E9A 7B 06            [ 1]  932 	ld	a, (0x06, sp)
      009E9C C7 53 30         [ 1]  933 	ld	0x5330, a
                           0002CF   934 	C$stm8s_tim3.c$745$1_0$434 ==.
                                    935 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 745: }
      009E9F 5B 02            [ 2]  936 	addw	sp, #2
                           0002D1   937 	C$stm8s_tim3.c$745$1_0$434 ==.
                           0002D1   938 	XG$TIM3_SetCompare2$0$0 ==.
      009EA1 81               [ 4]  939 	ret
                           0002D2   940 	G$TIM3_SetIC1Prescaler$0$0 ==.
                           0002D2   941 	C$stm8s_tim3.c$757$1_0$436 ==.
                                    942 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 757: void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
                                    943 ;	-----------------------------------------
                                    944 ;	 function TIM3_SetIC1Prescaler
                                    945 ;	-----------------------------------------
      009EA2                        946 _TIM3_SetIC1Prescaler:
                           0002D2   947 	C$stm8s_tim3.c$763$1_0$436 ==.
                                    948 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 763: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
      009EA2 C6 53 25         [ 1]  949 	ld	a, 0x5325
      009EA5 A4 F3            [ 1]  950 	and	a, #0xf3
      009EA7 1A 03            [ 1]  951 	or	a, (0x03, sp)
      009EA9 C7 53 25         [ 1]  952 	ld	0x5325, a
                           0002DC   953 	C$stm8s_tim3.c$764$1_0$436 ==.
                                    954 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 764: }
                           0002DC   955 	C$stm8s_tim3.c$764$1_0$436 ==.
                           0002DC   956 	XG$TIM3_SetIC1Prescaler$0$0 ==.
      009EAC 81               [ 4]  957 	ret
                           0002DD   958 	G$TIM3_SetIC2Prescaler$0$0 ==.
                           0002DD   959 	C$stm8s_tim3.c$776$1_0$438 ==.
                                    960 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 776: void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
                                    961 ;	-----------------------------------------
                                    962 ;	 function TIM3_SetIC2Prescaler
                                    963 ;	-----------------------------------------
      009EAD                        964 _TIM3_SetIC2Prescaler:
                           0002DD   965 	C$stm8s_tim3.c$782$1_0$438 ==.
                                    966 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 782: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
      009EAD C6 53 26         [ 1]  967 	ld	a, 0x5326
      009EB0 A4 F3            [ 1]  968 	and	a, #0xf3
      009EB2 1A 03            [ 1]  969 	or	a, (0x03, sp)
      009EB4 C7 53 26         [ 1]  970 	ld	0x5326, a
                           0002E7   971 	C$stm8s_tim3.c$783$1_0$438 ==.
                                    972 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 783: }
                           0002E7   973 	C$stm8s_tim3.c$783$1_0$438 ==.
                           0002E7   974 	XG$TIM3_SetIC2Prescaler$0$0 ==.
      009EB7 81               [ 4]  975 	ret
                           0002E8   976 	G$TIM3_GetCapture1$0$0 ==.
                           0002E8   977 	C$stm8s_tim3.c$790$1_0$440 ==.
                                    978 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 790: uint16_t TIM3_GetCapture1(void)
                                    979 ;	-----------------------------------------
                                    980 ;	 function TIM3_GetCapture1
                                    981 ;	-----------------------------------------
      009EB8                        982 _TIM3_GetCapture1:
      009EB8 52 02            [ 2]  983 	sub	sp, #2
                           0002EA   984 	C$stm8s_tim3.c$796$1_0$440 ==.
                                    985 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 796: tmpccr1h = TIM3->CCR1H;
      009EBA C6 53 2D         [ 1]  986 	ld	a, 0x532d
      009EBD 95               [ 1]  987 	ld	xh, a
                           0002EE   988 	C$stm8s_tim3.c$797$1_0$440 ==.
                                    989 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 797: tmpccr1l = TIM3->CCR1L;
      009EBE C6 53 2E         [ 1]  990 	ld	a, 0x532e
                           0002F1   991 	C$stm8s_tim3.c$799$1_0$440 ==.
                                    992 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 799: tmpccr1 = (uint16_t)(tmpccr1l);
      009EC1 97               [ 1]  993 	ld	xl, a
      009EC2 4F               [ 1]  994 	clr	a
                           0002F3   995 	C$stm8s_tim3.c$800$1_0$440 ==.
                                    996 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 800: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      009EC3 90 5F            [ 1]  997 	clrw	y
      009EC5 0F 02            [ 1]  998 	clr	(0x02, sp)
      009EC7 89               [ 2]  999 	pushw	x
      009EC8 1A 01            [ 1] 1000 	or	a, (1, sp)
      009ECA 85               [ 2] 1001 	popw	x
      009ECB 01               [ 1] 1002 	rrwa	x
      009ECC 1A 02            [ 1] 1003 	or	a, (0x02, sp)
      009ECE 97               [ 1] 1004 	ld	xl, a
                           0002FF  1005 	C$stm8s_tim3.c$802$1_0$440 ==.
                                   1006 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 802: return (uint16_t)tmpccr1;
                           0002FF  1007 	C$stm8s_tim3.c$803$1_0$440 ==.
                                   1008 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 803: }
      009ECF 5B 02            [ 2] 1009 	addw	sp, #2
                           000301  1010 	C$stm8s_tim3.c$803$1_0$440 ==.
                           000301  1011 	XG$TIM3_GetCapture1$0$0 ==.
      009ED1 81               [ 4] 1012 	ret
                           000302  1013 	G$TIM3_GetCapture2$0$0 ==.
                           000302  1014 	C$stm8s_tim3.c$810$1_0$442 ==.
                                   1015 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 810: uint16_t TIM3_GetCapture2(void)
                                   1016 ;	-----------------------------------------
                                   1017 ;	 function TIM3_GetCapture2
                                   1018 ;	-----------------------------------------
      009ED2                       1019 _TIM3_GetCapture2:
      009ED2 52 02            [ 2] 1020 	sub	sp, #2
                           000304  1021 	C$stm8s_tim3.c$816$1_0$442 ==.
                                   1022 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 816: tmpccr2h = TIM3->CCR2H;
      009ED4 C6 53 2F         [ 1] 1023 	ld	a, 0x532f
      009ED7 95               [ 1] 1024 	ld	xh, a
                           000308  1025 	C$stm8s_tim3.c$817$1_0$442 ==.
                                   1026 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 817: tmpccr2l = TIM3->CCR2L;
      009ED8 C6 53 30         [ 1] 1027 	ld	a, 0x5330
                           00030B  1028 	C$stm8s_tim3.c$819$1_0$442 ==.
                                   1029 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 819: tmpccr2 = (uint16_t)(tmpccr2l);
      009EDB 97               [ 1] 1030 	ld	xl, a
      009EDC 4F               [ 1] 1031 	clr	a
                           00030D  1032 	C$stm8s_tim3.c$820$1_0$442 ==.
                                   1033 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 820: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      009EDD 90 5F            [ 1] 1034 	clrw	y
      009EDF 0F 02            [ 1] 1035 	clr	(0x02, sp)
      009EE1 89               [ 2] 1036 	pushw	x
      009EE2 1A 01            [ 1] 1037 	or	a, (1, sp)
      009EE4 85               [ 2] 1038 	popw	x
      009EE5 01               [ 1] 1039 	rrwa	x
      009EE6 1A 02            [ 1] 1040 	or	a, (0x02, sp)
      009EE8 97               [ 1] 1041 	ld	xl, a
                           000319  1042 	C$stm8s_tim3.c$822$1_0$442 ==.
                                   1043 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 822: return (uint16_t)tmpccr2;
                           000319  1044 	C$stm8s_tim3.c$823$1_0$442 ==.
                                   1045 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 823: }
      009EE9 5B 02            [ 2] 1046 	addw	sp, #2
                           00031B  1047 	C$stm8s_tim3.c$823$1_0$442 ==.
                           00031B  1048 	XG$TIM3_GetCapture2$0$0 ==.
      009EEB 81               [ 4] 1049 	ret
                           00031C  1050 	G$TIM3_GetCounter$0$0 ==.
                           00031C  1051 	C$stm8s_tim3.c$830$1_0$444 ==.
                                   1052 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 830: uint16_t TIM3_GetCounter(void)
                                   1053 ;	-----------------------------------------
                                   1054 ;	 function TIM3_GetCounter
                                   1055 ;	-----------------------------------------
      009EEC                       1056 _TIM3_GetCounter:
      009EEC 52 04            [ 2] 1057 	sub	sp, #4
                           00031E  1058 	C$stm8s_tim3.c$834$1_0$444 ==.
                                   1059 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 834: tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
      009EEE C6 53 28         [ 1] 1060 	ld	a, 0x5328
      009EF1 95               [ 1] 1061 	ld	xh, a
      009EF2 4F               [ 1] 1062 	clr	a
      009EF3 6B 02            [ 1] 1063 	ld	(0x02, sp), a
                           000325  1064 	C$stm8s_tim3.c$836$1_0$444 ==.
                                   1065 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 836: return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
      009EF5 C6 53 29         [ 1] 1066 	ld	a, 0x5329
      009EF8 0F 03            [ 1] 1067 	clr	(0x03, sp)
      009EFA 1A 02            [ 1] 1068 	or	a, (0x02, sp)
      009EFC 02               [ 1] 1069 	rlwa	x
      009EFD 1A 03            [ 1] 1070 	or	a, (0x03, sp)
      009EFF 95               [ 1] 1071 	ld	xh, a
                           000330  1072 	C$stm8s_tim3.c$837$1_0$444 ==.
                                   1073 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 837: }
      009F00 5B 04            [ 2] 1074 	addw	sp, #4
                           000332  1075 	C$stm8s_tim3.c$837$1_0$444 ==.
                           000332  1076 	XG$TIM3_GetCounter$0$0 ==.
      009F02 81               [ 4] 1077 	ret
                           000333  1078 	G$TIM3_GetPrescaler$0$0 ==.
                           000333  1079 	C$stm8s_tim3.c$844$1_0$446 ==.
                                   1080 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 844: TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
                                   1081 ;	-----------------------------------------
                                   1082 ;	 function TIM3_GetPrescaler
                                   1083 ;	-----------------------------------------
      009F03                       1084 _TIM3_GetPrescaler:
                           000333  1085 	C$stm8s_tim3.c$847$1_0$446 ==.
                                   1086 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 847: return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
      009F03 C6 53 2A         [ 1] 1087 	ld	a, 0x532a
                           000336  1088 	C$stm8s_tim3.c$848$1_0$446 ==.
                                   1089 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 848: }
                           000336  1090 	C$stm8s_tim3.c$848$1_0$446 ==.
                           000336  1091 	XG$TIM3_GetPrescaler$0$0 ==.
      009F06 81               [ 4] 1092 	ret
                           000337  1093 	G$TIM3_GetFlagStatus$0$0 ==.
                           000337  1094 	C$stm8s_tim3.c$861$1_0$448 ==.
                                   1095 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 861: FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1096 ;	-----------------------------------------
                                   1097 ;	 function TIM3_GetFlagStatus
                                   1098 ;	-----------------------------------------
      009F07                       1099 _TIM3_GetFlagStatus:
      009F07 52 05            [ 2] 1100 	sub	sp, #5
                           000339  1101 	C$stm8s_tim3.c$869$1_0$448 ==.
                                   1102 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 869: tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
      009F09 C6 53 22         [ 1] 1103 	ld	a, 0x5322
      009F0C 6B 03            [ 1] 1104 	ld	(0x03, sp), a
      009F0E 7B 09            [ 1] 1105 	ld	a, (0x09, sp)
      009F10 14 03            [ 1] 1106 	and	a, (0x03, sp)
      009F12 6B 05            [ 1] 1107 	ld	(0x05, sp), a
                           000344  1108 	C$stm8s_tim3.c$870$1_0$448 ==.
                                   1109 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 870: tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
      009F14 7B 08            [ 1] 1110 	ld	a, (0x08, sp)
      009F16 0F 01            [ 1] 1111 	clr	(0x01, sp)
      009F18 6B 04            [ 1] 1112 	ld	(0x04, sp), a
                           00034A  1113 	C$stm8s_tim3.c$872$1_0$448 ==.
                                   1114 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 872: if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
      009F1A C6 53 23         [ 1] 1115 	ld	a, 0x5323
      009F1D 14 04            [ 1] 1116 	and	a, (0x04, sp)
      009F1F 1A 05            [ 1] 1117 	or	a, (0x05, sp)
      009F21 27 04            [ 1] 1118 	jreq	00102$
                           000353  1119 	C$stm8s_tim3.c$874$2_0$449 ==.
                                   1120 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 874: bitstatus = SET;
      009F23 A6 01            [ 1] 1121 	ld	a, #0x01
      009F25 20 01            [ 2] 1122 	jra	00103$
      009F27                       1123 00102$:
                           000357  1124 	C$stm8s_tim3.c$878$2_0$450 ==.
                                   1125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 878: bitstatus = RESET;
      009F27 4F               [ 1] 1126 	clr	a
      009F28                       1127 00103$:
                           000358  1128 	C$stm8s_tim3.c$880$1_0$448 ==.
                                   1129 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 880: return (FlagStatus)bitstatus;
                           000358  1130 	C$stm8s_tim3.c$881$1_0$448 ==.
                                   1131 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 881: }
      009F28 5B 05            [ 2] 1132 	addw	sp, #5
                           00035A  1133 	C$stm8s_tim3.c$881$1_0$448 ==.
                           00035A  1134 	XG$TIM3_GetFlagStatus$0$0 ==.
      009F2A 81               [ 4] 1135 	ret
                           00035B  1136 	G$TIM3_ClearFlag$0$0 ==.
                           00035B  1137 	C$stm8s_tim3.c$894$1_0$452 ==.
                                   1138 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 894: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1139 ;	-----------------------------------------
                                   1140 ;	 function TIM3_ClearFlag
                                   1141 ;	-----------------------------------------
      009F2B                       1142 _TIM3_ClearFlag:
                           00035B  1143 	C$stm8s_tim3.c$900$1_0$452 ==.
                                   1144 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 900: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
      009F2B 7B 04            [ 1] 1145 	ld	a, (0x04, sp)
      009F2D 43               [ 1] 1146 	cpl	a
      009F2E C7 53 22         [ 1] 1147 	ld	0x5322, a
                           000361  1148 	C$stm8s_tim3.c$901$1_0$452 ==.
                                   1149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 901: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
      009F31 7B 03            [ 1] 1150 	ld	a, (0x03, sp)
      009F33 43               [ 1] 1151 	cpl	a
      009F34 C7 53 23         [ 1] 1152 	ld	0x5323, a
                           000367  1153 	C$stm8s_tim3.c$902$1_0$452 ==.
                                   1154 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 902: }
                           000367  1155 	C$stm8s_tim3.c$902$1_0$452 ==.
                           000367  1156 	XG$TIM3_ClearFlag$0$0 ==.
      009F37 81               [ 4] 1157 	ret
                           000368  1158 	G$TIM3_GetITStatus$0$0 ==.
                           000368  1159 	C$stm8s_tim3.c$913$1_0$454 ==.
                                   1160 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 913: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
                                   1161 ;	-----------------------------------------
                                   1162 ;	 function TIM3_GetITStatus
                                   1163 ;	-----------------------------------------
      009F38                       1164 _TIM3_GetITStatus:
      009F38 88               [ 1] 1165 	push	a
                           000369  1166 	C$stm8s_tim3.c$921$1_0$454 ==.
                                   1167 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 921: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
      009F39 C6 53 22         [ 1] 1168 	ld	a, 0x5322
      009F3C 14 04            [ 1] 1169 	and	a, (0x04, sp)
      009F3E 6B 01            [ 1] 1170 	ld	(0x01, sp), a
                           000370  1171 	C$stm8s_tim3.c$923$1_0$454 ==.
                                   1172 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 923: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
      009F40 C6 53 21         [ 1] 1173 	ld	a, 0x5321
      009F43 14 04            [ 1] 1174 	and	a, (0x04, sp)
                           000375  1175 	C$stm8s_tim3.c$925$1_0$454 ==.
                                   1176 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 925: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
      009F45 0D 01            [ 1] 1177 	tnz	(0x01, sp)
      009F47 27 07            [ 1] 1178 	jreq	00102$
      009F49 4D               [ 1] 1179 	tnz	a
      009F4A 27 04            [ 1] 1180 	jreq	00102$
                           00037C  1181 	C$stm8s_tim3.c$927$2_0$455 ==.
                                   1182 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 927: bitstatus = SET;
      009F4C A6 01            [ 1] 1183 	ld	a, #0x01
      009F4E 20 01            [ 2] 1184 	jra	00103$
      009F50                       1185 00102$:
                           000380  1186 	C$stm8s_tim3.c$931$2_0$456 ==.
                                   1187 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 931: bitstatus = RESET;
      009F50 4F               [ 1] 1188 	clr	a
      009F51                       1189 00103$:
                           000381  1190 	C$stm8s_tim3.c$933$1_0$454 ==.
                                   1191 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 933: return (ITStatus)(bitstatus);
                           000381  1192 	C$stm8s_tim3.c$934$1_0$454 ==.
                                   1193 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 934: }
      009F51 5B 01            [ 2] 1194 	addw	sp, #1
                           000383  1195 	C$stm8s_tim3.c$934$1_0$454 ==.
                           000383  1196 	XG$TIM3_GetITStatus$0$0 ==.
      009F53 81               [ 4] 1197 	ret
                           000384  1198 	G$TIM3_ClearITPendingBit$0$0 ==.
                           000384  1199 	C$stm8s_tim3.c$945$1_0$458 ==.
                                   1200 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 945: void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
                                   1201 ;	-----------------------------------------
                                   1202 ;	 function TIM3_ClearITPendingBit
                                   1203 ;	-----------------------------------------
      009F54                       1204 _TIM3_ClearITPendingBit:
                           000384  1205 	C$stm8s_tim3.c$951$1_0$458 ==.
                                   1206 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 951: TIM3->SR1 = (uint8_t)(~TIM3_IT);
      009F54 7B 03            [ 1] 1207 	ld	a, (0x03, sp)
      009F56 43               [ 1] 1208 	cpl	a
      009F57 C7 53 22         [ 1] 1209 	ld	0x5322, a
                           00038A  1210 	C$stm8s_tim3.c$952$1_0$458 ==.
                                   1211 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 952: }
                           00038A  1212 	C$stm8s_tim3.c$952$1_0$458 ==.
                           00038A  1213 	XG$TIM3_ClearITPendingBit$0$0 ==.
      009F5A 81               [ 4] 1214 	ret
                           00038B  1215 	Fstm8s_tim3$TI1_Config$0$0 ==.
                           00038B  1216 	C$stm8s_tim3.c$970$1_0$460 ==.
                                   1217 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 970: static void TI1_Config(uint8_t TIM3_ICPolarity,
                                   1218 ;	-----------------------------------------
                                   1219 ;	 function TI1_Config
                                   1220 ;	-----------------------------------------
      009F5B                       1221 _TI1_Config:
      009F5B 88               [ 1] 1222 	push	a
                           00038C  1223 	C$stm8s_tim3.c$975$1_0$460 ==.
                                   1224 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      009F5C 72 11 53 27      [ 1] 1225 	bres	21287, #0
                           000390  1226 	C$stm8s_tim3.c$978$1_0$460 ==.
                                   1227 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 978: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
      009F60 C6 53 25         [ 1] 1228 	ld	a, 0x5325
      009F63 A4 0C            [ 1] 1229 	and	a, #0x0c
      009F65 6B 01            [ 1] 1230 	ld	(0x01, sp), a
      009F67 7B 06            [ 1] 1231 	ld	a, (0x06, sp)
      009F69 4E               [ 1] 1232 	swap	a
      009F6A A4 F0            [ 1] 1233 	and	a, #0xf0
      009F6C 1A 05            [ 1] 1234 	or	a, (0x05, sp)
      009F6E 1A 01            [ 1] 1235 	or	a, (0x01, sp)
      009F70 C7 53 25         [ 1] 1236 	ld	0x5325, a
                           0003A3  1237 	C$stm8s_tim3.c$981$1_0$460 ==.
                                   1238 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 981: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      009F73 0D 04            [ 1] 1239 	tnz	(0x04, sp)
      009F75 27 06            [ 1] 1240 	jreq	00102$
                           0003A7  1241 	C$stm8s_tim3.c$983$2_0$461 ==.
                                   1242 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 983: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      009F77 72 12 53 27      [ 1] 1243 	bset	21287, #1
      009F7B 20 04            [ 2] 1244 	jra	00103$
      009F7D                       1245 00102$:
                           0003AD  1246 	C$stm8s_tim3.c$987$2_0$462 ==.
                                   1247 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 987: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      009F7D 72 13 53 27      [ 1] 1248 	bres	21287, #1
      009F81                       1249 00103$:
                           0003B1  1250 	C$stm8s_tim3.c$990$1_0$460 ==.
                                   1251 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 990: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      009F81 72 10 53 27      [ 1] 1252 	bset	21287, #0
                           0003B5  1253 	C$stm8s_tim3.c$991$1_0$460 ==.
                                   1254 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 991: }
      009F85 84               [ 1] 1255 	pop	a
                           0003B6  1256 	C$stm8s_tim3.c$991$1_0$460 ==.
                           0003B6  1257 	XFstm8s_tim3$TI1_Config$0$0 ==.
      009F86 81               [ 4] 1258 	ret
                           0003B7  1259 	Fstm8s_tim3$TI2_Config$0$0 ==.
                           0003B7  1260 	C$stm8s_tim3.c$1009$1_0$464 ==.
                                   1261 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1009: static void TI2_Config(uint8_t TIM3_ICPolarity,
                                   1262 ;	-----------------------------------------
                                   1263 ;	 function TI2_Config
                                   1264 ;	-----------------------------------------
      009F87                       1265 _TI2_Config:
      009F87 88               [ 1] 1266 	push	a
                           0003B8  1267 	C$stm8s_tim3.c$1014$1_0$464 ==.
                                   1268 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
      009F88 72 19 53 27      [ 1] 1269 	bres	21287, #4
                           0003BC  1270 	C$stm8s_tim3.c$1017$1_0$464 ==.
                                   1271 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1017: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
      009F8C C6 53 26         [ 1] 1272 	ld	a, 0x5326
      009F8F A4 0C            [ 1] 1273 	and	a, #0x0c
      009F91 6B 01            [ 1] 1274 	ld	(0x01, sp), a
                           0003C3  1275 	C$stm8s_tim3.c$1019$1_0$464 ==.
                                   1276 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1019: ((uint8_t)( TIM3_ICFilter << 4))));
      009F93 7B 06            [ 1] 1277 	ld	a, (0x06, sp)
      009F95 4E               [ 1] 1278 	swap	a
      009F96 A4 F0            [ 1] 1279 	and	a, #0xf0
      009F98 1A 05            [ 1] 1280 	or	a, (0x05, sp)
      009F9A 1A 01            [ 1] 1281 	or	a, (0x01, sp)
      009F9C C7 53 26         [ 1] 1282 	ld	0x5326, a
                           0003CF  1283 	C$stm8s_tim3.c$1022$1_0$464 ==.
                                   1284 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1022: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      009F9F 0D 04            [ 1] 1285 	tnz	(0x04, sp)
      009FA1 27 06            [ 1] 1286 	jreq	00102$
                           0003D3  1287 	C$stm8s_tim3.c$1024$2_0$465 ==.
                                   1288 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1024: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      009FA3 72 1A 53 27      [ 1] 1289 	bset	21287, #5
      009FA7 20 04            [ 2] 1290 	jra	00103$
      009FA9                       1291 00102$:
                           0003D9  1292 	C$stm8s_tim3.c$1028$2_0$466 ==.
                                   1293 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1028: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      009FA9 72 1B 53 27      [ 1] 1294 	bres	21287, #5
      009FAD                       1295 00103$:
                           0003DD  1296 	C$stm8s_tim3.c$1032$1_0$464 ==.
                                   1297 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1032: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      009FAD 72 18 53 27      [ 1] 1298 	bset	21287, #4
                           0003E1  1299 	C$stm8s_tim3.c$1033$1_0$464 ==.
                                   1300 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1033: }
      009FB1 84               [ 1] 1301 	pop	a
                           0003E2  1302 	C$stm8s_tim3.c$1033$1_0$464 ==.
                           0003E2  1303 	XFstm8s_tim3$TI2_Config$0$0 ==.
      009FB2 81               [ 4] 1304 	ret
                                   1305 	.area CODE
                                   1306 	.area CONST
                                   1307 	.area INITIALIZER
                                   1308 	.area CABS (ABS)
