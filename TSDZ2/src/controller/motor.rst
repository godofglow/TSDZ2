                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module motor
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM1_CAP_COM_IRQHandler
                                     12 	.globl _ui16_adc_read_battery_voltage_10b
                                     13 	.globl _ui16_adc_read_battery_current_10b
                                     14 	.globl _get_configuration_variables
                                     15 	.globl _GPIO_Init
                                     16 	.globl _TIM1_CtrlPWMOutputs
                                     17 	.globl _ui8_wheel_speed_sensor_change_counter
                                     18 	.globl _ui16_wheel_speed_sensor_counter
                                     19 	.globl _ui8_wheel_speed_sensor_state_old
                                     20 	.globl _ui8_wheel_speed_sensor_state
                                     21 	.globl _ui16_torque_sensor_throttle_value
                                     22 	.globl _ui16_torque_sensor_throttle_max_value
                                     23 	.globl _ui8_torque_sensor_pas_signal_change_counter
                                     24 	.globl _ui16_torque_sensor_throttle_processed_value
                                     25 	.globl _ui16_pas_counter
                                     26 	.globl _ui8_pas_after_first_pulse
                                     27 	.globl _ui8_pas_state_old
                                     28 	.globl _ui8_pas_state
                                     29 	.globl _ui8_adc_motor_phase_current_offset
                                     30 	.globl _ui8_adc_target_motor_phase_max_current
                                     31 	.globl _ui8_current_controller_flag
                                     32 	.globl _ui8_current_controller_counter
                                     33 	.globl _ui8_adc_battery_current
                                     34 	.globl _ui16_adc_battery_current_10b
                                     35 	.globl _ui8_adc_battery_current_filtered_10b
                                     36 	.globl _ui16_adc_battery_current_accumulated
                                     37 	.globl _ui16_adc_battery_voltage_filtered_10b
                                     38 	.globl _ui16_adc_battery_voltage_accumulated
                                     39 	.globl _ui8_adc_battery_voltage_cut_off
                                     40 	.globl _ui8_first_time_run_flag
                                     41 	.globl _ui8_controller_adc_motor_max_current
                                     42 	.globl _ui16_counter_adc_motor_current_ramp_up
                                     43 	.globl _ui8_controller_adc_battery_max_current
                                     44 	.globl _ui16_counter_adc_battery_current_ramp_up
                                     45 	.globl _ui8_phase_c_voltage
                                     46 	.globl _ui8_phase_b_voltage
                                     47 	.globl _ui8_phase_a_voltage
                                     48 	.globl _ui16_counter_duty_cycle_ramp_down
                                     49 	.globl _ui16_counter_duty_cycle_ramp_up
                                     50 	.globl _ui16_duty_cycle_ramp_down_inverse_step
                                     51 	.globl _ui16_duty_cycle_ramp_up_inverse_step
                                     52 	.globl _ui8_duty_cycle
                                     53 	.globl _ui8_half_erps_flag
                                     54 	.globl _ui8_hall_sensors_state_last
                                     55 	.globl _ui8_hall_sensors_state
                                     56 	.globl _ui8_motor_controller_state
                                     57 	.globl _ui8_motor_commutation_type
                                     58 	.globl _ui16_foc_angle_accumulated
                                     59 	.globl _ui8_interpolation_angle
                                     60 	.globl _ui8_foc_angle
                                     61 	.globl _ui8_motor_rotor_angle
                                     62 	.globl _ui8_motor_rotor_absolute_angle
                                     63 	.globl _ui8_svm_table_index
                                     64 	.globl _ui16_max_motor_speed_erps
                                     65 	.globl _ui16_PWM_cycles_counter_total
                                     66 	.globl _ui16_PWM_cycles_counter_6
                                     67 	.globl _ui16_PWM_cycles_counter
                                     68 	.globl _ui8_sin_table
                                     69 	.globl _ui8_svm_table
                                     70 	.globl _ui16_value
                                     71 	.globl _motor_controller
                                     72 	.globl _motor_disable_PWM
                                     73 	.globl _motor_enable_PWM
                                     74 	.globl _motor_controller_set_state
                                     75 	.globl _motor_controller_reset_state
                                     76 	.globl _motor_controller_state_is_set
                                     77 	.globl _hall_sensor_init
                                     78 	.globl _motor_init
                                     79 	.globl _motor_set_pwm_duty_cycle_target
                                     80 	.globl _motor_set_pwm_duty_cycle_ramp_up_inverse_step
                                     81 	.globl _motor_set_pwm_duty_cycle_ramp_down_inverse_step
                                     82 	.globl _motor_set_phase_current_max
                                     83 	.globl _ui16_motor_get_motor_speed_erps
                                     84 	.globl _read_battery_voltage
                                     85 	.globl _read_battery_current
                                     86 	.globl _calc_foc_angle
                                     87 	.globl _asin_table
                                     88 	.globl _motor_get_adc_battery_current_filtered_10b
                                     89 	.globl _motor_get_adc_battery_voltage_filtered_10b
                                     90 	.globl _motor_set_adc_battery_voltage_cut_off
                                     91 ;--------------------------------------------------------
                                     92 ; ram data
                                     93 ;--------------------------------------------------------
                                     94 	.area DATA
                           000000    95 G$ui16_value$0_0$0==.
      000001                         96 _ui16_value::
      000001                         97 	.ds 2
                           000002    98 Lmotor.TIM1_CAP_COM_IRQHandler$ui8_temp$1_0$427==.
      000003                         99 _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427:
      000003                        100 	.ds 1
                           000003   101 Lmotor.TIM1_CAP_COM_IRQHandler$valuesAreTooHigh$1_0$427==.
      000004                        102 _TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427:
      000004                        103 	.ds 1
                                    104 ;--------------------------------------------------------
                                    105 ; ram data
                                    106 ;--------------------------------------------------------
                                    107 	.area INITIALIZED
                           000000   108 G$ui8_svm_table$0_0$0==.
      00005F                        109 _ui8_svm_table::
      00005F                        110 	.ds 256
                           000100   111 G$ui8_sin_table$0_0$0==.
      00015F                        112 _ui8_sin_table::
      00015F                        113 	.ds 60
                           00013C   114 G$ui16_PWM_cycles_counter$0_0$0==.
      00019B                        115 _ui16_PWM_cycles_counter::
      00019B                        116 	.ds 2
                           00013E   117 G$ui16_PWM_cycles_counter_6$0_0$0==.
      00019D                        118 _ui16_PWM_cycles_counter_6::
      00019D                        119 	.ds 2
                           000140   120 G$ui16_PWM_cycles_counter_total$0_0$0==.
      00019F                        121 _ui16_PWM_cycles_counter_total::
      00019F                        122 	.ds 2
                           000142   123 G$ui16_max_motor_speed_erps$0_0$0==.
      0001A1                        124 _ui16_max_motor_speed_erps::
      0001A1                        125 	.ds 2
                           000144   126 Fmotor$ui16_motor_speed_erps$0_0$0==.
      0001A3                        127 _ui16_motor_speed_erps:
      0001A3                        128 	.ds 2
                           000146   129 G$ui8_svm_table_index$0_0$0==.
      0001A5                        130 _ui8_svm_table_index::
      0001A5                        131 	.ds 1
                           000147   132 G$ui8_motor_rotor_absolute_angle$0_0$0==.
      0001A6                        133 _ui8_motor_rotor_absolute_angle::
      0001A6                        134 	.ds 1
                           000148   135 G$ui8_motor_rotor_angle$0_0$0==.
      0001A7                        136 _ui8_motor_rotor_angle::
      0001A7                        137 	.ds 1
                           000149   138 G$ui8_foc_angle$0_0$0==.
      0001A8                        139 _ui8_foc_angle::
      0001A8                        140 	.ds 1
                           00014A   141 G$ui8_interpolation_angle$0_0$0==.
      0001A9                        142 _ui8_interpolation_angle::
      0001A9                        143 	.ds 1
                           00014B   144 G$ui16_foc_angle_accumulated$0_0$0==.
      0001AA                        145 _ui16_foc_angle_accumulated::
      0001AA                        146 	.ds 2
                           00014D   147 G$ui8_motor_commutation_type$0_0$0==.
      0001AC                        148 _ui8_motor_commutation_type::
      0001AC                        149 	.ds 1
                           00014E   150 G$ui8_motor_controller_state$0_0$0==.
      0001AD                        151 _ui8_motor_controller_state::
      0001AD                        152 	.ds 1
                           00014F   153 G$ui8_hall_sensors_state$0_0$0==.
      0001AE                        154 _ui8_hall_sensors_state::
      0001AE                        155 	.ds 1
                           000150   156 G$ui8_hall_sensors_state_last$0_0$0==.
      0001AF                        157 _ui8_hall_sensors_state_last::
      0001AF                        158 	.ds 1
                           000151   159 G$ui8_half_erps_flag$0_0$0==.
      0001B0                        160 _ui8_half_erps_flag::
      0001B0                        161 	.ds 1
                           000152   162 G$ui8_duty_cycle$0_0$0==.
      0001B1                        163 _ui8_duty_cycle::
      0001B1                        164 	.ds 1
                           000153   165 Fmotor$ui8_duty_cycle_target$0_0$0==.
      0001B2                        166 _ui8_duty_cycle_target:
      0001B2                        167 	.ds 1
                           000154   168 G$ui16_duty_cycle_ramp_up_inverse_step$0_0$0==.
      0001B3                        169 _ui16_duty_cycle_ramp_up_inverse_step::
      0001B3                        170 	.ds 2
                           000156   171 G$ui16_duty_cycle_ramp_down_inverse_step$0_0$0==.
      0001B5                        172 _ui16_duty_cycle_ramp_down_inverse_step::
      0001B5                        173 	.ds 2
                           000158   174 G$ui16_counter_duty_cycle_ramp_up$0_0$0==.
      0001B7                        175 _ui16_counter_duty_cycle_ramp_up::
      0001B7                        176 	.ds 2
                           00015A   177 G$ui16_counter_duty_cycle_ramp_down$0_0$0==.
      0001B9                        178 _ui16_counter_duty_cycle_ramp_down::
      0001B9                        179 	.ds 2
                           00015C   180 G$ui8_phase_a_voltage$0_0$0==.
      0001BB                        181 _ui8_phase_a_voltage::
      0001BB                        182 	.ds 1
                           00015D   183 G$ui8_phase_b_voltage$0_0$0==.
      0001BC                        184 _ui8_phase_b_voltage::
      0001BC                        185 	.ds 1
                           00015E   186 G$ui8_phase_c_voltage$0_0$0==.
      0001BD                        187 _ui8_phase_c_voltage::
      0001BD                        188 	.ds 1
                           00015F   189 G$ui16_counter_adc_battery_current_ramp_up$0_0$0==.
      0001BE                        190 _ui16_counter_adc_battery_current_ramp_up::
      0001BE                        191 	.ds 2
                           000161   192 G$ui8_controller_adc_battery_max_current$0_0$0==.
      0001C0                        193 _ui8_controller_adc_battery_max_current::
      0001C0                        194 	.ds 1
                           000162   195 G$ui16_counter_adc_motor_current_ramp_up$0_0$0==.
      0001C1                        196 _ui16_counter_adc_motor_current_ramp_up::
      0001C1                        197 	.ds 2
                           000164   198 G$ui8_controller_adc_motor_max_current$0_0$0==.
      0001C3                        199 _ui8_controller_adc_motor_max_current::
      0001C3                        200 	.ds 1
                           000165   201 G$ui8_first_time_run_flag$0_0$0==.
      0001C4                        202 _ui8_first_time_run_flag::
      0001C4                        203 	.ds 1
                           000166   204 G$ui8_adc_battery_voltage_cut_off$0_0$0==.
      0001C5                        205 _ui8_adc_battery_voltage_cut_off::
      0001C5                        206 	.ds 1
                           000167   207 G$ui16_adc_battery_voltage_accumulated$0_0$0==.
      0001C6                        208 _ui16_adc_battery_voltage_accumulated::
      0001C6                        209 	.ds 2
                           000169   210 G$ui16_adc_battery_voltage_filtered_10b$0_0$0==.
      0001C8                        211 _ui16_adc_battery_voltage_filtered_10b::
      0001C8                        212 	.ds 2
                           00016B   213 G$ui16_adc_battery_current_accumulated$0_0$0==.
      0001CA                        214 _ui16_adc_battery_current_accumulated::
      0001CA                        215 	.ds 2
                           00016D   216 G$ui8_adc_battery_current_filtered_10b$0_0$0==.
      0001CC                        217 _ui8_adc_battery_current_filtered_10b::
      0001CC                        218 	.ds 1
                           00016E   219 G$ui16_adc_battery_current_10b$0_0$0==.
      0001CD                        220 _ui16_adc_battery_current_10b::
      0001CD                        221 	.ds 2
                           000170   222 G$ui8_adc_battery_current$0_0$0==.
      0001CF                        223 _ui8_adc_battery_current::
      0001CF                        224 	.ds 1
                           000171   225 Fmotor$ui8_adc_motor_phase_current$0_0$0==.
      0001D0                        226 _ui8_adc_motor_phase_current:
      0001D0                        227 	.ds 1
                           000172   228 G$ui8_current_controller_counter$0_0$0==.
      0001D1                        229 _ui8_current_controller_counter::
      0001D1                        230 	.ds 1
                           000173   231 G$ui8_current_controller_flag$0_0$0==.
      0001D2                        232 _ui8_current_controller_flag::
      0001D2                        233 	.ds 1
                           000174   234 G$ui8_adc_target_motor_phase_max_current$0_0$0==.
      0001D3                        235 _ui8_adc_target_motor_phase_max_current::
      0001D3                        236 	.ds 1
                           000175   237 G$ui8_adc_motor_phase_current_offset$0_0$0==.
      0001D4                        238 _ui8_adc_motor_phase_current_offset::
      0001D4                        239 	.ds 1
                           000176   240 G$ui8_pas_state$0_0$0==.
      0001D5                        241 _ui8_pas_state::
      0001D5                        242 	.ds 1
                           000177   243 G$ui8_pas_state_old$0_0$0==.
      0001D6                        244 _ui8_pas_state_old::
      0001D6                        245 	.ds 1
                           000178   246 G$ui8_pas_after_first_pulse$0_0$0==.
      0001D7                        247 _ui8_pas_after_first_pulse::
      0001D7                        248 	.ds 1
                           000179   249 G$ui16_pas_counter$0_0$0==.
      0001D8                        250 _ui16_pas_counter::
      0001D8                        251 	.ds 2
                           00017B   252 G$ui16_torque_sensor_throttle_processed_value$0_0$0==.
      0001DA                        253 _ui16_torque_sensor_throttle_processed_value::
      0001DA                        254 	.ds 2
                           00017D   255 G$ui8_torque_sensor_pas_signal_change_counter$0_0$0==.
      0001DC                        256 _ui8_torque_sensor_pas_signal_change_counter::
      0001DC                        257 	.ds 1
                           00017E   258 G$ui16_torque_sensor_throttle_max_value$0_0$0==.
      0001DD                        259 _ui16_torque_sensor_throttle_max_value::
      0001DD                        260 	.ds 2
                           000180   261 G$ui16_torque_sensor_throttle_value$0_0$0==.
      0001DF                        262 _ui16_torque_sensor_throttle_value::
      0001DF                        263 	.ds 2
                           000182   264 G$ui8_wheel_speed_sensor_state$0_0$0==.
      0001E1                        265 _ui8_wheel_speed_sensor_state::
      0001E1                        266 	.ds 1
                           000183   267 G$ui8_wheel_speed_sensor_state_old$0_0$0==.
      0001E2                        268 _ui8_wheel_speed_sensor_state_old::
      0001E2                        269 	.ds 1
                           000184   270 G$ui16_wheel_speed_sensor_counter$0_0$0==.
      0001E3                        271 _ui16_wheel_speed_sensor_counter::
      0001E3                        272 	.ds 2
                           000186   273 G$ui8_wheel_speed_sensor_change_counter$0_0$0==.
      0001E5                        274 _ui8_wheel_speed_sensor_change_counter::
      0001E5                        275 	.ds 1
                                    276 ;--------------------------------------------------------
                                    277 ; absolute external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area DABS (ABS)
                                    280 
                                    281 ; default segment ordering for linker
                                    282 	.area HOME
                                    283 	.area GSINIT
                                    284 	.area GSFINAL
                                    285 	.area CONST
                                    286 	.area INITIALIZER
                                    287 	.area CODE
                                    288 
                                    289 ;--------------------------------------------------------
                                    290 ; global & static initialisations
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME
                                    293 	.area GSINIT
                                    294 	.area GSFINAL
                                    295 	.area GSINIT
                                    296 ;--------------------------------------------------------
                                    297 ; Home
                                    298 ;--------------------------------------------------------
                                    299 	.area HOME
                                    300 	.area HOME
                                    301 ;--------------------------------------------------------
                                    302 ; code
                                    303 ;--------------------------------------------------------
                                    304 	.area CODE
                           000000   305 	G$motor_controller$0$0 ==.
                           000000   306 	C$motor.c$496$0_0$425 ==.
                                    307 ;	motor.c: 496: void motor_controller(void)
                                    308 ;	-----------------------------------------
                                    309 ;	 function motor_controller
                                    310 ;	-----------------------------------------
      00AA34                        311 _motor_controller:
                           000000   312 	C$motor.c$499$1_0$425 ==.
                                    313 ;	motor.c: 499: read_battery_voltage();
      00AA34 CD B0 48         [ 4]  314 	call	_read_battery_voltage
                           000003   315 	C$motor.c$500$1_0$425 ==.
                                    316 ;	motor.c: 500: read_battery_current();
      00AA37 CD B0 68         [ 4]  317 	call	_read_battery_current
                           000006   318 	C$motor.c$503$1_0$425 ==.
                                    319 ;	motor.c: 503: calc_foc_angle();
      00AA3A CD B0 89         [ 4]  320 	call	_calc_foc_angle
                           000009   321 	C$motor.c$504$1_0$425 ==.
                                    322 ;	motor.c: 504: }
                           000009   323 	C$motor.c$504$1_0$425 ==.
                           000009   324 	XG$motor_controller$0$0 ==.
      00AA3D 81               [ 4]  325 	ret
                           00000A   326 	G$TIM1_CAP_COM_IRQHandler$0$0 ==.
                           00000A   327 	C$motor.c$513$1_0$427 ==.
                                    328 ;	motor.c: 513: void TIM1_CAP_COM_IRQHandler(void) __interrupt(TIM1_CAP_COM_IRQHANDLER) // runs every 64us (PWM frequency)
                                    329 ;	-----------------------------------------
                                    330 ;	 function TIM1_CAP_COM_IRQHandler
                                    331 ;	-----------------------------------------
      00AA3E                        332 _TIM1_CAP_COM_IRQHandler:
      00AA3E 4F               [ 1]  333 	clr	a
      00AA3F 62               [ 2]  334 	div	x, a
      00AA40 52 02            [ 2]  335 	sub	sp, #2
                           00000E   336 	C$motor.c$518$1_0$427 ==.
                                    337 ;	motor.c: 518: p_configuration_variables = get_configuration_variables();
      00AA42 CD C6 33         [ 4]  338 	call	_get_configuration_variables
                           000011   339 	C$motor.c$524$1_0$427 ==.
                                    340 ;	motor.c: 524: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
      00AA45 72 13 54 02      [ 1]  341 	bres	21506, #1
                           000015   342 	C$motor.c$526$1_0$427 ==.
                                    343 ;	motor.c: 526: ADC1->CSR = 0x05;
      00AA49 35 05 54 00      [ 1]  344 	mov	0x5400+0, #0x05
                           000019   345 	C$motor.c$528$1_0$427 ==.
                                    346 ;	motor.c: 528: ADC1->CR1 |= ADC1_CR1_ADON;
      00AA4D 72 10 54 01      [ 1]  347 	bset	21505, #0
                           00001D   348 	C$motor.c$529$1_0$427 ==.
                                    349 ;	motor.c: 529: while(!(ADC1->CSR & ADC1_FLAG_EOC)) ;
      00AA51                        350 00101$:
      00AA51 C6 54 00         [ 1]  351 	ld	a, 0x5400
      00AA54 2A FB            [ 1]  352 	jrpl	00101$
                           000022   353 	C$motor.c$530$1_0$427 ==.
                                    354 ;	motor.c: 530: ui16_adc_battery_current_10b = ui16_adc_read_battery_current_10b();
      00AA56 CD B3 4D         [ 4]  355 	call	_ui16_adc_read_battery_current_10b
      00AA59 CF 01 CD         [ 2]  356 	ldw	_ui16_adc_battery_current_10b+0, x
                           000028   357 	C$motor.c$531$1_0$427 ==.
                                    358 ;	motor.c: 531: ui8_adc_battery_current = ui16_adc_battery_current_10b >> 2;
      00AA5C CE 01 CD         [ 2]  359 	ldw	x, _ui16_adc_battery_current_10b+0
      00AA5F 54               [ 2]  360 	srlw	x
      00AA60 54               [ 2]  361 	srlw	x
      00AA61 9F               [ 1]  362 	ld	a, xl
      00AA62 C7 01 CF         [ 1]  363 	ld	_ui8_adc_battery_current+0, a
                           000031   364 	C$motor.c$534$1_0$427 ==.
                                    365 ;	motor.c: 534: if(ui8_duty_cycle > 0)
      00AA65 72 5D 01 B1      [ 1]  366 	tnz	_ui8_duty_cycle+0
      00AA69 27 17            [ 1]  367 	jreq	00105$
                           000037   368 	C$motor.c$536$2_0$428 ==.
                                    369 ;	motor.c: 536: ui8_adc_motor_phase_current = ((ui16_adc_battery_current_10b << 6) / ((uint16_t) ui8_duty_cycle));
      00AA6B CE 01 CD         [ 2]  370 	ldw	x, _ui16_adc_battery_current_10b+0
      00AA6E 58               [ 2]  371 	sllw	x
      00AA6F 58               [ 2]  372 	sllw	x
      00AA70 58               [ 2]  373 	sllw	x
      00AA71 58               [ 2]  374 	sllw	x
      00AA72 58               [ 2]  375 	sllw	x
      00AA73 58               [ 2]  376 	sllw	x
      00AA74 90 5F            [ 1]  377 	clrw	y
      00AA76 C6 01 B1         [ 1]  378 	ld	a, _ui8_duty_cycle+0
      00AA79 90 97            [ 1]  379 	ld	yl, a
      00AA7B 65               [ 2]  380 	divw	x, y
      00AA7C 9F               [ 1]  381 	ld	a, xl
      00AA7D C7 01 D0         [ 1]  382 	ld	_ui8_adc_motor_phase_current+0, a
      00AA80 20 04            [ 2]  383 	jra	00106$
      00AA82                        384 00105$:
                           00004E   385 	C$motor.c$540$2_0$429 ==.
                                    386 ;	motor.c: 540: ui8_adc_motor_phase_current = 0;
      00AA82 72 5F 01 D0      [ 1]  387 	clr	_ui8_adc_motor_phase_current+0
      00AA86                        388 00106$:
                           000052   389 	C$motor.c$545$1_0$427 ==.
                                    390 ;	motor.c: 545: ADC1->CR2 |= ADC1_CR2_SCAN; // enable scan mode
      00AA86 72 12 54 02      [ 1]  391 	bset	21506, #1
                           000056   392 	C$motor.c$546$1_0$427 ==.
                                    393 ;	motor.c: 546: ADC1->CSR = 0x07; // clear EOC flag first (selected also channel 7)
      00AA8A 35 07 54 00      [ 1]  394 	mov	0x5400+0, #0x07
                           00005A   395 	C$motor.c$547$1_0$427 ==.
                                    396 ;	motor.c: 547: ADC1->CR1 |= ADC1_CR1_ADON; // start ADC1 conversion
      00AA8E 72 10 54 01      [ 1]  397 	bset	21505, #0
                           00005E   398 	C$motor.c$556$1_0$427 ==.
                                    399 ;	motor.c: 556: ui8_hall_sensors_state = ((HALL_SENSOR_A__PORT->IDR & HALL_SENSOR_A__PIN) >> 5)|
      00AA92 C6 50 15         [ 1]  400 	ld	a, 0x5015
      00AA95 A4 20            [ 1]  401 	and	a, #0x20
      00AA97 4E               [ 1]  402 	swap	a
      00AA98 A4 0F            [ 1]  403 	and	a, #0x0f
      00AA9A 44               [ 1]  404 	srl	a
      00AA9B 6B 02            [ 1]  405 	ld	(0x02, sp), a
                           000069   406 	C$motor.c$557$1_0$427 ==.
                                    407 ;	motor.c: 557: ((HALL_SENSOR_B__PORT->IDR & HALL_SENSOR_B__PIN) >> 1)|
      00AA9D C6 50 10         [ 1]  408 	ld	a, 0x5010
      00AAA0 A4 04            [ 1]  409 	and	a, #0x04
      00AAA2 44               [ 1]  410 	srl	a
      00AAA3 1A 02            [ 1]  411 	or	a, (0x02, sp)
      00AAA5 6B 02            [ 1]  412 	ld	(0x02, sp), a
                           000073   413 	C$motor.c$558$1_0$427 ==.
                                    414 ;	motor.c: 558: ((HALL_SENSOR_C__PORT->IDR & HALL_SENSOR_C__PIN) >> 3);
      00AAA7 C6 50 0B         [ 1]  415 	ld	a, 0x500b
      00AAAA A4 20            [ 1]  416 	and	a, #0x20
      00AAAC 44               [ 1]  417 	srl	a
      00AAAD 44               [ 1]  418 	srl	a
      00AAAE 44               [ 1]  419 	srl	a
      00AAAF 1A 02            [ 1]  420 	or	a, (0x02, sp)
      00AAB1 C7 01 AE         [ 1]  421 	ld	_ui8_hall_sensors_state+0, a
                           000080   422 	C$motor.c$560$1_0$427 ==.
                                    423 ;	motor.c: 560: if(ui8_hall_sensors_state != ui8_hall_sensors_state_last)
      00AAB4 C6 01 AF         [ 1]  424 	ld	a, _ui8_hall_sensors_state_last+0
      00AAB7 C1 01 AE         [ 1]  425 	cp	a, _ui8_hall_sensors_state+0
      00AABA 26 03            [ 1]  426 	jrne	00427$
      00AABC CC AB 6D         [ 2]  427 	jp	00128$
      00AABF                        428 00427$:
                           00008B   429 	C$motor.c$562$2_0$430 ==.
                                    430 ;	motor.c: 562: ui8_hall_sensors_state_last = ui8_hall_sensors_state;
      00AABF 55 01 AE 01 AF   [ 1]  431 	mov	_ui8_hall_sensors_state_last+0, _ui8_hall_sensors_state+0
                           000090   432 	C$motor.c$564$2_0$430 ==.
                                    433 ;	motor.c: 564: switch(ui8_hall_sensors_state)
      00AAC4 C6 01 AE         [ 1]  434 	ld	a, _ui8_hall_sensors_state+0
      00AAC7 A1 06            [ 1]  435 	cp	a, #0x06
      00AAC9 23 03            [ 2]  436 	jrule	00429$
      00AACB CC AB 64         [ 2]  437 	jp	00125$
      00AACE                        438 00429$:
      00AACE 5F               [ 1]  439 	clrw	x
      00AACF 97               [ 1]  440 	ld	xl, a
      00AAD0 58               [ 2]  441 	sllw	x
      00AAD1 DE AA D5         [ 2]  442 	ldw	x, (#00430$, x)
      00AAD4 FC               [ 2]  443 	jp	(x)
      00AAD5                        444 00430$:
      00AAD5 AB 64                  445 	.dw	#00125$
      00AAD7 AA EA                  446 	.dw	#00108$
      00AAD9 AB 5E                  447 	.dw	#00124$
      00AADB AA E3                  448 	.dw	#00107$
      00AADD AB 4E                  449 	.dw	#00122$
      00AADF AB 48                  450 	.dw	#00121$
      00AAE1 AB 54                  451 	.dw	#00123$
                           0000AF   452 	C$motor.c$566$3_0$431 ==.
                                    453 ;	motor.c: 566: case 3:
      00AAE3                        454 00107$:
                           0000AF   455 	C$motor.c$567$3_0$431 ==.
                                    456 ;	motor.c: 567: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_150;
      00AAE3 35 74 01 A6      [ 1]  457 	mov	_ui8_motor_rotor_absolute_angle+0, #0x74
                           0000B3   458 	C$motor.c$568$3_0$431 ==.
                                    459 ;	motor.c: 568: break;
      00AAE7 CC AB 67         [ 2]  460 	jp	00126$
                           0000B6   461 	C$motor.c$570$3_0$431 ==.
                                    462 ;	motor.c: 570: case 1:
      00AAEA                        463 00108$:
                           0000B6   464 	C$motor.c$571$3_0$431 ==.
                                    465 ;	motor.c: 571: if(ui8_half_erps_flag == 1)
      00AAEA C6 01 B0         [ 1]  466 	ld	a, _ui8_half_erps_flag+0
      00AAED 4A               [ 1]  467 	dec	a
      00AAEE 27 03            [ 1]  468 	jreq	00433$
      00AAF0 CC AB 42         [ 2]  469 	jp	00120$
      00AAF3                        470 00433$:
                           0000BF   471 	C$motor.c$573$4_0$432 ==.
                                    472 ;	motor.c: 573: ui8_half_erps_flag = 0;
      00AAF3 72 5F 01 B0      [ 1]  473 	clr	_ui8_half_erps_flag+0
                           0000C3   474 	C$motor.c$574$4_0$432 ==.
                                    475 ;	motor.c: 574: ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;
      00AAF7 CE 01 9B         [ 2]  476 	ldw	x, _ui16_PWM_cycles_counter+0
      00AAFA CF 01 9F         [ 2]  477 	ldw	_ui16_PWM_cycles_counter_total+0, x
                           0000C9   478 	C$motor.c$575$4_0$432 ==.
                                    479 ;	motor.c: 575: ui16_PWM_cycles_counter = 1;
      00AAFD AE 00 01         [ 2]  480 	ldw	x, #0x0001
      00AB00 CF 01 9B         [ 2]  481 	ldw	_ui16_PWM_cycles_counter+0, x
                           0000CF   482 	C$motor.c$579$4_0$432 ==.
                                    483 ;	motor.c: 579: if(ui16_PWM_cycles_counter_total > 0)
      00AB03 CE 01 9F         [ 2]  484 	ldw	x, _ui16_PWM_cycles_counter_total+0
      00AB06 27 0D            [ 1]  485 	jreq	00110$
                           0000D4   486 	C$motor.c$581$5_0$433 ==.
                                    487 ;	motor.c: 581: ui16_motor_speed_erps = ((uint16_t) PWM_CYCLES_SECOND) / ui16_PWM_cycles_counter_total;
      00AB08 AE 3D 09         [ 2]  488 	ldw	x, #0x3d09
      00AB0B 90 CE 01 9F      [ 2]  489 	ldw	y, _ui16_PWM_cycles_counter_total+0
      00AB0F 65               [ 2]  490 	divw	x, y
      00AB10 CF 01 A3         [ 2]  491 	ldw	_ui16_motor_speed_erps+0, x
      00AB13 20 06            [ 2]  492 	jra	00111$
      00AB15                        493 00110$:
                           0000E1   494 	C$motor.c$585$5_0$434 ==.
                                    495 ;	motor.c: 585: ui16_motor_speed_erps = ((uint16_t) PWM_CYCLES_SECOND);
      00AB15 AE 3D 09         [ 2]  496 	ldw	x, #0x3d09
      00AB18 CF 01 A3         [ 2]  497 	ldw	_ui16_motor_speed_erps+0, x
      00AB1B                        498 00111$:
                           0000E7   499 	C$motor.c$589$4_0$432 ==.
                                    500 ;	motor.c: 589: if(ui16_motor_speed_erps > MOTOR_ROTOR_ERPS_START_INTERPOLATION_60_DEGREES)
      00AB1B CE 01 A3         [ 2]  501 	ldw	x, _ui16_motor_speed_erps+0
      00AB1E A3 00 0A         [ 2]  502 	cpw	x, #0x000a
      00AB21 23 10            [ 2]  503 	jrule	00117$
                           0000EF   504 	C$motor.c$591$5_0$435 ==.
                                    505 ;	motor.c: 591: if(ui8_motor_commutation_type == BLOCK_COMMUTATION)
      00AB23 C6 01 AC         [ 1]  506 	ld	a, _ui8_motor_commutation_type+0
      00AB26 4A               [ 1]  507 	dec	a
      00AB27 26 19            [ 1]  508 	jrne	00120$
                           0000F5   509 	C$motor.c$593$6_0$436 ==.
                                    510 ;	motor.c: 593: ui8_motor_commutation_type = SINEWAVE_INTERPOLATION_60_DEGREES;
      00AB29 35 02 01 AC      [ 1]  511 	mov	_ui8_motor_commutation_type+0, #0x02
                           0000F9   512 	C$motor.c$594$6_0$436 ==.
                                    513 ;	motor.c: 594: ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_RUNNING;
      00AB2D 35 04 01 F0      [ 1]  514 	mov	_ui8_ebike_app_state+0, #0x04
      00AB31 20 0F            [ 2]  515 	jra	00120$
      00AB33                        516 00117$:
                           0000FF   517 	C$motor.c$599$5_0$437 ==.
                                    518 ;	motor.c: 599: if(ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_60_DEGREES)
      00AB33 C6 01 AC         [ 1]  519 	ld	a, _ui8_motor_commutation_type+0
      00AB36 A1 02            [ 1]  520 	cp	a, #0x02
      00AB38 26 08            [ 1]  521 	jrne	00120$
                           000106   522 	C$motor.c$601$6_0$438 ==.
                                    523 ;	motor.c: 601: ui8_motor_commutation_type = BLOCK_COMMUTATION;
      00AB3A 35 01 01 AC      [ 1]  524 	mov	_ui8_motor_commutation_type+0, #0x01
                           00010A   525 	C$motor.c$602$6_0$438 ==.
                                    526 ;	motor.c: 602: ui8_foc_angle = 0;
      00AB3E 72 5F 01 A8      [ 1]  527 	clr	_ui8_foc_angle+0
      00AB42                        528 00120$:
                           00010E   529 	C$motor.c$607$3_0$431 ==.
                                    530 ;	motor.c: 607: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_210;
      00AB42 35 9E 01 A6      [ 1]  531 	mov	_ui8_motor_rotor_absolute_angle+0, #0x9e
                           000112   532 	C$motor.c$608$3_0$431 ==.
                                    533 ;	motor.c: 608: break;
      00AB46 20 1F            [ 2]  534 	jra	00126$
                           000114   535 	C$motor.c$610$3_0$431 ==.
                                    536 ;	motor.c: 610: case 5:
      00AB48                        537 00121$:
                           000114   538 	C$motor.c$611$3_0$431 ==.
                                    539 ;	motor.c: 611: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_270;
      00AB48 35 C9 01 A6      [ 1]  540 	mov	_ui8_motor_rotor_absolute_angle+0, #0xc9
                           000118   541 	C$motor.c$612$3_0$431 ==.
                                    542 ;	motor.c: 612: break;
      00AB4C 20 19            [ 2]  543 	jra	00126$
                           00011A   544 	C$motor.c$614$3_0$431 ==.
                                    545 ;	motor.c: 614: case 4:
      00AB4E                        546 00122$:
                           00011A   547 	C$motor.c$615$3_0$431 ==.
                                    548 ;	motor.c: 615: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_330;
      00AB4E 35 F3 01 A6      [ 1]  549 	mov	_ui8_motor_rotor_absolute_angle+0, #0xf3
                           00011E   550 	C$motor.c$616$3_0$431 ==.
                                    551 ;	motor.c: 616: break;
      00AB52 20 13            [ 2]  552 	jra	00126$
                           000120   553 	C$motor.c$618$3_0$431 ==.
                                    554 ;	motor.c: 618: case 6:
      00AB54                        555 00123$:
                           000120   556 	C$motor.c$619$3_0$431 ==.
                                    557 ;	motor.c: 619: ui8_half_erps_flag = 1;
      00AB54 35 01 01 B0      [ 1]  558 	mov	_ui8_half_erps_flag+0, #0x01
                           000124   559 	C$motor.c$620$3_0$431 ==.
                                    560 ;	motor.c: 620: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_30;
      00AB58 35 1E 01 A6      [ 1]  561 	mov	_ui8_motor_rotor_absolute_angle+0, #0x1e
                           000128   562 	C$motor.c$621$3_0$431 ==.
                                    563 ;	motor.c: 621: break;
      00AB5C 20 09            [ 2]  564 	jra	00126$
                           00012A   565 	C$motor.c$626$3_0$431 ==.
                                    566 ;	motor.c: 626: case 2:
      00AB5E                        567 00124$:
                           00012A   568 	C$motor.c$627$3_0$431 ==.
                                    569 ;	motor.c: 627: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_90;
      00AB5E 35 49 01 A6      [ 1]  570 	mov	_ui8_motor_rotor_absolute_angle+0, #0x49
                           00012E   571 	C$motor.c$628$3_0$431 ==.
                                    572 ;	motor.c: 628: break;
      00AB62 20 03            [ 2]  573 	jra	00126$
                           000130   574 	C$motor.c$630$3_0$431 ==.
                                    575 ;	motor.c: 630: default:
      00AB64                        576 00125$:
                           000130   577 	C$motor.c$631$3_0$431 ==.
                                    578 ;	motor.c: 631: return;
      00AB64 CC AF AB         [ 2]  579 	jp	00226$
                           000133   580 	C$motor.c$633$2_0$430 ==.
                                    581 ;	motor.c: 633: }
      00AB67                        582 00126$:
                           000133   583 	C$motor.c$635$2_0$430 ==.
                                    584 ;	motor.c: 635: ui16_PWM_cycles_counter_6 = 1;
      00AB67 AE 00 01         [ 2]  585 	ldw	x, #0x0001
      00AB6A CF 01 9D         [ 2]  586 	ldw	_ui16_PWM_cycles_counter_6+0, x
      00AB6D                        587 00128$:
                           000139   588 	C$motor.c$640$1_0$427 ==.
                                    589 ;	motor.c: 640: if(ui16_PWM_cycles_counter < ((uint16_t) PWM_CYCLES_COUNTER_MAX))
      00AB6D CE 01 9B         [ 2]  590 	ldw	x, _ui16_PWM_cycles_counter+0
      00AB70 A3 0C 35         [ 2]  591 	cpw	x, #0x0c35
      00AB73 24 10            [ 1]  592 	jrnc	00130$
                           000141   593 	C$motor.c$642$2_0$439 ==.
                                    594 ;	motor.c: 642: ui16_PWM_cycles_counter++;
      00AB75 CE 01 9B         [ 2]  595 	ldw	x, _ui16_PWM_cycles_counter+0
      00AB78 5C               [ 1]  596 	incw	x
      00AB79 CF 01 9B         [ 2]  597 	ldw	_ui16_PWM_cycles_counter+0, x
                           000148   598 	C$motor.c$643$2_0$439 ==.
                                    599 ;	motor.c: 643: ui16_PWM_cycles_counter_6++;
      00AB7C CE 01 9D         [ 2]  600 	ldw	x, _ui16_PWM_cycles_counter_6+0
      00AB7F 5C               [ 1]  601 	incw	x
      00AB80 CF 01 9D         [ 2]  602 	ldw	_ui16_PWM_cycles_counter_6+0, x
      00AB83 20 26            [ 2]  603 	jra	00131$
      00AB85                        604 00130$:
                           000151   605 	C$motor.c$647$2_0$440 ==.
                                    606 ;	motor.c: 647: ui16_PWM_cycles_counter = 1; // don't put to 0 to avoid 0 divisions
      00AB85 AE 00 01         [ 2]  607 	ldw	x, #0x0001
      00AB88 CF 01 9B         [ 2]  608 	ldw	_ui16_PWM_cycles_counter+0, x
                           000157   609 	C$motor.c$648$2_0$440 ==.
                                    610 ;	motor.c: 648: ui16_PWM_cycles_counter_6 = 1;
      00AB8B AE 00 01         [ 2]  611 	ldw	x, #0x0001
      00AB8E CF 01 9D         [ 2]  612 	ldw	_ui16_PWM_cycles_counter_6+0, x
                           00015D   613 	C$motor.c$649$2_0$440 ==.
                                    614 ;	motor.c: 649: ui8_half_erps_flag = 0;
      00AB91 72 5F 01 B0      [ 1]  615 	clr	_ui8_half_erps_flag+0
                           000161   616 	C$motor.c$650$2_0$440 ==.
                                    617 ;	motor.c: 650: ui16_motor_speed_erps = 0;
      00AB95 5F               [ 1]  618 	clrw	x
      00AB96 CF 01 A3         [ 2]  619 	ldw	_ui16_motor_speed_erps+0, x
                           000165   620 	C$motor.c$651$2_0$440 ==.
                                    621 ;	motor.c: 651: ui16_PWM_cycles_counter_total = 0xFFFF;
      00AB99 AE FF FF         [ 2]  622 	ldw	x, #0xffff
      00AB9C CF 01 9F         [ 2]  623 	ldw	_ui16_PWM_cycles_counter_total+0, x
                           00016B   624 	C$motor.c$652$2_0$440 ==.
                                    625 ;	motor.c: 652: ui8_foc_angle = 0;
      00AB9F 72 5F 01 A8      [ 1]  626 	clr	_ui8_foc_angle+0
                           00016F   627 	C$motor.c$653$2_0$440 ==.
                                    628 ;	motor.c: 653: ui8_motor_commutation_type = BLOCK_COMMUTATION;
      00ABA3 35 01 01 AC      [ 1]  629 	mov	_ui8_motor_commutation_type+0, #0x01
                           000173   630 	C$motor.c$654$2_0$440 ==.
                                    631 ;	motor.c: 654: ui8_hall_sensors_state_last = 0; // this way we force execution of hall sensors code next time
      00ABA7 72 5F 01 AF      [ 1]  632 	clr	_ui8_hall_sensors_state_last+0
      00ABAB                        633 00131$:
                           000177   634 	C$motor.c$663$1_0$427 ==.
                                    635 ;	motor.c: 663: if(ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_60_DEGREES)
      00ABAB C6 01 AC         [ 1]  636 	ld	a, _ui8_motor_commutation_type+0
      00ABAE A1 02            [ 1]  637 	cp	a, #0x02
      00ABB0 26 23            [ 1]  638 	jrne	00133$
                           00017E   639 	C$motor.c$667$2_0$441 ==.
                                    640 ;	motor.c: 667: ui8_interpolation_angle = (ui16_PWM_cycles_counter_6 << 8) / ui16_PWM_cycles_counter_total; // this operations take 4.4us
      00ABB2 C6 01 9E         [ 1]  641 	ld	a, _ui16_PWM_cycles_counter_6+1
      00ABB5 95               [ 1]  642 	ld	xh, a
      00ABB6 4F               [ 1]  643 	clr	a
      00ABB7 97               [ 1]  644 	ld	xl, a
      00ABB8 90 CE 01 9F      [ 2]  645 	ldw	y, _ui16_PWM_cycles_counter_total+0
      00ABBC 65               [ 2]  646 	divw	x, y
      00ABBD 9F               [ 1]  647 	ld	a, xl
      00ABBE C7 01 A9         [ 1]  648 	ld	_ui8_interpolation_angle+0, a
                           00018D   649 	C$motor.c$668$2_0$441 ==.
                                    650 ;	motor.c: 668: ui8_motor_rotor_angle = ui8_motor_rotor_absolute_angle + ui8_interpolation_angle;
      00ABC1 C6 01 A6         [ 1]  651 	ld	a, _ui8_motor_rotor_absolute_angle+0
      00ABC4 CB 01 A9         [ 1]  652 	add	a, _ui8_interpolation_angle+0
      00ABC7 C7 01 A7         [ 1]  653 	ld	_ui8_motor_rotor_angle+0, a
                           000196   654 	C$motor.c$669$2_0$441 ==.
                                    655 ;	motor.c: 669: ui8_svm_table_index = ui8_motor_rotor_angle + ui8_foc_angle;
      00ABCA C6 01 A7         [ 1]  656 	ld	a, _ui8_motor_rotor_angle+0
      00ABCD CB 01 A8         [ 1]  657 	add	a, _ui8_foc_angle+0
      00ABD0 C7 01 A5         [ 1]  658 	ld	_ui8_svm_table_index+0, a
      00ABD3 20 09            [ 2]  659 	jra	00134$
      00ABD5                        660 00133$:
                           0001A1   661 	C$motor.c$674$2_0$442 ==.
                                    662 ;	motor.c: 674: ui8_svm_table_index = ui8_motor_rotor_absolute_angle + ui8_foc_angle;
      00ABD5 C6 01 A6         [ 1]  663 	ld	a, _ui8_motor_rotor_absolute_angle+0
      00ABD8 CB 01 A8         [ 1]  664 	add	a, _ui8_foc_angle+0
      00ABDB C7 01 A5         [ 1]  665 	ld	_ui8_svm_table_index+0, a
      00ABDE                        666 00134$:
                           0001AA   667 	C$motor.c$678$1_0$427 ==.
                                    668 ;	motor.c: 678: ui8_svm_table_index -= 63;
      00ABDE C6 01 A5         [ 1]  669 	ld	a, _ui8_svm_table_index+0
      00ABE1 A0 3F            [ 1]  670 	sub	a, #0x3f
      00ABE3 C7 01 A5         [ 1]  671 	ld	_ui8_svm_table_index+0, a
                           0001B2   672 	C$motor.c$688$1_0$427 ==.
                                    673 ;	motor.c: 688: if(ui8_adc_battery_current > ui8_controller_adc_battery_max_current ||
      00ABE6 C6 01 C0         [ 1]  674 	ld	a, _ui8_controller_adc_battery_max_current+0
      00ABE9 C1 01 CF         [ 1]  675 	cp	a, _ui8_adc_battery_current+0
      00ABEC 25 10            [ 1]  676 	jrc	00135$
                           0001BA   677 	C$motor.c$689$1_0$427 ==.
                                    678 ;	motor.c: 689: ui8_adc_motor_phase_current > ui8_adc_target_motor_phase_max_current ||
      00ABEE C6 01 D3         [ 1]  679 	ld	a, _ui8_adc_target_motor_phase_max_current+0
      00ABF1 C1 01 D0         [ 1]  680 	cp	a, _ui8_adc_motor_phase_current+0
      00ABF4 25 08            [ 1]  681 	jrc	00135$
                           0001C2   682 	C$motor.c$690$1_0$427 ==.
                                    683 ;	motor.c: 690: ui8_adc_motor_phase_current > ui8_controller_adc_motor_max_current)
      00ABF6 C6 01 C3         [ 1]  684 	ld	a, _ui8_controller_adc_motor_max_current+0
      00ABF9 C1 01 D0         [ 1]  685 	cp	a, _ui8_adc_motor_phase_current+0
      00ABFC 24 06            [ 1]  686 	jrnc	00136$
      00ABFE                        687 00135$:
                           0001CA   688 	C$motor.c$692$2_0$443 ==.
                                    689 ;	motor.c: 692: valuesAreTooHigh = 1;
      00ABFE 35 01 00 04      [ 1]  690 	mov	_TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427+0, #0x01
      00AC02 20 04            [ 2]  691 	jra	00137$
      00AC04                        692 00136$:
                           0001D0   693 	C$motor.c$694$2_0$444 ==.
                                    694 ;	motor.c: 694: valuesAreTooHigh = 0;
      00AC04 72 5F 00 04      [ 1]  695 	clr	_TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427+0
      00AC08                        696 00137$:
                           0001D4   697 	C$motor.c$699$1_0$427 ==.
                                    698 ;	motor.c: 699: if(++ui8_current_controller_counter > 12)
      00AC08 C6 01 D1         [ 1]  699 	ld	a, _ui8_current_controller_counter+0
      00AC0B 4C               [ 1]  700 	inc	a
      00AC0C C7 01 D1         [ 1]  701 	ld	_ui8_current_controller_counter+0, a
      00AC0F A1 0C            [ 1]  702 	cp	a, #0x0c
      00AC11 23 1D            [ 2]  703 	jrule	00165$
                           0001DF   704 	C$motor.c$702$2_0$445 ==.
                                    705 ;	motor.c: 702: ui8_current_controller_counter = 0;
      00AC13 72 5F 01 D1      [ 1]  706 	clr	_ui8_current_controller_counter+0
                           0001E3   707 	C$motor.c$705$2_0$445 ==.
                                    708 ;	motor.c: 705: if(valuesAreTooHigh)
      00AC17 72 5D 00 04      [ 1]  709 	tnz	_TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427+0
      00AC1B 26 03            [ 1]  710 	jrne	00450$
      00AC1D CC AC A5         [ 2]  711 	jp	00166$
      00AC20                        712 00450$:
                           0001EC   713 	C$motor.c$707$3_0$446 ==.
                                    714 ;	motor.c: 707: if(ui8_duty_cycle > 0)
      00AC20 72 5D 01 B1      [ 1]  715 	tnz	_ui8_duty_cycle+0
      00AC24 26 03            [ 1]  716 	jrne	00451$
      00AC26 CC AC A5         [ 2]  717 	jp	00166$
      00AC29                        718 00451$:
                           0001F5   719 	C$motor.c$710$4_0$447 ==.
                                    720 ;	motor.c: 710: ui8_duty_cycle--;
      00AC29 72 5A 01 B1      [ 1]  721 	dec	_ui8_duty_cycle+0
      00AC2D CC AC A5         [ 2]  722 	jp	00166$
      00AC30                        723 00165$:
                           0001FC   724 	C$motor.c$714$1_0$427 ==.
                                    725 ;	motor.c: 714: else if(UI8_ADC_BATTERY_VOLTAGE < ui8_adc_battery_voltage_cut_off) // battery voltage under min voltage, reduce duty_cycle
      00AC30 C6 53 EC         [ 1]  726 	ld	a, 0x53ec
      00AC33 C1 01 C5         [ 1]  727 	cp	a, _ui8_adc_battery_voltage_cut_off+0
      00AC36 24 10            [ 1]  728 	jrnc	00162$
                           000204   729 	C$motor.c$716$2_0$448 ==.
                                    730 ;	motor.c: 716: if (ui8_duty_cycle > 0)
      00AC38 72 5D 01 B1      [ 1]  731 	tnz	_ui8_duty_cycle+0
      00AC3C 26 03            [ 1]  732 	jrne	00453$
      00AC3E CC AC A5         [ 2]  733 	jp	00166$
      00AC41                        734 00453$:
                           00020D   735 	C$motor.c$719$3_0$449 ==.
                                    736 ;	motor.c: 719: ui8_duty_cycle--;
      00AC41 72 5A 01 B1      [ 1]  737 	dec	_ui8_duty_cycle+0
      00AC45 CC AC A5         [ 2]  738 	jp	00166$
      00AC48                        739 00162$:
                           000214   740 	C$motor.c$722$1_0$427 ==.
                                    741 ;	motor.c: 722: else if((ui16_motor_speed_erps > ui16_max_motor_speed_erps)) // if motor speed over max motor ERPS, reduce duty_cycle
      00AC48 CE 01 A1         [ 2]  742 	ldw	x, _ui16_max_motor_speed_erps+0
      00AC4B C3 01 A3         [ 2]  743 	cpw	x, _ui16_motor_speed_erps+0
      00AC4E 24 0F            [ 1]  744 	jrnc	00159$
                           00021C   745 	C$motor.c$724$2_0$450 ==.
                                    746 ;	motor.c: 724: if (ui8_duty_cycle > 0)
      00AC50 72 5D 01 B1      [ 1]  747 	tnz	_ui8_duty_cycle+0
      00AC54 26 03            [ 1]  748 	jrne	00455$
      00AC56 CC AC A5         [ 2]  749 	jp	00166$
      00AC59                        750 00455$:
                           000225   751 	C$motor.c$727$3_0$451 ==.
                                    752 ;	motor.c: 727: ui8_duty_cycle--;
      00AC59 72 5A 01 B1      [ 1]  753 	dec	_ui8_duty_cycle+0
      00AC5D 20 46            [ 2]  754 	jra	00166$
      00AC5F                        755 00159$:
                           00022B   756 	C$motor.c$732$2_0$452 ==.
                                    757 ;	motor.c: 732: if(ui8_duty_cycle_target > ui8_duty_cycle &&
      00AC5F C6 01 B1         [ 1]  758 	ld	a, _ui8_duty_cycle+0
      00AC62 C1 01 B2         [ 1]  759 	cp	a, _ui8_duty_cycle_target+0
      00AC65 24 1F            [ 1]  760 	jrnc	00155$
                           000233   761 	C$motor.c$733$2_0$452 ==.
                                    762 ;	motor.c: 733: !valuesAreTooHigh)
      00AC67 72 5D 00 04      [ 1]  763 	tnz	_TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427+0
      00AC6B 26 19            [ 1]  764 	jrne	00155$
                           000239   765 	C$motor.c$735$3_0$453 ==.
                                    766 ;	motor.c: 735: if(ui16_counter_duty_cycle_ramp_up++ >= ui16_duty_cycle_ramp_up_inverse_step)
      00AC6D 90 CE 01 B7      [ 2]  767 	ldw	y, _ui16_counter_duty_cycle_ramp_up+0
      00AC71 93               [ 1]  768 	ldw	x, y
      00AC72 5C               [ 1]  769 	incw	x
      00AC73 CF 01 B7         [ 2]  770 	ldw	_ui16_counter_duty_cycle_ramp_up+0, x
      00AC76 90 C3 01 B3      [ 2]  771 	cpw	y, _ui16_duty_cycle_ramp_up_inverse_step+0
      00AC7A 25 29            [ 1]  772 	jrc	00166$
                           000248   773 	C$motor.c$737$4_0$454 ==.
                                    774 ;	motor.c: 737: ui16_counter_duty_cycle_ramp_up = 0;
      00AC7C 5F               [ 1]  775 	clrw	x
      00AC7D CF 01 B7         [ 2]  776 	ldw	_ui16_counter_duty_cycle_ramp_up+0, x
                           00024C   777 	C$motor.c$740$4_0$454 ==.
                                    778 ;	motor.c: 740: ui8_duty_cycle++;
      00AC80 72 5C 01 B1      [ 1]  779 	inc	_ui8_duty_cycle+0
      00AC84 20 1F            [ 2]  780 	jra	00166$
      00AC86                        781 00155$:
                           000252   782 	C$motor.c$743$2_0$452 ==.
                                    783 ;	motor.c: 743: else if(ui8_duty_cycle_target < ui8_duty_cycle)
      00AC86 C6 01 B1         [ 1]  784 	ld	a, _ui8_duty_cycle+0
      00AC89 C1 01 B2         [ 1]  785 	cp	a, _ui8_duty_cycle_target+0
      00AC8C 23 17            [ 2]  786 	jrule	00166$
                           00025A   787 	C$motor.c$745$3_0$455 ==.
                                    788 ;	motor.c: 745: if(ui16_counter_duty_cycle_ramp_down++ >= ui16_duty_cycle_ramp_down_inverse_step)
      00AC8E 90 CE 01 B9      [ 2]  789 	ldw	y, _ui16_counter_duty_cycle_ramp_down+0
      00AC92 93               [ 1]  790 	ldw	x, y
      00AC93 5C               [ 1]  791 	incw	x
      00AC94 CF 01 B9         [ 2]  792 	ldw	_ui16_counter_duty_cycle_ramp_down+0, x
      00AC97 90 C3 01 B5      [ 2]  793 	cpw	y, _ui16_duty_cycle_ramp_down_inverse_step+0
      00AC9B 25 08            [ 1]  794 	jrc	00166$
                           000269   795 	C$motor.c$747$4_0$456 ==.
                                    796 ;	motor.c: 747: ui16_counter_duty_cycle_ramp_down = 0;
      00AC9D 5F               [ 1]  797 	clrw	x
      00AC9E CF 01 B9         [ 2]  798 	ldw	_ui16_counter_duty_cycle_ramp_down+0, x
                           00026D   799 	C$motor.c$750$4_0$456 ==.
                                    800 ;	motor.c: 750: ui8_duty_cycle--;
      00ACA1 72 5A 01 B1      [ 1]  801 	dec	_ui8_duty_cycle+0
      00ACA5                        802 00166$:
                           000271   803 	C$motor.c$760$1_0$427 ==.
                                    804 ;	motor.c: 760: ui8_temp = ui8_svm_table[(uint8_t) (ui8_svm_table_index + 171 /* 240° */)];
      00ACA5 C6 01 A5         [ 1]  805 	ld	a, _ui8_svm_table_index+0
      00ACA8 AB AB            [ 1]  806 	add	a, #0xab
      00ACAA 5F               [ 1]  807 	clrw	x
      00ACAB 97               [ 1]  808 	ld	xl, a
      00ACAC 1C 00 5F         [ 2]  809 	addw	x, #(_ui8_svm_table + 0)
      00ACAF F6               [ 1]  810 	ld	a, (x)
      00ACB0 C7 00 03         [ 1]  811 	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
                           00027F   812 	C$motor.c$761$1_0$427 ==.
                                    813 ;	motor.c: 761: if(ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
      00ACB3 C6 00 03         [ 1]  814 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00ACB6 A1 7F            [ 1]  815 	cp	a, #0x7f
      00ACB8 23 2F            [ 2]  816 	jrule	00168$
                           000286   817 	C$motor.c$763$2_0$457 ==.
                                    818 ;	motor.c: 763: ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
      00ACBA 5F               [ 1]  819 	clrw	x
      00ACBB C6 00 03         [ 1]  820 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00ACBE 97               [ 1]  821 	ld	xl, a
      00ACBF 1D 00 7F         [ 2]  822 	subw	x, #0x007f
      00ACC2 51               [ 1]  823 	exgw	x, y
      00ACC3 5F               [ 1]  824 	clrw	x
      00ACC4 C6 01 B1         [ 1]  825 	ld	a, _ui8_duty_cycle+0
      00ACC7 97               [ 1]  826 	ld	xl, a
      00ACC8 89               [ 2]  827 	pushw	x
      00ACC9 90 89            [ 2]  828 	pushw	y
      00ACCB CD D4 A9         [ 4]  829 	call	__mulint
      00ACCE 5B 04            [ 2]  830 	addw	sp, #4
      00ACD0 CF 00 01         [ 2]  831 	ldw	_ui16_value+0, x
                           00029F   832 	C$motor.c$764$2_0$457 ==.
                                    833 ;	motor.c: 764: ui8_temp = (uint8_t) (ui16_value >> 8);
      00ACD3 C6 00 01         [ 1]  834 	ld	a, _ui16_value+0
      00ACD6 6B 02            [ 1]  835 	ld	(0x02, sp), a
      00ACD8 0F 01            [ 1]  836 	clr	(0x01, sp)
      00ACDA 7B 02            [ 1]  837 	ld	a, (0x02, sp)
      00ACDC C7 00 03         [ 1]  838 	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
                           0002AB   839 	C$motor.c$765$2_0$457 ==.
                                    840 ;	motor.c: 765: ui8_phase_a_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
      00ACDF C6 00 03         [ 1]  841 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00ACE2 AB 7F            [ 1]  842 	add	a, #0x7f
      00ACE4 C7 01 BB         [ 1]  843 	ld	_ui8_phase_a_voltage+0, a
      00ACE7 20 32            [ 2]  844 	jra	00169$
      00ACE9                        845 00168$:
                           0002B5   846 	C$motor.c$769$2_0$458 ==.
                                    847 ;	motor.c: 769: ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
      00ACE9 C6 00 03         [ 1]  848 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00ACEC 6B 02            [ 1]  849 	ld	(0x02, sp), a
      00ACEE 0F 01            [ 1]  850 	clr	(0x01, sp)
      00ACF0 90 AE 00 7F      [ 2]  851 	ldw	y, #0x007f
      00ACF4 72 F2 01         [ 2]  852 	subw	y, (0x01, sp)
      00ACF7 5F               [ 1]  853 	clrw	x
      00ACF8 C6 01 B1         [ 1]  854 	ld	a, _ui8_duty_cycle+0
      00ACFB 97               [ 1]  855 	ld	xl, a
      00ACFC 89               [ 2]  856 	pushw	x
      00ACFD 90 89            [ 2]  857 	pushw	y
      00ACFF CD D4 A9         [ 4]  858 	call	__mulint
      00AD02 5B 04            [ 2]  859 	addw	sp, #4
      00AD04 CF 00 01         [ 2]  860 	ldw	_ui16_value+0, x
                           0002D3   861 	C$motor.c$770$2_0$458 ==.
                                    862 ;	motor.c: 770: ui8_temp = (uint8_t) (ui16_value >> 8);
      00AD07 C6 00 01         [ 1]  863 	ld	a, _ui16_value+0
      00AD0A 6B 02            [ 1]  864 	ld	(0x02, sp), a
      00AD0C 0F 01            [ 1]  865 	clr	(0x01, sp)
      00AD0E 7B 02            [ 1]  866 	ld	a, (0x02, sp)
      00AD10 C7 00 03         [ 1]  867 	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
                           0002DF   868 	C$motor.c$771$2_0$458 ==.
                                    869 ;	motor.c: 771: ui8_phase_a_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
      00AD13 A6 7F            [ 1]  870 	ld	a, #0x7f
      00AD15 C0 00 03         [ 1]  871 	sub	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00AD18 C7 01 BB         [ 1]  872 	ld	_ui8_phase_a_voltage+0, a
      00AD1B                        873 00169$:
                           0002E7   874 	C$motor.c$775$1_0$427 ==.
                                    875 ;	motor.c: 775: ui8_temp = ui8_svm_table[ui8_svm_table_index];
      00AD1B 5F               [ 1]  876 	clrw	x
      00AD1C C6 01 A5         [ 1]  877 	ld	a, _ui8_svm_table_index+0
      00AD1F 97               [ 1]  878 	ld	xl, a
      00AD20 1C 00 5F         [ 2]  879 	addw	x, #(_ui8_svm_table + 0)
      00AD23 F6               [ 1]  880 	ld	a, (x)
      00AD24 C7 00 03         [ 1]  881 	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
                           0002F3   882 	C$motor.c$776$1_0$427 ==.
                                    883 ;	motor.c: 776: if(ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
      00AD27 C6 00 03         [ 1]  884 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00AD2A A1 7F            [ 1]  885 	cp	a, #0x7f
      00AD2C 23 2F            [ 2]  886 	jrule	00171$
                           0002FA   887 	C$motor.c$778$2_0$459 ==.
                                    888 ;	motor.c: 778: ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
      00AD2E 5F               [ 1]  889 	clrw	x
      00AD2F C6 00 03         [ 1]  890 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00AD32 97               [ 1]  891 	ld	xl, a
      00AD33 1D 00 7F         [ 2]  892 	subw	x, #0x007f
      00AD36 51               [ 1]  893 	exgw	x, y
      00AD37 5F               [ 1]  894 	clrw	x
      00AD38 C6 01 B1         [ 1]  895 	ld	a, _ui8_duty_cycle+0
      00AD3B 97               [ 1]  896 	ld	xl, a
      00AD3C 89               [ 2]  897 	pushw	x
      00AD3D 90 89            [ 2]  898 	pushw	y
      00AD3F CD D4 A9         [ 4]  899 	call	__mulint
      00AD42 5B 04            [ 2]  900 	addw	sp, #4
      00AD44 CF 00 01         [ 2]  901 	ldw	_ui16_value+0, x
                           000313   902 	C$motor.c$779$2_0$459 ==.
                                    903 ;	motor.c: 779: ui8_temp = (uint8_t) (ui16_value >> 8);
      00AD47 C6 00 01         [ 1]  904 	ld	a, _ui16_value+0
      00AD4A 6B 02            [ 1]  905 	ld	(0x02, sp), a
      00AD4C 0F 01            [ 1]  906 	clr	(0x01, sp)
      00AD4E 7B 02            [ 1]  907 	ld	a, (0x02, sp)
      00AD50 C7 00 03         [ 1]  908 	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
                           00031F   909 	C$motor.c$780$2_0$459 ==.
                                    910 ;	motor.c: 780: ui8_phase_b_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
      00AD53 C6 00 03         [ 1]  911 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00AD56 AB 7F            [ 1]  912 	add	a, #0x7f
      00AD58 C7 01 BC         [ 1]  913 	ld	_ui8_phase_b_voltage+0, a
      00AD5B 20 32            [ 2]  914 	jra	00172$
      00AD5D                        915 00171$:
                           000329   916 	C$motor.c$784$2_0$460 ==.
                                    917 ;	motor.c: 784: ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
      00AD5D C6 00 03         [ 1]  918 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00AD60 6B 02            [ 1]  919 	ld	(0x02, sp), a
      00AD62 0F 01            [ 1]  920 	clr	(0x01, sp)
      00AD64 90 AE 00 7F      [ 2]  921 	ldw	y, #0x007f
      00AD68 72 F2 01         [ 2]  922 	subw	y, (0x01, sp)
      00AD6B 5F               [ 1]  923 	clrw	x
      00AD6C C6 01 B1         [ 1]  924 	ld	a, _ui8_duty_cycle+0
      00AD6F 97               [ 1]  925 	ld	xl, a
      00AD70 89               [ 2]  926 	pushw	x
      00AD71 90 89            [ 2]  927 	pushw	y
      00AD73 CD D4 A9         [ 4]  928 	call	__mulint
      00AD76 5B 04            [ 2]  929 	addw	sp, #4
      00AD78 CF 00 01         [ 2]  930 	ldw	_ui16_value+0, x
                           000347   931 	C$motor.c$785$2_0$460 ==.
                                    932 ;	motor.c: 785: ui8_temp = (uint8_t) (ui16_value >> 8);
      00AD7B C6 00 01         [ 1]  933 	ld	a, _ui16_value+0
      00AD7E 6B 02            [ 1]  934 	ld	(0x02, sp), a
      00AD80 0F 01            [ 1]  935 	clr	(0x01, sp)
      00AD82 7B 02            [ 1]  936 	ld	a, (0x02, sp)
      00AD84 C7 00 03         [ 1]  937 	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
                           000353   938 	C$motor.c$786$2_0$460 ==.
                                    939 ;	motor.c: 786: ui8_phase_b_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
      00AD87 A6 7F            [ 1]  940 	ld	a, #0x7f
      00AD89 C0 00 03         [ 1]  941 	sub	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00AD8C C7 01 BC         [ 1]  942 	ld	_ui8_phase_b_voltage+0, a
      00AD8F                        943 00172$:
                           00035B   944 	C$motor.c$790$1_0$427 ==.
                                    945 ;	motor.c: 790: ui8_temp = ui8_svm_table[(uint8_t) (ui8_svm_table_index + 85 /* 120° */)];
      00AD8F C6 01 A5         [ 1]  946 	ld	a, _ui8_svm_table_index+0
      00AD92 AB 55            [ 1]  947 	add	a, #0x55
      00AD94 5F               [ 1]  948 	clrw	x
      00AD95 97               [ 1]  949 	ld	xl, a
      00AD96 1C 00 5F         [ 2]  950 	addw	x, #(_ui8_svm_table + 0)
      00AD99 F6               [ 1]  951 	ld	a, (x)
      00AD9A C7 00 03         [ 1]  952 	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
                           000369   953 	C$motor.c$791$1_0$427 ==.
                                    954 ;	motor.c: 791: if(ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
      00AD9D C6 00 03         [ 1]  955 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00ADA0 A1 7F            [ 1]  956 	cp	a, #0x7f
      00ADA2 23 2F            [ 2]  957 	jrule	00174$
                           000370   958 	C$motor.c$793$2_0$461 ==.
                                    959 ;	motor.c: 793: ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
      00ADA4 5F               [ 1]  960 	clrw	x
      00ADA5 C6 00 03         [ 1]  961 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00ADA8 97               [ 1]  962 	ld	xl, a
      00ADA9 1D 00 7F         [ 2]  963 	subw	x, #0x007f
      00ADAC 51               [ 1]  964 	exgw	x, y
      00ADAD 5F               [ 1]  965 	clrw	x
      00ADAE C6 01 B1         [ 1]  966 	ld	a, _ui8_duty_cycle+0
      00ADB1 97               [ 1]  967 	ld	xl, a
      00ADB2 89               [ 2]  968 	pushw	x
      00ADB3 90 89            [ 2]  969 	pushw	y
      00ADB5 CD D4 A9         [ 4]  970 	call	__mulint
      00ADB8 5B 04            [ 2]  971 	addw	sp, #4
      00ADBA CF 00 01         [ 2]  972 	ldw	_ui16_value+0, x
                           000389   973 	C$motor.c$794$2_0$461 ==.
                                    974 ;	motor.c: 794: ui8_temp = (uint8_t) (ui16_value >> 8);
      00ADBD C6 00 01         [ 1]  975 	ld	a, _ui16_value+0
      00ADC0 6B 02            [ 1]  976 	ld	(0x02, sp), a
      00ADC2 0F 01            [ 1]  977 	clr	(0x01, sp)
      00ADC4 7B 02            [ 1]  978 	ld	a, (0x02, sp)
      00ADC6 C7 00 03         [ 1]  979 	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
                           000395   980 	C$motor.c$795$2_0$461 ==.
                                    981 ;	motor.c: 795: ui8_phase_c_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
      00ADC9 C6 00 03         [ 1]  982 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00ADCC AB 7F            [ 1]  983 	add	a, #0x7f
      00ADCE C7 01 BD         [ 1]  984 	ld	_ui8_phase_c_voltage+0, a
      00ADD1 20 32            [ 2]  985 	jra	00175$
      00ADD3                        986 00174$:
                           00039F   987 	C$motor.c$799$2_0$462 ==.
                                    988 ;	motor.c: 799: ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
      00ADD3 C6 00 03         [ 1]  989 	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00ADD6 6B 02            [ 1]  990 	ld	(0x02, sp), a
      00ADD8 0F 01            [ 1]  991 	clr	(0x01, sp)
      00ADDA 90 AE 00 7F      [ 2]  992 	ldw	y, #0x007f
      00ADDE 72 F2 01         [ 2]  993 	subw	y, (0x01, sp)
      00ADE1 5F               [ 1]  994 	clrw	x
      00ADE2 C6 01 B1         [ 1]  995 	ld	a, _ui8_duty_cycle+0
      00ADE5 97               [ 1]  996 	ld	xl, a
      00ADE6 89               [ 2]  997 	pushw	x
      00ADE7 90 89            [ 2]  998 	pushw	y
      00ADE9 CD D4 A9         [ 4]  999 	call	__mulint
      00ADEC 5B 04            [ 2] 1000 	addw	sp, #4
      00ADEE CF 00 01         [ 2] 1001 	ldw	_ui16_value+0, x
                           0003BD  1002 	C$motor.c$800$2_0$462 ==.
                                   1003 ;	motor.c: 800: ui8_temp = (uint8_t) (ui16_value >> 8);
      00ADF1 C6 00 01         [ 1] 1004 	ld	a, _ui16_value+0
      00ADF4 6B 02            [ 1] 1005 	ld	(0x02, sp), a
      00ADF6 0F 01            [ 1] 1006 	clr	(0x01, sp)
      00ADF8 7B 02            [ 1] 1007 	ld	a, (0x02, sp)
      00ADFA C7 00 03         [ 1] 1008 	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
                           0003C9  1009 	C$motor.c$801$2_0$462 ==.
                                   1010 ;	motor.c: 801: ui8_phase_c_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
      00ADFD A6 7F            [ 1] 1011 	ld	a, #0x7f
      00ADFF C0 00 03         [ 1] 1012 	sub	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
      00AE02 C7 01 BD         [ 1] 1013 	ld	_ui8_phase_c_voltage+0, a
      00AE05                       1014 00175$:
                           0003D1  1015 	C$motor.c$806$1_0$427 ==.
                                   1016 ;	motor.c: 806: TIM1->CCR3H = (uint8_t) (ui8_phase_b_voltage >> 7);
      00AE05 C6 01 BC         [ 1] 1017 	ld	a, _ui8_phase_b_voltage+0
      00AE08 4E               [ 1] 1018 	swap	a
      00AE09 A4 0F            [ 1] 1019 	and	a, #0x0f
      00AE0B 44               [ 1] 1020 	srl	a
      00AE0C 44               [ 1] 1021 	srl	a
      00AE0D 44               [ 1] 1022 	srl	a
      00AE0E C7 52 69         [ 1] 1023 	ld	0x5269, a
                           0003DD  1024 	C$motor.c$807$1_0$427 ==.
                                   1025 ;	motor.c: 807: TIM1->CCR3L = (uint8_t) (ui8_phase_b_voltage << 1);
      00AE11 C6 01 BC         [ 1] 1026 	ld	a, _ui8_phase_b_voltage+0
      00AE14 48               [ 1] 1027 	sll	a
      00AE15 C7 52 6A         [ 1] 1028 	ld	0x526a, a
                           0003E4  1029 	C$motor.c$809$1_0$427 ==.
                                   1030 ;	motor.c: 809: TIM1->CCR2H = (uint8_t) (ui8_phase_c_voltage >> 7);
      00AE18 C6 01 BD         [ 1] 1031 	ld	a, _ui8_phase_c_voltage+0
      00AE1B 4E               [ 1] 1032 	swap	a
      00AE1C A4 0F            [ 1] 1033 	and	a, #0x0f
      00AE1E 44               [ 1] 1034 	srl	a
      00AE1F 44               [ 1] 1035 	srl	a
      00AE20 44               [ 1] 1036 	srl	a
      00AE21 C7 52 67         [ 1] 1037 	ld	0x5267, a
                           0003F0  1038 	C$motor.c$810$1_0$427 ==.
                                   1039 ;	motor.c: 810: TIM1->CCR2L = (uint8_t) (ui8_phase_c_voltage << 1);
      00AE24 C6 01 BD         [ 1] 1040 	ld	a, _ui8_phase_c_voltage+0
      00AE27 48               [ 1] 1041 	sll	a
      00AE28 C7 52 68         [ 1] 1042 	ld	0x5268, a
                           0003F7  1043 	C$motor.c$812$1_0$427 ==.
                                   1044 ;	motor.c: 812: TIM1->CCR1H = (uint8_t) (ui8_phase_a_voltage >> 7);
      00AE2B C6 01 BB         [ 1] 1045 	ld	a, _ui8_phase_a_voltage+0
      00AE2E 4E               [ 1] 1046 	swap	a
      00AE2F A4 0F            [ 1] 1047 	and	a, #0x0f
      00AE31 44               [ 1] 1048 	srl	a
      00AE32 44               [ 1] 1049 	srl	a
      00AE33 44               [ 1] 1050 	srl	a
      00AE34 C7 52 65         [ 1] 1051 	ld	0x5265, a
                           000403  1052 	C$motor.c$813$1_0$427 ==.
                                   1053 ;	motor.c: 813: TIM1->CCR1L = (uint8_t) (ui8_phase_a_voltage << 1);
      00AE37 C6 01 BB         [ 1] 1054 	ld	a, _ui8_phase_a_voltage+0
      00AE3A 48               [ 1] 1055 	sll	a
      00AE3B C7 52 66         [ 1] 1056 	ld	0x5266, a
                           00040A  1057 	C$motor.c$817$1_0$427 ==.
                                   1058 ;	motor.c: 817: if(ui8_adc_target_battery_max_current > ui8_controller_adc_battery_max_current)
      00AE3E C6 01 C0         [ 1] 1059 	ld	a, _ui8_controller_adc_battery_max_current+0
      00AE41 C1 01 F1         [ 1] 1060 	cp	a, _ui8_adc_target_battery_max_current+0
      00AE44 24 19            [ 1] 1061 	jrnc	00181$
                           000412  1062 	C$motor.c$819$2_0$463 ==.
                                   1063 ;	motor.c: 819: if(ui16_counter_adc_battery_current_ramp_up++ >= ADC_BATTERY_CURRENT_RAMP_UP_INVERSE_STEP)
      00AE46 90 CE 01 BE      [ 2] 1064 	ldw	y, _ui16_counter_adc_battery_current_ramp_up+0
      00AE4A 93               [ 1] 1065 	ldw	x, y
      00AE4B 5C               [ 1] 1066 	incw	x
      00AE4C CF 01 BE         [ 2] 1067 	ldw	_ui16_counter_adc_battery_current_ramp_up+0, x
      00AE4F 90 A3 03 D0      [ 2] 1068 	cpw	y, #0x03d0
      00AE53 25 17            [ 1] 1069 	jrc	00182$
                           000421  1070 	C$motor.c$822$3_0$464 ==.
                                   1071 ;	motor.c: 822: ui16_counter_adc_battery_current_ramp_up = 0;
      00AE55 5F               [ 1] 1072 	clrw	x
      00AE56 CF 01 BE         [ 2] 1073 	ldw	_ui16_counter_adc_battery_current_ramp_up+0, x
                           000425  1074 	C$motor.c$824$3_0$464 ==.
                                   1075 ;	motor.c: 824: ui8_controller_adc_battery_max_current++;
      00AE59 72 5C 01 C0      [ 1] 1076 	inc	_ui8_controller_adc_battery_max_current+0
      00AE5D 20 0D            [ 2] 1077 	jra	00182$
      00AE5F                       1078 00181$:
                           00042B  1079 	C$motor.c$827$1_0$427 ==.
                                   1080 ;	motor.c: 827: else if(ui8_adc_target_battery_max_current < ui8_controller_adc_battery_max_current)
      00AE5F C6 01 C0         [ 1] 1081 	ld	a, _ui8_controller_adc_battery_max_current+0
      00AE62 C1 01 F1         [ 1] 1082 	cp	a, _ui8_adc_target_battery_max_current+0
      00AE65 23 05            [ 2] 1083 	jrule	00182$
                           000433  1084 	C$motor.c$830$2_0$465 ==.
                                   1085 ;	motor.c: 830: ui8_controller_adc_battery_max_current = ui8_adc_target_battery_max_current;
      00AE67 55 01 F1 01 C0   [ 1] 1086 	mov	_ui8_controller_adc_battery_max_current+0, _ui8_adc_target_battery_max_current+0
      00AE6C                       1087 00182$:
                           000438  1088 	C$motor.c$834$1_0$427 ==.
                                   1089 ;	motor.c: 834: if(ui8_adc_target_motor_max_current > ui8_controller_adc_motor_max_current)
      00AE6C C6 01 C3         [ 1] 1090 	ld	a, _ui8_controller_adc_motor_max_current+0
      00AE6F C1 01 F2         [ 1] 1091 	cp	a, _ui8_adc_target_motor_max_current+0
      00AE72 24 19            [ 1] 1092 	jrnc	00188$
                           000440  1093 	C$motor.c$836$2_0$466 ==.
                                   1094 ;	motor.c: 836: if(ui16_counter_adc_motor_current_ramp_up++ >= ADC_BATTERY_CURRENT_RAMP_UP_INVERSE_STEP)
      00AE74 90 CE 01 C1      [ 2] 1095 	ldw	y, _ui16_counter_adc_motor_current_ramp_up+0
      00AE78 93               [ 1] 1096 	ldw	x, y
      00AE79 5C               [ 1] 1097 	incw	x
      00AE7A CF 01 C1         [ 2] 1098 	ldw	_ui16_counter_adc_motor_current_ramp_up+0, x
      00AE7D 90 A3 03 D0      [ 2] 1099 	cpw	y, #0x03d0
      00AE81 25 17            [ 1] 1100 	jrc	00189$
                           00044F  1101 	C$motor.c$839$3_0$467 ==.
                                   1102 ;	motor.c: 839: ui16_counter_adc_motor_current_ramp_up = 0;
      00AE83 5F               [ 1] 1103 	clrw	x
      00AE84 CF 01 C1         [ 2] 1104 	ldw	_ui16_counter_adc_motor_current_ramp_up+0, x
                           000453  1105 	C$motor.c$841$3_0$467 ==.
                                   1106 ;	motor.c: 841: ui8_controller_adc_motor_max_current++;
      00AE87 72 5C 01 C3      [ 1] 1107 	inc	_ui8_controller_adc_motor_max_current+0
      00AE8B 20 0D            [ 2] 1108 	jra	00189$
      00AE8D                       1109 00188$:
                           000459  1110 	C$motor.c$844$1_0$427 ==.
                                   1111 ;	motor.c: 844: else if(ui8_adc_target_motor_max_current < ui8_controller_adc_motor_max_current)
      00AE8D C6 01 C3         [ 1] 1112 	ld	a, _ui8_controller_adc_motor_max_current+0
      00AE90 C1 01 F2         [ 1] 1113 	cp	a, _ui8_adc_target_motor_max_current+0
      00AE93 23 05            [ 2] 1114 	jrule	00189$
                           000461  1115 	C$motor.c$847$2_0$468 ==.
                                   1116 ;	motor.c: 847: ui8_controller_adc_motor_max_current = ui8_adc_target_motor_max_current;
      00AE95 55 01 F2 01 C3   [ 1] 1117 	mov	_ui8_controller_adc_motor_max_current+0, _ui8_adc_target_motor_max_current+0
      00AE9A                       1118 00189$:
                           000466  1119 	C$motor.c$854$1_0$427 ==.
                                   1120 ;	motor.c: 854: ui16_pas_counter++;
      00AE9A CE 01 D8         [ 2] 1121 	ldw	x, _ui16_pas_counter+0
      00AE9D 5C               [ 1] 1122 	incw	x
      00AE9E CF 01 D8         [ 2] 1123 	ldw	_ui16_pas_counter+0, x
                           00046D  1124 	C$motor.c$857$1_0$427 ==.
                                   1125 ;	motor.c: 857: if((PAS1__PORT->IDR & PAS1__PIN) == 0)
      00AEA1 C6 50 15         [ 1] 1126 	ld	a, 0x5015
      00AEA4 44               [ 1] 1127 	srl	a
      00AEA5 25 06            [ 1] 1128 	jrc	00191$
                           000473  1129 	C$motor.c$859$2_0$469 ==.
                                   1130 ;	motor.c: 859: ui8_pas_state = 0;
      00AEA7 72 5F 01 D5      [ 1] 1131 	clr	_ui8_pas_state+0
      00AEAB 20 04            [ 2] 1132 	jra	00192$
      00AEAD                       1133 00191$:
                           000479  1134 	C$motor.c$863$2_0$470 ==.
                                   1135 ;	motor.c: 863: ui8_pas_state = 1;
      00AEAD 35 01 01 D5      [ 1] 1136 	mov	_ui8_pas_state+0, #0x01
      00AEB1                       1137 00192$:
                           00047D  1138 	C$motor.c$867$1_0$427 ==.
                                   1139 ;	motor.c: 867: if(ui8_pas_state != ui8_pas_state_old)
      00AEB1 C6 01 D6         [ 1] 1140 	ld	a, _ui8_pas_state_old+0
      00AEB4 C1 01 D5         [ 1] 1141 	cp	a, _ui8_pas_state+0
      00AEB7 26 03            [ 1] 1142 	jrne	00472$
      00AEB9 CC AF 19         [ 2] 1143 	jp	00211$
      00AEBC                       1144 00472$:
                           000488  1145 	C$motor.c$869$2_0$471 ==.
                                   1146 ;	motor.c: 869: ui8_pas_state_old = ui8_pas_state;
      00AEBC 55 01 D5 01 D6   [ 1] 1147 	mov	_ui8_pas_state_old+0, _ui8_pas_state+0
                           00048D  1148 	C$motor.c$872$2_0$471 ==.
                                   1149 ;	motor.c: 872: if(ui8_pas_state == 1)
      00AEC1 C6 01 D5         [ 1] 1150 	ld	a, _ui8_pas_state+0
      00AEC4 4A               [ 1] 1151 	dec	a
      00AEC5 26 3D            [ 1] 1152 	jrne	00208$
                           000493  1153 	C$motor.c$875$3_0$472 ==.
                                   1154 ;	motor.c: 875: if(!ui8_pas_after_first_pulse)
      00AEC7 72 5D 01 D7      [ 1] 1155 	tnz	_ui8_pas_after_first_pulse+0
      00AECB 26 0C            [ 1] 1156 	jrne	00200$
                           000499  1157 	C$motor.c$877$4_0$473 ==.
                                   1158 ;	motor.c: 877: ui8_pas_after_first_pulse = 1;
      00AECD 35 01 01 D7      [ 1] 1159 	mov	_ui8_pas_after_first_pulse+0, #0x01
                           00049D  1160 	C$motor.c$878$4_0$473 ==.
                                   1161 ;	motor.c: 878: ui16_pas_pwm_cycles_ticks = (uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS;
      00AED1 AE 24 9F         [ 2] 1162 	ldw	x, #0x249f
      00AED4 CF 01 FA         [ 2] 1163 	ldw	_ui16_pas_pwm_cycles_ticks+0, x
      00AED7 20 40            [ 2] 1164 	jra	00211$
      00AED9                       1165 00200$:
                           0004A5  1166 	C$motor.c$884$4_0$474 ==.
                                   1167 ;	motor.c: 884: if(ui16_pas_counter < ((uint16_t) PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS))
      00AED9 CE 01 D8         [ 2] 1168 	ldw	x, _ui16_pas_counter+0
      00AEDC A3 01 38         [ 2] 1169 	cpw	x, #0x0138
      00AEDF 24 08            [ 1] 1170 	jrnc	00194$
                           0004AD  1171 	C$motor.c$886$5_0$475 ==.
                                   1172 ;	motor.c: 886: ui16_pas_pwm_cycles_ticks = (uint16_t) PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS;
      00AEE1 AE 01 38         [ 2] 1173 	ldw	x, #0x0138
      00AEE4 CF 01 FA         [ 2] 1174 	ldw	_ui16_pas_pwm_cycles_ticks+0, x
      00AEE7 20 0A            [ 2] 1175 	jra	00195$
      00AEE9                       1176 00194$:
                           0004B5  1177 	C$motor.c$890$5_0$476 ==.
                                   1178 ;	motor.c: 890: ui16_pas_pwm_cycles_ticks = ui16_pas_counter;
      00AEE9 CE 01 D8         [ 2] 1179 	ldw	x, _ui16_pas_counter+0
      00AEEC CF 01 FA         [ 2] 1180 	ldw	_ui16_pas_pwm_cycles_ticks+0, x
                           0004BB  1181 	C$motor.c$891$5_0$476 ==.
                                   1182 ;	motor.c: 891: ui16_pas_counter = 0;
      00AEEF 5F               [ 1] 1183 	clrw	x
      00AEF0 CF 01 D8         [ 2] 1184 	ldw	_ui16_pas_counter+0, x
      00AEF3                       1185 00195$:
                           0004BF  1186 	C$motor.c$895$4_0$474 ==.
                                   1187 ;	motor.c: 895: if((PAS2__PORT->IDR & PAS2__PIN) == 0)
      00AEF3 C6 50 10         [ 1] 1188 	ld	a, 0x5010
      00AEF6 2B 06            [ 1] 1189 	jrmi	00197$
                           0004C4  1190 	C$motor.c$897$5_0$477 ==.
                                   1191 ;	motor.c: 897: ui8_pedaling_direction = 2;
      00AEF8 35 02 01 FD      [ 1] 1192 	mov	_ui8_pedaling_direction+0, #0x02
      00AEFC 20 1B            [ 2] 1193 	jra	00211$
      00AEFE                       1194 00197$:
                           0004CA  1195 	C$motor.c$901$5_0$478 ==.
                                   1196 ;	motor.c: 901: ui8_pedaling_direction = 1;
      00AEFE 35 01 01 FD      [ 1] 1197 	mov	_ui8_pedaling_direction+0, #0x01
      00AF02 20 15            [ 2] 1198 	jra	00211$
      00AF04                       1199 00208$:
                           0004D0  1200 	C$motor.c$908$3_0$479 ==.
                                   1201 ;	motor.c: 908: if(ui8_pas_after_first_pulse)
      00AF04 72 5D 01 D7      [ 1] 1202 	tnz	_ui8_pas_after_first_pulse+0
      00AF08 27 0F            [ 1] 1203 	jreq	00211$
                           0004D6  1204 	C$motor.c$911$4_0$480 ==.
                                   1205 ;	motor.c: 911: if((PAS2__PORT->IDR & PAS2__PIN) != 0)
      00AF0A C6 50 10         [ 1] 1206 	ld	a, 0x5010
      00AF0D 2A 06            [ 1] 1207 	jrpl	00203$
                           0004DB  1208 	C$motor.c$913$5_0$481 ==.
                                   1209 ;	motor.c: 913: ui8_pedaling_direction = 2;
      00AF0F 35 02 01 FD      [ 1] 1210 	mov	_ui8_pedaling_direction+0, #0x02
      00AF13 20 04            [ 2] 1211 	jra	00211$
      00AF15                       1212 00203$:
                           0004E1  1213 	C$motor.c$917$5_0$482 ==.
                                   1214 ;	motor.c: 917: ui8_pedaling_direction = 1;
      00AF15 35 01 01 FD      [ 1] 1215 	mov	_ui8_pedaling_direction+0, #0x01
      00AF19                       1216 00211$:
                           0004E5  1217 	C$motor.c$948$1_0$427 ==.
                                   1218 ;	motor.c: 948: if (ui16_pas_counter > ((uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS))
      00AF19 CE 01 D8         [ 2] 1219 	ldw	x, _ui16_pas_counter+0
      00AF1C A3 24 9F         [ 2] 1220 	cpw	x, #0x249f
      00AF1F 23 16            [ 2] 1221 	jrule	00213$
                           0004ED  1222 	C$motor.c$950$2_0$483 ==.
                                   1223 ;	motor.c: 950: ui16_pas_pwm_cycles_ticks = (uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS;
      00AF21 AE 24 9F         [ 2] 1224 	ldw	x, #0x249f
      00AF24 CF 01 FA         [ 2] 1225 	ldw	_ui16_pas_pwm_cycles_ticks+0, x
                           0004F3  1226 	C$motor.c$951$2_0$483 ==.
                                   1227 ;	motor.c: 951: ui16_pas_counter = 0;
      00AF27 5F               [ 1] 1228 	clrw	x
      00AF28 CF 01 D8         [ 2] 1229 	ldw	_ui16_pas_counter+0, x
                           0004F7  1230 	C$motor.c$952$2_0$483 ==.
                                   1231 ;	motor.c: 952: ui8_pas_after_first_pulse = 0;
      00AF2B 72 5F 01 D7      [ 1] 1232 	clr	_ui8_pas_after_first_pulse+0
                           0004FB  1233 	C$motor.c$953$2_0$483 ==.
                                   1234 ;	motor.c: 953: ui8_pedaling_direction = 0;
      00AF2F 72 5F 01 FD      [ 1] 1235 	clr	_ui8_pedaling_direction+0
                           0004FF  1236 	C$motor.c$955$2_0$483 ==.
                                   1237 ;	motor.c: 955: ui16_torque_sensor_throttle_processed_value = 0;
      00AF33 5F               [ 1] 1238 	clrw	x
      00AF34 CF 01 DA         [ 2] 1239 	ldw	_ui16_torque_sensor_throttle_processed_value+0, x
      00AF37                       1240 00213$:
                           000503  1241 	C$motor.c$961$1_0$427 ==.
                                   1242 ;	motor.c: 961: ui16_wheel_speed_sensor_counter++;
      00AF37 CE 01 E3         [ 2] 1243 	ldw	x, _ui16_wheel_speed_sensor_counter+0
      00AF3A 5C               [ 1] 1244 	incw	x
      00AF3B CF 01 E3         [ 2] 1245 	ldw	_ui16_wheel_speed_sensor_counter+0, x
                           00050A  1246 	C$motor.c$964$1_0$427 ==.
                                   1247 ;	motor.c: 964: if(ui16_wheel_speed_sensor_counter > ((uint16_t) WHEEL_SPEED_SENSOR_MIN_PWM_CYCLE_TICKS))
      00AF3E CE 01 E3         [ 2] 1248 	ldw	x, _ui16_wheel_speed_sensor_counter+0
      00AF41 A3 FF FE         [ 2] 1249 	cpw	x, #0xfffe
      00AF44 23 11            [ 2] 1250 	jrule	00224$
                           000512  1251 	C$motor.c$966$2_0$484 ==.
                                   1252 ;	motor.c: 966: ui16_wheel_speed_sensor_pwm_cycles_ticks = (uint16_t) WHEEL_SPEED_SENSOR_MIN_PWM_CYCLE_TICKS;
      00AF46 AE FF FE         [ 2] 1253 	ldw	x, #0xfffe
      00AF49 CF 02 11         [ 2] 1254 	ldw	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0, x
                           000518  1255 	C$motor.c$967$2_0$484 ==.
                                   1256 ;	motor.c: 967: ui16_wheel_speed_sensor_counter = 0;
      00AF4C 5F               [ 1] 1257 	clrw	x
      00AF4D CF 01 E3         [ 2] 1258 	ldw	_ui16_wheel_speed_sensor_counter+0, x
                           00051C  1259 	C$motor.c$968$2_0$484 ==.
                                   1260 ;	motor.c: 968: ui8_wheel_speed_sensor_change_counter = 0;
      00AF50 72 5F 01 E5      [ 1] 1261 	clr	_ui8_wheel_speed_sensor_change_counter+0
      00AF54 CC AF A7         [ 2] 1262 	jp	00225$
      00AF57                       1263 00224$:
                           000523  1264 	C$motor.c$974$2_0$485 ==.
                                   1265 ;	motor.c: 974: if(WHEEL_SPEED_SENSOR__PORT->IDR & WHEEL_SPEED_SENSOR__PIN)
      00AF57 C6 50 01         [ 1] 1266 	ld	a, 0x5001
      00AF5A A5 02            [ 1] 1267 	bcp	a, #0x02
      00AF5C 27 06            [ 1] 1268 	jreq	00215$
                           00052A  1269 	C$motor.c$976$3_0$486 ==.
                                   1270 ;	motor.c: 976: ui8_wheel_speed_sensor_state = 1;
      00AF5E 35 01 01 E1      [ 1] 1271 	mov	_ui8_wheel_speed_sensor_state+0, #0x01
      00AF62 20 04            [ 2] 1272 	jra	00216$
      00AF64                       1273 00215$:
                           000530  1274 	C$motor.c$980$3_0$487 ==.
                                   1275 ;	motor.c: 980: ui8_wheel_speed_sensor_state = 0;
      00AF64 72 5F 01 E1      [ 1] 1276 	clr	_ui8_wheel_speed_sensor_state+0
      00AF68                       1277 00216$:
                           000534  1278 	C$motor.c$983$2_0$485 ==.
                                   1279 ;	motor.c: 983: if(ui8_wheel_speed_sensor_state != ui8_wheel_speed_sensor_state_old) // wheel speed sensor signal did change
      00AF68 C6 01 E2         [ 1] 1280 	ld	a, _ui8_wheel_speed_sensor_state_old+0
      00AF6B C1 01 E1         [ 1] 1281 	cp	a, _ui8_wheel_speed_sensor_state+0
      00AF6E 27 37            [ 1] 1282 	jreq	00225$
                           00053C  1283 	C$motor.c$985$3_0$488 ==.
                                   1284 ;	motor.c: 985: ui8_wheel_speed_sensor_state_old = ui8_wheel_speed_sensor_state;
      00AF70 55 01 E1 01 E2   [ 1] 1285 	mov	_ui8_wheel_speed_sensor_state_old+0, _ui8_wheel_speed_sensor_state+0
                           000541  1286 	C$motor.c$987$3_0$488 ==.
                                   1287 ;	motor.c: 987: if(ui8_wheel_speed_sensor_state == 1) // consider only when wheel speed sensor signal transition from 0 to 1
      00AF75 C6 01 E1         [ 1] 1288 	ld	a, _ui8_wheel_speed_sensor_state+0
      00AF78 4A               [ 1] 1289 	dec	a
      00AF79 26 2C            [ 1] 1290 	jrne	00225$
                           000547  1291 	C$motor.c$991$4_0$489 ==.
                                   1292 ;	motor.c: 991: ui8_wheel_speed_sensor_change_counter++;
      00AF7B 72 5C 01 E5      [ 1] 1293 	inc	_ui8_wheel_speed_sensor_change_counter+0
                           00054B  1294 	C$motor.c$993$4_0$489 ==.
                                   1295 ;	motor.c: 993: if(ui8_wheel_speed_sensor_change_counter >= 2)
      00AF7F C6 01 E5         [ 1] 1296 	ld	a, _ui8_wheel_speed_sensor_change_counter+0
      00AF82 A1 02            [ 1] 1297 	cp	a, #0x02
      00AF84 25 21            [ 1] 1298 	jrc	00225$
                           000552  1299 	C$motor.c$995$5_0$490 ==.
                                   1300 ;	motor.c: 995: ui16_wheel_speed_sensor_pwm_cycles_ticks = ui16_wheel_speed_sensor_counter;
      00AF86 CE 01 E3         [ 2] 1301 	ldw	x, _ui16_wheel_speed_sensor_counter+0
      00AF89 CF 02 11         [ 2] 1302 	ldw	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0, x
                           000558  1303 	C$motor.c$996$5_0$490 ==.
                                   1304 ;	motor.c: 996: ui16_wheel_speed_sensor_counter = 0;
      00AF8C 5F               [ 1] 1305 	clrw	x
      00AF8D CF 01 E3         [ 2] 1306 	ldw	_ui16_wheel_speed_sensor_counter+0, x
                           00055C  1307 	C$motor.c$997$5_0$490 ==.
                                   1308 ;	motor.c: 997: ui32_wheel_speed_sensor_tick_counter++;
      00AF90 CE 02 1B         [ 2] 1309 	ldw	x, _ui32_wheel_speed_sensor_tick_counter+2
      00AF93 90 CE 02 19      [ 2] 1310 	ldw	y, _ui32_wheel_speed_sensor_tick_counter+0
      00AF97 5C               [ 1] 1311 	incw	x
      00AF98 26 02            [ 1] 1312 	jrne	00492$
      00AF9A 90 5C            [ 1] 1313 	incw	y
      00AF9C                       1314 00492$:
      00AF9C CF 02 1B         [ 2] 1315 	ldw	_ui32_wheel_speed_sensor_tick_counter+2, x
      00AF9F 90 CF 02 19      [ 2] 1316 	ldw	_ui32_wheel_speed_sensor_tick_counter+0, y
                           00056F  1317 	C$motor.c$998$5_0$490 ==.
                                   1318 ;	motor.c: 998: ui8_wheel_speed_sensor_change_counter = 1; // keep this counter as 1, meaning we just counted one previous change
      00AFA3 35 01 01 E5      [ 1] 1319 	mov	_ui8_wheel_speed_sensor_change_counter+0, #0x01
      00AFA7                       1320 00225$:
                           000573  1321 	C$motor.c$1019$1_0$427 ==.
                                   1322 ;	motor.c: 1019: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT_CC4);
      00AFA7 35 EF 52 55      [ 1] 1323 	mov	0x5255+0, #0xef
      00AFAB                       1324 00226$:
                           000577  1325 	C$motor.c$1021$1_0$427 ==.
                                   1326 ;	motor.c: 1021: }
      00AFAB 5B 02            [ 2] 1327 	addw	sp, #2
                           000579  1328 	C$motor.c$1021$1_0$427 ==.
                           000579  1329 	XG$TIM1_CAP_COM_IRQHandler$0$0 ==.
      00AFAD 80               [11] 1330 	iret
                           00057A  1331 	G$motor_disable_PWM$0$0 ==.
                           00057A  1332 	C$motor.c$1026$1_0$492 ==.
                                   1333 ;	motor.c: 1026: void motor_disable_PWM(void)
                                   1334 ;	-----------------------------------------
                                   1335 ;	 function motor_disable_PWM
                                   1336 ;	-----------------------------------------
      00AFAE                       1337 _motor_disable_PWM:
                           00057A  1338 	C$motor.c$1028$1_0$492 ==.
                                   1339 ;	motor.c: 1028: TIM1_CtrlPWMOutputs(DISABLE);
      00AFAE 4B 00            [ 1] 1340 	push	#0x00
      00AFB0 CD 91 2E         [ 4] 1341 	call	_TIM1_CtrlPWMOutputs
      00AFB3 84               [ 1] 1342 	pop	a
                           000580  1343 	C$motor.c$1029$1_0$492 ==.
                                   1344 ;	motor.c: 1029: }
                           000580  1345 	C$motor.c$1029$1_0$492 ==.
                           000580  1346 	XG$motor_disable_PWM$0$0 ==.
      00AFB4 81               [ 4] 1347 	ret
                           000581  1348 	G$motor_enable_PWM$0$0 ==.
                           000581  1349 	C$motor.c$1034$1_0$494 ==.
                                   1350 ;	motor.c: 1034: void motor_enable_PWM(void)
                                   1351 ;	-----------------------------------------
                                   1352 ;	 function motor_enable_PWM
                                   1353 ;	-----------------------------------------
      00AFB5                       1354 _motor_enable_PWM:
                           000581  1355 	C$motor.c$1036$1_0$494 ==.
                                   1356 ;	motor.c: 1036: TIM1_CtrlPWMOutputs(ENABLE);
      00AFB5 4B 01            [ 1] 1357 	push	#0x01
      00AFB7 CD 91 2E         [ 4] 1358 	call	_TIM1_CtrlPWMOutputs
      00AFBA 84               [ 1] 1359 	pop	a
                           000587  1360 	C$motor.c$1037$1_0$494 ==.
                                   1361 ;	motor.c: 1037: }
                           000587  1362 	C$motor.c$1037$1_0$494 ==.
                           000587  1363 	XG$motor_enable_PWM$0$0 ==.
      00AFBB 81               [ 4] 1364 	ret
                           000588  1365 	G$motor_controller_set_state$0$0 ==.
                           000588  1366 	C$motor.c$1042$1_0$496 ==.
                                   1367 ;	motor.c: 1042: void motor_controller_set_state(uint8_t ui8_state)
                                   1368 ;	-----------------------------------------
                                   1369 ;	 function motor_controller_set_state
                                   1370 ;	-----------------------------------------
      00AFBC                       1371 _motor_controller_set_state:
                           000588  1372 	C$motor.c$1044$1_0$496 ==.
                                   1373 ;	motor.c: 1044: ui8_motor_controller_state |= ui8_state;
      00AFBC 7B 03            [ 1] 1374 	ld	a, (0x03, sp)
      00AFBE CA 01 AD         [ 1] 1375 	or	a, _ui8_motor_controller_state+0
      00AFC1 C7 01 AD         [ 1] 1376 	ld	_ui8_motor_controller_state+0, a
                           000590  1377 	C$motor.c$1045$1_0$496 ==.
                                   1378 ;	motor.c: 1045: }
                           000590  1379 	C$motor.c$1045$1_0$496 ==.
                           000590  1380 	XG$motor_controller_set_state$0$0 ==.
      00AFC4 81               [ 4] 1381 	ret
                           000591  1382 	G$motor_controller_reset_state$0$0 ==.
                           000591  1383 	C$motor.c$1050$1_0$498 ==.
                                   1384 ;	motor.c: 1050: void motor_controller_reset_state(uint8_t ui8_state)
                                   1385 ;	-----------------------------------------
                                   1386 ;	 function motor_controller_reset_state
                                   1387 ;	-----------------------------------------
      00AFC5                       1388 _motor_controller_reset_state:
                           000591  1389 	C$motor.c$1052$1_0$498 ==.
                                   1390 ;	motor.c: 1052: ui8_motor_controller_state &= ~ui8_state;
      00AFC5 7B 03            [ 1] 1391 	ld	a, (0x03, sp)
      00AFC7 43               [ 1] 1392 	cpl	a
      00AFC8 C4 01 AD         [ 1] 1393 	and	a, _ui8_motor_controller_state+0
      00AFCB C7 01 AD         [ 1] 1394 	ld	_ui8_motor_controller_state+0, a
                           00059A  1395 	C$motor.c$1053$1_0$498 ==.
                                   1396 ;	motor.c: 1053: }
                           00059A  1397 	C$motor.c$1053$1_0$498 ==.
                           00059A  1398 	XG$motor_controller_reset_state$0$0 ==.
      00AFCE 81               [ 4] 1399 	ret
                           00059B  1400 	G$motor_controller_state_is_set$0$0 ==.
                           00059B  1401 	C$motor.c$1058$1_0$500 ==.
                                   1402 ;	motor.c: 1058: uint8_t motor_controller_state_is_set(uint8_t ui8_state)
                                   1403 ;	-----------------------------------------
                                   1404 ;	 function motor_controller_state_is_set
                                   1405 ;	-----------------------------------------
      00AFCF                       1406 _motor_controller_state_is_set:
                           00059B  1407 	C$motor.c$1060$1_0$500 ==.
                                   1408 ;	motor.c: 1060: return ui8_motor_controller_state & ui8_state;
      00AFCF 7B 03            [ 1] 1409 	ld	a, (0x03, sp)
      00AFD1 C4 01 AD         [ 1] 1410 	and	a, _ui8_motor_controller_state+0
                           0005A0  1411 	C$motor.c$1061$1_0$500 ==.
                                   1412 ;	motor.c: 1061: }
                           0005A0  1413 	C$motor.c$1061$1_0$500 ==.
                           0005A0  1414 	XG$motor_controller_state_is_set$0$0 ==.
      00AFD4 81               [ 4] 1415 	ret
                           0005A1  1416 	G$hall_sensor_init$0$0 ==.
                           0005A1  1417 	C$motor.c$1066$1_0$502 ==.
                                   1418 ;	motor.c: 1066: void hall_sensor_init(void)
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function hall_sensor_init
                                   1421 ;	-----------------------------------------
      00AFD5                       1422 _hall_sensor_init:
                           0005A1  1423 	C$motor.c$1068$1_0$502 ==.
                                   1424 ;	motor.c: 1068: GPIO_Init (HALL_SENSOR_A__PORT, (GPIO_Pin_TypeDef) HALL_SENSOR_A__PIN, GPIO_MODE_IN_FL_NO_IT);
      00AFD5 4B 00            [ 1] 1425 	push	#0x00
      00AFD7 4B 20            [ 1] 1426 	push	#0x20
      00AFD9 4B 14            [ 1] 1427 	push	#0x14
      00AFDB 4B 50            [ 1] 1428 	push	#0x50
      00AFDD CD 88 85         [ 4] 1429 	call	_GPIO_Init
      00AFE0 5B 04            [ 2] 1430 	addw	sp, #4
                           0005AE  1431 	C$motor.c$1069$1_0$502 ==.
                                   1432 ;	motor.c: 1069: GPIO_Init (HALL_SENSOR_B__PORT, (GPIO_Pin_TypeDef) HALL_SENSOR_B__PIN, GPIO_MODE_IN_FL_NO_IT);
      00AFE2 4B 00            [ 1] 1433 	push	#0x00
      00AFE4 4B 04            [ 1] 1434 	push	#0x04
      00AFE6 4B 0F            [ 1] 1435 	push	#0x0f
      00AFE8 4B 50            [ 1] 1436 	push	#0x50
      00AFEA CD 88 85         [ 4] 1437 	call	_GPIO_Init
      00AFED 5B 04            [ 2] 1438 	addw	sp, #4
                           0005BB  1439 	C$motor.c$1070$1_0$502 ==.
                                   1440 ;	motor.c: 1070: GPIO_Init (HALL_SENSOR_C__PORT, (GPIO_Pin_TypeDef) HALL_SENSOR_C__PIN, GPIO_MODE_IN_FL_NO_IT);
      00AFEF 4B 00            [ 1] 1441 	push	#0x00
      00AFF1 4B 20            [ 1] 1442 	push	#0x20
      00AFF3 4B 0A            [ 1] 1443 	push	#0x0a
      00AFF5 4B 50            [ 1] 1444 	push	#0x50
      00AFF7 CD 88 85         [ 4] 1445 	call	_GPIO_Init
      00AFFA 5B 04            [ 2] 1446 	addw	sp, #4
                           0005C8  1447 	C$motor.c$1071$1_0$502 ==.
                                   1448 ;	motor.c: 1071: }
                           0005C8  1449 	C$motor.c$1071$1_0$502 ==.
                           0005C8  1450 	XG$hall_sensor_init$0$0 ==.
      00AFFC 81               [ 4] 1451 	ret
                           0005C9  1452 	G$motor_init$0$0 ==.
                           0005C9  1453 	C$motor.c$1076$1_0$504 ==.
                                   1454 ;	motor.c: 1076: void motor_init(void)
                                   1455 ;	-----------------------------------------
                                   1456 ;	 function motor_init
                                   1457 ;	-----------------------------------------
      00AFFD                       1458 _motor_init:
                           0005C9  1459 	C$motor.c$1078$1_0$504 ==.
                                   1460 ;	motor.c: 1078: motor_set_pwm_duty_cycle_ramp_up_inverse_step(PWM_DUTY_CYCLE_RAMP_UP_INVERSE_STEP); // each step = 64us
      00AFFD 4B 0F            [ 1] 1461 	push	#0x0f
      00AFFF 4B 00            [ 1] 1462 	push	#0x00
      00B001 CD B0 2F         [ 4] 1463 	call	_motor_set_pwm_duty_cycle_ramp_up_inverse_step
      00B004 5B 02            [ 2] 1464 	addw	sp, #2
                           0005D2  1465 	C$motor.c$1079$1_0$504 ==.
                                   1466 ;	motor.c: 1079: motor_set_pwm_duty_cycle_ramp_down_inverse_step(PWM_DUTY_CYCLE_RAMP_DOWN_INVERSE_STEP); // each step = 64us
      00B006 4B 0F            [ 1] 1467 	push	#0x0f
      00B008 4B 00            [ 1] 1468 	push	#0x00
      00B00A CD B0 35         [ 4] 1469 	call	_motor_set_pwm_duty_cycle_ramp_down_inverse_step
      00B00D 5B 02            [ 2] 1470 	addw	sp, #2
                           0005DB  1471 	C$motor.c$1080$1_0$504 ==.
                                   1472 ;	motor.c: 1080: motor_set_phase_current_max(ADC_MOTOR_PHASE_CURRENT_MAX);
      00B00F 4B 30            [ 1] 1473 	push	#0x30
      00B011 CD B0 3B         [ 4] 1474 	call	_motor_set_phase_current_max
      00B014 84               [ 1] 1475 	pop	a
                           0005E1  1476 	C$motor.c$1081$1_0$504 ==.
                                   1477 ;	motor.c: 1081: }
                           0005E1  1478 	C$motor.c$1081$1_0$504 ==.
                           0005E1  1479 	XG$motor_init$0$0 ==.
      00B015 81               [ 4] 1480 	ret
                           0005E2  1481 	G$motor_set_pwm_duty_cycle_target$0$0 ==.
                           0005E2  1482 	C$motor.c$1086$1_0$506 ==.
                                   1483 ;	motor.c: 1086: void motor_set_pwm_duty_cycle_target(uint8_t ui8_value)
                                   1484 ;	-----------------------------------------
                                   1485 ;	 function motor_set_pwm_duty_cycle_target
                                   1486 ;	-----------------------------------------
      00B016                       1487 _motor_set_pwm_duty_cycle_target:
                           0005E2  1488 	C$motor.c$1088$1_0$506 ==.
                                   1489 ;	motor.c: 1088: if(ui8_value > PWM_DUTY_CYCLE_MAX) { ui8_value = PWM_DUTY_CYCLE_MAX; }
      00B016 7B 03            [ 1] 1490 	ld	a, (0x03, sp)
      00B018 A1 FE            [ 1] 1491 	cp	a, #0xfe
      00B01A 23 04            [ 2] 1492 	jrule	00102$
      00B01C A6 FE            [ 1] 1493 	ld	a, #0xfe
      00B01E 6B 03            [ 1] 1494 	ld	(0x03, sp), a
      00B020                       1495 00102$:
                           0005EC  1496 	C$motor.c$1091$1_0$506 ==.
                                   1497 ;	motor.c: 1091: if(ui8_motor_controller_state & MOTOR_CONTROLLER_STATE_BRAKE) { ui8_value = 0; }
      00B020 C6 01 AD         [ 1] 1498 	ld	a, _ui8_motor_controller_state+0
      00B023 A5 02            [ 1] 1499 	bcp	a, #0x02
      00B025 27 02            [ 1] 1500 	jreq	00104$
      00B027 0F 03            [ 1] 1501 	clr	(0x03, sp)
      00B029                       1502 00104$:
                           0005F5  1503 	C$motor.c$1093$1_0$506 ==.
                                   1504 ;	motor.c: 1093: ui8_duty_cycle_target = ui8_value;
      00B029 7B 03            [ 1] 1505 	ld	a, (0x03, sp)
      00B02B C7 01 B2         [ 1] 1506 	ld	_ui8_duty_cycle_target+0, a
                           0005FA  1507 	C$motor.c$1094$1_0$506 ==.
                                   1508 ;	motor.c: 1094: }
                           0005FA  1509 	C$motor.c$1094$1_0$506 ==.
                           0005FA  1510 	XG$motor_set_pwm_duty_cycle_target$0$0 ==.
      00B02E 81               [ 4] 1511 	ret
                           0005FB  1512 	G$motor_set_pwm_duty_cycle_ramp_up_inverse_step$0$0 ==.
                           0005FB  1513 	C$motor.c$1099$1_0$510 ==.
                                   1514 ;	motor.c: 1099: void motor_set_pwm_duty_cycle_ramp_up_inverse_step(uint16_t ui16_value)
                                   1515 ;	-----------------------------------------
                                   1516 ;	 function motor_set_pwm_duty_cycle_ramp_up_inverse_step
                                   1517 ;	-----------------------------------------
      00B02F                       1518 _motor_set_pwm_duty_cycle_ramp_up_inverse_step:
                           0005FB  1519 	C$motor.c$1101$1_0$510 ==.
                                   1520 ;	motor.c: 1101: ui16_duty_cycle_ramp_up_inverse_step = ui16_value;
      00B02F 1E 03            [ 2] 1521 	ldw	x, (0x03, sp)
      00B031 CF 01 B3         [ 2] 1522 	ldw	_ui16_duty_cycle_ramp_up_inverse_step+0, x
                           000600  1523 	C$motor.c$1102$1_0$510 ==.
                                   1524 ;	motor.c: 1102: }
                           000600  1525 	C$motor.c$1102$1_0$510 ==.
                           000600  1526 	XG$motor_set_pwm_duty_cycle_ramp_up_inverse_step$0$0 ==.
      00B034 81               [ 4] 1527 	ret
                           000601  1528 	G$motor_set_pwm_duty_cycle_ramp_down_inverse_step$0$0 ==.
                           000601  1529 	C$motor.c$1107$1_0$512 ==.
                                   1530 ;	motor.c: 1107: void motor_set_pwm_duty_cycle_ramp_down_inverse_step(uint16_t ui16_value)
                                   1531 ;	-----------------------------------------
                                   1532 ;	 function motor_set_pwm_duty_cycle_ramp_down_inverse_step
                                   1533 ;	-----------------------------------------
      00B035                       1534 _motor_set_pwm_duty_cycle_ramp_down_inverse_step:
                           000601  1535 	C$motor.c$1109$1_0$512 ==.
                                   1536 ;	motor.c: 1109: ui16_duty_cycle_ramp_down_inverse_step = ui16_value;
      00B035 1E 03            [ 2] 1537 	ldw	x, (0x03, sp)
      00B037 CF 01 B5         [ 2] 1538 	ldw	_ui16_duty_cycle_ramp_down_inverse_step+0, x
                           000606  1539 	C$motor.c$1110$1_0$512 ==.
                                   1540 ;	motor.c: 1110: }
                           000606  1541 	C$motor.c$1110$1_0$512 ==.
                           000606  1542 	XG$motor_set_pwm_duty_cycle_ramp_down_inverse_step$0$0 ==.
      00B03A 81               [ 4] 1543 	ret
                           000607  1544 	G$motor_set_phase_current_max$0$0 ==.
                           000607  1545 	C$motor.c$1115$1_0$514 ==.
                                   1546 ;	motor.c: 1115: void motor_set_phase_current_max(uint8_t ui8_value)
                                   1547 ;	-----------------------------------------
                                   1548 ;	 function motor_set_phase_current_max
                                   1549 ;	-----------------------------------------
      00B03B                       1550 _motor_set_phase_current_max:
                           000607  1551 	C$motor.c$1117$1_0$514 ==.
                                   1552 ;	motor.c: 1117: ui8_adc_target_motor_phase_max_current = ui8_adc_motor_phase_current_offset + ui8_value;
      00B03B C6 01 D4         [ 1] 1553 	ld	a, _ui8_adc_motor_phase_current_offset+0
      00B03E 1B 03            [ 1] 1554 	add	a, (0x03, sp)
      00B040 C7 01 D3         [ 1] 1555 	ld	_ui8_adc_target_motor_phase_max_current+0, a
                           00060F  1556 	C$motor.c$1118$1_0$514 ==.
                                   1557 ;	motor.c: 1118: }
                           00060F  1558 	C$motor.c$1118$1_0$514 ==.
                           00060F  1559 	XG$motor_set_phase_current_max$0$0 ==.
      00B043 81               [ 4] 1560 	ret
                           000610  1561 	G$ui16_motor_get_motor_speed_erps$0$0 ==.
                           000610  1562 	C$motor.c$1123$1_0$516 ==.
                                   1563 ;	motor.c: 1123: uint16_t ui16_motor_get_motor_speed_erps(void)
                                   1564 ;	-----------------------------------------
                                   1565 ;	 function ui16_motor_get_motor_speed_erps
                                   1566 ;	-----------------------------------------
      00B044                       1567 _ui16_motor_get_motor_speed_erps:
                           000610  1568 	C$motor.c$1125$1_0$516 ==.
                                   1569 ;	motor.c: 1125: return ui16_motor_speed_erps;
      00B044 CE 01 A3         [ 2] 1570 	ldw	x, _ui16_motor_speed_erps+0
                           000613  1571 	C$motor.c$1126$1_0$516 ==.
                                   1572 ;	motor.c: 1126: }
                           000613  1573 	C$motor.c$1126$1_0$516 ==.
                           000613  1574 	XG$ui16_motor_get_motor_speed_erps$0$0 ==.
      00B047 81               [ 4] 1575 	ret
                           000614  1576 	G$read_battery_voltage$0$0 ==.
                           000614  1577 	C$motor.c$1131$1_0$518 ==.
                                   1578 ;	motor.c: 1131: void read_battery_voltage(void)
                                   1579 ;	-----------------------------------------
                                   1580 ;	 function read_battery_voltage
                                   1581 ;	-----------------------------------------
      00B048                       1582 _read_battery_voltage:
                           000614  1583 	C$motor.c$1134$1_0$518 ==.
                                   1584 ;	motor.c: 1134: ui16_adc_battery_voltage_accumulated -= ui16_adc_battery_voltage_accumulated >> READ_BATTERY_VOLTAGE_FILTER_COEFFICIENT;
      00B048 CE 01 C6         [ 2] 1585 	ldw	x, _ui16_adc_battery_voltage_accumulated+0
      00B04B 54               [ 2] 1586 	srlw	x
      00B04C 54               [ 2] 1587 	srlw	x
      00B04D 50               [ 2] 1588 	negw	x
      00B04E 72 BB 01 C6      [ 2] 1589 	addw	x, _ui16_adc_battery_voltage_accumulated+0
      00B052 CF 01 C6         [ 2] 1590 	ldw	_ui16_adc_battery_voltage_accumulated+0, x
                           000621  1591 	C$motor.c$1135$1_0$518 ==.
                                   1592 ;	motor.c: 1135: ui16_adc_battery_voltage_accumulated += ui16_adc_read_battery_voltage_10b();
      00B055 CD B3 CB         [ 4] 1593 	call	_ui16_adc_read_battery_voltage_10b
      00B058 72 BB 01 C6      [ 2] 1594 	addw	x, _ui16_adc_battery_voltage_accumulated+0
      00B05C CF 01 C6         [ 2] 1595 	ldw	_ui16_adc_battery_voltage_accumulated+0, x
                           00062B  1596 	C$motor.c$1136$1_0$518 ==.
                                   1597 ;	motor.c: 1136: ui16_adc_battery_voltage_filtered_10b = ui16_adc_battery_voltage_accumulated >> READ_BATTERY_VOLTAGE_FILTER_COEFFICIENT;
      00B05F CE 01 C6         [ 2] 1598 	ldw	x, _ui16_adc_battery_voltage_accumulated+0
      00B062 54               [ 2] 1599 	srlw	x
      00B063 54               [ 2] 1600 	srlw	x
      00B064 CF 01 C8         [ 2] 1601 	ldw	_ui16_adc_battery_voltage_filtered_10b+0, x
                           000633  1602 	C$motor.c$1137$1_0$518 ==.
                                   1603 ;	motor.c: 1137: }
                           000633  1604 	C$motor.c$1137$1_0$518 ==.
                           000633  1605 	XG$read_battery_voltage$0$0 ==.
      00B067 81               [ 4] 1606 	ret
                           000634  1607 	G$read_battery_current$0$0 ==.
                           000634  1608 	C$motor.c$1142$1_0$520 ==.
                                   1609 ;	motor.c: 1142: void read_battery_current(void)
                                   1610 ;	-----------------------------------------
                                   1611 ;	 function read_battery_current
                                   1612 ;	-----------------------------------------
      00B068                       1613 _read_battery_current:
                           000634  1614 	C$motor.c$1145$1_0$520 ==.
                                   1615 ;	motor.c: 1145: ui16_adc_battery_current_accumulated -= ui16_adc_battery_current_accumulated >> READ_BATTERY_CURRENT_FILTER_COEFFICIENT;
      00B068 CE 01 CA         [ 2] 1616 	ldw	x, _ui16_adc_battery_current_accumulated+0
      00B06B 54               [ 2] 1617 	srlw	x
      00B06C 54               [ 2] 1618 	srlw	x
      00B06D 50               [ 2] 1619 	negw	x
      00B06E 72 BB 01 CA      [ 2] 1620 	addw	x, _ui16_adc_battery_current_accumulated+0
      00B072 CF 01 CA         [ 2] 1621 	ldw	_ui16_adc_battery_current_accumulated+0, x
                           000641  1622 	C$motor.c$1146$1_0$520 ==.
                                   1623 ;	motor.c: 1146: ui16_adc_battery_current_accumulated += ui16_adc_battery_current_10b;
      00B075 CE 01 CA         [ 2] 1624 	ldw	x, _ui16_adc_battery_current_accumulated+0
      00B078 72 BB 01 CD      [ 2] 1625 	addw	x, _ui16_adc_battery_current_10b+0
      00B07C CF 01 CA         [ 2] 1626 	ldw	_ui16_adc_battery_current_accumulated+0, x
                           00064B  1627 	C$motor.c$1147$1_0$520 ==.
                                   1628 ;	motor.c: 1147: ui8_adc_battery_current_filtered_10b = ui16_adc_battery_current_accumulated >> READ_BATTERY_CURRENT_FILTER_COEFFICIENT;
      00B07F CE 01 CA         [ 2] 1629 	ldw	x, _ui16_adc_battery_current_accumulated+0
      00B082 54               [ 2] 1630 	srlw	x
      00B083 54               [ 2] 1631 	srlw	x
      00B084 9F               [ 1] 1632 	ld	a, xl
      00B085 C7 01 CC         [ 1] 1633 	ld	_ui8_adc_battery_current_filtered_10b+0, a
                           000654  1634 	C$motor.c$1148$1_0$520 ==.
                                   1635 ;	motor.c: 1148: }
                           000654  1636 	C$motor.c$1148$1_0$520 ==.
                           000654  1637 	XG$read_battery_current$0$0 ==.
      00B088 81               [ 4] 1638 	ret
                           000655  1639 	G$calc_foc_angle$0$0 ==.
                           000655  1640 	C$motor.c$1153$1_0$522 ==.
                                   1641 ;	motor.c: 1153: void calc_foc_angle(void)
                                   1642 ;	-----------------------------------------
                                   1643 ;	 function calc_foc_angle
                                   1644 ;	-----------------------------------------
      00B089                       1645 _calc_foc_angle:
      00B089 52 0E            [ 2] 1646 	sub	sp, #14
                           000657  1647 	C$motor.c$1164$1_0$522 ==.
                                   1648 ;	motor.c: 1164: p_configuration_variables = get_configuration_variables();
      00B08B CD C6 33         [ 4] 1649 	call	_get_configuration_variables
      00B08E 1F 0D            [ 2] 1650 	ldw	(0x0d, sp), x
                           00065C  1651 	C$motor.c$1174$1_0$522 ==.
                                   1652 ;	motor.c: 1174: ui16_temp = ui16_adc_battery_voltage_filtered_10b * ADC10BITS_BATTERY_VOLTAGE_PER_ADC_STEP_X512;
      00B090 3B 01 C9         [ 1] 1653 	push	_ui16_adc_battery_voltage_filtered_10b+1
      00B093 3B 01 C8         [ 1] 1654 	push	_ui16_adc_battery_voltage_filtered_10b+0
      00B096 4B 2C            [ 1] 1655 	push	#0x2c
      00B098 4B 00            [ 1] 1656 	push	#0x00
      00B09A CD D4 A9         [ 4] 1657 	call	__mulint
      00B09D 5B 04            [ 2] 1658 	addw	sp, #4
      00B09F 9E               [ 1] 1659 	ld	a, xh
                           00066C  1660 	C$motor.c$1175$1_0$522 ==.
                                   1661 ;	motor.c: 1175: ui16_temp = (ui16_temp >> 8) * ui8_duty_cycle;
      00B0A0 5F               [ 1] 1662 	clrw	x
      00B0A1 97               [ 1] 1663 	ld	xl, a
      00B0A2 C6 01 B1         [ 1] 1664 	ld	a, _ui8_duty_cycle+0
      00B0A5 6B 0C            [ 1] 1665 	ld	(0x0c, sp), a
      00B0A7 0F 0B            [ 1] 1666 	clr	(0x0b, sp)
      00B0A9 16 0B            [ 2] 1667 	ldw	y, (0x0b, sp)
      00B0AB 90 89            [ 2] 1668 	pushw	y
      00B0AD 89               [ 2] 1669 	pushw	x
      00B0AE CD D4 A9         [ 4] 1670 	call	__mulint
      00B0B1 5B 04            [ 2] 1671 	addw	sp, #4
      00B0B3 9E               [ 1] 1672 	ld	a, xh
                           000680  1673 	C$motor.c$1176$1_0$522 ==.
                                   1674 ;	motor.c: 1176: ui16_e_phase_voltage = ui16_temp >> 9;
      00B0B4 5F               [ 1] 1675 	clrw	x
      00B0B5 97               [ 1] 1676 	ld	xl, a
      00B0B6 54               [ 2] 1677 	srlw	x
      00B0B7 1F 01            [ 2] 1678 	ldw	(0x01, sp), x
                           000685  1679 	C$motor.c$1179$1_0$522 ==.
                                   1680 ;	motor.c: 1179: if(ui8_duty_cycle > 10)
      00B0B9 C6 01 B1         [ 1] 1681 	ld	a, _ui8_duty_cycle+0
      00B0BC A1 0A            [ 1] 1682 	cp	a, #0x0a
      00B0BE 23 28            [ 2] 1683 	jrule	00102$
                           00068C  1684 	C$motor.c$1181$2_0$523 ==.
                                   1685 ;	motor.c: 1181: ui16_temp = ((uint16_t) ui8_adc_battery_current_filtered_10b) * ADC_BATTERY_CURRENT_PER_ADC_STEP_X512;
      00B0C0 5F               [ 1] 1686 	clrw	x
      00B0C1 C6 01 CC         [ 1] 1687 	ld	a, _ui8_adc_battery_current_filtered_10b+0
      00B0C4 97               [ 1] 1688 	ld	xl, a
      00B0C5 89               [ 2] 1689 	pushw	x
      00B0C6 4B 66            [ 1] 1690 	push	#0x66
      00B0C8 4B 00            [ 1] 1691 	push	#0x00
      00B0CA CD D4 A9         [ 4] 1692 	call	__mulint
      00B0CD 5B 04            [ 2] 1693 	addw	sp, #4
                           00069B  1694 	C$motor.c$1182$2_0$523 ==.
                                   1695 ;	motor.c: 1182: ui32_i_phase_current_x2 = ui16_temp / ui8_duty_cycle;
      00B0CF 90 5F            [ 1] 1696 	clrw	y
      00B0D1 C6 01 B1         [ 1] 1697 	ld	a, _ui8_duty_cycle+0
      00B0D4 90 97            [ 1] 1698 	ld	yl, a
      00B0D6 65               [ 2] 1699 	divw	x, y
      00B0D7 90 5F            [ 1] 1700 	clrw	y
      00B0D9 1F 05            [ 2] 1701 	ldw	(0x05, sp), x
      00B0DB 17 03            [ 2] 1702 	ldw	(0x03, sp), y
                           0006A9  1703 	C$motor.c$1185$2_0$523 ==.
                                   1704 ;	motor.c: 1185: p_configuration_variables->ui8_working_status |= 0x40; // bit6 = 1 (motor working)
      00B0DD 1E 0D            [ 2] 1705 	ldw	x, (0x0d, sp)
      00B0DF 1C 00 23         [ 2] 1706 	addw	x, #0x0023
      00B0E2 F6               [ 1] 1707 	ld	a, (x)
      00B0E3 AA 40            [ 1] 1708 	or	a, #0x40
      00B0E5 F7               [ 1] 1709 	ld	(x), a
      00B0E6 20 0E            [ 2] 1710 	jra	00103$
      00B0E8                       1711 00102$:
                           0006B4  1712 	C$motor.c$1190$2_0$524 ==.
                                   1713 ;	motor.c: 1190: ui32_i_phase_current_x2 = 0;
      00B0E8 5F               [ 1] 1714 	clrw	x
      00B0E9 1F 05            [ 2] 1715 	ldw	(0x05, sp), x
      00B0EB 1F 03            [ 2] 1716 	ldw	(0x03, sp), x
                           0006B9  1717 	C$motor.c$1193$2_0$524 ==.
                                   1718 ;	motor.c: 1193: p_configuration_variables->ui8_working_status &= 0xBF; // bit6 = 0 (motor not working)
      00B0ED 1E 0D            [ 2] 1719 	ldw	x, (0x0d, sp)
      00B0EF 1C 00 23         [ 2] 1720 	addw	x, #0x0023
      00B0F2 F6               [ 1] 1721 	ld	a, (x)
      00B0F3 A4 BF            [ 1] 1722 	and	a, #0xbf
      00B0F5 F7               [ 1] 1723 	ld	(x), a
      00B0F6                       1724 00103$:
                           0006C2  1725 	C$motor.c$1198$1_0$522 ==.
                                   1726 ;	motor.c: 1198: ui32_w_angular_velocity_x16 = ui16_motor_speed_erps * 101;
      00B0F6 3B 01 A4         [ 1] 1727 	push	_ui16_motor_speed_erps+1
      00B0F9 3B 01 A3         [ 1] 1728 	push	_ui16_motor_speed_erps+0
      00B0FC 4B 65            [ 1] 1729 	push	#0x65
      00B0FE 4B 00            [ 1] 1730 	push	#0x00
      00B100 CD D4 A9         [ 4] 1731 	call	__mulint
      00B103 5B 04            [ 2] 1732 	addw	sp, #4
      00B105 90 5F            [ 1] 1733 	clrw	y
      00B107 1F 09            [ 2] 1734 	ldw	(0x09, sp), x
      00B109 17 07            [ 2] 1735 	ldw	(0x07, sp), y
                           0006D7  1736 	C$motor.c$1219$1_0$522 ==.
                                   1737 ;	motor.c: 1219: switch (p_configuration_variables->ui8_motor_type)
      00B10B 1E 0D            [ 2] 1738 	ldw	x, (0x0d, sp)
      00B10D E6 0D            [ 1] 1739 	ld	a, (0xd, x)
      00B10F A1 00            [ 1] 1740 	cp	a, #0x00
      00B111 27 0F            [ 1] 1741 	jreq	00104$
      00B113 A1 01            [ 1] 1742 	cp	a, #0x01
      00B115 27 1C            [ 1] 1743 	jreq	00105$
      00B117 A1 02            [ 1] 1744 	cp	a, #0x02
      00B119 27 28            [ 1] 1745 	jreq	00106$
      00B11B A1 03            [ 1] 1746 	cp	a, #0x03
      00B11D 27 34            [ 1] 1747 	jreq	00107$
      00B11F CC B1 63         [ 2] 1748 	jp	00108$
                           0006EE  1749 	C$motor.c$1221$2_0$525 ==.
                                   1750 ;	motor.c: 1221: case 0:
      00B122                       1751 00104$:
                           0006EE  1752 	C$motor.c$1222$2_0$525 ==.
                                   1753 ;	motor.c: 1222: ui32_l_x1048576 = 142; // 48 V motor
      00B122 AE 00 8E         [ 2] 1754 	ldw	x, #0x008e
      00B125 1F 0D            [ 2] 1755 	ldw	(0x0d, sp), x
      00B127 5F               [ 1] 1756 	clrw	x
      00B128 1F 0B            [ 2] 1757 	ldw	(0x0b, sp), x
                           0006F6  1758 	C$motor.c$1223$2_0$525 ==.
                                   1759 ;	motor.c: 1223: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS;
      00B12A AE 02 08         [ 2] 1760 	ldw	x, #0x0208
      00B12D CF 01 A1         [ 2] 1761 	ldw	_ui16_max_motor_speed_erps+0, x
                           0006FC  1762 	C$motor.c$1224$2_0$525 ==.
                                   1763 ;	motor.c: 1224: break;
      00B130 CC B1 71         [ 2] 1764 	jp	00109$
                           0006FF  1765 	C$motor.c$1226$2_0$525 ==.
                                   1766 ;	motor.c: 1226: case 1:
      00B133                       1767 00105$:
                           0006FF  1768 	C$motor.c$1227$2_0$525 ==.
                                   1769 ;	motor.c: 1227: ui32_l_x1048576 = 80; // 36 V motor
      00B133 AE 00 50         [ 2] 1770 	ldw	x, #0x0050
      00B136 1F 0D            [ 2] 1771 	ldw	(0x0d, sp), x
      00B138 5F               [ 1] 1772 	clrw	x
      00B139 1F 0B            [ 2] 1773 	ldw	(0x0b, sp), x
                           000707  1774 	C$motor.c$1228$2_0$525 ==.
                                   1775 ;	motor.c: 1228: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS;
      00B13B AE 02 08         [ 2] 1776 	ldw	x, #0x0208
      00B13E CF 01 A1         [ 2] 1777 	ldw	_ui16_max_motor_speed_erps+0, x
                           00070D  1778 	C$motor.c$1229$2_0$525 ==.
                                   1779 ;	motor.c: 1229: break;
      00B141 20 2E            [ 2] 1780 	jra	00109$
                           00070F  1781 	C$motor.c$1231$2_0$525 ==.
                                   1782 ;	motor.c: 1231: case 2: // experimental high cadence mode for 48 volt motor
      00B143                       1783 00106$:
                           00070F  1784 	C$motor.c$1232$2_0$525 ==.
                                   1785 ;	motor.c: 1232: ui32_l_x1048576 = 199;
      00B143 AE 00 C7         [ 2] 1786 	ldw	x, #0x00c7
      00B146 1F 0D            [ 2] 1787 	ldw	(0x0d, sp), x
      00B148 5F               [ 1] 1788 	clrw	x
      00B149 1F 0B            [ 2] 1789 	ldw	(0x0b, sp), x
                           000717  1790 	C$motor.c$1233$2_0$525 ==.
                                   1791 ;	motor.c: 1233: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS_EXPERIMENTAL;
      00B14B AE 02 BC         [ 2] 1792 	ldw	x, #0x02bc
      00B14E CF 01 A1         [ 2] 1793 	ldw	_ui16_max_motor_speed_erps+0, x
                           00071D  1794 	C$motor.c$1234$2_0$525 ==.
                                   1795 ;	motor.c: 1234: break;
      00B151 20 1E            [ 2] 1796 	jra	00109$
                           00071F  1797 	C$motor.c$1236$2_0$525 ==.
                                   1798 ;	motor.c: 1236: case 3: // experimental high cadence mode for 36 volt motor
      00B153                       1799 00107$:
                           00071F  1800 	C$motor.c$1237$2_0$525 ==.
                                   1801 ;	motor.c: 1237: ui32_l_x1048576 = 115; // confirmed working with the 36 V motor (only) by user jbalat so far
      00B153 AE 00 73         [ 2] 1802 	ldw	x, #0x0073
      00B156 1F 0D            [ 2] 1803 	ldw	(0x0d, sp), x
      00B158 5F               [ 1] 1804 	clrw	x
      00B159 1F 0B            [ 2] 1805 	ldw	(0x0b, sp), x
                           000727  1806 	C$motor.c$1238$2_0$525 ==.
                                   1807 ;	motor.c: 1238: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS_EXPERIMENTAL;
      00B15B AE 02 BC         [ 2] 1808 	ldw	x, #0x02bc
      00B15E CF 01 A1         [ 2] 1809 	ldw	_ui16_max_motor_speed_erps+0, x
                           00072D  1810 	C$motor.c$1239$2_0$525 ==.
                                   1811 ;	motor.c: 1239: break;
      00B161 20 0E            [ 2] 1812 	jra	00109$
                           00072F  1813 	C$motor.c$1241$2_0$525 ==.
                                   1814 ;	motor.c: 1241: default:
      00B163                       1815 00108$:
                           00072F  1816 	C$motor.c$1242$2_0$525 ==.
                                   1817 ;	motor.c: 1242: ui32_l_x1048576 = 142; // 48 V motor
      00B163 AE 00 8E         [ 2] 1818 	ldw	x, #0x008e
      00B166 1F 0D            [ 2] 1819 	ldw	(0x0d, sp), x
      00B168 5F               [ 1] 1820 	clrw	x
      00B169 1F 0B            [ 2] 1821 	ldw	(0x0b, sp), x
                           000737  1822 	C$motor.c$1243$2_0$525 ==.
                                   1823 ;	motor.c: 1243: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS;
      00B16B AE 02 08         [ 2] 1824 	ldw	x, #0x0208
      00B16E CF 01 A1         [ 2] 1825 	ldw	_ui16_max_motor_speed_erps+0, x
                           00073D  1826 	C$motor.c$1245$1_0$522 ==.
                                   1827 ;	motor.c: 1245: }	
      00B171                       1828 00109$:
                           00073D  1829 	C$motor.c$1248$1_0$522 ==.
                                   1830 ;	motor.c: 1248: ui32_temp = ui32_i_phase_current_x2 * ui32_l_x1048576;
      00B171 1E 0D            [ 2] 1831 	ldw	x, (0x0d, sp)
      00B173 89               [ 2] 1832 	pushw	x
      00B174 1E 0D            [ 2] 1833 	ldw	x, (0x0d, sp)
      00B176 89               [ 2] 1834 	pushw	x
      00B177 1E 09            [ 2] 1835 	ldw	x, (0x09, sp)
      00B179 89               [ 2] 1836 	pushw	x
      00B17A 1E 09            [ 2] 1837 	ldw	x, (0x09, sp)
      00B17C 89               [ 2] 1838 	pushw	x
      00B17D CD DA 9D         [ 4] 1839 	call	__mullong
      00B180 5B 08            [ 2] 1840 	addw	sp, #8
      00B182 1F 0D            [ 2] 1841 	ldw	(0x0d, sp), x
                           000750  1842 	C$motor.c$1249$1_0$522 ==.
                                   1843 ;	motor.c: 1249: ui32_temp *= ui32_w_angular_velocity_x16;
      00B184 1E 09            [ 2] 1844 	ldw	x, (0x09, sp)
      00B186 89               [ 2] 1845 	pushw	x
      00B187 1E 09            [ 2] 1846 	ldw	x, (0x09, sp)
      00B189 89               [ 2] 1847 	pushw	x
      00B18A 1E 11            [ 2] 1848 	ldw	x, (0x11, sp)
      00B18C 89               [ 2] 1849 	pushw	x
      00B18D 90 89            [ 2] 1850 	pushw	y
      00B18F CD DA 9D         [ 4] 1851 	call	__mullong
      00B192 5B 08            [ 2] 1852 	addw	sp, #8
      00B194 51               [ 1] 1853 	exgw	x, y
                           000761  1854 	C$motor.c$1250$1_0$522 ==.
                                   1855 ;	motor.c: 1250: ui16_iwl_128 = ui32_temp >> 18;
      00B195 54               [ 2] 1856 	srlw	x
      00B196 54               [ 2] 1857 	srlw	x
                           000763  1858 	C$motor.c$1253$1_0$522 ==.
                                   1859 ;	motor.c: 1253: ui8_foc_angle = asin_table(ui16_iwl_128 / ui16_e_phase_voltage);
      00B197 16 01            [ 2] 1860 	ldw	y, (0x01, sp)
      00B199 65               [ 2] 1861 	divw	x, y
      00B19A 9F               [ 1] 1862 	ld	a, xl
      00B19B 88               [ 1] 1863 	push	a
      00B19C CD B1 CB         [ 4] 1864 	call	_asin_table
      00B19F 5B 01            [ 2] 1865 	addw	sp, #1
      00B1A1 C7 01 A8         [ 1] 1866 	ld	_ui8_foc_angle+0, a
                           000770  1867 	C$motor.c$1256$1_0$522 ==.
                                   1868 ;	motor.c: 1256: ui16_foc_angle_accumulated -= ui16_foc_angle_accumulated >> 4;
      00B1A4 CE 01 AA         [ 2] 1869 	ldw	x, _ui16_foc_angle_accumulated+0
      00B1A7 A6 10            [ 1] 1870 	ld	a, #0x10
      00B1A9 62               [ 2] 1871 	div	x, a
      00B1AA 50               [ 2] 1872 	negw	x
      00B1AB 72 BB 01 AA      [ 2] 1873 	addw	x, _ui16_foc_angle_accumulated+0
      00B1AF CF 01 AA         [ 2] 1874 	ldw	_ui16_foc_angle_accumulated+0, x
                           00077E  1875 	C$motor.c$1257$1_0$522 ==.
                                   1876 ;	motor.c: 1257: ui16_foc_angle_accumulated += ui8_foc_angle;
      00B1B2 5F               [ 1] 1877 	clrw	x
      00B1B3 C6 01 A8         [ 1] 1878 	ld	a, _ui8_foc_angle+0
      00B1B6 97               [ 1] 1879 	ld	xl, a
      00B1B7 72 BB 01 AA      [ 2] 1880 	addw	x, _ui16_foc_angle_accumulated+0
      00B1BB CF 01 AA         [ 2] 1881 	ldw	_ui16_foc_angle_accumulated+0, x
                           00078A  1882 	C$motor.c$1258$1_0$522 ==.
                                   1883 ;	motor.c: 1258: ui8_foc_angle = ui16_foc_angle_accumulated >> 4;
      00B1BE CE 01 AA         [ 2] 1884 	ldw	x, _ui16_foc_angle_accumulated+0
      00B1C1 A6 10            [ 1] 1885 	ld	a, #0x10
      00B1C3 62               [ 2] 1886 	div	x, a
      00B1C4 9F               [ 1] 1887 	ld	a, xl
      00B1C5 C7 01 A8         [ 1] 1888 	ld	_ui8_foc_angle+0, a
                           000794  1889 	C$motor.c$1259$1_0$522 ==.
                                   1890 ;	motor.c: 1259: }
      00B1C8 5B 0E            [ 2] 1891 	addw	sp, #14
                           000796  1892 	C$motor.c$1259$1_0$522 ==.
                           000796  1893 	XG$calc_foc_angle$0$0 ==.
      00B1CA 81               [ 4] 1894 	ret
                           000797  1895 	G$asin_table$0$0 ==.
                           000797  1896 	C$motor.c$1264$1_0$527 ==.
                                   1897 ;	motor.c: 1264: uint8_t asin_table(uint8_t ui8_inverted_angle_x128) // calc asin also converts the final result to degrees
                                   1898 ;	-----------------------------------------
                                   1899 ;	 function asin_table
                                   1900 ;	-----------------------------------------
      00B1CB                       1901 _asin_table:
      00B1CB 88               [ 1] 1902 	push	a
                           000798  1903 	C$motor.c$1268$2_0$528 ==.
                                   1904 ;	motor.c: 1268: while(ui8_index < SIN_TABLE_LEN)
      00B1CC 0F 01            [ 1] 1905 	clr	(0x01, sp)
      00B1CE                       1906 00103$:
      00B1CE 7B 01            [ 1] 1907 	ld	a, (0x01, sp)
      00B1D0 A1 3C            [ 1] 1908 	cp	a, #0x3c
      00B1D2 24 10            [ 1] 1909 	jrnc	00105$
                           0007A0  1910 	C$motor.c$1270$2_0$528 ==.
                                   1911 ;	motor.c: 1270: if(ui8_inverted_angle_x128 < ui8_sin_table[ui8_index])
      00B1D4 5F               [ 1] 1912 	clrw	x
      00B1D5 7B 01            [ 1] 1913 	ld	a, (0x01, sp)
      00B1D7 97               [ 1] 1914 	ld	xl, a
      00B1D8 1C 01 5F         [ 2] 1915 	addw	x, #(_ui8_sin_table + 0)
      00B1DB F6               [ 1] 1916 	ld	a, (x)
      00B1DC 11 04            [ 1] 1917 	cp	a, (0x04, sp)
      00B1DE 22 04            [ 1] 1918 	jrugt	00105$
                           0007AC  1919 	C$motor.c$1275$2_0$528 ==.
                                   1920 ;	motor.c: 1275: ui8_index++;
      00B1E0 0C 01            [ 1] 1921 	inc	(0x01, sp)
      00B1E2 20 EA            [ 2] 1922 	jra	00103$
      00B1E4                       1923 00105$:
                           0007B0  1924 	C$motor.c$1279$1_0$527 ==.
                                   1925 ;	motor.c: 1279: return ui8_index--;
      00B1E4 7B 01            [ 1] 1926 	ld	a, (0x01, sp)
                           0007B2  1927 	C$motor.c$1280$1_0$527 ==.
                                   1928 ;	motor.c: 1280: }
      00B1E6 5B 01            [ 2] 1929 	addw	sp, #1
                           0007B4  1930 	C$motor.c$1280$1_0$527 ==.
                           0007B4  1931 	XG$asin_table$0$0 ==.
      00B1E8 81               [ 4] 1932 	ret
                           0007B5  1933 	G$motor_get_adc_battery_current_filtered_10b$0$0 ==.
                           0007B5  1934 	C$motor.c$1285$1_0$531 ==.
                                   1935 ;	motor.c: 1285: uint8_t motor_get_adc_battery_current_filtered_10b(void)
                                   1936 ;	-----------------------------------------
                                   1937 ;	 function motor_get_adc_battery_current_filtered_10b
                                   1938 ;	-----------------------------------------
      00B1E9                       1939 _motor_get_adc_battery_current_filtered_10b:
                           0007B5  1940 	C$motor.c$1287$1_0$531 ==.
                                   1941 ;	motor.c: 1287: return ui8_adc_battery_current_filtered_10b;
      00B1E9 C6 01 CC         [ 1] 1942 	ld	a, _ui8_adc_battery_current_filtered_10b+0
                           0007B8  1943 	C$motor.c$1288$1_0$531 ==.
                                   1944 ;	motor.c: 1288: }
                           0007B8  1945 	C$motor.c$1288$1_0$531 ==.
                           0007B8  1946 	XG$motor_get_adc_battery_current_filtered_10b$0$0 ==.
      00B1EC 81               [ 4] 1947 	ret
                           0007B9  1948 	G$motor_get_adc_battery_voltage_filtered_10b$0$0 ==.
                           0007B9  1949 	C$motor.c$1293$1_0$533 ==.
                                   1950 ;	motor.c: 1293: uint16_t motor_get_adc_battery_voltage_filtered_10b(void)
                                   1951 ;	-----------------------------------------
                                   1952 ;	 function motor_get_adc_battery_voltage_filtered_10b
                                   1953 ;	-----------------------------------------
      00B1ED                       1954 _motor_get_adc_battery_voltage_filtered_10b:
                           0007B9  1955 	C$motor.c$1295$1_0$533 ==.
                                   1956 ;	motor.c: 1295: return ui16_adc_battery_voltage_filtered_10b;
      00B1ED CE 01 C8         [ 2] 1957 	ldw	x, _ui16_adc_battery_voltage_filtered_10b+0
                           0007BC  1958 	C$motor.c$1296$1_0$533 ==.
                                   1959 ;	motor.c: 1296: }
                           0007BC  1960 	C$motor.c$1296$1_0$533 ==.
                           0007BC  1961 	XG$motor_get_adc_battery_voltage_filtered_10b$0$0 ==.
      00B1F0 81               [ 4] 1962 	ret
                           0007BD  1963 	G$motor_set_adc_battery_voltage_cut_off$0$0 ==.
                           0007BD  1964 	C$motor.c$1301$1_0$535 ==.
                                   1965 ;	motor.c: 1301: void motor_set_adc_battery_voltage_cut_off(uint8_t ui8_value)
                                   1966 ;	-----------------------------------------
                                   1967 ;	 function motor_set_adc_battery_voltage_cut_off
                                   1968 ;	-----------------------------------------
      00B1F1                       1969 _motor_set_adc_battery_voltage_cut_off:
                           0007BD  1970 	C$motor.c$1303$1_0$535 ==.
                                   1971 ;	motor.c: 1303: ui8_adc_battery_voltage_cut_off = ui8_value;
      00B1F1 7B 03            [ 1] 1972 	ld	a, (0x03, sp)
      00B1F3 C7 01 C5         [ 1] 1973 	ld	_ui8_adc_battery_voltage_cut_off+0, a
                           0007C2  1974 	C$motor.c$1304$1_0$535 ==.
                                   1975 ;	motor.c: 1304: }
                           0007C2  1976 	C$motor.c$1304$1_0$535 ==.
                           0007C2  1977 	XG$motor_set_adc_battery_voltage_cut_off$0$0 ==.
      00B1F6 81               [ 4] 1978 	ret
                                   1979 	.area CODE
                                   1980 	.area CONST
                                   1981 	.area INITIALIZER
                           000000  1982 Fmotor$__xinit_ui8_svm_table$0_0$0 == .
      008090                       1983 __xinit__ui8_svm_table:
      008090 EF                    1984 	.db #0xef	; 239
      008091 F1                    1985 	.db #0xf1	; 241
      008092 F2                    1986 	.db #0xf2	; 242
      008093 F3                    1987 	.db #0xf3	; 243
      008094 F5                    1988 	.db #0xf5	; 245
      008095 F6                    1989 	.db #0xf6	; 246
      008096 F7                    1990 	.db #0xf7	; 247
      008097 F8                    1991 	.db #0xf8	; 248
      008098 F9                    1992 	.db #0xf9	; 249
      008099 FA                    1993 	.db #0xfa	; 250
      00809A FB                    1994 	.db #0xfb	; 251
      00809B FB                    1995 	.db #0xfb	; 251
      00809C FC                    1996 	.db #0xfc	; 252
      00809D FD                    1997 	.db #0xfd	; 253
      00809E FD                    1998 	.db #0xfd	; 253
      00809F FE                    1999 	.db #0xfe	; 254
      0080A0 FE                    2000 	.db #0xfe	; 254
      0080A1 FE                    2001 	.db #0xfe	; 254
      0080A2 FF                    2002 	.db #0xff	; 255
      0080A3 FF                    2003 	.db #0xff	; 255
      0080A4 FF                    2004 	.db #0xff	; 255
      0080A5 FF                    2005 	.db #0xff	; 255
      0080A6 FF                    2006 	.db #0xff	; 255
      0080A7 FF                    2007 	.db #0xff	; 255
      0080A8 FE                    2008 	.db #0xfe	; 254
      0080A9 FE                    2009 	.db #0xfe	; 254
      0080AA FE                    2010 	.db #0xfe	; 254
      0080AB FD                    2011 	.db #0xfd	; 253
      0080AC FD                    2012 	.db #0xfd	; 253
      0080AD FC                    2013 	.db #0xfc	; 252
      0080AE FB                    2014 	.db #0xfb	; 251
      0080AF FA                    2015 	.db #0xfa	; 250
      0080B0 FA                    2016 	.db #0xfa	; 250
      0080B1 F9                    2017 	.db #0xf9	; 249
      0080B2 F8                    2018 	.db #0xf8	; 248
      0080B3 F7                    2019 	.db #0xf7	; 247
      0080B4 F5                    2020 	.db #0xf5	; 245
      0080B5 F4                    2021 	.db #0xf4	; 244
      0080B6 F3                    2022 	.db #0xf3	; 243
      0080B7 F2                    2023 	.db #0xf2	; 242
      0080B8 F0                    2024 	.db #0xf0	; 240
      0080B9 EF                    2025 	.db #0xef	; 239
      0080BA EC                    2026 	.db #0xec	; 236
      0080BB E7                    2027 	.db #0xe7	; 231
      0080BC E3                    2028 	.db #0xe3	; 227
      0080BD DE                    2029 	.db #0xde	; 222
      0080BE D9                    2030 	.db #0xd9	; 217
      0080BF D4                    2031 	.db #0xd4	; 212
      0080C0 CF                    2032 	.db #0xcf	; 207
      0080C1 CA                    2033 	.db #0xca	; 202
      0080C2 C5                    2034 	.db #0xc5	; 197
      0080C3 BF                    2035 	.db #0xbf	; 191
      0080C4 BA                    2036 	.db #0xba	; 186
      0080C5 B5                    2037 	.db #0xb5	; 181
      0080C6 B0                    2038 	.db #0xb0	; 176
      0080C7 AA                    2039 	.db #0xaa	; 170
      0080C8 A5                    2040 	.db #0xa5	; 165
      0080C9 A0                    2041 	.db #0xa0	; 160
      0080CA 9A                    2042 	.db #0x9a	; 154
      0080CB 95                    2043 	.db #0x95	; 149
      0080CC 90                    2044 	.db #0x90	; 144
      0080CD 8A                    2045 	.db #0x8a	; 138
      0080CE 85                    2046 	.db #0x85	; 133
      0080CF 7F                    2047 	.db #0x7f	; 127
      0080D0 7A                    2048 	.db #0x7a	; 122	'z'
      0080D1 74                    2049 	.db #0x74	; 116	't'
      0080D2 6F                    2050 	.db #0x6f	; 111	'o'
      0080D3 6A                    2051 	.db #0x6a	; 106	'j'
      0080D4 64                    2052 	.db #0x64	; 100	'd'
      0080D5 5F                    2053 	.db #0x5f	; 95
      0080D6 59                    2054 	.db #0x59	; 89	'Y'
      0080D7 54                    2055 	.db #0x54	; 84	'T'
      0080D8 4F                    2056 	.db #0x4f	; 79	'O'
      0080D9 4A                    2057 	.db #0x4a	; 74	'J'
      0080DA 44                    2058 	.db #0x44	; 68	'D'
      0080DB 3F                    2059 	.db #0x3f	; 63
      0080DC 3A                    2060 	.db #0x3a	; 58
      0080DD 35                    2061 	.db #0x35	; 53	'5'
      0080DE 30                    2062 	.db #0x30	; 48	'0'
      0080DF 2B                    2063 	.db #0x2b	; 43
      0080E0 26                    2064 	.db #0x26	; 38
      0080E1 21                    2065 	.db #0x21	; 33
      0080E2 1C                    2066 	.db #0x1c	; 28
      0080E3 17                    2067 	.db #0x17	; 23
      0080E4 12                    2068 	.db #0x12	; 18
      0080E5 10                    2069 	.db #0x10	; 16
      0080E6 0E                    2070 	.db #0x0e	; 14
      0080E7 0D                    2071 	.db #0x0d	; 13
      0080E8 0C                    2072 	.db #0x0c	; 12
      0080E9 0A                    2073 	.db #0x0a	; 10
      0080EA 09                    2074 	.db #0x09	; 9
      0080EB 08                    2075 	.db #0x08	; 8
      0080EC 07                    2076 	.db #0x07	; 7
      0080ED 06                    2077 	.db #0x06	; 6
      0080EE 05                    2078 	.db #0x05	; 5
      0080EF 04                    2079 	.db #0x04	; 4
      0080F0 03                    2080 	.db #0x03	; 3
      0080F1 03                    2081 	.db #0x03	; 3
      0080F2 02                    2082 	.db #0x02	; 2
      0080F3 01                    2083 	.db #0x01	; 1
      0080F4 01                    2084 	.db #0x01	; 1
      0080F5 01                    2085 	.db #0x01	; 1
      0080F6 00                    2086 	.db #0x00	; 0
      0080F7 00                    2087 	.db #0x00	; 0
      0080F8 00                    2088 	.db #0x00	; 0
      0080F9 00                    2089 	.db #0x00	; 0
      0080FA 00                    2090 	.db #0x00	; 0
      0080FB 00                    2091 	.db #0x00	; 0
      0080FC 00                    2092 	.db #0x00	; 0
      0080FD 00                    2093 	.db #0x00	; 0
      0080FE 00                    2094 	.db #0x00	; 0
      0080FF 01                    2095 	.db #0x01	; 1
      008100 01                    2096 	.db #0x01	; 1
      008101 02                    2097 	.db #0x02	; 2
      008102 02                    2098 	.db #0x02	; 2
      008103 03                    2099 	.db #0x03	; 3
      008104 04                    2100 	.db #0x04	; 4
      008105 05                    2101 	.db #0x05	; 5
      008106 06                    2102 	.db #0x06	; 6
      008107 06                    2103 	.db #0x06	; 6
      008108 08                    2104 	.db #0x08	; 8
      008109 09                    2105 	.db #0x09	; 9
      00810A 0A                    2106 	.db #0x0a	; 10
      00810B 0B                    2107 	.db #0x0b	; 11
      00810C 0C                    2108 	.db #0x0c	; 12
      00810D 0E                    2109 	.db #0x0e	; 14
      00810E 0F                    2110 	.db #0x0f	; 15
      00810F 11                    2111 	.db #0x11	; 17
      008110 0F                    2112 	.db #0x0f	; 15
      008111 0E                    2113 	.db #0x0e	; 14
      008112 0C                    2114 	.db #0x0c	; 12
      008113 0B                    2115 	.db #0x0b	; 11
      008114 0A                    2116 	.db #0x0a	; 10
      008115 09                    2117 	.db #0x09	; 9
      008116 08                    2118 	.db #0x08	; 8
      008117 06                    2119 	.db #0x06	; 6
      008118 06                    2120 	.db #0x06	; 6
      008119 05                    2121 	.db #0x05	; 5
      00811A 04                    2122 	.db #0x04	; 4
      00811B 03                    2123 	.db #0x03	; 3
      00811C 02                    2124 	.db #0x02	; 2
      00811D 02                    2125 	.db #0x02	; 2
      00811E 01                    2126 	.db #0x01	; 1
      00811F 01                    2127 	.db #0x01	; 1
      008120 00                    2128 	.db #0x00	; 0
      008121 00                    2129 	.db #0x00	; 0
      008122 00                    2130 	.db #0x00	; 0
      008123 00                    2131 	.db #0x00	; 0
      008124 00                    2132 	.db #0x00	; 0
      008125 00                    2133 	.db #0x00	; 0
      008126 00                    2134 	.db #0x00	; 0
      008127 00                    2135 	.db #0x00	; 0
      008128 00                    2136 	.db #0x00	; 0
      008129 01                    2137 	.db #0x01	; 1
      00812A 01                    2138 	.db #0x01	; 1
      00812B 01                    2139 	.db #0x01	; 1
      00812C 02                    2140 	.db #0x02	; 2
      00812D 03                    2141 	.db #0x03	; 3
      00812E 03                    2142 	.db #0x03	; 3
      00812F 04                    2143 	.db #0x04	; 4
      008130 05                    2144 	.db #0x05	; 5
      008131 06                    2145 	.db #0x06	; 6
      008132 07                    2146 	.db #0x07	; 7
      008133 08                    2147 	.db #0x08	; 8
      008134 09                    2148 	.db #0x09	; 9
      008135 0A                    2149 	.db #0x0a	; 10
      008136 0C                    2150 	.db #0x0c	; 12
      008137 0D                    2151 	.db #0x0d	; 13
      008138 0E                    2152 	.db #0x0e	; 14
      008139 10                    2153 	.db #0x10	; 16
      00813A 12                    2154 	.db #0x12	; 18
      00813B 17                    2155 	.db #0x17	; 23
      00813C 1C                    2156 	.db #0x1c	; 28
      00813D 21                    2157 	.db #0x21	; 33
      00813E 26                    2158 	.db #0x26	; 38
      00813F 2B                    2159 	.db #0x2b	; 43
      008140 30                    2160 	.db #0x30	; 48	'0'
      008141 35                    2161 	.db #0x35	; 53	'5'
      008142 3A                    2162 	.db #0x3a	; 58
      008143 3F                    2163 	.db #0x3f	; 63
      008144 44                    2164 	.db #0x44	; 68	'D'
      008145 4A                    2165 	.db #0x4a	; 74	'J'
      008146 4F                    2166 	.db #0x4f	; 79	'O'
      008147 54                    2167 	.db #0x54	; 84	'T'
      008148 59                    2168 	.db #0x59	; 89	'Y'
      008149 5F                    2169 	.db #0x5f	; 95
      00814A 64                    2170 	.db #0x64	; 100	'd'
      00814B 6A                    2171 	.db #0x6a	; 106	'j'
      00814C 6F                    2172 	.db #0x6f	; 111	'o'
      00814D 74                    2173 	.db #0x74	; 116	't'
      00814E 7A                    2174 	.db #0x7a	; 122	'z'
      00814F 7F                    2175 	.db #0x7f	; 127
      008150 85                    2176 	.db #0x85	; 133
      008151 8A                    2177 	.db #0x8a	; 138
      008152 90                    2178 	.db #0x90	; 144
      008153 95                    2179 	.db #0x95	; 149
      008154 9A                    2180 	.db #0x9a	; 154
      008155 A0                    2181 	.db #0xa0	; 160
      008156 A5                    2182 	.db #0xa5	; 165
      008157 AA                    2183 	.db #0xaa	; 170
      008158 B0                    2184 	.db #0xb0	; 176
      008159 B5                    2185 	.db #0xb5	; 181
      00815A BA                    2186 	.db #0xba	; 186
      00815B BF                    2187 	.db #0xbf	; 191
      00815C C5                    2188 	.db #0xc5	; 197
      00815D CA                    2189 	.db #0xca	; 202
      00815E CF                    2190 	.db #0xcf	; 207
      00815F D4                    2191 	.db #0xd4	; 212
      008160 D9                    2192 	.db #0xd9	; 217
      008161 DE                    2193 	.db #0xde	; 222
      008162 E3                    2194 	.db #0xe3	; 227
      008163 E7                    2195 	.db #0xe7	; 231
      008164 EC                    2196 	.db #0xec	; 236
      008165 EF                    2197 	.db #0xef	; 239
      008166 F0                    2198 	.db #0xf0	; 240
      008167 F2                    2199 	.db #0xf2	; 242
      008168 F3                    2200 	.db #0xf3	; 243
      008169 F4                    2201 	.db #0xf4	; 244
      00816A F5                    2202 	.db #0xf5	; 245
      00816B F7                    2203 	.db #0xf7	; 247
      00816C F8                    2204 	.db #0xf8	; 248
      00816D F9                    2205 	.db #0xf9	; 249
      00816E FA                    2206 	.db #0xfa	; 250
      00816F FA                    2207 	.db #0xfa	; 250
      008170 FB                    2208 	.db #0xfb	; 251
      008171 FC                    2209 	.db #0xfc	; 252
      008172 FD                    2210 	.db #0xfd	; 253
      008173 FD                    2211 	.db #0xfd	; 253
      008174 FE                    2212 	.db #0xfe	; 254
      008175 FE                    2213 	.db #0xfe	; 254
      008176 FE                    2214 	.db #0xfe	; 254
      008177 FF                    2215 	.db #0xff	; 255
      008178 FF                    2216 	.db #0xff	; 255
      008179 FF                    2217 	.db #0xff	; 255
      00817A FF                    2218 	.db #0xff	; 255
      00817B FF                    2219 	.db #0xff	; 255
      00817C FF                    2220 	.db #0xff	; 255
      00817D FE                    2221 	.db #0xfe	; 254
      00817E FE                    2222 	.db #0xfe	; 254
      00817F FE                    2223 	.db #0xfe	; 254
      008180 FD                    2224 	.db #0xfd	; 253
      008181 FD                    2225 	.db #0xfd	; 253
      008182 FC                    2226 	.db #0xfc	; 252
      008183 FB                    2227 	.db #0xfb	; 251
      008184 FB                    2228 	.db #0xfb	; 251
      008185 FA                    2229 	.db #0xfa	; 250
      008186 F9                    2230 	.db #0xf9	; 249
      008187 F8                    2231 	.db #0xf8	; 248
      008188 F7                    2232 	.db #0xf7	; 247
      008189 F6                    2233 	.db #0xf6	; 246
      00818A F5                    2234 	.db #0xf5	; 245
      00818B F3                    2235 	.db #0xf3	; 243
      00818C F2                    2236 	.db #0xf2	; 242
      00818D F1                    2237 	.db #0xf1	; 241
      00818E EF                    2238 	.db #0xef	; 239
      00818F EE                    2239 	.db #0xee	; 238
                           000100  2240 Fmotor$__xinit_ui8_sin_table$0_0$0 == .
      008190                       2241 __xinit__ui8_sin_table:
      008190 00                    2242 	.db #0x00	; 0
      008191 03                    2243 	.db #0x03	; 3
      008192 06                    2244 	.db #0x06	; 6
      008193 09                    2245 	.db #0x09	; 9
      008194 0C                    2246 	.db #0x0c	; 12
      008195 10                    2247 	.db #0x10	; 16
      008196 13                    2248 	.db #0x13	; 19
      008197 16                    2249 	.db #0x16	; 22
      008198 19                    2250 	.db #0x19	; 25
      008199 1C                    2251 	.db #0x1c	; 28
      00819A 1F                    2252 	.db #0x1f	; 31
      00819B 22                    2253 	.db #0x22	; 34
      00819C 25                    2254 	.db #0x25	; 37
      00819D 28                    2255 	.db #0x28	; 40
      00819E 2B                    2256 	.db #0x2b	; 43
      00819F 2E                    2257 	.db #0x2e	; 46
      0081A0 31                    2258 	.db #0x31	; 49	'1'
      0081A1 34                    2259 	.db #0x34	; 52	'4'
      0081A2 36                    2260 	.db #0x36	; 54	'6'
      0081A3 39                    2261 	.db #0x39	; 57	'9'
      0081A4 3C                    2262 	.db #0x3c	; 60
      0081A5 3F                    2263 	.db #0x3f	; 63
      0081A6 42                    2264 	.db #0x42	; 66	'B'
      0081A7 44                    2265 	.db #0x44	; 68	'D'
      0081A8 47                    2266 	.db #0x47	; 71	'G'
      0081A9 49                    2267 	.db #0x49	; 73	'I'
      0081AA 4C                    2268 	.db #0x4c	; 76	'L'
      0081AB 4E                    2269 	.db #0x4e	; 78	'N'
      0081AC 51                    2270 	.db #0x51	; 81	'Q'
      0081AD 53                    2271 	.db #0x53	; 83	'S'
      0081AE 56                    2272 	.db #0x56	; 86	'V'
      0081AF 58                    2273 	.db #0x58	; 88	'X'
      0081B0 5A                    2274 	.db #0x5a	; 90	'Z'
      0081B1 5C                    2275 	.db #0x5c	; 92
      0081B2 5F                    2276 	.db #0x5f	; 95
      0081B3 61                    2277 	.db #0x61	; 97	'a'
      0081B4 63                    2278 	.db #0x63	; 99	'c'
      0081B5 65                    2279 	.db #0x65	; 101	'e'
      0081B6 66                    2280 	.db #0x66	; 102	'f'
      0081B7 68                    2281 	.db #0x68	; 104	'h'
      0081B8 6A                    2282 	.db #0x6a	; 106	'j'
      0081B9 6C                    2283 	.db #0x6c	; 108	'l'
      0081BA 6D                    2284 	.db #0x6d	; 109	'm'
      0081BB 6F                    2285 	.db #0x6f	; 111	'o'
      0081BC 71                    2286 	.db #0x71	; 113	'q'
      0081BD 72                    2287 	.db #0x72	; 114	'r'
      0081BE 73                    2288 	.db #0x73	; 115	's'
      0081BF 75                    2289 	.db #0x75	; 117	'u'
      0081C0 76                    2290 	.db #0x76	; 118	'v'
      0081C1 77                    2291 	.db #0x77	; 119	'w'
      0081C2 78                    2292 	.db #0x78	; 120	'x'
      0081C3 79                    2293 	.db #0x79	; 121	'y'
      0081C4 7A                    2294 	.db #0x7a	; 122	'z'
      0081C5 7B                    2295 	.db #0x7b	; 123
      0081C6 7C                    2296 	.db #0x7c	; 124
      0081C7 7D                    2297 	.db #0x7d	; 125
      0081C8 7D                    2298 	.db #0x7d	; 125
      0081C9 7E                    2299 	.db #0x7e	; 126
      0081CA 7E                    2300 	.db #0x7e	; 126
      0081CB 7F                    2301 	.db #0x7f	; 127
                           00013C  2302 Fmotor$__xinit_ui16_PWM_cycles_counter$0_0$0 == .
      0081CC                       2303 __xinit__ui16_PWM_cycles_counter:
      0081CC 00 01                 2304 	.dw #0x0001
                           00013E  2305 Fmotor$__xinit_ui16_PWM_cycles_counter_6$0_0$0 == .
      0081CE                       2306 __xinit__ui16_PWM_cycles_counter_6:
      0081CE 00 01                 2307 	.dw #0x0001
                           000140  2308 Fmotor$__xinit_ui16_PWM_cycles_counter_total$0_0$0 == .
      0081D0                       2309 __xinit__ui16_PWM_cycles_counter_total:
      0081D0 FF FF                 2310 	.dw #0xffff
                           000142  2311 Fmotor$__xinit_ui16_max_motor_speed_erps$0_0$0 == .
      0081D2                       2312 __xinit__ui16_max_motor_speed_erps:
      0081D2 02 08                 2313 	.dw #0x0208
                           000144  2314 Fmotor$__xinit_ui16_motor_speed_erps$0_0$0 == .
      0081D4                       2315 __xinit__ui16_motor_speed_erps:
      0081D4 00 00                 2316 	.dw #0x0000
                           000146  2317 Fmotor$__xinit_ui8_svm_table_index$0_0$0 == .
      0081D6                       2318 __xinit__ui8_svm_table_index:
      0081D6 00                    2319 	.db #0x00	; 0
                           000147  2320 Fmotor$__xinit_ui8_motor_rotor_absolute_angle$0_0$0 == .
      0081D7                       2321 __xinit__ui8_motor_rotor_absolute_angle:
      0081D7 00                    2322 	.db #0x00	; 0
                           000148  2323 Fmotor$__xinit_ui8_motor_rotor_angle$0_0$0 == .
      0081D8                       2324 __xinit__ui8_motor_rotor_angle:
      0081D8 00                    2325 	.db #0x00	; 0
                           000149  2326 Fmotor$__xinit_ui8_foc_angle$0_0$0 == .
      0081D9                       2327 __xinit__ui8_foc_angle:
      0081D9 00                    2328 	.db #0x00	; 0
                           00014A  2329 Fmotor$__xinit_ui8_interpolation_angle$0_0$0 == .
      0081DA                       2330 __xinit__ui8_interpolation_angle:
      0081DA 00                    2331 	.db #0x00	; 0
                           00014B  2332 Fmotor$__xinit_ui16_foc_angle_accumulated$0_0$0 == .
      0081DB                       2333 __xinit__ui16_foc_angle_accumulated:
      0081DB 00 00                 2334 	.dw #0x0000
                           00014D  2335 Fmotor$__xinit_ui8_motor_commutation_type$0_0$0 == .
      0081DD                       2336 __xinit__ui8_motor_commutation_type:
      0081DD 01                    2337 	.db #0x01	; 1
                           00014E  2338 Fmotor$__xinit_ui8_motor_controller_state$0_0$0 == .
      0081DE                       2339 __xinit__ui8_motor_controller_state:
      0081DE 01                    2340 	.db #0x01	; 1
                           00014F  2341 Fmotor$__xinit_ui8_hall_sensors_state$0_0$0 == .
      0081DF                       2342 __xinit__ui8_hall_sensors_state:
      0081DF 00                    2343 	.db #0x00	; 0
                           000150  2344 Fmotor$__xinit_ui8_hall_sensors_state_last$0_0$0 == .
      0081E0                       2345 __xinit__ui8_hall_sensors_state_last:
      0081E0 00                    2346 	.db #0x00	; 0
                           000151  2347 Fmotor$__xinit_ui8_half_erps_flag$0_0$0 == .
      0081E1                       2348 __xinit__ui8_half_erps_flag:
      0081E1 00                    2349 	.db #0x00	; 0
                           000152  2350 Fmotor$__xinit_ui8_duty_cycle$0_0$0 == .
      0081E2                       2351 __xinit__ui8_duty_cycle:
      0081E2 00                    2352 	.db #0x00	; 0
                           000153  2353 Fmotor$__xinit_ui8_duty_cycle_target$0_0$0 == .
      0081E3                       2354 __xinit__ui8_duty_cycle_target:
      0081E3 00                    2355 	.db #0x00	; 0
                           000154  2356 Fmotor$__xinit_ui16_duty_cycle_ramp_up_inverse_step$0_0$0 == .
      0081E4                       2357 __xinit__ui16_duty_cycle_ramp_up_inverse_step:
      0081E4 00 00                 2358 	.dw #0x0000
                           000156  2359 Fmotor$__xinit_ui16_duty_cycle_ramp_down_inverse_step$0_0$0 == .
      0081E6                       2360 __xinit__ui16_duty_cycle_ramp_down_inverse_step:
      0081E6 00 00                 2361 	.dw #0x0000
                           000158  2362 Fmotor$__xinit_ui16_counter_duty_cycle_ramp_up$0_0$0 == .
      0081E8                       2363 __xinit__ui16_counter_duty_cycle_ramp_up:
      0081E8 00 00                 2364 	.dw #0x0000
                           00015A  2365 Fmotor$__xinit_ui16_counter_duty_cycle_ramp_down$0_0$0 == .
      0081EA                       2366 __xinit__ui16_counter_duty_cycle_ramp_down:
      0081EA 00 00                 2367 	.dw #0x0000
                           00015C  2368 Fmotor$__xinit_ui8_phase_a_voltage$0_0$0 == .
      0081EC                       2369 __xinit__ui8_phase_a_voltage:
      0081EC 00                    2370 	.db #0x00	; 0
                           00015D  2371 Fmotor$__xinit_ui8_phase_b_voltage$0_0$0 == .
      0081ED                       2372 __xinit__ui8_phase_b_voltage:
      0081ED 00                    2373 	.db #0x00	; 0
                           00015E  2374 Fmotor$__xinit_ui8_phase_c_voltage$0_0$0 == .
      0081EE                       2375 __xinit__ui8_phase_c_voltage:
      0081EE 00                    2376 	.db #0x00	; 0
                           00015F  2377 Fmotor$__xinit_ui16_counter_adc_battery_current_ramp_up$0_0$0 == .
      0081EF                       2378 __xinit__ui16_counter_adc_battery_current_ramp_up:
      0081EF 00 00                 2379 	.dw #0x0000
                           000161  2380 Fmotor$__xinit_ui8_controller_adc_battery_max_current$0_0$0 == .
      0081F1                       2381 __xinit__ui8_controller_adc_battery_max_current:
      0081F1 00                    2382 	.db #0x00	; 0
                           000162  2383 Fmotor$__xinit_ui16_counter_adc_motor_current_ramp_up$0_0$0 == .
      0081F2                       2384 __xinit__ui16_counter_adc_motor_current_ramp_up:
      0081F2 00 00                 2385 	.dw #0x0000
                           000164  2386 Fmotor$__xinit_ui8_controller_adc_motor_max_current$0_0$0 == .
      0081F4                       2387 __xinit__ui8_controller_adc_motor_max_current:
      0081F4 00                    2388 	.db #0x00	; 0
                           000165  2389 Fmotor$__xinit_ui8_first_time_run_flag$0_0$0 == .
      0081F5                       2390 __xinit__ui8_first_time_run_flag:
      0081F5 01                    2391 	.db #0x01	; 1
                           000166  2392 Fmotor$__xinit_ui8_adc_battery_voltage_cut_off$0_0$0 == .
      0081F6                       2393 __xinit__ui8_adc_battery_voltage_cut_off:
      0081F6 FF                    2394 	.db #0xff	; 255
                           000167  2395 Fmotor$__xinit_ui16_adc_battery_voltage_accumulated$0_0$0 == .
      0081F7                       2396 __xinit__ui16_adc_battery_voltage_accumulated:
      0081F7 00 00                 2397 	.dw #0x0000
                           000169  2398 Fmotor$__xinit_ui16_adc_battery_voltage_filtered_10b$0_0$0 == .
      0081F9                       2399 __xinit__ui16_adc_battery_voltage_filtered_10b:
      0081F9 00 00                 2400 	.dw #0x0000
                           00016B  2401 Fmotor$__xinit_ui16_adc_battery_current_accumulated$0_0$0 == .
      0081FB                       2402 __xinit__ui16_adc_battery_current_accumulated:
      0081FB 00 00                 2403 	.dw #0x0000
                           00016D  2404 Fmotor$__xinit_ui8_adc_battery_current_filtered_10b$0_0$0 == .
      0081FD                       2405 __xinit__ui8_adc_battery_current_filtered_10b:
      0081FD 00                    2406 	.db #0x00	; 0
                           00016E  2407 Fmotor$__xinit_ui16_adc_battery_current_10b$0_0$0 == .
      0081FE                       2408 __xinit__ui16_adc_battery_current_10b:
      0081FE 00 00                 2409 	.dw #0x0000
                           000170  2410 Fmotor$__xinit_ui8_adc_battery_current$0_0$0 == .
      008200                       2411 __xinit__ui8_adc_battery_current:
      008200 00                    2412 	.db #0x00	; 0
                           000171  2413 Fmotor$__xinit_ui8_adc_motor_phase_current$0_0$0 == .
      008201                       2414 __xinit__ui8_adc_motor_phase_current:
      008201 00                    2415 	.db #0x00	; 0
                           000172  2416 Fmotor$__xinit_ui8_current_controller_counter$0_0$0 == .
      008202                       2417 __xinit__ui8_current_controller_counter:
      008202 00                    2418 	.db #0x00	; 0
                           000173  2419 Fmotor$__xinit_ui8_current_controller_flag$0_0$0 == .
      008203                       2420 __xinit__ui8_current_controller_flag:
      008203 00                    2421 	.db #0x00	; 0
                           000174  2422 Fmotor$__xinit_ui8_adc_target_motor_phase_max_current$0_0$0 == .
      008204                       2423 __xinit__ui8_adc_target_motor_phase_max_current:
      008204 00                    2424 	.db #0x00	; 0
                           000175  2425 Fmotor$__xinit_ui8_adc_motor_phase_current_offset$0_0$0 == .
      008205                       2426 __xinit__ui8_adc_motor_phase_current_offset:
      008205 00                    2427 	.db #0x00	; 0
                           000176  2428 Fmotor$__xinit_ui8_pas_state$0_0$0 == .
      008206                       2429 __xinit__ui8_pas_state:
      008206 00                    2430 	.db #0x00	; 0
                           000177  2431 Fmotor$__xinit_ui8_pas_state_old$0_0$0 == .
      008207                       2432 __xinit__ui8_pas_state_old:
      008207 00                    2433 	.db #0x00	; 0
                           000178  2434 Fmotor$__xinit_ui8_pas_after_first_pulse$0_0$0 == .
      008208                       2435 __xinit__ui8_pas_after_first_pulse:
      008208 00                    2436 	.db #0x00	; 0
                           000179  2437 Fmotor$__xinit_ui16_pas_counter$0_0$0 == .
      008209                       2438 __xinit__ui16_pas_counter:
      008209 24 9F                 2439 	.dw #0x249f
                           00017B  2440 Fmotor$__xinit_ui16_torque_sensor_throttle_processed_value$0_0$0 == .
      00820B                       2441 __xinit__ui16_torque_sensor_throttle_processed_value:
      00820B 00 00                 2442 	.dw #0x0000
                           00017D  2443 Fmotor$__xinit_ui8_torque_sensor_pas_signal_change_counter$0_0$0 == .
      00820D                       2444 __xinit__ui8_torque_sensor_pas_signal_change_counter:
      00820D 00                    2445 	.db #0x00	; 0
                           00017E  2446 Fmotor$__xinit_ui16_torque_sensor_throttle_max_value$0_0$0 == .
      00820E                       2447 __xinit__ui16_torque_sensor_throttle_max_value:
      00820E 00 00                 2448 	.dw #0x0000
                           000180  2449 Fmotor$__xinit_ui16_torque_sensor_throttle_value$0_0$0 == .
      008210                       2450 __xinit__ui16_torque_sensor_throttle_value:
      008210 00 00                 2451 	.dw #0x0000
                           000182  2452 Fmotor$__xinit_ui8_wheel_speed_sensor_state$0_0$0 == .
      008212                       2453 __xinit__ui8_wheel_speed_sensor_state:
      008212 01                    2454 	.db #0x01	; 1
                           000183  2455 Fmotor$__xinit_ui8_wheel_speed_sensor_state_old$0_0$0 == .
      008213                       2456 __xinit__ui8_wheel_speed_sensor_state_old:
      008213 01                    2457 	.db #0x01	; 1
                           000184  2458 Fmotor$__xinit_ui16_wheel_speed_sensor_counter$0_0$0 == .
      008214                       2459 __xinit__ui16_wheel_speed_sensor_counter:
      008214 00 00                 2460 	.dw #0x0000
                           000186  2461 Fmotor$__xinit_ui8_wheel_speed_sensor_change_counter$0_0$0 == .
      008216                       2462 __xinit__ui8_wheel_speed_sensor_change_counter:
      008216 00                    2463 	.db #0x00	; 0
                                   2464 	.area CABS (ABS)
