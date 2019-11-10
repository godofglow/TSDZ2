                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM1_DeInit
                                     12 	.globl _TIM1_TimeBaseInit
                                     13 	.globl _TIM1_OC1Init
                                     14 	.globl _TIM1_OC2Init
                                     15 	.globl _TIM1_OC3Init
                                     16 	.globl _TIM1_OC4Init
                                     17 	.globl _TIM1_BDTRConfig
                                     18 	.globl _TIM1_ICInit
                                     19 	.globl _TIM1_PWMIConfig
                                     20 	.globl _TIM1_Cmd
                                     21 	.globl _TIM1_CtrlPWMOutputs
                                     22 	.globl _TIM1_ITConfig
                                     23 	.globl _TIM1_InternalClockConfig
                                     24 	.globl _TIM1_ETRClockMode1Config
                                     25 	.globl _TIM1_ETRClockMode2Config
                                     26 	.globl _TIM1_ETRConfig
                                     27 	.globl _TIM1_TIxExternalClockConfig
                                     28 	.globl _TIM1_SelectInputTrigger
                                     29 	.globl _TIM1_UpdateDisableConfig
                                     30 	.globl _TIM1_UpdateRequestConfig
                                     31 	.globl _TIM1_SelectHallSensor
                                     32 	.globl _TIM1_SelectOnePulseMode
                                     33 	.globl _TIM1_SelectOutputTrigger
                                     34 	.globl _TIM1_SelectSlaveMode
                                     35 	.globl _TIM1_SelectMasterSlaveMode
                                     36 	.globl _TIM1_EncoderInterfaceConfig
                                     37 	.globl _TIM1_PrescalerConfig
                                     38 	.globl _TIM1_CounterModeConfig
                                     39 	.globl _TIM1_ForcedOC1Config
                                     40 	.globl _TIM1_ForcedOC2Config
                                     41 	.globl _TIM1_ForcedOC3Config
                                     42 	.globl _TIM1_ForcedOC4Config
                                     43 	.globl _TIM1_ARRPreloadConfig
                                     44 	.globl _TIM1_SelectCOM
                                     45 	.globl _TIM1_CCPreloadControl
                                     46 	.globl _TIM1_OC1PreloadConfig
                                     47 	.globl _TIM1_OC2PreloadConfig
                                     48 	.globl _TIM1_OC3PreloadConfig
                                     49 	.globl _TIM1_OC4PreloadConfig
                                     50 	.globl _TIM1_OC1FastConfig
                                     51 	.globl _TIM1_OC2FastConfig
                                     52 	.globl _TIM1_OC3FastConfig
                                     53 	.globl _TIM1_OC4FastConfig
                                     54 	.globl _TIM1_GenerateEvent
                                     55 	.globl _TIM1_OC1PolarityConfig
                                     56 	.globl _TIM1_OC1NPolarityConfig
                                     57 	.globl _TIM1_OC2PolarityConfig
                                     58 	.globl _TIM1_OC2NPolarityConfig
                                     59 	.globl _TIM1_OC3PolarityConfig
                                     60 	.globl _TIM1_OC3NPolarityConfig
                                     61 	.globl _TIM1_OC4PolarityConfig
                                     62 	.globl _TIM1_CCxCmd
                                     63 	.globl _TIM1_CCxNCmd
                                     64 	.globl _TIM1_SelectOCxM
                                     65 	.globl _TIM1_SetCounter
                                     66 	.globl _TIM1_SetAutoreload
                                     67 	.globl _TIM1_SetCompare1
                                     68 	.globl _TIM1_SetCompare2
                                     69 	.globl _TIM1_SetCompare3
                                     70 	.globl _TIM1_SetCompare4
                                     71 	.globl _TIM1_SetIC1Prescaler
                                     72 	.globl _TIM1_SetIC2Prescaler
                                     73 	.globl _TIM1_SetIC3Prescaler
                                     74 	.globl _TIM1_SetIC4Prescaler
                                     75 	.globl _TIM1_GetCapture1
                                     76 	.globl _TIM1_GetCapture2
                                     77 	.globl _TIM1_GetCapture3
                                     78 	.globl _TIM1_GetCapture4
                                     79 	.globl _TIM1_GetCounter
                                     80 	.globl _TIM1_GetPrescaler
                                     81 	.globl _TIM1_GetFlagStatus
                                     82 	.globl _TIM1_ClearFlag
                                     83 	.globl _TIM1_GetITStatus
                                     84 	.globl _TIM1_ClearITPendingBit
                                     85 ;--------------------------------------------------------
                                     86 ; ram data
                                     87 ;--------------------------------------------------------
                                     88 	.area DATA
                                     89 ;--------------------------------------------------------
                                     90 ; ram data
                                     91 ;--------------------------------------------------------
                                     92 	.area INITIALIZED
                                     93 ;--------------------------------------------------------
                                     94 ; absolute external ram data
                                     95 ;--------------------------------------------------------
                                     96 	.area DABS (ABS)
                                     97 
                                     98 ; default segment ordering for linker
                                     99 	.area HOME
                                    100 	.area GSINIT
                                    101 	.area GSFINAL
                                    102 	.area CONST
                                    103 	.area INITIALIZER
                                    104 	.area CODE
                                    105 
                                    106 ;--------------------------------------------------------
                                    107 ; global & static initialisations
                                    108 ;--------------------------------------------------------
                                    109 	.area HOME
                                    110 	.area GSINIT
                                    111 	.area GSFINAL
                                    112 	.area GSINIT
                                    113 ;--------------------------------------------------------
                                    114 ; Home
                                    115 ;--------------------------------------------------------
                                    116 	.area HOME
                                    117 	.area HOME
                                    118 ;--------------------------------------------------------
                                    119 ; code
                                    120 ;--------------------------------------------------------
                                    121 	.area CODE
                           000000   122 	G$TIM1_DeInit$0$0 ==.
                           000000   123 	C$stm8s_tim1.c$58$0_0$350 ==.
                                    124 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 58: void TIM1_DeInit(void)
                                    125 ;	-----------------------------------------
                                    126 ;	 function TIM1_DeInit
                                    127 ;	-----------------------------------------
      008DCB                        128 _TIM1_DeInit:
                           000000   129 	C$stm8s_tim1.c$60$1_0$350 ==.
                                    130 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 60: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
      008DCB 35 00 52 50      [ 1]  131 	mov	0x5250+0, #0x00
                           000004   132 	C$stm8s_tim1.c$61$1_0$350 ==.
                                    133 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 61: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
      008DCF 35 00 52 51      [ 1]  134 	mov	0x5251+0, #0x00
                           000008   135 	C$stm8s_tim1.c$62$1_0$350 ==.
                                    136 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 62: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      008DD3 35 00 52 52      [ 1]  137 	mov	0x5252+0, #0x00
                           00000C   138 	C$stm8s_tim1.c$63$1_0$350 ==.
                                    139 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 63: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
      008DD7 35 00 52 53      [ 1]  140 	mov	0x5253+0, #0x00
                           000010   141 	C$stm8s_tim1.c$64$1_0$350 ==.
                                    142 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 64: TIM1->IER  = TIM1_IER_RESET_VALUE;
      008DDB 35 00 52 54      [ 1]  143 	mov	0x5254+0, #0x00
                           000014   144 	C$stm8s_tim1.c$65$1_0$350 ==.
                                    145 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 65: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
      008DDF 35 00 52 56      [ 1]  146 	mov	0x5256+0, #0x00
                           000018   147 	C$stm8s_tim1.c$67$1_0$350 ==.
                                    148 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 67: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      008DE3 35 00 52 5C      [ 1]  149 	mov	0x525c+0, #0x00
                           00001C   150 	C$stm8s_tim1.c$68$1_0$350 ==.
                                    151 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 68: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      008DE7 35 00 52 5D      [ 1]  152 	mov	0x525d+0, #0x00
                           000020   153 	C$stm8s_tim1.c$70$1_0$350 ==.
                                    154 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 70: TIM1->CCMR1 = 0x01;
      008DEB 35 01 52 58      [ 1]  155 	mov	0x5258+0, #0x01
                           000024   156 	C$stm8s_tim1.c$71$1_0$350 ==.
                                    157 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 71: TIM1->CCMR2 = 0x01;
      008DEF 35 01 52 59      [ 1]  158 	mov	0x5259+0, #0x01
                           000028   159 	C$stm8s_tim1.c$72$1_0$350 ==.
                                    160 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 72: TIM1->CCMR3 = 0x01;
      008DF3 35 01 52 5A      [ 1]  161 	mov	0x525a+0, #0x01
                           00002C   162 	C$stm8s_tim1.c$73$1_0$350 ==.
                                    163 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 73: TIM1->CCMR4 = 0x01;
      008DF7 35 01 52 5B      [ 1]  164 	mov	0x525b+0, #0x01
                           000030   165 	C$stm8s_tim1.c$75$1_0$350 ==.
                                    166 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 75: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      008DFB 35 00 52 5C      [ 1]  167 	mov	0x525c+0, #0x00
                           000034   168 	C$stm8s_tim1.c$76$1_0$350 ==.
                                    169 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 76: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      008DFF 35 00 52 5D      [ 1]  170 	mov	0x525d+0, #0x00
                           000038   171 	C$stm8s_tim1.c$77$1_0$350 ==.
                                    172 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 77: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      008E03 35 00 52 58      [ 1]  173 	mov	0x5258+0, #0x00
                           00003C   174 	C$stm8s_tim1.c$78$1_0$350 ==.
                                    175 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 78: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      008E07 35 00 52 59      [ 1]  176 	mov	0x5259+0, #0x00
                           000040   177 	C$stm8s_tim1.c$79$1_0$350 ==.
                                    178 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 79: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      008E0B 35 00 52 5A      [ 1]  179 	mov	0x525a+0, #0x00
                           000044   180 	C$stm8s_tim1.c$80$1_0$350 ==.
                                    181 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 80: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      008E0F 35 00 52 5B      [ 1]  182 	mov	0x525b+0, #0x00
                           000048   183 	C$stm8s_tim1.c$81$1_0$350 ==.
                                    184 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 81: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      008E13 35 00 52 5E      [ 1]  185 	mov	0x525e+0, #0x00
                           00004C   186 	C$stm8s_tim1.c$82$1_0$350 ==.
                                    187 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 82: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      008E17 35 00 52 5F      [ 1]  188 	mov	0x525f+0, #0x00
                           000050   189 	C$stm8s_tim1.c$83$1_0$350 ==.
                                    190 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 83: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      008E1B 35 00 52 60      [ 1]  191 	mov	0x5260+0, #0x00
                           000054   192 	C$stm8s_tim1.c$84$1_0$350 ==.
                                    193 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 84: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      008E1F 35 00 52 61      [ 1]  194 	mov	0x5261+0, #0x00
                           000058   195 	C$stm8s_tim1.c$85$1_0$350 ==.
                                    196 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 85: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
      008E23 35 FF 52 62      [ 1]  197 	mov	0x5262+0, #0xff
                           00005C   198 	C$stm8s_tim1.c$86$1_0$350 ==.
                                    199 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 86: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
      008E27 35 FF 52 63      [ 1]  200 	mov	0x5263+0, #0xff
                           000060   201 	C$stm8s_tim1.c$87$1_0$350 ==.
                                    202 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 87: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      008E2B 35 00 52 65      [ 1]  203 	mov	0x5265+0, #0x00
                           000064   204 	C$stm8s_tim1.c$88$1_0$350 ==.
                                    205 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 88: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      008E2F 35 00 52 66      [ 1]  206 	mov	0x5266+0, #0x00
                           000068   207 	C$stm8s_tim1.c$89$1_0$350 ==.
                                    208 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 89: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      008E33 35 00 52 67      [ 1]  209 	mov	0x5267+0, #0x00
                           00006C   210 	C$stm8s_tim1.c$90$1_0$350 ==.
                                    211 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 90: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      008E37 35 00 52 68      [ 1]  212 	mov	0x5268+0, #0x00
                           000070   213 	C$stm8s_tim1.c$91$1_0$350 ==.
                                    214 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 91: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      008E3B 35 00 52 69      [ 1]  215 	mov	0x5269+0, #0x00
                           000074   216 	C$stm8s_tim1.c$92$1_0$350 ==.
                                    217 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 92: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      008E3F 35 00 52 6A      [ 1]  218 	mov	0x526a+0, #0x00
                           000078   219 	C$stm8s_tim1.c$93$1_0$350 ==.
                                    220 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 93: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      008E43 35 00 52 6B      [ 1]  221 	mov	0x526b+0, #0x00
                           00007C   222 	C$stm8s_tim1.c$94$1_0$350 ==.
                                    223 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 94: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      008E47 35 00 52 6C      [ 1]  224 	mov	0x526c+0, #0x00
                           000080   225 	C$stm8s_tim1.c$95$1_0$350 ==.
                                    226 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 95: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
      008E4B 35 00 52 6F      [ 1]  227 	mov	0x526f+0, #0x00
                           000084   228 	C$stm8s_tim1.c$96$1_0$350 ==.
                                    229 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 96: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
      008E4F 35 01 52 57      [ 1]  230 	mov	0x5257+0, #0x01
                           000088   231 	C$stm8s_tim1.c$97$1_0$350 ==.
                                    232 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 97: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
      008E53 35 00 52 6E      [ 1]  233 	mov	0x526e+0, #0x00
                           00008C   234 	C$stm8s_tim1.c$98$1_0$350 ==.
                                    235 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 98: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
      008E57 35 00 52 6D      [ 1]  236 	mov	0x526d+0, #0x00
                           000090   237 	C$stm8s_tim1.c$99$1_0$350 ==.
                                    238 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 99: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
      008E5B 35 00 52 64      [ 1]  239 	mov	0x5264+0, #0x00
                           000094   240 	C$stm8s_tim1.c$100$1_0$350 ==.
                                    241 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 100: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
      008E5F 35 00 52 55      [ 1]  242 	mov	0x5255+0, #0x00
                           000098   243 	C$stm8s_tim1.c$101$1_0$350 ==.
                                    244 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 101: }
                           000098   245 	C$stm8s_tim1.c$101$1_0$350 ==.
                           000098   246 	XG$TIM1_DeInit$0$0 ==.
      008E63 81               [ 4]  247 	ret
                           000099   248 	G$TIM1_TimeBaseInit$0$0 ==.
                           000099   249 	C$stm8s_tim1.c$111$1_0$352 ==.
                                    250 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 111: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    251 ;	-----------------------------------------
                                    252 ;	 function TIM1_TimeBaseInit
                                    253 ;	-----------------------------------------
      008E64                        254 _TIM1_TimeBaseInit:
      008E64 52 04            [ 2]  255 	sub	sp, #4
                           00009B   256 	C$stm8s_tim1.c$120$1_0$352 ==.
                                    257 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 120: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      008E66 7B 0A            [ 1]  258 	ld	a, (0x0a, sp)
      008E68 0F 01            [ 1]  259 	clr	(0x01, sp)
      008E6A C7 52 62         [ 1]  260 	ld	0x5262, a
                           0000A2   261 	C$stm8s_tim1.c$121$1_0$352 ==.
                                    262 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 121: TIM1->ARRL = (uint8_t)(TIM1_Period);
      008E6D 7B 0B            [ 1]  263 	ld	a, (0x0b, sp)
      008E6F C7 52 63         [ 1]  264 	ld	0x5263, a
                           0000A7   265 	C$stm8s_tim1.c$124$1_0$352 ==.
                                    266 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 124: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      008E72 7B 07            [ 1]  267 	ld	a, (0x07, sp)
      008E74 0F 03            [ 1]  268 	clr	(0x03, sp)
      008E76 C7 52 60         [ 1]  269 	ld	0x5260, a
                           0000AE   270 	C$stm8s_tim1.c$125$1_0$352 ==.
                                    271 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 125: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      008E79 7B 08            [ 1]  272 	ld	a, (0x08, sp)
      008E7B C7 52 61         [ 1]  273 	ld	0x5261, a
                           0000B3   274 	C$stm8s_tim1.c$128$1_0$352 ==.
                                    275 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 128: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
      008E7E C6 52 50         [ 1]  276 	ld	a, 0x5250
      008E81 A4 8F            [ 1]  277 	and	a, #0x8f
                           0000B8   278 	C$stm8s_tim1.c$129$1_0$352 ==.
                                    279 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 129: | (uint8_t)(TIM1_CounterMode));
      008E83 1A 09            [ 1]  280 	or	a, (0x09, sp)
      008E85 C7 52 50         [ 1]  281 	ld	0x5250, a
                           0000BD   282 	C$stm8s_tim1.c$132$1_0$352 ==.
                                    283 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 132: TIM1->RCR = TIM1_RepetitionCounter;
      008E88 AE 52 64         [ 2]  284 	ldw	x, #0x5264
      008E8B 7B 0C            [ 1]  285 	ld	a, (0x0c, sp)
      008E8D F7               [ 1]  286 	ld	(x), a
                           0000C3   287 	C$stm8s_tim1.c$133$1_0$352 ==.
                                    288 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 133: }
      008E8E 5B 04            [ 2]  289 	addw	sp, #4
                           0000C5   290 	C$stm8s_tim1.c$133$1_0$352 ==.
                           0000C5   291 	XG$TIM1_TimeBaseInit$0$0 ==.
      008E90 81               [ 4]  292 	ret
                           0000C6   293 	G$TIM1_OC1Init$0$0 ==.
                           0000C6   294 	C$stm8s_tim1.c$154$1_0$354 ==.
                                    295 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 154: void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    296 ;	-----------------------------------------
                                    297 ;	 function TIM1_OC1Init
                                    298 ;	-----------------------------------------
      008E91                        299 _TIM1_OC1Init:
      008E91 52 06            [ 2]  300 	sub	sp, #6
                           0000C8   301 	C$stm8s_tim1.c$174$1_0$354 ==.
                                    302 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 174: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
      008E93 C6 52 5C         [ 1]  303 	ld	a, 0x525c
      008E96 A4 F0            [ 1]  304 	and	a, #0xf0
      008E98 C7 52 5C         [ 1]  305 	ld	0x525c, a
                           0000D0   306 	C$stm8s_tim1.c$178$1_0$354 ==.
                                    307 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 178: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
      008E9B C6 52 5C         [ 1]  308 	ld	a, 0x525c
      008E9E 6B 02            [ 1]  309 	ld	(0x02, sp), a
      008EA0 7B 0A            [ 1]  310 	ld	a, (0x0a, sp)
      008EA2 A4 01            [ 1]  311 	and	a, #0x01
      008EA4 6B 01            [ 1]  312 	ld	(0x01, sp), a
                           0000DB   313 	C$stm8s_tim1.c$179$1_0$354 ==.
                                    314 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 179: | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
      008EA6 7B 0B            [ 1]  315 	ld	a, (0x0b, sp)
      008EA8 A4 04            [ 1]  316 	and	a, #0x04
      008EAA 1A 01            [ 1]  317 	or	a, (0x01, sp)
      008EAC 6B 05            [ 1]  318 	ld	(0x05, sp), a
                           0000E3   319 	C$stm8s_tim1.c$180$1_0$354 ==.
                                    320 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 180: | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
      008EAE 7B 0E            [ 1]  321 	ld	a, (0x0e, sp)
      008EB0 A4 02            [ 1]  322 	and	a, #0x02
      008EB2 6B 06            [ 1]  323 	ld	(0x06, sp), a
                           0000E9   324 	C$stm8s_tim1.c$181$1_0$354 ==.
                                    325 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 181: | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
      008EB4 7B 0F            [ 1]  326 	ld	a, (0x0f, sp)
      008EB6 A4 08            [ 1]  327 	and	a, #0x08
      008EB8 1A 06            [ 1]  328 	or	a, (0x06, sp)
      008EBA 1A 05            [ 1]  329 	or	a, (0x05, sp)
      008EBC 1A 02            [ 1]  330 	or	a, (0x02, sp)
      008EBE C7 52 5C         [ 1]  331 	ld	0x525c, a
                           0000F6   332 	C$stm8s_tim1.c$184$1_0$354 ==.
                                    333 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 184: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      008EC1 C6 52 58         [ 1]  334 	ld	a, 0x5258
      008EC4 A4 8F            [ 1]  335 	and	a, #0x8f
                           0000FB   336 	C$stm8s_tim1.c$185$1_0$354 ==.
                                    337 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 185: (uint8_t)TIM1_OCMode);
      008EC6 1A 09            [ 1]  338 	or	a, (0x09, sp)
      008EC8 C7 52 58         [ 1]  339 	ld	0x5258, a
                           000100   340 	C$stm8s_tim1.c$188$1_0$354 ==.
                                    341 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 188: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
      008ECB C6 52 6F         [ 1]  342 	ld	a, 0x526f
      008ECE A4 FC            [ 1]  343 	and	a, #0xfc
      008ED0 C7 52 6F         [ 1]  344 	ld	0x526f, a
                           000108   345 	C$stm8s_tim1.c$190$1_0$354 ==.
                                    346 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 190: TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
      008ED3 C6 52 6F         [ 1]  347 	ld	a, 0x526f
      008ED6 6B 04            [ 1]  348 	ld	(0x04, sp), a
      008ED8 7B 10            [ 1]  349 	ld	a, (0x10, sp)
      008EDA A4 01            [ 1]  350 	and	a, #0x01
      008EDC 6B 03            [ 1]  351 	ld	(0x03, sp), a
                           000113   352 	C$stm8s_tim1.c$191$1_0$354 ==.
                                    353 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 191: (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
      008EDE 7B 11            [ 1]  354 	ld	a, (0x11, sp)
      008EE0 A4 02            [ 1]  355 	and	a, #0x02
      008EE2 1A 03            [ 1]  356 	or	a, (0x03, sp)
      008EE4 1A 04            [ 1]  357 	or	a, (0x04, sp)
      008EE6 C7 52 6F         [ 1]  358 	ld	0x526f, a
                           00011E   359 	C$stm8s_tim1.c$194$1_0$354 ==.
                                    360 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 194: TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
      008EE9 7B 0C            [ 1]  361 	ld	a, (0x0c, sp)
      008EEB C7 52 65         [ 1]  362 	ld	0x5265, a
                           000123   363 	C$stm8s_tim1.c$195$1_0$354 ==.
                                    364 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 195: TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
      008EEE 7B 0D            [ 1]  365 	ld	a, (0x0d, sp)
      008EF0 C7 52 66         [ 1]  366 	ld	0x5266, a
                           000128   367 	C$stm8s_tim1.c$196$1_0$354 ==.
                                    368 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 196: }
      008EF3 5B 06            [ 2]  369 	addw	sp, #6
                           00012A   370 	C$stm8s_tim1.c$196$1_0$354 ==.
                           00012A   371 	XG$TIM1_OC1Init$0$0 ==.
      008EF5 81               [ 4]  372 	ret
                           00012B   373 	G$TIM1_OC2Init$0$0 ==.
                           00012B   374 	C$stm8s_tim1.c$217$1_0$356 ==.
                                    375 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 217: void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    376 ;	-----------------------------------------
                                    377 ;	 function TIM1_OC2Init
                                    378 ;	-----------------------------------------
      008EF6                        379 _TIM1_OC2Init:
      008EF6 52 06            [ 2]  380 	sub	sp, #6
                           00012D   381 	C$stm8s_tim1.c$237$1_0$356 ==.
                                    382 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 237: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
      008EF8 C6 52 5C         [ 1]  383 	ld	a, 0x525c
      008EFB A4 0F            [ 1]  384 	and	a, #0x0f
      008EFD C7 52 5C         [ 1]  385 	ld	0x525c, a
                           000135   386 	C$stm8s_tim1.c$242$1_0$356 ==.
                                    387 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 242: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
      008F00 C6 52 5C         [ 1]  388 	ld	a, 0x525c
      008F03 6B 06            [ 1]  389 	ld	(0x06, sp), a
      008F05 7B 0A            [ 1]  390 	ld	a, (0x0a, sp)
      008F07 A4 10            [ 1]  391 	and	a, #0x10
      008F09 6B 05            [ 1]  392 	ld	(0x05, sp), a
                           000140   393 	C$stm8s_tim1.c$243$1_0$356 ==.
                                    394 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 243: (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
      008F0B 7B 0B            [ 1]  395 	ld	a, (0x0b, sp)
      008F0D A4 40            [ 1]  396 	and	a, #0x40
      008F0F 1A 05            [ 1]  397 	or	a, (0x05, sp)
      008F11 6B 04            [ 1]  398 	ld	(0x04, sp), a
                           000148   399 	C$stm8s_tim1.c$244$1_0$356 ==.
                                    400 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 244: (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
      008F13 7B 0E            [ 1]  401 	ld	a, (0x0e, sp)
      008F15 A4 20            [ 1]  402 	and	a, #0x20
      008F17 6B 03            [ 1]  403 	ld	(0x03, sp), a
                           00014E   404 	C$stm8s_tim1.c$245$1_0$356 ==.
                                    405 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 245: (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
      008F19 7B 0F            [ 1]  406 	ld	a, (0x0f, sp)
      008F1B A4 80            [ 1]  407 	and	a, #0x80
      008F1D 1A 03            [ 1]  408 	or	a, (0x03, sp)
      008F1F 1A 04            [ 1]  409 	or	a, (0x04, sp)
      008F21 1A 06            [ 1]  410 	or	a, (0x06, sp)
      008F23 C7 52 5C         [ 1]  411 	ld	0x525c, a
                           00015B   412 	C$stm8s_tim1.c$248$1_0$356 ==.
                                    413 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 248: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      008F26 C6 52 59         [ 1]  414 	ld	a, 0x5259
      008F29 A4 8F            [ 1]  415 	and	a, #0x8f
                           000160   416 	C$stm8s_tim1.c$249$1_0$356 ==.
                                    417 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 249: (uint8_t)TIM1_OCMode);
      008F2B 1A 09            [ 1]  418 	or	a, (0x09, sp)
      008F2D C7 52 59         [ 1]  419 	ld	0x5259, a
                           000165   420 	C$stm8s_tim1.c$252$1_0$356 ==.
                                    421 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 252: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
      008F30 C6 52 6F         [ 1]  422 	ld	a, 0x526f
      008F33 A4 F3            [ 1]  423 	and	a, #0xf3
      008F35 C7 52 6F         [ 1]  424 	ld	0x526f, a
                           00016D   425 	C$stm8s_tim1.c$254$1_0$356 ==.
                                    426 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 254: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
      008F38 C6 52 6F         [ 1]  427 	ld	a, 0x526f
      008F3B 6B 01            [ 1]  428 	ld	(0x01, sp), a
      008F3D 7B 10            [ 1]  429 	ld	a, (0x10, sp)
      008F3F A4 04            [ 1]  430 	and	a, #0x04
      008F41 6B 02            [ 1]  431 	ld	(0x02, sp), a
                           000178   432 	C$stm8s_tim1.c$255$1_0$356 ==.
                                    433 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 255: (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
      008F43 7B 11            [ 1]  434 	ld	a, (0x11, sp)
      008F45 A4 08            [ 1]  435 	and	a, #0x08
      008F47 1A 02            [ 1]  436 	or	a, (0x02, sp)
      008F49 1A 01            [ 1]  437 	or	a, (0x01, sp)
      008F4B C7 52 6F         [ 1]  438 	ld	0x526f, a
                           000183   439 	C$stm8s_tim1.c$258$1_0$356 ==.
                                    440 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 258: TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
      008F4E 7B 0C            [ 1]  441 	ld	a, (0x0c, sp)
      008F50 C7 52 67         [ 1]  442 	ld	0x5267, a
                           000188   443 	C$stm8s_tim1.c$259$1_0$356 ==.
                                    444 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 259: TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
      008F53 7B 0D            [ 1]  445 	ld	a, (0x0d, sp)
      008F55 C7 52 68         [ 1]  446 	ld	0x5268, a
                           00018D   447 	C$stm8s_tim1.c$260$1_0$356 ==.
                                    448 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 260: }
      008F58 5B 06            [ 2]  449 	addw	sp, #6
                           00018F   450 	C$stm8s_tim1.c$260$1_0$356 ==.
                           00018F   451 	XG$TIM1_OC2Init$0$0 ==.
      008F5A 81               [ 4]  452 	ret
                           000190   453 	G$TIM1_OC3Init$0$0 ==.
                           000190   454 	C$stm8s_tim1.c$281$1_0$358 ==.
                                    455 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 281: void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    456 ;	-----------------------------------------
                                    457 ;	 function TIM1_OC3Init
                                    458 ;	-----------------------------------------
      008F5B                        459 _TIM1_OC3Init:
      008F5B 52 06            [ 2]  460 	sub	sp, #6
                           000192   461 	C$stm8s_tim1.c$301$1_0$358 ==.
                                    462 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 301: TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
      008F5D C6 52 5D         [ 1]  463 	ld	a, 0x525d
      008F60 A4 F0            [ 1]  464 	and	a, #0xf0
      008F62 C7 52 5D         [ 1]  465 	ld	0x525d, a
                           00019A   466 	C$stm8s_tim1.c$305$1_0$358 ==.
                                    467 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 305: TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
      008F65 C6 52 5D         [ 1]  468 	ld	a, 0x525d
      008F68 6B 02            [ 1]  469 	ld	(0x02, sp), a
      008F6A 7B 0A            [ 1]  470 	ld	a, (0x0a, sp)
      008F6C A4 01            [ 1]  471 	and	a, #0x01
      008F6E 6B 06            [ 1]  472 	ld	(0x06, sp), a
                           0001A5   473 	C$stm8s_tim1.c$306$1_0$358 ==.
                                    474 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 306: (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
      008F70 7B 0B            [ 1]  475 	ld	a, (0x0b, sp)
      008F72 A4 04            [ 1]  476 	and	a, #0x04
      008F74 1A 06            [ 1]  477 	or	a, (0x06, sp)
      008F76 6B 04            [ 1]  478 	ld	(0x04, sp), a
                           0001AD   479 	C$stm8s_tim1.c$307$1_0$358 ==.
                                    480 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 307: (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
      008F78 7B 0E            [ 1]  481 	ld	a, (0x0e, sp)
      008F7A A4 02            [ 1]  482 	and	a, #0x02
      008F7C 6B 03            [ 1]  483 	ld	(0x03, sp), a
                           0001B3   484 	C$stm8s_tim1.c$308$1_0$358 ==.
                                    485 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 308: (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
      008F7E 7B 0F            [ 1]  486 	ld	a, (0x0f, sp)
      008F80 A4 08            [ 1]  487 	and	a, #0x08
      008F82 1A 03            [ 1]  488 	or	a, (0x03, sp)
      008F84 1A 04            [ 1]  489 	or	a, (0x04, sp)
      008F86 1A 02            [ 1]  490 	or	a, (0x02, sp)
      008F88 C7 52 5D         [ 1]  491 	ld	0x525d, a
                           0001C0   492 	C$stm8s_tim1.c$311$1_0$358 ==.
                                    493 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 311: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      008F8B C6 52 5A         [ 1]  494 	ld	a, 0x525a
      008F8E A4 8F            [ 1]  495 	and	a, #0x8f
                           0001C5   496 	C$stm8s_tim1.c$312$1_0$358 ==.
                                    497 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 312: (uint8_t)TIM1_OCMode);
      008F90 1A 09            [ 1]  498 	or	a, (0x09, sp)
      008F92 C7 52 5A         [ 1]  499 	ld	0x525a, a
                           0001CA   500 	C$stm8s_tim1.c$315$1_0$358 ==.
                                    501 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 315: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
      008F95 C6 52 6F         [ 1]  502 	ld	a, 0x526f
      008F98 A4 CF            [ 1]  503 	and	a, #0xcf
      008F9A C7 52 6F         [ 1]  504 	ld	0x526f, a
                           0001D2   505 	C$stm8s_tim1.c$317$1_0$358 ==.
                                    506 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 317: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
      008F9D C6 52 6F         [ 1]  507 	ld	a, 0x526f
      008FA0 6B 05            [ 1]  508 	ld	(0x05, sp), a
      008FA2 7B 10            [ 1]  509 	ld	a, (0x10, sp)
      008FA4 A4 10            [ 1]  510 	and	a, #0x10
      008FA6 6B 01            [ 1]  511 	ld	(0x01, sp), a
                           0001DD   512 	C$stm8s_tim1.c$318$1_0$358 ==.
                                    513 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 318: (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
      008FA8 7B 11            [ 1]  514 	ld	a, (0x11, sp)
      008FAA A4 20            [ 1]  515 	and	a, #0x20
      008FAC 1A 01            [ 1]  516 	or	a, (0x01, sp)
      008FAE 1A 05            [ 1]  517 	or	a, (0x05, sp)
      008FB0 C7 52 6F         [ 1]  518 	ld	0x526f, a
                           0001E8   519 	C$stm8s_tim1.c$321$1_0$358 ==.
                                    520 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 321: TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
      008FB3 7B 0C            [ 1]  521 	ld	a, (0x0c, sp)
      008FB5 C7 52 69         [ 1]  522 	ld	0x5269, a
                           0001ED   523 	C$stm8s_tim1.c$322$1_0$358 ==.
                                    524 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 322: TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
      008FB8 7B 0D            [ 1]  525 	ld	a, (0x0d, sp)
      008FBA C7 52 6A         [ 1]  526 	ld	0x526a, a
                           0001F2   527 	C$stm8s_tim1.c$323$1_0$358 ==.
                                    528 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 323: }
      008FBD 5B 06            [ 2]  529 	addw	sp, #6
                           0001F4   530 	C$stm8s_tim1.c$323$1_0$358 ==.
                           0001F4   531 	XG$TIM1_OC3Init$0$0 ==.
      008FBF 81               [ 4]  532 	ret
                           0001F5   533 	G$TIM1_OC4Init$0$0 ==.
                           0001F5   534 	C$stm8s_tim1.c$338$1_0$360 ==.
                                    535 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 338: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    536 ;	-----------------------------------------
                                    537 ;	 function TIM1_OC4Init
                                    538 ;	-----------------------------------------
      008FC0                        539 _TIM1_OC4Init:
      008FC0 52 02            [ 2]  540 	sub	sp, #2
                           0001F7   541 	C$stm8s_tim1.c$351$1_0$360 ==.
                                    542 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 351: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
      008FC2 C6 52 5D         [ 1]  543 	ld	a, 0x525d
      008FC5 A4 CF            [ 1]  544 	and	a, #0xcf
      008FC7 C7 52 5D         [ 1]  545 	ld	0x525d, a
                           0001FF   546 	C$stm8s_tim1.c$353$1_0$360 ==.
                                    547 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 353: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
      008FCA C6 52 5D         [ 1]  548 	ld	a, 0x525d
      008FCD 6B 02            [ 1]  549 	ld	(0x02, sp), a
      008FCF 7B 06            [ 1]  550 	ld	a, (0x06, sp)
      008FD1 A4 10            [ 1]  551 	and	a, #0x10
      008FD3 6B 01            [ 1]  552 	ld	(0x01, sp), a
                           00020A   553 	C$stm8s_tim1.c$354$1_0$360 ==.
                                    554 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 354: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
      008FD5 7B 09            [ 1]  555 	ld	a, (0x09, sp)
      008FD7 A4 20            [ 1]  556 	and	a, #0x20
      008FD9 1A 01            [ 1]  557 	or	a, (0x01, sp)
      008FDB 1A 02            [ 1]  558 	or	a, (0x02, sp)
      008FDD C7 52 5D         [ 1]  559 	ld	0x525d, a
                           000215   560 	C$stm8s_tim1.c$357$1_0$360 ==.
                                    561 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 357: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      008FE0 C6 52 5B         [ 1]  562 	ld	a, 0x525b
      008FE3 A4 8F            [ 1]  563 	and	a, #0x8f
      008FE5 1A 05            [ 1]  564 	or	a, (0x05, sp)
      008FE7 C7 52 5B         [ 1]  565 	ld	0x525b, a
                           00021F   566 	C$stm8s_tim1.c$361$1_0$360 ==.
                                    567 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 361: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
      008FEA 0D 0A            [ 1]  568 	tnz	(0x0a, sp)
      008FEC 27 0A            [ 1]  569 	jreq	00102$
                           000223   570 	C$stm8s_tim1.c$363$2_0$361 ==.
                                    571 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      008FEE C6 52 6F         [ 1]  572 	ld	a, 0x526f
      008FF1 AA DF            [ 1]  573 	or	a, #0xdf
      008FF3 C7 52 6F         [ 1]  574 	ld	0x526f, a
      008FF6 20 04            [ 2]  575 	jra	00103$
      008FF8                        576 00102$:
                           00022D   577 	C$stm8s_tim1.c$367$2_0$362 ==.
                                    578 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 367: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
      008FF8 72 1D 52 6F      [ 1]  579 	bres	21103, #6
      008FFC                        580 00103$:
                           000231   581 	C$stm8s_tim1.c$371$1_0$360 ==.
                                    582 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 371: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
      008FFC 7B 07            [ 1]  583 	ld	a, (0x07, sp)
      008FFE C7 52 6B         [ 1]  584 	ld	0x526b, a
                           000236   585 	C$stm8s_tim1.c$372$1_0$360 ==.
                                    586 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 372: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
      009001 7B 08            [ 1]  587 	ld	a, (0x08, sp)
      009003 C7 52 6C         [ 1]  588 	ld	0x526c, a
                           00023B   589 	C$stm8s_tim1.c$373$1_0$360 ==.
                                    590 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 373: }
      009006 5B 02            [ 2]  591 	addw	sp, #2
                           00023D   592 	C$stm8s_tim1.c$373$1_0$360 ==.
                           00023D   593 	XG$TIM1_OC4Init$0$0 ==.
      009008 81               [ 4]  594 	ret
                           00023E   595 	G$TIM1_BDTRConfig$0$0 ==.
                           00023E   596 	C$stm8s_tim1.c$388$1_0$364 ==.
                                    597 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 388: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
                                    598 ;	-----------------------------------------
                                    599 ;	 function TIM1_BDTRConfig
                                    600 ;	-----------------------------------------
      009009                        601 _TIM1_BDTRConfig:
      009009 88               [ 1]  602 	push	a
                           00023F   603 	C$stm8s_tim1.c$402$1_0$364 ==.
                                    604 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 402: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
      00900A AE 52 6E         [ 2]  605 	ldw	x, #0x526e
      00900D 7B 06            [ 1]  606 	ld	a, (0x06, sp)
      00900F F7               [ 1]  607 	ld	(x), a
                           000245   608 	C$stm8s_tim1.c$406$1_0$364 ==.
                                    609 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 406: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
      009010 7B 04            [ 1]  610 	ld	a, (0x04, sp)
      009012 1A 05            [ 1]  611 	or	a, (0x05, sp)
      009014 6B 01            [ 1]  612 	ld	(0x01, sp), a
                           00024B   613 	C$stm8s_tim1.c$407$1_0$364 ==.
                                    614 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 407: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
      009016 7B 07            [ 1]  615 	ld	a, (0x07, sp)
      009018 1A 08            [ 1]  616 	or	a, (0x08, sp)
                           00024F   617 	C$stm8s_tim1.c$408$1_0$364 ==.
                                    618 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 408: (uint8_t)TIM1_AutomaticOutput));
      00901A 1A 09            [ 1]  619 	or	a, (0x09, sp)
      00901C 1A 01            [ 1]  620 	or	a, (0x01, sp)
      00901E C7 52 6D         [ 1]  621 	ld	0x526d, a
                           000256   622 	C$stm8s_tim1.c$409$1_0$364 ==.
                                    623 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 409: }
      009021 84               [ 1]  624 	pop	a
                           000257   625 	C$stm8s_tim1.c$409$1_0$364 ==.
                           000257   626 	XG$TIM1_BDTRConfig$0$0 ==.
      009022 81               [ 4]  627 	ret
                           000258   628 	G$TIM1_ICInit$0$0 ==.
                           000258   629 	C$stm8s_tim1.c$423$1_0$366 ==.
                                    630 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 423: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                    631 ;	-----------------------------------------
                                    632 ;	 function TIM1_ICInit
                                    633 ;	-----------------------------------------
      009023                        634 _TIM1_ICInit:
                           000258   635 	C$stm8s_tim1.c$436$1_0$366 ==.
                                    636 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 436: if (TIM1_Channel == TIM1_CHANNEL_1)
      009023 0D 03            [ 1]  637 	tnz	(0x03, sp)
      009025 26 18            [ 1]  638 	jrne	00108$
                           00025C   639 	C$stm8s_tim1.c$439$2_0$367 ==.
                                    640 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 439: TI1_Config((uint8_t)TIM1_ICPolarity,
      009027 7B 07            [ 1]  641 	ld	a, (0x07, sp)
      009029 88               [ 1]  642 	push	a
      00902A 7B 06            [ 1]  643 	ld	a, (0x06, sp)
      00902C 88               [ 1]  644 	push	a
      00902D 7B 06            [ 1]  645 	ld	a, (0x06, sp)
      00902F 88               [ 1]  646 	push	a
      009030 CD 96 1F         [ 4]  647 	call	_TI1_Config
      009033 5B 03            [ 2]  648 	addw	sp, #3
                           00026A   649 	C$stm8s_tim1.c$443$2_0$367 ==.
                                    650 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 443: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      009035 7B 06            [ 1]  651 	ld	a, (0x06, sp)
      009037 88               [ 1]  652 	push	a
      009038 CD 95 07         [ 4]  653 	call	_TIM1_SetIC1Prescaler
      00903B 84               [ 1]  654 	pop	a
      00903C CC 90 8D         [ 2]  655 	jp	00110$
      00903F                        656 00108$:
                           000274   657 	C$stm8s_tim1.c$445$1_0$366 ==.
                                    658 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 445: else if (TIM1_Channel == TIM1_CHANNEL_2)
      00903F 7B 03            [ 1]  659 	ld	a, (0x03, sp)
      009041 4A               [ 1]  660 	dec	a
      009042 26 17            [ 1]  661 	jrne	00105$
                           000279   662 	C$stm8s_tim1.c$448$2_0$368 ==.
                                    663 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 448: TI2_Config((uint8_t)TIM1_ICPolarity,
      009044 7B 07            [ 1]  664 	ld	a, (0x07, sp)
      009046 88               [ 1]  665 	push	a
      009047 7B 06            [ 1]  666 	ld	a, (0x06, sp)
      009049 88               [ 1]  667 	push	a
      00904A 7B 06            [ 1]  668 	ld	a, (0x06, sp)
      00904C 88               [ 1]  669 	push	a
      00904D CD 96 4B         [ 4]  670 	call	_TI2_Config
      009050 5B 03            [ 2]  671 	addw	sp, #3
                           000287   672 	C$stm8s_tim1.c$452$2_0$368 ==.
                                    673 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 452: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      009052 7B 06            [ 1]  674 	ld	a, (0x06, sp)
      009054 88               [ 1]  675 	push	a
      009055 CD 95 12         [ 4]  676 	call	_TIM1_SetIC2Prescaler
      009058 84               [ 1]  677 	pop	a
      009059 20 32            [ 2]  678 	jra	00110$
      00905B                        679 00105$:
                           000290   680 	C$stm8s_tim1.c$454$1_0$366 ==.
                                    681 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 454: else if (TIM1_Channel == TIM1_CHANNEL_3)
      00905B 7B 03            [ 1]  682 	ld	a, (0x03, sp)
      00905D A1 02            [ 1]  683 	cp	a, #0x02
      00905F 26 17            [ 1]  684 	jrne	00102$
                           000296   685 	C$stm8s_tim1.c$457$2_0$369 ==.
                                    686 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 457: TI3_Config((uint8_t)TIM1_ICPolarity,
      009061 7B 07            [ 1]  687 	ld	a, (0x07, sp)
      009063 88               [ 1]  688 	push	a
      009064 7B 06            [ 1]  689 	ld	a, (0x06, sp)
      009066 88               [ 1]  690 	push	a
      009067 7B 06            [ 1]  691 	ld	a, (0x06, sp)
      009069 88               [ 1]  692 	push	a
      00906A CD 96 77         [ 4]  693 	call	_TI3_Config
      00906D 5B 03            [ 2]  694 	addw	sp, #3
                           0002A4   695 	C$stm8s_tim1.c$461$2_0$369 ==.
                                    696 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 461: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      00906F 7B 06            [ 1]  697 	ld	a, (0x06, sp)
      009071 88               [ 1]  698 	push	a
      009072 CD 95 1D         [ 4]  699 	call	_TIM1_SetIC3Prescaler
      009075 84               [ 1]  700 	pop	a
      009076 20 15            [ 2]  701 	jra	00110$
      009078                        702 00102$:
                           0002AD   703 	C$stm8s_tim1.c$466$2_0$370 ==.
                                    704 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 466: TI4_Config((uint8_t)TIM1_ICPolarity,
      009078 7B 07            [ 1]  705 	ld	a, (0x07, sp)
      00907A 88               [ 1]  706 	push	a
      00907B 7B 06            [ 1]  707 	ld	a, (0x06, sp)
      00907D 88               [ 1]  708 	push	a
      00907E 7B 06            [ 1]  709 	ld	a, (0x06, sp)
      009080 88               [ 1]  710 	push	a
      009081 CD 96 A7         [ 4]  711 	call	_TI4_Config
      009084 5B 03            [ 2]  712 	addw	sp, #3
                           0002BB   713 	C$stm8s_tim1.c$470$2_0$370 ==.
                                    714 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 470: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      009086 7B 06            [ 1]  715 	ld	a, (0x06, sp)
      009088 88               [ 1]  716 	push	a
      009089 CD 95 28         [ 4]  717 	call	_TIM1_SetIC4Prescaler
      00908C 84               [ 1]  718 	pop	a
      00908D                        719 00110$:
                           0002C2   720 	C$stm8s_tim1.c$472$1_0$366 ==.
                                    721 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 472: }
                           0002C2   722 	C$stm8s_tim1.c$472$1_0$366 ==.
                           0002C2   723 	XG$TIM1_ICInit$0$0 ==.
      00908D 81               [ 4]  724 	ret
                           0002C3   725 	G$TIM1_PWMIConfig$0$0 ==.
                           0002C3   726 	C$stm8s_tim1.c$488$1_0$372 ==.
                                    727 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 488: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
                                    728 ;	-----------------------------------------
                                    729 ;	 function TIM1_PWMIConfig
                                    730 ;	-----------------------------------------
      00908E                        731 _TIM1_PWMIConfig:
      00908E 52 02            [ 2]  732 	sub	sp, #2
                           0002C5   733 	C$stm8s_tim1.c$504$1_0$372 ==.
                                    734 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 504: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
      009090 7B 06            [ 1]  735 	ld	a, (0x06, sp)
      009092 4A               [ 1]  736 	dec	a
      009093 27 06            [ 1]  737 	jreq	00102$
                           0002CA   738 	C$stm8s_tim1.c$506$2_0$373 ==.
                                    739 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 506: icpolarity = TIM1_ICPOLARITY_FALLING;
      009095 A6 01            [ 1]  740 	ld	a, #0x01
      009097 6B 02            [ 1]  741 	ld	(0x02, sp), a
      009099 20 02            [ 2]  742 	jra	00103$
      00909B                        743 00102$:
                           0002D0   744 	C$stm8s_tim1.c$510$2_0$374 ==.
                                    745 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 510: icpolarity = TIM1_ICPOLARITY_RISING;
      00909B 0F 02            [ 1]  746 	clr	(0x02, sp)
      00909D                        747 00103$:
                           0002D2   748 	C$stm8s_tim1.c$514$1_0$372 ==.
                                    749 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 514: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
      00909D 7B 07            [ 1]  750 	ld	a, (0x07, sp)
      00909F 4A               [ 1]  751 	dec	a
      0090A0 26 06            [ 1]  752 	jrne	00105$
                           0002D7   753 	C$stm8s_tim1.c$516$2_0$375 ==.
                                    754 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 516: icselection = TIM1_ICSELECTION_INDIRECTTI;
      0090A2 A6 02            [ 1]  755 	ld	a, #0x02
      0090A4 6B 01            [ 1]  756 	ld	(0x01, sp), a
      0090A6 20 04            [ 2]  757 	jra	00106$
      0090A8                        758 00105$:
                           0002DD   759 	C$stm8s_tim1.c$520$2_0$376 ==.
                                    760 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 520: icselection = TIM1_ICSELECTION_DIRECTTI;
      0090A8 A6 01            [ 1]  761 	ld	a, #0x01
      0090AA 6B 01            [ 1]  762 	ld	(0x01, sp), a
      0090AC                        763 00106$:
                           0002E1   764 	C$stm8s_tim1.c$523$1_0$372 ==.
                                    765 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 523: if (TIM1_Channel == TIM1_CHANNEL_1)
      0090AC 0D 05            [ 1]  766 	tnz	(0x05, sp)
      0090AE 26 2C            [ 1]  767 	jrne	00108$
                           0002E5   768 	C$stm8s_tim1.c$526$2_0$377 ==.
                                    769 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 526: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      0090B0 7B 09            [ 1]  770 	ld	a, (0x09, sp)
      0090B2 88               [ 1]  771 	push	a
      0090B3 7B 08            [ 1]  772 	ld	a, (0x08, sp)
      0090B5 88               [ 1]  773 	push	a
      0090B6 7B 08            [ 1]  774 	ld	a, (0x08, sp)
      0090B8 88               [ 1]  775 	push	a
      0090B9 CD 96 1F         [ 4]  776 	call	_TI1_Config
      0090BC 5B 03            [ 2]  777 	addw	sp, #3
                           0002F3   778 	C$stm8s_tim1.c$530$2_0$377 ==.
                                    779 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 530: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      0090BE 7B 08            [ 1]  780 	ld	a, (0x08, sp)
      0090C0 88               [ 1]  781 	push	a
      0090C1 CD 95 07         [ 4]  782 	call	_TIM1_SetIC1Prescaler
      0090C4 84               [ 1]  783 	pop	a
                           0002FA   784 	C$stm8s_tim1.c$533$2_0$377 ==.
                                    785 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 533: TI2_Config(icpolarity, icselection, TIM1_ICFilter);
      0090C5 7B 09            [ 1]  786 	ld	a, (0x09, sp)
      0090C7 88               [ 1]  787 	push	a
      0090C8 7B 02            [ 1]  788 	ld	a, (0x02, sp)
      0090CA 88               [ 1]  789 	push	a
      0090CB 7B 04            [ 1]  790 	ld	a, (0x04, sp)
      0090CD 88               [ 1]  791 	push	a
      0090CE CD 96 4B         [ 4]  792 	call	_TI2_Config
      0090D1 5B 03            [ 2]  793 	addw	sp, #3
                           000308   794 	C$stm8s_tim1.c$536$2_0$377 ==.
                                    795 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 536: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      0090D3 7B 08            [ 1]  796 	ld	a, (0x08, sp)
      0090D5 88               [ 1]  797 	push	a
      0090D6 CD 95 12         [ 4]  798 	call	_TIM1_SetIC2Prescaler
      0090D9 84               [ 1]  799 	pop	a
      0090DA 20 2A            [ 2]  800 	jra	00110$
      0090DC                        801 00108$:
                           000311   802 	C$stm8s_tim1.c$541$2_0$378 ==.
                                    803 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 541: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      0090DC 7B 09            [ 1]  804 	ld	a, (0x09, sp)
      0090DE 88               [ 1]  805 	push	a
      0090DF 7B 08            [ 1]  806 	ld	a, (0x08, sp)
      0090E1 88               [ 1]  807 	push	a
      0090E2 7B 08            [ 1]  808 	ld	a, (0x08, sp)
      0090E4 88               [ 1]  809 	push	a
      0090E5 CD 96 4B         [ 4]  810 	call	_TI2_Config
      0090E8 5B 03            [ 2]  811 	addw	sp, #3
                           00031F   812 	C$stm8s_tim1.c$545$2_0$378 ==.
                                    813 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 545: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      0090EA 7B 08            [ 1]  814 	ld	a, (0x08, sp)
      0090EC 88               [ 1]  815 	push	a
      0090ED CD 95 12         [ 4]  816 	call	_TIM1_SetIC2Prescaler
      0090F0 84               [ 1]  817 	pop	a
                           000326   818 	C$stm8s_tim1.c$548$2_0$378 ==.
                                    819 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 548: TI1_Config(icpolarity, icselection, TIM1_ICFilter);
      0090F1 7B 09            [ 1]  820 	ld	a, (0x09, sp)
      0090F3 88               [ 1]  821 	push	a
      0090F4 7B 02            [ 1]  822 	ld	a, (0x02, sp)
      0090F6 88               [ 1]  823 	push	a
      0090F7 7B 04            [ 1]  824 	ld	a, (0x04, sp)
      0090F9 88               [ 1]  825 	push	a
      0090FA CD 96 1F         [ 4]  826 	call	_TI1_Config
      0090FD 5B 03            [ 2]  827 	addw	sp, #3
                           000334   828 	C$stm8s_tim1.c$551$2_0$378 ==.
                                    829 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 551: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      0090FF 7B 08            [ 1]  830 	ld	a, (0x08, sp)
      009101 88               [ 1]  831 	push	a
      009102 CD 95 07         [ 4]  832 	call	_TIM1_SetIC1Prescaler
      009105 84               [ 1]  833 	pop	a
      009106                        834 00110$:
                           00033B   835 	C$stm8s_tim1.c$553$1_0$372 ==.
                                    836 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 553: }
      009106 5B 02            [ 2]  837 	addw	sp, #2
                           00033D   838 	C$stm8s_tim1.c$553$1_0$372 ==.
                           00033D   839 	XG$TIM1_PWMIConfig$0$0 ==.
      009108 81               [ 4]  840 	ret
                           00033E   841 	G$TIM1_Cmd$0$0 ==.
                           00033E   842 	C$stm8s_tim1.c$561$1_0$380 ==.
                                    843 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 561: void TIM1_Cmd(FunctionalState NewState)
                                    844 ;	-----------------------------------------
                                    845 ;	 function TIM1_Cmd
                                    846 ;	-----------------------------------------
      009109                        847 _TIM1_Cmd:
                           00033E   848 	C$stm8s_tim1.c$567$1_0$380 ==.
                                    849 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 567: if (NewState != DISABLE)
      009109 0D 03            [ 1]  850 	tnz	(0x03, sp)
      00910B 27 06            [ 1]  851 	jreq	00102$
                           000342   852 	C$stm8s_tim1.c$569$2_0$381 ==.
                                    853 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      00910D 72 10 52 50      [ 1]  854 	bset	21072, #0
      009111 20 04            [ 2]  855 	jra	00104$
      009113                        856 00102$:
                           000348   857 	C$stm8s_tim1.c$573$2_0$382 ==.
                                    858 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 573: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      009113 72 11 52 50      [ 1]  859 	bres	21072, #0
      009117                        860 00104$:
                           00034C   861 	C$stm8s_tim1.c$575$1_0$380 ==.
                                    862 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 575: }
                           00034C   863 	C$stm8s_tim1.c$575$1_0$380 ==.
                           00034C   864 	XG$TIM1_Cmd$0$0 ==.
      009117 81               [ 4]  865 	ret
                           00034D   866 	G$TIM1_CtrlPWMOutputs$0$0 ==.
                           00034D   867 	C$stm8s_tim1.c$583$1_0$384 ==.
                                    868 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 583: void TIM1_CtrlPWMOutputs(FunctionalState NewState)
                                    869 ;	-----------------------------------------
                                    870 ;	 function TIM1_CtrlPWMOutputs
                                    871 ;	-----------------------------------------
      009118                        872 _TIM1_CtrlPWMOutputs:
                           00034D   873 	C$stm8s_tim1.c$590$1_0$384 ==.
                                    874 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 590: if (NewState != DISABLE)
      009118 0D 03            [ 1]  875 	tnz	(0x03, sp)
      00911A 27 06            [ 1]  876 	jreq	00102$
                           000351   877 	C$stm8s_tim1.c$592$2_0$385 ==.
                                    878 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      00911C 72 1E 52 6D      [ 1]  879 	bset	21101, #7
      009120 20 04            [ 2]  880 	jra	00104$
      009122                        881 00102$:
                           000357   882 	C$stm8s_tim1.c$596$2_0$386 ==.
                                    883 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 596: TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
      009122 72 1F 52 6D      [ 1]  884 	bres	21101, #7
      009126                        885 00104$:
                           00035B   886 	C$stm8s_tim1.c$598$1_0$384 ==.
                                    887 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 598: }
                           00035B   888 	C$stm8s_tim1.c$598$1_0$384 ==.
                           00035B   889 	XG$TIM1_CtrlPWMOutputs$0$0 ==.
      009126 81               [ 4]  890 	ret
                           00035C   891 	G$TIM1_ITConfig$0$0 ==.
                           00035C   892 	C$stm8s_tim1.c$617$1_0$388 ==.
                                    893 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 617: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
                                    894 ;	-----------------------------------------
                                    895 ;	 function TIM1_ITConfig
                                    896 ;	-----------------------------------------
      009127                        897 _TIM1_ITConfig:
      009127 88               [ 1]  898 	push	a
                           00035D   899 	C$stm8s_tim1.c$623$1_0$388 ==.
                                    900 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 623: if (NewState != DISABLE)
      009128 0D 05            [ 1]  901 	tnz	(0x05, sp)
      00912A 27 0A            [ 1]  902 	jreq	00102$
                           000361   903 	C$stm8s_tim1.c$626$2_0$389 ==.
                                    904 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      00912C C6 52 54         [ 1]  905 	ld	a, 0x5254
      00912F 1A 04            [ 1]  906 	or	a, (0x04, sp)
      009131 C7 52 54         [ 1]  907 	ld	0x5254, a
      009134 20 0D            [ 2]  908 	jra	00104$
      009136                        909 00102$:
                           00036B   910 	C$stm8s_tim1.c$631$2_0$390 ==.
                                    911 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 631: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      009136 C6 52 54         [ 1]  912 	ld	a, 0x5254
      009139 6B 01            [ 1]  913 	ld	(0x01, sp), a
      00913B 7B 04            [ 1]  914 	ld	a, (0x04, sp)
      00913D 43               [ 1]  915 	cpl	a
      00913E 14 01            [ 1]  916 	and	a, (0x01, sp)
      009140 C7 52 54         [ 1]  917 	ld	0x5254, a
      009143                        918 00104$:
                           000378   919 	C$stm8s_tim1.c$633$1_0$388 ==.
                                    920 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 633: }
      009143 84               [ 1]  921 	pop	a
                           000379   922 	C$stm8s_tim1.c$633$1_0$388 ==.
                           000379   923 	XG$TIM1_ITConfig$0$0 ==.
      009144 81               [ 4]  924 	ret
                           00037A   925 	G$TIM1_InternalClockConfig$0$0 ==.
                           00037A   926 	C$stm8s_tim1.c$640$1_0$392 ==.
                                    927 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 640: void TIM1_InternalClockConfig(void)
                                    928 ;	-----------------------------------------
                                    929 ;	 function TIM1_InternalClockConfig
                                    930 ;	-----------------------------------------
      009145                        931 _TIM1_InternalClockConfig:
                           00037A   932 	C$stm8s_tim1.c$643$1_0$392 ==.
                                    933 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 643: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
      009145 C6 52 52         [ 1]  934 	ld	a, 0x5252
      009148 A4 F8            [ 1]  935 	and	a, #0xf8
      00914A C7 52 52         [ 1]  936 	ld	0x5252, a
                           000382   937 	C$stm8s_tim1.c$644$1_0$392 ==.
                                    938 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 644: }
                           000382   939 	C$stm8s_tim1.c$644$1_0$392 ==.
                           000382   940 	XG$TIM1_InternalClockConfig$0$0 ==.
      00914D 81               [ 4]  941 	ret
                           000383   942 	G$TIM1_ETRClockMode1Config$0$0 ==.
                           000383   943 	C$stm8s_tim1.c$662$1_0$394 ==.
                                    944 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 662: void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                    945 ;	-----------------------------------------
                                    946 ;	 function TIM1_ETRClockMode1Config
                                    947 ;	-----------------------------------------
      00914E                        948 _TIM1_ETRClockMode1Config:
                           000383   949 	C$stm8s_tim1.c$671$1_0$394 ==.
                                    950 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 671: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      00914E 7B 05            [ 1]  951 	ld	a, (0x05, sp)
      009150 88               [ 1]  952 	push	a
      009151 7B 05            [ 1]  953 	ld	a, (0x05, sp)
      009153 88               [ 1]  954 	push	a
      009154 7B 05            [ 1]  955 	ld	a, (0x05, sp)
      009156 88               [ 1]  956 	push	a
      009157 CD 91 7A         [ 4]  957 	call	_TIM1_ETRConfig
      00915A 5B 03            [ 2]  958 	addw	sp, #3
                           000391   959 	C$stm8s_tim1.c$674$1_0$394 ==.
                                    960 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 674: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
      00915C C6 52 52         [ 1]  961 	ld	a, 0x5252
      00915F A4 88            [ 1]  962 	and	a, #0x88
      009161 AA 77            [ 1]  963 	or	a, #0x77
      009163 C7 52 52         [ 1]  964 	ld	0x5252, a
                           00039B   965 	C$stm8s_tim1.c$676$1_0$394 ==.
                                    966 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 676: }
                           00039B   967 	C$stm8s_tim1.c$676$1_0$394 ==.
                           00039B   968 	XG$TIM1_ETRClockMode1Config$0$0 ==.
      009166 81               [ 4]  969 	ret
                           00039C   970 	G$TIM1_ETRClockMode2Config$0$0 ==.
                           00039C   971 	C$stm8s_tim1.c$694$1_0$396 ==.
                                    972 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 694: void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                    973 ;	-----------------------------------------
                                    974 ;	 function TIM1_ETRClockMode2Config
                                    975 ;	-----------------------------------------
      009167                        976 _TIM1_ETRClockMode2Config:
                           00039C   977 	C$stm8s_tim1.c$703$1_0$396 ==.
                                    978 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 703: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      009167 7B 05            [ 1]  979 	ld	a, (0x05, sp)
      009169 88               [ 1]  980 	push	a
      00916A 7B 05            [ 1]  981 	ld	a, (0x05, sp)
      00916C 88               [ 1]  982 	push	a
      00916D 7B 05            [ 1]  983 	ld	a, (0x05, sp)
      00916F 88               [ 1]  984 	push	a
      009170 CD 91 7A         [ 4]  985 	call	_TIM1_ETRConfig
      009173 5B 03            [ 2]  986 	addw	sp, #3
                           0003AA   987 	C$stm8s_tim1.c$706$1_0$396 ==.
                                    988 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 706: TIM1->ETR |= TIM1_ETR_ECE;
      009175 72 1C 52 53      [ 1]  989 	bset	21075, #6
                           0003AE   990 	C$stm8s_tim1.c$707$1_0$396 ==.
                                    991 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 707: }
                           0003AE   992 	C$stm8s_tim1.c$707$1_0$396 ==.
                           0003AE   993 	XG$TIM1_ETRClockMode2Config$0$0 ==.
      009179 81               [ 4]  994 	ret
                           0003AF   995 	G$TIM1_ETRConfig$0$0 ==.
                           0003AF   996 	C$stm8s_tim1.c$725$1_0$398 ==.
                                    997 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 725: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                    998 ;	-----------------------------------------
                                    999 ;	 function TIM1_ETRConfig
                                   1000 ;	-----------------------------------------
      00917A                       1001 _TIM1_ETRConfig:
      00917A 88               [ 1] 1002 	push	a
                           0003B0  1003 	C$stm8s_tim1.c$732$1_0$398 ==.
                                   1004 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 732: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
      00917B C6 52 53         [ 1] 1005 	ld	a, 0x5253
      00917E 6B 01            [ 1] 1006 	ld	(0x01, sp), a
      009180 7B 04            [ 1] 1007 	ld	a, (0x04, sp)
      009182 1A 05            [ 1] 1008 	or	a, (0x05, sp)
                           0003B9  1009 	C$stm8s_tim1.c$733$1_0$398 ==.
                                   1010 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 733: (uint8_t)ExtTRGFilter );
      009184 1A 06            [ 1] 1011 	or	a, (0x06, sp)
      009186 1A 01            [ 1] 1012 	or	a, (0x01, sp)
      009188 C7 52 53         [ 1] 1013 	ld	0x5253, a
                           0003C0  1014 	C$stm8s_tim1.c$734$1_0$398 ==.
                                   1015 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 734: }
      00918B 84               [ 1] 1016 	pop	a
                           0003C1  1017 	C$stm8s_tim1.c$734$1_0$398 ==.
                           0003C1  1018 	XG$TIM1_ETRConfig$0$0 ==.
      00918C 81               [ 4] 1019 	ret
                           0003C2  1020 	G$TIM1_TIxExternalClockConfig$0$0 ==.
                           0003C2  1021 	C$stm8s_tim1.c$751$1_0$400 ==.
                                   1022 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 751: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
                                   1023 ;	-----------------------------------------
                                   1024 ;	 function TIM1_TIxExternalClockConfig
                                   1025 ;	-----------------------------------------
      00918D                       1026 _TIM1_TIxExternalClockConfig:
                           0003C2  1027 	C$stm8s_tim1.c$761$1_0$400 ==.
                                   1028 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 761: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
      00918D 7B 03            [ 1] 1029 	ld	a, (0x03, sp)
      00918F A1 60            [ 1] 1030 	cp	a, #0x60
      009191 26 0F            [ 1] 1031 	jrne	00102$
                           0003C8  1032 	C$stm8s_tim1.c$763$2_0$401 ==.
                                   1033 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 763: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      009193 7B 05            [ 1] 1034 	ld	a, (0x05, sp)
      009195 88               [ 1] 1035 	push	a
      009196 4B 01            [ 1] 1036 	push	#0x01
      009198 7B 06            [ 1] 1037 	ld	a, (0x06, sp)
      00919A 88               [ 1] 1038 	push	a
      00919B CD 96 4B         [ 4] 1039 	call	_TI2_Config
      00919E 5B 03            [ 2] 1040 	addw	sp, #3
      0091A0 20 0D            [ 2] 1041 	jra	00103$
      0091A2                       1042 00102$:
                           0003D7  1043 	C$stm8s_tim1.c$767$2_0$402 ==.
                                   1044 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 767: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      0091A2 7B 05            [ 1] 1045 	ld	a, (0x05, sp)
      0091A4 88               [ 1] 1046 	push	a
      0091A5 4B 01            [ 1] 1047 	push	#0x01
      0091A7 7B 06            [ 1] 1048 	ld	a, (0x06, sp)
      0091A9 88               [ 1] 1049 	push	a
      0091AA CD 96 1F         [ 4] 1050 	call	_TI1_Config
      0091AD 5B 03            [ 2] 1051 	addw	sp, #3
      0091AF                       1052 00103$:
                           0003E4  1053 	C$stm8s_tim1.c$771$1_0$400 ==.
                                   1054 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 771: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
      0091AF 7B 03            [ 1] 1055 	ld	a, (0x03, sp)
      0091B1 88               [ 1] 1056 	push	a
      0091B2 CD 91 BF         [ 4] 1057 	call	_TIM1_SelectInputTrigger
      0091B5 84               [ 1] 1058 	pop	a
                           0003EB  1059 	C$stm8s_tim1.c$774$1_0$400 ==.
                                   1060 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 774: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
      0091B6 C6 52 52         [ 1] 1061 	ld	a, 0x5252
      0091B9 AA 07            [ 1] 1062 	or	a, #0x07
      0091BB C7 52 52         [ 1] 1063 	ld	0x5252, a
                           0003F3  1064 	C$stm8s_tim1.c$775$1_0$400 ==.
                                   1065 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 775: }
                           0003F3  1066 	C$stm8s_tim1.c$775$1_0$400 ==.
                           0003F3  1067 	XG$TIM1_TIxExternalClockConfig$0$0 ==.
      0091BE 81               [ 4] 1068 	ret
                           0003F4  1069 	G$TIM1_SelectInputTrigger$0$0 ==.
                           0003F4  1070 	C$stm8s_tim1.c$787$1_0$404 ==.
                                   1071 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 787: void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function TIM1_SelectInputTrigger
                                   1074 ;	-----------------------------------------
      0091BF                       1075 _TIM1_SelectInputTrigger:
                           0003F4  1076 	C$stm8s_tim1.c$793$1_0$404 ==.
                                   1077 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 793: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
      0091BF C6 52 52         [ 1] 1078 	ld	a, 0x5252
      0091C2 A4 8F            [ 1] 1079 	and	a, #0x8f
      0091C4 1A 03            [ 1] 1080 	or	a, (0x03, sp)
      0091C6 C7 52 52         [ 1] 1081 	ld	0x5252, a
                           0003FE  1082 	C$stm8s_tim1.c$794$1_0$404 ==.
                                   1083 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 794: }
                           0003FE  1084 	C$stm8s_tim1.c$794$1_0$404 ==.
                           0003FE  1085 	XG$TIM1_SelectInputTrigger$0$0 ==.
      0091C9 81               [ 4] 1086 	ret
                           0003FF  1087 	G$TIM1_UpdateDisableConfig$0$0 ==.
                           0003FF  1088 	C$stm8s_tim1.c$803$1_0$406 ==.
                                   1089 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 803: void TIM1_UpdateDisableConfig(FunctionalState NewState)
                                   1090 ;	-----------------------------------------
                                   1091 ;	 function TIM1_UpdateDisableConfig
                                   1092 ;	-----------------------------------------
      0091CA                       1093 _TIM1_UpdateDisableConfig:
                           0003FF  1094 	C$stm8s_tim1.c$809$1_0$406 ==.
                                   1095 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 809: if (NewState != DISABLE)
      0091CA 0D 03            [ 1] 1096 	tnz	(0x03, sp)
      0091CC 27 06            [ 1] 1097 	jreq	00102$
                           000403  1098 	C$stm8s_tim1.c$811$2_0$407 ==.
                                   1099 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      0091CE 72 12 52 50      [ 1] 1100 	bset	21072, #1
      0091D2 20 04            [ 2] 1101 	jra	00104$
      0091D4                       1102 00102$:
                           000409  1103 	C$stm8s_tim1.c$815$2_0$408 ==.
                                   1104 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 815: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
      0091D4 72 13 52 50      [ 1] 1105 	bres	21072, #1
      0091D8                       1106 00104$:
                           00040D  1107 	C$stm8s_tim1.c$817$1_0$406 ==.
                                   1108 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 817: }
                           00040D  1109 	C$stm8s_tim1.c$817$1_0$406 ==.
                           00040D  1110 	XG$TIM1_UpdateDisableConfig$0$0 ==.
      0091D8 81               [ 4] 1111 	ret
                           00040E  1112 	G$TIM1_UpdateRequestConfig$0$0 ==.
                           00040E  1113 	C$stm8s_tim1.c$827$1_0$410 ==.
                                   1114 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 827: void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
                                   1115 ;	-----------------------------------------
                                   1116 ;	 function TIM1_UpdateRequestConfig
                                   1117 ;	-----------------------------------------
      0091D9                       1118 _TIM1_UpdateRequestConfig:
                           00040E  1119 	C$stm8s_tim1.c$833$1_0$410 ==.
                                   1120 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 833: if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
      0091D9 0D 03            [ 1] 1121 	tnz	(0x03, sp)
      0091DB 27 06            [ 1] 1122 	jreq	00102$
                           000412  1123 	C$stm8s_tim1.c$835$2_0$411 ==.
                                   1124 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      0091DD 72 14 52 50      [ 1] 1125 	bset	21072, #2
      0091E1 20 04            [ 2] 1126 	jra	00104$
      0091E3                       1127 00102$:
                           000418  1128 	C$stm8s_tim1.c$839$2_0$412 ==.
                                   1129 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 839: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
      0091E3 72 15 52 50      [ 1] 1130 	bres	21072, #2
      0091E7                       1131 00104$:
                           00041C  1132 	C$stm8s_tim1.c$841$1_0$410 ==.
                                   1133 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 841: }
                           00041C  1134 	C$stm8s_tim1.c$841$1_0$410 ==.
                           00041C  1135 	XG$TIM1_UpdateRequestConfig$0$0 ==.
      0091E7 81               [ 4] 1136 	ret
                           00041D  1137 	G$TIM1_SelectHallSensor$0$0 ==.
                           00041D  1138 	C$stm8s_tim1.c$849$1_0$414 ==.
                                   1139 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 849: void TIM1_SelectHallSensor(FunctionalState NewState)
                                   1140 ;	-----------------------------------------
                                   1141 ;	 function TIM1_SelectHallSensor
                                   1142 ;	-----------------------------------------
      0091E8                       1143 _TIM1_SelectHallSensor:
                           00041D  1144 	C$stm8s_tim1.c$855$1_0$414 ==.
                                   1145 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 855: if (NewState != DISABLE)
      0091E8 0D 03            [ 1] 1146 	tnz	(0x03, sp)
      0091EA 27 06            [ 1] 1147 	jreq	00102$
                           000421  1148 	C$stm8s_tim1.c$857$2_0$415 ==.
                                   1149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      0091EC 72 1E 52 51      [ 1] 1150 	bset	21073, #7
      0091F0 20 04            [ 2] 1151 	jra	00104$
      0091F2                       1152 00102$:
                           000427  1153 	C$stm8s_tim1.c$861$2_0$416 ==.
                                   1154 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 861: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
      0091F2 72 1F 52 51      [ 1] 1155 	bres	21073, #7
      0091F6                       1156 00104$:
                           00042B  1157 	C$stm8s_tim1.c$863$1_0$414 ==.
                                   1158 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 863: }
                           00042B  1159 	C$stm8s_tim1.c$863$1_0$414 ==.
                           00042B  1160 	XG$TIM1_SelectHallSensor$0$0 ==.
      0091F6 81               [ 4] 1161 	ret
                           00042C  1162 	G$TIM1_SelectOnePulseMode$0$0 ==.
                           00042C  1163 	C$stm8s_tim1.c$873$1_0$418 ==.
                                   1164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 873: void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
                                   1165 ;	-----------------------------------------
                                   1166 ;	 function TIM1_SelectOnePulseMode
                                   1167 ;	-----------------------------------------
      0091F7                       1168 _TIM1_SelectOnePulseMode:
                           00042C  1169 	C$stm8s_tim1.c$879$1_0$418 ==.
                                   1170 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 879: if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
      0091F7 0D 03            [ 1] 1171 	tnz	(0x03, sp)
      0091F9 27 06            [ 1] 1172 	jreq	00102$
                           000430  1173 	C$stm8s_tim1.c$881$2_0$419 ==.
                                   1174 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      0091FB 72 16 52 50      [ 1] 1175 	bset	21072, #3
      0091FF 20 04            [ 2] 1176 	jra	00104$
      009201                       1177 00102$:
                           000436  1178 	C$stm8s_tim1.c$885$2_0$420 ==.
                                   1179 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 885: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
      009201 72 17 52 50      [ 1] 1180 	bres	21072, #3
      009205                       1181 00104$:
                           00043A  1182 	C$stm8s_tim1.c$888$1_0$418 ==.
                                   1183 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 888: }
                           00043A  1184 	C$stm8s_tim1.c$888$1_0$418 ==.
                           00043A  1185 	XG$TIM1_SelectOnePulseMode$0$0 ==.
      009205 81               [ 4] 1186 	ret
                           00043B  1187 	G$TIM1_SelectOutputTrigger$0$0 ==.
                           00043B  1188 	C$stm8s_tim1.c$903$1_0$422 ==.
                                   1189 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 903: void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
                                   1190 ;	-----------------------------------------
                                   1191 ;	 function TIM1_SelectOutputTrigger
                                   1192 ;	-----------------------------------------
      009206                       1193 _TIM1_SelectOutputTrigger:
                           00043B  1194 	C$stm8s_tim1.c$909$1_0$422 ==.
                                   1195 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 909: TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
      009206 C6 52 51         [ 1] 1196 	ld	a, 0x5251
      009209 A4 8F            [ 1] 1197 	and	a, #0x8f
                           000440  1198 	C$stm8s_tim1.c$910$1_0$422 ==.
                                   1199 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 910: (uint8_t) TIM1_TRGOSource);
      00920B 1A 03            [ 1] 1200 	or	a, (0x03, sp)
      00920D C7 52 51         [ 1] 1201 	ld	0x5251, a
                           000445  1202 	C$stm8s_tim1.c$911$1_0$422 ==.
                                   1203 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 911: }
                           000445  1204 	C$stm8s_tim1.c$911$1_0$422 ==.
                           000445  1205 	XG$TIM1_SelectOutputTrigger$0$0 ==.
      009210 81               [ 4] 1206 	ret
                           000446  1207 	G$TIM1_SelectSlaveMode$0$0 ==.
                           000446  1208 	C$stm8s_tim1.c$923$1_0$424 ==.
                                   1209 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 923: void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
                                   1210 ;	-----------------------------------------
                                   1211 ;	 function TIM1_SelectSlaveMode
                                   1212 ;	-----------------------------------------
      009211                       1213 _TIM1_SelectSlaveMode:
                           000446  1214 	C$stm8s_tim1.c$929$1_0$424 ==.
                                   1215 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 929: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
      009211 C6 52 52         [ 1] 1216 	ld	a, 0x5252
      009214 A4 F8            [ 1] 1217 	and	a, #0xf8
                           00044B  1218 	C$stm8s_tim1.c$930$1_0$424 ==.
                                   1219 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 930: (uint8_t)TIM1_SlaveMode);
      009216 1A 03            [ 1] 1220 	or	a, (0x03, sp)
      009218 C7 52 52         [ 1] 1221 	ld	0x5252, a
                           000450  1222 	C$stm8s_tim1.c$931$1_0$424 ==.
                                   1223 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 931: }
                           000450  1224 	C$stm8s_tim1.c$931$1_0$424 ==.
                           000450  1225 	XG$TIM1_SelectSlaveMode$0$0 ==.
      00921B 81               [ 4] 1226 	ret
                           000451  1227 	G$TIM1_SelectMasterSlaveMode$0$0 ==.
                           000451  1228 	C$stm8s_tim1.c$939$1_0$426 ==.
                                   1229 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 939: void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
                                   1230 ;	-----------------------------------------
                                   1231 ;	 function TIM1_SelectMasterSlaveMode
                                   1232 ;	-----------------------------------------
      00921C                       1233 _TIM1_SelectMasterSlaveMode:
                           000451  1234 	C$stm8s_tim1.c$945$1_0$426 ==.
                                   1235 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 945: if (NewState != DISABLE)
      00921C 0D 03            [ 1] 1236 	tnz	(0x03, sp)
      00921E 27 06            [ 1] 1237 	jreq	00102$
                           000455  1238 	C$stm8s_tim1.c$947$2_0$427 ==.
                                   1239 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      009220 72 1E 52 52      [ 1] 1240 	bset	21074, #7
      009224 20 04            [ 2] 1241 	jra	00104$
      009226                       1242 00102$:
                           00045B  1243 	C$stm8s_tim1.c$951$2_0$428 ==.
                                   1244 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 951: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
      009226 72 1F 52 52      [ 1] 1245 	bres	21074, #7
      00922A                       1246 00104$:
                           00045F  1247 	C$stm8s_tim1.c$953$1_0$426 ==.
                                   1248 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 953: }
                           00045F  1249 	C$stm8s_tim1.c$953$1_0$426 ==.
                           00045F  1250 	XG$TIM1_SelectMasterSlaveMode$0$0 ==.
      00922A 81               [ 4] 1251 	ret
                           000460  1252 	G$TIM1_EncoderInterfaceConfig$0$0 ==.
                           000460  1253 	C$stm8s_tim1.c$975$1_0$430 ==.
                                   1254 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 975: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
                                   1255 ;	-----------------------------------------
                                   1256 ;	 function TIM1_EncoderInterfaceConfig
                                   1257 ;	-----------------------------------------
      00922B                       1258 _TIM1_EncoderInterfaceConfig:
                           000460  1259 	C$stm8s_tim1.c$985$1_0$430 ==.
                                   1260 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 985: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
      00922B 0D 04            [ 1] 1261 	tnz	(0x04, sp)
      00922D 27 06            [ 1] 1262 	jreq	00102$
                           000464  1263 	C$stm8s_tim1.c$987$2_0$431 ==.
                                   1264 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00922F 72 12 52 5C      [ 1] 1265 	bset	21084, #1
      009233 20 04            [ 2] 1266 	jra	00103$
      009235                       1267 00102$:
                           00046A  1268 	C$stm8s_tim1.c$991$2_0$432 ==.
                                   1269 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 991: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      009235 72 13 52 5C      [ 1] 1270 	bres	21084, #1
      009239                       1271 00103$:
                           00046E  1272 	C$stm8s_tim1.c$994$1_0$430 ==.
                                   1273 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 994: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
      009239 0D 05            [ 1] 1274 	tnz	(0x05, sp)
      00923B 27 06            [ 1] 1275 	jreq	00105$
                           000472  1276 	C$stm8s_tim1.c$996$2_0$433 ==.
                                   1277 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 996: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00923D 72 1A 52 5C      [ 1] 1278 	bset	21084, #5
      009241 20 04            [ 2] 1279 	jra	00106$
      009243                       1280 00105$:
                           000478  1281 	C$stm8s_tim1.c$1000$2_0$434 ==.
                                   1282 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1000: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      009243 72 1B 52 5C      [ 1] 1283 	bres	21084, #5
      009247                       1284 00106$:
                           00047C  1285 	C$stm8s_tim1.c$1003$1_0$430 ==.
                                   1286 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1003: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
      009247 C6 52 52         [ 1] 1287 	ld	a, 0x5252
      00924A A4 F0            [ 1] 1288 	and	a, #0xf0
                           000481  1289 	C$stm8s_tim1.c$1004$1_0$430 ==.
                                   1290 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1004: | (uint8_t) TIM1_EncoderMode);
      00924C 1A 03            [ 1] 1291 	or	a, (0x03, sp)
      00924E C7 52 52         [ 1] 1292 	ld	0x5252, a
                           000486  1293 	C$stm8s_tim1.c$1007$1_0$430 ==.
                                   1294 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1007: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
      009251 C6 52 58         [ 1] 1295 	ld	a, 0x5258
      009254 A4 FC            [ 1] 1296 	and	a, #0xfc
      009256 AA 01            [ 1] 1297 	or	a, #0x01
      009258 C7 52 58         [ 1] 1298 	ld	0x5258, a
                           000490  1299 	C$stm8s_tim1.c$1009$1_0$430 ==.
                                   1300 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1009: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
      00925B C6 52 59         [ 1] 1301 	ld	a, 0x5259
      00925E A4 FC            [ 1] 1302 	and	a, #0xfc
      009260 AA 01            [ 1] 1303 	or	a, #0x01
      009262 C7 52 59         [ 1] 1304 	ld	0x5259, a
                           00049A  1305 	C$stm8s_tim1.c$1011$1_0$430 ==.
                                   1306 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1011: }
                           00049A  1307 	C$stm8s_tim1.c$1011$1_0$430 ==.
                           00049A  1308 	XG$TIM1_EncoderInterfaceConfig$0$0 ==.
      009265 81               [ 4] 1309 	ret
                           00049B  1310 	G$TIM1_PrescalerConfig$0$0 ==.
                           00049B  1311 	C$stm8s_tim1.c$1023$1_0$436 ==.
                                   1312 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1023: void TIM1_PrescalerConfig(uint16_t Prescaler,
                                   1313 ;	-----------------------------------------
                                   1314 ;	 function TIM1_PrescalerConfig
                                   1315 ;	-----------------------------------------
      009266                       1316 _TIM1_PrescalerConfig:
      009266 52 02            [ 2] 1317 	sub	sp, #2
                           00049D  1318 	C$stm8s_tim1.c$1030$1_0$436 ==.
                                   1319 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1030: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
      009268 7B 05            [ 1] 1320 	ld	a, (0x05, sp)
      00926A 0F 01            [ 1] 1321 	clr	(0x01, sp)
      00926C C7 52 60         [ 1] 1322 	ld	0x5260, a
                           0004A4  1323 	C$stm8s_tim1.c$1031$1_0$436 ==.
                                   1324 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1031: TIM1->PSCRL = (uint8_t)(Prescaler);
      00926F 7B 06            [ 1] 1325 	ld	a, (0x06, sp)
      009271 C7 52 61         [ 1] 1326 	ld	0x5261, a
                           0004A9  1327 	C$stm8s_tim1.c$1034$1_0$436 ==.
                                   1328 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1034: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
      009274 AE 52 57         [ 2] 1329 	ldw	x, #0x5257
      009277 7B 07            [ 1] 1330 	ld	a, (0x07, sp)
      009279 F7               [ 1] 1331 	ld	(x), a
                           0004AF  1332 	C$stm8s_tim1.c$1035$1_0$436 ==.
                                   1333 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1035: }
      00927A 5B 02            [ 2] 1334 	addw	sp, #2
                           0004B1  1335 	C$stm8s_tim1.c$1035$1_0$436 ==.
                           0004B1  1336 	XG$TIM1_PrescalerConfig$0$0 ==.
      00927C 81               [ 4] 1337 	ret
                           0004B2  1338 	G$TIM1_CounterModeConfig$0$0 ==.
                           0004B2  1339 	C$stm8s_tim1.c$1048$1_0$438 ==.
                                   1340 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1048: void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
                                   1341 ;	-----------------------------------------
                                   1342 ;	 function TIM1_CounterModeConfig
                                   1343 ;	-----------------------------------------
      00927D                       1344 _TIM1_CounterModeConfig:
                           0004B2  1345 	C$stm8s_tim1.c$1055$1_0$438 ==.
                                   1346 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1055: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
      00927D C6 52 50         [ 1] 1347 	ld	a, 0x5250
      009280 A4 8F            [ 1] 1348 	and	a, #0x8f
                           0004B7  1349 	C$stm8s_tim1.c$1056$1_0$438 ==.
                                   1350 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1056: | (uint8_t)TIM1_CounterMode);
      009282 1A 03            [ 1] 1351 	or	a, (0x03, sp)
      009284 C7 52 50         [ 1] 1352 	ld	0x5250, a
                           0004BC  1353 	C$stm8s_tim1.c$1057$1_0$438 ==.
                                   1354 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1057: }
                           0004BC  1355 	C$stm8s_tim1.c$1057$1_0$438 ==.
                           0004BC  1356 	XG$TIM1_CounterModeConfig$0$0 ==.
      009287 81               [ 4] 1357 	ret
                           0004BD  1358 	G$TIM1_ForcedOC1Config$0$0 ==.
                           0004BD  1359 	C$stm8s_tim1.c$1067$1_0$440 ==.
                                   1360 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1067: void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1361 ;	-----------------------------------------
                                   1362 ;	 function TIM1_ForcedOC1Config
                                   1363 ;	-----------------------------------------
      009288                       1364 _TIM1_ForcedOC1Config:
                           0004BD  1365 	C$stm8s_tim1.c$1073$1_0$440 ==.
                                   1366 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1073: TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
      009288 C6 52 58         [ 1] 1367 	ld	a, 0x5258
      00928B A4 8F            [ 1] 1368 	and	a, #0x8f
                           0004C2  1369 	C$stm8s_tim1.c$1074$1_0$440 ==.
                                   1370 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1074: (uint8_t)TIM1_ForcedAction);
      00928D 1A 03            [ 1] 1371 	or	a, (0x03, sp)
      00928F C7 52 58         [ 1] 1372 	ld	0x5258, a
                           0004C7  1373 	C$stm8s_tim1.c$1075$1_0$440 ==.
                                   1374 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1075: }
                           0004C7  1375 	C$stm8s_tim1.c$1075$1_0$440 ==.
                           0004C7  1376 	XG$TIM1_ForcedOC1Config$0$0 ==.
      009292 81               [ 4] 1377 	ret
                           0004C8  1378 	G$TIM1_ForcedOC2Config$0$0 ==.
                           0004C8  1379 	C$stm8s_tim1.c$1085$1_0$442 ==.
                                   1380 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1085: void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1381 ;	-----------------------------------------
                                   1382 ;	 function TIM1_ForcedOC2Config
                                   1383 ;	-----------------------------------------
      009293                       1384 _TIM1_ForcedOC2Config:
                           0004C8  1385 	C$stm8s_tim1.c$1091$1_0$442 ==.
                                   1386 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1091: TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      009293 C6 52 59         [ 1] 1387 	ld	a, 0x5259
      009296 A4 8F            [ 1] 1388 	and	a, #0x8f
                           0004CD  1389 	C$stm8s_tim1.c$1092$1_0$442 ==.
                                   1390 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1092: | (uint8_t)TIM1_ForcedAction);
      009298 1A 03            [ 1] 1391 	or	a, (0x03, sp)
      00929A C7 52 59         [ 1] 1392 	ld	0x5259, a
                           0004D2  1393 	C$stm8s_tim1.c$1093$1_0$442 ==.
                                   1394 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1093: }
                           0004D2  1395 	C$stm8s_tim1.c$1093$1_0$442 ==.
                           0004D2  1396 	XG$TIM1_ForcedOC2Config$0$0 ==.
      00929D 81               [ 4] 1397 	ret
                           0004D3  1398 	G$TIM1_ForcedOC3Config$0$0 ==.
                           0004D3  1399 	C$stm8s_tim1.c$1104$1_0$444 ==.
                                   1400 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1104: void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1401 ;	-----------------------------------------
                                   1402 ;	 function TIM1_ForcedOC3Config
                                   1403 ;	-----------------------------------------
      00929E                       1404 _TIM1_ForcedOC3Config:
                           0004D3  1405 	C$stm8s_tim1.c$1110$1_0$444 ==.
                                   1406 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1110: TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
      00929E C6 52 5A         [ 1] 1407 	ld	a, 0x525a
      0092A1 A4 8F            [ 1] 1408 	and	a, #0x8f
                           0004D8  1409 	C$stm8s_tim1.c$1111$1_0$444 ==.
                                   1410 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1111: | (uint8_t)TIM1_ForcedAction);
      0092A3 1A 03            [ 1] 1411 	or	a, (0x03, sp)
      0092A5 C7 52 5A         [ 1] 1412 	ld	0x525a, a
                           0004DD  1413 	C$stm8s_tim1.c$1112$1_0$444 ==.
                                   1414 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1112: }
                           0004DD  1415 	C$stm8s_tim1.c$1112$1_0$444 ==.
                           0004DD  1416 	XG$TIM1_ForcedOC3Config$0$0 ==.
      0092A8 81               [ 4] 1417 	ret
                           0004DE  1418 	G$TIM1_ForcedOC4Config$0$0 ==.
                           0004DE  1419 	C$stm8s_tim1.c$1123$1_0$446 ==.
                                   1420 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1123: void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1421 ;	-----------------------------------------
                                   1422 ;	 function TIM1_ForcedOC4Config
                                   1423 ;	-----------------------------------------
      0092A9                       1424 _TIM1_ForcedOC4Config:
                           0004DE  1425 	C$stm8s_tim1.c$1129$1_0$446 ==.
                                   1426 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1129: TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      0092A9 C6 52 5B         [ 1] 1427 	ld	a, 0x525b
      0092AC A4 8F            [ 1] 1428 	and	a, #0x8f
                           0004E3  1429 	C$stm8s_tim1.c$1130$1_0$446 ==.
                                   1430 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1130: | (uint8_t)TIM1_ForcedAction);
      0092AE 1A 03            [ 1] 1431 	or	a, (0x03, sp)
      0092B0 C7 52 5B         [ 1] 1432 	ld	0x525b, a
                           0004E8  1433 	C$stm8s_tim1.c$1131$1_0$446 ==.
                                   1434 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1131: }
                           0004E8  1435 	C$stm8s_tim1.c$1131$1_0$446 ==.
                           0004E8  1436 	XG$TIM1_ForcedOC4Config$0$0 ==.
      0092B3 81               [ 4] 1437 	ret
                           0004E9  1438 	G$TIM1_ARRPreloadConfig$0$0 ==.
                           0004E9  1439 	C$stm8s_tim1.c$1139$1_0$448 ==.
                                   1440 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1139: void TIM1_ARRPreloadConfig(FunctionalState NewState)
                                   1441 ;	-----------------------------------------
                                   1442 ;	 function TIM1_ARRPreloadConfig
                                   1443 ;	-----------------------------------------
      0092B4                       1444 _TIM1_ARRPreloadConfig:
                           0004E9  1445 	C$stm8s_tim1.c$1145$1_0$448 ==.
                                   1446 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1145: if (NewState != DISABLE)
      0092B4 0D 03            [ 1] 1447 	tnz	(0x03, sp)
      0092B6 27 06            [ 1] 1448 	jreq	00102$
                           0004ED  1449 	C$stm8s_tim1.c$1147$2_0$449 ==.
                                   1450 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      0092B8 72 1E 52 50      [ 1] 1451 	bset	21072, #7
      0092BC 20 04            [ 2] 1452 	jra	00104$
      0092BE                       1453 00102$:
                           0004F3  1454 	C$stm8s_tim1.c$1151$2_0$450 ==.
                                   1455 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1151: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
      0092BE 72 1F 52 50      [ 1] 1456 	bres	21072, #7
      0092C2                       1457 00104$:
                           0004F7  1458 	C$stm8s_tim1.c$1153$1_0$448 ==.
                                   1459 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1153: }
                           0004F7  1460 	C$stm8s_tim1.c$1153$1_0$448 ==.
                           0004F7  1461 	XG$TIM1_ARRPreloadConfig$0$0 ==.
      0092C2 81               [ 4] 1462 	ret
                           0004F8  1463 	G$TIM1_SelectCOM$0$0 ==.
                           0004F8  1464 	C$stm8s_tim1.c$1161$1_0$452 ==.
                                   1465 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1161: void TIM1_SelectCOM(FunctionalState NewState)
                                   1466 ;	-----------------------------------------
                                   1467 ;	 function TIM1_SelectCOM
                                   1468 ;	-----------------------------------------
      0092C3                       1469 _TIM1_SelectCOM:
                           0004F8  1470 	C$stm8s_tim1.c$1167$1_0$452 ==.
                                   1471 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1167: if (NewState != DISABLE)
      0092C3 0D 03            [ 1] 1472 	tnz	(0x03, sp)
      0092C5 27 06            [ 1] 1473 	jreq	00102$
                           0004FC  1474 	C$stm8s_tim1.c$1169$2_0$453 ==.
                                   1475 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      0092C7 72 14 52 51      [ 1] 1476 	bset	21073, #2
      0092CB 20 04            [ 2] 1477 	jra	00104$
      0092CD                       1478 00102$:
                           000502  1479 	C$stm8s_tim1.c$1173$2_0$454 ==.
                                   1480 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1173: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
      0092CD 72 15 52 51      [ 1] 1481 	bres	21073, #2
      0092D1                       1482 00104$:
                           000506  1483 	C$stm8s_tim1.c$1175$1_0$452 ==.
                                   1484 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1175: }
                           000506  1485 	C$stm8s_tim1.c$1175$1_0$452 ==.
                           000506  1486 	XG$TIM1_SelectCOM$0$0 ==.
      0092D1 81               [ 4] 1487 	ret
                           000507  1488 	G$TIM1_CCPreloadControl$0$0 ==.
                           000507  1489 	C$stm8s_tim1.c$1183$1_0$456 ==.
                                   1490 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1183: void TIM1_CCPreloadControl(FunctionalState NewState)
                                   1491 ;	-----------------------------------------
                                   1492 ;	 function TIM1_CCPreloadControl
                                   1493 ;	-----------------------------------------
      0092D2                       1494 _TIM1_CCPreloadControl:
                           000507  1495 	C$stm8s_tim1.c$1189$1_0$456 ==.
                                   1496 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1189: if (NewState != DISABLE)
      0092D2 0D 03            [ 1] 1497 	tnz	(0x03, sp)
      0092D4 27 06            [ 1] 1498 	jreq	00102$
                           00050B  1499 	C$stm8s_tim1.c$1191$2_0$457 ==.
                                   1500 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      0092D6 72 10 52 51      [ 1] 1501 	bset	21073, #0
      0092DA 20 04            [ 2] 1502 	jra	00104$
      0092DC                       1503 00102$:
                           000511  1504 	C$stm8s_tim1.c$1195$2_0$458 ==.
                                   1505 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1195: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
      0092DC 72 11 52 51      [ 1] 1506 	bres	21073, #0
      0092E0                       1507 00104$:
                           000515  1508 	C$stm8s_tim1.c$1197$1_0$456 ==.
                                   1509 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1197: }
                           000515  1510 	C$stm8s_tim1.c$1197$1_0$456 ==.
                           000515  1511 	XG$TIM1_CCPreloadControl$0$0 ==.
      0092E0 81               [ 4] 1512 	ret
                           000516  1513 	G$TIM1_OC1PreloadConfig$0$0 ==.
                           000516  1514 	C$stm8s_tim1.c$1205$1_0$460 ==.
                                   1515 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1205: void TIM1_OC1PreloadConfig(FunctionalState NewState)
                                   1516 ;	-----------------------------------------
                                   1517 ;	 function TIM1_OC1PreloadConfig
                                   1518 ;	-----------------------------------------
      0092E1                       1519 _TIM1_OC1PreloadConfig:
                           000516  1520 	C$stm8s_tim1.c$1211$1_0$460 ==.
                                   1521 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1211: if (NewState != DISABLE)
      0092E1 0D 03            [ 1] 1522 	tnz	(0x03, sp)
      0092E3 27 06            [ 1] 1523 	jreq	00102$
                           00051A  1524 	C$stm8s_tim1.c$1213$2_0$461 ==.
                                   1525 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      0092E5 72 16 52 58      [ 1] 1526 	bset	21080, #3
      0092E9 20 04            [ 2] 1527 	jra	00104$
      0092EB                       1528 00102$:
                           000520  1529 	C$stm8s_tim1.c$1217$2_0$462 ==.
                                   1530 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1217: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      0092EB 72 17 52 58      [ 1] 1531 	bres	21080, #3
      0092EF                       1532 00104$:
                           000524  1533 	C$stm8s_tim1.c$1219$1_0$460 ==.
                                   1534 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1219: }
                           000524  1535 	C$stm8s_tim1.c$1219$1_0$460 ==.
                           000524  1536 	XG$TIM1_OC1PreloadConfig$0$0 ==.
      0092EF 81               [ 4] 1537 	ret
                           000525  1538 	G$TIM1_OC2PreloadConfig$0$0 ==.
                           000525  1539 	C$stm8s_tim1.c$1227$1_0$464 ==.
                                   1540 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1227: void TIM1_OC2PreloadConfig(FunctionalState NewState)
                                   1541 ;	-----------------------------------------
                                   1542 ;	 function TIM1_OC2PreloadConfig
                                   1543 ;	-----------------------------------------
      0092F0                       1544 _TIM1_OC2PreloadConfig:
                           000525  1545 	C$stm8s_tim1.c$1233$1_0$464 ==.
                                   1546 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1233: if (NewState != DISABLE)
      0092F0 0D 03            [ 1] 1547 	tnz	(0x03, sp)
      0092F2 27 06            [ 1] 1548 	jreq	00102$
                           000529  1549 	C$stm8s_tim1.c$1235$2_0$465 ==.
                                   1550 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      0092F4 72 16 52 59      [ 1] 1551 	bset	21081, #3
      0092F8 20 04            [ 2] 1552 	jra	00104$
      0092FA                       1553 00102$:
                           00052F  1554 	C$stm8s_tim1.c$1239$2_0$466 ==.
                                   1555 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1239: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      0092FA 72 17 52 59      [ 1] 1556 	bres	21081, #3
      0092FE                       1557 00104$:
                           000533  1558 	C$stm8s_tim1.c$1241$1_0$464 ==.
                                   1559 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1241: }
                           000533  1560 	C$stm8s_tim1.c$1241$1_0$464 ==.
                           000533  1561 	XG$TIM1_OC2PreloadConfig$0$0 ==.
      0092FE 81               [ 4] 1562 	ret
                           000534  1563 	G$TIM1_OC3PreloadConfig$0$0 ==.
                           000534  1564 	C$stm8s_tim1.c$1249$1_0$468 ==.
                                   1565 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1249: void TIM1_OC3PreloadConfig(FunctionalState NewState)
                                   1566 ;	-----------------------------------------
                                   1567 ;	 function TIM1_OC3PreloadConfig
                                   1568 ;	-----------------------------------------
      0092FF                       1569 _TIM1_OC3PreloadConfig:
                           000534  1570 	C$stm8s_tim1.c$1255$1_0$468 ==.
                                   1571 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1255: if (NewState != DISABLE)
      0092FF 0D 03            [ 1] 1572 	tnz	(0x03, sp)
      009301 27 06            [ 1] 1573 	jreq	00102$
                           000538  1574 	C$stm8s_tim1.c$1257$2_0$469 ==.
                                   1575 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      009303 72 16 52 5A      [ 1] 1576 	bset	21082, #3
      009307 20 04            [ 2] 1577 	jra	00104$
      009309                       1578 00102$:
                           00053E  1579 	C$stm8s_tim1.c$1261$2_0$470 ==.
                                   1580 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1261: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      009309 72 17 52 5A      [ 1] 1581 	bres	21082, #3
      00930D                       1582 00104$:
                           000542  1583 	C$stm8s_tim1.c$1263$1_0$468 ==.
                                   1584 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1263: }
                           000542  1585 	C$stm8s_tim1.c$1263$1_0$468 ==.
                           000542  1586 	XG$TIM1_OC3PreloadConfig$0$0 ==.
      00930D 81               [ 4] 1587 	ret
                           000543  1588 	G$TIM1_OC4PreloadConfig$0$0 ==.
                           000543  1589 	C$stm8s_tim1.c$1271$1_0$472 ==.
                                   1590 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1271: void TIM1_OC4PreloadConfig(FunctionalState NewState)
                                   1591 ;	-----------------------------------------
                                   1592 ;	 function TIM1_OC4PreloadConfig
                                   1593 ;	-----------------------------------------
      00930E                       1594 _TIM1_OC4PreloadConfig:
                           000543  1595 	C$stm8s_tim1.c$1277$1_0$472 ==.
                                   1596 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1277: if (NewState != DISABLE)
      00930E 0D 03            [ 1] 1597 	tnz	(0x03, sp)
      009310 27 06            [ 1] 1598 	jreq	00102$
                           000547  1599 	C$stm8s_tim1.c$1279$2_0$473 ==.
                                   1600 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      009312 72 16 52 5B      [ 1] 1601 	bset	21083, #3
      009316 20 04            [ 2] 1602 	jra	00104$
      009318                       1603 00102$:
                           00054D  1604 	C$stm8s_tim1.c$1283$2_0$474 ==.
                                   1605 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1283: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      009318 72 17 52 5B      [ 1] 1606 	bres	21083, #3
      00931C                       1607 00104$:
                           000551  1608 	C$stm8s_tim1.c$1285$1_0$472 ==.
                                   1609 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1285: }
                           000551  1610 	C$stm8s_tim1.c$1285$1_0$472 ==.
                           000551  1611 	XG$TIM1_OC4PreloadConfig$0$0 ==.
      00931C 81               [ 4] 1612 	ret
                           000552  1613 	G$TIM1_OC1FastConfig$0$0 ==.
                           000552  1614 	C$stm8s_tim1.c$1293$1_0$476 ==.
                                   1615 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1293: void TIM1_OC1FastConfig(FunctionalState NewState)
                                   1616 ;	-----------------------------------------
                                   1617 ;	 function TIM1_OC1FastConfig
                                   1618 ;	-----------------------------------------
      00931D                       1619 _TIM1_OC1FastConfig:
                           000552  1620 	C$stm8s_tim1.c$1299$1_0$476 ==.
                                   1621 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1299: if (NewState != DISABLE)
      00931D 0D 03            [ 1] 1622 	tnz	(0x03, sp)
      00931F 27 06            [ 1] 1623 	jreq	00102$
                           000556  1624 	C$stm8s_tim1.c$1301$2_0$477 ==.
                                   1625 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      009321 72 14 52 58      [ 1] 1626 	bset	21080, #2
      009325 20 04            [ 2] 1627 	jra	00104$
      009327                       1628 00102$:
                           00055C  1629 	C$stm8s_tim1.c$1305$2_0$478 ==.
                                   1630 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1305: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009327 72 15 52 58      [ 1] 1631 	bres	21080, #2
      00932B                       1632 00104$:
                           000560  1633 	C$stm8s_tim1.c$1307$1_0$476 ==.
                                   1634 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1307: }
                           000560  1635 	C$stm8s_tim1.c$1307$1_0$476 ==.
                           000560  1636 	XG$TIM1_OC1FastConfig$0$0 ==.
      00932B 81               [ 4] 1637 	ret
                           000561  1638 	G$TIM1_OC2FastConfig$0$0 ==.
                           000561  1639 	C$stm8s_tim1.c$1315$1_0$480 ==.
                                   1640 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1315: void TIM1_OC2FastConfig(FunctionalState NewState)
                                   1641 ;	-----------------------------------------
                                   1642 ;	 function TIM1_OC2FastConfig
                                   1643 ;	-----------------------------------------
      00932C                       1644 _TIM1_OC2FastConfig:
                           000561  1645 	C$stm8s_tim1.c$1321$1_0$480 ==.
                                   1646 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1321: if (NewState != DISABLE)
      00932C 0D 03            [ 1] 1647 	tnz	(0x03, sp)
      00932E 27 06            [ 1] 1648 	jreq	00102$
                           000565  1649 	C$stm8s_tim1.c$1323$2_0$481 ==.
                                   1650 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      009330 72 14 52 59      [ 1] 1651 	bset	21081, #2
      009334 20 04            [ 2] 1652 	jra	00104$
      009336                       1653 00102$:
                           00056B  1654 	C$stm8s_tim1.c$1327$2_0$482 ==.
                                   1655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1327: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009336 72 15 52 59      [ 1] 1656 	bres	21081, #2
      00933A                       1657 00104$:
                           00056F  1658 	C$stm8s_tim1.c$1329$1_0$480 ==.
                                   1659 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1329: }
                           00056F  1660 	C$stm8s_tim1.c$1329$1_0$480 ==.
                           00056F  1661 	XG$TIM1_OC2FastConfig$0$0 ==.
      00933A 81               [ 4] 1662 	ret
                           000570  1663 	G$TIM1_OC3FastConfig$0$0 ==.
                           000570  1664 	C$stm8s_tim1.c$1337$1_0$484 ==.
                                   1665 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1337: void TIM1_OC3FastConfig(FunctionalState NewState)
                                   1666 ;	-----------------------------------------
                                   1667 ;	 function TIM1_OC3FastConfig
                                   1668 ;	-----------------------------------------
      00933B                       1669 _TIM1_OC3FastConfig:
                           000570  1670 	C$stm8s_tim1.c$1343$1_0$484 ==.
                                   1671 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1343: if (NewState != DISABLE)
      00933B 0D 03            [ 1] 1672 	tnz	(0x03, sp)
      00933D 27 06            [ 1] 1673 	jreq	00102$
                           000574  1674 	C$stm8s_tim1.c$1345$2_0$485 ==.
                                   1675 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      00933F 72 14 52 5A      [ 1] 1676 	bset	21082, #2
      009343 20 04            [ 2] 1677 	jra	00104$
      009345                       1678 00102$:
                           00057A  1679 	C$stm8s_tim1.c$1349$2_0$486 ==.
                                   1680 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1349: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009345 72 15 52 5A      [ 1] 1681 	bres	21082, #2
      009349                       1682 00104$:
                           00057E  1683 	C$stm8s_tim1.c$1351$1_0$484 ==.
                                   1684 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1351: }
                           00057E  1685 	C$stm8s_tim1.c$1351$1_0$484 ==.
                           00057E  1686 	XG$TIM1_OC3FastConfig$0$0 ==.
      009349 81               [ 4] 1687 	ret
                           00057F  1688 	G$TIM1_OC4FastConfig$0$0 ==.
                           00057F  1689 	C$stm8s_tim1.c$1359$1_0$488 ==.
                                   1690 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1359: void TIM1_OC4FastConfig(FunctionalState NewState)
                                   1691 ;	-----------------------------------------
                                   1692 ;	 function TIM1_OC4FastConfig
                                   1693 ;	-----------------------------------------
      00934A                       1694 _TIM1_OC4FastConfig:
                           00057F  1695 	C$stm8s_tim1.c$1365$1_0$488 ==.
                                   1696 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1365: if (NewState != DISABLE)
      00934A 0D 03            [ 1] 1697 	tnz	(0x03, sp)
      00934C 27 06            [ 1] 1698 	jreq	00102$
                           000583  1699 	C$stm8s_tim1.c$1367$2_0$489 ==.
                                   1700 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      00934E 72 14 52 5B      [ 1] 1701 	bset	21083, #2
      009352 20 04            [ 2] 1702 	jra	00104$
      009354                       1703 00102$:
                           000589  1704 	C$stm8s_tim1.c$1371$2_0$490 ==.
                                   1705 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1371: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009354 72 15 52 5B      [ 1] 1706 	bres	21083, #2
      009358                       1707 00104$:
                           00058D  1708 	C$stm8s_tim1.c$1373$1_0$488 ==.
                                   1709 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1373: }
                           00058D  1710 	C$stm8s_tim1.c$1373$1_0$488 ==.
                           00058D  1711 	XG$TIM1_OC4FastConfig$0$0 ==.
      009358 81               [ 4] 1712 	ret
                           00058E  1713 	G$TIM1_GenerateEvent$0$0 ==.
                           00058E  1714 	C$stm8s_tim1.c$1389$1_0$492 ==.
                                   1715 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1389: void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
                                   1716 ;	-----------------------------------------
                                   1717 ;	 function TIM1_GenerateEvent
                                   1718 ;	-----------------------------------------
      009359                       1719 _TIM1_GenerateEvent:
                           00058E  1720 	C$stm8s_tim1.c$1395$1_0$492 ==.
                                   1721 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1395: TIM1->EGR = (uint8_t)TIM1_EventSource;
      009359 AE 52 57         [ 2] 1722 	ldw	x, #0x5257
      00935C 7B 03            [ 1] 1723 	ld	a, (0x03, sp)
      00935E F7               [ 1] 1724 	ld	(x), a
                           000594  1725 	C$stm8s_tim1.c$1396$1_0$492 ==.
                                   1726 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1396: }
                           000594  1727 	C$stm8s_tim1.c$1396$1_0$492 ==.
                           000594  1728 	XG$TIM1_GenerateEvent$0$0 ==.
      00935F 81               [ 4] 1729 	ret
                           000595  1730 	G$TIM1_OC1PolarityConfig$0$0 ==.
                           000595  1731 	C$stm8s_tim1.c$1406$1_0$494 ==.
                                   1732 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1406: void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   1733 ;	-----------------------------------------
                                   1734 ;	 function TIM1_OC1PolarityConfig
                                   1735 ;	-----------------------------------------
      009360                       1736 _TIM1_OC1PolarityConfig:
                           000595  1737 	C$stm8s_tim1.c$1412$1_0$494 ==.
                                   1738 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1412: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      009360 0D 03            [ 1] 1739 	tnz	(0x03, sp)
      009362 27 06            [ 1] 1740 	jreq	00102$
                           000599  1741 	C$stm8s_tim1.c$1414$2_0$495 ==.
                                   1742 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      009364 72 12 52 5C      [ 1] 1743 	bset	21084, #1
      009368 20 04            [ 2] 1744 	jra	00104$
      00936A                       1745 00102$:
                           00059F  1746 	C$stm8s_tim1.c$1418$2_0$496 ==.
                                   1747 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1418: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      00936A 72 13 52 5C      [ 1] 1748 	bres	21084, #1
      00936E                       1749 00104$:
                           0005A3  1750 	C$stm8s_tim1.c$1420$1_0$494 ==.
                                   1751 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1420: }
                           0005A3  1752 	C$stm8s_tim1.c$1420$1_0$494 ==.
                           0005A3  1753 	XG$TIM1_OC1PolarityConfig$0$0 ==.
      00936E 81               [ 4] 1754 	ret
                           0005A4  1755 	G$TIM1_OC1NPolarityConfig$0$0 ==.
                           0005A4  1756 	C$stm8s_tim1.c$1430$1_0$498 ==.
                                   1757 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1430: void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   1758 ;	-----------------------------------------
                                   1759 ;	 function TIM1_OC1NPolarityConfig
                                   1760 ;	-----------------------------------------
      00936F                       1761 _TIM1_OC1NPolarityConfig:
                           0005A4  1762 	C$stm8s_tim1.c$1436$1_0$498 ==.
                                   1763 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1436: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00936F 0D 03            [ 1] 1764 	tnz	(0x03, sp)
      009371 27 06            [ 1] 1765 	jreq	00102$
                           0005A8  1766 	C$stm8s_tim1.c$1438$2_0$499 ==.
                                   1767 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      009373 72 16 52 5C      [ 1] 1768 	bset	21084, #3
      009377 20 04            [ 2] 1769 	jra	00104$
      009379                       1770 00102$:
                           0005AE  1771 	C$stm8s_tim1.c$1442$2_0$500 ==.
                                   1772 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1442: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
      009379 72 17 52 5C      [ 1] 1773 	bres	21084, #3
      00937D                       1774 00104$:
                           0005B2  1775 	C$stm8s_tim1.c$1444$1_0$498 ==.
                                   1776 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1444: }
                           0005B2  1777 	C$stm8s_tim1.c$1444$1_0$498 ==.
                           0005B2  1778 	XG$TIM1_OC1NPolarityConfig$0$0 ==.
      00937D 81               [ 4] 1779 	ret
                           0005B3  1780 	G$TIM1_OC2PolarityConfig$0$0 ==.
                           0005B3  1781 	C$stm8s_tim1.c$1454$1_0$502 ==.
                                   1782 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1454: void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   1783 ;	-----------------------------------------
                                   1784 ;	 function TIM1_OC2PolarityConfig
                                   1785 ;	-----------------------------------------
      00937E                       1786 _TIM1_OC2PolarityConfig:
                           0005B3  1787 	C$stm8s_tim1.c$1460$1_0$502 ==.
                                   1788 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1460: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00937E 0D 03            [ 1] 1789 	tnz	(0x03, sp)
      009380 27 06            [ 1] 1790 	jreq	00102$
                           0005B7  1791 	C$stm8s_tim1.c$1462$2_0$503 ==.
                                   1792 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      009382 72 1A 52 5C      [ 1] 1793 	bset	21084, #5
      009386 20 04            [ 2] 1794 	jra	00104$
      009388                       1795 00102$:
                           0005BD  1796 	C$stm8s_tim1.c$1466$2_0$504 ==.
                                   1797 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1466: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      009388 72 1B 52 5C      [ 1] 1798 	bres	21084, #5
      00938C                       1799 00104$:
                           0005C1  1800 	C$stm8s_tim1.c$1468$1_0$502 ==.
                                   1801 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1468: }
                           0005C1  1802 	C$stm8s_tim1.c$1468$1_0$502 ==.
                           0005C1  1803 	XG$TIM1_OC2PolarityConfig$0$0 ==.
      00938C 81               [ 4] 1804 	ret
                           0005C2  1805 	G$TIM1_OC2NPolarityConfig$0$0 ==.
                           0005C2  1806 	C$stm8s_tim1.c$1478$1_0$506 ==.
                                   1807 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1478: void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   1808 ;	-----------------------------------------
                                   1809 ;	 function TIM1_OC2NPolarityConfig
                                   1810 ;	-----------------------------------------
      00938D                       1811 _TIM1_OC2NPolarityConfig:
                           0005C2  1812 	C$stm8s_tim1.c$1484$1_0$506 ==.
                                   1813 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1484: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00938D 0D 03            [ 1] 1814 	tnz	(0x03, sp)
      00938F 27 06            [ 1] 1815 	jreq	00102$
                           0005C6  1816 	C$stm8s_tim1.c$1486$2_0$507 ==.
                                   1817 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      009391 72 1E 52 5C      [ 1] 1818 	bset	21084, #7
      009395 20 04            [ 2] 1819 	jra	00104$
      009397                       1820 00102$:
                           0005CC  1821 	C$stm8s_tim1.c$1490$2_0$508 ==.
                                   1822 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1490: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
      009397 72 1F 52 5C      [ 1] 1823 	bres	21084, #7
      00939B                       1824 00104$:
                           0005D0  1825 	C$stm8s_tim1.c$1492$1_0$506 ==.
                                   1826 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1492: }
                           0005D0  1827 	C$stm8s_tim1.c$1492$1_0$506 ==.
                           0005D0  1828 	XG$TIM1_OC2NPolarityConfig$0$0 ==.
      00939B 81               [ 4] 1829 	ret
                           0005D1  1830 	G$TIM1_OC3PolarityConfig$0$0 ==.
                           0005D1  1831 	C$stm8s_tim1.c$1502$1_0$510 ==.
                                   1832 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1502: void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   1833 ;	-----------------------------------------
                                   1834 ;	 function TIM1_OC3PolarityConfig
                                   1835 ;	-----------------------------------------
      00939C                       1836 _TIM1_OC3PolarityConfig:
                           0005D1  1837 	C$stm8s_tim1.c$1508$1_0$510 ==.
                                   1838 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1508: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00939C 0D 03            [ 1] 1839 	tnz	(0x03, sp)
      00939E 27 06            [ 1] 1840 	jreq	00102$
                           0005D5  1841 	C$stm8s_tim1.c$1510$2_0$511 ==.
                                   1842 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      0093A0 72 12 52 5D      [ 1] 1843 	bset	21085, #1
      0093A4 20 04            [ 2] 1844 	jra	00104$
      0093A6                       1845 00102$:
                           0005DB  1846 	C$stm8s_tim1.c$1514$2_0$512 ==.
                                   1847 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1514: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      0093A6 72 13 52 5D      [ 1] 1848 	bres	21085, #1
      0093AA                       1849 00104$:
                           0005DF  1850 	C$stm8s_tim1.c$1516$1_0$510 ==.
                                   1851 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1516: }
                           0005DF  1852 	C$stm8s_tim1.c$1516$1_0$510 ==.
                           0005DF  1853 	XG$TIM1_OC3PolarityConfig$0$0 ==.
      0093AA 81               [ 4] 1854 	ret
                           0005E0  1855 	G$TIM1_OC3NPolarityConfig$0$0 ==.
                           0005E0  1856 	C$stm8s_tim1.c$1527$1_0$514 ==.
                                   1857 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1527: void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   1858 ;	-----------------------------------------
                                   1859 ;	 function TIM1_OC3NPolarityConfig
                                   1860 ;	-----------------------------------------
      0093AB                       1861 _TIM1_OC3NPolarityConfig:
                           0005E0  1862 	C$stm8s_tim1.c$1533$1_0$514 ==.
                                   1863 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1533: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      0093AB 0D 03            [ 1] 1864 	tnz	(0x03, sp)
      0093AD 27 06            [ 1] 1865 	jreq	00102$
                           0005E4  1866 	C$stm8s_tim1.c$1535$2_0$515 ==.
                                   1867 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      0093AF 72 16 52 5D      [ 1] 1868 	bset	21085, #3
      0093B3 20 04            [ 2] 1869 	jra	00104$
      0093B5                       1870 00102$:
                           0005EA  1871 	C$stm8s_tim1.c$1539$2_0$516 ==.
                                   1872 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1539: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
      0093B5 72 17 52 5D      [ 1] 1873 	bres	21085, #3
      0093B9                       1874 00104$:
                           0005EE  1875 	C$stm8s_tim1.c$1541$1_0$514 ==.
                                   1876 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1541: }
                           0005EE  1877 	C$stm8s_tim1.c$1541$1_0$514 ==.
                           0005EE  1878 	XG$TIM1_OC3NPolarityConfig$0$0 ==.
      0093B9 81               [ 4] 1879 	ret
                           0005EF  1880 	G$TIM1_OC4PolarityConfig$0$0 ==.
                           0005EF  1881 	C$stm8s_tim1.c$1551$1_0$518 ==.
                                   1882 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1551: void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   1883 ;	-----------------------------------------
                                   1884 ;	 function TIM1_OC4PolarityConfig
                                   1885 ;	-----------------------------------------
      0093BA                       1886 _TIM1_OC4PolarityConfig:
                           0005EF  1887 	C$stm8s_tim1.c$1557$1_0$518 ==.
                                   1888 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1557: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      0093BA 0D 03            [ 1] 1889 	tnz	(0x03, sp)
      0093BC 27 06            [ 1] 1890 	jreq	00102$
                           0005F3  1891 	C$stm8s_tim1.c$1559$2_0$519 ==.
                                   1892 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      0093BE 72 1A 52 5D      [ 1] 1893 	bset	21085, #5
      0093C2 20 04            [ 2] 1894 	jra	00104$
      0093C4                       1895 00102$:
                           0005F9  1896 	C$stm8s_tim1.c$1563$2_0$520 ==.
                                   1897 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1563: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      0093C4 72 1B 52 5D      [ 1] 1898 	bres	21085, #5
      0093C8                       1899 00104$:
                           0005FD  1900 	C$stm8s_tim1.c$1565$1_0$518 ==.
                                   1901 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1565: }
                           0005FD  1902 	C$stm8s_tim1.c$1565$1_0$518 ==.
                           0005FD  1903 	XG$TIM1_OC4PolarityConfig$0$0 ==.
      0093C8 81               [ 4] 1904 	ret
                           0005FE  1905 	G$TIM1_CCxCmd$0$0 ==.
                           0005FE  1906 	C$stm8s_tim1.c$1579$1_0$522 ==.
                                   1907 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1579: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   1908 ;	-----------------------------------------
                                   1909 ;	 function TIM1_CCxCmd
                                   1910 ;	-----------------------------------------
      0093C9                       1911 _TIM1_CCxCmd:
                           0005FE  1912 	C$stm8s_tim1.c$1585$1_0$522 ==.
                                   1913 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1585: if (TIM1_Channel == TIM1_CHANNEL_1)
      0093C9 0D 03            [ 1] 1914 	tnz	(0x03, sp)
      0093CB 26 10            [ 1] 1915 	jrne	00120$
                           000602  1916 	C$stm8s_tim1.c$1588$2_0$523 ==.
                                   1917 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1588: if (NewState != DISABLE)
      0093CD 0D 04            [ 1] 1918 	tnz	(0x04, sp)
      0093CF 27 06            [ 1] 1919 	jreq	00102$
                           000606  1920 	C$stm8s_tim1.c$1590$3_0$524 ==.
                                   1921 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      0093D1 72 10 52 5C      [ 1] 1922 	bset	21084, #0
      0093D5 20 3F            [ 2] 1923 	jra	00122$
      0093D7                       1924 00102$:
                           00060C  1925 	C$stm8s_tim1.c$1594$3_0$525 ==.
                                   1926 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1594: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      0093D7 72 11 52 5C      [ 1] 1927 	bres	21084, #0
      0093DB 20 39            [ 2] 1928 	jra	00122$
      0093DD                       1929 00120$:
                           000612  1930 	C$stm8s_tim1.c$1598$1_0$522 ==.
                                   1931 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1598: else if (TIM1_Channel == TIM1_CHANNEL_2)
      0093DD 7B 03            [ 1] 1932 	ld	a, (0x03, sp)
      0093DF 4A               [ 1] 1933 	dec	a
      0093E0 26 10            [ 1] 1934 	jrne	00117$
                           000617  1935 	C$stm8s_tim1.c$1601$2_0$526 ==.
                                   1936 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1601: if (NewState != DISABLE)
      0093E2 0D 04            [ 1] 1937 	tnz	(0x04, sp)
      0093E4 27 06            [ 1] 1938 	jreq	00105$
                           00061B  1939 	C$stm8s_tim1.c$1603$3_0$527 ==.
                                   1940 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1603: TIM1->CCER1 |= TIM1_CCER1_CC2E;
      0093E6 72 18 52 5C      [ 1] 1941 	bset	21084, #4
      0093EA 20 2A            [ 2] 1942 	jra	00122$
      0093EC                       1943 00105$:
                           000621  1944 	C$stm8s_tim1.c$1607$3_0$528 ==.
                                   1945 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1607: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      0093EC 72 19 52 5C      [ 1] 1946 	bres	21084, #4
      0093F0 20 24            [ 2] 1947 	jra	00122$
      0093F2                       1948 00117$:
                           000627  1949 	C$stm8s_tim1.c$1610$1_0$522 ==.
                                   1950 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1610: else if (TIM1_Channel == TIM1_CHANNEL_3)
      0093F2 7B 03            [ 1] 1951 	ld	a, (0x03, sp)
      0093F4 A1 02            [ 1] 1952 	cp	a, #0x02
      0093F6 26 10            [ 1] 1953 	jrne	00114$
                           00062D  1954 	C$stm8s_tim1.c$1613$2_0$529 ==.
                                   1955 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1613: if (NewState != DISABLE)
      0093F8 0D 04            [ 1] 1956 	tnz	(0x04, sp)
      0093FA 27 06            [ 1] 1957 	jreq	00108$
                           000631  1958 	C$stm8s_tim1.c$1615$3_0$530 ==.
                                   1959 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      0093FC 72 10 52 5D      [ 1] 1960 	bset	21085, #0
      009400 20 14            [ 2] 1961 	jra	00122$
      009402                       1962 00108$:
                           000637  1963 	C$stm8s_tim1.c$1619$3_0$531 ==.
                                   1964 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1619: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      009402 72 11 52 5D      [ 1] 1965 	bres	21085, #0
      009406 20 0E            [ 2] 1966 	jra	00122$
      009408                       1967 00114$:
                           00063D  1968 	C$stm8s_tim1.c$1625$2_0$532 ==.
                                   1969 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1625: if (NewState != DISABLE)
      009408 0D 04            [ 1] 1970 	tnz	(0x04, sp)
      00940A 27 06            [ 1] 1971 	jreq	00111$
                           000641  1972 	C$stm8s_tim1.c$1627$3_0$533 ==.
                                   1973 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1627: TIM1->CCER2 |= TIM1_CCER2_CC4E;
      00940C 72 18 52 5D      [ 1] 1974 	bset	21085, #4
      009410 20 04            [ 2] 1975 	jra	00122$
      009412                       1976 00111$:
                           000647  1977 	C$stm8s_tim1.c$1631$3_0$534 ==.
                                   1978 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1631: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      009412 72 19 52 5D      [ 1] 1979 	bres	21085, #4
      009416                       1980 00122$:
                           00064B  1981 	C$stm8s_tim1.c$1634$1_0$522 ==.
                                   1982 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1634: }
                           00064B  1983 	C$stm8s_tim1.c$1634$1_0$522 ==.
                           00064B  1984 	XG$TIM1_CCxCmd$0$0 ==.
      009416 81               [ 4] 1985 	ret
                           00064C  1986 	G$TIM1_CCxNCmd$0$0 ==.
                           00064C  1987 	C$stm8s_tim1.c$1647$1_0$536 ==.
                                   1988 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1647: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   1989 ;	-----------------------------------------
                                   1990 ;	 function TIM1_CCxNCmd
                                   1991 ;	-----------------------------------------
      009417                       1992 _TIM1_CCxNCmd:
                           00064C  1993 	C$stm8s_tim1.c$1653$1_0$536 ==.
                                   1994 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1653: if (TIM1_Channel == TIM1_CHANNEL_1)
      009417 0D 03            [ 1] 1995 	tnz	(0x03, sp)
      009419 26 10            [ 1] 1996 	jrne	00114$
                           000650  1997 	C$stm8s_tim1.c$1656$2_0$537 ==.
                                   1998 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1656: if (NewState != DISABLE)
      00941B 0D 04            [ 1] 1999 	tnz	(0x04, sp)
      00941D 27 06            [ 1] 2000 	jreq	00102$
                           000654  2001 	C$stm8s_tim1.c$1658$3_0$538 ==.
                                   2002 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      00941F 72 14 52 5C      [ 1] 2003 	bset	21084, #2
      009423 20 29            [ 2] 2004 	jra	00116$
      009425                       2005 00102$:
                           00065A  2006 	C$stm8s_tim1.c$1662$3_0$539 ==.
                                   2007 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1662: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
      009425 72 15 52 5C      [ 1] 2008 	bres	21084, #2
      009429 20 23            [ 2] 2009 	jra	00116$
      00942B                       2010 00114$:
                           000660  2011 	C$stm8s_tim1.c$1665$1_0$536 ==.
                                   2012 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1665: else if (TIM1_Channel == TIM1_CHANNEL_2)
      00942B 7B 03            [ 1] 2013 	ld	a, (0x03, sp)
      00942D 4A               [ 1] 2014 	dec	a
      00942E 26 10            [ 1] 2015 	jrne	00111$
                           000665  2016 	C$stm8s_tim1.c$1668$2_0$540 ==.
                                   2017 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1668: if (NewState != DISABLE)
      009430 0D 04            [ 1] 2018 	tnz	(0x04, sp)
      009432 27 06            [ 1] 2019 	jreq	00105$
                           000669  2020 	C$stm8s_tim1.c$1670$3_0$541 ==.
                                   2021 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1670: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
      009434 72 1C 52 5C      [ 1] 2022 	bset	21084, #6
      009438 20 14            [ 2] 2023 	jra	00116$
      00943A                       2024 00105$:
                           00066F  2025 	C$stm8s_tim1.c$1674$3_0$542 ==.
                                   2026 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1674: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
      00943A 72 1D 52 5C      [ 1] 2027 	bres	21084, #6
      00943E 20 0E            [ 2] 2028 	jra	00116$
      009440                       2029 00111$:
                           000675  2030 	C$stm8s_tim1.c$1680$2_0$543 ==.
                                   2031 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1680: if (NewState != DISABLE)
      009440 0D 04            [ 1] 2032 	tnz	(0x04, sp)
      009442 27 06            [ 1] 2033 	jreq	00108$
                           000679  2034 	C$stm8s_tim1.c$1682$3_0$544 ==.
                                   2035 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      009444 72 14 52 5D      [ 1] 2036 	bset	21085, #2
      009448 20 04            [ 2] 2037 	jra	00116$
      00944A                       2038 00108$:
                           00067F  2039 	C$stm8s_tim1.c$1686$3_0$545 ==.
                                   2040 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1686: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
      00944A 72 15 52 5D      [ 1] 2041 	bres	21085, #2
      00944E                       2042 00116$:
                           000683  2043 	C$stm8s_tim1.c$1689$1_0$536 ==.
                                   2044 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1689: }
                           000683  2045 	C$stm8s_tim1.c$1689$1_0$536 ==.
                           000683  2046 	XG$TIM1_CCxNCmd$0$0 ==.
      00944E 81               [ 4] 2047 	ret
                           000684  2048 	G$TIM1_SelectOCxM$0$0 ==.
                           000684  2049 	C$stm8s_tim1.c$1712$1_0$547 ==.
                                   2050 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1712: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
                                   2051 ;	-----------------------------------------
                                   2052 ;	 function TIM1_SelectOCxM
                                   2053 ;	-----------------------------------------
      00944F                       2054 _TIM1_SelectOCxM:
                           000684  2055 	C$stm8s_tim1.c$1718$1_0$547 ==.
                                   2056 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1718: if (TIM1_Channel == TIM1_CHANNEL_1)
      00944F 0D 03            [ 1] 2057 	tnz	(0x03, sp)
      009451 26 10            [ 1] 2058 	jrne	00108$
                           000688  2059 	C$stm8s_tim1.c$1721$2_0$548 ==.
                                   2060 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1721: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      009453 72 11 52 5C      [ 1] 2061 	bres	21084, #0
                           00068C  2062 	C$stm8s_tim1.c$1724$2_0$548 ==.
                                   2063 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1724: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
      009457 C6 52 58         [ 1] 2064 	ld	a, 0x5258
      00945A A4 8F            [ 1] 2065 	and	a, #0x8f
                           000691  2066 	C$stm8s_tim1.c$1725$2_0$548 ==.
                                   2067 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1725: | (uint8_t)TIM1_OCMode);
      00945C 1A 04            [ 1] 2068 	or	a, (0x04, sp)
      00945E C7 52 58         [ 1] 2069 	ld	0x5258, a
      009461 20 3D            [ 2] 2070 	jra	00110$
      009463                       2071 00108$:
                           000698  2072 	C$stm8s_tim1.c$1727$1_0$547 ==.
                                   2073 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1727: else if (TIM1_Channel == TIM1_CHANNEL_2)
      009463 7B 03            [ 1] 2074 	ld	a, (0x03, sp)
      009465 4A               [ 1] 2075 	dec	a
      009466 26 10            [ 1] 2076 	jrne	00105$
                           00069D  2077 	C$stm8s_tim1.c$1730$2_0$549 ==.
                                   2078 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1730: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      009468 72 19 52 5C      [ 1] 2079 	bres	21084, #4
                           0006A1  2080 	C$stm8s_tim1.c$1733$2_0$549 ==.
                                   2081 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1733: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      00946C C6 52 59         [ 1] 2082 	ld	a, 0x5259
      00946F A4 8F            [ 1] 2083 	and	a, #0x8f
                           0006A6  2084 	C$stm8s_tim1.c$1734$2_0$549 ==.
                                   2085 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1734: | (uint8_t)TIM1_OCMode);
      009471 1A 04            [ 1] 2086 	or	a, (0x04, sp)
      009473 C7 52 59         [ 1] 2087 	ld	0x5259, a
      009476 20 28            [ 2] 2088 	jra	00110$
      009478                       2089 00105$:
                           0006AD  2090 	C$stm8s_tim1.c$1736$1_0$547 ==.
                                   2091 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1736: else if (TIM1_Channel == TIM1_CHANNEL_3)
      009478 7B 03            [ 1] 2092 	ld	a, (0x03, sp)
      00947A A1 02            [ 1] 2093 	cp	a, #0x02
      00947C 26 14            [ 1] 2094 	jrne	00102$
                           0006B3  2095 	C$stm8s_tim1.c$1739$2_0$550 ==.
                                   2096 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      00947E C6 52 5D         [ 1] 2097 	ld	a, 0x525d
      009481 A4 FE            [ 1] 2098 	and	a, #0xfe
      009483 C7 52 5D         [ 1] 2099 	ld	0x525d, a
                           0006BB  2100 	C$stm8s_tim1.c$1742$2_0$550 ==.
                                   2101 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1742: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
      009486 C6 52 5A         [ 1] 2102 	ld	a, 0x525a
      009489 A4 8F            [ 1] 2103 	and	a, #0x8f
                           0006C0  2104 	C$stm8s_tim1.c$1743$2_0$550 ==.
                                   2105 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1743: | (uint8_t)TIM1_OCMode);
      00948B 1A 04            [ 1] 2106 	or	a, (0x04, sp)
      00948D C7 52 5A         [ 1] 2107 	ld	0x525a, a
      009490 20 0E            [ 2] 2108 	jra	00110$
      009492                       2109 00102$:
                           0006C7  2110 	C$stm8s_tim1.c$1748$2_0$551 ==.
                                   2111 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1748: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      009492 72 19 52 5D      [ 1] 2112 	bres	21085, #4
                           0006CB  2113 	C$stm8s_tim1.c$1751$2_0$551 ==.
                                   2114 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1751: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      009496 C6 52 5B         [ 1] 2115 	ld	a, 0x525b
      009499 A4 8F            [ 1] 2116 	and	a, #0x8f
                           0006D0  2117 	C$stm8s_tim1.c$1752$2_0$551 ==.
                                   2118 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1752: | (uint8_t)TIM1_OCMode);
      00949B 1A 04            [ 1] 2119 	or	a, (0x04, sp)
      00949D C7 52 5B         [ 1] 2120 	ld	0x525b, a
      0094A0                       2121 00110$:
                           0006D5  2122 	C$stm8s_tim1.c$1754$1_0$547 ==.
                                   2123 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1754: }
                           0006D5  2124 	C$stm8s_tim1.c$1754$1_0$547 ==.
                           0006D5  2125 	XG$TIM1_SelectOCxM$0$0 ==.
      0094A0 81               [ 4] 2126 	ret
                           0006D6  2127 	G$TIM1_SetCounter$0$0 ==.
                           0006D6  2128 	C$stm8s_tim1.c$1762$1_0$553 ==.
                                   2129 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1762: void TIM1_SetCounter(uint16_t Counter)
                                   2130 ;	-----------------------------------------
                                   2131 ;	 function TIM1_SetCounter
                                   2132 ;	-----------------------------------------
      0094A1                       2133 _TIM1_SetCounter:
      0094A1 52 02            [ 2] 2134 	sub	sp, #2
                           0006D8  2135 	C$stm8s_tim1.c$1765$1_0$553 ==.
                                   2136 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1765: TIM1->CNTRH = (uint8_t)(Counter >> 8);
      0094A3 7B 05            [ 1] 2137 	ld	a, (0x05, sp)
      0094A5 0F 01            [ 1] 2138 	clr	(0x01, sp)
      0094A7 C7 52 5E         [ 1] 2139 	ld	0x525e, a
                           0006DF  2140 	C$stm8s_tim1.c$1766$1_0$553 ==.
                                   2141 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1766: TIM1->CNTRL = (uint8_t)(Counter);
      0094AA 7B 06            [ 1] 2142 	ld	a, (0x06, sp)
      0094AC C7 52 5F         [ 1] 2143 	ld	0x525f, a
                           0006E4  2144 	C$stm8s_tim1.c$1767$1_0$553 ==.
                                   2145 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1767: }
      0094AF 5B 02            [ 2] 2146 	addw	sp, #2
                           0006E6  2147 	C$stm8s_tim1.c$1767$1_0$553 ==.
                           0006E6  2148 	XG$TIM1_SetCounter$0$0 ==.
      0094B1 81               [ 4] 2149 	ret
                           0006E7  2150 	G$TIM1_SetAutoreload$0$0 ==.
                           0006E7  2151 	C$stm8s_tim1.c$1775$1_0$555 ==.
                                   2152 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1775: void TIM1_SetAutoreload(uint16_t Autoreload)
                                   2153 ;	-----------------------------------------
                                   2154 ;	 function TIM1_SetAutoreload
                                   2155 ;	-----------------------------------------
      0094B2                       2156 _TIM1_SetAutoreload:
      0094B2 52 02            [ 2] 2157 	sub	sp, #2
                           0006E9  2158 	C$stm8s_tim1.c$1778$1_0$555 ==.
                                   2159 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1778: TIM1->ARRH = (uint8_t)(Autoreload >> 8);
      0094B4 7B 05            [ 1] 2160 	ld	a, (0x05, sp)
      0094B6 0F 01            [ 1] 2161 	clr	(0x01, sp)
      0094B8 C7 52 62         [ 1] 2162 	ld	0x5262, a
                           0006F0  2163 	C$stm8s_tim1.c$1779$1_0$555 ==.
                                   2164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1779: TIM1->ARRL = (uint8_t)(Autoreload);
      0094BB 7B 06            [ 1] 2165 	ld	a, (0x06, sp)
      0094BD C7 52 63         [ 1] 2166 	ld	0x5263, a
                           0006F5  2167 	C$stm8s_tim1.c$1780$1_0$555 ==.
                                   2168 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1780: }
      0094C0 5B 02            [ 2] 2169 	addw	sp, #2
                           0006F7  2170 	C$stm8s_tim1.c$1780$1_0$555 ==.
                           0006F7  2171 	XG$TIM1_SetAutoreload$0$0 ==.
      0094C2 81               [ 4] 2172 	ret
                           0006F8  2173 	G$TIM1_SetCompare1$0$0 ==.
                           0006F8  2174 	C$stm8s_tim1.c$1788$1_0$557 ==.
                                   2175 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1788: void TIM1_SetCompare1(uint16_t Compare1)
                                   2176 ;	-----------------------------------------
                                   2177 ;	 function TIM1_SetCompare1
                                   2178 ;	-----------------------------------------
      0094C3                       2179 _TIM1_SetCompare1:
      0094C3 52 02            [ 2] 2180 	sub	sp, #2
                           0006FA  2181 	C$stm8s_tim1.c$1791$1_0$557 ==.
                                   2182 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1791: TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
      0094C5 7B 05            [ 1] 2183 	ld	a, (0x05, sp)
      0094C7 0F 01            [ 1] 2184 	clr	(0x01, sp)
      0094C9 C7 52 65         [ 1] 2185 	ld	0x5265, a
                           000701  2186 	C$stm8s_tim1.c$1792$1_0$557 ==.
                                   2187 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1792: TIM1->CCR1L = (uint8_t)(Compare1);
      0094CC 7B 06            [ 1] 2188 	ld	a, (0x06, sp)
      0094CE C7 52 66         [ 1] 2189 	ld	0x5266, a
                           000706  2190 	C$stm8s_tim1.c$1793$1_0$557 ==.
                                   2191 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1793: }
      0094D1 5B 02            [ 2] 2192 	addw	sp, #2
                           000708  2193 	C$stm8s_tim1.c$1793$1_0$557 ==.
                           000708  2194 	XG$TIM1_SetCompare1$0$0 ==.
      0094D3 81               [ 4] 2195 	ret
                           000709  2196 	G$TIM1_SetCompare2$0$0 ==.
                           000709  2197 	C$stm8s_tim1.c$1801$1_0$559 ==.
                                   2198 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1801: void TIM1_SetCompare2(uint16_t Compare2)
                                   2199 ;	-----------------------------------------
                                   2200 ;	 function TIM1_SetCompare2
                                   2201 ;	-----------------------------------------
      0094D4                       2202 _TIM1_SetCompare2:
      0094D4 52 02            [ 2] 2203 	sub	sp, #2
                           00070B  2204 	C$stm8s_tim1.c$1804$1_0$559 ==.
                                   2205 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1804: TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
      0094D6 7B 05            [ 1] 2206 	ld	a, (0x05, sp)
      0094D8 0F 01            [ 1] 2207 	clr	(0x01, sp)
      0094DA C7 52 67         [ 1] 2208 	ld	0x5267, a
                           000712  2209 	C$stm8s_tim1.c$1805$1_0$559 ==.
                                   2210 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1805: TIM1->CCR2L = (uint8_t)(Compare2);
      0094DD 7B 06            [ 1] 2211 	ld	a, (0x06, sp)
      0094DF C7 52 68         [ 1] 2212 	ld	0x5268, a
                           000717  2213 	C$stm8s_tim1.c$1806$1_0$559 ==.
                                   2214 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1806: }
      0094E2 5B 02            [ 2] 2215 	addw	sp, #2
                           000719  2216 	C$stm8s_tim1.c$1806$1_0$559 ==.
                           000719  2217 	XG$TIM1_SetCompare2$0$0 ==.
      0094E4 81               [ 4] 2218 	ret
                           00071A  2219 	G$TIM1_SetCompare3$0$0 ==.
                           00071A  2220 	C$stm8s_tim1.c$1814$1_0$561 ==.
                                   2221 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1814: void TIM1_SetCompare3(uint16_t Compare3)
                                   2222 ;	-----------------------------------------
                                   2223 ;	 function TIM1_SetCompare3
                                   2224 ;	-----------------------------------------
      0094E5                       2225 _TIM1_SetCompare3:
      0094E5 52 02            [ 2] 2226 	sub	sp, #2
                           00071C  2227 	C$stm8s_tim1.c$1817$1_0$561 ==.
                                   2228 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1817: TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
      0094E7 7B 05            [ 1] 2229 	ld	a, (0x05, sp)
      0094E9 0F 01            [ 1] 2230 	clr	(0x01, sp)
      0094EB C7 52 69         [ 1] 2231 	ld	0x5269, a
                           000723  2232 	C$stm8s_tim1.c$1818$1_0$561 ==.
                                   2233 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1818: TIM1->CCR3L = (uint8_t)(Compare3);
      0094EE 7B 06            [ 1] 2234 	ld	a, (0x06, sp)
      0094F0 C7 52 6A         [ 1] 2235 	ld	0x526a, a
                           000728  2236 	C$stm8s_tim1.c$1819$1_0$561 ==.
                                   2237 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1819: }
      0094F3 5B 02            [ 2] 2238 	addw	sp, #2
                           00072A  2239 	C$stm8s_tim1.c$1819$1_0$561 ==.
                           00072A  2240 	XG$TIM1_SetCompare3$0$0 ==.
      0094F5 81               [ 4] 2241 	ret
                           00072B  2242 	G$TIM1_SetCompare4$0$0 ==.
                           00072B  2243 	C$stm8s_tim1.c$1827$1_0$563 ==.
                                   2244 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1827: void TIM1_SetCompare4(uint16_t Compare4)
                                   2245 ;	-----------------------------------------
                                   2246 ;	 function TIM1_SetCompare4
                                   2247 ;	-----------------------------------------
      0094F6                       2248 _TIM1_SetCompare4:
      0094F6 52 02            [ 2] 2249 	sub	sp, #2
                           00072D  2250 	C$stm8s_tim1.c$1830$1_0$563 ==.
                                   2251 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1830: TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
      0094F8 7B 05            [ 1] 2252 	ld	a, (0x05, sp)
      0094FA 0F 01            [ 1] 2253 	clr	(0x01, sp)
      0094FC C7 52 6B         [ 1] 2254 	ld	0x526b, a
                           000734  2255 	C$stm8s_tim1.c$1831$1_0$563 ==.
                                   2256 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1831: TIM1->CCR4L = (uint8_t)(Compare4);
      0094FF 7B 06            [ 1] 2257 	ld	a, (0x06, sp)
      009501 C7 52 6C         [ 1] 2258 	ld	0x526c, a
                           000739  2259 	C$stm8s_tim1.c$1832$1_0$563 ==.
                                   2260 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1832: }
      009504 5B 02            [ 2] 2261 	addw	sp, #2
                           00073B  2262 	C$stm8s_tim1.c$1832$1_0$563 ==.
                           00073B  2263 	XG$TIM1_SetCompare4$0$0 ==.
      009506 81               [ 4] 2264 	ret
                           00073C  2265 	G$TIM1_SetIC1Prescaler$0$0 ==.
                           00073C  2266 	C$stm8s_tim1.c$1844$1_0$565 ==.
                                   2267 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1844: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                   2268 ;	-----------------------------------------
                                   2269 ;	 function TIM1_SetIC1Prescaler
                                   2270 ;	-----------------------------------------
      009507                       2271 _TIM1_SetIC1Prescaler:
                           00073C  2272 	C$stm8s_tim1.c$1850$1_0$565 ==.
                                   2273 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1850: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
      009507 C6 52 58         [ 1] 2274 	ld	a, 0x5258
      00950A A4 F3            [ 1] 2275 	and	a, #0xf3
                           000741  2276 	C$stm8s_tim1.c$1851$1_0$565 ==.
                                   2277 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1851: | (uint8_t)TIM1_IC1Prescaler);
      00950C 1A 03            [ 1] 2278 	or	a, (0x03, sp)
      00950E C7 52 58         [ 1] 2279 	ld	0x5258, a
                           000746  2280 	C$stm8s_tim1.c$1852$1_0$565 ==.
                                   2281 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1852: }
                           000746  2282 	C$stm8s_tim1.c$1852$1_0$565 ==.
                           000746  2283 	XG$TIM1_SetIC1Prescaler$0$0 ==.
      009511 81               [ 4] 2284 	ret
                           000747  2285 	G$TIM1_SetIC2Prescaler$0$0 ==.
                           000747  2286 	C$stm8s_tim1.c$1864$1_0$567 ==.
                                   2287 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1864: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                   2288 ;	-----------------------------------------
                                   2289 ;	 function TIM1_SetIC2Prescaler
                                   2290 ;	-----------------------------------------
      009512                       2291 _TIM1_SetIC2Prescaler:
                           000747  2292 	C$stm8s_tim1.c$1871$1_0$567 ==.
                                   2293 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1871: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
      009512 C6 52 59         [ 1] 2294 	ld	a, 0x5259
      009515 A4 F3            [ 1] 2295 	and	a, #0xf3
                           00074C  2296 	C$stm8s_tim1.c$1872$1_0$567 ==.
                                   2297 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1872: | (uint8_t)TIM1_IC2Prescaler);
      009517 1A 03            [ 1] 2298 	or	a, (0x03, sp)
      009519 C7 52 59         [ 1] 2299 	ld	0x5259, a
                           000751  2300 	C$stm8s_tim1.c$1873$1_0$567 ==.
                                   2301 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1873: }
                           000751  2302 	C$stm8s_tim1.c$1873$1_0$567 ==.
                           000751  2303 	XG$TIM1_SetIC2Prescaler$0$0 ==.
      00951C 81               [ 4] 2304 	ret
                           000752  2305 	G$TIM1_SetIC3Prescaler$0$0 ==.
                           000752  2306 	C$stm8s_tim1.c$1885$1_0$569 ==.
                                   2307 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1885: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                   2308 ;	-----------------------------------------
                                   2309 ;	 function TIM1_SetIC3Prescaler
                                   2310 ;	-----------------------------------------
      00951D                       2311 _TIM1_SetIC3Prescaler:
                           000752  2312 	C$stm8s_tim1.c$1892$1_0$569 ==.
                                   2313 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1892: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
      00951D C6 52 5A         [ 1] 2314 	ld	a, 0x525a
      009520 A4 F3            [ 1] 2315 	and	a, #0xf3
                           000757  2316 	C$stm8s_tim1.c$1893$1_0$569 ==.
                                   2317 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1893: (uint8_t)TIM1_IC3Prescaler);
      009522 1A 03            [ 1] 2318 	or	a, (0x03, sp)
      009524 C7 52 5A         [ 1] 2319 	ld	0x525a, a
                           00075C  2320 	C$stm8s_tim1.c$1894$1_0$569 ==.
                                   2321 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1894: }
                           00075C  2322 	C$stm8s_tim1.c$1894$1_0$569 ==.
                           00075C  2323 	XG$TIM1_SetIC3Prescaler$0$0 ==.
      009527 81               [ 4] 2324 	ret
                           00075D  2325 	G$TIM1_SetIC4Prescaler$0$0 ==.
                           00075D  2326 	C$stm8s_tim1.c$1906$1_0$571 ==.
                                   2327 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1906: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                   2328 ;	-----------------------------------------
                                   2329 ;	 function TIM1_SetIC4Prescaler
                                   2330 ;	-----------------------------------------
      009528                       2331 _TIM1_SetIC4Prescaler:
                           00075D  2332 	C$stm8s_tim1.c$1913$1_0$571 ==.
                                   2333 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1913: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      009528 C6 52 5B         [ 1] 2334 	ld	a, 0x525b
      00952B A4 F3            [ 1] 2335 	and	a, #0xf3
                           000762  2336 	C$stm8s_tim1.c$1914$1_0$571 ==.
                                   2337 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1914: (uint8_t)TIM1_IC4Prescaler);
      00952D 1A 03            [ 1] 2338 	or	a, (0x03, sp)
      00952F C7 52 5B         [ 1] 2339 	ld	0x525b, a
                           000767  2340 	C$stm8s_tim1.c$1915$1_0$571 ==.
                                   2341 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1915: }
                           000767  2342 	C$stm8s_tim1.c$1915$1_0$571 ==.
                           000767  2343 	XG$TIM1_SetIC4Prescaler$0$0 ==.
      009532 81               [ 4] 2344 	ret
                           000768  2345 	G$TIM1_GetCapture1$0$0 ==.
                           000768  2346 	C$stm8s_tim1.c$1922$1_0$573 ==.
                                   2347 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1922: uint16_t TIM1_GetCapture1(void)
                                   2348 ;	-----------------------------------------
                                   2349 ;	 function TIM1_GetCapture1
                                   2350 ;	-----------------------------------------
      009533                       2351 _TIM1_GetCapture1:
      009533 52 02            [ 2] 2352 	sub	sp, #2
                           00076A  2353 	C$stm8s_tim1.c$1929$1_0$573 ==.
                                   2354 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1929: tmpccr1h = TIM1->CCR1H;
      009535 C6 52 65         [ 1] 2355 	ld	a, 0x5265
      009538 95               [ 1] 2356 	ld	xh, a
                           00076E  2357 	C$stm8s_tim1.c$1930$1_0$573 ==.
                                   2358 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1930: tmpccr1l = TIM1->CCR1L;
      009539 C6 52 66         [ 1] 2359 	ld	a, 0x5266
                           000771  2360 	C$stm8s_tim1.c$1932$1_0$573 ==.
                                   2361 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1932: tmpccr1 = (uint16_t)(tmpccr1l);
      00953C 97               [ 1] 2362 	ld	xl, a
      00953D 4F               [ 1] 2363 	clr	a
                           000773  2364 	C$stm8s_tim1.c$1933$1_0$573 ==.
                                   2365 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1933: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00953E 90 5F            [ 1] 2366 	clrw	y
      009540 0F 02            [ 1] 2367 	clr	(0x02, sp)
      009542 89               [ 2] 2368 	pushw	x
      009543 1A 01            [ 1] 2369 	or	a, (1, sp)
      009545 85               [ 2] 2370 	popw	x
      009546 01               [ 1] 2371 	rrwa	x
      009547 1A 02            [ 1] 2372 	or	a, (0x02, sp)
      009549 97               [ 1] 2373 	ld	xl, a
                           00077F  2374 	C$stm8s_tim1.c$1935$1_0$573 ==.
                                   2375 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1935: return (uint16_t)tmpccr1;
                           00077F  2376 	C$stm8s_tim1.c$1936$1_0$573 ==.
                                   2377 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1936: }
      00954A 5B 02            [ 2] 2378 	addw	sp, #2
                           000781  2379 	C$stm8s_tim1.c$1936$1_0$573 ==.
                           000781  2380 	XG$TIM1_GetCapture1$0$0 ==.
      00954C 81               [ 4] 2381 	ret
                           000782  2382 	G$TIM1_GetCapture2$0$0 ==.
                           000782  2383 	C$stm8s_tim1.c$1943$1_0$575 ==.
                                   2384 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1943: uint16_t TIM1_GetCapture2(void)
                                   2385 ;	-----------------------------------------
                                   2386 ;	 function TIM1_GetCapture2
                                   2387 ;	-----------------------------------------
      00954D                       2388 _TIM1_GetCapture2:
      00954D 52 02            [ 2] 2389 	sub	sp, #2
                           000784  2390 	C$stm8s_tim1.c$1950$1_0$575 ==.
                                   2391 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1950: tmpccr2h = TIM1->CCR2H;
      00954F C6 52 67         [ 1] 2392 	ld	a, 0x5267
      009552 95               [ 1] 2393 	ld	xh, a
                           000788  2394 	C$stm8s_tim1.c$1951$1_0$575 ==.
                                   2395 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1951: tmpccr2l = TIM1->CCR2L;
      009553 C6 52 68         [ 1] 2396 	ld	a, 0x5268
                           00078B  2397 	C$stm8s_tim1.c$1953$1_0$575 ==.
                                   2398 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1953: tmpccr2 = (uint16_t)(tmpccr2l);
      009556 97               [ 1] 2399 	ld	xl, a
      009557 4F               [ 1] 2400 	clr	a
                           00078D  2401 	C$stm8s_tim1.c$1954$1_0$575 ==.
                                   2402 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1954: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      009558 90 5F            [ 1] 2403 	clrw	y
      00955A 0F 02            [ 1] 2404 	clr	(0x02, sp)
      00955C 89               [ 2] 2405 	pushw	x
      00955D 1A 01            [ 1] 2406 	or	a, (1, sp)
      00955F 85               [ 2] 2407 	popw	x
      009560 01               [ 1] 2408 	rrwa	x
      009561 1A 02            [ 1] 2409 	or	a, (0x02, sp)
      009563 97               [ 1] 2410 	ld	xl, a
                           000799  2411 	C$stm8s_tim1.c$1956$1_0$575 ==.
                                   2412 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1956: return (uint16_t)tmpccr2;
                           000799  2413 	C$stm8s_tim1.c$1957$1_0$575 ==.
                                   2414 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1957: }
      009564 5B 02            [ 2] 2415 	addw	sp, #2
                           00079B  2416 	C$stm8s_tim1.c$1957$1_0$575 ==.
                           00079B  2417 	XG$TIM1_GetCapture2$0$0 ==.
      009566 81               [ 4] 2418 	ret
                           00079C  2419 	G$TIM1_GetCapture3$0$0 ==.
                           00079C  2420 	C$stm8s_tim1.c$1964$1_0$577 ==.
                                   2421 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1964: uint16_t TIM1_GetCapture3(void)
                                   2422 ;	-----------------------------------------
                                   2423 ;	 function TIM1_GetCapture3
                                   2424 ;	-----------------------------------------
      009567                       2425 _TIM1_GetCapture3:
      009567 52 02            [ 2] 2426 	sub	sp, #2
                           00079E  2427 	C$stm8s_tim1.c$1970$1_0$577 ==.
                                   2428 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1970: tmpccr3h = TIM1->CCR3H;
      009569 C6 52 69         [ 1] 2429 	ld	a, 0x5269
      00956C 95               [ 1] 2430 	ld	xh, a
                           0007A2  2431 	C$stm8s_tim1.c$1971$1_0$577 ==.
                                   2432 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1971: tmpccr3l = TIM1->CCR3L;
      00956D C6 52 6A         [ 1] 2433 	ld	a, 0x526a
                           0007A5  2434 	C$stm8s_tim1.c$1973$1_0$577 ==.
                                   2435 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1973: tmpccr3 = (uint16_t)(tmpccr3l);
      009570 97               [ 1] 2436 	ld	xl, a
      009571 4F               [ 1] 2437 	clr	a
                           0007A7  2438 	C$stm8s_tim1.c$1974$1_0$577 ==.
                                   2439 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1974: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      009572 90 5F            [ 1] 2440 	clrw	y
      009574 0F 02            [ 1] 2441 	clr	(0x02, sp)
      009576 89               [ 2] 2442 	pushw	x
      009577 1A 01            [ 1] 2443 	or	a, (1, sp)
      009579 85               [ 2] 2444 	popw	x
      00957A 01               [ 1] 2445 	rrwa	x
      00957B 1A 02            [ 1] 2446 	or	a, (0x02, sp)
      00957D 97               [ 1] 2447 	ld	xl, a
                           0007B3  2448 	C$stm8s_tim1.c$1976$1_0$577 ==.
                                   2449 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1976: return (uint16_t)tmpccr3;
                           0007B3  2450 	C$stm8s_tim1.c$1977$1_0$577 ==.
                                   2451 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1977: }
      00957E 5B 02            [ 2] 2452 	addw	sp, #2
                           0007B5  2453 	C$stm8s_tim1.c$1977$1_0$577 ==.
                           0007B5  2454 	XG$TIM1_GetCapture3$0$0 ==.
      009580 81               [ 4] 2455 	ret
                           0007B6  2456 	G$TIM1_GetCapture4$0$0 ==.
                           0007B6  2457 	C$stm8s_tim1.c$1984$1_0$579 ==.
                                   2458 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1984: uint16_t TIM1_GetCapture4(void)
                                   2459 ;	-----------------------------------------
                                   2460 ;	 function TIM1_GetCapture4
                                   2461 ;	-----------------------------------------
      009581                       2462 _TIM1_GetCapture4:
      009581 52 02            [ 2] 2463 	sub	sp, #2
                           0007B8  2464 	C$stm8s_tim1.c$1990$1_0$579 ==.
                                   2465 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1990: tmpccr4h = TIM1->CCR4H;
      009583 C6 52 6B         [ 1] 2466 	ld	a, 0x526b
      009586 95               [ 1] 2467 	ld	xh, a
                           0007BC  2468 	C$stm8s_tim1.c$1991$1_0$579 ==.
                                   2469 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1991: tmpccr4l = TIM1->CCR4L;
      009587 C6 52 6C         [ 1] 2470 	ld	a, 0x526c
                           0007BF  2471 	C$stm8s_tim1.c$1993$1_0$579 ==.
                                   2472 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1993: tmpccr4 = (uint16_t)(tmpccr4l);
      00958A 97               [ 1] 2473 	ld	xl, a
      00958B 4F               [ 1] 2474 	clr	a
                           0007C1  2475 	C$stm8s_tim1.c$1994$1_0$579 ==.
                                   2476 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1994: tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
      00958C 90 5F            [ 1] 2477 	clrw	y
      00958E 0F 02            [ 1] 2478 	clr	(0x02, sp)
      009590 89               [ 2] 2479 	pushw	x
      009591 1A 01            [ 1] 2480 	or	a, (1, sp)
      009593 85               [ 2] 2481 	popw	x
      009594 01               [ 1] 2482 	rrwa	x
      009595 1A 02            [ 1] 2483 	or	a, (0x02, sp)
      009597 97               [ 1] 2484 	ld	xl, a
                           0007CD  2485 	C$stm8s_tim1.c$1996$1_0$579 ==.
                                   2486 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1996: return (uint16_t)tmpccr4;
                           0007CD  2487 	C$stm8s_tim1.c$1997$1_0$579 ==.
                                   2488 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1997: }
      009598 5B 02            [ 2] 2489 	addw	sp, #2
                           0007CF  2490 	C$stm8s_tim1.c$1997$1_0$579 ==.
                           0007CF  2491 	XG$TIM1_GetCapture4$0$0 ==.
      00959A 81               [ 4] 2492 	ret
                           0007D0  2493 	G$TIM1_GetCounter$0$0 ==.
                           0007D0  2494 	C$stm8s_tim1.c$2004$1_0$581 ==.
                                   2495 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2004: uint16_t TIM1_GetCounter(void)
                                   2496 ;	-----------------------------------------
                                   2497 ;	 function TIM1_GetCounter
                                   2498 ;	-----------------------------------------
      00959B                       2499 _TIM1_GetCounter:
      00959B 52 04            [ 2] 2500 	sub	sp, #4
                           0007D2  2501 	C$stm8s_tim1.c$2008$1_0$581 ==.
                                   2502 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2008: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
      00959D C6 52 5E         [ 1] 2503 	ld	a, 0x525e
      0095A0 95               [ 1] 2504 	ld	xh, a
      0095A1 4F               [ 1] 2505 	clr	a
      0095A2 6B 02            [ 1] 2506 	ld	(0x02, sp), a
                           0007D9  2507 	C$stm8s_tim1.c$2011$1_0$581 ==.
                                   2508 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2011: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
      0095A4 C6 52 5F         [ 1] 2509 	ld	a, 0x525f
      0095A7 0F 03            [ 1] 2510 	clr	(0x03, sp)
      0095A9 1A 02            [ 1] 2511 	or	a, (0x02, sp)
      0095AB 02               [ 1] 2512 	rlwa	x
      0095AC 1A 03            [ 1] 2513 	or	a, (0x03, sp)
      0095AE 95               [ 1] 2514 	ld	xh, a
                           0007E4  2515 	C$stm8s_tim1.c$2012$1_0$581 ==.
                                   2516 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2012: }
      0095AF 5B 04            [ 2] 2517 	addw	sp, #4
                           0007E6  2518 	C$stm8s_tim1.c$2012$1_0$581 ==.
                           0007E6  2519 	XG$TIM1_GetCounter$0$0 ==.
      0095B1 81               [ 4] 2520 	ret
                           0007E7  2521 	G$TIM1_GetPrescaler$0$0 ==.
                           0007E7  2522 	C$stm8s_tim1.c$2019$1_0$583 ==.
                                   2523 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2019: uint16_t TIM1_GetPrescaler(void)
                                   2524 ;	-----------------------------------------
                                   2525 ;	 function TIM1_GetPrescaler
                                   2526 ;	-----------------------------------------
      0095B2                       2527 _TIM1_GetPrescaler:
      0095B2 52 04            [ 2] 2528 	sub	sp, #4
                           0007E9  2529 	C$stm8s_tim1.c$2023$1_0$583 ==.
                                   2530 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2023: temp = ((uint16_t)TIM1->PSCRH << 8);
      0095B4 C6 52 60         [ 1] 2531 	ld	a, 0x5260
      0095B7 95               [ 1] 2532 	ld	xh, a
      0095B8 4F               [ 1] 2533 	clr	a
      0095B9 6B 04            [ 1] 2534 	ld	(0x04, sp), a
                           0007F0  2535 	C$stm8s_tim1.c$2026$1_0$583 ==.
                                   2536 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2026: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
      0095BB C6 52 61         [ 1] 2537 	ld	a, 0x5261
      0095BE 0F 01            [ 1] 2538 	clr	(0x01, sp)
      0095C0 1A 04            [ 1] 2539 	or	a, (0x04, sp)
      0095C2 02               [ 1] 2540 	rlwa	x
      0095C3 1A 01            [ 1] 2541 	or	a, (0x01, sp)
      0095C5 95               [ 1] 2542 	ld	xh, a
                           0007FB  2543 	C$stm8s_tim1.c$2027$1_0$583 ==.
                                   2544 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2027: }
      0095C6 5B 04            [ 2] 2545 	addw	sp, #4
                           0007FD  2546 	C$stm8s_tim1.c$2027$1_0$583 ==.
                           0007FD  2547 	XG$TIM1_GetPrescaler$0$0 ==.
      0095C8 81               [ 4] 2548 	ret
                           0007FE  2549 	G$TIM1_GetFlagStatus$0$0 ==.
                           0007FE  2550 	C$stm8s_tim1.c$2047$1_0$585 ==.
                                   2551 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2047: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   2552 ;	-----------------------------------------
                                   2553 ;	 function TIM1_GetFlagStatus
                                   2554 ;	-----------------------------------------
      0095C9                       2555 _TIM1_GetFlagStatus:
      0095C9 52 05            [ 2] 2556 	sub	sp, #5
                           000800  2557 	C$stm8s_tim1.c$2055$1_0$585 ==.
                                   2558 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2055: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
      0095CB C6 52 55         [ 1] 2559 	ld	a, 0x5255
      0095CE 6B 03            [ 1] 2560 	ld	(0x03, sp), a
      0095D0 7B 09            [ 1] 2561 	ld	a, (0x09, sp)
      0095D2 14 03            [ 1] 2562 	and	a, (0x03, sp)
      0095D4 6B 04            [ 1] 2563 	ld	(0x04, sp), a
                           00080B  2564 	C$stm8s_tim1.c$2056$1_0$585 ==.
                                   2565 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2056: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
      0095D6 7B 08            [ 1] 2566 	ld	a, (0x08, sp)
      0095D8 0F 01            [ 1] 2567 	clr	(0x01, sp)
      0095DA 6B 05            [ 1] 2568 	ld	(0x05, sp), a
                           000811  2569 	C$stm8s_tim1.c$2058$1_0$585 ==.
                                   2570 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2058: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
      0095DC C6 52 56         [ 1] 2571 	ld	a, 0x5256
      0095DF 14 05            [ 1] 2572 	and	a, (0x05, sp)
      0095E1 1A 04            [ 1] 2573 	or	a, (0x04, sp)
      0095E3 27 04            [ 1] 2574 	jreq	00102$
                           00081A  2575 	C$stm8s_tim1.c$2060$2_0$586 ==.
                                   2576 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2060: bitstatus = SET;
      0095E5 A6 01            [ 1] 2577 	ld	a, #0x01
      0095E7 20 01            [ 2] 2578 	jra	00103$
      0095E9                       2579 00102$:
                           00081E  2580 	C$stm8s_tim1.c$2064$2_0$587 ==.
                                   2581 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2064: bitstatus = RESET;
      0095E9 4F               [ 1] 2582 	clr	a
      0095EA                       2583 00103$:
                           00081F  2584 	C$stm8s_tim1.c$2066$1_0$585 ==.
                                   2585 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2066: return (FlagStatus)(bitstatus);
                           00081F  2586 	C$stm8s_tim1.c$2067$1_0$585 ==.
                                   2587 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2067: }
      0095EA 5B 05            [ 2] 2588 	addw	sp, #5
                           000821  2589 	C$stm8s_tim1.c$2067$1_0$585 ==.
                           000821  2590 	XG$TIM1_GetFlagStatus$0$0 ==.
      0095EC 81               [ 4] 2591 	ret
                           000822  2592 	G$TIM1_ClearFlag$0$0 ==.
                           000822  2593 	C$stm8s_tim1.c$2087$1_0$589 ==.
                                   2594 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2087: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   2595 ;	-----------------------------------------
                                   2596 ;	 function TIM1_ClearFlag
                                   2597 ;	-----------------------------------------
      0095ED                       2598 _TIM1_ClearFlag:
                           000822  2599 	C$stm8s_tim1.c$2093$1_0$589 ==.
                                   2600 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2093: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      0095ED 7B 04            [ 1] 2601 	ld	a, (0x04, sp)
      0095EF 43               [ 1] 2602 	cpl	a
      0095F0 C7 52 55         [ 1] 2603 	ld	0x5255, a
                           000828  2604 	C$stm8s_tim1.c$2094$1_0$589 ==.
                                   2605 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2094: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
      0095F3 7B 03            [ 1] 2606 	ld	a, (0x03, sp)
      0095F5 43               [ 1] 2607 	cpl	a
      0095F6 A4 1E            [ 1] 2608 	and	a, #0x1e
      0095F8 C7 52 56         [ 1] 2609 	ld	0x5256, a
                           000830  2610 	C$stm8s_tim1.c$2096$1_0$589 ==.
                                   2611 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2096: }
                           000830  2612 	C$stm8s_tim1.c$2096$1_0$589 ==.
                           000830  2613 	XG$TIM1_ClearFlag$0$0 ==.
      0095FB 81               [ 4] 2614 	ret
                           000831  2615 	G$TIM1_GetITStatus$0$0 ==.
                           000831  2616 	C$stm8s_tim1.c$2112$1_0$591 ==.
                                   2617 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2112: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
                                   2618 ;	-----------------------------------------
                                   2619 ;	 function TIM1_GetITStatus
                                   2620 ;	-----------------------------------------
      0095FC                       2621 _TIM1_GetITStatus:
      0095FC 88               [ 1] 2622 	push	a
                           000832  2623 	C$stm8s_tim1.c$2120$1_0$591 ==.
                                   2624 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2120: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
      0095FD C6 52 55         [ 1] 2625 	ld	a, 0x5255
      009600 14 04            [ 1] 2626 	and	a, (0x04, sp)
      009602 6B 01            [ 1] 2627 	ld	(0x01, sp), a
                           000839  2628 	C$stm8s_tim1.c$2122$1_0$591 ==.
                                   2629 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2122: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
      009604 C6 52 54         [ 1] 2630 	ld	a, 0x5254
      009607 14 04            [ 1] 2631 	and	a, (0x04, sp)
                           00083E  2632 	C$stm8s_tim1.c$2124$1_0$591 ==.
                                   2633 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2124: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
      009609 0D 01            [ 1] 2634 	tnz	(0x01, sp)
      00960B 27 07            [ 1] 2635 	jreq	00102$
      00960D 4D               [ 1] 2636 	tnz	a
      00960E 27 04            [ 1] 2637 	jreq	00102$
                           000845  2638 	C$stm8s_tim1.c$2126$2_0$592 ==.
                                   2639 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2126: bitstatus = SET;
      009610 A6 01            [ 1] 2640 	ld	a, #0x01
      009612 20 01            [ 2] 2641 	jra	00103$
      009614                       2642 00102$:
                           000849  2643 	C$stm8s_tim1.c$2130$2_0$593 ==.
                                   2644 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2130: bitstatus = RESET;
      009614 4F               [ 1] 2645 	clr	a
      009615                       2646 00103$:
                           00084A  2647 	C$stm8s_tim1.c$2132$1_0$591 ==.
                                   2648 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2132: return (ITStatus)(bitstatus);
                           00084A  2649 	C$stm8s_tim1.c$2133$1_0$591 ==.
                                   2650 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2133: }
      009615 5B 01            [ 2] 2651 	addw	sp, #1
                           00084C  2652 	C$stm8s_tim1.c$2133$1_0$591 ==.
                           00084C  2653 	XG$TIM1_GetITStatus$0$0 ==.
      009617 81               [ 4] 2654 	ret
                           00084D  2655 	G$TIM1_ClearITPendingBit$0$0 ==.
                           00084D  2656 	C$stm8s_tim1.c$2149$1_0$595 ==.
                                   2657 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2149: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                   2658 ;	-----------------------------------------
                                   2659 ;	 function TIM1_ClearITPendingBit
                                   2660 ;	-----------------------------------------
      009618                       2661 _TIM1_ClearITPendingBit:
                           00084D  2662 	C$stm8s_tim1.c$2155$1_0$595 ==.
                                   2663 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2155: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      009618 7B 03            [ 1] 2664 	ld	a, (0x03, sp)
      00961A 43               [ 1] 2665 	cpl	a
      00961B C7 52 55         [ 1] 2666 	ld	0x5255, a
                           000853  2667 	C$stm8s_tim1.c$2156$1_0$595 ==.
                                   2668 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2156: }
                           000853  2669 	C$stm8s_tim1.c$2156$1_0$595 ==.
                           000853  2670 	XG$TIM1_ClearITPendingBit$0$0 ==.
      00961E 81               [ 4] 2671 	ret
                           000854  2672 	Fstm8s_tim1$TI1_Config$0$0 ==.
                           000854  2673 	C$stm8s_tim1.c$2174$1_0$597 ==.
                                   2674 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2174: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                   2675 ;	-----------------------------------------
                                   2676 ;	 function TI1_Config
                                   2677 ;	-----------------------------------------
      00961F                       2678 _TI1_Config:
      00961F 88               [ 1] 2679 	push	a
                           000855  2680 	C$stm8s_tim1.c$2179$1_0$597 ==.
                                   2681 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      009620 72 11 52 5C      [ 1] 2682 	bres	21084, #0
                           000859  2683 	C$stm8s_tim1.c$2182$1_0$597 ==.
                                   2684 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2182: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
      009624 C6 52 58         [ 1] 2685 	ld	a, 0x5258
      009627 A4 0C            [ 1] 2686 	and	a, #0x0c
      009629 6B 01            [ 1] 2687 	ld	(0x01, sp), a
                           000860  2688 	C$stm8s_tim1.c$2183$1_0$597 ==.
                                   2689 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2183: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00962B 7B 06            [ 1] 2690 	ld	a, (0x06, sp)
      00962D 4E               [ 1] 2691 	swap	a
      00962E A4 F0            [ 1] 2692 	and	a, #0xf0
      009630 1A 05            [ 1] 2693 	or	a, (0x05, sp)
      009632 1A 01            [ 1] 2694 	or	a, (0x01, sp)
      009634 C7 52 58         [ 1] 2695 	ld	0x5258, a
                           00086C  2696 	C$stm8s_tim1.c$2186$1_0$597 ==.
                                   2697 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2186: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      009637 0D 04            [ 1] 2698 	tnz	(0x04, sp)
      009639 27 06            [ 1] 2699 	jreq	00102$
                           000870  2700 	C$stm8s_tim1.c$2188$2_0$598 ==.
                                   2701 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2188: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00963B 72 12 52 5C      [ 1] 2702 	bset	21084, #1
      00963F 20 04            [ 2] 2703 	jra	00103$
      009641                       2704 00102$:
                           000876  2705 	C$stm8s_tim1.c$2192$2_0$599 ==.
                                   2706 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2192: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      009641 72 13 52 5C      [ 1] 2707 	bres	21084, #1
      009645                       2708 00103$:
                           00087A  2709 	C$stm8s_tim1.c$2196$1_0$597 ==.
                                   2710 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2196: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
      009645 72 10 52 5C      [ 1] 2711 	bset	21084, #0
                           00087E  2712 	C$stm8s_tim1.c$2197$1_0$597 ==.
                                   2713 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2197: }
      009649 84               [ 1] 2714 	pop	a
                           00087F  2715 	C$stm8s_tim1.c$2197$1_0$597 ==.
                           00087F  2716 	XFstm8s_tim1$TI1_Config$0$0 ==.
      00964A 81               [ 4] 2717 	ret
                           000880  2718 	Fstm8s_tim1$TI2_Config$0$0 ==.
                           000880  2719 	C$stm8s_tim1.c$2215$1_0$601 ==.
                                   2720 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2215: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                   2721 ;	-----------------------------------------
                                   2722 ;	 function TI2_Config
                                   2723 ;	-----------------------------------------
      00964B                       2724 _TI2_Config:
      00964B 88               [ 1] 2725 	push	a
                           000881  2726 	C$stm8s_tim1.c$2220$1_0$601 ==.
                                   2727 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      00964C 72 19 52 5C      [ 1] 2728 	bres	21084, #4
                           000885  2729 	C$stm8s_tim1.c$2223$1_0$601 ==.
                                   2730 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2223: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
      009650 C6 52 59         [ 1] 2731 	ld	a, 0x5259
      009653 A4 0C            [ 1] 2732 	and	a, #0x0c
      009655 6B 01            [ 1] 2733 	ld	(0x01, sp), a
                           00088C  2734 	C$stm8s_tim1.c$2224$1_0$601 ==.
                                   2735 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2224: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      009657 7B 06            [ 1] 2736 	ld	a, (0x06, sp)
      009659 4E               [ 1] 2737 	swap	a
      00965A A4 F0            [ 1] 2738 	and	a, #0xf0
      00965C 1A 05            [ 1] 2739 	or	a, (0x05, sp)
      00965E 1A 01            [ 1] 2740 	or	a, (0x01, sp)
      009660 C7 52 59         [ 1] 2741 	ld	0x5259, a
                           000898  2742 	C$stm8s_tim1.c$2226$1_0$601 ==.
                                   2743 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2226: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      009663 0D 04            [ 1] 2744 	tnz	(0x04, sp)
      009665 27 06            [ 1] 2745 	jreq	00102$
                           00089C  2746 	C$stm8s_tim1.c$2228$2_0$602 ==.
                                   2747 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2228: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      009667 72 1A 52 5C      [ 1] 2748 	bset	21084, #5
      00966B 20 04            [ 2] 2749 	jra	00103$
      00966D                       2750 00102$:
                           0008A2  2751 	C$stm8s_tim1.c$2232$2_0$603 ==.
                                   2752 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2232: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      00966D 72 1B 52 5C      [ 1] 2753 	bres	21084, #5
      009671                       2754 00103$:
                           0008A6  2755 	C$stm8s_tim1.c$2235$1_0$601 ==.
                                   2756 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2235: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
      009671 72 18 52 5C      [ 1] 2757 	bset	21084, #4
                           0008AA  2758 	C$stm8s_tim1.c$2236$1_0$601 ==.
                                   2759 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2236: }
      009675 84               [ 1] 2760 	pop	a
                           0008AB  2761 	C$stm8s_tim1.c$2236$1_0$601 ==.
                           0008AB  2762 	XFstm8s_tim1$TI2_Config$0$0 ==.
      009676 81               [ 4] 2763 	ret
                           0008AC  2764 	Fstm8s_tim1$TI3_Config$0$0 ==.
                           0008AC  2765 	C$stm8s_tim1.c$2254$1_0$605 ==.
                                   2766 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2254: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                   2767 ;	-----------------------------------------
                                   2768 ;	 function TI3_Config
                                   2769 ;	-----------------------------------------
      009677                       2770 _TI3_Config:
      009677 88               [ 1] 2771 	push	a
                           0008AD  2772 	C$stm8s_tim1.c$2259$1_0$605 ==.
                                   2773 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      009678 C6 52 5D         [ 1] 2774 	ld	a, 0x525d
      00967B A4 FE            [ 1] 2775 	and	a, #0xfe
      00967D C7 52 5D         [ 1] 2776 	ld	0x525d, a
                           0008B5  2777 	C$stm8s_tim1.c$2262$1_0$605 ==.
                                   2778 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2262: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
      009680 C6 52 5A         [ 1] 2779 	ld	a, 0x525a
      009683 A4 0C            [ 1] 2780 	and	a, #0x0c
      009685 6B 01            [ 1] 2781 	ld	(0x01, sp), a
                           0008BC  2782 	C$stm8s_tim1.c$2263$1_0$605 ==.
                                   2783 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2263: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      009687 7B 06            [ 1] 2784 	ld	a, (0x06, sp)
      009689 4E               [ 1] 2785 	swap	a
      00968A A4 F0            [ 1] 2786 	and	a, #0xf0
      00968C 1A 05            [ 1] 2787 	or	a, (0x05, sp)
      00968E 1A 01            [ 1] 2788 	or	a, (0x01, sp)
      009690 C7 52 5A         [ 1] 2789 	ld	0x525a, a
                           0008C8  2790 	C$stm8s_tim1.c$2266$1_0$605 ==.
                                   2791 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2266: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      009693 0D 04            [ 1] 2792 	tnz	(0x04, sp)
      009695 27 06            [ 1] 2793 	jreq	00102$
                           0008CC  2794 	C$stm8s_tim1.c$2268$2_0$606 ==.
                                   2795 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2268: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      009697 72 12 52 5D      [ 1] 2796 	bset	21085, #1
      00969B 20 04            [ 2] 2797 	jra	00103$
      00969D                       2798 00102$:
                           0008D2  2799 	C$stm8s_tim1.c$2272$2_0$607 ==.
                                   2800 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2272: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      00969D 72 13 52 5D      [ 1] 2801 	bres	21085, #1
      0096A1                       2802 00103$:
                           0008D6  2803 	C$stm8s_tim1.c$2275$1_0$605 ==.
                                   2804 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2275: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
      0096A1 72 10 52 5D      [ 1] 2805 	bset	21085, #0
                           0008DA  2806 	C$stm8s_tim1.c$2276$1_0$605 ==.
                                   2807 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2276: }
      0096A5 84               [ 1] 2808 	pop	a
                           0008DB  2809 	C$stm8s_tim1.c$2276$1_0$605 ==.
                           0008DB  2810 	XFstm8s_tim1$TI3_Config$0$0 ==.
      0096A6 81               [ 4] 2811 	ret
                           0008DC  2812 	Fstm8s_tim1$TI4_Config$0$0 ==.
                           0008DC  2813 	C$stm8s_tim1.c$2294$1_0$609 ==.
                                   2814 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2294: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                   2815 ;	-----------------------------------------
                                   2816 ;	 function TI4_Config
                                   2817 ;	-----------------------------------------
      0096A7                       2818 _TI4_Config:
      0096A7 88               [ 1] 2819 	push	a
                           0008DD  2820 	C$stm8s_tim1.c$2299$1_0$609 ==.
                                   2821 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      0096A8 72 19 52 5D      [ 1] 2822 	bres	21085, #4
                           0008E1  2823 	C$stm8s_tim1.c$2302$1_0$609 ==.
                                   2824 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2302: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
      0096AC C6 52 5B         [ 1] 2825 	ld	a, 0x525b
      0096AF A4 0C            [ 1] 2826 	and	a, #0x0c
      0096B1 6B 01            [ 1] 2827 	ld	(0x01, sp), a
                           0008E8  2828 	C$stm8s_tim1.c$2303$1_0$609 ==.
                                   2829 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2303: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      0096B3 7B 06            [ 1] 2830 	ld	a, (0x06, sp)
      0096B5 4E               [ 1] 2831 	swap	a
      0096B6 A4 F0            [ 1] 2832 	and	a, #0xf0
      0096B8 1A 05            [ 1] 2833 	or	a, (0x05, sp)
      0096BA 1A 01            [ 1] 2834 	or	a, (0x01, sp)
      0096BC C7 52 5B         [ 1] 2835 	ld	0x525b, a
                           0008F4  2836 	C$stm8s_tim1.c$2306$1_0$609 ==.
                                   2837 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2306: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      0096BF 0D 04            [ 1] 2838 	tnz	(0x04, sp)
      0096C1 27 06            [ 1] 2839 	jreq	00102$
                           0008F8  2840 	C$stm8s_tim1.c$2308$2_0$610 ==.
                                   2841 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2308: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      0096C3 72 1A 52 5D      [ 1] 2842 	bset	21085, #5
      0096C7 20 04            [ 2] 2843 	jra	00103$
      0096C9                       2844 00102$:
                           0008FE  2845 	C$stm8s_tim1.c$2312$2_0$611 ==.
                                   2846 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2312: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      0096C9 72 1B 52 5D      [ 1] 2847 	bres	21085, #5
      0096CD                       2848 00103$:
                           000902  2849 	C$stm8s_tim1.c$2316$1_0$609 ==.
                                   2850 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2316: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
      0096CD 72 18 52 5D      [ 1] 2851 	bset	21085, #4
                           000906  2852 	C$stm8s_tim1.c$2317$1_0$609 ==.
                                   2853 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2317: }
      0096D1 84               [ 1] 2854 	pop	a
                           000907  2855 	C$stm8s_tim1.c$2317$1_0$609 ==.
                           000907  2856 	XFstm8s_tim1$TI4_Config$0$0 ==.
      0096D2 81               [ 4] 2857 	ret
                                   2858 	.area CODE
                                   2859 	.area CONST
                                   2860 	.area INITIALIZER
                                   2861 	.area CABS (ABS)
