                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module pwm
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM1_ITConfig
                                     12 	.globl _TIM1_CtrlPWMOutputs
                                     13 	.globl _TIM1_Cmd
                                     14 	.globl _TIM1_BDTRConfig
                                     15 	.globl _TIM1_OC4Init
                                     16 	.globl _TIM1_OC3Init
                                     17 	.globl _TIM1_OC2Init
                                     18 	.globl _TIM1_OC1Init
                                     19 	.globl _TIM1_TimeBaseInit
                                     20 	.globl _FLASH_SetProgrammingTime
                                     21 	.globl _FLASH_EraseOptionByte
                                     22 	.globl _FLASH_ProgramOptionByte
                                     23 	.globl _FLASH_ReadOptionByte
                                     24 	.globl _FLASH_Lock
                                     25 	.globl _FLASH_Unlock
                                     26 	.globl _pwm_init_bipolar_4q
                                     27 	.globl _disable_pwm
                                     28 	.globl _enable_pwm
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DATA
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area INITIALIZED
                                     37 ;--------------------------------------------------------
                                     38 ; absolute external ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DABS (ABS)
                                     41 
                                     42 ; default segment ordering for linker
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area CONST
                                     47 	.area INITIALIZER
                                     48 	.area CODE
                                     49 
                                     50 ;--------------------------------------------------------
                                     51 ; global & static initialisations
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area GSINIT
                                     55 	.area GSFINAL
                                     56 	.area GSINIT
                                     57 ;--------------------------------------------------------
                                     58 ; Home
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area HOME
                                     62 ;--------------------------------------------------------
                                     63 ; code
                                     64 ;--------------------------------------------------------
                                     65 	.area CODE
                           000000    66 	G$pwm_init_bipolar_4q$0$0 ==.
                           000000    67 	C$pwm.c$21$0_0$360 ==.
                                     68 ;	pwm.c: 21: void pwm_init_bipolar_4q(void)
                                     69 ;	-----------------------------------------
                                     70 ;	 function pwm_init_bipolar_4q
                                     71 ;	-----------------------------------------
      00A8AB                         72 _pwm_init_bipolar_4q:
                           000000    73 	C$pwm.c$24$1_0$360 ==.
                                     74 ;	pwm.c: 24: FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
      00A8AB 4B 00            [ 1]   75 	push	#0x00
      00A8AD CD A7 07         [ 4]   76 	call	_FLASH_SetProgrammingTime
      00A8B0 84               [ 1]   77 	pop	a
                           000006    78 	C$pwm.c$25$1_0$360 ==.
                                     79 ;	pwm.c: 25: if(FLASH_ReadOptionByte(0x4803) != 0x20)
      00A8B1 4B 03            [ 1]   80 	push	#0x03
      00A8B3 4B 48            [ 1]   81 	push	#0x48
      00A8B5 CD A6 B4         [ 4]   82 	call	_FLASH_ReadOptionByte
      00A8B8 5B 02            [ 2]   83 	addw	sp, #2
      00A8BA A3 00 20         [ 2]   84 	cpw	x, #0x0020
      00A8BD 27 20            [ 1]   85 	jreq	00102$
                           000014    86 	C$pwm.c$27$2_0$361 ==.
                                     87 ;	pwm.c: 27: FLASH_Unlock(FLASH_MEMTYPE_DATA);
      00A8BF 4B F7            [ 1]   88 	push	#0xf7
      00A8C1 CD A5 C7         [ 4]   89 	call	_FLASH_Unlock
      00A8C4 84               [ 1]   90 	pop	a
                           00001A    91 	C$pwm.c$28$2_0$361 ==.
                                     92 ;	pwm.c: 28: FLASH_EraseOptionByte(0x4803);
      00A8C5 4B 03            [ 1]   93 	push	#0x03
      00A8C7 4B 48            [ 1]   94 	push	#0x48
      00A8C9 CD A6 88         [ 4]   95 	call	_FLASH_EraseOptionByte
      00A8CC 5B 02            [ 2]   96 	addw	sp, #2
                           000023    97 	C$pwm.c$29$2_0$361 ==.
                                     98 ;	pwm.c: 29: FLASH_ProgramOptionByte(0x4803, 0x20);
      00A8CE 4B 20            [ 1]   99 	push	#0x20
      00A8D0 4B 03            [ 1]  100 	push	#0x03
      00A8D2 4B 48            [ 1]  101 	push	#0x48
      00A8D4 CD A6 57         [ 4]  102 	call	_FLASH_ProgramOptionByte
      00A8D7 5B 03            [ 2]  103 	addw	sp, #3
                           00002E   104 	C$pwm.c$30$2_0$361 ==.
                                    105 ;	pwm.c: 30: FLASH_Lock(FLASH_MEMTYPE_DATA);
      00A8D9 4B F7            [ 1]  106 	push	#0xf7
      00A8DB CD A5 E0         [ 4]  107 	call	_FLASH_Lock
      00A8DE 84               [ 1]  108 	pop	a
      00A8DF                        109 00102$:
                           000034   110 	C$pwm.c$34$1_0$360 ==.
                                    111 ;	pwm.c: 34: TIM1_TimeBaseInit(0, // TIM1_Prescaler = 0
      00A8DF 4B 01            [ 1]  112 	push	#0x01
      00A8E1 4B FF            [ 1]  113 	push	#0xff
      00A8E3 4B 01            [ 1]  114 	push	#0x01
      00A8E5 4B 20            [ 1]  115 	push	#0x20
      00A8E7 5F               [ 1]  116 	clrw	x
      00A8E8 89               [ 2]  117 	pushw	x
      00A8E9 CD 8E 73         [ 4]  118 	call	_TIM1_TimeBaseInit
      00A8EC 5B 06            [ 2]  119 	addw	sp, #6
                           000043   120 	C$pwm.c$40$1_0$360 ==.
                                    121 ;	pwm.c: 40: TIM1_OC1Init(TIM1_OCMODE_PWM1,
      00A8EE 4B 2A            [ 1]  122 	push	#0x2a
      00A8F0 4B 00            [ 1]  123 	push	#0x00
      00A8F2 4B 00            [ 1]  124 	push	#0x00
      00A8F4 4B 00            [ 1]  125 	push	#0x00
      00A8F6 4B FF            [ 1]  126 	push	#0xff
      00A8F8 4B 00            [ 1]  127 	push	#0x00
      00A8FA 4B 00            [ 1]  128 	push	#0x00
      00A8FC 4B 00            [ 1]  129 	push	#0x00
      00A8FE 4B 60            [ 1]  130 	push	#0x60
      00A900 CD 8E A8         [ 4]  131 	call	_TIM1_OC1Init
      00A903 5B 09            [ 2]  132 	addw	sp, #9
                           00005A   133 	C$pwm.c$49$1_0$360 ==.
                                    134 ;	pwm.c: 49: TIM1_OC2Init(TIM1_OCMODE_PWM1,
      00A905 4B 55            [ 1]  135 	push	#0x55
      00A907 4B 00            [ 1]  136 	push	#0x00
      00A909 4B 00            [ 1]  137 	push	#0x00
      00A90B 4B 00            [ 1]  138 	push	#0x00
      00A90D 4B FF            [ 1]  139 	push	#0xff
      00A90F 4B 00            [ 1]  140 	push	#0x00
      00A911 4B 00            [ 1]  141 	push	#0x00
      00A913 4B 00            [ 1]  142 	push	#0x00
      00A915 4B 60            [ 1]  143 	push	#0x60
      00A917 CD 8F 0D         [ 4]  144 	call	_TIM1_OC2Init
      00A91A 5B 09            [ 2]  145 	addw	sp, #9
                           000071   146 	C$pwm.c$58$1_0$360 ==.
                                    147 ;	pwm.c: 58: TIM1_OC3Init(TIM1_OCMODE_PWM1,
      00A91C 4B 2A            [ 1]  148 	push	#0x2a
      00A91E 4B 00            [ 1]  149 	push	#0x00
      00A920 4B 00            [ 1]  150 	push	#0x00
      00A922 4B 00            [ 1]  151 	push	#0x00
      00A924 4B FF            [ 1]  152 	push	#0xff
      00A926 4B 00            [ 1]  153 	push	#0x00
      00A928 4B 00            [ 1]  154 	push	#0x00
      00A92A 4B 00            [ 1]  155 	push	#0x00
      00A92C 4B 60            [ 1]  156 	push	#0x60
      00A92E CD 8F 72         [ 4]  157 	call	_TIM1_OC3Init
      00A931 5B 09            [ 2]  158 	addw	sp, #9
                           000088   159 	C$pwm.c$69$1_0$360 ==.
                                    160 ;	pwm.c: 69: TIM1_OC4Init(TIM1_OCMODE_PWM1,
      00A933 4B 00            [ 1]  161 	push	#0x00
      00A935 4B 00            [ 1]  162 	push	#0x00
      00A937 4B 1D            [ 1]  163 	push	#0x1d
      00A939 4B 01            [ 1]  164 	push	#0x01
      00A93B 4B 00            [ 1]  165 	push	#0x00
      00A93D 4B 60            [ 1]  166 	push	#0x60
      00A93F CD 8F D7         [ 4]  167 	call	_TIM1_OC4Init
      00A942 5B 06            [ 2]  168 	addw	sp, #6
                           000099   169 	C$pwm.c$76$1_0$360 ==.
                                    170 ;	pwm.c: 76: TIM1_BDTRConfig(TIM1_OSSISTATE_ENABLE,
      00A944 4B 00            [ 1]  171 	push	#0x00
      00A946 4B 00            [ 1]  172 	push	#0x00
      00A948 4B 00            [ 1]  173 	push	#0x00
      00A94A 4B 10            [ 1]  174 	push	#0x10
      00A94C 4B 00            [ 1]  175 	push	#0x00
      00A94E 4B 04            [ 1]  176 	push	#0x04
      00A950 CD 90 20         [ 4]  177 	call	_TIM1_BDTRConfig
      00A953 5B 06            [ 2]  178 	addw	sp, #6
                           0000AA   179 	C$pwm.c$84$1_0$360 ==.
                                    180 ;	pwm.c: 84: TIM1_ITConfig(TIM1_IT_CC4, ENABLE);
      00A955 4B 01            [ 1]  181 	push	#0x01
      00A957 4B 10            [ 1]  182 	push	#0x10
      00A959 CD 91 3D         [ 4]  183 	call	_TIM1_ITConfig
      00A95C 5B 02            [ 2]  184 	addw	sp, #2
                           0000B3   185 	C$pwm.c$85$1_0$360 ==.
                                    186 ;	pwm.c: 85: TIM1_Cmd(ENABLE); // TIM1 counter enable
      00A95E 4B 01            [ 1]  187 	push	#0x01
      00A960 CD 91 1F         [ 4]  188 	call	_TIM1_Cmd
      00A963 84               [ 1]  189 	pop	a
                           0000B9   190 	C$pwm.c$86$1_0$360 ==.
                                    191 ;	pwm.c: 86: TIM1_CtrlPWMOutputs(ENABLE);
      00A964 4B 01            [ 1]  192 	push	#0x01
      00A966 CD 91 2E         [ 4]  193 	call	_TIM1_CtrlPWMOutputs
      00A969 84               [ 1]  194 	pop	a
                           0000BF   195 	C$pwm.c$154$1_0$360 ==.
                                    196 ;	pwm.c: 154: }
                           0000BF   197 	C$pwm.c$154$1_0$360 ==.
                           0000BF   198 	XG$pwm_init_bipolar_4q$0$0 ==.
      00A96A 81               [ 4]  199 	ret
                           0000C0   200 	G$disable_pwm$0$0 ==.
                           0000C0   201 	C$pwm.c$160$1_0$363 ==.
                                    202 ;	pwm.c: 160: void disable_pwm(void)
                                    203 ;	-----------------------------------------
                                    204 ;	 function disable_pwm
                                    205 ;	-----------------------------------------
      00A96B                        206 _disable_pwm:
                           0000C0   207 	C$pwm.c$162$1_0$363 ==.
                                    208 ;	pwm.c: 162: TIM1_CtrlPWMOutputs(DISABLE);
      00A96B 4B 00            [ 1]  209 	push	#0x00
      00A96D CD 91 2E         [ 4]  210 	call	_TIM1_CtrlPWMOutputs
      00A970 84               [ 1]  211 	pop	a
                           0000C6   212 	C$pwm.c$164$1_0$363 ==.
                                    213 ;	pwm.c: 164: TIM1_OC1Init(TIM1_OCMODE_PWM1,
      00A971 4B 2A            [ 1]  214 	push	#0x2a
      00A973 4B 00            [ 1]  215 	push	#0x00
      00A975 4B 00            [ 1]  216 	push	#0x00
      00A977 4B 00            [ 1]  217 	push	#0x00
      00A979 4B FF            [ 1]  218 	push	#0xff
      00A97B 4B 00            [ 1]  219 	push	#0x00
      00A97D 4B 00            [ 1]  220 	push	#0x00
      00A97F 4B 00            [ 1]  221 	push	#0x00
      00A981 4B 60            [ 1]  222 	push	#0x60
      00A983 CD 8E A8         [ 4]  223 	call	_TIM1_OC1Init
      00A986 5B 09            [ 2]  224 	addw	sp, #9
                           0000DD   225 	C$pwm.c$173$1_0$363 ==.
                                    226 ;	pwm.c: 173: TIM1_OC2Init(TIM1_OCMODE_PWM1,
      00A988 4B 55            [ 1]  227 	push	#0x55
      00A98A 4B 00            [ 1]  228 	push	#0x00
      00A98C 4B 00            [ 1]  229 	push	#0x00
      00A98E 4B 00            [ 1]  230 	push	#0x00
      00A990 4B FF            [ 1]  231 	push	#0xff
      00A992 4B 00            [ 1]  232 	push	#0x00
      00A994 4B 00            [ 1]  233 	push	#0x00
      00A996 4B 00            [ 1]  234 	push	#0x00
      00A998 4B 60            [ 1]  235 	push	#0x60
      00A99A CD 8F 0D         [ 4]  236 	call	_TIM1_OC2Init
      00A99D 5B 09            [ 2]  237 	addw	sp, #9
                           0000F4   238 	C$pwm.c$182$1_0$363 ==.
                                    239 ;	pwm.c: 182: TIM1_OC3Init(TIM1_OCMODE_PWM1,
      00A99F 4B 2A            [ 1]  240 	push	#0x2a
      00A9A1 4B 00            [ 1]  241 	push	#0x00
      00A9A3 4B 00            [ 1]  242 	push	#0x00
      00A9A5 4B 00            [ 1]  243 	push	#0x00
      00A9A7 4B FF            [ 1]  244 	push	#0xff
      00A9A9 4B 00            [ 1]  245 	push	#0x00
      00A9AB 4B 00            [ 1]  246 	push	#0x00
      00A9AD 4B 00            [ 1]  247 	push	#0x00
      00A9AF 4B 60            [ 1]  248 	push	#0x60
      00A9B1 CD 8F 72         [ 4]  249 	call	_TIM1_OC3Init
      00A9B4 5B 09            [ 2]  250 	addw	sp, #9
                           00010B   251 	C$pwm.c$200$1_0$363 ==.
                                    252 ;	pwm.c: 200: }
                           00010B   253 	C$pwm.c$200$1_0$363 ==.
                           00010B   254 	XG$disable_pwm$0$0 ==.
      00A9B6 81               [ 4]  255 	ret
                           00010C   256 	G$enable_pwm$0$0 ==.
                           00010C   257 	C$pwm.c$207$1_0$365 ==.
                                    258 ;	pwm.c: 207: void enable_pwm(void)
                                    259 ;	-----------------------------------------
                                    260 ;	 function enable_pwm
                                    261 ;	-----------------------------------------
      00A9B7                        262 _enable_pwm:
                           00010C   263 	C$pwm.c$209$1_0$365 ==.
                                    264 ;	pwm.c: 209: TIM1_OC1Init(TIM1_OCMODE_PWM1,
      00A9B7 4B 2A            [ 1]  265 	push	#0x2a
      00A9B9 4B 00            [ 1]  266 	push	#0x00
      00A9BB 4B 00            [ 1]  267 	push	#0x00
      00A9BD 4B 00            [ 1]  268 	push	#0x00
      00A9BF 4B FF            [ 1]  269 	push	#0xff
      00A9C1 4B 00            [ 1]  270 	push	#0x00
      00A9C3 4B 44            [ 1]  271 	push	#0x44
      00A9C5 4B 11            [ 1]  272 	push	#0x11
      00A9C7 4B 60            [ 1]  273 	push	#0x60
      00A9C9 CD 8E A8         [ 4]  274 	call	_TIM1_OC1Init
      00A9CC 5B 09            [ 2]  275 	addw	sp, #9
                           000123   276 	C$pwm.c$218$1_0$365 ==.
                                    277 ;	pwm.c: 218: TIM1_OC2Init(TIM1_OCMODE_PWM1,
      00A9CE 4B 55            [ 1]  278 	push	#0x55
      00A9D0 4B 00            [ 1]  279 	push	#0x00
      00A9D2 4B 00            [ 1]  280 	push	#0x00
      00A9D4 4B 00            [ 1]  281 	push	#0x00
      00A9D6 4B FF            [ 1]  282 	push	#0xff
      00A9D8 4B 00            [ 1]  283 	push	#0x00
      00A9DA 4B 44            [ 1]  284 	push	#0x44
      00A9DC 4B 11            [ 1]  285 	push	#0x11
      00A9DE 4B 60            [ 1]  286 	push	#0x60
      00A9E0 CD 8F 0D         [ 4]  287 	call	_TIM1_OC2Init
      00A9E3 5B 09            [ 2]  288 	addw	sp, #9
                           00013A   289 	C$pwm.c$227$1_0$365 ==.
                                    290 ;	pwm.c: 227: TIM1_OC3Init(TIM1_OCMODE_PWM1,
      00A9E5 4B 2A            [ 1]  291 	push	#0x2a
      00A9E7 4B 00            [ 1]  292 	push	#0x00
      00A9E9 4B 00            [ 1]  293 	push	#0x00
      00A9EB 4B 00            [ 1]  294 	push	#0x00
      00A9ED 4B FF            [ 1]  295 	push	#0xff
      00A9EF 4B 00            [ 1]  296 	push	#0x00
      00A9F1 4B 44            [ 1]  297 	push	#0x44
      00A9F3 4B 11            [ 1]  298 	push	#0x11
      00A9F5 4B 60            [ 1]  299 	push	#0x60
      00A9F7 CD 8F 72         [ 4]  300 	call	_TIM1_OC3Init
      00A9FA 5B 09            [ 2]  301 	addw	sp, #9
                           000151   302 	C$pwm.c$239$1_0$365 ==.
                                    303 ;	pwm.c: 239: TIM1_OC4Init(TIM1_OCMODE_PWM1,
      00A9FC 4B 00            [ 1]  304 	push	#0x00
      00A9FE 4B 00            [ 1]  305 	push	#0x00
      00AA00 4B 1D            [ 1]  306 	push	#0x1d
      00AA02 4B 01            [ 1]  307 	push	#0x01
      00AA04 4B 00            [ 1]  308 	push	#0x00
      00AA06 4B 60            [ 1]  309 	push	#0x60
      00AA08 CD 8F D7         [ 4]  310 	call	_TIM1_OC4Init
      00AA0B 5B 06            [ 2]  311 	addw	sp, #6
                           000162   312 	C$pwm.c$246$1_0$365 ==.
                                    313 ;	pwm.c: 246: TIM1_BDTRConfig(TIM1_OSSISTATE_ENABLE,
      00AA0D 4B 00            [ 1]  314 	push	#0x00
      00AA0F 4B 00            [ 1]  315 	push	#0x00
      00AA11 4B 00            [ 1]  316 	push	#0x00
      00AA13 4B 10            [ 1]  317 	push	#0x10
      00AA15 4B 00            [ 1]  318 	push	#0x00
      00AA17 4B 04            [ 1]  319 	push	#0x04
      00AA19 CD 90 20         [ 4]  320 	call	_TIM1_BDTRConfig
      00AA1C 5B 06            [ 2]  321 	addw	sp, #6
                           000173   322 	C$pwm.c$254$1_0$365 ==.
                                    323 ;	pwm.c: 254: TIM1_ITConfig(TIM1_IT_CC4, ENABLE);
      00AA1E 4B 01            [ 1]  324 	push	#0x01
      00AA20 4B 10            [ 1]  325 	push	#0x10
      00AA22 CD 91 3D         [ 4]  326 	call	_TIM1_ITConfig
      00AA25 5B 02            [ 2]  327 	addw	sp, #2
                           00017C   328 	C$pwm.c$255$1_0$365 ==.
                                    329 ;	pwm.c: 255: TIM1_Cmd(ENABLE); // TIM1 counter enable
      00AA27 4B 01            [ 1]  330 	push	#0x01
      00AA29 CD 91 1F         [ 4]  331 	call	_TIM1_Cmd
      00AA2C 84               [ 1]  332 	pop	a
                           000182   333 	C$pwm.c$256$1_0$365 ==.
                                    334 ;	pwm.c: 256: TIM1_CtrlPWMOutputs(ENABLE);
      00AA2D 4B 01            [ 1]  335 	push	#0x01
      00AA2F CD 91 2E         [ 4]  336 	call	_TIM1_CtrlPWMOutputs
      00AA32 84               [ 1]  337 	pop	a
                           000188   338 	C$pwm.c$258$1_0$365 ==.
                                    339 ;	pwm.c: 258: }
                           000188   340 	C$pwm.c$258$1_0$365 ==.
                           000188   341 	XG$enable_pwm$0$0 ==.
      00AA33 81               [ 4]  342 	ret
                                    343 	.area CODE
                                    344 	.area CONST
                                    345 	.area INITIALIZER
                                    346 	.area CABS (ABS)
