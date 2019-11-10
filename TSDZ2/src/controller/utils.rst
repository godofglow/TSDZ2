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
      00C67B                         62 _map:
      00C67B 52 10            [ 2]   63 	sub	sp, #16
                           000002    64 	C$utils.c$20$1_0$365 ==.
                                     65 ;	utils.c: 20: if(x < in_min)
      00C67D 1E 15            [ 2]   66 	ldw	x, (0x15, sp)
      00C67F 13 19            [ 2]   67 	cpw	x, (0x19, sp)
      00C681 7B 14            [ 1]   68 	ld	a, (0x14, sp)
      00C683 12 18            [ 1]   69 	sbc	a, (0x18, sp)
      00C685 7B 13            [ 1]   70 	ld	a, (0x13, sp)
      00C687 12 17            [ 1]   71 	sbc	a, (0x17, sp)
      00C689 2E 07            [ 1]   72 	jrsge	00108$
                           000010    73 	C$utils.c$21$1_0$365 ==.
                                     74 ;	utils.c: 21: return out_min;
      00C68B 1E 21            [ 2]   75 	ldw	x, (0x21, sp)
      00C68D 16 1F            [ 2]   76 	ldw	y, (0x1f, sp)
      00C68F CC C7 79         [ 2]   77 	jp	00110$
      00C692                         78 00108$:
                           000017    79 	C$utils.c$22$1_0$365 ==.
                                     80 ;	utils.c: 22: else if(x > in_max)
      00C692 1E 1D            [ 2]   81 	ldw	x, (0x1d, sp)
      00C694 13 15            [ 2]   82 	cpw	x, (0x15, sp)
      00C696 7B 1C            [ 1]   83 	ld	a, (0x1c, sp)
      00C698 12 14            [ 1]   84 	sbc	a, (0x14, sp)
      00C69A 7B 1B            [ 1]   85 	ld	a, (0x1b, sp)
      00C69C 12 13            [ 1]   86 	sbc	a, (0x13, sp)
      00C69E 2E 07            [ 1]   87 	jrsge	00105$
                           000025    88 	C$utils.c$23$1_0$365 ==.
                                     89 ;	utils.c: 23: return out_max;
      00C6A0 1E 25            [ 2]   90 	ldw	x, (0x25, sp)
      00C6A2 16 23            [ 2]   91 	ldw	y, (0x23, sp)
      00C6A4 CC C7 79         [ 2]   92 	jp	00110$
      00C6A7                         93 00105$:
                           00002C    94 	C$utils.c$27$1_0$365 ==.
                                     95 ;	utils.c: 27: else  if((in_max - in_min) > (out_max - out_min))
      00C6A7 1E 1D            [ 2]   96 	ldw	x, (0x1d, sp)
      00C6A9 72 F0 19         [ 2]   97 	subw	x, (0x19, sp)
      00C6AC 1F 03            [ 2]   98 	ldw	(0x03, sp), x
      00C6AE 7B 1C            [ 1]   99 	ld	a, (0x1c, sp)
      00C6B0 12 18            [ 1]  100 	sbc	a, (0x18, sp)
      00C6B2 6B 02            [ 1]  101 	ld	(0x02, sp), a
      00C6B4 7B 1B            [ 1]  102 	ld	a, (0x1b, sp)
      00C6B6 12 17            [ 1]  103 	sbc	a, (0x17, sp)
      00C6B8 6B 01            [ 1]  104 	ld	(0x01, sp), a
      00C6BA 1E 25            [ 2]  105 	ldw	x, (0x25, sp)
      00C6BC 72 F0 21         [ 2]  106 	subw	x, (0x21, sp)
      00C6BF 1F 07            [ 2]  107 	ldw	(0x07, sp), x
      00C6C1 7B 24            [ 1]  108 	ld	a, (0x24, sp)
      00C6C3 12 20            [ 1]  109 	sbc	a, (0x20, sp)
      00C6C5 6B 06            [ 1]  110 	ld	(0x06, sp), a
      00C6C7 7B 23            [ 1]  111 	ld	a, (0x23, sp)
      00C6C9 12 1F            [ 1]  112 	sbc	a, (0x1f, sp)
      00C6CB 6B 05            [ 1]  113 	ld	(0x05, sp), a
      00C6CD 1E 07            [ 2]  114 	ldw	x, (0x07, sp)
      00C6CF 13 03            [ 2]  115 	cpw	x, (0x03, sp)
      00C6D1 7B 06            [ 1]  116 	ld	a, (0x06, sp)
      00C6D3 12 02            [ 1]  117 	sbc	a, (0x02, sp)
      00C6D5 7B 05            [ 1]  118 	ld	a, (0x05, sp)
      00C6D7 12 01            [ 1]  119 	sbc	a, (0x01, sp)
      00C6D9 2E 5C            [ 1]  120 	jrsge	00102$
                           000060   121 	C$utils.c$28$1_0$365 ==.
                                    122 ;	utils.c: 28: return (x - in_min) * (out_max - out_min + 1) / (in_max - in_min + 1) + out_min;
      00C6DB 1E 15            [ 2]  123 	ldw	x, (0x15, sp)
      00C6DD 72 F0 19         [ 2]  124 	subw	x, (0x19, sp)
      00C6E0 1F 0B            [ 2]  125 	ldw	(0x0b, sp), x
      00C6E2 7B 14            [ 1]  126 	ld	a, (0x14, sp)
      00C6E4 12 18            [ 1]  127 	sbc	a, (0x18, sp)
      00C6E6 6B 0A            [ 1]  128 	ld	(0x0a, sp), a
      00C6E8 7B 13            [ 1]  129 	ld	a, (0x13, sp)
      00C6EA 12 17            [ 1]  130 	sbc	a, (0x17, sp)
      00C6EC 6B 09            [ 1]  131 	ld	(0x09, sp), a
      00C6EE 1E 07            [ 2]  132 	ldw	x, (0x07, sp)
      00C6F0 1C 00 01         [ 2]  133 	addw	x, #0x0001
      00C6F3 1F 0F            [ 2]  134 	ldw	(0x0f, sp), x
      00C6F5 1E 05            [ 2]  135 	ldw	x, (0x05, sp)
      00C6F7 24 01            [ 1]  136 	jrnc	00127$
      00C6F9 5C               [ 1]  137 	incw	x
      00C6FA                        138 00127$:
      00C6FA 7B 10            [ 1]  139 	ld	a, (0x10, sp)
      00C6FC 88               [ 1]  140 	push	a
      00C6FD 7B 10            [ 1]  141 	ld	a, (0x10, sp)
      00C6FF 88               [ 1]  142 	push	a
      00C700 89               [ 2]  143 	pushw	x
      00C701 1E 0F            [ 2]  144 	ldw	x, (0x0f, sp)
      00C703 89               [ 2]  145 	pushw	x
      00C704 1E 0F            [ 2]  146 	ldw	x, (0x0f, sp)
      00C706 89               [ 2]  147 	pushw	x
      00C707 CD DA 9D         [ 4]  148 	call	__mullong
      00C70A 5B 08            [ 2]  149 	addw	sp, #8
      00C70C 1F 0F            [ 2]  150 	ldw	(0x0f, sp), x
      00C70E 17 0D            [ 2]  151 	ldw	(0x0d, sp), y
      00C710 1E 03            [ 2]  152 	ldw	x, (0x03, sp)
      00C712 1C 00 01         [ 2]  153 	addw	x, #0x0001
      00C715 16 01            [ 2]  154 	ldw	y, (0x01, sp)
      00C717 24 02            [ 1]  155 	jrnc	00128$
      00C719 90 5C            [ 1]  156 	incw	y
      00C71B                        157 00128$:
      00C71B 89               [ 2]  158 	pushw	x
      00C71C 90 89            [ 2]  159 	pushw	y
      00C71E 1E 13            [ 2]  160 	ldw	x, (0x13, sp)
      00C720 89               [ 2]  161 	pushw	x
      00C721 1E 13            [ 2]  162 	ldw	x, (0x13, sp)
      00C723 89               [ 2]  163 	pushw	x
      00C724 CD D7 3E         [ 4]  164 	call	__divslong
      00C727 5B 08            [ 2]  165 	addw	sp, #8
      00C729 51               [ 1]  166 	exgw	x, y
      00C72A 72 F9 21         [ 2]  167 	addw	y, (0x21, sp)
      00C72D 9F               [ 1]  168 	ld	a, xl
      00C72E 19 20            [ 1]  169 	adc	a, (0x20, sp)
      00C730 02               [ 1]  170 	rlwa	x
      00C731 19 1F            [ 1]  171 	adc	a, (0x1f, sp)
      00C733 95               [ 1]  172 	ld	xh, a
      00C734 51               [ 1]  173 	exgw	x, y
      00C735 20 42            [ 2]  174 	jra	00110$
      00C737                        175 00102$:
                           0000BC   176 	C$utils.c$31$1_0$365 ==.
                                    177 ;	utils.c: 31: return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
      00C737 1E 15            [ 2]  178 	ldw	x, (0x15, sp)
      00C739 72 F0 19         [ 2]  179 	subw	x, (0x19, sp)
      00C73C 1F 0F            [ 2]  180 	ldw	(0x0f, sp), x
      00C73E 7B 14            [ 1]  181 	ld	a, (0x14, sp)
      00C740 12 18            [ 1]  182 	sbc	a, (0x18, sp)
      00C742 6B 0E            [ 1]  183 	ld	(0x0e, sp), a
      00C744 7B 13            [ 1]  184 	ld	a, (0x13, sp)
      00C746 12 17            [ 1]  185 	sbc	a, (0x17, sp)
      00C748 6B 0D            [ 1]  186 	ld	(0x0d, sp), a
      00C74A 1E 07            [ 2]  187 	ldw	x, (0x07, sp)
      00C74C 89               [ 2]  188 	pushw	x
      00C74D 1E 07            [ 2]  189 	ldw	x, (0x07, sp)
      00C74F 89               [ 2]  190 	pushw	x
      00C750 1E 13            [ 2]  191 	ldw	x, (0x13, sp)
      00C752 89               [ 2]  192 	pushw	x
      00C753 1E 13            [ 2]  193 	ldw	x, (0x13, sp)
      00C755 89               [ 2]  194 	pushw	x
      00C756 CD DA 9D         [ 4]  195 	call	__mullong
      00C759 5B 08            [ 2]  196 	addw	sp, #8
      00C75B 1F 0F            [ 2]  197 	ldw	(0x0f, sp), x
      00C75D 1E 03            [ 2]  198 	ldw	x, (0x03, sp)
      00C75F 89               [ 2]  199 	pushw	x
      00C760 1E 03            [ 2]  200 	ldw	x, (0x03, sp)
      00C762 89               [ 2]  201 	pushw	x
      00C763 1E 13            [ 2]  202 	ldw	x, (0x13, sp)
      00C765 89               [ 2]  203 	pushw	x
      00C766 90 89            [ 2]  204 	pushw	y
      00C768 CD D7 3E         [ 4]  205 	call	__divslong
      00C76B 5B 08            [ 2]  206 	addw	sp, #8
      00C76D 51               [ 1]  207 	exgw	x, y
      00C76E 72 F9 21         [ 2]  208 	addw	y, (0x21, sp)
      00C771 9F               [ 1]  209 	ld	a, xl
      00C772 19 20            [ 1]  210 	adc	a, (0x20, sp)
      00C774 02               [ 1]  211 	rlwa	x
      00C775 19 1F            [ 1]  212 	adc	a, (0x1f, sp)
      00C777 95               [ 1]  213 	ld	xh, a
      00C778 51               [ 1]  214 	exgw	x, y
      00C779                        215 00110$:
                           0000FE   216 	C$utils.c$32$1_0$365 ==.
                                    217 ;	utils.c: 32: }
      00C779 5B 10            [ 2]  218 	addw	sp, #16
                           000100   219 	C$utils.c$32$1_0$365 ==.
                           000100   220 	XG$map$0$0 ==.
      00C77B 81               [ 4]  221 	ret
                           000101   222 	G$map_inverse$0$0 ==.
                           000101   223 	C$utils.c$37$1_0$367 ==.
                                    224 ;	utils.c: 37: int32_t map_inverse(int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max)
                                    225 ;	-----------------------------------------
                                    226 ;	 function map_inverse
                                    227 ;	-----------------------------------------
      00C77C                        228 _map_inverse:
      00C77C 52 08            [ 2]  229 	sub	sp, #8
                           000103   230 	C$utils.c$40$1_0$367 ==.
                                    231 ;	utils.c: 40: if(x < in_min)
      00C77E 1E 0D            [ 2]  232 	ldw	x, (0x0d, sp)
      00C780 13 11            [ 2]  233 	cpw	x, (0x11, sp)
      00C782 7B 0C            [ 1]  234 	ld	a, (0x0c, sp)
      00C784 12 10            [ 1]  235 	sbc	a, (0x10, sp)
      00C786 7B 0B            [ 1]  236 	ld	a, (0x0b, sp)
      00C788 12 0F            [ 1]  237 	sbc	a, (0x0f, sp)
      00C78A 2E 07            [ 1]  238 	jrsge	00104$
                           000111   239 	C$utils.c$41$1_0$367 ==.
                                    240 ;	utils.c: 41: return out_min;
      00C78C 1E 19            [ 2]  241 	ldw	x, (0x19, sp)
      00C78E 16 17            [ 2]  242 	ldw	y, (0x17, sp)
      00C790 CC C8 0F         [ 2]  243 	jp	00106$
      00C793                        244 00104$:
                           000118   245 	C$utils.c$42$1_0$367 ==.
                                    246 ;	utils.c: 42: else if(x > in_max)
      00C793 1E 15            [ 2]  247 	ldw	x, (0x15, sp)
      00C795 13 0D            [ 2]  248 	cpw	x, (0x0d, sp)
      00C797 7B 14            [ 1]  249 	ld	a, (0x14, sp)
      00C799 12 0C            [ 1]  250 	sbc	a, (0x0c, sp)
      00C79B 7B 13            [ 1]  251 	ld	a, (0x13, sp)
      00C79D 12 0B            [ 1]  252 	sbc	a, (0x0b, sp)
      00C79F 2E 06            [ 1]  253 	jrsge	00105$
                           000126   254 	C$utils.c$43$1_0$367 ==.
                                    255 ;	utils.c: 43: return out_max;
      00C7A1 1E 1D            [ 2]  256 	ldw	x, (0x1d, sp)
      00C7A3 16 1B            [ 2]  257 	ldw	y, (0x1b, sp)
      00C7A5 20 68            [ 2]  258 	jra	00106$
      00C7A7                        259 00105$:
                           00012C   260 	C$utils.c$45$1_0$367 ==.
                                    261 ;	utils.c: 45: return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
      00C7A7 1E 0D            [ 2]  262 	ldw	x, (0x0d, sp)
      00C7A9 72 F0 11         [ 2]  263 	subw	x, (0x11, sp)
      00C7AC 1F 03            [ 2]  264 	ldw	(0x03, sp), x
      00C7AE 7B 0C            [ 1]  265 	ld	a, (0x0c, sp)
      00C7B0 12 10            [ 1]  266 	sbc	a, (0x10, sp)
      00C7B2 6B 02            [ 1]  267 	ld	(0x02, sp), a
      00C7B4 7B 0B            [ 1]  268 	ld	a, (0x0b, sp)
      00C7B6 12 0F            [ 1]  269 	sbc	a, (0x0f, sp)
      00C7B8 6B 01            [ 1]  270 	ld	(0x01, sp), a
      00C7BA 1E 1D            [ 2]  271 	ldw	x, (0x1d, sp)
      00C7BC 72 F0 19         [ 2]  272 	subw	x, (0x19, sp)
      00C7BF 1F 07            [ 2]  273 	ldw	(0x07, sp), x
      00C7C1 7B 1C            [ 1]  274 	ld	a, (0x1c, sp)
      00C7C3 12 18            [ 1]  275 	sbc	a, (0x18, sp)
      00C7C5 6B 06            [ 1]  276 	ld	(0x06, sp), a
      00C7C7 7B 1B            [ 1]  277 	ld	a, (0x1b, sp)
      00C7C9 12 17            [ 1]  278 	sbc	a, (0x17, sp)
      00C7CB 6B 05            [ 1]  279 	ld	(0x05, sp), a
      00C7CD 1E 07            [ 2]  280 	ldw	x, (0x07, sp)
      00C7CF 89               [ 2]  281 	pushw	x
      00C7D0 1E 07            [ 2]  282 	ldw	x, (0x07, sp)
      00C7D2 89               [ 2]  283 	pushw	x
      00C7D3 1E 07            [ 2]  284 	ldw	x, (0x07, sp)
      00C7D5 89               [ 2]  285 	pushw	x
      00C7D6 1E 07            [ 2]  286 	ldw	x, (0x07, sp)
      00C7D8 89               [ 2]  287 	pushw	x
      00C7D9 CD DA 9D         [ 4]  288 	call	__mullong
      00C7DC 5B 08            [ 2]  289 	addw	sp, #8
      00C7DE 1F 03            [ 2]  290 	ldw	(0x03, sp), x
      00C7E0 1E 15            [ 2]  291 	ldw	x, (0x15, sp)
      00C7E2 72 F0 11         [ 2]  292 	subw	x, (0x11, sp)
      00C7E5 1F 07            [ 2]  293 	ldw	(0x07, sp), x
      00C7E7 7B 14            [ 1]  294 	ld	a, (0x14, sp)
      00C7E9 12 10            [ 1]  295 	sbc	a, (0x10, sp)
      00C7EB 6B 06            [ 1]  296 	ld	(0x06, sp), a
      00C7ED 7B 13            [ 1]  297 	ld	a, (0x13, sp)
      00C7EF 12 0F            [ 1]  298 	sbc	a, (0x0f, sp)
      00C7F1 6B 05            [ 1]  299 	ld	(0x05, sp), a
      00C7F3 1E 07            [ 2]  300 	ldw	x, (0x07, sp)
      00C7F5 89               [ 2]  301 	pushw	x
      00C7F6 1E 07            [ 2]  302 	ldw	x, (0x07, sp)
      00C7F8 89               [ 2]  303 	pushw	x
      00C7F9 1E 07            [ 2]  304 	ldw	x, (0x07, sp)
      00C7FB 89               [ 2]  305 	pushw	x
      00C7FC 90 89            [ 2]  306 	pushw	y
      00C7FE CD D7 3E         [ 4]  307 	call	__divslong
      00C801 5B 08            [ 2]  308 	addw	sp, #8
      00C803 51               [ 1]  309 	exgw	x, y
      00C804 72 F9 19         [ 2]  310 	addw	y, (0x19, sp)
      00C807 9F               [ 1]  311 	ld	a, xl
      00C808 19 18            [ 1]  312 	adc	a, (0x18, sp)
      00C80A 02               [ 1]  313 	rlwa	x
      00C80B 19 17            [ 1]  314 	adc	a, (0x17, sp)
      00C80D 95               [ 1]  315 	ld	xh, a
      00C80E 51               [ 1]  316 	exgw	x, y
      00C80F                        317 00106$:
                           000194   318 	C$utils.c$46$1_0$367 ==.
                                    319 ;	utils.c: 46: }
      00C80F 5B 08            [ 2]  320 	addw	sp, #8
                           000196   321 	C$utils.c$46$1_0$367 ==.
                           000196   322 	XG$map_inverse$0$0 ==.
      00C811 81               [ 4]  323 	ret
                           000197   324 	G$ui8_min$0$0 ==.
                           000197   325 	C$utils.c$51$1_0$369 ==.
                                    326 ;	utils.c: 51: uint8_t ui8_min(uint8_t value_a, uint8_t value_b)
                                    327 ;	-----------------------------------------
                                    328 ;	 function ui8_min
                                    329 ;	-----------------------------------------
      00C812                        330 _ui8_min:
                           000197   331 	C$utils.c$53$1_0$369 ==.
                                    332 ;	utils.c: 53: if(value_a < value_b) return value_a;
      00C812 7B 03            [ 1]  333 	ld	a, (0x03, sp)
      00C814 11 04            [ 1]  334 	cp	a, (0x04, sp)
      00C816 24 04            [ 1]  335 	jrnc	00102$
      00C818 7B 03            [ 1]  336 	ld	a, (0x03, sp)
      00C81A 20 02            [ 2]  337 	jra	00104$
      00C81C                        338 00102$:
                           0001A1   339 	C$utils.c$54$1_0$369 ==.
                                    340 ;	utils.c: 54: else return value_b;
      00C81C 7B 04            [ 1]  341 	ld	a, (0x04, sp)
      00C81E                        342 00104$:
                           0001A3   343 	C$utils.c$55$1_0$369 ==.
                                    344 ;	utils.c: 55: }
                           0001A3   345 	C$utils.c$55$1_0$369 ==.
                           0001A3   346 	XG$ui8_min$0$0 ==.
      00C81E 81               [ 4]  347 	ret
                           0001A4   348 	G$ui8_max$0$0 ==.
                           0001A4   349 	C$utils.c$60$1_0$371 ==.
                                    350 ;	utils.c: 60: uint8_t ui8_max(uint8_t value_a, uint8_t value_b)
                                    351 ;	-----------------------------------------
                                    352 ;	 function ui8_max
                                    353 ;	-----------------------------------------
      00C81F                        354 _ui8_max:
                           0001A4   355 	C$utils.c$62$1_0$371 ==.
                                    356 ;	utils.c: 62: if(value_a > value_b) return value_a;
      00C81F 7B 03            [ 1]  357 	ld	a, (0x03, sp)
      00C821 11 04            [ 1]  358 	cp	a, (0x04, sp)
      00C823 22 02            [ 1]  359 	jrugt	00104$
                           0001AA   360 	C$utils.c$63$1_0$371 ==.
                                    361 ;	utils.c: 63: else return value_b;
      00C825 7B 04            [ 1]  362 	ld	a, (0x04, sp)
      00C827                        363 00104$:
                           0001AC   364 	C$utils.c$64$1_0$371 ==.
                                    365 ;	utils.c: 64: }
                           0001AC   366 	C$utils.c$64$1_0$371 ==.
                           0001AC   367 	XG$ui8_max$0$0 ==.
      00C827 81               [ 4]  368 	ret
                           0001AD   369 	G$ui8_limit_max$0$0 ==.
                           0001AD   370 	C$utils.c$69$1_0$373 ==.
                                    371 ;	utils.c: 69: void ui8_limit_max(uint8_t *ui8_p_value, uint8_t ui8_max_value)
                                    372 ;	-----------------------------------------
                                    373 ;	 function ui8_limit_max
                                    374 ;	-----------------------------------------
      00C828                        375 _ui8_limit_max:
                           0001AD   376 	C$utils.c$71$1_0$373 ==.
                                    377 ;	utils.c: 71: if(*ui8_p_value > ui8_max_value) { *ui8_p_value = ui8_max_value; }
      00C828 1E 03            [ 2]  378 	ldw	x, (0x03, sp)
      00C82A F6               [ 1]  379 	ld	a, (x)
      00C82B 11 05            [ 1]  380 	cp	a, (0x05, sp)
      00C82D 23 03            [ 2]  381 	jrule	00103$
      00C82F 7B 05            [ 1]  382 	ld	a, (0x05, sp)
      00C831 F7               [ 1]  383 	ld	(x), a
      00C832                        384 00103$:
                           0001B7   385 	C$utils.c$72$1_0$373 ==.
                                    386 ;	utils.c: 72: }
                           0001B7   387 	C$utils.c$72$1_0$373 ==.
                           0001B7   388 	XG$ui8_limit_max$0$0 ==.
      00C832 81               [ 4]  389 	ret
                           0001B8   390 	G$pi_controller$0$0 ==.
                           0001B8   391 	C$utils.c$77$1_0$376 ==.
                                    392 ;	utils.c: 77: void pi_controller(struct_pi_controller_state *pi_controller)
                                    393 ;	-----------------------------------------
                                    394 ;	 function pi_controller
                                    395 ;	-----------------------------------------
      00C833                        396 _pi_controller:
      00C833 52 08            [ 2]  397 	sub	sp, #8
                           0001BA   398 	C$utils.c$83$1_0$376 ==.
                                    399 ;	utils.c: 83: i16_error = pi_controller->ui8_target_value - pi_controller->ui8_current_value; // 255-0 or 0-255 --> [-255 ; 255]
      00C835 16 0B            [ 2]  400 	ldw	y, (0x0b, sp)
      00C837 17 01            [ 2]  401 	ldw	(0x01, sp), y
      00C839 93               [ 1]  402 	ldw	x, y
      00C83A E6 01            [ 1]  403 	ld	a, (0x1, x)
      00C83C 6B 04            [ 1]  404 	ld	(0x04, sp), a
      00C83E 0F 03            [ 1]  405 	clr	(0x03, sp)
      00C840 1E 01            [ 2]  406 	ldw	x, (0x01, sp)
      00C842 F6               [ 1]  407 	ld	a, (x)
      00C843 6B 08            [ 1]  408 	ld	(0x08, sp), a
      00C845 6B 06            [ 1]  409 	ld	(0x06, sp), a
      00C847 0F 05            [ 1]  410 	clr	(0x05, sp)
      00C849 1E 03            [ 2]  411 	ldw	x, (0x03, sp)
      00C84B 72 F0 05         [ 2]  412 	subw	x, (0x05, sp)
      00C84E 1F 07            [ 2]  413 	ldw	(0x07, sp), x
                           0001D5   414 	C$utils.c$84$1_0$376 ==.
                                    415 ;	utils.c: 84: i16_p_term = (i16_error * pi_controller->ui8_kp_dividend) >> pi_controller->ui8_kp_divisor;
      00C850 1E 01            [ 2]  416 	ldw	x, (0x01, sp)
      00C852 E6 03            [ 1]  417 	ld	a, (0x3, x)
      00C854 5F               [ 1]  418 	clrw	x
      00C855 97               [ 1]  419 	ld	xl, a
      00C856 89               [ 2]  420 	pushw	x
      00C857 1E 09            [ 2]  421 	ldw	x, (0x09, sp)
      00C859 89               [ 2]  422 	pushw	x
      00C85A CD D4 A9         [ 4]  423 	call	__mulint
      00C85D 5B 04            [ 2]  424 	addw	sp, #4
      00C85F 16 01            [ 2]  425 	ldw	y, (0x01, sp)
      00C861 90 E6 04         [ 1]  426 	ld	a, (0x4, y)
      00C864 27 04            [ 1]  427 	jreq	00128$
      00C866                        428 00127$:
      00C866 57               [ 2]  429 	sraw	x
      00C867 4A               [ 1]  430 	dec	a
      00C868 26 FC            [ 1]  431 	jrne	00127$
      00C86A                        432 00128$:
      00C86A 1F 03            [ 2]  433 	ldw	(0x03, sp), x
                           0001F1   434 	C$utils.c$86$1_0$376 ==.
                                    435 ;	utils.c: 86: pi_controller->i16_i_term += (i16_error * pi_controller->ui8_ki_dividend) >> pi_controller->ui8_ki_divisor;
      00C86C 16 01            [ 2]  436 	ldw	y, (0x01, sp)
      00C86E 72 A9 00 07      [ 2]  437 	addw	y, #0x0007
      00C872 93               [ 1]  438 	ldw	x, y
      00C873 FE               [ 2]  439 	ldw	x, (x)
      00C874 1F 05            [ 2]  440 	ldw	(0x05, sp), x
      00C876 1E 01            [ 2]  441 	ldw	x, (0x01, sp)
      00C878 E6 05            [ 1]  442 	ld	a, (0x5, x)
      00C87A 5F               [ 1]  443 	clrw	x
      00C87B 97               [ 1]  444 	ld	xl, a
      00C87C 90 89            [ 2]  445 	pushw	y
      00C87E 89               [ 2]  446 	pushw	x
      00C87F 1E 0B            [ 2]  447 	ldw	x, (0x0b, sp)
      00C881 89               [ 2]  448 	pushw	x
      00C882 CD D4 A9         [ 4]  449 	call	__mulint
      00C885 5B 04            [ 2]  450 	addw	sp, #4
      00C887 1F 09            [ 2]  451 	ldw	(0x09, sp), x
      00C889 90 85            [ 2]  452 	popw	y
      00C88B 1E 01            [ 2]  453 	ldw	x, (0x01, sp)
      00C88D E6 06            [ 1]  454 	ld	a, (0x6, x)
      00C88F 1E 07            [ 2]  455 	ldw	x, (0x07, sp)
      00C891 4D               [ 1]  456 	tnz	a
      00C892 27 04            [ 1]  457 	jreq	00130$
      00C894                        458 00129$:
      00C894 57               [ 2]  459 	sraw	x
      00C895 4A               [ 1]  460 	dec	a
      00C896 26 FC            [ 1]  461 	jrne	00129$
      00C898                        462 00130$:
      00C898 72 FB 05         [ 2]  463 	addw	x, (0x05, sp)
      00C89B 90 FF            [ 2]  464 	ldw	(y), x
                           000222   465 	C$utils.c$87$1_0$376 ==.
                                    466 ;	utils.c: 87: if(pi_controller->i16_i_term > 255) { pi_controller->i16_i_term = 255; }
      00C89D A3 00 FF         [ 2]  467 	cpw	x, #0x00ff
      00C8A0 2D 06            [ 1]  468 	jrsle	00102$
      00C8A2 93               [ 1]  469 	ldw	x, y
      00C8A3 A6 FF            [ 1]  470 	ld	a, #0xff
      00C8A5 E7 01            [ 1]  471 	ld	(0x1, x), a
      00C8A7 7F               [ 1]  472 	clr	(x)
      00C8A8                        473 00102$:
                           00022D   474 	C$utils.c$88$1_0$376 ==.
                                    475 ;	utils.c: 88: if(pi_controller->i16_i_term < 0) { pi_controller->i16_i_term = 0; }
      00C8A8 93               [ 1]  476 	ldw	x, y
      00C8A9 FE               [ 2]  477 	ldw	x, (x)
      00C8AA 2A 04            [ 1]  478 	jrpl	00104$
      00C8AC 93               [ 1]  479 	ldw	x, y
      00C8AD 6F 01            [ 1]  480 	clr	(0x1, x)
      00C8AF 7F               [ 1]  481 	clr	(x)
      00C8B0                        482 00104$:
                           000235   483 	C$utils.c$90$1_0$376 ==.
                                    484 ;	utils.c: 90: i16_temp = i16_p_term + pi_controller->i16_i_term;
      00C8B0 93               [ 1]  485 	ldw	x, y
      00C8B1 FE               [ 2]  486 	ldw	x, (x)
      00C8B2 72 FB 03         [ 2]  487 	addw	x, (0x03, sp)
                           00023A   488 	C$utils.c$92$1_0$376 ==.
                                    489 ;	utils.c: 92: if(i16_temp > 255) { i16_temp = 255; }
      00C8B5 A3 00 FF         [ 2]  490 	cpw	x, #0x00ff
      00C8B8 2D 03            [ 1]  491 	jrsle	00106$
      00C8BA AE 00 FF         [ 2]  492 	ldw	x, #0x00ff
      00C8BD                        493 00106$:
                           000242   494 	C$utils.c$93$1_0$376 ==.
                                    495 ;	utils.c: 93: if(i16_temp < 0) { i16_temp = 0; }
      00C8BD 5D               [ 2]  496 	tnzw	x
      00C8BE 2A 01            [ 1]  497 	jrpl	00108$
      00C8C0 5F               [ 1]  498 	clrw	x
      00C8C1                        499 00108$:
                           000246   500 	C$utils.c$94$1_0$376 ==.
                                    501 ;	utils.c: 94: pi_controller->ui8_controller_output_value = (uint8_t) i16_temp;
      00C8C1 16 01            [ 2]  502 	ldw	y, (0x01, sp)
      00C8C3 9F               [ 1]  503 	ld	a, xl
      00C8C4 90 E7 02         [ 1]  504 	ld	(0x0002, y), a
                           00024C   505 	C$utils.c$95$1_0$376 ==.
                                    506 ;	utils.c: 95: }
      00C8C7 5B 08            [ 2]  507 	addw	sp, #8
                           00024E   508 	C$utils.c$95$1_0$376 ==.
                           00024E   509 	XG$pi_controller$0$0 ==.
      00C8C9 81               [ 4]  510 	ret
                           00024F   511 	G$pi_controller_reset$0$0 ==.
                           00024F   512 	C$utils.c$100$1_0$382 ==.
                                    513 ;	utils.c: 100: void pi_controller_reset(struct_pi_controller_state *pi_controller)
                                    514 ;	-----------------------------------------
                                    515 ;	 function pi_controller_reset
                                    516 ;	-----------------------------------------
      00C8CA                        517 _pi_controller_reset:
                           00024F   518 	C$utils.c$102$1_0$382 ==.
                                    519 ;	utils.c: 102: pi_controller->i16_i_term = 0;
      00C8CA 1E 03            [ 2]  520 	ldw	x, (0x03, sp)
      00C8CC 1C 00 07         [ 2]  521 	addw	x, #0x0007
      00C8CF 6F 01            [ 1]  522 	clr	(0x1, x)
      00C8D1 7F               [ 1]  523 	clr	(x)
                           000257   524 	C$utils.c$103$1_0$382 ==.
                                    525 ;	utils.c: 103: }
                           000257   526 	C$utils.c$103$1_0$382 ==.
                           000257   527 	XG$pi_controller_reset$0$0 ==.
      00C8D2 81               [ 4]  528 	ret
                           000258   529 	G$crc16$0$0 ==.
                           000258   530 	C$utils.c$115$1_0$384 ==.
                                    531 ;	utils.c: 115: void crc16(uint8_t ui8_data, uint16_t* ui16_crc)
                                    532 ;	-----------------------------------------
                                    533 ;	 function crc16
                                    534 ;	-----------------------------------------
      00C8D3                        535 _crc16:
      00C8D3 52 04            [ 2]  536 	sub	sp, #4
                           00025A   537 	C$utils.c$119$1_0$384 ==.
                                    538 ;	utils.c: 119: *ui16_crc = *ui16_crc ^(uint16_t) ui8_data;
      00C8D5 16 08            [ 2]  539 	ldw	y, (0x08, sp)
      00C8D7 93               [ 1]  540 	ldw	x, y
      00C8D8 FE               [ 2]  541 	ldw	x, (x)
      00C8D9 7B 07            [ 1]  542 	ld	a, (0x07, sp)
      00C8DB 6B 04            [ 1]  543 	ld	(0x04, sp), a
      00C8DD 0F 03            [ 1]  544 	clr	(0x03, sp)
      00C8DF 9F               [ 1]  545 	ld	a, xl
      00C8E0 18 04            [ 1]  546 	xor	a, (0x04, sp)
      00C8E2 02               [ 1]  547 	rlwa	x
      00C8E3 18 03            [ 1]  548 	xor	a, (0x03, sp)
      00C8E5 95               [ 1]  549 	ld	xh, a
      00C8E6 90 FF            [ 2]  550 	ldw	(y), x
                           00026D   551 	C$utils.c$120$2_0$385 ==.
                                    552 ;	utils.c: 120: for(i = 8; i > 0; i--)
      00C8E8 AE 00 08         [ 2]  553 	ldw	x, #0x0008
      00C8EB 1F 01            [ 2]  554 	ldw	(0x01, sp), x
      00C8ED                        555 00105$:
                           000272   556 	C$utils.c$122$3_0$386 ==.
                                    557 ;	utils.c: 122: if(*ui16_crc & 0x0001)
      00C8ED 93               [ 1]  558 	ldw	x, y
      00C8EE FE               [ 2]  559 	ldw	x, (x)
      00C8EF 54               [ 2]  560 	srlw	x
      00C8F0 24 0E            [ 1]  561 	jrnc	00102$
                           000277   562 	C$utils.c$123$3_0$386 ==.
                                    563 ;	utils.c: 123: *ui16_crc = (*ui16_crc >> 1) ^ 0xA001;
      00C8F2 93               [ 1]  564 	ldw	x, y
      00C8F3 FE               [ 2]  565 	ldw	x, (x)
      00C8F4 54               [ 2]  566 	srlw	x
      00C8F5 9F               [ 1]  567 	ld	a, xl
      00C8F6 A8 01            [ 1]  568 	xor	a, #0x01
      00C8F8 02               [ 1]  569 	rlwa	x
      00C8F9 A8 A0            [ 1]  570 	xor	a, #0xa0
      00C8FB 95               [ 1]  571 	ld	xh, a
      00C8FC 90 FF            [ 2]  572 	ldw	(y), x
      00C8FE 20 0D            [ 2]  573 	jra	00106$
      00C900                        574 00102$:
                           000285   575 	C$utils.c$125$3_0$386 ==.
                                    576 ;	utils.c: 125: *ui16_crc >>= 1;
      00C900 93               [ 1]  577 	ldw	x, y
      00C901 FE               [ 2]  578 	ldw	x, (x)
      00C902 54               [ 2]  579 	srlw	x
      00C903 1F 03            [ 2]  580 	ldw	(0x03, sp), x
      00C905 93               [ 1]  581 	ldw	x, y
      00C906 7B 04            [ 1]  582 	ld	a, (0x04, sp)
      00C908 E7 01            [ 1]  583 	ld	(0x1, x), a
      00C90A 7B 03            [ 1]  584 	ld	a, (0x03, sp)
      00C90C F7               [ 1]  585 	ld	(x), a
      00C90D                        586 00106$:
                           000292   587 	C$utils.c$120$2_0$385 ==.
                                    588 ;	utils.c: 120: for(i = 8; i > 0; i--)
      00C90D 1E 01            [ 2]  589 	ldw	x, (0x01, sp)
      00C90F 5A               [ 2]  590 	decw	x
      00C910 1F 01            [ 2]  591 	ldw	(0x01, sp), x
      00C912 5D               [ 2]  592 	tnzw	x
      00C913 26 D8            [ 1]  593 	jrne	00105$
                           00029A   594 	C$utils.c$127$2_0$384 ==.
                                    595 ;	utils.c: 127: }
      00C915 5B 04            [ 2]  596 	addw	sp, #4
                           00029C   597 	C$utils.c$127$2_0$384 ==.
                           00029C   598 	XG$crc16$0$0 ==.
      00C917 81               [ 4]  599 	ret
                                    600 	.area CODE
                                    601 	.area CONST
                                    602 	.area INITIALIZER
                                    603 	.area CABS (ABS)
