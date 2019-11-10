                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _eeprom_write_variables
                                     12 	.globl _get_configuration_variables
                                     13 	.globl _FLASH_GetFlagStatus
                                     14 	.globl _FLASH_SetProgrammingTime
                                     15 	.globl _FLASH_ReadByte
                                     16 	.globl _FLASH_ProgramByte
                                     17 	.globl _FLASH_Lock
                                     18 	.globl _FLASH_Unlock
                                     19 	.globl _eeprom_init
                                     20 	.globl _eeprom_init_variables
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                           000000    25 Leeprom.eeprom_read_values_to_variables$ui8_temp$1_0$360==.
      00005C                         26 _eeprom_read_values_to_variables_ui8_temp_65536_360:
      00005C                         27 	.ds 1
                           000001    28 Leeprom.eeprom_read_values_to_variables$ui16_temp$1_0$360==.
      00005D                         29 _eeprom_read_values_to_variables_ui16_temp_65536_360:
      00005D                         30 	.ds 2
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area INITIALIZED
                           000000    35 Feeprom$array_default_values$0_0$0==.
      000254                         36 _array_default_values:
      000254                         37 	.ds 47
                                     38 ;--------------------------------------------------------
                                     39 ; absolute external ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DABS (ABS)
                                     42 
                                     43 ; default segment ordering for linker
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area CONST
                                     48 	.area INITIALIZER
                                     49 	.area CODE
                                     50 
                                     51 ;--------------------------------------------------------
                                     52 ; global & static initialisations
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area GSINIT
                                     56 	.area GSFINAL
                                     57 	.area GSINIT
                                     58 ;--------------------------------------------------------
                                     59 ; Home
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area HOME
                                     63 ;--------------------------------------------------------
                                     64 ; code
                                     65 ;--------------------------------------------------------
                                     66 	.area CODE
                           000000    67 	G$eeprom_init$0$0 ==.
                           000000    68 	C$eeprom.c$74$0_0$354 ==.
                                     69 ;	eeprom.c: 74: void eeprom_init(void)
                                     70 ;	-----------------------------------------
                                     71 ;	 function eeprom_init
                                     72 ;	-----------------------------------------
      00C918                         73 _eeprom_init:
                           000000    74 	C$eeprom.c$81$1_0$354 ==.
                                     75 ;	eeprom.c: 81: ui8_key1 = FLASH_ReadByte(ADDR_KEY);
      00C918 4B 00            [ 1]   76 	push	#0x00
      00C91A 4B 40            [ 1]   77 	push	#0x40
      00C91C 5F               [ 1]   78 	clrw	x
      00C91D 89               [ 2]   79 	pushw	x
      00C91E CD A6 1A         [ 4]   80 	call	_FLASH_ReadByte
      00C921 5B 04            [ 2]   81 	addw	sp, #4
                           00000B    82 	C$eeprom.c$82$1_0$354 ==.
                                     83 ;	eeprom.c: 82: ui8_key2 = FLASH_ReadByte(ADDR_KEY2);
      00C923 88               [ 1]   84 	push	a
      00C924 4B 2E            [ 1]   85 	push	#0x2e
      00C926 4B 40            [ 1]   86 	push	#0x40
      00C928 5F               [ 1]   87 	clrw	x
      00C929 89               [ 2]   88 	pushw	x
      00C92A CD A6 1A         [ 4]   89 	call	_FLASH_ReadByte
      00C92D 5B 04            [ 2]   90 	addw	sp, #4
      00C92F 97               [ 1]   91 	ld	xl, a
      00C930 84               [ 1]   92 	pop	a
                           000019    93 	C$eeprom.c$83$1_0$354 ==.
                                     94 ;	eeprom.c: 83: if((ui8_key1 != KEY)||(ui8_key2 != KEY2)) // verify if our keys exist
      00C931 A1 AA            [ 1]   95 	cp	a, #0xaa
      00C933 26 05            [ 1]   96 	jrne	00101$
      00C935 9F               [ 1]   97 	ld	a, xl
      00C936 A1 55            [ 1]   98 	cp	a, #0x55
      00C938 27 09            [ 1]   99 	jreq	00104$
      00C93A                        100 00101$:
                           000022   101 	C$eeprom.c$85$2_0$355 ==.
                                    102 ;	eeprom.c: 85: eeprom_write_array(array_default_values);
      00C93A 4B 54            [ 1]  103 	push	#<(_array_default_values + 0)
      00C93C 4B 02            [ 1]  104 	push	#((_array_default_values + 0) >> 8)
      00C93E CD D0 C3         [ 4]  105 	call	_eeprom_write_array
      00C941 5B 02            [ 2]  106 	addw	sp, #2
      00C943                        107 00104$:
                           00002B   108 	C$eeprom.c$87$1_0$354 ==.
                                    109 ;	eeprom.c: 87: }
                           00002B   110 	C$eeprom.c$87$1_0$354 ==.
                           00002B   111 	XG$eeprom_init$0$0 ==.
      00C943 81               [ 4]  112 	ret
                           00002C   113 	G$eeprom_init_variables$0$0 ==.
                           00002C   114 	C$eeprom.c$92$1_0$357 ==.
                                    115 ;	eeprom.c: 92: void eeprom_init_variables(void)
                                    116 ;	-----------------------------------------
                                    117 ;	 function eeprom_init_variables
                                    118 ;	-----------------------------------------
      00C944                        119 _eeprom_init_variables:
                           00002C   120 	C$eeprom.c$95$1_0$357 ==.
                                    121 ;	eeprom.c: 95: p_configuration_variables = get_configuration_variables();
      00C944 CD C6 33         [ 4]  122 	call	_get_configuration_variables
      00C947 51               [ 1]  123 	exgw	x, y
                           000030   124 	C$eeprom.c$97$1_0$357 ==.
                                    125 ;	eeprom.c: 97: eeprom_read_values_to_variables();
      00C948 90 89            [ 2]  126 	pushw	y
      00C94A CD C9 C1         [ 4]  127 	call	_eeprom_read_values_to_variables
      00C94D 90 85            [ 2]  128 	popw	y
                           000037   129 	C$eeprom.c$101$1_0$357 ==.
                                    130 ;	eeprom.c: 101: if((p_configuration_variables->ui8_battery_max_current > 100)||
      00C94F 93               [ 1]  131 	ldw	x, y
      00C950 E6 01            [ 1]  132 	ld	a, (0x1, x)
      00C952 A1 64            [ 1]  133 	cp	a, #0x64
      00C954 23 03            [ 2]  134 	jrule	00170$
      00C956 CC C9 B4         [ 2]  135 	jp	00101$
      00C959                        136 00170$:
                           000041   137 	C$eeprom.c$102$1_0$357 ==.
                                    138 ;	eeprom.c: 102: (p_configuration_variables->ui8_motor_power_div10 > 195)||
      00C959 93               [ 1]  139 	ldw	x, y
      00C95A E6 02            [ 1]  140 	ld	a, (0x2, x)
      00C95C A1 C3            [ 1]  141 	cp	a, #0xc3
      00C95E 23 03            [ 2]  142 	jrule	00171$
      00C960 CC C9 B4         [ 2]  143 	jp	00101$
      00C963                        144 00171$:
                           00004B   145 	C$eeprom.c$103$1_0$357 ==.
                                    146 ;	eeprom.c: 103: (p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 > 630)||
      00C963 93               [ 1]  147 	ldw	x, y
      00C964 EE 03            [ 2]  148 	ldw	x, (0x3, x)
      00C966 A3 02 76         [ 2]  149 	cpw	x, #0x0276
      00C969 23 03            [ 2]  150 	jrule	00172$
      00C96B CC C9 B4         [ 2]  151 	jp	00101$
      00C96E                        152 00172$:
                           000056   153 	C$eeprom.c$104$1_0$357 ==.
                                    154 ;	eeprom.c: 104: (p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 < 160)||
      00C96E A3 00 A0         [ 2]  155 	cpw	x, #0x00a0
      00C971 25 41            [ 1]  156 	jrc	00101$
                           00005B   157 	C$eeprom.c$105$1_0$357 ==.
                                    158 ;	eeprom.c: 105: (p_configuration_variables->ui16_wheel_perimeter > 3000)||
      00C973 93               [ 1]  159 	ldw	x, y
      00C974 EE 05            [ 2]  160 	ldw	x, (0x5, x)
      00C976 A3 0B B8         [ 2]  161 	cpw	x, #0x0bb8
      00C979 22 39            [ 1]  162 	jrugt	00101$
                           000063   163 	C$eeprom.c$106$1_0$357 ==.
                                    164 ;	eeprom.c: 106: (p_configuration_variables->ui16_wheel_perimeter < 750)||
      00C97B A3 02 EE         [ 2]  165 	cpw	x, #0x02ee
      00C97E 25 34            [ 1]  166 	jrc	00101$
                           000068   167 	C$eeprom.c$107$1_0$357 ==.
                                    168 ;	eeprom.c: 107: (p_configuration_variables->ui8_battery_cells_number > 15)||
      00C980 93               [ 1]  169 	ldw	x, y
      00C981 E6 26            [ 1]  170 	ld	a, (0x26, x)
      00C983 A1 0F            [ 1]  171 	cp	a, #0x0f
      00C985 22 2D            [ 1]  172 	jrugt	00101$
                           00006F   173 	C$eeprom.c$108$1_0$357 ==.
                                    174 ;	eeprom.c: 108: (p_configuration_variables->ui8_battery_cells_number < 6)||
      00C987 A1 06            [ 1]  175 	cp	a, #0x06
      00C989 25 29            [ 1]  176 	jrc	00101$
                           000073   177 	C$eeprom.c$109$1_0$357 ==.
                                    178 ;	eeprom.c: 109: (p_configuration_variables->ui8_assist_level_factor_x10 > 50)||
      00C98B 90 F6            [ 1]  179 	ld	a, (y)
      00C98D A1 32            [ 1]  180 	cp	a, #0x32
      00C98F 22 23            [ 1]  181 	jrugt	00101$
                           000079   182 	C$eeprom.c$110$1_0$357 ==.
                                    183 ;	eeprom.c: 110: (p_configuration_variables->ui8_assist_level_power[0] > 50)||
      00C991 93               [ 1]  184 	ldw	x, y
      00C992 E6 2B            [ 1]  185 	ld	a, (0x2b, x)
      00C994 A1 32            [ 1]  186 	cp	a, #0x32
      00C996 22 1C            [ 1]  187 	jrugt	00101$
                           000080   188 	C$eeprom.c$111$1_0$357 ==.
                                    189 ;	eeprom.c: 111: (p_configuration_variables->ui8_assist_level_power[1] > 50)||
      00C998 93               [ 1]  190 	ldw	x, y
      00C999 E6 2C            [ 1]  191 	ld	a, (0x2c, x)
      00C99B A1 32            [ 1]  192 	cp	a, #0x32
      00C99D 22 15            [ 1]  193 	jrugt	00101$
                           000087   194 	C$eeprom.c$112$1_0$357 ==.
                                    195 ;	eeprom.c: 112: (p_configuration_variables->ui8_assist_level_power[2] > 50)||
      00C99F 93               [ 1]  196 	ldw	x, y
      00C9A0 E6 2D            [ 1]  197 	ld	a, (0x2d, x)
      00C9A2 A1 32            [ 1]  198 	cp	a, #0x32
      00C9A4 22 0E            [ 1]  199 	jrugt	00101$
                           00008E   200 	C$eeprom.c$113$1_0$357 ==.
                                    201 ;	eeprom.c: 113: (p_configuration_variables->ui8_assist_level_power[3] > 50)||
      00C9A6 93               [ 1]  202 	ldw	x, y
      00C9A7 E6 2E            [ 1]  203 	ld	a, (0x2e, x)
      00C9A9 A1 32            [ 1]  204 	cp	a, #0x32
      00C9AB 22 07            [ 1]  205 	jrugt	00101$
                           000095   206 	C$eeprom.c$114$1_0$357 ==.
                                    207 ;	eeprom.c: 114: (p_configuration_variables->ui8_wheel_max_speed > 99))
      00C9AD 90 E6 0C         [ 1]  208 	ld	a, (0xc, y)
      00C9B0 A1 63            [ 1]  209 	cp	a, #0x63
      00C9B2 23 0C            [ 2]  210 	jrule	00116$
      00C9B4                        211 00101$:
                           00009C   212 	C$eeprom.c$116$2_0$358 ==.
                                    213 ;	eeprom.c: 116: eeprom_write_array(array_default_values);
      00C9B4 4B 54            [ 1]  214 	push	#<(_array_default_values + 0)
      00C9B6 4B 02            [ 1]  215 	push	#((_array_default_values + 0) >> 8)
      00C9B8 CD D0 C3         [ 4]  216 	call	_eeprom_write_array
      00C9BB 5B 02            [ 2]  217 	addw	sp, #2
                           0000A5   218 	C$eeprom.c$117$2_0$358 ==.
                                    219 ;	eeprom.c: 117: eeprom_read_values_to_variables();
      00C9BD CD C9 C1         [ 4]  220 	call	_eeprom_read_values_to_variables
      00C9C0                        221 00116$:
                           0000A8   222 	C$eeprom.c$119$1_0$357 ==.
                                    223 ;	eeprom.c: 119: }
                           0000A8   224 	C$eeprom.c$119$1_0$357 ==.
                           0000A8   225 	XG$eeprom_init_variables$0$0 ==.
      00C9C0 81               [ 4]  226 	ret
                           0000A9   227 	Feeprom$eeprom_read_values_to_variables$0$0 ==.
                           0000A9   228 	C$eeprom.c$124$1_0$360 ==.
                                    229 ;	eeprom.c: 124: static void eeprom_read_values_to_variables(void)
                                    230 ;	-----------------------------------------
                                    231 ;	 function eeprom_read_values_to_variables
                                    232 ;	-----------------------------------------
      00C9C1                        233 _eeprom_read_values_to_variables:
      00C9C1 52 06            [ 2]  234 	sub	sp, #6
                           0000AB   235 	C$eeprom.c$130$1_0$360 ==.
                                    236 ;	eeprom.c: 130: p_configuration_variables = get_configuration_variables();
      00C9C3 CD C6 33         [ 4]  237 	call	_get_configuration_variables
      00C9C6 1F 01            [ 2]  238 	ldw	(0x01, sp), x
                           0000B0   239 	C$eeprom.c$132$1_0$360 ==.
                                    240 ;	eeprom.c: 132: p_configuration_variables->ui8_assist_level_factor_x10 = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_X10);
      00C9C8 4B 01            [ 1]  241 	push	#0x01
      00C9CA 4B 40            [ 1]  242 	push	#0x40
      00C9CC 5F               [ 1]  243 	clrw	x
      00C9CD 89               [ 2]  244 	pushw	x
      00C9CE CD A6 1A         [ 4]  245 	call	_FLASH_ReadByte
      00C9D1 5B 04            [ 2]  246 	addw	sp, #4
      00C9D3 1E 01            [ 2]  247 	ldw	x, (0x01, sp)
      00C9D5 F7               [ 1]  248 	ld	(x), a
                           0000BE   249 	C$eeprom.c$134$1_0$360 ==.
                                    250 ;	eeprom.c: 134: ui8_temp = FLASH_ReadByte(ADDR_CONFIG_0);
      00C9D6 4B 02            [ 1]  251 	push	#0x02
      00C9D8 4B 40            [ 1]  252 	push	#0x40
      00C9DA 5F               [ 1]  253 	clrw	x
      00C9DB 89               [ 2]  254 	pushw	x
      00C9DC CD A6 1A         [ 4]  255 	call	_FLASH_ReadByte
      00C9DF 5B 04            [ 2]  256 	addw	sp, #4
      00C9E1 C7 00 5C         [ 1]  257 	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
                           0000CC   258 	C$eeprom.c$135$1_0$360 ==.
                                    259 ;	eeprom.c: 135: p_configuration_variables->ui8_lights = ui8_temp & 1 ? 1 : 0;
      00C9E4 16 01            [ 2]  260 	ldw	y, (0x01, sp)
      00C9E6 72 A9 00 07      [ 2]  261 	addw	y, #0x0007
      00C9EA C6 00 5C         [ 1]  262 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00C9ED 44               [ 1]  263 	srl	a
      00C9EE 24 03            [ 1]  264 	jrnc	00103$
      00C9F0 5F               [ 1]  265 	clrw	x
      00C9F1 5C               [ 1]  266 	incw	x
      00C9F2 21                     267 	.byte 0x21
      00C9F3                        268 00103$:
      00C9F3 5F               [ 1]  269 	clrw	x
      00C9F4                        270 00104$:
      00C9F4 9F               [ 1]  271 	ld	a, xl
      00C9F5 90 F7            [ 1]  272 	ld	(y), a
                           0000DF   273 	C$eeprom.c$136$1_0$360 ==.
                                    274 ;	eeprom.c: 136: p_configuration_variables->ui8_walk_assist = ui8_temp & (1 << 1) ? 1 : 0;
      00C9F7 16 01            [ 2]  275 	ldw	y, (0x01, sp)
      00C9F9 72 A9 00 08      [ 2]  276 	addw	y, #0x0008
      00C9FD 72 02 00 5C 02   [ 2]  277 	btjt	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, #1, 00135$
      00CA02 20 03            [ 2]  278 	jra	00105$
      00CA04                        279 00135$:
      00CA04 5F               [ 1]  280 	clrw	x
      00CA05 5C               [ 1]  281 	incw	x
      00CA06 21                     282 	.byte 0x21
      00CA07                        283 00105$:
      00CA07 5F               [ 1]  284 	clrw	x
      00CA08                        285 00106$:
      00CA08 9F               [ 1]  286 	ld	a, xl
      00CA09 90 F7            [ 1]  287 	ld	(y), a
                           0000F3   288 	C$eeprom.c$137$1_0$360 ==.
                                    289 ;	eeprom.c: 137: p_configuration_variables->ui8_offroad_mode = ui8_temp & (1 << 2) ? 1 : 0;
      00CA0B 16 01            [ 2]  290 	ldw	y, (0x01, sp)
      00CA0D 72 A9 00 09      [ 2]  291 	addw	y, #0x0009
      00CA11 72 04 00 5C 02   [ 2]  292 	btjt	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, #2, 00137$
      00CA16 20 03            [ 2]  293 	jra	00107$
      00CA18                        294 00137$:
      00CA18 5F               [ 1]  295 	clrw	x
      00CA19 5C               [ 1]  296 	incw	x
      00CA1A 21                     297 	.byte 0x21
      00CA1B                        298 00107$:
      00CA1B 5F               [ 1]  299 	clrw	x
      00CA1C                        300 00108$:
      00CA1C 9F               [ 1]  301 	ld	a, xl
      00CA1D 90 F7            [ 1]  302 	ld	(y), a
                           000107   303 	C$eeprom.c$138$1_0$360 ==.
                                    304 ;	eeprom.c: 138: p_configuration_variables->ui8_emtb_mode = ui8_temp & (1 << 3) ? 1 : 0;
      00CA1F 16 01            [ 2]  305 	ldw	y, (0x01, sp)
      00CA21 72 A9 00 0A      [ 2]  306 	addw	y, #0x000a
      00CA25 72 06 00 5C 02   [ 2]  307 	btjt	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, #3, 00139$
      00CA2A 20 03            [ 2]  308 	jra	00109$
      00CA2C                        309 00139$:
      00CA2C 5F               [ 1]  310 	clrw	x
      00CA2D 5C               [ 1]  311 	incw	x
      00CA2E 21                     312 	.byte 0x21
      00CA2F                        313 00109$:
      00CA2F 5F               [ 1]  314 	clrw	x
      00CA30                        315 00110$:
      00CA30 9F               [ 1]  316 	ld	a, xl
      00CA31 90 F7            [ 1]  317 	ld	(y), a
                           00011B   318 	C$eeprom.c$139$1_0$360 ==.
                                    319 ;	eeprom.c: 139: p_configuration_variables->ui8_emtb_enabled_on_startup = ui8_temp & (1 << 4) ? 1 : 0;
      00CA33 16 01            [ 2]  320 	ldw	y, (0x01, sp)
      00CA35 72 A9 00 0B      [ 2]  321 	addw	y, #0x000b
      00CA39 72 08 00 5C 02   [ 2]  322 	btjt	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, #4, 00141$
      00CA3E 20 03            [ 2]  323 	jra	00111$
      00CA40                        324 00141$:
      00CA40 5F               [ 1]  325 	clrw	x
      00CA41 5C               [ 1]  326 	incw	x
      00CA42 21                     327 	.byte 0x21
      00CA43                        328 00111$:
      00CA43 5F               [ 1]  329 	clrw	x
      00CA44                        330 00112$:
      00CA44 9F               [ 1]  331 	ld	a, xl
      00CA45 90 F7            [ 1]  332 	ld	(y), a
                           00012F   333 	C$eeprom.c$141$1_0$360 ==.
                                    334 ;	eeprom.c: 141: p_configuration_variables->ui8_battery_max_current = FLASH_ReadByte(ADDR_BATTERY_MAX_CURRENT);
      00CA47 1E 01            [ 2]  335 	ldw	x, (0x01, sp)
      00CA49 5C               [ 1]  336 	incw	x
      00CA4A 1F 05            [ 2]  337 	ldw	(0x05, sp), x
      00CA4C 4B 03            [ 1]  338 	push	#0x03
      00CA4E 4B 40            [ 1]  339 	push	#0x40
      00CA50 5F               [ 1]  340 	clrw	x
      00CA51 89               [ 2]  341 	pushw	x
      00CA52 CD A6 1A         [ 4]  342 	call	_FLASH_ReadByte
      00CA55 5B 04            [ 2]  343 	addw	sp, #4
      00CA57 1E 05            [ 2]  344 	ldw	x, (0x05, sp)
      00CA59 F7               [ 1]  345 	ld	(x), a
                           000142   346 	C$eeprom.c$142$1_0$360 ==.
                                    347 ;	eeprom.c: 142: p_configuration_variables->ui8_motor_power_div10 = FLASH_ReadByte(MOTOR_MAX_POWER_DIV10);
      00CA5A 1E 01            [ 2]  348 	ldw	x, (0x01, sp)
      00CA5C 5C               [ 1]  349 	incw	x
      00CA5D 5C               [ 1]  350 	incw	x
      00CA5E 1F 05            [ 2]  351 	ldw	(0x05, sp), x
      00CA60 4B 19            [ 1]  352 	push	#0x19
      00CA62 5F               [ 1]  353 	clrw	x
      00CA63 89               [ 2]  354 	pushw	x
      00CA64 4B 00            [ 1]  355 	push	#0x00
      00CA66 CD A6 1A         [ 4]  356 	call	_FLASH_ReadByte
      00CA69 5B 04            [ 2]  357 	addw	sp, #4
      00CA6B 1E 05            [ 2]  358 	ldw	x, (0x05, sp)
      00CA6D F7               [ 1]  359 	ld	(x), a
                           000156   360 	C$eeprom.c$144$1_0$360 ==.
                                    361 ;	eeprom.c: 144: ui16_temp = FLASH_ReadByte(ADDR_BATTERY_LOW_VOLTAGE_CUT_OFF_X10_0);
      00CA6E 4B 05            [ 1]  362 	push	#0x05
      00CA70 4B 40            [ 1]  363 	push	#0x40
      00CA72 5F               [ 1]  364 	clrw	x
      00CA73 89               [ 2]  365 	pushw	x
      00CA74 CD A6 1A         [ 4]  366 	call	_FLASH_ReadByte
      00CA77 5B 04            [ 2]  367 	addw	sp, #4
      00CA79 5F               [ 1]  368 	clrw	x
      00CA7A 97               [ 1]  369 	ld	xl, a
      00CA7B CF 00 5D         [ 2]  370 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           000166   371 	C$eeprom.c$145$1_0$360 ==.
                                    372 ;	eeprom.c: 145: ui8_temp = FLASH_ReadByte(ADDR_BATTERY_LOW_VOLTAGE_CUT_OFF_X10_1);
      00CA7E 4B 06            [ 1]  373 	push	#0x06
      00CA80 4B 40            [ 1]  374 	push	#0x40
      00CA82 5F               [ 1]  375 	clrw	x
      00CA83 89               [ 2]  376 	pushw	x
      00CA84 CD A6 1A         [ 4]  377 	call	_FLASH_ReadByte
      00CA87 5B 04            [ 2]  378 	addw	sp, #4
      00CA89 C7 00 5C         [ 1]  379 	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
                           000174   380 	C$eeprom.c$146$1_0$360 ==.
                                    381 ;	eeprom.c: 146: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
      00CA8C C6 00 5C         [ 1]  382 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CA8F 95               [ 1]  383 	ld	xh, a
      00CA90 4F               [ 1]  384 	clr	a
      00CA91 97               [ 1]  385 	ld	xl, a
      00CA92 72 BB 00 5D      [ 2]  386 	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CA96 CF 00 5D         [ 2]  387 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           000181   388 	C$eeprom.c$147$1_0$360 ==.
                                    389 ;	eeprom.c: 147: p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 = ui16_temp;
      00CA99 1E 01            [ 2]  390 	ldw	x, (0x01, sp)
      00CA9B 90 CE 00 5D      [ 2]  391 	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CA9F EF 03            [ 2]  392 	ldw	(0x0003, x), y
                           000189   393 	C$eeprom.c$149$1_0$360 ==.
                                    394 ;	eeprom.c: 149: ui16_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_0);
      00CAA1 4B 07            [ 1]  395 	push	#0x07
      00CAA3 4B 40            [ 1]  396 	push	#0x40
      00CAA5 5F               [ 1]  397 	clrw	x
      00CAA6 89               [ 2]  398 	pushw	x
      00CAA7 CD A6 1A         [ 4]  399 	call	_FLASH_ReadByte
      00CAAA 5B 04            [ 2]  400 	addw	sp, #4
      00CAAC 5F               [ 1]  401 	clrw	x
      00CAAD 97               [ 1]  402 	ld	xl, a
      00CAAE CF 00 5D         [ 2]  403 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           000199   404 	C$eeprom.c$150$1_0$360 ==.
                                    405 ;	eeprom.c: 150: ui8_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_1);
      00CAB1 4B 08            [ 1]  406 	push	#0x08
      00CAB3 4B 40            [ 1]  407 	push	#0x40
      00CAB5 5F               [ 1]  408 	clrw	x
      00CAB6 89               [ 2]  409 	pushw	x
      00CAB7 CD A6 1A         [ 4]  410 	call	_FLASH_ReadByte
      00CABA 5B 04            [ 2]  411 	addw	sp, #4
      00CABC C7 00 5C         [ 1]  412 	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
                           0001A7   413 	C$eeprom.c$151$1_0$360 ==.
                                    414 ;	eeprom.c: 151: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
      00CABF C6 00 5C         [ 1]  415 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CAC2 95               [ 1]  416 	ld	xh, a
      00CAC3 4F               [ 1]  417 	clr	a
      00CAC4 97               [ 1]  418 	ld	xl, a
      00CAC5 72 BB 00 5D      [ 2]  419 	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CAC9 CF 00 5D         [ 2]  420 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           0001B4   421 	C$eeprom.c$152$1_0$360 ==.
                                    422 ;	eeprom.c: 152: p_configuration_variables->ui16_wheel_perimeter = ui16_temp;
      00CACC 1E 01            [ 2]  423 	ldw	x, (0x01, sp)
      00CACE 90 CE 00 5D      [ 2]  424 	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CAD2 EF 05            [ 2]  425 	ldw	(0x0005, x), y
                           0001BC   426 	C$eeprom.c$154$1_0$360 ==.
                                    427 ;	eeprom.c: 154: p_configuration_variables->ui8_wheel_max_speed = FLASH_ReadByte(ADDR_WHEEL_MAX_SPEED);
      00CAD4 1E 01            [ 2]  428 	ldw	x, (0x01, sp)
      00CAD6 1C 00 0C         [ 2]  429 	addw	x, #0x000c
      00CAD9 89               [ 2]  430 	pushw	x
      00CADA 4B 09            [ 1]  431 	push	#0x09
      00CADC 4B 40            [ 1]  432 	push	#0x40
      00CADE 4B 00            [ 1]  433 	push	#0x00
      00CAE0 4B 00            [ 1]  434 	push	#0x00
      00CAE2 CD A6 1A         [ 4]  435 	call	_FLASH_ReadByte
      00CAE5 5B 04            [ 2]  436 	addw	sp, #4
      00CAE7 85               [ 2]  437 	popw	x
      00CAE8 F7               [ 1]  438 	ld	(x), a
                           0001D1   439 	C$eeprom.c$156$1_0$360 ==.
                                    440 ;	eeprom.c: 156: ui8_temp = FLASH_ReadByte(ADDR_CONFIG_1);
      00CAE9 4B 0A            [ 1]  441 	push	#0x0a
      00CAEB 4B 40            [ 1]  442 	push	#0x40
      00CAED 5F               [ 1]  443 	clrw	x
      00CAEE 89               [ 2]  444 	pushw	x
      00CAEF CD A6 1A         [ 4]  445 	call	_FLASH_ReadByte
      00CAF2 5B 04            [ 2]  446 	addw	sp, #4
      00CAF4 C7 00 5C         [ 1]  447 	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
                           0001DF   448 	C$eeprom.c$157$1_0$360 ==.
                                    449 ;	eeprom.c: 157: p_configuration_variables->ui8_motor_type = ui8_temp & 3;
      00CAF7 1E 01            [ 2]  450 	ldw	x, (0x01, sp)
      00CAF9 1C 00 0D         [ 2]  451 	addw	x, #0x000d
      00CAFC C6 00 5C         [ 1]  452 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CAFF A4 03            [ 1]  453 	and	a, #0x03
      00CB01 F7               [ 1]  454 	ld	(x), a
                           0001EA   455 	C$eeprom.c$158$1_0$360 ==.
                                    456 ;	eeprom.c: 158: p_configuration_variables->ui8_motor_assistance_startup_without_pedal_rotation = (ui8_temp & 4) >> 2;
      00CB02 16 01            [ 2]  457 	ldw	y, (0x01, sp)
      00CB04 72 A9 00 0E      [ 2]  458 	addw	y, #0x000e
      00CB08 C6 00 5C         [ 1]  459 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CB0B 6B 06            [ 1]  460 	ld	(0x06, sp), a
      00CB0D 0F 05            [ 1]  461 	clr	(0x05, sp)
      00CB0F 7B 06            [ 1]  462 	ld	a, (0x06, sp)
      00CB11 A4 04            [ 1]  463 	and	a, #0x04
      00CB13 97               [ 1]  464 	ld	xl, a
      00CB14 4F               [ 1]  465 	clr	a
      00CB15 95               [ 1]  466 	ld	xh, a
      00CB16 57               [ 2]  467 	sraw	x
      00CB17 57               [ 2]  468 	sraw	x
      00CB18 9F               [ 1]  469 	ld	a, xl
      00CB19 90 F7            [ 1]  470 	ld	(y), a
                           000203   471 	C$eeprom.c$160$1_0$360 ==.
                                    472 ;	eeprom.c: 160: ui8_temp = FLASH_ReadByte(ADDR_STREET_CONFIG);
      00CB1B 4B 0B            [ 1]  473 	push	#0x0b
      00CB1D 4B 40            [ 1]  474 	push	#0x40
      00CB1F 5F               [ 1]  475 	clrw	x
      00CB20 89               [ 2]  476 	pushw	x
      00CB21 CD A6 1A         [ 4]  477 	call	_FLASH_ReadByte
      00CB24 5B 04            [ 2]  478 	addw	sp, #4
      00CB26 C7 00 5C         [ 1]  479 	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
                           000211   480 	C$eeprom.c$161$1_0$360 ==.
                                    481 ;	eeprom.c: 161: p_configuration_variables->ui8_street_feature_enabled = ui8_temp & 1;
      00CB29 1E 01            [ 2]  482 	ldw	x, (0x01, sp)
      00CB2B 1C 00 1E         [ 2]  483 	addw	x, #0x001e
      00CB2E C6 00 5C         [ 1]  484 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CB31 A4 01            [ 1]  485 	and	a, #0x01
      00CB33 F7               [ 1]  486 	ld	(x), a
                           00021C   487 	C$eeprom.c$162$1_0$360 ==.
                                    488 ;	eeprom.c: 162: p_configuration_variables->ui8_street_enabled_on_startup = ui8_temp & (1 << 1);
      00CB34 1E 01            [ 2]  489 	ldw	x, (0x01, sp)
      00CB36 1C 00 1F         [ 2]  490 	addw	x, #0x001f
      00CB39 C6 00 5C         [ 1]  491 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CB3C A4 02            [ 1]  492 	and	a, #0x02
      00CB3E F7               [ 1]  493 	ld	(x), a
                           000227   494 	C$eeprom.c$163$1_0$360 ==.
                                    495 ;	eeprom.c: 163: p_configuration_variables->ui8_street_power_limit_enabled = ui8_temp & (1 << 2);
      00CB3F 1E 01            [ 2]  496 	ldw	x, (0x01, sp)
      00CB41 1C 00 21         [ 2]  497 	addw	x, #0x0021
      00CB44 C6 00 5C         [ 1]  498 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CB47 A4 04            [ 1]  499 	and	a, #0x04
      00CB49 F7               [ 1]  500 	ld	(x), a
                           000232   501 	C$eeprom.c$165$1_0$360 ==.
                                    502 ;	eeprom.c: 165: p_configuration_variables->ui8_street_speed_limit = FLASH_ReadByte(ADDR_STREET_SPEED_LIMIT);
      00CB4A 1E 01            [ 2]  503 	ldw	x, (0x01, sp)
      00CB4C 1C 00 20         [ 2]  504 	addw	x, #0x0020
      00CB4F 89               [ 2]  505 	pushw	x
      00CB50 4B 0C            [ 1]  506 	push	#0x0c
      00CB52 4B 40            [ 1]  507 	push	#0x40
      00CB54 4B 00            [ 1]  508 	push	#0x00
      00CB56 4B 00            [ 1]  509 	push	#0x00
      00CB58 CD A6 1A         [ 4]  510 	call	_FLASH_ReadByte
      00CB5B 5B 04            [ 2]  511 	addw	sp, #4
      00CB5D 85               [ 2]  512 	popw	x
      00CB5E F7               [ 1]  513 	ld	(x), a
                           000247   514 	C$eeprom.c$166$1_0$360 ==.
                                    515 ;	eeprom.c: 166: p_configuration_variables->ui8_street_power_limit_div25 = FLASH_ReadByte(ADDR_STREET_POWER_LIMIT_DIV25);
      00CB5F 1E 01            [ 2]  516 	ldw	x, (0x01, sp)
      00CB61 1C 00 22         [ 2]  517 	addw	x, #0x0022
      00CB64 89               [ 2]  518 	pushw	x
      00CB65 4B 0D            [ 1]  519 	push	#0x0d
      00CB67 4B 40            [ 1]  520 	push	#0x40
      00CB69 4B 00            [ 1]  521 	push	#0x00
      00CB6B 4B 00            [ 1]  522 	push	#0x00
      00CB6D CD A6 1A         [ 4]  523 	call	_FLASH_ReadByte
      00CB70 5B 04            [ 2]  524 	addw	sp, #4
      00CB72 85               [ 2]  525 	popw	x
      00CB73 F7               [ 1]  526 	ld	(x), a
                           00025C   527 	C$eeprom.c$168$1_0$360 ==.
                                    528 ;	eeprom.c: 168: p_configuration_variables->ui8_battery_cells_number = FLASH_ReadByte(ADDR_BATTERY_CELLS_NUMBER);
      00CB74 1E 01            [ 2]  529 	ldw	x, (0x01, sp)
      00CB76 1C 00 26         [ 2]  530 	addw	x, #0x0026
      00CB79 89               [ 2]  531 	pushw	x
      00CB7A 4B 0E            [ 1]  532 	push	#0x0e
      00CB7C 4B 40            [ 1]  533 	push	#0x40
      00CB7E 4B 00            [ 1]  534 	push	#0x00
      00CB80 4B 00            [ 1]  535 	push	#0x00
      00CB82 CD A6 1A         [ 4]  536 	call	_FLASH_ReadByte
      00CB85 5B 04            [ 2]  537 	addw	sp, #4
      00CB87 85               [ 2]  538 	popw	x
      00CB88 F7               [ 1]  539 	ld	(x), a
                           000271   540 	C$eeprom.c$170$1_0$360 ==.
                                    541 ;	eeprom.c: 170: ui16_temp = FLASH_ReadByte(ADDR_BATTERY_PACK_RESISTANCE_0);
      00CB89 4B 0F            [ 1]  542 	push	#0x0f
      00CB8B 4B 40            [ 1]  543 	push	#0x40
      00CB8D 5F               [ 1]  544 	clrw	x
      00CB8E 89               [ 2]  545 	pushw	x
      00CB8F CD A6 1A         [ 4]  546 	call	_FLASH_ReadByte
      00CB92 5B 04            [ 2]  547 	addw	sp, #4
      00CB94 5F               [ 1]  548 	clrw	x
      00CB95 97               [ 1]  549 	ld	xl, a
      00CB96 CF 00 5D         [ 2]  550 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           000281   551 	C$eeprom.c$171$1_0$360 ==.
                                    552 ;	eeprom.c: 171: ui8_temp = FLASH_ReadByte(ADDR_BATTERY_PACK_RESISTANCE_1);
      00CB99 4B 10            [ 1]  553 	push	#0x10
      00CB9B 4B 40            [ 1]  554 	push	#0x40
      00CB9D 5F               [ 1]  555 	clrw	x
      00CB9E 89               [ 2]  556 	pushw	x
      00CB9F CD A6 1A         [ 4]  557 	call	_FLASH_ReadByte
      00CBA2 5B 04            [ 2]  558 	addw	sp, #4
      00CBA4 C7 00 5C         [ 1]  559 	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
                           00028F   560 	C$eeprom.c$172$1_0$360 ==.
                                    561 ;	eeprom.c: 172: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
      00CBA7 C6 00 5C         [ 1]  562 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CBAA 95               [ 1]  563 	ld	xh, a
      00CBAB 4F               [ 1]  564 	clr	a
      00CBAC 97               [ 1]  565 	ld	xl, a
      00CBAD 72 BB 00 5D      [ 2]  566 	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CBB1 CF 00 5D         [ 2]  567 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           00029C   568 	C$eeprom.c$173$1_0$360 ==.
                                    569 ;	eeprom.c: 173: p_configuration_variables->ui16_battery_pack_resistance_x1000 = ui16_temp;
      00CBB4 1E 01            [ 2]  570 	ldw	x, (0x01, sp)
      00CBB6 90 CE 00 5D      [ 2]  571 	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CBBA EF 27            [ 2]  572 	ldw	(0x0027, x), y
                           0002A4   573 	C$eeprom.c$175$1_0$360 ==.
                                    574 ;	eeprom.c: 175: ui16_temp = FLASH_ReadByte(ADDR_OEM_WHEEL_SPEED_DIVISOR_0);
      00CBBC 4B 11            [ 1]  575 	push	#0x11
      00CBBE 4B 40            [ 1]  576 	push	#0x40
      00CBC0 5F               [ 1]  577 	clrw	x
      00CBC1 89               [ 2]  578 	pushw	x
      00CBC2 CD A6 1A         [ 4]  579 	call	_FLASH_ReadByte
      00CBC5 5B 04            [ 2]  580 	addw	sp, #4
      00CBC7 5F               [ 1]  581 	clrw	x
      00CBC8 97               [ 1]  582 	ld	xl, a
      00CBC9 CF 00 5D         [ 2]  583 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           0002B4   584 	C$eeprom.c$176$1_0$360 ==.
                                    585 ;	eeprom.c: 176: ui8_temp = FLASH_ReadByte(ADDR_OEM_WHEEL_SPEED_DIVISOR_1);
      00CBCC 4B 12            [ 1]  586 	push	#0x12
      00CBCE 4B 40            [ 1]  587 	push	#0x40
      00CBD0 5F               [ 1]  588 	clrw	x
      00CBD1 89               [ 2]  589 	pushw	x
      00CBD2 CD A6 1A         [ 4]  590 	call	_FLASH_ReadByte
      00CBD5 5B 04            [ 2]  591 	addw	sp, #4
      00CBD7 C7 00 5C         [ 1]  592 	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
                           0002C2   593 	C$eeprom.c$177$1_0$360 ==.
                                    594 ;	eeprom.c: 177: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
      00CBDA C6 00 5C         [ 1]  595 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CBDD 95               [ 1]  596 	ld	xh, a
      00CBDE 4F               [ 1]  597 	clr	a
      00CBDF 97               [ 1]  598 	ld	xl, a
      00CBE0 72 BB 00 5D      [ 2]  599 	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CBE4 CF 00 5D         [ 2]  600 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           0002CF   601 	C$eeprom.c$178$1_0$360 ==.
                                    602 ;	eeprom.c: 178: p_configuration_variables->ui16_oem_wheel_speed_factor = ui16_temp;
      00CBE7 1E 01            [ 2]  603 	ldw	x, (0x01, sp)
      00CBE9 90 CE 00 5D      [ 2]  604 	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CBED EF 29            [ 2]  605 	ldw	(0x0029, x), y
                           0002D7   606 	C$eeprom.c$180$1_0$360 ==.
                                    607 ;	eeprom.c: 180: p_configuration_variables->ui8_assist_level_power[0] = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_1);
      00CBEF 1E 01            [ 2]  608 	ldw	x, (0x01, sp)
      00CBF1 1C 00 2B         [ 2]  609 	addw	x, #0x002b
      00CBF4 89               [ 2]  610 	pushw	x
      00CBF5 4B 13            [ 1]  611 	push	#0x13
      00CBF7 4B 40            [ 1]  612 	push	#0x40
      00CBF9 4B 00            [ 1]  613 	push	#0x00
      00CBFB 4B 00            [ 1]  614 	push	#0x00
      00CBFD CD A6 1A         [ 4]  615 	call	_FLASH_ReadByte
      00CC00 5B 04            [ 2]  616 	addw	sp, #4
      00CC02 85               [ 2]  617 	popw	x
      00CC03 F7               [ 1]  618 	ld	(x), a
                           0002EC   619 	C$eeprom.c$181$1_0$360 ==.
                                    620 ;	eeprom.c: 181: p_configuration_variables->ui8_assist_level_power[1] = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_2);
      00CC04 1E 01            [ 2]  621 	ldw	x, (0x01, sp)
      00CC06 1C 00 2B         [ 2]  622 	addw	x, #0x002b
      00CC09 1F 03            [ 2]  623 	ldw	(0x03, sp), x
      00CC0B 5C               [ 1]  624 	incw	x
      00CC0C 1F 05            [ 2]  625 	ldw	(0x05, sp), x
      00CC0E 4B 14            [ 1]  626 	push	#0x14
      00CC10 4B 40            [ 1]  627 	push	#0x40
      00CC12 5F               [ 1]  628 	clrw	x
      00CC13 89               [ 2]  629 	pushw	x
      00CC14 CD A6 1A         [ 4]  630 	call	_FLASH_ReadByte
      00CC17 5B 04            [ 2]  631 	addw	sp, #4
      00CC19 1E 05            [ 2]  632 	ldw	x, (0x05, sp)
      00CC1B F7               [ 1]  633 	ld	(x), a
                           000304   634 	C$eeprom.c$182$1_0$360 ==.
                                    635 ;	eeprom.c: 182: p_configuration_variables->ui8_assist_level_power[2] = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_3);
      00CC1C 1E 03            [ 2]  636 	ldw	x, (0x03, sp)
      00CC1E 5C               [ 1]  637 	incw	x
      00CC1F 5C               [ 1]  638 	incw	x
      00CC20 1F 05            [ 2]  639 	ldw	(0x05, sp), x
      00CC22 4B 15            [ 1]  640 	push	#0x15
      00CC24 4B 40            [ 1]  641 	push	#0x40
      00CC26 5F               [ 1]  642 	clrw	x
      00CC27 89               [ 2]  643 	pushw	x
      00CC28 CD A6 1A         [ 4]  644 	call	_FLASH_ReadByte
      00CC2B 5B 04            [ 2]  645 	addw	sp, #4
      00CC2D 1E 05            [ 2]  646 	ldw	x, (0x05, sp)
      00CC2F F7               [ 1]  647 	ld	(x), a
                           000318   648 	C$eeprom.c$183$1_0$360 ==.
                                    649 ;	eeprom.c: 183: p_configuration_variables->ui8_assist_level_power[3] = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_4);
      00CC30 1E 03            [ 2]  650 	ldw	x, (0x03, sp)
      00CC32 1C 00 03         [ 2]  651 	addw	x, #0x0003
      00CC35 89               [ 2]  652 	pushw	x
      00CC36 4B 16            [ 1]  653 	push	#0x16
      00CC38 4B 40            [ 1]  654 	push	#0x40
      00CC3A 4B 00            [ 1]  655 	push	#0x00
      00CC3C 4B 00            [ 1]  656 	push	#0x00
      00CC3E CD A6 1A         [ 4]  657 	call	_FLASH_ReadByte
      00CC41 5B 04            [ 2]  658 	addw	sp, #4
      00CC43 85               [ 2]  659 	popw	x
      00CC44 F7               [ 1]  660 	ld	(x), a
                           00032D   661 	C$eeprom.c$185$1_0$360 ==.
                                    662 ;	eeprom.c: 185: p_configuration_variables->ui8_startup_motor_power_boost_state = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_STATE);
      00CC45 1E 01            [ 2]  663 	ldw	x, (0x01, sp)
      00CC47 1C 00 13         [ 2]  664 	addw	x, #0x0013
      00CC4A 89               [ 2]  665 	pushw	x
      00CC4B 4B 17            [ 1]  666 	push	#0x17
      00CC4D 4B 40            [ 1]  667 	push	#0x40
      00CC4F 4B 00            [ 1]  668 	push	#0x00
      00CC51 4B 00            [ 1]  669 	push	#0x00
      00CC53 CD A6 1A         [ 4]  670 	call	_FLASH_ReadByte
      00CC56 5B 04            [ 2]  671 	addw	sp, #4
      00CC58 85               [ 2]  672 	popw	x
      00CC59 F7               [ 1]  673 	ld	(x), a
                           000342   674 	C$eeprom.c$186$1_0$360 ==.
                                    675 ;	eeprom.c: 186: p_configuration_variables->ui8_startup_motor_power_boost_feature_enabled = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_FEATURE_ENABLED);
      00CC5A 1E 01            [ 2]  676 	ldw	x, (0x01, sp)
      00CC5C 1C 00 11         [ 2]  677 	addw	x, #0x0011
      00CC5F 89               [ 2]  678 	pushw	x
      00CC60 4B 18            [ 1]  679 	push	#0x18
      00CC62 4B 40            [ 1]  680 	push	#0x40
      00CC64 4B 00            [ 1]  681 	push	#0x00
      00CC66 4B 00            [ 1]  682 	push	#0x00
      00CC68 CD A6 1A         [ 4]  683 	call	_FLASH_ReadByte
      00CC6B 5B 04            [ 2]  684 	addw	sp, #4
      00CC6D 85               [ 2]  685 	popw	x
      00CC6E F7               [ 1]  686 	ld	(x), a
                           000357   687 	C$eeprom.c$187$1_0$360 ==.
                                    688 ;	eeprom.c: 187: p_configuration_variables->ui8_startup_motor_power_boost[0] = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_ASSIST_LEVEL_1);
      00CC6F 1E 01            [ 2]  689 	ldw	x, (0x01, sp)
      00CC71 1C 00 30         [ 2]  690 	addw	x, #0x0030
      00CC74 89               [ 2]  691 	pushw	x
      00CC75 4B 19            [ 1]  692 	push	#0x19
      00CC77 4B 40            [ 1]  693 	push	#0x40
      00CC79 4B 00            [ 1]  694 	push	#0x00
      00CC7B 4B 00            [ 1]  695 	push	#0x00
      00CC7D CD A6 1A         [ 4]  696 	call	_FLASH_ReadByte
      00CC80 5B 04            [ 2]  697 	addw	sp, #4
      00CC82 85               [ 2]  698 	popw	x
      00CC83 F7               [ 1]  699 	ld	(x), a
                           00036C   700 	C$eeprom.c$188$1_0$360 ==.
                                    701 ;	eeprom.c: 188: p_configuration_variables->ui8_startup_motor_power_boost[1] = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_ASSIST_LEVEL_2);
      00CC84 1E 01            [ 2]  702 	ldw	x, (0x01, sp)
      00CC86 1C 00 30         [ 2]  703 	addw	x, #0x0030
      00CC89 1F 03            [ 2]  704 	ldw	(0x03, sp), x
      00CC8B 5C               [ 1]  705 	incw	x
      00CC8C 1F 05            [ 2]  706 	ldw	(0x05, sp), x
      00CC8E 4B 1A            [ 1]  707 	push	#0x1a
      00CC90 4B 40            [ 1]  708 	push	#0x40
      00CC92 5F               [ 1]  709 	clrw	x
      00CC93 89               [ 2]  710 	pushw	x
      00CC94 CD A6 1A         [ 4]  711 	call	_FLASH_ReadByte
      00CC97 5B 04            [ 2]  712 	addw	sp, #4
      00CC99 1E 05            [ 2]  713 	ldw	x, (0x05, sp)
      00CC9B F7               [ 1]  714 	ld	(x), a
                           000384   715 	C$eeprom.c$189$1_0$360 ==.
                                    716 ;	eeprom.c: 189: p_configuration_variables->ui8_startup_motor_power_boost[2] = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_ASSIST_LEVEL_3);
      00CC9C 1E 03            [ 2]  717 	ldw	x, (0x03, sp)
      00CC9E 5C               [ 1]  718 	incw	x
      00CC9F 5C               [ 1]  719 	incw	x
      00CCA0 1F 05            [ 2]  720 	ldw	(0x05, sp), x
      00CCA2 4B 1B            [ 1]  721 	push	#0x1b
      00CCA4 4B 40            [ 1]  722 	push	#0x40
      00CCA6 5F               [ 1]  723 	clrw	x
      00CCA7 89               [ 2]  724 	pushw	x
      00CCA8 CD A6 1A         [ 4]  725 	call	_FLASH_ReadByte
      00CCAB 5B 04            [ 2]  726 	addw	sp, #4
      00CCAD 1E 05            [ 2]  727 	ldw	x, (0x05, sp)
      00CCAF F7               [ 1]  728 	ld	(x), a
                           000398   729 	C$eeprom.c$190$1_0$360 ==.
                                    730 ;	eeprom.c: 190: p_configuration_variables->ui8_startup_motor_power_boost[3] = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_ASSIST_LEVEL_4);
      00CCB0 1E 03            [ 2]  731 	ldw	x, (0x03, sp)
      00CCB2 1C 00 03         [ 2]  732 	addw	x, #0x0003
      00CCB5 89               [ 2]  733 	pushw	x
      00CCB6 4B 1C            [ 1]  734 	push	#0x1c
      00CCB8 4B 40            [ 1]  735 	push	#0x40
      00CCBA 4B 00            [ 1]  736 	push	#0x00
      00CCBC 4B 00            [ 1]  737 	push	#0x00
      00CCBE CD A6 1A         [ 4]  738 	call	_FLASH_ReadByte
      00CCC1 5B 04            [ 2]  739 	addw	sp, #4
      00CCC3 85               [ 2]  740 	popw	x
      00CCC4 F7               [ 1]  741 	ld	(x), a
                           0003AD   742 	C$eeprom.c$191$1_0$360 ==.
                                    743 ;	eeprom.c: 191: p_configuration_variables->ui8_startup_motor_power_boost_time = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_TIME);
      00CCC5 1E 01            [ 2]  744 	ldw	x, (0x01, sp)
      00CCC7 1C 00 15         [ 2]  745 	addw	x, #0x0015
      00CCCA 89               [ 2]  746 	pushw	x
      00CCCB 4B 1D            [ 1]  747 	push	#0x1d
      00CCCD 4B 40            [ 1]  748 	push	#0x40
      00CCCF 4B 00            [ 1]  749 	push	#0x00
      00CCD1 4B 00            [ 1]  750 	push	#0x00
      00CCD3 CD A6 1A         [ 4]  751 	call	_FLASH_ReadByte
      00CCD6 5B 04            [ 2]  752 	addw	sp, #4
      00CCD8 85               [ 2]  753 	popw	x
      00CCD9 F7               [ 1]  754 	ld	(x), a
                           0003C2   755 	C$eeprom.c$192$1_0$360 ==.
                                    756 ;	eeprom.c: 192: p_configuration_variables->ui8_startup_motor_power_boost_fade_time = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_FADE_TIME);
      00CCDA 1E 01            [ 2]  757 	ldw	x, (0x01, sp)
      00CCDC 1C 00 16         [ 2]  758 	addw	x, #0x0016
      00CCDF 89               [ 2]  759 	pushw	x
      00CCE0 4B 1E            [ 1]  760 	push	#0x1e
      00CCE2 4B 40            [ 1]  761 	push	#0x40
      00CCE4 4B 00            [ 1]  762 	push	#0x00
      00CCE6 4B 00            [ 1]  763 	push	#0x00
      00CCE8 CD A6 1A         [ 4]  764 	call	_FLASH_ReadByte
      00CCEB 5B 04            [ 2]  765 	addw	sp, #4
      00CCED 85               [ 2]  766 	popw	x
      00CCEE F7               [ 1]  767 	ld	(x), a
                           0003D7   768 	C$eeprom.c$193$1_0$360 ==.
                                    769 ;	eeprom.c: 193: p_configuration_variables->ui8_startup_motor_power_boost_limit_to_max_power = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_LIMIT_MAX_POWER);
      00CCEF 1E 01            [ 2]  770 	ldw	x, (0x01, sp)
      00CCF1 1C 00 14         [ 2]  771 	addw	x, #0x0014
      00CCF4 89               [ 2]  772 	pushw	x
      00CCF5 4B 1F            [ 1]  773 	push	#0x1f
      00CCF7 4B 40            [ 1]  774 	push	#0x40
      00CCF9 4B 00            [ 1]  775 	push	#0x00
      00CCFB 4B 00            [ 1]  776 	push	#0x00
      00CCFD CD A6 1A         [ 4]  777 	call	_FLASH_ReadByte
      00CD00 5B 04            [ 2]  778 	addw	sp, #4
      00CD02 85               [ 2]  779 	popw	x
      00CD03 F7               [ 1]  780 	ld	(x), a
                           0003EC   781 	C$eeprom.c$195$1_0$360 ==.
                                    782 ;	eeprom.c: 195: p_configuration_variables->ui8_target_battery_max_power_div25 = FLASH_ReadByte(ADDR_TARGET_MAX_BATTERY_POWER_DIV25);
      00CD04 1E 01            [ 2]  783 	ldw	x, (0x01, sp)
      00CD06 1C 00 0F         [ 2]  784 	addw	x, #0x000f
      00CD09 89               [ 2]  785 	pushw	x
      00CD0A 4B 20            [ 1]  786 	push	#0x20
      00CD0C 4B 40            [ 1]  787 	push	#0x40
      00CD0E 4B 00            [ 1]  788 	push	#0x00
      00CD10 4B 00            [ 1]  789 	push	#0x00
      00CD12 CD A6 1A         [ 4]  790 	call	_FLASH_ReadByte
      00CD15 5B 04            [ 2]  791 	addw	sp, #4
      00CD17 85               [ 2]  792 	popw	x
      00CD18 F7               [ 1]  793 	ld	(x), a
                           000401   794 	C$eeprom.c$197$1_0$360 ==.
                                    795 ;	eeprom.c: 197: p_configuration_variables->ui8_temperature_limit_feature_enabled = FLASH_ReadByte(ADDR_TEMPERATURE_LIMIT_FEATURE_ENABLED);
      00CD19 1E 01            [ 2]  796 	ldw	x, (0x01, sp)
      00CD1B 1C 00 17         [ 2]  797 	addw	x, #0x0017
      00CD1E 89               [ 2]  798 	pushw	x
      00CD1F 4B 21            [ 1]  799 	push	#0x21
      00CD21 4B 40            [ 1]  800 	push	#0x40
      00CD23 4B 00            [ 1]  801 	push	#0x00
      00CD25 4B 00            [ 1]  802 	push	#0x00
      00CD27 CD A6 1A         [ 4]  803 	call	_FLASH_ReadByte
      00CD2A 5B 04            [ 2]  804 	addw	sp, #4
      00CD2C 85               [ 2]  805 	popw	x
      00CD2D F7               [ 1]  806 	ld	(x), a
                           000416   807 	C$eeprom.c$198$1_0$360 ==.
                                    808 ;	eeprom.c: 198: p_configuration_variables->ui8_motor_temperature_min_value_to_limit = FLASH_ReadByte(ADDR_MOTOR_TEMPERATURE_MIN_VALUE_LIMIT);
      00CD2E 1E 01            [ 2]  809 	ldw	x, (0x01, sp)
      00CD30 1C 00 18         [ 2]  810 	addw	x, #0x0018
      00CD33 89               [ 2]  811 	pushw	x
      00CD34 4B 22            [ 1]  812 	push	#0x22
      00CD36 4B 40            [ 1]  813 	push	#0x40
      00CD38 4B 00            [ 1]  814 	push	#0x00
      00CD3A 4B 00            [ 1]  815 	push	#0x00
      00CD3C CD A6 1A         [ 4]  816 	call	_FLASH_ReadByte
      00CD3F 5B 04            [ 2]  817 	addw	sp, #4
      00CD41 85               [ 2]  818 	popw	x
      00CD42 F7               [ 1]  819 	ld	(x), a
                           00042B   820 	C$eeprom.c$199$1_0$360 ==.
                                    821 ;	eeprom.c: 199: p_configuration_variables->ui8_motor_temperature_max_value_to_limit = FLASH_ReadByte(ADDR_MOTOR_TEMPERATURE_MAX_VALUE_LIMIT);
      00CD43 1E 01            [ 2]  822 	ldw	x, (0x01, sp)
      00CD45 1C 00 19         [ 2]  823 	addw	x, #0x0019
      00CD48 89               [ 2]  824 	pushw	x
      00CD49 4B 23            [ 1]  825 	push	#0x23
      00CD4B 4B 40            [ 1]  826 	push	#0x40
      00CD4D 4B 00            [ 1]  827 	push	#0x00
      00CD4F 4B 00            [ 1]  828 	push	#0x00
      00CD51 CD A6 1A         [ 4]  829 	call	_FLASH_ReadByte
      00CD54 5B 04            [ 2]  830 	addw	sp, #4
      00CD56 85               [ 2]  831 	popw	x
      00CD57 F7               [ 1]  832 	ld	(x), a
                           000440   833 	C$eeprom.c$201$1_0$360 ==.
                                    834 ;	eeprom.c: 201: p_configuration_variables->ui8_walk_assist_percentage_current = FLASH_ReadByte(ADDR_WALK_ASSIST_PERCENTAGE_CURRENT);
      00CD58 1E 01            [ 2]  835 	ldw	x, (0x01, sp)
      00CD5A 1C 00 34         [ 2]  836 	addw	x, #0x0034
      00CD5D 89               [ 2]  837 	pushw	x
      00CD5E 4B 24            [ 1]  838 	push	#0x24
      00CD60 4B 40            [ 1]  839 	push	#0x40
      00CD62 4B 00            [ 1]  840 	push	#0x00
      00CD64 4B 00            [ 1]  841 	push	#0x00
      00CD66 CD A6 1A         [ 4]  842 	call	_FLASH_ReadByte
      00CD69 5B 04            [ 2]  843 	addw	sp, #4
      00CD6B 85               [ 2]  844 	popw	x
      00CD6C F7               [ 1]  845 	ld	(x), a
                           000455   846 	C$eeprom.c$202$1_0$360 ==.
                                    847 ;	eeprom.c: 202: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[0] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_0);
      00CD6D 1E 01            [ 2]  848 	ldw	x, (0x01, sp)
      00CD6F 1C 00 36         [ 2]  849 	addw	x, #0x0036
      00CD72 1F 03            [ 2]  850 	ldw	(0x03, sp), x
      00CD74 4B 25            [ 1]  851 	push	#0x25
      00CD76 4B 40            [ 1]  852 	push	#0x40
      00CD78 5F               [ 1]  853 	clrw	x
      00CD79 89               [ 2]  854 	pushw	x
      00CD7A CD A6 1A         [ 4]  855 	call	_FLASH_ReadByte
      00CD7D 5B 04            [ 2]  856 	addw	sp, #4
      00CD7F 1E 03            [ 2]  857 	ldw	x, (0x03, sp)
      00CD81 F7               [ 1]  858 	ld	(x), a
                           00046A   859 	C$eeprom.c$203$1_0$360 ==.
                                    860 ;	eeprom.c: 203: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[1] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_1);
      00CD82 1E 03            [ 2]  861 	ldw	x, (0x03, sp)
      00CD84 5C               [ 1]  862 	incw	x
      00CD85 1F 05            [ 2]  863 	ldw	(0x05, sp), x
      00CD87 4B 26            [ 1]  864 	push	#0x26
      00CD89 4B 40            [ 1]  865 	push	#0x40
      00CD8B 5F               [ 1]  866 	clrw	x
      00CD8C 89               [ 2]  867 	pushw	x
      00CD8D CD A6 1A         [ 4]  868 	call	_FLASH_ReadByte
      00CD90 5B 04            [ 2]  869 	addw	sp, #4
      00CD92 1E 05            [ 2]  870 	ldw	x, (0x05, sp)
      00CD94 F7               [ 1]  871 	ld	(x), a
                           00047D   872 	C$eeprom.c$204$1_0$360 ==.
                                    873 ;	eeprom.c: 204: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[2] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_2);
      00CD95 1E 03            [ 2]  874 	ldw	x, (0x03, sp)
      00CD97 5C               [ 1]  875 	incw	x
      00CD98 5C               [ 1]  876 	incw	x
      00CD99 1F 05            [ 2]  877 	ldw	(0x05, sp), x
      00CD9B 4B 27            [ 1]  878 	push	#0x27
      00CD9D 4B 40            [ 1]  879 	push	#0x40
      00CD9F 5F               [ 1]  880 	clrw	x
      00CDA0 89               [ 2]  881 	pushw	x
      00CDA1 CD A6 1A         [ 4]  882 	call	_FLASH_ReadByte
      00CDA4 5B 04            [ 2]  883 	addw	sp, #4
      00CDA6 1E 05            [ 2]  884 	ldw	x, (0x05, sp)
      00CDA8 F7               [ 1]  885 	ld	(x), a
                           000491   886 	C$eeprom.c$205$1_0$360 ==.
                                    887 ;	eeprom.c: 205: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[3] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_3);
      00CDA9 1E 03            [ 2]  888 	ldw	x, (0x03, sp)
      00CDAB 1C 00 03         [ 2]  889 	addw	x, #0x0003
      00CDAE 89               [ 2]  890 	pushw	x
      00CDAF 4B 28            [ 1]  891 	push	#0x28
      00CDB1 4B 40            [ 1]  892 	push	#0x40
      00CDB3 4B 00            [ 1]  893 	push	#0x00
      00CDB5 4B 00            [ 1]  894 	push	#0x00
      00CDB7 CD A6 1A         [ 4]  895 	call	_FLASH_ReadByte
      00CDBA 5B 04            [ 2]  896 	addw	sp, #4
      00CDBC 85               [ 2]  897 	popw	x
      00CDBD F7               [ 1]  898 	ld	(x), a
                           0004A6   899 	C$eeprom.c$206$1_0$360 ==.
                                    900 ;	eeprom.c: 206: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[4] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_4);
      00CDBE 1E 03            [ 2]  901 	ldw	x, (0x03, sp)
      00CDC0 1C 00 04         [ 2]  902 	addw	x, #0x0004
      00CDC3 89               [ 2]  903 	pushw	x
      00CDC4 4B 29            [ 1]  904 	push	#0x29
      00CDC6 4B 40            [ 1]  905 	push	#0x40
      00CDC8 4B 00            [ 1]  906 	push	#0x00
      00CDCA 4B 00            [ 1]  907 	push	#0x00
      00CDCC CD A6 1A         [ 4]  908 	call	_FLASH_ReadByte
      00CDCF 5B 04            [ 2]  909 	addw	sp, #4
      00CDD1 85               [ 2]  910 	popw	x
      00CDD2 F7               [ 1]  911 	ld	(x), a
                           0004BB   912 	C$eeprom.c$207$1_0$360 ==.
                                    913 ;	eeprom.c: 207: p_configuration_variables->ui8_walk_assist_ramp_time = FLASH_ReadByte(ADDR_WALK_ASSIST_MAX_RAMP_TIME);
      00CDD3 1E 01            [ 2]  914 	ldw	x, (0x01, sp)
      00CDD5 1C 00 3B         [ 2]  915 	addw	x, #0x003b
      00CDD8 89               [ 2]  916 	pushw	x
      00CDD9 4B 2A            [ 1]  917 	push	#0x2a
      00CDDB 4B 40            [ 1]  918 	push	#0x40
      00CDDD 4B 00            [ 1]  919 	push	#0x00
      00CDDF 4B 00            [ 1]  920 	push	#0x00
      00CDE1 CD A6 1A         [ 4]  921 	call	_FLASH_ReadByte
      00CDE4 5B 04            [ 2]  922 	addw	sp, #4
      00CDE6 85               [ 2]  923 	popw	x
      00CDE7 F7               [ 1]  924 	ld	(x), a
                           0004D0   925 	C$eeprom.c$208$1_0$360 ==.
                                    926 ;	eeprom.c: 208: p_configuration_variables->ui8_walk_assist_off_delay_pwm = FLASH_ReadByte(ADDR_WALK_ASSIST_OFF_DELAY_PWM);
      00CDE8 1E 01            [ 2]  927 	ldw	x, (0x01, sp)
      00CDEA 1C 00 3C         [ 2]  928 	addw	x, #0x003c
      00CDED 89               [ 2]  929 	pushw	x
      00CDEE 4B 2B            [ 1]  930 	push	#0x2b
      00CDF0 4B 40            [ 1]  931 	push	#0x40
      00CDF2 4B 00            [ 1]  932 	push	#0x00
      00CDF4 4B 00            [ 1]  933 	push	#0x00
      00CDF6 CD A6 1A         [ 4]  934 	call	_FLASH_ReadByte
      00CDF9 5B 04            [ 2]  935 	addw	sp, #4
      00CDFB 85               [ 2]  936 	popw	x
      00CDFC F7               [ 1]  937 	ld	(x), a
                           0004E5   938 	C$eeprom.c$209$1_0$360 ==.
                                    939 ;	eeprom.c: 209: ui16_temp = FLASH_ReadByte(ADDR_WALK_ASSIST_OFF_DELAY_TIME_0);
      00CDFD 4B 2C            [ 1]  940 	push	#0x2c
      00CDFF 4B 40            [ 1]  941 	push	#0x40
      00CE01 5F               [ 1]  942 	clrw	x
      00CE02 89               [ 2]  943 	pushw	x
      00CE03 CD A6 1A         [ 4]  944 	call	_FLASH_ReadByte
      00CE06 5B 04            [ 2]  945 	addw	sp, #4
      00CE08 5F               [ 1]  946 	clrw	x
      00CE09 97               [ 1]  947 	ld	xl, a
      00CE0A CF 00 5D         [ 2]  948 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           0004F5   949 	C$eeprom.c$210$1_0$360 ==.
                                    950 ;	eeprom.c: 210: ui8_temp = FLASH_ReadByte(ADDR_WALK_ASSIST_OFF_DELAY_TIME_1);
      00CE0D 4B 2D            [ 1]  951 	push	#0x2d
      00CE0F 4B 40            [ 1]  952 	push	#0x40
      00CE11 5F               [ 1]  953 	clrw	x
      00CE12 89               [ 2]  954 	pushw	x
      00CE13 CD A6 1A         [ 4]  955 	call	_FLASH_ReadByte
      00CE16 5B 04            [ 2]  956 	addw	sp, #4
      00CE18 C7 00 5C         [ 1]  957 	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
                           000503   958 	C$eeprom.c$211$1_0$360 ==.
                                    959 ;	eeprom.c: 211: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
      00CE1B C6 00 5C         [ 1]  960 	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
      00CE1E 95               [ 1]  961 	ld	xh, a
      00CE1F 4F               [ 1]  962 	clr	a
      00CE20 97               [ 1]  963 	ld	xl, a
      00CE21 72 BB 00 5D      [ 2]  964 	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CE25 CF 00 5D         [ 2]  965 	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
                           000510   966 	C$eeprom.c$212$1_0$360 ==.
                                    967 ;	eeprom.c: 212: p_configuration_variables->ui16_walk_assist_off_delay_time = ui16_temp;
      00CE28 1E 01            [ 2]  968 	ldw	x, (0x01, sp)
      00CE2A 90 CE 00 5D      [ 2]  969 	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
      00CE2E EF 3D            [ 2]  970 	ldw	(0x003d, x), y
                           000518   971 	C$eeprom.c$213$1_0$360 ==.
                                    972 ;	eeprom.c: 213: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[0];
      00CE30 1E 01            [ 2]  973 	ldw	x, (0x01, sp)
      00CE32 1C 00 35         [ 2]  974 	addw	x, #0x0035
      00CE35 16 03            [ 2]  975 	ldw	y, (0x03, sp)
      00CE37 90 F6            [ 1]  976 	ld	a, (y)
      00CE39 F7               [ 1]  977 	ld	(x), a
                           000522   978 	C$eeprom.c$214$1_0$360 ==.
                                    979 ;	eeprom.c: 214: }
      00CE3A 5B 06            [ 2]  980 	addw	sp, #6
                           000524   981 	C$eeprom.c$214$1_0$360 ==.
                           000524   982 	XFeeprom$eeprom_read_values_to_variables$0$0 ==.
      00CE3C 81               [ 4]  983 	ret
                           000525   984 	G$eeprom_write_variables$0$0 ==.
                           000525   985 	C$eeprom.c$219$1_0$362 ==.
                                    986 ;	eeprom.c: 219: void eeprom_write_variables(void)
                                    987 ;	-----------------------------------------
                                    988 ;	 function eeprom_write_variables
                                    989 ;	-----------------------------------------
      00CE3D                        990 _eeprom_write_variables:
      00CE3D 52 2F            [ 2]  991 	sub	sp, #47
                           000527   992 	C$eeprom.c$222$1_0$362 ==.
                                    993 ;	eeprom.c: 222: variables_to_array(array_variables);
      00CE3F 96               [ 1]  994 	ldw	x, sp
      00CE40 5C               [ 1]  995 	incw	x
      00CE41 90 93            [ 1]  996 	ldw	y, x
      00CE43 89               [ 2]  997 	pushw	x
      00CE44 90 89            [ 2]  998 	pushw	y
      00CE46 CD CE 55         [ 4]  999 	call	_variables_to_array
      00CE49 5B 02            [ 2] 1000 	addw	sp, #2
      00CE4B 85               [ 2] 1001 	popw	x
                           000534  1002 	C$eeprom.c$223$1_0$362 ==.
                                   1003 ;	eeprom.c: 223: eeprom_write_array(array_variables);
      00CE4C 89               [ 2] 1004 	pushw	x
      00CE4D CD D0 C3         [ 4] 1005 	call	_eeprom_write_array
      00CE50 5B 02            [ 2] 1006 	addw	sp, #2
                           00053A  1007 	C$eeprom.c$224$1_0$362 ==.
                                   1008 ;	eeprom.c: 224: }
      00CE52 5B 2F            [ 2] 1009 	addw	sp, #47
                           00053C  1010 	C$eeprom.c$224$1_0$362 ==.
                           00053C  1011 	XG$eeprom_write_variables$0$0 ==.
      00CE54 81               [ 4] 1012 	ret
                           00053D  1013 	Feeprom$variables_to_array$0$0 ==.
                           00053D  1014 	C$eeprom.c$229$1_0$364 ==.
                                   1015 ;	eeprom.c: 229: static void variables_to_array(uint8_t *ui8_array)
                                   1016 ;	-----------------------------------------
                                   1017 ;	 function variables_to_array
                                   1018 ;	-----------------------------------------
      00CE55                       1019 _variables_to_array:
      00CE55 52 05            [ 2] 1020 	sub	sp, #5
                           00053F  1021 	C$eeprom.c$232$1_0$364 ==.
                                   1022 ;	eeprom.c: 232: p_configuration_variables = get_configuration_variables();
      00CE57 CD C6 33         [ 4] 1023 	call	_get_configuration_variables
      00CE5A 1F 01            [ 2] 1024 	ldw	(0x01, sp), x
                           000544  1025 	C$eeprom.c$234$1_0$364 ==.
                                   1026 ;	eeprom.c: 234: ui8_array[0] = KEY;
      00CE5C 16 08            [ 2] 1027 	ldw	y, (0x08, sp)
      00CE5E 17 03            [ 2] 1028 	ldw	(0x03, sp), y
      00CE60 93               [ 1] 1029 	ldw	x, y
      00CE61 A6 AA            [ 1] 1030 	ld	a, #0xaa
      00CE63 F7               [ 1] 1031 	ld	(x), a
                           00054C  1032 	C$eeprom.c$235$1_0$364 ==.
                                   1033 ;	eeprom.c: 235: ui8_array[1] = p_configuration_variables->ui8_assist_level_factor_x10;
      00CE64 1E 03            [ 2] 1034 	ldw	x, (0x03, sp)
      00CE66 5C               [ 1] 1035 	incw	x
      00CE67 16 01            [ 2] 1036 	ldw	y, (0x01, sp)
      00CE69 90 F6            [ 1] 1037 	ld	a, (y)
      00CE6B F7               [ 1] 1038 	ld	(x), a
                           000554  1039 	C$eeprom.c$236$1_0$364 ==.
                                   1040 ;	eeprom.c: 236: ui8_array[2] = (p_configuration_variables->ui8_lights & 1) |
      00CE6C 16 03            [ 2] 1041 	ldw	y, (0x03, sp)
      00CE6E 72 A9 00 02      [ 2] 1042 	addw	y, #0x0002
      00CE72 1E 01            [ 2] 1043 	ldw	x, (0x01, sp)
      00CE74 E6 07            [ 1] 1044 	ld	a, (0x7, x)
      00CE76 A4 01            [ 1] 1045 	and	a, #0x01
      00CE78 6B 05            [ 1] 1046 	ld	(0x05, sp), a
                           000562  1047 	C$eeprom.c$237$1_0$364 ==.
                                   1048 ;	eeprom.c: 237: ((p_configuration_variables->ui8_walk_assist & 1) << 1) |
      00CE7A 1E 01            [ 2] 1049 	ldw	x, (0x01, sp)
      00CE7C E6 08            [ 1] 1050 	ld	a, (0x8, x)
      00CE7E A4 01            [ 1] 1051 	and	a, #0x01
      00CE80 48               [ 1] 1052 	sll	a
      00CE81 1A 05            [ 1] 1053 	or	a, (0x05, sp)
      00CE83 6B 05            [ 1] 1054 	ld	(0x05, sp), a
                           00056D  1055 	C$eeprom.c$238$1_0$364 ==.
                                   1056 ;	eeprom.c: 238: ((p_configuration_variables->ui8_offroad_mode & 1) << 2) |
      00CE85 1E 01            [ 2] 1057 	ldw	x, (0x01, sp)
      00CE87 E6 09            [ 1] 1058 	ld	a, (0x9, x)
      00CE89 A4 01            [ 1] 1059 	and	a, #0x01
      00CE8B 48               [ 1] 1060 	sll	a
      00CE8C 48               [ 1] 1061 	sll	a
      00CE8D 1A 05            [ 1] 1062 	or	a, (0x05, sp)
      00CE8F 6B 05            [ 1] 1063 	ld	(0x05, sp), a
                           000579  1064 	C$eeprom.c$239$1_0$364 ==.
                                   1065 ;	eeprom.c: 239: ((p_configuration_variables->ui8_emtb_mode & 1) << 3) |
      00CE91 1E 01            [ 2] 1066 	ldw	x, (0x01, sp)
      00CE93 E6 0A            [ 1] 1067 	ld	a, (0xa, x)
      00CE95 A4 01            [ 1] 1068 	and	a, #0x01
      00CE97 48               [ 1] 1069 	sll	a
      00CE98 48               [ 1] 1070 	sll	a
      00CE99 48               [ 1] 1071 	sll	a
      00CE9A 1A 05            [ 1] 1072 	or	a, (0x05, sp)
      00CE9C 6B 05            [ 1] 1073 	ld	(0x05, sp), a
                           000586  1074 	C$eeprom.c$240$1_0$364 ==.
                                   1075 ;	eeprom.c: 240: ((p_configuration_variables->ui8_emtb_enabled_on_startup) << 4);
      00CE9E 1E 01            [ 2] 1076 	ldw	x, (0x01, sp)
      00CEA0 E6 0B            [ 1] 1077 	ld	a, (0xb, x)
      00CEA2 4E               [ 1] 1078 	swap	a
      00CEA3 A4 F0            [ 1] 1079 	and	a, #0xf0
      00CEA5 1A 05            [ 1] 1080 	or	a, (0x05, sp)
      00CEA7 90 F7            [ 1] 1081 	ld	(y), a
                           000591  1082 	C$eeprom.c$241$1_0$364 ==.
                                   1083 ;	eeprom.c: 241: ui8_array[3] = p_configuration_variables->ui8_battery_max_current;
      00CEA9 1E 03            [ 2] 1084 	ldw	x, (0x03, sp)
      00CEAB 1C 00 03         [ 2] 1085 	addw	x, #0x0003
      00CEAE 16 01            [ 2] 1086 	ldw	y, (0x01, sp)
      00CEB0 90 E6 01         [ 1] 1087 	ld	a, (0x1, y)
      00CEB3 F7               [ 1] 1088 	ld	(x), a
                           00059C  1089 	C$eeprom.c$242$1_0$364 ==.
                                   1090 ;	eeprom.c: 242: ui8_array[4] = p_configuration_variables->ui8_motor_power_div10;
      00CEB4 1E 03            [ 2] 1091 	ldw	x, (0x03, sp)
      00CEB6 1C 00 04         [ 2] 1092 	addw	x, #0x0004
      00CEB9 16 01            [ 2] 1093 	ldw	y, (0x01, sp)
      00CEBB 90 E6 02         [ 1] 1094 	ld	a, (0x2, y)
      00CEBE F7               [ 1] 1095 	ld	(x), a
                           0005A7  1096 	C$eeprom.c$243$1_0$364 ==.
                                   1097 ;	eeprom.c: 243: ui8_array[5] = p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 & 255;
      00CEBF 1E 03            [ 2] 1098 	ldw	x, (0x03, sp)
      00CEC1 1C 00 05         [ 2] 1099 	addw	x, #0x0005
      00CEC4 16 01            [ 2] 1100 	ldw	y, (0x01, sp)
      00CEC6 72 A9 00 03      [ 2] 1101 	addw	y, #0x0003
      00CECA 90 E6 01         [ 1] 1102 	ld	a, (0x1, y)
      00CECD F7               [ 1] 1103 	ld	(x), a
                           0005B6  1104 	C$eeprom.c$244$1_0$364 ==.
                                   1105 ;	eeprom.c: 244: ui8_array[6] = (p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 >> 8) & 255;
      00CECE 1E 03            [ 2] 1106 	ldw	x, (0x03, sp)
      00CED0 1C 00 06         [ 2] 1107 	addw	x, #0x0006
      00CED3 90 FE            [ 2] 1108 	ldw	y, (y)
      00CED5 90 9E            [ 1] 1109 	ld	a, yh
      00CED7 F7               [ 1] 1110 	ld	(x), a
                           0005C0  1111 	C$eeprom.c$245$1_0$364 ==.
                                   1112 ;	eeprom.c: 245: ui8_array[7] = p_configuration_variables->ui16_wheel_perimeter & 255;
      00CED8 1E 03            [ 2] 1113 	ldw	x, (0x03, sp)
      00CEDA 1C 00 07         [ 2] 1114 	addw	x, #0x0007
      00CEDD 16 01            [ 2] 1115 	ldw	y, (0x01, sp)
      00CEDF 72 A9 00 05      [ 2] 1116 	addw	y, #0x0005
      00CEE3 90 E6 01         [ 1] 1117 	ld	a, (0x1, y)
      00CEE6 F7               [ 1] 1118 	ld	(x), a
                           0005CF  1119 	C$eeprom.c$246$1_0$364 ==.
                                   1120 ;	eeprom.c: 246: ui8_array[8] = (p_configuration_variables->ui16_wheel_perimeter >> 8) & 255;
      00CEE7 1E 03            [ 2] 1121 	ldw	x, (0x03, sp)
      00CEE9 1C 00 08         [ 2] 1122 	addw	x, #0x0008
      00CEEC 90 FE            [ 2] 1123 	ldw	y, (y)
      00CEEE 90 9E            [ 1] 1124 	ld	a, yh
      00CEF0 F7               [ 1] 1125 	ld	(x), a
                           0005D9  1126 	C$eeprom.c$247$1_0$364 ==.
                                   1127 ;	eeprom.c: 247: ui8_array[9] = p_configuration_variables->ui8_wheel_max_speed;
      00CEF1 1E 03            [ 2] 1128 	ldw	x, (0x03, sp)
      00CEF3 1C 00 09         [ 2] 1129 	addw	x, #0x0009
      00CEF6 16 01            [ 2] 1130 	ldw	y, (0x01, sp)
      00CEF8 90 E6 0C         [ 1] 1131 	ld	a, (0xc, y)
      00CEFB F7               [ 1] 1132 	ld	(x), a
                           0005E4  1133 	C$eeprom.c$248$1_0$364 ==.
                                   1134 ;	eeprom.c: 248: ui8_array[10] = (p_configuration_variables->ui8_motor_type & 3) |
      00CEFC 1E 03            [ 2] 1135 	ldw	x, (0x03, sp)
      00CEFE 1C 00 0A         [ 2] 1136 	addw	x, #0x000a
      00CF01 16 01            [ 2] 1137 	ldw	y, (0x01, sp)
      00CF03 90 E6 0D         [ 1] 1138 	ld	a, (0xd, y)
      00CF06 A4 03            [ 1] 1139 	and	a, #0x03
      00CF08 6B 05            [ 1] 1140 	ld	(0x05, sp), a
                           0005F2  1141 	C$eeprom.c$249$1_0$364 ==.
                                   1142 ;	eeprom.c: 249: ((p_configuration_variables->ui8_motor_assistance_startup_without_pedal_rotation & 1) << 2);
      00CF0A 16 01            [ 2] 1143 	ldw	y, (0x01, sp)
      00CF0C 90 E6 0E         [ 1] 1144 	ld	a, (0xe, y)
      00CF0F A4 01            [ 1] 1145 	and	a, #0x01
      00CF11 48               [ 1] 1146 	sll	a
      00CF12 48               [ 1] 1147 	sll	a
      00CF13 1A 05            [ 1] 1148 	or	a, (0x05, sp)
      00CF15 F7               [ 1] 1149 	ld	(x), a
                           0005FE  1150 	C$eeprom.c$250$1_0$364 ==.
                                   1151 ;	eeprom.c: 250: ui8_array[11] = (p_configuration_variables->ui8_street_feature_enabled & 1) |
      00CF16 16 03            [ 2] 1152 	ldw	y, (0x03, sp)
      00CF18 72 A9 00 0B      [ 2] 1153 	addw	y, #0x000b
      00CF1C 1E 01            [ 2] 1154 	ldw	x, (0x01, sp)
      00CF1E E6 1E            [ 1] 1155 	ld	a, (0x1e, x)
      00CF20 A4 01            [ 1] 1156 	and	a, #0x01
      00CF22 6B 05            [ 1] 1157 	ld	(0x05, sp), a
                           00060C  1158 	C$eeprom.c$251$1_0$364 ==.
                                   1159 ;	eeprom.c: 251: ((p_configuration_variables->ui8_street_enabled_on_startup & 1) << 1) |
      00CF24 1E 01            [ 2] 1160 	ldw	x, (0x01, sp)
      00CF26 E6 1F            [ 1] 1161 	ld	a, (0x1f, x)
      00CF28 A4 01            [ 1] 1162 	and	a, #0x01
      00CF2A 48               [ 1] 1163 	sll	a
      00CF2B 1A 05            [ 1] 1164 	or	a, (0x05, sp)
      00CF2D 6B 05            [ 1] 1165 	ld	(0x05, sp), a
                           000617  1166 	C$eeprom.c$252$1_0$364 ==.
                                   1167 ;	eeprom.c: 252: ((p_configuration_variables->ui8_street_power_limit_enabled & 1) << 2);
      00CF2F 1E 01            [ 2] 1168 	ldw	x, (0x01, sp)
      00CF31 E6 21            [ 1] 1169 	ld	a, (0x21, x)
      00CF33 A4 01            [ 1] 1170 	and	a, #0x01
      00CF35 48               [ 1] 1171 	sll	a
      00CF36 48               [ 1] 1172 	sll	a
      00CF37 1A 05            [ 1] 1173 	or	a, (0x05, sp)
      00CF39 90 F7            [ 1] 1174 	ld	(y), a
                           000623  1175 	C$eeprom.c$253$1_0$364 ==.
                                   1176 ;	eeprom.c: 253: ui8_array[12] = p_configuration_variables->ui8_street_speed_limit;
      00CF3B 1E 03            [ 2] 1177 	ldw	x, (0x03, sp)
      00CF3D 1C 00 0C         [ 2] 1178 	addw	x, #0x000c
      00CF40 16 01            [ 2] 1179 	ldw	y, (0x01, sp)
      00CF42 90 E6 20         [ 1] 1180 	ld	a, (0x20, y)
      00CF45 F7               [ 1] 1181 	ld	(x), a
                           00062E  1182 	C$eeprom.c$254$1_0$364 ==.
                                   1183 ;	eeprom.c: 254: ui8_array[13] = p_configuration_variables->ui8_street_power_limit_div25;
      00CF46 1E 03            [ 2] 1184 	ldw	x, (0x03, sp)
      00CF48 1C 00 0D         [ 2] 1185 	addw	x, #0x000d
      00CF4B 16 01            [ 2] 1186 	ldw	y, (0x01, sp)
      00CF4D 90 E6 22         [ 1] 1187 	ld	a, (0x22, y)
      00CF50 F7               [ 1] 1188 	ld	(x), a
                           000639  1189 	C$eeprom.c$255$1_0$364 ==.
                                   1190 ;	eeprom.c: 255: ui8_array[14] = p_configuration_variables->ui8_battery_cells_number;
      00CF51 1E 03            [ 2] 1191 	ldw	x, (0x03, sp)
      00CF53 1C 00 0E         [ 2] 1192 	addw	x, #0x000e
      00CF56 16 01            [ 2] 1193 	ldw	y, (0x01, sp)
      00CF58 90 E6 26         [ 1] 1194 	ld	a, (0x26, y)
      00CF5B F7               [ 1] 1195 	ld	(x), a
                           000644  1196 	C$eeprom.c$256$1_0$364 ==.
                                   1197 ;	eeprom.c: 256: ui8_array[15] = p_configuration_variables->ui16_battery_pack_resistance_x1000 & 255;
      00CF5C 1E 03            [ 2] 1198 	ldw	x, (0x03, sp)
      00CF5E 1C 00 0F         [ 2] 1199 	addw	x, #0x000f
      00CF61 16 01            [ 2] 1200 	ldw	y, (0x01, sp)
      00CF63 72 A9 00 27      [ 2] 1201 	addw	y, #0x0027
      00CF67 90 E6 01         [ 1] 1202 	ld	a, (0x1, y)
      00CF6A F7               [ 1] 1203 	ld	(x), a
                           000653  1204 	C$eeprom.c$257$1_0$364 ==.
                                   1205 ;	eeprom.c: 257: ui8_array[16] = (p_configuration_variables->ui16_battery_pack_resistance_x1000 >> 8) & 255;
      00CF6B 1E 03            [ 2] 1206 	ldw	x, (0x03, sp)
      00CF6D 1C 00 10         [ 2] 1207 	addw	x, #0x0010
      00CF70 90 FE            [ 2] 1208 	ldw	y, (y)
      00CF72 90 9E            [ 1] 1209 	ld	a, yh
      00CF74 F7               [ 1] 1210 	ld	(x), a
                           00065D  1211 	C$eeprom.c$258$1_0$364 ==.
                                   1212 ;	eeprom.c: 258: ui8_array[17] = p_configuration_variables->ui16_oem_wheel_speed_factor & 255;
      00CF75 1E 03            [ 2] 1213 	ldw	x, (0x03, sp)
      00CF77 1C 00 11         [ 2] 1214 	addw	x, #0x0011
      00CF7A 16 01            [ 2] 1215 	ldw	y, (0x01, sp)
      00CF7C 72 A9 00 29      [ 2] 1216 	addw	y, #0x0029
      00CF80 90 E6 01         [ 1] 1217 	ld	a, (0x1, y)
      00CF83 F7               [ 1] 1218 	ld	(x), a
                           00066C  1219 	C$eeprom.c$259$1_0$364 ==.
                                   1220 ;	eeprom.c: 259: ui8_array[18] = (p_configuration_variables->ui16_oem_wheel_speed_factor >> 8) & 255;
      00CF84 1E 03            [ 2] 1221 	ldw	x, (0x03, sp)
      00CF86 1C 00 12         [ 2] 1222 	addw	x, #0x0012
      00CF89 90 FE            [ 2] 1223 	ldw	y, (y)
      00CF8B 90 9E            [ 1] 1224 	ld	a, yh
      00CF8D F7               [ 1] 1225 	ld	(x), a
                           000676  1226 	C$eeprom.c$261$1_0$364 ==.
                                   1227 ;	eeprom.c: 261: ui8_array[19] = p_configuration_variables->ui8_assist_level_power[0];
      00CF8E 1E 03            [ 2] 1228 	ldw	x, (0x03, sp)
      00CF90 1C 00 13         [ 2] 1229 	addw	x, #0x0013
      00CF93 16 01            [ 2] 1230 	ldw	y, (0x01, sp)
      00CF95 90 E6 2B         [ 1] 1231 	ld	a, (0x2b, y)
      00CF98 F7               [ 1] 1232 	ld	(x), a
                           000681  1233 	C$eeprom.c$262$1_0$364 ==.
                                   1234 ;	eeprom.c: 262: ui8_array[20] = p_configuration_variables->ui8_assist_level_power[1];
      00CF99 1E 03            [ 2] 1235 	ldw	x, (0x03, sp)
      00CF9B 1C 00 14         [ 2] 1236 	addw	x, #0x0014
      00CF9E 16 01            [ 2] 1237 	ldw	y, (0x01, sp)
      00CFA0 90 E6 2C         [ 1] 1238 	ld	a, (0x2c, y)
      00CFA3 F7               [ 1] 1239 	ld	(x), a
                           00068C  1240 	C$eeprom.c$263$1_0$364 ==.
                                   1241 ;	eeprom.c: 263: ui8_array[21] = p_configuration_variables->ui8_assist_level_power[2];
      00CFA4 1E 03            [ 2] 1242 	ldw	x, (0x03, sp)
      00CFA6 1C 00 15         [ 2] 1243 	addw	x, #0x0015
      00CFA9 16 01            [ 2] 1244 	ldw	y, (0x01, sp)
      00CFAB 90 E6 2D         [ 1] 1245 	ld	a, (0x2d, y)
      00CFAE F7               [ 1] 1246 	ld	(x), a
                           000697  1247 	C$eeprom.c$264$1_0$364 ==.
                                   1248 ;	eeprom.c: 264: ui8_array[22] = p_configuration_variables->ui8_assist_level_power[3];
      00CFAF 1E 03            [ 2] 1249 	ldw	x, (0x03, sp)
      00CFB1 1C 00 16         [ 2] 1250 	addw	x, #0x0016
      00CFB4 16 01            [ 2] 1251 	ldw	y, (0x01, sp)
      00CFB6 90 E6 2E         [ 1] 1252 	ld	a, (0x2e, y)
      00CFB9 F7               [ 1] 1253 	ld	(x), a
                           0006A2  1254 	C$eeprom.c$266$1_0$364 ==.
                                   1255 ;	eeprom.c: 266: ui8_array[23] = p_configuration_variables->ui8_startup_motor_power_boost_state;
      00CFBA 1E 03            [ 2] 1256 	ldw	x, (0x03, sp)
      00CFBC 1C 00 17         [ 2] 1257 	addw	x, #0x0017
      00CFBF 16 01            [ 2] 1258 	ldw	y, (0x01, sp)
      00CFC1 90 E6 13         [ 1] 1259 	ld	a, (0x13, y)
      00CFC4 F7               [ 1] 1260 	ld	(x), a
                           0006AD  1261 	C$eeprom.c$267$1_0$364 ==.
                                   1262 ;	eeprom.c: 267: ui8_array[24] = p_configuration_variables->ui8_startup_motor_power_boost_feature_enabled;
      00CFC5 1E 03            [ 2] 1263 	ldw	x, (0x03, sp)
      00CFC7 1C 00 18         [ 2] 1264 	addw	x, #0x0018
      00CFCA 16 01            [ 2] 1265 	ldw	y, (0x01, sp)
      00CFCC 90 E6 11         [ 1] 1266 	ld	a, (0x11, y)
      00CFCF F7               [ 1] 1267 	ld	(x), a
                           0006B8  1268 	C$eeprom.c$268$1_0$364 ==.
                                   1269 ;	eeprom.c: 268: ui8_array[25] = p_configuration_variables->ui8_startup_motor_power_boost[0];
      00CFD0 1E 03            [ 2] 1270 	ldw	x, (0x03, sp)
      00CFD2 1C 00 19         [ 2] 1271 	addw	x, #0x0019
      00CFD5 16 01            [ 2] 1272 	ldw	y, (0x01, sp)
      00CFD7 90 E6 30         [ 1] 1273 	ld	a, (0x30, y)
      00CFDA F7               [ 1] 1274 	ld	(x), a
                           0006C3  1275 	C$eeprom.c$269$1_0$364 ==.
                                   1276 ;	eeprom.c: 269: ui8_array[26] = p_configuration_variables->ui8_startup_motor_power_boost[1];
      00CFDB 1E 03            [ 2] 1277 	ldw	x, (0x03, sp)
      00CFDD 1C 00 1A         [ 2] 1278 	addw	x, #0x001a
      00CFE0 16 01            [ 2] 1279 	ldw	y, (0x01, sp)
      00CFE2 90 E6 31         [ 1] 1280 	ld	a, (0x31, y)
      00CFE5 F7               [ 1] 1281 	ld	(x), a
                           0006CE  1282 	C$eeprom.c$270$1_0$364 ==.
                                   1283 ;	eeprom.c: 270: ui8_array[27] = p_configuration_variables->ui8_startup_motor_power_boost[2];
      00CFE6 1E 03            [ 2] 1284 	ldw	x, (0x03, sp)
      00CFE8 1C 00 1B         [ 2] 1285 	addw	x, #0x001b
      00CFEB 16 01            [ 2] 1286 	ldw	y, (0x01, sp)
      00CFED 90 E6 32         [ 1] 1287 	ld	a, (0x32, y)
      00CFF0 F7               [ 1] 1288 	ld	(x), a
                           0006D9  1289 	C$eeprom.c$271$1_0$364 ==.
                                   1290 ;	eeprom.c: 271: ui8_array[28] = p_configuration_variables->ui8_startup_motor_power_boost[3];
      00CFF1 1E 03            [ 2] 1291 	ldw	x, (0x03, sp)
      00CFF3 1C 00 1C         [ 2] 1292 	addw	x, #0x001c
      00CFF6 16 01            [ 2] 1293 	ldw	y, (0x01, sp)
      00CFF8 90 E6 33         [ 1] 1294 	ld	a, (0x33, y)
      00CFFB F7               [ 1] 1295 	ld	(x), a
                           0006E4  1296 	C$eeprom.c$272$1_0$364 ==.
                                   1297 ;	eeprom.c: 272: ui8_array[29] = p_configuration_variables->ui8_startup_motor_power_boost_time;
      00CFFC 1E 03            [ 2] 1298 	ldw	x, (0x03, sp)
      00CFFE 1C 00 1D         [ 2] 1299 	addw	x, #0x001d
      00D001 16 01            [ 2] 1300 	ldw	y, (0x01, sp)
      00D003 90 E6 15         [ 1] 1301 	ld	a, (0x15, y)
      00D006 F7               [ 1] 1302 	ld	(x), a
                           0006EF  1303 	C$eeprom.c$273$1_0$364 ==.
                                   1304 ;	eeprom.c: 273: ui8_array[30] = p_configuration_variables->ui8_startup_motor_power_boost_fade_time;
      00D007 1E 03            [ 2] 1305 	ldw	x, (0x03, sp)
      00D009 1C 00 1E         [ 2] 1306 	addw	x, #0x001e
      00D00C 16 01            [ 2] 1307 	ldw	y, (0x01, sp)
      00D00E 90 E6 16         [ 1] 1308 	ld	a, (0x16, y)
      00D011 F7               [ 1] 1309 	ld	(x), a
                           0006FA  1310 	C$eeprom.c$274$1_0$364 ==.
                                   1311 ;	eeprom.c: 274: ui8_array[31] = p_configuration_variables->ui8_startup_motor_power_boost_limit_to_max_power;
      00D012 1E 03            [ 2] 1312 	ldw	x, (0x03, sp)
      00D014 1C 00 1F         [ 2] 1313 	addw	x, #0x001f
      00D017 16 01            [ 2] 1314 	ldw	y, (0x01, sp)
      00D019 90 E6 14         [ 1] 1315 	ld	a, (0x14, y)
      00D01C F7               [ 1] 1316 	ld	(x), a
                           000705  1317 	C$eeprom.c$276$1_0$364 ==.
                                   1318 ;	eeprom.c: 276: ui8_array[32] = p_configuration_variables->ui8_target_battery_max_power_div25;
      00D01D 1E 03            [ 2] 1319 	ldw	x, (0x03, sp)
      00D01F 1C 00 20         [ 2] 1320 	addw	x, #0x0020
      00D022 16 01            [ 2] 1321 	ldw	y, (0x01, sp)
      00D024 90 E6 0F         [ 1] 1322 	ld	a, (0xf, y)
      00D027 F7               [ 1] 1323 	ld	(x), a
                           000710  1324 	C$eeprom.c$278$1_0$364 ==.
                                   1325 ;	eeprom.c: 278: ui8_array[33] = p_configuration_variables->ui8_temperature_limit_feature_enabled;
      00D028 1E 03            [ 2] 1326 	ldw	x, (0x03, sp)
      00D02A 1C 00 21         [ 2] 1327 	addw	x, #0x0021
      00D02D 16 01            [ 2] 1328 	ldw	y, (0x01, sp)
      00D02F 90 E6 17         [ 1] 1329 	ld	a, (0x17, y)
      00D032 F7               [ 1] 1330 	ld	(x), a
                           00071B  1331 	C$eeprom.c$279$1_0$364 ==.
                                   1332 ;	eeprom.c: 279: ui8_array[34] = p_configuration_variables->ui8_motor_temperature_min_value_to_limit;
      00D033 1E 03            [ 2] 1333 	ldw	x, (0x03, sp)
      00D035 1C 00 22         [ 2] 1334 	addw	x, #0x0022
      00D038 16 01            [ 2] 1335 	ldw	y, (0x01, sp)
      00D03A 90 E6 18         [ 1] 1336 	ld	a, (0x18, y)
      00D03D F7               [ 1] 1337 	ld	(x), a
                           000726  1338 	C$eeprom.c$280$1_0$364 ==.
                                   1339 ;	eeprom.c: 280: ui8_array[35] = p_configuration_variables->ui8_motor_temperature_max_value_to_limit;
      00D03E 1E 03            [ 2] 1340 	ldw	x, (0x03, sp)
      00D040 1C 00 23         [ 2] 1341 	addw	x, #0x0023
      00D043 16 01            [ 2] 1342 	ldw	y, (0x01, sp)
      00D045 90 E6 19         [ 1] 1343 	ld	a, (0x19, y)
      00D048 F7               [ 1] 1344 	ld	(x), a
                           000731  1345 	C$eeprom.c$282$1_0$364 ==.
                                   1346 ;	eeprom.c: 282: ui8_array[36] = p_configuration_variables->ui8_walk_assist_percentage_current;
      00D049 1E 03            [ 2] 1347 	ldw	x, (0x03, sp)
      00D04B 1C 00 24         [ 2] 1348 	addw	x, #0x0024
      00D04E 16 01            [ 2] 1349 	ldw	y, (0x01, sp)
      00D050 90 E6 34         [ 1] 1350 	ld	a, (0x34, y)
      00D053 F7               [ 1] 1351 	ld	(x), a
                           00073C  1352 	C$eeprom.c$283$1_0$364 ==.
                                   1353 ;	eeprom.c: 283: ui8_array[37] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[0];
      00D054 1E 03            [ 2] 1354 	ldw	x, (0x03, sp)
      00D056 1C 00 25         [ 2] 1355 	addw	x, #0x0025
      00D059 16 01            [ 2] 1356 	ldw	y, (0x01, sp)
      00D05B 90 E6 36         [ 1] 1357 	ld	a, (0x36, y)
      00D05E F7               [ 1] 1358 	ld	(x), a
                           000747  1359 	C$eeprom.c$284$1_0$364 ==.
                                   1360 ;	eeprom.c: 284: ui8_array[38] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[1];
      00D05F 1E 03            [ 2] 1361 	ldw	x, (0x03, sp)
      00D061 1C 00 26         [ 2] 1362 	addw	x, #0x0026
      00D064 16 01            [ 2] 1363 	ldw	y, (0x01, sp)
      00D066 90 E6 37         [ 1] 1364 	ld	a, (0x37, y)
      00D069 F7               [ 1] 1365 	ld	(x), a
                           000752  1366 	C$eeprom.c$285$1_0$364 ==.
                                   1367 ;	eeprom.c: 285: ui8_array[39] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[2];
      00D06A 1E 03            [ 2] 1368 	ldw	x, (0x03, sp)
      00D06C 1C 00 27         [ 2] 1369 	addw	x, #0x0027
      00D06F 16 01            [ 2] 1370 	ldw	y, (0x01, sp)
      00D071 90 E6 38         [ 1] 1371 	ld	a, (0x38, y)
      00D074 F7               [ 1] 1372 	ld	(x), a
                           00075D  1373 	C$eeprom.c$286$1_0$364 ==.
                                   1374 ;	eeprom.c: 286: ui8_array[40] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[3];
      00D075 1E 03            [ 2] 1375 	ldw	x, (0x03, sp)
      00D077 1C 00 28         [ 2] 1376 	addw	x, #0x0028
      00D07A 16 01            [ 2] 1377 	ldw	y, (0x01, sp)
      00D07C 90 E6 39         [ 1] 1378 	ld	a, (0x39, y)
      00D07F F7               [ 1] 1379 	ld	(x), a
                           000768  1380 	C$eeprom.c$287$1_0$364 ==.
                                   1381 ;	eeprom.c: 287: ui8_array[41] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[4];
      00D080 1E 03            [ 2] 1382 	ldw	x, (0x03, sp)
      00D082 1C 00 29         [ 2] 1383 	addw	x, #0x0029
      00D085 16 01            [ 2] 1384 	ldw	y, (0x01, sp)
      00D087 90 E6 3A         [ 1] 1385 	ld	a, (0x3a, y)
      00D08A F7               [ 1] 1386 	ld	(x), a
                           000773  1387 	C$eeprom.c$288$1_0$364 ==.
                                   1388 ;	eeprom.c: 288: ui8_array[42] = p_configuration_variables->ui8_walk_assist_ramp_time;
      00D08B 1E 03            [ 2] 1389 	ldw	x, (0x03, sp)
      00D08D 1C 00 2A         [ 2] 1390 	addw	x, #0x002a
      00D090 16 01            [ 2] 1391 	ldw	y, (0x01, sp)
      00D092 90 E6 3B         [ 1] 1392 	ld	a, (0x3b, y)
      00D095 F7               [ 1] 1393 	ld	(x), a
                           00077E  1394 	C$eeprom.c$289$1_0$364 ==.
                                   1395 ;	eeprom.c: 289: ui8_array[43] = p_configuration_variables->ui8_walk_assist_off_delay_pwm;
      00D096 1E 03            [ 2] 1396 	ldw	x, (0x03, sp)
      00D098 1C 00 2B         [ 2] 1397 	addw	x, #0x002b
      00D09B 16 01            [ 2] 1398 	ldw	y, (0x01, sp)
      00D09D 90 E6 3C         [ 1] 1399 	ld	a, (0x3c, y)
      00D0A0 F7               [ 1] 1400 	ld	(x), a
                           000789  1401 	C$eeprom.c$290$1_0$364 ==.
                                   1402 ;	eeprom.c: 290: ui8_array[44] = p_configuration_variables->ui16_walk_assist_off_delay_time & 255;
      00D0A1 1E 03            [ 2] 1403 	ldw	x, (0x03, sp)
      00D0A3 1C 00 2C         [ 2] 1404 	addw	x, #0x002c
      00D0A6 16 01            [ 2] 1405 	ldw	y, (0x01, sp)
      00D0A8 72 A9 00 3D      [ 2] 1406 	addw	y, #0x003d
      00D0AC 90 E6 01         [ 1] 1407 	ld	a, (0x1, y)
      00D0AF F7               [ 1] 1408 	ld	(x), a
                           000798  1409 	C$eeprom.c$291$1_0$364 ==.
                                   1410 ;	eeprom.c: 291: ui8_array[45] = (p_configuration_variables->ui16_walk_assist_off_delay_time >> 8) & 255;
      00D0B0 1E 03            [ 2] 1411 	ldw	x, (0x03, sp)
      00D0B2 1C 00 2D         [ 2] 1412 	addw	x, #0x002d
      00D0B5 90 FE            [ 2] 1413 	ldw	y, (y)
      00D0B7 90 9E            [ 1] 1414 	ld	a, yh
      00D0B9 F7               [ 1] 1415 	ld	(x), a
                           0007A2  1416 	C$eeprom.c$292$1_0$364 ==.
                                   1417 ;	eeprom.c: 292: ui8_array[46] = KEY2;
      00D0BA 1E 03            [ 2] 1418 	ldw	x, (0x03, sp)
      00D0BC A6 55            [ 1] 1419 	ld	a, #0x55
      00D0BE E7 2E            [ 1] 1420 	ld	(0x002e, x), a
                           0007A8  1421 	C$eeprom.c$293$1_0$364 ==.
                                   1422 ;	eeprom.c: 293: }
      00D0C0 5B 05            [ 2] 1423 	addw	sp, #5
                           0007AA  1424 	C$eeprom.c$293$1_0$364 ==.
                           0007AA  1425 	XFeeprom$variables_to_array$0$0 ==.
      00D0C2 81               [ 4] 1426 	ret
                           0007AB  1427 	Feeprom$eeprom_write_array$0$0 ==.
                           0007AB  1428 	C$eeprom.c$298$1_0$366 ==.
                                   1429 ;	eeprom.c: 298: static void eeprom_write_array(uint8_t *array)
                                   1430 ;	-----------------------------------------
                                   1431 ;	 function eeprom_write_array
                                   1432 ;	-----------------------------------------
      00D0C3                       1433 _eeprom_write_array:
      00D0C3 52 05            [ 2] 1434 	sub	sp, #5
                           0007AD  1435 	C$eeprom.c$302$1_0$366 ==.
                                   1436 ;	eeprom.c: 302: FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
      00D0C5 4B 00            [ 1] 1437 	push	#0x00
      00D0C7 CD A7 07         [ 4] 1438 	call	_FLASH_SetProgrammingTime
      00D0CA 84               [ 1] 1439 	pop	a
                           0007B3  1440 	C$eeprom.c$304$1_0$366 ==.
                                   1441 ;	eeprom.c: 304: FLASH_Unlock(FLASH_MEMTYPE_DATA); // Unlock Data memory  
      00D0CB 4B F7            [ 1] 1442 	push	#0xf7
      00D0CD CD A5 C7         [ 4] 1443 	call	_FLASH_Unlock
      00D0D0 84               [ 1] 1444 	pop	a
                           0007B9  1445 	C$eeprom.c$305$1_0$366 ==.
                                   1446 ;	eeprom.c: 305: while(FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET) { } // Wait until Data EEPROM area unlocked flag is set
      00D0D1                       1447 00101$:
      00D0D1 4B 08            [ 1] 1448 	push	#0x08
      00D0D3 CD A7 4B         [ 4] 1449 	call	_FLASH_GetFlagStatus
      00D0D6 5B 01            [ 2] 1450 	addw	sp, #1
      00D0D8 4D               [ 1] 1451 	tnz	a
      00D0D9 27 F6            [ 1] 1452 	jreq	00101$
                           0007C3  1453 	C$eeprom.c$307$1_0$366 ==.
                                   1454 ;	eeprom.c: 307: for(ui8_i = 0; ui8_i < EEPROM_BYTES_STORED; ui8_i++)
      00D0DB 1E 08            [ 2] 1455 	ldw	x, (0x08, sp)
      00D0DD 0F 05            [ 1] 1456 	clr	(0x05, sp)
      00D0DF                       1457 00105$:
                           0007C7  1458 	C$eeprom.c$309$3_0$369 ==.
                                   1459 ;	eeprom.c: 309: FLASH_ProgramByte(EEPROM_BASE_ADDR + ui8_i, *array++);
      00D0DF F6               [ 1] 1460 	ld	a, (x)
      00D0E0 5C               [ 1] 1461 	incw	x
      00D0E1 90 5F            [ 1] 1462 	clrw	y
      00D0E3 61               [ 1] 1463 	exg	a, yl
      00D0E4 7B 05            [ 1] 1464 	ld	a, (0x05, sp)
      00D0E6 61               [ 1] 1465 	exg	a, yl
      00D0E7 72 A9 40 00      [ 2] 1466 	addw	y, #0x4000
      00D0EB 17 03            [ 2] 1467 	ldw	(0x03, sp), y
      00D0ED 90 5F            [ 1] 1468 	clrw	y
      00D0EF 0D 03            [ 1] 1469 	tnz	(0x03, sp)
      00D0F1 2A 02            [ 1] 1470 	jrpl	00127$
      00D0F3 90 5A            [ 2] 1471 	decw	y
      00D0F5                       1472 00127$:
      00D0F5 89               [ 2] 1473 	pushw	x
      00D0F6 88               [ 1] 1474 	push	a
      00D0F7 7B 07            [ 1] 1475 	ld	a, (0x07, sp)
      00D0F9 88               [ 1] 1476 	push	a
      00D0FA 7B 07            [ 1] 1477 	ld	a, (0x07, sp)
      00D0FC 88               [ 1] 1478 	push	a
      00D0FD 90 89            [ 2] 1479 	pushw	y
      00D0FF CD A6 14         [ 4] 1480 	call	_FLASH_ProgramByte
      00D102 5B 05            [ 2] 1481 	addw	sp, #5
      00D104 85               [ 2] 1482 	popw	x
                           0007ED  1483 	C$eeprom.c$307$2_0$368 ==.
                                   1484 ;	eeprom.c: 307: for(ui8_i = 0; ui8_i < EEPROM_BYTES_STORED; ui8_i++)
      00D105 0C 05            [ 1] 1485 	inc	(0x05, sp)
      00D107 7B 05            [ 1] 1486 	ld	a, (0x05, sp)
      00D109 A1 2F            [ 1] 1487 	cp	a, #0x2f
      00D10B 25 D2            [ 1] 1488 	jrc	00105$
                           0007F5  1489 	C$eeprom.c$312$1_0$366 ==.
                                   1490 ;	eeprom.c: 312: FLASH_Lock(FLASH_MEMTYPE_DATA);
      00D10D 4B F7            [ 1] 1491 	push	#0xf7
      00D10F CD A5 E0         [ 4] 1492 	call	_FLASH_Lock
      00D112 84               [ 1] 1493 	pop	a
                           0007FB  1494 	C$eeprom.c$313$1_0$366 ==.
                                   1495 ;	eeprom.c: 313: }
      00D113 5B 05            [ 2] 1496 	addw	sp, #5
                           0007FD  1497 	C$eeprom.c$313$1_0$366 ==.
                           0007FD  1498 	XFeeprom$eeprom_write_array$0$0 ==.
      00D115 81               [ 4] 1499 	ret
                                   1500 	.area CODE
                                   1501 	.area CONST
                                   1502 	.area INITIALIZER
                           000000  1503 Feeprom$__xinit_array_default_values$0_0$0 == .
      008285                       1504 __xinit__array_default_values:
      008285 AA                    1505 	.db #0xaa	; 170
      008286 0C                    1506 	.db #0x0c	; 12
      008287 00                    1507 	.db #0x00	; 0
      008288 11                    1508 	.db #0x11	; 17
      008289 19                    1509 	.db #0x19	; 25
      00828A 90                    1510 	.db #0x90	; 144
      00828B 01                    1511 	.db #0x01	; 1
      00828C 85                    1512 	.db #0x85	; 133
      00828D 08                    1513 	.db #0x08	; 8
      00828E 32                    1514 	.db #0x32	; 50	'2'
      00828F 02                    1515 	.db #0x02	; 2
      008290 07                    1516 	.db #0x07	; 7
      008291 19                    1517 	.db #0x19	; 25
      008292 0A                    1518 	.db #0x0a	; 10
      008293 0D                    1519 	.db #0x0d	; 13
      008294 4B                    1520 	.db #0x4b	; 75	'K'
      008295 00                    1521 	.db #0x00	; 0
      008296 3B                    1522 	.db #0x3b	; 59
      008297 01                    1523 	.db #0x01	; 1
      008298 05                    1524 	.db #0x05	; 5
      008299 0C                    1525 	.db #0x0c	; 12
      00829A 17                    1526 	.db #0x17	; 23
      00829B 28                    1527 	.db #0x28	; 40
      00829C 00                    1528 	.db #0x00	; 0
      00829D 00                    1529 	.db #0x00	; 0
      00829E 1C                    1530 	.db #0x1c	; 28
      00829F 14                    1531 	.db #0x14	; 20
      0082A0 0C                    1532 	.db #0x0c	; 12
      0082A1 04                    1533 	.db #0x04	; 4
      0082A2 14                    1534 	.db #0x14	; 20
      0082A3 23                    1535 	.db #0x23	; 35
      0082A4 01                    1536 	.db #0x01	; 1
      0082A5 1C                    1537 	.db #0x1c	; 28
      0082A6 00                    1538 	.db #0x00	; 0
      0082A7 4B                    1539 	.db #0x4b	; 75	'K'
      0082A8 55                    1540 	.db #0x55	; 85	'U'
      0082A9 14                    1541 	.db #0x14	; 20
      0082AA 19                    1542 	.db #0x19	; 25
      0082AB 21                    1543 	.db #0x21	; 33
      0082AC 28                    1544 	.db #0x28	; 40
      0082AD 30                    1545 	.db #0x30	; 48	'0'
      0082AE 38                    1546 	.db #0x38	; 56	'8'
      0082AF 0A                    1547 	.db #0x0a	; 10
      0082B0 33                    1548 	.db #0x33	; 51	'3'
      0082B1 14                    1549 	.db #0x14	; 20
      0082B2 00                    1550 	.db #0x00	; 0
      0082B3 55                    1551 	.db #0x55	; 85	'U'
                                   1552 	.area CABS (ABS)
