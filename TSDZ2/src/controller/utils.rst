                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module utils
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _map
                                     12 	.globl _map_inverse
                                     13 	.globl _ui8_min
                                     14 	.globl _ui8_max
                                     15 	.globl _ui8_limit_max
                                     16 	.globl _pi_controller
                                     17 	.globl _pi_controller_reset
                                     18 	.globl _crc16
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area DATA
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area INITIALIZED
                                     27 ;--------------------------------------------------------
                                     28 ; absolute external ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DABS (ABS)
                                     31 
                                     32 ; default segment ordering for linker
                                     33 	.area HOME
                                     34 	.area GSINIT
                                     35 	.area GSFINAL
                                     36 	.area CONST
                                     37 	.area INITIALIZER
                                     38 	.area CODE
                                     39 
                                     40 ;--------------------------------------------------------
                                     41 ; global & static initialisations
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area GSINIT
                                     47 ;--------------------------------------------------------
                                     48 ; Home
                                     49 ;--------------------------------------------------------
                                     50 	.area HOME
                                     51 	.area HOME
                                     52 ;--------------------------------------------------------
                                     53 ; code
                                     54 ;--------------------------------------------------------
                                     55 	.area CODE
                           000000    56 	G$map$0$0 ==.
                           000000    57 	C$utils.c$17$0_0$365 ==.
                                     58 ;	utils.c: 17: int32_t map(int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max)
                                     59 ;	-----------------------------------------
                                     60 ;	 function map
                                     61 ;	-----------------------------------------
      00C6E6                         62 _map:
      00C6E6 52 10            [ 2]   63 	sub	sp, #16
                           000002    64 	C$utils.c$20$1_0$365 ==.
                                     65 ;	utils.c: 20: if(x < in_min)
      00C6E8 1E 15            [ 2]   66 	ldw	x, (0x15, sp)
      00C6EA 13 19            [ 2]   67 	cpw	x, (0x19, sp)
      00C6EC 7B 14            [ 1]   68 	ld	a, (0x14, sp)
      00C6EE 12 18            [ 1]   69 	sbc	a, (0x18, sp)
      00C6F0 7B 13            [ 1]   70 	ld	a, (0x13, sp)
      00C6F2 12 17            [ 1]   71 	sbc	a, (0x17, sp)
      00C6F4 2E 07            [ 1]   72 	jrsge	00108$
                           000010    73 	C$utils.c$21$1_0$365 ==.
                                     74 ;	utils.c: 21: return out_min;
      00C6F6 1E 21            [ 2]   75 	ldw	x, (0x21, sp)
      00C6F8 16 1F            [ 2]   76 	ldw	y, (0x1f, sp)
      00C6FA CC C7 E4         [ 2]   77 	jp	00110$
      00C6FD                         78 00108$:
                           000017    79 	C$utils.c$22$1_0$365 ==.
                                     80 ;	utils.c: 22: else if(x > in_max)
      00C6FD 1E 1D            [ 2]   81 	ldw	x, (0x1d, sp)
      00C6FF 13 15            [ 2]   82 	cpw	x, (0x15, sp)
      00C701 7B 1C            [ 1]   83 	ld	a, (0x1c, sp)
      00C703 12 14            [ 1]   84 	sbc	a, (0x14, sp)
      00C705 7B 1B            [ 1]   85 	ld	a, (0x1b, sp)
      00C707 12 13            [ 1]   86 	sbc	a, (0x13, sp)
      00C709 2E 07            [ 1]   87 	jrsge	00105$
                           000025    88 	C$utils.c$23$1_0$365 ==.
                                     89 ;	utils.c: 23: return out_max;
      00C70B 1E 25            [ 2]   90 	ldw	x, (0x25, sp)
      00C70D 16 23            [ 2]   91 	ldw	y, (0x23, sp)
      00C70F CC C7 E4         [ 2]   92 	jp	00110$
      00C712                         93 00105$:
                           00002C    94 	C$utils.c$27$1_0$365 ==.
                                     95 ;	utils.c: 27: else  if((in_max - in_min) > (out_max - out_min))
      00C712 1E 1D            [ 2]   96 	ldw	x, (0x1d, sp)
      00C714 72 F0 19         [ 2]   97 	subw	x, (0x19, sp)
      00C717 1F 03            [ 2]   98 	ldw	(0x03, sp), x
      00C719 7B 1C            [ 1]   99 	ld	a, (0x1c, sp)
      00C71B 12 18            [ 1]  100 	sbc	a, (0x18, sp)
      00C71D 6B 02            [ 1]  101 	ld	(0x02, sp), a
      00C71F 7B 1B            [ 1]  102 	ld	a, (0x1b, sp)
      00C721 12 17            [ 1]  103 	sbc	a, (0x17, sp)
      00C723 6B 01            [ 1]  104 	ld	(0x01, sp), a
      00C725 1E 25            [ 2]  105 	ldw	x, (0x25, sp)
      00C727 72 F0 21         [ 2]  106 	subw	x, (0x21, sp)
      00C72A 1F 07            [ 2]  107 	ldw	(0x07, sp), x
      00C72C 7B 24            [ 1]  108 	ld	a, (0x24, sp)
      00C72E 12 20            [ 1]  109 	sbc	a, (0x20, sp)
      00C730 6B 06            [ 1]  110 	ld	(0x06, sp), a
      00C732 7B 23            [ 1]  111 	ld	a, (0x23, sp)
      00C734 12 1F            [ 1]  112 	sbc	a, (0x1f, sp)
      00C736 6B 05            [ 1]  113 	ld	(0x05, sp), a
      00C738 1E 07            [ 2]  114 	ldw	x, (0x07, sp)
      00C73A 13 03            [ 2]  115 	cpw	x, (0x03, sp)
      00C73C 7B 06            [ 1]  116 	ld	a, (0x06, sp)
      00C73E 12 02            [ 1]  117 	sbc	a, (0x02, sp)
      00C740 7B 05            [ 1]  118 	ld	a, (0x05, sp)
      00C742 12 01            [ 1]  119 	sbc	a, (0x01, sp)
      00C744 2E 5C            [ 1]  120 	jrsge	00102$
                           000060   121 	C$utils.c$28$1_0$365 ==.
                                    122 ;	utils.c: 28: return (x - in_min) * (out_max - out_min + 1) / (in_max - in_min + 1) + out_min;
      00C746 1E 15            [ 2]  123 	ldw	x, (0x15, sp)
      00C748 72 F0 19         [ 2]  124 	subw	x, (0x19, sp)
      00C74B 1F 0B            [ 2]  125 	ldw	(0x0b, sp), x
      00C74D 7B 14            [ 1]  126 	ld	a, (0x14, sp)
      00C74F 12 18            [ 1]  127 	sbc	a, (0x18, sp)
      00C751 6B 0A            [ 1]  128 	ld	(0x0a, sp), a
      00C753 7B 13            [ 1]  129 	ld	a, (0x13, sp)
      00C755 12 17            [ 1]  130 	sbc	a, (0x17, sp)
      00C757 6B 09            [ 1]  131 	ld	(0x09, sp), a
      00C759 1E 07            [ 2]  132 	ldw	x, (0x07, sp)
      00C75B 1C 00 01         [ 2]  133 	addw	x, #0x0001
      00C75E 1F 0F            [ 2]  134 	ldw	(0x0f, sp), x
      00C760 1E 05            [ 2]  135 	ldw	x, (0x05, sp)
      00C762 24 01            [ 1]  136 	jrnc	00127$
      00C764 5C               [ 1]  137 	incw	x
      00C765                        138 00127$:
      00C765 7B 10            [ 1]  139 	ld	a, (0x10, sp)
      00C767 88               [ 1]  140 	push	a
      00C768 7B 10            [ 1]  141 	ld	a, (0x10, sp)
      00C76A 88               [ 1]  142 	push	a
      00C76B 89               [ 2]  143 	pushw	x
      00C76C 1E 0F            [ 2]  144 	ldw	x, (0x0f, sp)
      00C76E 89               [ 2]  145 	pushw	x
      00C76F 1E 0F            [ 2]  146 	ldw	x, (0x0f, sp)
      00C771 89               [ 2]  147 	pushw	x
      00C772 CD DB 08         [ 4]  148 	call	__mullong
      00C775 5B 08            [ 2]  149 	addw	sp, #8
      00C777 1F 0F            [ 2]  150 	ldw	(0x0f, sp), x
      00C779 17 0D            [ 2]  151 	ldw	(0x0d, sp), y
      00C77B 1E 03            [ 2]  152 	ldw	x, (0x03, sp)
      00C77D 1C 00 01         [ 2]  153 	addw	x, #0x0001
      00C780 16 01            [ 2]  154 	ldw	y, (0x01, sp)
      00C782 24 02            [ 1]  155 	jrnc	00128$
      00C784 90 5C            [ 1]  156 	incw	y
      00C786                        157 00128$:
      00C786 89               [ 2]  158 	pushw	x
      00C787 90 89            [ 2]  159 	pushw	y
      00C789 1E 13            [ 2]  160 	ldw	x, (0x13, sp)
      00C78B 89               [ 2]  161 	pushw	x
      00C78C 1E 13            [ 2]  162 	ldw	x, (0x13, sp)
      00C78E 89               [ 2]  163 	pushw	x
      00C78F CD D7 A9         [ 4]  164 	call	__divslong
      00C792 5B 08            [ 2]  165 	addw	sp, #8
      00C794 51               [ 1]  166 	exgw	x, y
      00C795 72 F9 21         [ 2]  167 	addw	y, (0x21, sp)
      00C798 9F               [ 1]  168 	ld	a, xl
      00C799 19 20            [ 1]  169 	adc	a, (0x20, sp)
      00C79B 02               [ 1]  170 	rlwa	x
      00C79C 19 1F            [ 1]  171 	adc	a, (0x1f, sp)
      00C79E 95               [ 1]  172 	ld	xh, a
      00C79F 51               [ 1]  173 	exgw	x, y
      00C7A0 20 42            [ 2]  174 	jra	00110$
      00C7A2                        175 00102$:
                           0000BC   176 	C$utils.c$31$1_0$365 ==.
                                    177 ;	utils.c: 31: return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
      00C7A2 1E 15            [ 2]  178 	ldw	x, (0x15, sp)
      00C7A4 72 F0 19         [ 2]  179 	subw	x, (0x19, sp)
      00C7A7 1F 0F            [ 2]  180 	ldw	(0x0f, sp), x
      00C7A9 7B 14            [ 1]  181 	ld	a, (0x14, sp)
      00C7AB 12 18            [ 1]  182 	sbc	a, (0x18, sp)
      00C7AD 6B 0E            [ 1]  183 	ld	(0x0e, sp), a
      00C7AF 7B 13            [ 1]  184 	ld	a, (0x13, sp)
      00C7B1 12 17            [ 1]  185 	sbc	a, (0x17, sp)
      00C7B3 6B 0D            [ 1]  186 	ld	(0x0d, sp), a
      00C7B5 1E 07            [ 2]  187 	ldw	x, (0x07, sp)
      00C7B7 89               [ 2]  188 	pushw	x
      00C7B8 1E 07            [ 2]  189 	ldw	x, (0x07, sp)
      00C7BA 89               [ 2]  190 	pushw	x
      00C7BB 1E 13            [ 2]  191 	ldw	x, (0x13, sp)
      00C7BD 89               [ 2]  192 	pushw	x
      00C7BE 1E 13            [ 2]  193 	ldw	x, (0x13, sp)
      00C7C0 89               [ 2]  194 	pushw	x
      00C7C1 CD DB 08         [ 4]  195 	call	__mullong
      00C7C4 5B 08            [ 2]  196 	addw	sp, #8
      00C7C6 1F 0F            [ 2]  197 	ldw	(0x0f, sp), x
      00C7C8 1E 03            [ 2]  198 	ldw	x, (0x03, sp)
      00C7CA 89               [ 2]  199 	pushw	x
      00C7CB 1E 03            [ 2]  200 	ldw	x, (0x03, sp)
      00C7CD 89               [ 2]  201 	pushw	x
      00C7CE 1E 13            [ 2]  202 	ldw	x, (0x13, sp)
      00C7D0 89               [ 2]  203 	pushw	x
      00C7D1 90 89            [ 2]  204 	pushw	y
      00C7D3 CD D7 A9         [ 4]  205 	call	__divslong
      00C7D6 5B 08            [ 2]  206 	addw	sp, #8
      00C7D8 51               [ 1]  207 	exgw	x, y
      00C7D9 72 F9 21         [ 2]  208 	addw	y, (0x21, sp)
      00C7DC 9F               [ 1]  209 	ld	a, xl
      00C7DD 19 20            [ 1]  210 	adc	a, (0x20, sp)
      00C7DF 02               [ 1]  211 	rlwa	x
      00C7E0 19 1F            [ 1]  212 	adc	a, (0x1f, sp)
      00C7E2 95               [ 1]  213 	ld	xh, a
      00C7E3 51               [ 1]  214 	exgw	x, y
      00C7E4                        215 00110$:
                           0000FE   216 	C$utils.c$32$1_0$365 ==.
                                    217 ;	utils.c: 32: }
      00C7E4 5B 10            [ 2]  218 	addw	sp, #16
                           000100   219 	C$utils.c$32$1_0$365 ==.
                           000100   220 	XG$map$0$0 ==.
      00C7E6 81               [ 4]  221 	ret
                           000101   222 	G$map_inverse$0$0 ==.
                           000101   223 	C$utils.c$37$1_0$367 ==.
                                    224 ;	utils.c: 37: int32_t map_inverse(int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max)
                                    225 ;	-----------------------------------------
                                    226 ;	 function map_inverse
                                    227 ;	-----------------------------------------
      00C7E7                        228 _map_inverse:
      00C7E7 52 08            [ 2]  229 	sub	sp, #8
                           000103   230 	C$utils.c$40$1_0$367 ==.
                                    231 ;	utils.c: 40: if(x < in_min)
      00C7E9 1E 0D            [ 2]  232 	ldw	x, (0x0d, sp)
      00C7EB 13 11            [ 2]  233 	cpw	x, (0x11, sp)
      00C7ED 7B 0C            [ 1]  234 	ld	a, (0x0c, sp)
      00C7EF 12 10            [ 1]  235 	sbc	a, (0x10, sp)
      00C7F1 7B 0B            [ 1]  236 	ld	a, (0x0b, sp)
      00C7F3 12 0F            [ 1]  237 	sbc	a, (0x0f, sp)
      00C7F5 2E 07            [ 1]  238 	jrsge	00104$
                           000111   239 	C$utils.c$41$1_0$367 ==.
                                    240 ;	utils.c: 41: return out_min;
      00C7F7 1E 19            [ 2]  241 	ldw	x, (0x19, sp)
      00C7F9 16 17            [ 2]  242 	ldw	y, (0x17, sp)
      00C7FB CC C8 7A         [ 2]  243 	jp	00106$
      00C7FE                        244 00104$:
                           000118   245 	C$utils.c$42$1_0$367 ==.
                                    246 ;	utils.c: 42: else if(x > in_max)
      00C7FE 1E 15            [ 2]  247 	ldw	x, (0x15, sp)
      00C800 13 0D            [ 2]  248 	cpw	x, (0x0d, sp)
      00C802 7B 14            [ 1]  249 	ld	a, (0x14, sp)
      00C804 12 0C            [ 1]  250 	sbc	a, (0x0c, sp)
      00C806 7B 13            [ 1]  251 	ld	a, (0x13, sp)
      00C808 12 0B            [ 1]  252 	sbc	a, (0x0b, sp)
      00C80A 2E 06            [ 1]  253 	jrsge	00105$
                           000126   254 	C$utils.c$43$1_0$367 ==.
                                    255 ;	utils.c: 43: return out_max;
      00C80C 1E 1D            [ 2]  256 	ldw	x, (0x1d, sp)
      00C80E 16 1B            [ 2]  257 	ldw	y, (0x1b, sp)
      00C810 20 68            [ 2]  258 	jra	00106$
      00C812                        259 00105$:
                           00012C   260 	C$utils.c$45$1_0$367 ==.
                                    261 ;	utils.c: 45: return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
      00C812 1E 0D            [ 2]  262 	ldw	x, (0x0d, sp)
      00C814 72 F0 11         [ 2]  263 	subw	x, (0x11, sp)
      00C817 1F 03            [ 2]  264 	ldw	(0x03, sp), x
      00C819 7B 0C            [ 1]  265 	ld	a, (0x0c, sp)
      00C81B 12 10            [ 1]  266 	sbc	a, (0x10, sp)
      00C81D 6B 02            [ 1]  267 	ld	(0x02, sp), a
      00C81F 7B 0B            [ 1]  268 	ld	a, (0x0b, sp)
      00C821 12 0F            [ 1]  269 	sbc	a, (0x0f, sp)
      00C823 6B 01            [ 1]  270 	ld	(0x01, sp), a
      00C825 1E 1D            [ 2]  271 	ldw	x, (0x1d, sp)
      00C827 72 F0 19         [ 2]  272 	subw	x, (0x19, sp)
      00C82A 1F 07            [ 2]  273 	ldw	(0x07, sp), x
      00C82C 7B 1C            [ 1]  274 	ld	a, (0x1c, sp)
      00C82E 12 18            [ 1]  275 	sbc	a, (0x18, sp)
      00C830 6B 06            [ 1]  276 	ld	(0x06, sp), a
      00C832 7B 1B            [ 1]  277 	ld	a, (0x1b, sp)
      00C834 12 17            [ 1]  278 	sbc	a, (0x17, sp)
      00C836 6B 05            [ 1]  279 	ld	(0x05, sp), a
      00C838 1E 07            [ 2]  280 	ldw	x, (0x07, sp)
      00C83A 89               [ 2]  281 	pushw	x
      00C83B 1E 07            [ 2]  282 	ldw	x, (0x07, sp)
      00C83D 89               [ 2]  283 	pushw	x
      00C83E 1E 07            [ 2]  284 	ldw	x, (0x07, sp)
      00C840 89               [ 2]  285 	pushw	x
      00C841 1E 07            [ 2]  286 	ldw	x, (0x07, sp)
      00C843 89               [ 2]  287 	pushw	x
      00C844 CD DB 08         [ 4]  288 	call	__mullong
      00C847 5B 08            [ 2]  289 	addw	sp, #8
      00C849 1F 03            [ 2]  290 	ldw	(0x03, sp), x
      00C84B 1E 15            [ 2]  291 	ldw	x, (0x15, sp)
      00C84D 72 F0 11         [ 2]  292 	subw	x, (0x11, sp)
      00C850 1F 07            [ 2]  293 	ldw	(0x07, sp), x
      00C852 7B 14            [ 1]  294 	ld	a, (0x14, sp)
      00C854 12 10            [ 1]  295 	sbc	a, (0x10, sp)
      00C856 6B 06            [ 1]  296 	ld	(0x06, sp), a
      00C858 7B 13            [ 1]  297 	ld	a, (0x13, sp)
      00C85A 12 0F            [ 1]  298 	sbc	a, (0x0f, sp)
      00C85C 6B 05            [ 1]  299 	ld	(0x05, sp), a
      00C85E 1E 07            [ 2]  300 	ldw	x, (0x07, sp)
      00C860 89               [ 2]  301 	pushw	x
      00C861 1E 07            [ 2]  302 	ldw	x, (0x07, sp)
      00C863 89               [ 2]  303 	pushw	x
      00C864 1E 07            [ 2]  304 	ldw	x, (0x07, sp)
      00C866 89               [ 2]  305 	pushw	x
      00C867 90 89            [ 2]  306 	pushw	y
      00C869 CD D7 A9         [ 4]  307 	call	__divslong
      00C86C 5B 08            [ 2]  308 	addw	sp, #8
      00C86E 51               [ 1]  309 	exgw	x, y
      00C86F 72 F9 19         [ 2]  310 	addw	y, (0x19, sp)
      00C872 9F               [ 1]  311 	ld	a, xl
      00C873 19 18            [ 1]  312 	adc	a, (0x18, sp)
      00C875 02               [ 1]  313 	rlwa	x
      00C876 19 17            [ 1]  314 	adc	a, (0x17, sp)
      00C878 95               [ 1]  315 	ld	xh, a
      00C879 51               [ 1]  316 	exgw	x, y
      00C87A                        317 00106$:
                           000194   318 	C$utils.c$46$1_0$367 ==.
                                    319 ;	utils.c: 46: }
      00C87A 5B 08            [ 2]  320 	addw	sp, #8
                           000196   321 	C$utils.c$46$1_0$367 ==.
                           000196   322 	XG$map_inverse$0$0 ==.
      00C87C 81               [ 4]  323 	ret
                           000197   324 	G$ui8_min$0$0 ==.
                           000197   325 	C$utils.c$51$1_0$369 ==.
                                    326 ;	utils.c: 51: uint8_t ui8_min(uint8_t value_a, uint8_t value_b)
                                    327 ;	-----------------------------------------
                                    328 ;	 function ui8_min
                                    329 ;	-----------------------------------------
      00C87D                        330 _ui8_min:
                           000197   331 	C$utils.c$53$1_0$369 ==.
                                    332 ;	utils.c: 53: if(value_a < value_b) return value_a;
      00C87D 7B 03            [ 1]  333 	ld	a, (0x03, sp)
      00C87F 11 04            [ 1]  334 	cp	a, (0x04, sp)
      00C881 24 04            [ 1]  335 	jrnc	00102$
      00C883 7B 03            [ 1]  336 	ld	a, (0x03, sp)
      00C885 20 02            [ 2]  337 	jra	00104$
      00C887                        338 00102$:
                           0001A1   339 	C$utils.c$54$1_0$369 ==.
                                    340 ;	utils.c: 54: else return value_b;
      00C887 7B 04            [ 1]  341 	ld	a, (0x04, sp)
      00C889                        342 00104$:
                           0001A3   343 	C$utils.c$55$1_0$369 ==.
                                    344 ;	utils.c: 55: }
                           0001A3   345 	C$utils.c$55$1_0$369 ==.
                           0001A3   346 	XG$ui8_min$0$0 ==.
      00C889 81               [ 4]  347 	ret
                           0001A4   348 	G$ui8_max$0$0 ==.
                           0001A4   349 	C$utils.c$60$1_0$371 ==.
                                    350 ;	utils.c: 60: uint8_t ui8_max(uint8_t value_a, uint8_t value_b)
                                    351 ;	-----------------------------------------
                                    352 ;	 function ui8_max
                                    353 ;	-----------------------------------------
      00C88A                        354 _ui8_max:
                           0001A4   355 	C$utils.c$62$1_0$371 ==.
                                    356 ;	utils.c: 62: if(value_a > value_b) return value_a;
      00C88A 7B 03            [ 1]  357 	ld	a, (0x03, sp)
      00C88C 11 04            [ 1]  358 	cp	a, (0x04, sp)
      00C88E 22 02            [ 1]  359 	jrugt	00104$
                           0001AA   360 	C$utils.c$63$1_0$371 ==.
                                    361 ;	utils.c: 63: else return value_b;
      00C890 7B 04            [ 1]  362 	ld	a, (0x04, sp)
      00C892                        363 00104$:
                           0001AC   364 	C$utils.c$64$1_0$371 ==.
                                    365 ;	utils.c: 64: }
                           0001AC   366 	C$utils.c$64$1_0$371 ==.
                           0001AC   367 	XG$ui8_max$0$0 ==.
      00C892 81               [ 4]  368 	ret
                           0001AD   369 	G$ui8_limit_max$0$0 ==.
                           0001AD   370 	C$utils.c$69$1_0$373 ==.
                                    371 ;	utils.c: 69: void ui8_limit_max(uint8_t *ui8_p_value, uint8_t ui8_max_value)
                                    372 ;	-----------------------------------------
                                    373 ;	 function ui8_limit_max
                                    374 ;	-----------------------------------------
      00C893                        375 _ui8_limit_max:
                           0001AD   376 	C$utils.c$71$1_0$373 ==.
                                    377 ;	utils.c: 71: if(*ui8_p_value > ui8_max_value) { *ui8_p_value = ui8_max_value; }
      00C893 1E 03            [ 2]  378 	ldw	x, (0x03, sp)
      00C895 F6               [ 1]  379 	ld	a, (x)
      00C896 11 05            [ 1]  380 	cp	a, (0x05, sp)
      00C898 23 03            [ 2]  381 	jrule	00103$
      00C89A 7B 05            [ 1]  382 	ld	a, (0x05, sp)
      00C89C F7               [ 1]  383 	ld	(x), a
      00C89D                        384 00103$:
                           0001B7   385 	C$utils.c$72$1_0$373 ==.
                                    386 ;	utils.c: 72: }
                           0001B7   387 	C$utils.c$72$1_0$373 ==.
                           0001B7   388 	XG$ui8_limit_max$0$0 ==.
      00C89D 81               [ 4]  389 	ret
                           0001B8   390 	G$pi_controller$0$0 ==.
                           0001B8   391 	C$utils.c$77$1_0$376 ==.
                                    392 ;	utils.c: 77: void pi_controller(struct_pi_controller_state *pi_controller)
                                    393 ;	-----------------------------------------
                                    394 ;	 function pi_controller
                                    395 ;	-----------------------------------------
      00C89E                        396 _pi_controller:
      00C89E 52 08            [ 2]  397 	sub	sp, #8
                           0001BA   398 	C$utils.c$83$1_0$376 ==.
                                    399 ;	utils.c: 83: i16_error = pi_controller->ui8_target_value - pi_controller->ui8_current_value; // 255-0 or 0-255 --> [-255 ; 255]
      00C8A0 16 0B            [ 2]  400 	ldw	y, (0x0b, sp)
      00C8A2 17 01            [ 2]  401 	ldw	(0x01, sp), y
      00C8A4 93               [ 1]  402 	ldw	x, y
      00C8A5 E6 01            [ 1]  403 	ld	a, (0x1, x)
      00C8A7 6B 04            [ 1]  404 	ld	(0x04, sp), a
      00C8A9 0F 03            [ 1]  405 	clr	(0x03, sp)
      00C8AB 1E 01            [ 2]  406 	ldw	x, (0x01, sp)
      00C8AD F6               [ 1]  407 	ld	a, (x)
      00C8AE 6B 08            [ 1]  408 	ld	(0x08, sp), a
      00C8B0 6B 06            [ 1]  409 	ld	(0x06, sp), a
      00C8B2 0F 05            [ 1]  410 	clr	(0x05, sp)
      00C8B4 1E 03            [ 2]  411 	ldw	x, (0x03, sp)
      00C8B6 72 F0 05         [ 2]  412 	subw	x, (0x05, sp)
      00C8B9 1F 07            [ 2]  413 	ldw	(0x07, sp), x
                           0001D5   414 	C$utils.c$84$1_0$376 ==.
                                    415 ;	utils.c: 84: i16_p_term = (i16_error * pi_controller->ui8_kp_dividend) >> pi_controller->ui8_kp_divisor;
      00C8BB 1E 01            [ 2]  416 	ldw	x, (0x01, sp)
      00C8BD E6 03            [ 1]  417 	ld	a, (0x3, x)
      00C8BF 5F               [ 1]  418 	clrw	x
      00C8C0 97               [ 1]  419 	ld	xl, a
      00C8C1 89               [ 2]  420 	pushw	x
      00C8C2 1E 09            [ 2]  421 	ldw	x, (0x09, sp)
      00C8C4 89               [ 2]  422 	pushw	x
      00C8C5 CD D5 14         [ 4]  423 	call	__mulint
      00C8C8 5B 04            [ 2]  424 	addw	sp, #4
      00C8CA 16 01            [ 2]  425 	ldw	y, (0x01, sp)
      00C8CC 90 E6 04         [ 1]  426 	ld	a, (0x4, y)
      00C8CF 27 04            [ 1]  427 	jreq	00128$
      00C8D1                        428 00127$:
      00C8D1 57               [ 2]  429 	sraw	x
      00C8D2 4A               [ 1]  430 	dec	a
      00C8D3 26 FC            [ 1]  431 	jrne	00127$
      00C8D5                        432 00128$:
      00C8D5 1F 03            [ 2]  433 	ldw	(0x03, sp), x
                           0001F1   434 	C$utils.c$86$1_0$376 ==.
                                    435 ;	utils.c: 86: pi_controller->i16_i_term += (i16_error * pi_controller->ui8_ki_dividend) >> pi_controller->ui8_ki_divisor;
      00C8D7 16 01            [ 2]  436 	ldw	y, (0x01, sp)
      00C8D9 72 A9 00 07      [ 2]  437 	addw	y, #0x0007
      00C8DD 93               [ 1]  438 	ldw	x, y
      00C8DE FE               [ 2]  439 	ldw	x, (x)
      00C8DF 1F 05            [ 2]  440 	ldw	(0x05, sp), x
      00C8E1 1E 01            [ 2]  441 	ldw	x, (0x01, sp)
      00C8E3 E6 05            [ 1]  442 	ld	a, (0x5, x)
      00C8E5 5F               [ 1]  443 	clrw	x
      00C8E6 97               [ 1]  444 	ld	xl, a
      00C8E7 90 89            [ 2]  445 	pushw	y
      00C8E9 89               [ 2]  446 	pushw	x
      00C8EA 1E 0B            [ 2]  447 	ldw	x, (0x0b, sp)
      00C8EC 89               [ 2]  448 	pushw	x
      00C8ED CD D5 14         [ 4]  449 	call	__mulint
      00C8F0 5B 04            [ 2]  450 	addw	sp, #4
      00C8F2 1F 09            [ 2]  451 	ldw	(0x09, sp), x
      00C8F4 90 85            [ 2]  452 	popw	y
      00C8F6 1E 01            [ 2]  453 	ldw	x, (0x01, sp)
      00C8F8 E6 06            [ 1]  454 	ld	a, (0x6, x)
      00C8FA 1E 07            [ 2]  455 	ldw	x, (0x07, sp)
      00C8FC 4D               [ 1]  456 	tnz	a
      00C8FD 27 04            [ 1]  457 	jreq	00130$
      00C8FF                        458 00129$:
      00C8FF 57               [ 2]  459 	sraw	x
      00C900 4A               [ 1]  460 	dec	a
      00C901 26 FC            [ 1]  461 	jrne	00129$
      00C903                        462 00130$:
      00C903 72 FB 05         [ 2]  463 	addw	x, (0x05, sp)
      00C906 90 FF            [ 2]  464 	ldw	(y), x
                           000222   465 	C$utils.c$87$1_0$376 ==.
                                    466 ;	utils.c: 87: if(pi_controller->i16_i_term > 255) { pi_controller->i16_i_term = 255; }
      00C908 A3 00 FF         [ 2]  467 	cpw	x, #0x00ff
      00C90B 2D 06            [ 1]  468 	jrsle	00102$
      00C90D 93               [ 1]  469 	ldw	x, y
      00C90E A6 FF            [ 1]  470 	ld	a, #0xff
      00C910 E7 01            [ 1]  471 	ld	(0x1, x), a
      00C912 7F               [ 1]  472 	clr	(x)
      00C913                        473 00102$:
                           00022D   474 	C$utils.c$88$1_0$376 ==.
                                    475 ;	utils.c: 88: if(pi_controller->i16_i_term < 0) { pi_controller->i16_i_term = 0; }
      00C913 93               [ 1]  476 	ldw	x, y
      00C914 FE               [ 2]  477 	ldw	x, (x)
      00C915 2A 04            [ 1]  478 	jrpl	00104$
      00C917 93               [ 1]  479 	ldw	x, y
      00C918 6F 01            [ 1]  480 	clr	(0x1, x)
      00C91A 7F               [ 1]  481 	clr	(x)
      00C91B                        482 00104$:
                           000235   483 	C$utils.c$90$1_0$376 ==.
                                    484 ;	utils.c: 90: i16_temp = i16_p_term + pi_controller->i16_i_term;
      00C91B 93               [ 1]  485 	ldw	x, y
      00C91C FE               [ 2]  486 	ldw	x, (x)
      00C91D 72 FB 03         [ 2]  487 	addw	x, (0x03, sp)
                           00023A   488 	C$utils.c$92$1_0$376 ==.
                                    489 ;	utils.c: 92: if(i16_temp > 255) { i16_temp = 255; }
      00C920 A3 00 FF         [ 2]  490 	cpw	x, #0x00ff
      00C923 2D 03            [ 1]  491 	jrsle	00106$
      00C925 AE 00 FF         [ 2]  492 	ldw	x, #0x00ff
      00C928                        493 00106$:
                           000242   494 	C$utils.c$93$1_0$376 ==.
                                    495 ;	utils.c: 93: if(i16_temp < 0) { i16_temp = 0; }
      00C928 5D               [ 2]  496 	tnzw	x
      00C929 2A 01            [ 1]  497 	jrpl	00108$
      00C92B 5F               [ 1]  498 	clrw	x
      00C92C                        499 00108$:
                           000246   500 	C$utils.c$94$1_0$376 ==.
                                    501 ;	utils.c: 94: pi_controller->ui8_controller_output_value = (uint8_t) i16_temp;
      00C92C 16 01            [ 2]  502 	ldw	y, (0x01, sp)
      00C92E 9F               [ 1]  503 	ld	a, xl
      00C92F 90 E7 02         [ 1]  504 	ld	(0x0002, y), a
                           00024C   505 	C$utils.c$95$1_0$376 ==.
                                    506 ;	utils.c: 95: }
      00C932 5B 08            [ 2]  507 	addw	sp, #8
                           00024E   508 	C$utils.c$95$1_0$376 ==.
                           00024E   509 	XG$pi_controller$0$0 ==.
      00C934 81               [ 4]  510 	ret
                           00024F   511 	G$pi_controller_reset$0$0 ==.
                           00024F   512 	C$utils.c$100$1_0$382 ==.
                                    513 ;	utils.c: 100: void pi_controller_reset(struct_pi_controller_state *pi_controller)
                                    514 ;	-----------------------------------------
                                    515 ;	 function pi_controller_reset
                                    516 ;	-----------------------------------------
      00C935                        517 _pi_controller_reset:
                           00024F   518 	C$utils.c$102$1_0$382 ==.
                                    519 ;	utils.c: 102: pi_controller->i16_i_term = 0;
      00C935 1E 03            [ 2]  520 	ldw	x, (0x03, sp)
      00C937 1C 00 07         [ 2]  521 	addw	x, #0x0007
      00C93A 6F 01            [ 1]  522 	clr	(0x1, x)
      00C93C 7F               [ 1]  523 	clr	(x)
                           000257   524 	C$utils.c$103$1_0$382 ==.
                                    525 ;	utils.c: 103: }
                           000257   526 	C$utils.c$103$1_0$382 ==.
                           000257   527 	XG$pi_controller_reset$0$0 ==.
      00C93D 81               [ 4]  528 	ret
                           000258   529 	G$crc16$0$0 ==.
                           000258   530 	C$utils.c$115$1_0$384 ==.
                                    531 ;	utils.c: 115: void crc16(uint8_t ui8_data, uint16_t* ui16_crc)
                                    532 ;	-----------------------------------------
                                    533 ;	 function crc16
                                    534 ;	-----------------------------------------
      00C93E                        535 _crc16:
      00C93E 52 04            [ 2]  536 	sub	sp, #4
                           00025A   537 	C$utils.c$119$1_0$384 ==.
                                    538 ;	utils.c: 119: *ui16_crc = *ui16_crc ^(uint16_t) ui8_data;
      00C940 16 08            [ 2]  539 	ldw	y, (0x08, sp)
      00C942 93               [ 1]  540 	ldw	x, y
      00C943 FE               [ 2]  541 	ldw	x, (x)
      00C944 7B 07            [ 1]  542 	ld	a, (0x07, sp)
      00C946 6B 04            [ 1]  543 	ld	(0x04, sp), a
      00C948 0F 03            [ 1]  544 	clr	(0x03, sp)
      00C94A 9F               [ 1]  545 	ld	a, xl
      00C94B 18 04            [ 1]  546 	xor	a, (0x04, sp)
      00C94D 02               [ 1]  547 	rlwa	x
      00C94E 18 03            [ 1]  548 	xor	a, (0x03, sp)
      00C950 95               [ 1]  549 	ld	xh, a
      00C951 90 FF            [ 2]  550 	ldw	(y), x
                           00026D   551 	C$utils.c$120$2_0$385 ==.
                                    552 ;	utils.c: 120: for(i = 8; i > 0; i--)
      00C953 AE 00 08         [ 2]  553 	ldw	x, #0x0008
      00C956 1F 01            [ 2]  554 	ldw	(0x01, sp), x
      00C958                        555 00105$:
                           000272   556 	C$utils.c$122$3_0$386 ==.
                                    557 ;	utils.c: 122: if(*ui16_crc & 0x0001)
      00C958 93               [ 1]  558 	ldw	x, y
      00C959 FE               [ 2]  559 	ldw	x, (x)
      00C95A 54               [ 2]  560 	srlw	x
      00C95B 24 0E            [ 1]  561 	jrnc	00102$
                           000277   562 	C$utils.c$123$3_0$386 ==.
                                    563 ;	utils.c: 123: *ui16_crc = (*ui16_crc >> 1) ^ 0xA001;
      00C95D 93               [ 1]  564 	ldw	x, y
      00C95E FE               [ 2]  565 	ldw	x, (x)
      00C95F 54               [ 2]  566 	srlw	x
      00C960 9F               [ 1]  567 	ld	a, xl
      00C961 A8 01            [ 1]  568 	xor	a, #0x01
      00C963 02               [ 1]  569 	rlwa	x
      00C964 A8 A0            [ 1]  570 	xor	a, #0xa0
      00C966 95               [ 1]  571 	ld	xh, a
      00C967 90 FF            [ 2]  572 	ldw	(y), x
      00C969 20 0D            [ 2]  573 	jra	00106$
      00C96B                        574 00102$:
                           000285   575 	C$utils.c$125$3_0$386 ==.
                                    576 ;	utils.c: 125: *ui16_crc >>= 1;
      00C96B 93               [ 1]  577 	ldw	x, y
      00C96C FE               [ 2]  578 	ldw	x, (x)
      00C96D 54               [ 2]  579 	srlw	x
      00C96E 1F 03            [ 2]  580 	ldw	(0x03, sp), x
      00C970 93               [ 1]  581 	ldw	x, y
      00C971 7B 04            [ 1]  582 	ld	a, (0x04, sp)
      00C973 E7 01            [ 1]  583 	ld	(0x1, x), a
      00C975 7B 03            [ 1]  584 	ld	a, (0x03, sp)
      00C977 F7               [ 1]  585 	ld	(x), a
      00C978                        586 00106$:
                           000292   587 	C$utils.c$120$2_0$385 ==.
                                    588 ;	utils.c: 120: for(i = 8; i > 0; i--)
      00C978 1E 01            [ 2]  589 	ldw	x, (0x01, sp)
      00C97A 5A               [ 2]  590 	decw	x
      00C97B 1F 01            [ 2]  591 	ldw	(0x01, sp), x
      00C97D 5D               [ 2]  592 	tnzw	x
      00C97E 26 D8            [ 1]  593 	jrne	00105$
                           00029A   594 	C$utils.c$127$2_0$384 ==.
                                    595 ;	utils.c: 127: }
      00C980 5B 04            [ 2]  596 	addw	sp, #4
                           00029C   597 	C$utils.c$127$2_0$384 ==.
                           00029C   598 	XG$crc16$0$0 ==.
      00C982 81               [ 4]  599 	ret
                                    600 	.area CODE
                                    601 	.area CONST
                                    602 	.area INITIALIZER
                                    603 	.area CABS (ABS)
