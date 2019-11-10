                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_flash
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _FLASH_Unlock
                                     12 	.globl _FLASH_Lock
                                     13 	.globl _FLASH_DeInit
                                     14 	.globl _FLASH_ITConfig
                                     15 	.globl _FLASH_EraseByte
                                     16 	.globl _FLASH_ProgramByte
                                     17 	.globl _FLASH_ReadByte
                                     18 	.globl _FLASH_ProgramWord
                                     19 	.globl _FLASH_ProgramOptionByte
                                     20 	.globl _FLASH_EraseOptionByte
                                     21 	.globl _FLASH_ReadOptionByte
                                     22 	.globl _FLASH_SetLowPowerMode
                                     23 	.globl _FLASH_SetProgrammingTime
                                     24 	.globl _FLASH_GetLowPowerMode
                                     25 	.globl _FLASH_GetProgrammingTime
                                     26 	.globl _FLASH_GetBootSize
                                     27 	.globl _FLASH_GetFlagStatus
                                     28 	.globl _FLASH_WaitForLastOperation
                                     29 	.globl _FLASH_EraseBlock
                                     30 	.globl _FLASH_ProgramBlock
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DATA
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area INITIALIZED
                                     39 ;--------------------------------------------------------
                                     40 ; absolute external ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DABS (ABS)
                                     43 
                                     44 ; default segment ordering for linker
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area CONST
                                     49 	.area INITIALIZER
                                     50 	.area CODE
                                     51 
                                     52 ;--------------------------------------------------------
                                     53 ; global & static initialisations
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
                                     56 	.area GSINIT
                                     57 	.area GSFINAL
                                     58 	.area GSINIT
                                     59 ;--------------------------------------------------------
                                     60 ; Home
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area HOME
                                     64 ;--------------------------------------------------------
                                     65 ; code
                                     66 ;--------------------------------------------------------
                                     67 	.area CODE
                           000000    68 	G$FLASH_Unlock$0$0 ==.
                           000000    69 	C$stm8s_flash.c$87$0_0$346 ==.
                                     70 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 87: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
                                     71 ;	-----------------------------------------
                                     72 ;	 function FLASH_Unlock
                                     73 ;	-----------------------------------------
      00A563                         74 _FLASH_Unlock:
                           000000    75 	C$stm8s_flash.c$93$1_0$346 ==.
                                     76 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 93: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A563 7B 03            [ 1]   77 	ld	a, (0x03, sp)
      00A565 A1 FD            [ 1]   78 	cp	a, #0xfd
      00A567 26 0A            [ 1]   79 	jrne	00102$
                           000006    80 	C$stm8s_flash.c$95$2_0$347 ==.
                                     81 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 95: FLASH->PUKR = FLASH_RASS_KEY1;
      00A569 35 56 50 62      [ 1]   82 	mov	0x5062+0, #0x56
                           00000A    83 	C$stm8s_flash.c$96$2_0$347 ==.
                                     84 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 96: FLASH->PUKR = FLASH_RASS_KEY2;
      00A56D 35 AE 50 62      [ 1]   85 	mov	0x5062+0, #0xae
      00A571 20 08            [ 2]   86 	jra	00104$
      00A573                         87 00102$:
                           000010    88 	C$stm8s_flash.c$101$2_0$348 ==.
                                     89 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 101: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
      00A573 35 AE 50 64      [ 1]   90 	mov	0x5064+0, #0xae
                           000014    91 	C$stm8s_flash.c$102$2_0$348 ==.
                                     92 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 102: FLASH->DUKR = FLASH_RASS_KEY1;
      00A577 35 56 50 64      [ 1]   93 	mov	0x5064+0, #0x56
      00A57B                         94 00104$:
                           000018    95 	C$stm8s_flash.c$104$1_0$346 ==.
                                     96 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 104: }
                           000018    97 	C$stm8s_flash.c$104$1_0$346 ==.
                           000018    98 	XG$FLASH_Unlock$0$0 ==.
      00A57B 81               [ 4]   99 	ret
                           000019   100 	G$FLASH_Lock$0$0 ==.
                           000019   101 	C$stm8s_flash.c$112$1_0$350 ==.
                                    102 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 112: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
                                    103 ;	-----------------------------------------
                                    104 ;	 function FLASH_Lock
                                    105 ;	-----------------------------------------
      00A57C                        106 _FLASH_Lock:
                           000019   107 	C$stm8s_flash.c$118$1_0$350 ==.
                                    108 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 118: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
      00A57C C6 50 5F         [ 1]  109 	ld	a, 0x505f
      00A57F 14 03            [ 1]  110 	and	a, (0x03, sp)
      00A581 C7 50 5F         [ 1]  111 	ld	0x505f, a
                           000021   112 	C$stm8s_flash.c$119$1_0$350 ==.
                                    113 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 119: }
                           000021   114 	C$stm8s_flash.c$119$1_0$350 ==.
                           000021   115 	XG$FLASH_Lock$0$0 ==.
      00A584 81               [ 4]  116 	ret
                           000022   117 	G$FLASH_DeInit$0$0 ==.
                           000022   118 	C$stm8s_flash.c$126$1_0$352 ==.
                                    119 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 126: void FLASH_DeInit(void)
                                    120 ;	-----------------------------------------
                                    121 ;	 function FLASH_DeInit
                                    122 ;	-----------------------------------------
      00A585                        123 _FLASH_DeInit:
                           000022   124 	C$stm8s_flash.c$128$1_0$352 ==.
                                    125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 128: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
      00A585 35 00 50 5A      [ 1]  126 	mov	0x505a+0, #0x00
                           000026   127 	C$stm8s_flash.c$129$1_0$352 ==.
                                    128 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 129: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
      00A589 35 00 50 5B      [ 1]  129 	mov	0x505b+0, #0x00
                           00002A   130 	C$stm8s_flash.c$130$1_0$352 ==.
                                    131 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 130: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
      00A58D 35 FF 50 5C      [ 1]  132 	mov	0x505c+0, #0xff
                           00002E   133 	C$stm8s_flash.c$131$1_0$352 ==.
                                    134 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 131: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
      00A591 72 17 50 5F      [ 1]  135 	bres	20575, #3
                           000032   136 	C$stm8s_flash.c$132$1_0$352 ==.
                                    137 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 132: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
      00A595 72 13 50 5F      [ 1]  138 	bres	20575, #1
                           000036   139 	C$stm8s_flash.c$133$1_0$352 ==.
                                    140 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 133: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
      00A599 C6 50 5F         [ 1]  141 	ld	a, 0x505f
                           000039   142 	C$stm8s_flash.c$134$1_0$352 ==.
                                    143 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 134: }
                           000039   144 	C$stm8s_flash.c$134$1_0$352 ==.
                           000039   145 	XG$FLASH_DeInit$0$0 ==.
      00A59C 81               [ 4]  146 	ret
                           00003A   147 	G$FLASH_ITConfig$0$0 ==.
                           00003A   148 	C$stm8s_flash.c$142$1_0$354 ==.
                                    149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 142: void FLASH_ITConfig(FunctionalState NewState)
                                    150 ;	-----------------------------------------
                                    151 ;	 function FLASH_ITConfig
                                    152 ;	-----------------------------------------
      00A59D                        153 _FLASH_ITConfig:
                           00003A   154 	C$stm8s_flash.c$147$1_0$354 ==.
                                    155 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 147: if(NewState != DISABLE)
      00A59D 0D 03            [ 1]  156 	tnz	(0x03, sp)
      00A59F 27 06            [ 1]  157 	jreq	00102$
                           00003E   158 	C$stm8s_flash.c$149$2_0$355 ==.
                                    159 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 149: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
      00A5A1 72 12 50 5A      [ 1]  160 	bset	20570, #1
      00A5A5 20 04            [ 2]  161 	jra	00104$
      00A5A7                        162 00102$:
                           000044   163 	C$stm8s_flash.c$153$2_0$356 ==.
                                    164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 153: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
      00A5A7 72 13 50 5A      [ 1]  165 	bres	20570, #1
      00A5AB                        166 00104$:
                           000048   167 	C$stm8s_flash.c$155$1_0$354 ==.
                                    168 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 155: }
                           000048   169 	C$stm8s_flash.c$155$1_0$354 ==.
                           000048   170 	XG$FLASH_ITConfig$0$0 ==.
      00A5AB 81               [ 4]  171 	ret
                           000049   172 	G$FLASH_EraseByte$0$0 ==.
                           000049   173 	C$stm8s_flash.c$164$1_0$358 ==.
                                    174 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 164: void FLASH_EraseByte(uint32_t Address)
                                    175 ;	-----------------------------------------
                                    176 ;	 function FLASH_EraseByte
                                    177 ;	-----------------------------------------
      00A5AC                        178 _FLASH_EraseByte:
                           000049   179 	C$stm8s_flash.c$170$1_0$358 ==.
                                    180 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 170: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE;
      00A5AC 1E 05            [ 2]  181 	ldw	x, (0x05, sp)
      00A5AE 7F               [ 1]  182 	clr	(x)
                           00004C   183 	C$stm8s_flash.c$171$1_0$358 ==.
                                    184 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 171: }
                           00004C   185 	C$stm8s_flash.c$171$1_0$358 ==.
                           00004C   186 	XG$FLASH_EraseByte$0$0 ==.
      00A5AF 81               [ 4]  187 	ret
                           00004D   188 	G$FLASH_ProgramByte$0$0 ==.
                           00004D   189 	C$stm8s_flash.c$181$1_0$360 ==.
                                    190 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 181: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
                                    191 ;	-----------------------------------------
                                    192 ;	 function FLASH_ProgramByte
                                    193 ;	-----------------------------------------
      00A5B0                        194 _FLASH_ProgramByte:
                           00004D   195 	C$stm8s_flash.c$185$1_0$360 ==.
                                    196 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 185: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
      00A5B0 1E 05            [ 2]  197 	ldw	x, (0x05, sp)
      00A5B2 7B 07            [ 1]  198 	ld	a, (0x07, sp)
      00A5B4 F7               [ 1]  199 	ld	(x), a
                           000052   200 	C$stm8s_flash.c$186$1_0$360 ==.
                                    201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 186: }
                           000052   202 	C$stm8s_flash.c$186$1_0$360 ==.
                           000052   203 	XG$FLASH_ProgramByte$0$0 ==.
      00A5B5 81               [ 4]  204 	ret
                           000053   205 	G$FLASH_ReadByte$0$0 ==.
                           000053   206 	C$stm8s_flash.c$195$1_0$362 ==.
                                    207 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 195: uint8_t FLASH_ReadByte(uint32_t Address)
                                    208 ;	-----------------------------------------
                                    209 ;	 function FLASH_ReadByte
                                    210 ;	-----------------------------------------
      00A5B6                        211 _FLASH_ReadByte:
                           000053   212 	C$stm8s_flash.c$201$1_0$362 ==.
                                    213 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 201: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address);
      00A5B6 1E 05            [ 2]  214 	ldw	x, (0x05, sp)
      00A5B8 F6               [ 1]  215 	ld	a, (x)
                           000056   216 	C$stm8s_flash.c$202$1_0$362 ==.
                                    217 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 202: }
                           000056   218 	C$stm8s_flash.c$202$1_0$362 ==.
                           000056   219 	XG$FLASH_ReadByte$0$0 ==.
      00A5B9 81               [ 4]  220 	ret
                           000057   221 	G$FLASH_ProgramWord$0$0 ==.
                           000057   222 	C$stm8s_flash.c$212$1_0$364 ==.
                                    223 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 212: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
                                    224 ;	-----------------------------------------
                                    225 ;	 function FLASH_ProgramWord
                                    226 ;	-----------------------------------------
      00A5BA                        227 _FLASH_ProgramWord:
      00A5BA 52 06            [ 2]  228 	sub	sp, #6
                           000059   229 	C$stm8s_flash.c$218$1_0$364 ==.
                                    230 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 218: FLASH->CR2 |= FLASH_CR2_WPRG;
      00A5BC 72 1C 50 5B      [ 1]  231 	bset	20571, #6
                           00005D   232 	C$stm8s_flash.c$219$1_0$364 ==.
                                    233 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 219: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
      00A5C0 72 1D 50 5C      [ 1]  234 	bres	20572, #6
                           000061   235 	C$stm8s_flash.c$222$1_0$364 ==.
                                    236 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 222: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
      00A5C4 16 0B            [ 2]  237 	ldw	y, (0x0b, sp)
      00A5C6 96               [ 1]  238 	ldw	x, sp
      00A5C7 1C 00 0D         [ 2]  239 	addw	x, #13
      00A5CA 1F 03            [ 2]  240 	ldw	(0x03, sp), x
      00A5CC F6               [ 1]  241 	ld	a, (x)
      00A5CD 90 F7            [ 1]  242 	ld	(y), a
                           00006C   243 	C$stm8s_flash.c$224$1_0$364 ==.
                                    244 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 224: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1);
      00A5CF 93               [ 1]  245 	ldw	x, y
      00A5D0 5C               [ 1]  246 	incw	x
      00A5D1 1F 01            [ 2]  247 	ldw	(0x01, sp), x
      00A5D3 1E 03            [ 2]  248 	ldw	x, (0x03, sp)
      00A5D5 E6 01            [ 1]  249 	ld	a, (0x1, x)
      00A5D7 1E 01            [ 2]  250 	ldw	x, (0x01, sp)
      00A5D9 F7               [ 1]  251 	ld	(x), a
                           000077   252 	C$stm8s_flash.c$226$1_0$364 ==.
                                    253 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 226: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2);
      00A5DA 93               [ 1]  254 	ldw	x, y
      00A5DB 5C               [ 1]  255 	incw	x
      00A5DC 5C               [ 1]  256 	incw	x
      00A5DD 1F 05            [ 2]  257 	ldw	(0x05, sp), x
      00A5DF 1E 03            [ 2]  258 	ldw	x, (0x03, sp)
      00A5E1 E6 02            [ 1]  259 	ld	a, (0x2, x)
      00A5E3 1E 05            [ 2]  260 	ldw	x, (0x05, sp)
      00A5E5 F7               [ 1]  261 	ld	(x), a
                           000083   262 	C$stm8s_flash.c$228$1_0$364 ==.
                                    263 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 228: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3);
      00A5E6 72 A9 00 03      [ 2]  264 	addw	y, #0x0003
      00A5EA 1E 03            [ 2]  265 	ldw	x, (0x03, sp)
      00A5EC E6 03            [ 1]  266 	ld	a, (0x3, x)
      00A5EE 90 F7            [ 1]  267 	ld	(y), a
                           00008D   268 	C$stm8s_flash.c$229$1_0$364 ==.
                                    269 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 229: }
      00A5F0 5B 06            [ 2]  270 	addw	sp, #6
                           00008F   271 	C$stm8s_flash.c$229$1_0$364 ==.
                           00008F   272 	XG$FLASH_ProgramWord$0$0 ==.
      00A5F2 81               [ 4]  273 	ret
                           000090   274 	G$FLASH_ProgramOptionByte$0$0 ==.
                           000090   275 	C$stm8s_flash.c$237$1_0$366 ==.
                                    276 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 237: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
                                    277 ;	-----------------------------------------
                                    278 ;	 function FLASH_ProgramOptionByte
                                    279 ;	-----------------------------------------
      00A5F3                        280 _FLASH_ProgramOptionByte:
                           000090   281 	C$stm8s_flash.c$243$1_0$366 ==.
                                    282 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 243: FLASH->CR2 |= FLASH_CR2_OPT;
      00A5F3 72 1E 50 5B      [ 1]  283 	bset	20571, #7
                           000094   284 	C$stm8s_flash.c$244$1_0$366 ==.
                                    285 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 244: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      00A5F7 C6 50 5C         [ 1]  286 	ld	a, 0x505c
      00A5FA A4 7F            [ 1]  287 	and	a, #0x7f
      00A5FC C7 50 5C         [ 1]  288 	ld	0x505c, a
                           00009C   289 	C$stm8s_flash.c$247$1_0$366 ==.
                                    290 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 247: if(Address == 0x4800)
      00A5FF 1E 03            [ 2]  291 	ldw	x, (0x03, sp)
      00A601 A3 48 00         [ 2]  292 	cpw	x, #0x4800
      00A604 26 07            [ 1]  293 	jrne	00102$
                           0000A3   294 	C$stm8s_flash.c$250$2_0$367 ==.
                                    295 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 250: *((NEAR uint8_t*)Address) = Data;
      00A606 1E 03            [ 2]  296 	ldw	x, (0x03, sp)
      00A608 7B 05            [ 1]  297 	ld	a, (0x05, sp)
      00A60A F7               [ 1]  298 	ld	(x), a
      00A60B 20 0C            [ 2]  299 	jra	00103$
      00A60D                        300 00102$:
                           0000AA   301 	C$stm8s_flash.c$255$2_0$368 ==.
                                    302 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 255: *((NEAR uint8_t*)Address) = Data;
      00A60D 1E 03            [ 2]  303 	ldw	x, (0x03, sp)
      00A60F 7B 05            [ 1]  304 	ld	a, (0x05, sp)
      00A611 F7               [ 1]  305 	ld	(x), a
                           0000AF   306 	C$stm8s_flash.c$256$2_0$368 ==.
                                    307 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 256: *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
      00A612 1E 03            [ 2]  308 	ldw	x, (0x03, sp)
      00A614 5C               [ 1]  309 	incw	x
      00A615 7B 05            [ 1]  310 	ld	a, (0x05, sp)
      00A617 43               [ 1]  311 	cpl	a
      00A618 F7               [ 1]  312 	ld	(x), a
      00A619                        313 00103$:
                           0000B6   314 	C$stm8s_flash.c$258$1_0$366 ==.
                                    315 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 258: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      00A619 4B FD            [ 1]  316 	push	#0xfd
      00A61B CD A6 F3         [ 4]  317 	call	_FLASH_WaitForLastOperation
      00A61E 84               [ 1]  318 	pop	a
                           0000BC   319 	C$stm8s_flash.c$261$1_0$366 ==.
                                    320 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 261: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      00A61F 72 1F 50 5B      [ 1]  321 	bres	20571, #7
                           0000C0   322 	C$stm8s_flash.c$262$1_0$366 ==.
                                    323 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 262: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      00A623 72 1E 50 5C      [ 1]  324 	bset	20572, #7
                           0000C4   325 	C$stm8s_flash.c$263$1_0$366 ==.
                                    326 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 263: }
                           0000C4   327 	C$stm8s_flash.c$263$1_0$366 ==.
                           0000C4   328 	XG$FLASH_ProgramOptionByte$0$0 ==.
      00A627 81               [ 4]  329 	ret
                           0000C5   330 	G$FLASH_EraseOptionByte$0$0 ==.
                           0000C5   331 	C$stm8s_flash.c$270$1_0$370 ==.
                                    332 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 270: void FLASH_EraseOptionByte(uint16_t Address)
                                    333 ;	-----------------------------------------
                                    334 ;	 function FLASH_EraseOptionByte
                                    335 ;	-----------------------------------------
      00A628                        336 _FLASH_EraseOptionByte:
                           0000C5   337 	C$stm8s_flash.c$276$1_0$370 ==.
                                    338 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 276: FLASH->CR2 |= FLASH_CR2_OPT;
      00A628 72 1E 50 5B      [ 1]  339 	bset	20571, #7
                           0000C9   340 	C$stm8s_flash.c$277$1_0$370 ==.
                                    341 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 277: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      00A62C C6 50 5C         [ 1]  342 	ld	a, 0x505c
      00A62F A4 7F            [ 1]  343 	and	a, #0x7f
      00A631 C7 50 5C         [ 1]  344 	ld	0x505c, a
                           0000D1   345 	C$stm8s_flash.c$280$1_0$370 ==.
                                    346 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 280: if(Address == 0x4800)
      00A634 1E 03            [ 2]  347 	ldw	x, (0x03, sp)
      00A636 A3 48 00         [ 2]  348 	cpw	x, #0x4800
      00A639 26 05            [ 1]  349 	jrne	00102$
                           0000D8   350 	C$stm8s_flash.c$283$2_0$371 ==.
                                    351 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 283: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      00A63B 1E 03            [ 2]  352 	ldw	x, (0x03, sp)
      00A63D 7F               [ 1]  353 	clr	(x)
      00A63E 20 09            [ 2]  354 	jra	00103$
      00A640                        355 00102$:
                           0000DD   356 	C$stm8s_flash.c$288$2_0$372 ==.
                                    357 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 288: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      00A640 1E 03            [ 2]  358 	ldw	x, (0x03, sp)
      00A642 7F               [ 1]  359 	clr	(x)
                           0000E0   360 	C$stm8s_flash.c$289$2_0$372 ==.
                                    361 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 289: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
      00A643 1E 03            [ 2]  362 	ldw	x, (0x03, sp)
      00A645 5C               [ 1]  363 	incw	x
      00A646 A6 FF            [ 1]  364 	ld	a, #0xff
      00A648 F7               [ 1]  365 	ld	(x), a
      00A649                        366 00103$:
                           0000E6   367 	C$stm8s_flash.c$291$1_0$370 ==.
                                    368 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 291: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      00A649 4B FD            [ 1]  369 	push	#0xfd
      00A64B CD A6 F3         [ 4]  370 	call	_FLASH_WaitForLastOperation
      00A64E 84               [ 1]  371 	pop	a
                           0000EC   372 	C$stm8s_flash.c$294$1_0$370 ==.
                                    373 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 294: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      00A64F 72 1F 50 5B      [ 1]  374 	bres	20571, #7
                           0000F0   375 	C$stm8s_flash.c$295$1_0$370 ==.
                                    376 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 295: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      00A653 72 1E 50 5C      [ 1]  377 	bset	20572, #7
                           0000F4   378 	C$stm8s_flash.c$296$1_0$370 ==.
                                    379 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 296: }
                           0000F4   380 	C$stm8s_flash.c$296$1_0$370 ==.
                           0000F4   381 	XG$FLASH_EraseOptionByte$0$0 ==.
      00A657 81               [ 4]  382 	ret
                           0000F5   383 	G$FLASH_ReadOptionByte$0$0 ==.
                           0000F5   384 	C$stm8s_flash.c$303$1_0$374 ==.
                                    385 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 303: uint16_t FLASH_ReadOptionByte(uint16_t Address)
                                    386 ;	-----------------------------------------
                                    387 ;	 function FLASH_ReadOptionByte
                                    388 ;	-----------------------------------------
      00A658                        389 _FLASH_ReadOptionByte:
      00A658 52 05            [ 2]  390 	sub	sp, #5
                           0000F7   391 	C$stm8s_flash.c$311$1_0$374 ==.
                                    392 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 311: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
      00A65A 1E 08            [ 2]  393 	ldw	x, (0x08, sp)
      00A65C F6               [ 1]  394 	ld	a, (x)
      00A65D 90 97            [ 1]  395 	ld	yl, a
                           0000FC   396 	C$stm8s_flash.c$312$1_0$374 ==.
                                    397 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 312: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
      00A65F E6 01            [ 1]  398 	ld	a, (0x1, x)
                           0000FE   399 	C$stm8s_flash.c$315$1_0$374 ==.
                                    400 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 315: if(Address == 0x4800)
      00A661 1E 08            [ 2]  401 	ldw	x, (0x08, sp)
      00A663 A3 48 00         [ 2]  402 	cpw	x, #0x4800
      00A666 26 05            [ 1]  403 	jrne	00105$
                           000105   404 	C$stm8s_flash.c$317$2_0$375 ==.
                                    405 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 317: res_value =	 value_optbyte;
      00A668 93               [ 1]  406 	ldw	x, y
      00A669 4F               [ 1]  407 	clr	a
      00A66A 95               [ 1]  408 	ld	xh, a
      00A66B 20 21            [ 2]  409 	jra	00106$
      00A66D                        410 00105$:
                           00010A   411 	C$stm8s_flash.c$321$2_0$376 ==.
                                    412 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 321: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
      00A66D 88               [ 1]  413 	push	a
      00A66E 43               [ 1]  414 	cpl	a
      00A66F 6B 02            [ 1]  415 	ld	(0x02, sp), a
      00A671 90 9F            [ 1]  416 	ld	a, yl
      00A673 11 02            [ 1]  417 	cp	a, (0x02, sp)
      00A675 84               [ 1]  418 	pop	a
      00A676 26 13            [ 1]  419 	jrne	00102$
                           000115   420 	C$stm8s_flash.c$323$3_0$377 ==.
                                    421 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 323: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
      00A678 0F 04            [ 1]  422 	clr	(0x04, sp)
      00A67A 41               [ 1]  423 	exg	a, xl
      00A67B 4F               [ 1]  424 	clr	a
      00A67C 41               [ 1]  425 	exg	a, xl
                           00011A   426 	C$stm8s_flash.c$324$3_0$377 ==.
                                    427 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 324: res_value = res_value | (uint16_t)value_optbyte_complement;
      00A67D 0F 02            [ 1]  428 	clr	(0x02, sp)
      00A67F 89               [ 2]  429 	pushw	x
      00A680 1A 02            [ 1]  430 	or	a, (2, sp)
      00A682 85               [ 2]  431 	popw	x
      00A683 97               [ 1]  432 	ld	xl, a
      00A684 90 9F            [ 1]  433 	ld	a, yl
      00A686 1A 02            [ 1]  434 	or	a, (0x02, sp)
      00A688 95               [ 1]  435 	ld	xh, a
      00A689 20 03            [ 2]  436 	jra	00106$
      00A68B                        437 00102$:
                           000128   438 	C$stm8s_flash.c$328$3_0$378 ==.
                                    439 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 328: res_value = FLASH_OPTIONBYTE_ERROR;
      00A68B AE 55 55         [ 2]  440 	ldw	x, #0x5555
      00A68E                        441 00106$:
                           00012B   442 	C$stm8s_flash.c$331$1_0$374 ==.
                                    443 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 331: return(res_value);
                           00012B   444 	C$stm8s_flash.c$332$1_0$374 ==.
                                    445 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 332: }
      00A68E 5B 05            [ 2]  446 	addw	sp, #5
                           00012D   447 	C$stm8s_flash.c$332$1_0$374 ==.
                           00012D   448 	XG$FLASH_ReadOptionByte$0$0 ==.
      00A690 81               [ 4]  449 	ret
                           00012E   450 	G$FLASH_SetLowPowerMode$0$0 ==.
                           00012E   451 	C$stm8s_flash.c$340$1_0$380 ==.
                                    452 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 340: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
                                    453 ;	-----------------------------------------
                                    454 ;	 function FLASH_SetLowPowerMode
                                    455 ;	-----------------------------------------
      00A691                        456 _FLASH_SetLowPowerMode:
                           00012E   457 	C$stm8s_flash.c$346$1_0$380 ==.
                                    458 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 346: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT));
      00A691 C6 50 5A         [ 1]  459 	ld	a, 0x505a
      00A694 A4 F3            [ 1]  460 	and	a, #0xf3
      00A696 C7 50 5A         [ 1]  461 	ld	0x505a, a
                           000136   462 	C$stm8s_flash.c$349$1_0$380 ==.
                                    463 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 349: FLASH->CR1 |= (uint8_t)FLASH_LPMode;
      00A699 C6 50 5A         [ 1]  464 	ld	a, 0x505a
      00A69C 1A 03            [ 1]  465 	or	a, (0x03, sp)
      00A69E C7 50 5A         [ 1]  466 	ld	0x505a, a
                           00013E   467 	C$stm8s_flash.c$350$1_0$380 ==.
                                    468 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 350: }
                           00013E   469 	C$stm8s_flash.c$350$1_0$380 ==.
                           00013E   470 	XG$FLASH_SetLowPowerMode$0$0 ==.
      00A6A1 81               [ 4]  471 	ret
                           00013F   472 	G$FLASH_SetProgrammingTime$0$0 ==.
                           00013F   473 	C$stm8s_flash.c$358$1_0$382 ==.
                                    474 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 358: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
                                    475 ;	-----------------------------------------
                                    476 ;	 function FLASH_SetProgrammingTime
                                    477 ;	-----------------------------------------
      00A6A2                        478 _FLASH_SetProgrammingTime:
                           00013F   479 	C$stm8s_flash.c$363$1_0$382 ==.
                                    480 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 363: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
      00A6A2 C6 50 5A         [ 1]  481 	ld	a, 0x505a
      00A6A5 A4 FE            [ 1]  482 	and	a, #0xfe
      00A6A7 C7 50 5A         [ 1]  483 	ld	0x505a, a
                           000147   484 	C$stm8s_flash.c$364$1_0$382 ==.
                                    485 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 364: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
      00A6AA C6 50 5A         [ 1]  486 	ld	a, 0x505a
      00A6AD 1A 03            [ 1]  487 	or	a, (0x03, sp)
      00A6AF C7 50 5A         [ 1]  488 	ld	0x505a, a
                           00014F   489 	C$stm8s_flash.c$365$1_0$382 ==.
                                    490 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 365: }
                           00014F   491 	C$stm8s_flash.c$365$1_0$382 ==.
                           00014F   492 	XG$FLASH_SetProgrammingTime$0$0 ==.
      00A6B2 81               [ 4]  493 	ret
                           000150   494 	G$FLASH_GetLowPowerMode$0$0 ==.
                           000150   495 	C$stm8s_flash.c$372$1_0$384 ==.
                                    496 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 372: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
                                    497 ;	-----------------------------------------
                                    498 ;	 function FLASH_GetLowPowerMode
                                    499 ;	-----------------------------------------
      00A6B3                        500 _FLASH_GetLowPowerMode:
                           000150   501 	C$stm8s_flash.c$374$1_0$384 ==.
                                    502 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 374: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
      00A6B3 C6 50 5A         [ 1]  503 	ld	a, 0x505a
      00A6B6 A4 0C            [ 1]  504 	and	a, #0x0c
                           000155   505 	C$stm8s_flash.c$375$1_0$384 ==.
                                    506 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 375: }
                           000155   507 	C$stm8s_flash.c$375$1_0$384 ==.
                           000155   508 	XG$FLASH_GetLowPowerMode$0$0 ==.
      00A6B8 81               [ 4]  509 	ret
                           000156   510 	G$FLASH_GetProgrammingTime$0$0 ==.
                           000156   511 	C$stm8s_flash.c$382$1_0$386 ==.
                                    512 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 382: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
                                    513 ;	-----------------------------------------
                                    514 ;	 function FLASH_GetProgrammingTime
                                    515 ;	-----------------------------------------
      00A6B9                        516 _FLASH_GetProgrammingTime:
                           000156   517 	C$stm8s_flash.c$384$1_0$386 ==.
                                    518 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 384: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
      00A6B9 C6 50 5A         [ 1]  519 	ld	a, 0x505a
      00A6BC A4 01            [ 1]  520 	and	a, #0x01
                           00015B   521 	C$stm8s_flash.c$385$1_0$386 ==.
                                    522 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 385: }
                           00015B   523 	C$stm8s_flash.c$385$1_0$386 ==.
                           00015B   524 	XG$FLASH_GetProgrammingTime$0$0 ==.
      00A6BE 81               [ 4]  525 	ret
                           00015C   526 	G$FLASH_GetBootSize$0$0 ==.
                           00015C   527 	C$stm8s_flash.c$392$1_0$388 ==.
                                    528 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 392: uint32_t FLASH_GetBootSize(void)
                                    529 ;	-----------------------------------------
                                    530 ;	 function FLASH_GetBootSize
                                    531 ;	-----------------------------------------
      00A6BF                        532 _FLASH_GetBootSize:
      00A6BF 52 04            [ 2]  533 	sub	sp, #4
                           00015E   534 	C$stm8s_flash.c$397$1_0$388 ==.
                                    535 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 397: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
      00A6C1 C6 50 5D         [ 1]  536 	ld	a, 0x505d
      00A6C4 5F               [ 1]  537 	clrw	x
      00A6C5 0F 04            [ 1]  538 	clr	(0x04, sp)
      00A6C7 08 04            [ 1]  539 	sll	(0x04, sp)
      00A6C9 49               [ 1]  540 	rlc	a
      00A6CA 59               [ 2]  541 	rlcw	x
      00A6CB 90 95            [ 1]  542 	ld	yh, a
      00A6CD 7B 04            [ 1]  543 	ld	a, (0x04, sp)
      00A6CF 90 97            [ 1]  544 	ld	yl, a
                           00016E   545 	C$stm8s_flash.c$400$1_0$388 ==.
                                    546 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 400: if(FLASH->FPR == 0xFF)
      00A6D1 C6 50 5D         [ 1]  547 	ld	a, 0x505d
      00A6D4 4C               [ 1]  548 	inc	a
      00A6D5 26 0B            [ 1]  549 	jrne	00102$
                           000174   550 	C$stm8s_flash.c$402$2_0$389 ==.
                                    551 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 402: temp += 512;
      00A6D7 72 A9 02 00      [ 2]  552 	addw	y, #0x0200
      00A6DB 9F               [ 1]  553 	ld	a, xl
      00A6DC A9 00            [ 1]  554 	adc	a, #0x00
      00A6DE 02               [ 1]  555 	rlwa	x
      00A6DF A9 00            [ 1]  556 	adc	a, #0x00
      00A6E1 95               [ 1]  557 	ld	xh, a
      00A6E2                        558 00102$:
                           00017F   559 	C$stm8s_flash.c$406$1_0$388 ==.
                                    560 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 406: return(temp);
      00A6E2 51               [ 1]  561 	exgw	x, y
                           000180   562 	C$stm8s_flash.c$407$1_0$388 ==.
                                    563 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 407: }
      00A6E3 5B 04            [ 2]  564 	addw	sp, #4
                           000182   565 	C$stm8s_flash.c$407$1_0$388 ==.
                           000182   566 	XG$FLASH_GetBootSize$0$0 ==.
      00A6E5 81               [ 4]  567 	ret
                           000183   568 	G$FLASH_GetFlagStatus$0$0 ==.
                           000183   569 	C$stm8s_flash.c$417$1_0$391 ==.
                                    570 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 417: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
                                    571 ;	-----------------------------------------
                                    572 ;	 function FLASH_GetFlagStatus
                                    573 ;	-----------------------------------------
      00A6E6                        574 _FLASH_GetFlagStatus:
                           000183   575 	C$stm8s_flash.c$424$1_0$391 ==.
                                    576 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 424: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
      00A6E6 C6 50 5F         [ 1]  577 	ld	a, 0x505f
      00A6E9 14 03            [ 1]  578 	and	a, (0x03, sp)
      00A6EB 27 04            [ 1]  579 	jreq	00102$
                           00018A   580 	C$stm8s_flash.c$426$2_0$392 ==.
                                    581 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 426: status = SET; /* FLASH_FLAG is set */
      00A6ED A6 01            [ 1]  582 	ld	a, #0x01
      00A6EF 20 01            [ 2]  583 	jra	00103$
      00A6F1                        584 00102$:
                           00018E   585 	C$stm8s_flash.c$430$2_0$393 ==.
                                    586 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 430: status = RESET; /* FLASH_FLAG is reset*/
      00A6F1 4F               [ 1]  587 	clr	a
      00A6F2                        588 00103$:
                           00018F   589 	C$stm8s_flash.c$434$1_0$391 ==.
                                    590 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 434: return status;
                           00018F   591 	C$stm8s_flash.c$435$1_0$391 ==.
                                    592 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 435: }
                           00018F   593 	C$stm8s_flash.c$435$1_0$391 ==.
                           00018F   594 	XG$FLASH_GetFlagStatus$0$0 ==.
      00A6F2 81               [ 4]  595 	ret
                           000190   596 	G$FLASH_WaitForLastOperation$0$0 ==.
                           000190   597 	C$stm8s_flash.c$549$1_0$395 ==.
                                    598 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 549: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType))
                                    599 ;	-----------------------------------------
                                    600 ;	 function FLASH_WaitForLastOperation
                                    601 ;	-----------------------------------------
      00A6F3                        602 _FLASH_WaitForLastOperation:
                           000190   603 	C$stm8s_flash.c$551$2_0$395 ==.
                                    604 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 551: uint8_t flagstatus = 0x00;
      00A6F3 4F               [ 1]  605 	clr	a
                           000191   606 	C$stm8s_flash.c$557$1_0$395 ==.
                                    607 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 557: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A6F4 88               [ 1]  608 	push	a
      00A6F5 7B 04            [ 1]  609 	ld	a, (0x04, sp)
      00A6F7 A1 FD            [ 1]  610 	cp	a, #0xfd
      00A6F9 84               [ 1]  611 	pop	a
      00A6FA 26 10            [ 1]  612 	jrne	00121$
                           000199   613 	C$stm8s_flash.c$559$1_0$395 ==.
                                    614 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 559: while((flagstatus == 0x00) && (timeout != 0x00))
      00A6FC 5F               [ 1]  615 	clrw	x
      00A6FD 5A               [ 2]  616 	decw	x
      00A6FE                        617 00102$:
      00A6FE 4D               [ 1]  618 	tnz	a
      00A6FF 26 1B            [ 1]  619 	jrne	00123$
      00A701 5D               [ 2]  620 	tnzw	x
      00A702 27 18            [ 1]  621 	jreq	00123$
                           0001A1   622 	C$stm8s_flash.c$561$3_0$397 ==.
                                    623 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 561: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
      00A704 C6 50 5F         [ 1]  624 	ld	a, 0x505f
      00A707 A4 05            [ 1]  625 	and	a, #0x05
                           0001A6   626 	C$stm8s_flash.c$563$3_0$397 ==.
                                    627 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 563: timeout--;
      00A709 5A               [ 2]  628 	decw	x
      00A70A 20 F2            [ 2]  629 	jra	00102$
                           0001A9   630 	C$stm8s_flash.c$568$1_0$395 ==.
                                    631 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 568: while((flagstatus == 0x00) && (timeout != 0x00))
      00A70C                        632 00121$:
      00A70C 5F               [ 1]  633 	clrw	x
      00A70D 5A               [ 2]  634 	decw	x
      00A70E                        635 00106$:
      00A70E 4D               [ 1]  636 	tnz	a
      00A70F 26 0D            [ 1]  637 	jrne	00124$
      00A711 5D               [ 2]  638 	tnzw	x
      00A712 27 0A            [ 1]  639 	jreq	00124$
                           0001B1   640 	C$stm8s_flash.c$570$3_0$399 ==.
                                    641 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 570: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
      00A714 C6 50 5F         [ 1]  642 	ld	a, 0x505f
      00A717 A4 41            [ 1]  643 	and	a, #0x41
                           0001B6   644 	C$stm8s_flash.c$572$3_0$399 ==.
                                    645 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 572: timeout--;
      00A719 5A               [ 2]  646 	decw	x
      00A71A 20 F2            [ 2]  647 	jra	00106$
      00A71C                        648 00123$:
                           0001B9   649 	C$stm8s_flash.c$589$1_0$395 ==.
                                    650 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
      00A71C 20 00            [ 2]  651 	jra	00111$
                           0001BB   652 	C$stm8s_flash.c$572$1_0$395 ==.
                                    653 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 572: timeout--;
      00A71E                        654 00124$:
      00A71E                        655 00111$:
                           0001BB   656 	C$stm8s_flash.c$584$1_0$395 ==.
                                    657 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 584: if(timeout == 0x00 )
      00A71E 5D               [ 2]  658 	tnzw	x
      00A71F 26 02            [ 1]  659 	jrne	00113$
                           0001BE   660 	C$stm8s_flash.c$586$2_0$400 ==.
                                    661 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 586: flagstatus = FLASH_STATUS_TIMEOUT;
      00A721 A6 02            [ 1]  662 	ld	a, #0x02
      00A723                        663 00113$:
                           0001C0   664 	C$stm8s_flash.c$589$1_0$395 ==.
                                    665 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
                           0001C0   666 	C$stm8s_flash.c$590$1_0$395 ==.
                                    667 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 590: }
                           0001C0   668 	C$stm8s_flash.c$590$1_0$395 ==.
                           0001C0   669 	XG$FLASH_WaitForLastOperation$0$0 ==.
      00A723 81               [ 4]  670 	ret
                           0001C1   671 	G$FLASH_EraseBlock$0$0 ==.
                           0001C1   672 	C$stm8s_flash.c$599$1_0$402 ==.
                                    673 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 599: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
                                    674 ;	-----------------------------------------
                                    675 ;	 function FLASH_EraseBlock
                                    676 ;	-----------------------------------------
      00A724                        677 _FLASH_EraseBlock:
      00A724 52 06            [ 2]  678 	sub	sp, #6
                           0001C3   679 	C$stm8s_flash.c$612$1_0$402 ==.
                                    680 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 612: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A726 7B 0B            [ 1]  681 	ld	a, (0x0b, sp)
      00A728 A1 FD            [ 1]  682 	cp	a, #0xfd
      00A72A 26 09            [ 1]  683 	jrne	00102$
                           0001C9   684 	C$stm8s_flash.c$615$2_0$403 ==.
                                    685 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 615: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00A72C AE 80 00         [ 2]  686 	ldw	x, #0x8000
      00A72F 1F 05            [ 2]  687 	ldw	(0x05, sp), x
      00A731 0F 03            [ 1]  688 	clr	(0x03, sp)
      00A733 20 07            [ 2]  689 	jra	00103$
      00A735                        690 00102$:
                           0001D2   691 	C$stm8s_flash.c$620$2_0$404 ==.
                                    692 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 620: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00A735 AE 40 00         [ 2]  693 	ldw	x, #0x4000
      00A738 1F 05            [ 2]  694 	ldw	(0x05, sp), x
      00A73A 0F 03            [ 1]  695 	clr	(0x03, sp)
      00A73C                        696 00103$:
                           0001D9   697 	C$stm8s_flash.c$628$1_0$402 ==.
                                    698 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 628: pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
      00A73C 1E 09            [ 2]  699 	ldw	x, (0x09, sp)
      00A73E 58               [ 2]  700 	sllw	x
      00A73F 58               [ 2]  701 	sllw	x
      00A740 58               [ 2]  702 	sllw	x
      00A741 58               [ 2]  703 	sllw	x
      00A742 58               [ 2]  704 	sllw	x
      00A743 58               [ 2]  705 	sllw	x
      00A744 58               [ 2]  706 	sllw	x
      00A745 1F 01            [ 2]  707 	ldw	(0x01, sp), x
      00A747 72 FB 05         [ 2]  708 	addw	x, (0x05, sp)
                           0001E7   709 	C$stm8s_flash.c$632$1_0$402 ==.
                                    710 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 632: FLASH->CR2 |= FLASH_CR2_ERASE;
      00A74A 72 1A 50 5B      [ 1]  711 	bset	20571, #5
                           0001EB   712 	C$stm8s_flash.c$633$1_0$402 ==.
                                    713 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 633: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
      00A74E 72 1B 50 5C      [ 1]  714 	bres	20572, #5
                           0001EF   715 	C$stm8s_flash.c$637$1_0$402 ==.
                                    716 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 637: *pwFlash = (uint32_t)0;
      00A752 6F 03            [ 1]  717 	clr	(0x3, x)
      00A754 6F 02            [ 1]  718 	clr	(0x2, x)
      00A756 6F 01            [ 1]  719 	clr	(0x1, x)
      00A758 7F               [ 1]  720 	clr	(x)
                           0001F6   721 	C$stm8s_flash.c$645$1_0$402 ==.
                                    722 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 645: }
      00A759 5B 06            [ 2]  723 	addw	sp, #6
                           0001F8   724 	C$stm8s_flash.c$645$1_0$402 ==.
                           0001F8   725 	XG$FLASH_EraseBlock$0$0 ==.
      00A75B 81               [ 4]  726 	ret
                           0001F9   727 	G$FLASH_ProgramBlock$0$0 ==.
                           0001F9   728 	C$stm8s_flash.c$656$1_0$406 ==.
                                    729 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 656: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType,
                                    730 ;	-----------------------------------------
                                    731 ;	 function FLASH_ProgramBlock
                                    732 ;	-----------------------------------------
      00A75C                        733 _FLASH_ProgramBlock:
      00A75C 52 10            [ 2]  734 	sub	sp, #16
                           0001FB   735 	C$stm8s_flash.c$665$1_0$406 ==.
                                    736 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 665: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A75E 7B 15            [ 1]  737 	ld	a, (0x15, sp)
      00A760 A1 FD            [ 1]  738 	cp	a, #0xfd
      00A762 26 09            [ 1]  739 	jrne	00102$
                           000201   740 	C$stm8s_flash.c$668$2_0$407 ==.
                                    741 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 668: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00A764 0F 0A            [ 1]  742 	clr	(0x0a, sp)
      00A766 A6 80            [ 1]  743 	ld	a, #0x80
      00A768 5F               [ 1]  744 	clrw	x
      00A769 1F 07            [ 2]  745 	ldw	(0x07, sp), x
      00A76B 20 07            [ 2]  746 	jra	00103$
      00A76D                        747 00102$:
                           00020A   748 	C$stm8s_flash.c$673$2_0$408 ==.
                                    749 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 673: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00A76D 0F 0A            [ 1]  750 	clr	(0x0a, sp)
      00A76F A6 40            [ 1]  751 	ld	a, #0x40
      00A771 5F               [ 1]  752 	clrw	x
      00A772 1F 07            [ 2]  753 	ldw	(0x07, sp), x
      00A774                        754 00103$:
                           000211   755 	C$stm8s_flash.c$677$1_0$406 ==.
                                    756 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 677: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
      00A774 16 13            [ 2]  757 	ldw	y, (0x13, sp)
      00A776 5F               [ 1]  758 	clrw	x
      00A777 88               [ 1]  759 	push	a
      00A778 A6 07            [ 1]  760 	ld	a, #0x07
      00A77A                        761 00131$:
      00A77A 90 58            [ 2]  762 	sllw	y
      00A77C 59               [ 2]  763 	rlcw	x
      00A77D 4A               [ 1]  764 	dec	a
      00A77E 26 FA            [ 1]  765 	jrne	00131$
      00A780 17 06            [ 2]  766 	ldw	(0x06, sp), y
      00A782 84               [ 1]  767 	pop	a
      00A783 90 95            [ 1]  768 	ld	yh, a
      00A785 61               [ 1]  769 	exg	a, yl
      00A786 7B 0A            [ 1]  770 	ld	a, (0x0a, sp)
      00A788 61               [ 1]  771 	exg	a, yl
      00A789 72 F9 05         [ 2]  772 	addw	y, (0x05, sp)
      00A78C 9F               [ 1]  773 	ld	a, xl
      00A78D 19 08            [ 1]  774 	adc	a, (0x08, sp)
      00A78F 02               [ 1]  775 	rlwa	x
      00A790 19 07            [ 1]  776 	adc	a, (0x07, sp)
      00A792 95               [ 1]  777 	ld	xh, a
      00A793 1F 0B            [ 2]  778 	ldw	(0x0b, sp), x
                           000232   779 	C$stm8s_flash.c$680$1_0$406 ==.
                                    780 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 680: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
      00A795 0D 16            [ 1]  781 	tnz	(0x16, sp)
      00A797 26 0A            [ 1]  782 	jrne	00105$
                           000236   783 	C$stm8s_flash.c$683$2_0$409 ==.
                                    784 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 683: FLASH->CR2 |= FLASH_CR2_PRG;
      00A799 72 10 50 5B      [ 1]  785 	bset	20571, #0
                           00023A   786 	C$stm8s_flash.c$684$2_0$409 ==.
                                    787 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 684: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
      00A79D 72 11 50 5C      [ 1]  788 	bres	20572, #0
      00A7A1 20 08            [ 2]  789 	jra	00114$
      00A7A3                        790 00105$:
                           000240   791 	C$stm8s_flash.c$689$2_0$410 ==.
                                    792 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 689: FLASH->CR2 |= FLASH_CR2_FPRG;
      00A7A3 72 18 50 5B      [ 1]  793 	bset	20571, #4
                           000244   794 	C$stm8s_flash.c$690$2_0$410 ==.
                                    795 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 690: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
      00A7A7 72 19 50 5C      [ 1]  796 	bres	20572, #4
                           000248   797 	C$stm8s_flash.c$694$2_0$406 ==.
                                    798 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00A7AB                        799 00114$:
      00A7AB 5F               [ 1]  800 	clrw	x
      00A7AC 1F 0F            [ 2]  801 	ldw	(0x0f, sp), x
      00A7AE                        802 00108$:
                           00024B   803 	C$stm8s_flash.c$696$3_0$412 ==.
                                    804 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 696: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
      00A7AE 93               [ 1]  805 	ldw	x, y
      00A7AF 72 FB 0F         [ 2]  806 	addw	x, (0x0f, sp)
      00A7B2 1F 01            [ 2]  807 	ldw	(0x01, sp), x
      00A7B4 1E 17            [ 2]  808 	ldw	x, (0x17, sp)
      00A7B6 72 FB 0F         [ 2]  809 	addw	x, (0x0f, sp)
      00A7B9 F6               [ 1]  810 	ld	a, (x)
      00A7BA 1E 01            [ 2]  811 	ldw	x, (0x01, sp)
      00A7BC F7               [ 1]  812 	ld	(x), a
                           00025A   813 	C$stm8s_flash.c$694$2_0$411 ==.
                                    814 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00A7BD 1E 0F            [ 2]  815 	ldw	x, (0x0f, sp)
      00A7BF 5C               [ 1]  816 	incw	x
      00A7C0 1F 0F            [ 2]  817 	ldw	(0x0f, sp), x
      00A7C2 A3 00 80         [ 2]  818 	cpw	x, #0x0080
      00A7C5 25 E7            [ 1]  819 	jrc	00108$
                           000264   820 	C$stm8s_flash.c$698$2_0$406 ==.
                                    821 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 698: }
      00A7C7 5B 10            [ 2]  822 	addw	sp, #16
                           000266   823 	C$stm8s_flash.c$698$2_0$406 ==.
                           000266   824 	XG$FLASH_ProgramBlock$0$0 ==.
      00A7C9 81               [ 4]  825 	ret
                                    826 	.area CODE
                                    827 	.area CONST
                                    828 	.area INITIALIZER
                                    829 	.area CABS (ABS)
