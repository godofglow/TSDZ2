                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module ebike_app
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UART2_IRQHandler
                                     12 	.globl _putchar
                                     13 	.globl _enable_pwm
                                     14 	.globl _disable_pwm
                                     15 	.globl _motor_set_adc_battery_voltage_cut_off
                                     16 	.globl _motor_get_adc_battery_voltage_filtered_10b
                                     17 	.globl _motor_get_adc_battery_current_filtered_10b
                                     18 	.globl _ui16_motor_get_motor_speed_erps
                                     19 	.globl _motor_set_pwm_duty_cycle_target
                                     20 	.globl _ui8_limit_max
                                     21 	.globl _ui8_min
                                     22 	.globl _map
                                     23 	.globl _ui16_adc_read_throttle_10b
                                     24 	.globl _UART2_GetFlagStatus
                                     25 	.globl _UART2_ReceiveData8
                                     26 	.globl _FLASH_ReadByte
                                     27 	.globl _ui8_emtb_flag
                                     28 	.globl _ui8_boost_flag
                                     29 	.globl _ui8_mode_flag
                                     30 	.globl _ui8_lights_flag
                                     31 	.globl _ui8_default_flag
                                     32 	.globl _ui8_walk_assist_pwm_step
                                     33 	.globl _ui8_walk_assist_pwm
                                     34 	.globl _ui8_walk_assist_start
                                     35 	.globl _ui8_walk_assist_current_per_cent
                                     36 	.globl _ui8_walk_assist
                                     37 	.globl _ui8_walk_assist_flag
                                     38 	.globl _ui8_enable_walk_assist
                                     39 	.globl _ui8_display_ready_flag
                                     40 	.globl _ui8_walk_assist_delay_off_flag
                                     41 	.globl _ui16_walk_assist_delay_off
                                     42 	.globl _ui8_lights_counter
                                     43 	.globl _ui8_startup_counter
                                     44 	.globl _ui8_timer_counter
                                     45 	.globl _ui16_soft_start_time
                                     46 	.globl _f_soft_start_factor_old
                                     47 	.globl _f_soft_start_factor
                                     48 	.globl _ui8_battery_state_of_charge
                                     49 	.globl _ui16_battery_current_accumulated_x5
                                     50 	.globl _ui32_battery_voltage_accumulated_x10000
                                     51 	.globl _ui8_adc_motor_target_current
                                     52 	.globl _ui8_adc_battery_target_current
                                     53 	.globl _ui8_overtemperature
                                     54 	.globl _ui16_adc_motor_temperatured_accumulated
                                     55 	.globl _ui8_rtst_counter
                                     56 	.globl _ui8_tstr_state_machine
                                     57 	.globl _ui8_state_machine
                                     58 	.globl _ui8_byte_received
                                     59 	.globl _ui8_tx_counter
                                     60 	.globl _ui8_rx_counter
                                     61 	.globl _ui8_received_package_flag
                                     62 	.globl _ui16_oem_wheel_speed
                                     63 	.globl _f_oem_wheel_speed
                                     64 	.globl _ui32_wheel_speed_sensor_tick_counter
                                     65 	.globl _f_wheel_speed_x10
                                     66 	.globl _ui16_wheel_speed_sensor_pwm_cycles_ticks
                                     67 	.globl _ui16_startup_boost_fade_variable_step_amount_x256
                                     68 	.globl _ui16_startup_boost_fade_variable_x256
                                     69 	.globl _ui8_startup_boost_fade_steps
                                     70 	.globl _ui8_startup_boost_timer
                                     71 	.globl _ui8_startup_boost_state_machine
                                     72 	.globl _ui8_startup_boost_fade_enable
                                     73 	.globl _ui8_startup_boost_enable
                                     74 	.globl _ui16_max_pedal_power_x_emtb_motor_pull_factor
                                     75 	.globl _ui16_pedal_torque_x_cadence
                                     76 	.globl _ui16_pedal_torque_x10
                                     77 	.globl _ui8_pas_backwards_cadence_rpm
                                     78 	.globl _ui8_pas_cadence_rpm
                                     79 	.globl _ui8_assist_level
                                     80 	.globl _ui8_pas_direction
                                     81 	.globl _ui8_pedaling_direction
                                     82 	.globl _ui16_pas_pwm_cycles_ticks
                                     83 	.globl _ui8_system_state
                                     84 	.globl _f_torque_assist_ratio
                                     85 	.globl _ui8_adc_motor_current_max
                                     86 	.globl _ui8_adc_battery_current_max
                                     87 	.globl _ui8_adc_target_motor_max_current
                                     88 	.globl _ui8_adc_target_battery_max_current
                                     89 	.globl _ui8_ebike_app_state
                                     90 	.globl _ui8_adc_battery_current_offset
                                     91 	.globl _ui8_adc_torque_sensor_max_value
                                     92 	.globl _ui8_adc_torque_sensor_min_value
                                     93 	.globl _f_pedal_torque_sensor_unit
                                     94 	.globl _ui8_torque_sensor_raw
                                     95 	.globl _ui8_torque_sensor
                                     96 	.globl _ui8_throttle
                                     97 	.globl _configuration_variables
                                     98 	.globl _ui8_tx_buffer
                                     99 	.globl _ui8_rx_buffer
                                    100 	.globl _ebike_app_init
                                    101 	.globl _ebike_app_controller
                                    102 	.globl _get_configuration_variables
                                    103 ;--------------------------------------------------------
                                    104 ; ram data
                                    105 ;--------------------------------------------------------
                                    106 	.area DATA
                           000000   107 G$ui8_rx_buffer$0_0$0==.
      000005                        108 _ui8_rx_buffer::
      000005                        109 	.ds 7
                           000007   110 G$ui8_tx_buffer$0_0$0==.
      00000C                        111 _ui8_tx_buffer::
      00000C                        112 	.ds 9
                           000010   113 G$configuration_variables$0_0$0==.
      000015                        114 _configuration_variables::
      000015                        115 	.ds 64
                           000050   116 Lebike_app.ebike_control_motor$ui32_vartemp$1_0$430==.
      000055                        117 _ebike_control_motor_ui32_vartemp_65536_430:
      000055                        118 	.ds 4
                           000054   119 Lebike_app.uart_send_package$ui8_overtemperature_counter$3_0$522==.
      000059                        120 _uart_send_package_ui8_overtemperature_counter_196608_522:
      000059                        121 	.ds 1
                           000055   122 Lebike_app.check_system$ui8_motor_blocked_counter$1_0$621==.
      00005A                        123 _check_system_ui8_motor_blocked_counter_65536_621:
      00005A                        124 	.ds 1
                           000056   125 Lebike_app.check_system$ui8_motor_blocked_reset_counter$1_0$621==.
      00005B                        126 _check_system_ui8_motor_blocked_reset_counter_65536_621:
      00005B                        127 	.ds 1
                                    128 ;--------------------------------------------------------
                                    129 ; ram data
                                    130 ;--------------------------------------------------------
                                    131 	.area INITIALIZED
                           000000   132 G$ui8_throttle$0_0$0==.
      0001E6                        133 _ui8_throttle::
      0001E6                        134 	.ds 1
                           000001   135 G$ui8_torque_sensor$0_0$0==.
      0001E7                        136 _ui8_torque_sensor::
      0001E7                        137 	.ds 1
                           000002   138 G$ui8_torque_sensor_raw$0_0$0==.
      0001E8                        139 _ui8_torque_sensor_raw::
      0001E8                        140 	.ds 1
                           000003   141 G$f_pedal_torque_sensor_unit$0_0$0==.
      0001E9                        142 _f_pedal_torque_sensor_unit::
      0001E9                        143 	.ds 4
                           000007   144 G$ui8_adc_torque_sensor_min_value$0_0$0==.
      0001ED                        145 _ui8_adc_torque_sensor_min_value::
      0001ED                        146 	.ds 1
                           000008   147 G$ui8_adc_torque_sensor_max_value$0_0$0==.
      0001EE                        148 _ui8_adc_torque_sensor_max_value::
      0001EE                        149 	.ds 1
                           000009   150 G$ui8_adc_battery_current_offset$0_0$0==.
      0001EF                        151 _ui8_adc_battery_current_offset::
      0001EF                        152 	.ds 1
                           00000A   153 G$ui8_ebike_app_state$0_0$0==.
      0001F0                        154 _ui8_ebike_app_state::
      0001F0                        155 	.ds 1
                           00000B   156 G$ui8_adc_target_battery_max_current$0_0$0==.
      0001F1                        157 _ui8_adc_target_battery_max_current::
      0001F1                        158 	.ds 1
                           00000C   159 G$ui8_adc_target_motor_max_current$0_0$0==.
      0001F2                        160 _ui8_adc_target_motor_max_current::
      0001F2                        161 	.ds 1
                           00000D   162 G$ui8_adc_battery_current_max$0_0$0==.
      0001F3                        163 _ui8_adc_battery_current_max::
      0001F3                        164 	.ds 1
                           00000E   165 G$ui8_adc_motor_current_max$0_0$0==.
      0001F4                        166 _ui8_adc_motor_current_max::
      0001F4                        167 	.ds 1
                           00000F   168 G$f_torque_assist_ratio$0_0$0==.
      0001F5                        169 _f_torque_assist_ratio::
      0001F5                        170 	.ds 4
                           000013   171 G$ui8_system_state$0_0$0==.
      0001F9                        172 _ui8_system_state::
      0001F9                        173 	.ds 1
                           000014   174 G$ui16_pas_pwm_cycles_ticks$0_0$0==.
      0001FA                        175 _ui16_pas_pwm_cycles_ticks::
      0001FA                        176 	.ds 2
                           000016   177 Febike_app$ui8_motor_enabled$0_0$0==.
      0001FC                        178 _ui8_motor_enabled:
      0001FC                        179 	.ds 1
                           000017   180 G$ui8_pedaling_direction$0_0$0==.
      0001FD                        181 _ui8_pedaling_direction::
      0001FD                        182 	.ds 1
                           000018   183 G$ui8_pas_direction$0_0$0==.
      0001FE                        184 _ui8_pas_direction::
      0001FE                        185 	.ds 1
                           000019   186 G$ui8_assist_level$0_0$0==.
      0001FF                        187 _ui8_assist_level::
      0001FF                        188 	.ds 1
                           00001A   189 G$ui8_pas_cadence_rpm$0_0$0==.
      000200                        190 _ui8_pas_cadence_rpm::
      000200                        191 	.ds 1
                           00001B   192 G$ui8_pas_backwards_cadence_rpm$0_0$0==.
      000201                        193 _ui8_pas_backwards_cadence_rpm::
      000201                        194 	.ds 1
                           00001C   195 G$ui16_pedal_torque_x10$0_0$0==.
      000202                        196 _ui16_pedal_torque_x10::
      000202                        197 	.ds 2
                           00001E   198 G$ui16_pedal_torque_x_cadence$0_0$0==.
      000204                        199 _ui16_pedal_torque_x_cadence::
      000204                        200 	.ds 2
                           000020   201 G$ui16_max_pedal_power_x_emtb_motor_pull_factor$0_0$0==.
      000206                        202 _ui16_max_pedal_power_x_emtb_motor_pull_factor::
      000206                        203 	.ds 2
                           000022   204 G$ui8_startup_boost_enable$0_0$0==.
      000208                        205 _ui8_startup_boost_enable::
      000208                        206 	.ds 1
                           000023   207 G$ui8_startup_boost_fade_enable$0_0$0==.
      000209                        208 _ui8_startup_boost_fade_enable::
      000209                        209 	.ds 1
                           000024   210 G$ui8_startup_boost_state_machine$0_0$0==.
      00020A                        211 _ui8_startup_boost_state_machine::
      00020A                        212 	.ds 1
                           000025   213 G$ui8_startup_boost_timer$0_0$0==.
      00020B                        214 _ui8_startup_boost_timer::
      00020B                        215 	.ds 1
                           000026   216 G$ui8_startup_boost_fade_steps$0_0$0==.
      00020C                        217 _ui8_startup_boost_fade_steps::
      00020C                        218 	.ds 1
                           000027   219 G$ui16_startup_boost_fade_variable_x256$0_0$0==.
      00020D                        220 _ui16_startup_boost_fade_variable_x256::
      00020D                        221 	.ds 2
                           000029   222 G$ui16_startup_boost_fade_variable_step_amount_x256$0_0$0==.
      00020F                        223 _ui16_startup_boost_fade_variable_step_amount_x256::
      00020F                        224 	.ds 2
                           00002B   225 G$ui16_wheel_speed_sensor_pwm_cycles_ticks$0_0$0==.
      000211                        226 _ui16_wheel_speed_sensor_pwm_cycles_ticks::
      000211                        227 	.ds 2
                           00002D   228 G$f_wheel_speed_x10$0_0$0==.
      000213                        229 _f_wheel_speed_x10::
      000213                        230 	.ds 4
                           000031   231 Febike_app$ui16_wheel_speed_x10$0_0$0==.
      000217                        232 _ui16_wheel_speed_x10:
      000217                        233 	.ds 2
                           000033   234 G$ui32_wheel_speed_sensor_tick_counter$0_0$0==.
      000219                        235 _ui32_wheel_speed_sensor_tick_counter::
      000219                        236 	.ds 4
                           000037   237 G$f_oem_wheel_speed$0_0$0==.
      00021D                        238 _f_oem_wheel_speed::
      00021D                        239 	.ds 4
                           00003B   240 G$ui16_oem_wheel_speed$0_0$0==.
      000221                        241 _ui16_oem_wheel_speed::
      000221                        242 	.ds 2
                           00003D   243 G$ui8_received_package_flag$0_0$0==.
      000223                        244 _ui8_received_package_flag::
      000223                        245 	.ds 1
                           00003E   246 G$ui8_rx_counter$0_0$0==.
      000224                        247 _ui8_rx_counter::
      000224                        248 	.ds 1
                           00003F   249 G$ui8_tx_counter$0_0$0==.
      000225                        250 _ui8_tx_counter::
      000225                        251 	.ds 1
                           000040   252 G$ui8_byte_received$0_0$0==.
      000226                        253 _ui8_byte_received::
      000226                        254 	.ds 1
                           000041   255 G$ui8_state_machine$0_0$0==.
      000227                        256 _ui8_state_machine::
      000227                        257 	.ds 1
                           000042   258 G$ui8_tstr_state_machine$0_0$0==.
      000228                        259 _ui8_tstr_state_machine::
      000228                        260 	.ds 1
                           000043   261 G$ui8_rtst_counter$0_0$0==.
      000229                        262 _ui8_rtst_counter::
      000229                        263 	.ds 1
                           000044   264 G$ui16_adc_motor_temperatured_accumulated$0_0$0==.
      00022A                        265 _ui16_adc_motor_temperatured_accumulated::
      00022A                        266 	.ds 2
                           000046   267 G$ui8_overtemperature$0_0$0==.
      00022C                        268 _ui8_overtemperature::
      00022C                        269 	.ds 1
                           000047   270 G$ui8_adc_battery_target_current$0_0$0==.
      00022D                        271 _ui8_adc_battery_target_current::
      00022D                        272 	.ds 1
                           000048   273 G$ui8_adc_motor_target_current$0_0$0==.
      00022E                        274 _ui8_adc_motor_target_current::
      00022E                        275 	.ds 1
                           000049   276 Febike_app$ui8_brake_is_set$0_0$0==.
      00022F                        277 _ui8_brake_is_set:
      00022F                        278 	.ds 1
                           00004A   279 G$ui32_battery_voltage_accumulated_x10000$0_0$0==.
      000230                        280 _ui32_battery_voltage_accumulated_x10000::
      000230                        281 	.ds 4
                           00004E   282 G$ui16_battery_current_accumulated_x5$0_0$0==.
      000234                        283 _ui16_battery_current_accumulated_x5::
      000234                        284 	.ds 2
                           000050   285 G$ui8_battery_state_of_charge$0_0$0==.
      000236                        286 _ui8_battery_state_of_charge::
      000236                        287 	.ds 1
                           000051   288 G$f_soft_start_factor$0_0$0==.
      000237                        289 _f_soft_start_factor::
      000237                        290 	.ds 4
                           000055   291 G$f_soft_start_factor_old$0_0$0==.
      00023B                        292 _f_soft_start_factor_old::
      00023B                        293 	.ds 4
                           000059   294 G$ui16_soft_start_time$0_0$0==.
      00023F                        295 _ui16_soft_start_time::
      00023F                        296 	.ds 2
                           00005B   297 G$ui8_timer_counter$0_0$0==.
      000241                        298 _ui8_timer_counter::
      000241                        299 	.ds 1
                           00005C   300 G$ui8_startup_counter$0_0$0==.
      000242                        301 _ui8_startup_counter::
      000242                        302 	.ds 1
                           00005D   303 G$ui8_lights_counter$0_0$0==.
      000243                        304 _ui8_lights_counter::
      000243                        305 	.ds 1
                           00005E   306 G$ui16_walk_assist_delay_off$0_0$0==.
      000244                        307 _ui16_walk_assist_delay_off::
      000244                        308 	.ds 2
                           000060   309 G$ui8_walk_assist_delay_off_flag$0_0$0==.
      000246                        310 _ui8_walk_assist_delay_off_flag::
      000246                        311 	.ds 1
                           000061   312 G$ui8_display_ready_flag$0_0$0==.
      000247                        313 _ui8_display_ready_flag::
      000247                        314 	.ds 1
                           000062   315 G$ui8_enable_walk_assist$0_0$0==.
      000248                        316 _ui8_enable_walk_assist::
      000248                        317 	.ds 1
                           000063   318 G$ui8_walk_assist_flag$0_0$0==.
      000249                        319 _ui8_walk_assist_flag::
      000249                        320 	.ds 1
                           000064   321 G$ui8_walk_assist$0_0$0==.
      00024A                        322 _ui8_walk_assist::
      00024A                        323 	.ds 1
                           000065   324 G$ui8_walk_assist_current_per_cent$0_0$0==.
      00024B                        325 _ui8_walk_assist_current_per_cent::
      00024B                        326 	.ds 1
                           000066   327 G$ui8_walk_assist_start$0_0$0==.
      00024C                        328 _ui8_walk_assist_start::
      00024C                        329 	.ds 1
                           000067   330 G$ui8_walk_assist_pwm$0_0$0==.
      00024D                        331 _ui8_walk_assist_pwm::
      00024D                        332 	.ds 1
                           000068   333 G$ui8_walk_assist_pwm_step$0_0$0==.
      00024E                        334 _ui8_walk_assist_pwm_step::
      00024E                        335 	.ds 1
                           000069   336 G$ui8_default_flag$0_0$0==.
      00024F                        337 _ui8_default_flag::
      00024F                        338 	.ds 1
                           00006A   339 G$ui8_lights_flag$0_0$0==.
      000250                        340 _ui8_lights_flag::
      000250                        341 	.ds 1
                           00006B   342 G$ui8_mode_flag$0_0$0==.
      000251                        343 _ui8_mode_flag::
      000251                        344 	.ds 1
                           00006C   345 G$ui8_boost_flag$0_0$0==.
      000252                        346 _ui8_boost_flag::
      000252                        347 	.ds 1
                           00006D   348 G$ui8_emtb_flag$0_0$0==.
      000253                        349 _ui8_emtb_flag::
      000253                        350 	.ds 1
                                    351 ;--------------------------------------------------------
                                    352 ; absolute external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area DABS (ABS)
                                    355 
                                    356 ; default segment ordering for linker
                                    357 	.area HOME
                                    358 	.area GSINIT
                                    359 	.area GSFINAL
                                    360 	.area CONST
                                    361 	.area INITIALIZER
                                    362 	.area CODE
                                    363 
                                    364 ;--------------------------------------------------------
                                    365 ; global & static initialisations
                                    366 ;--------------------------------------------------------
                                    367 	.area HOME
                                    368 	.area GSINIT
                                    369 	.area GSFINAL
                                    370 	.area GSINIT
                           000000   371 	Febike_app$uart_send_package$0$0 ==.
                           000000   372 	C$ebike_app.c$1408$2_0$517 ==.
                                    373 ;	ebike_app.c: 1408: static uint8_t ui8_overtemperature_counter = 0;
      00807D 72 5F 00 59      [ 1]  374 	clr	_uart_send_package_ui8_overtemperature_counter_196608_522+0
                                    375 ;--------------------------------------------------------
                                    376 ; Home
                                    377 ;--------------------------------------------------------
                                    378 	.area HOME
                                    379 	.area HOME
                                    380 ;--------------------------------------------------------
                                    381 ; code
                                    382 ;--------------------------------------------------------
                                    383 	.area CODE
                           000000   384 	G$ebike_app_init$0$0 ==.
                           000000   385 	C$ebike_app.c$147$0_0$426 ==.
                                    386 ;	ebike_app.c: 147: void ebike_app_init(void)
                                    387 ;	-----------------------------------------
                                    388 ;	 function ebike_app_init
                                    389 ;	-----------------------------------------
      00B441                        390 _ebike_app_init:
                           000000   391 	C$ebike_app.c$151$1_0$426 ==.
                                    392 ;	ebike_app.c: 151: ebike_app_set_battery_max_current(ADC_BATTERY_CURRENT_MAX_LIMIT);
      00B441 4B 12            [ 1]  393 	push	#0x12
      00B443 CD BF A4         [ 4]  394 	call	_ebike_app_set_battery_max_current
      00B446 84               [ 1]  395 	pop	a
                           000006   396 	C$ebike_app.c$152$1_0$426 ==.
                                    397 ;	ebike_app.c: 152: ebike_app_set_motor_max_current(MOTOR_PHASE_CURRENT_MAX_AMP);
      00B447 4B 1E            [ 1]  398 	push	#0x1e
      00B449 CD BF BE         [ 4]  399 	call	_ebike_app_set_motor_max_current
      00B44C 84               [ 1]  400 	pop	a
                           00000C   401 	C$ebike_app.c$153$1_0$426 ==.
                                    402 ;	ebike_app.c: 153: ebike_app_set_torque_assist_ratio();
      00B44D CD BF D8         [ 4]  403 	call	_ebike_app_set_torque_assist_ratio
                           00000F   404 	C$ebike_app.c$156$1_0$426 ==.
                                    405 ;	ebike_app.c: 156: configuration_variables.ui8_function_code = NO_FUNCTION;
      00B450 35 00 00 39      [ 1]  406 	mov	_configuration_variables+36, #0x00
                           000013   407 	C$ebike_app.c$158$1_0$426 ==.
                                    408 ;	ebike_app.c: 158: if(configuration_variables.ui8_emtb_enabled_on_startup)
      00B454 C6 00 20         [ 1]  409 	ld	a, _configuration_variables+11
      00B457 27 06            [ 1]  410 	jreq	00102$
                           000018   411 	C$ebike_app.c$159$1_0$426 ==.
                                    412 ;	ebike_app.c: 159: configuration_variables.ui8_emtb_mode = 1;
      00B459 35 01 00 1F      [ 1]  413 	mov	_configuration_variables+10, #0x01
      00B45D 20 04            [ 2]  414 	jra	00103$
      00B45F                        415 00102$:
                           00001E   416 	C$ebike_app.c$161$1_0$426 ==.
                                    417 ;	ebike_app.c: 161: configuration_variables.ui8_emtb_mode = 0;
      00B45F 35 00 00 1F      [ 1]  418 	mov	_configuration_variables+10, #0x00
      00B463                        419 00103$:
                           000022   420 	C$ebike_app.c$163$1_0$426 ==.
                                    421 ;	ebike_app.c: 163: if(configuration_variables.ui8_street_enabled_on_startup)
      00B463 C6 00 34         [ 1]  422 	ld	a, _configuration_variables+31
      00B466 27 06            [ 1]  423 	jreq	00105$
                           000027   424 	C$ebike_app.c$165$1_0$426 ==.
                                    425 ;	ebike_app.c: 165: configuration_variables.ui8_offroad_mode = 0;
      00B468 35 00 00 1E      [ 1]  426 	mov	_configuration_variables+9, #0x00
      00B46C 20 04            [ 2]  427 	jra	00107$
      00B46E                        428 00105$:
                           00002D   429 	C$ebike_app.c$168$1_0$426 ==.
                                    430 ;	ebike_app.c: 168: configuration_variables.ui8_offroad_mode = 1;
      00B46E 35 01 00 1E      [ 1]  431 	mov	_configuration_variables+9, #0x01
      00B472                        432 00107$:
                           000031   433 	C$ebike_app.c$169$1_0$426 ==.
                                    434 ;	ebike_app.c: 169: }
                           000031   435 	C$ebike_app.c$169$1_0$426 ==.
                           000031   436 	XG$ebike_app_init$0$0 ==.
      00B472 81               [ 4]  437 	ret
                           000032   438 	G$ebike_app_controller$0$0 ==.
                           000032   439 	C$ebike_app.c$174$1_0$428 ==.
                                    440 ;	ebike_app.c: 174: void ebike_app_controller(void)
                                    441 ;	-----------------------------------------
                                    442 ;	 function ebike_app_controller
                                    443 ;	-----------------------------------------
      00B473                        444 _ebike_app_controller:
                           000032   445 	C$ebike_app.c$176$1_0$428 ==.
                                    446 ;	ebike_app.c: 176: check_battery_soc();
      00B473 CD B9 E3         [ 4]  447 	call	_check_battery_soc
                           000035   448 	C$ebike_app.c$177$1_0$428 ==.
                                    449 ;	ebike_app.c: 177: walk_assist_read();
      00B476 CD C5 F1         [ 4]  450 	call	_walk_assist_read
                           000038   451 	C$ebike_app.c$178$1_0$428 ==.
                                    452 ;	ebike_app.c: 178: throttle_read();
      00B479 CD C5 EC         [ 4]  453 	call	_throttle_read
                           00003B   454 	C$ebike_app.c$179$1_0$428 ==.
                                    455 ;	ebike_app.c: 179: torque_sensor_read();
      00B47C CD C5 5C         [ 4]  456 	call	_torque_sensor_read
                           00003E   457 	C$ebike_app.c$180$1_0$428 ==.
                                    458 ;	ebike_app.c: 180: read_pas_cadence();
      00B47F CD C4 C9         [ 4]  459 	call	_read_pas_cadence
                           000041   460 	C$ebike_app.c$181$1_0$428 ==.
                                    461 ;	ebike_app.c: 181: calc_pedal_force_and_torque();
      00B482 CD C0 15         [ 4]  462 	call	_calc_pedal_force_and_torque
                           000044   463 	C$ebike_app.c$182$1_0$428 ==.
                                    464 ;	ebike_app.c: 182: calc_wheel_speed();
      00B485 CD C0 2D         [ 4]  465 	call	_calc_wheel_speed
                           000047   466 	C$ebike_app.c$183$1_0$428 ==.
                                    467 ;	ebike_app.c: 183: calc_motor_temperature();
      00B488 CD C1 2D         [ 4]  468 	call	_calc_motor_temperature
                           00004A   469 	C$ebike_app.c$184$1_0$428 ==.
                                    470 ;	ebike_app.c: 184: check_system();
      00B48B CD C6 A2         [ 4]  471 	call	_check_system
                           00004D   472 	C$ebike_app.c$185$1_0$428 ==.
                                    473 ;	ebike_app.c: 185: ebike_control_motor();
      00B48E CD B4 98         [ 4]  474 	call	_ebike_control_motor
                           000050   475 	C$ebike_app.c$186$1_0$428 ==.
                                    476 ;	ebike_app.c: 186: uart_receive_package();
      00B491 CD BB C8         [ 4]  477 	call	_uart_receive_package
                           000053   478 	C$ebike_app.c$187$1_0$428 ==.
                                    479 ;	ebike_app.c: 187: uart_send_package();
      00B494 CD BE 15         [ 4]  480 	call	_uart_send_package
                           000056   481 	C$ebike_app.c$191$1_0$428 ==.
                                    482 ;	ebike_app.c: 191: }
                           000056   483 	C$ebike_app.c$191$1_0$428 ==.
                           000056   484 	XG$ebike_app_controller$0$0 ==.
      00B497 81               [ 4]  485 	ret
                           000057   486 	Febike_app$ebike_control_motor$0$0 ==.
                           000057   487 	C$ebike_app.c$304$1_0$430 ==.
                                    488 ;	ebike_app.c: 304: static void ebike_control_motor(void)
                                    489 ;	-----------------------------------------
                                    490 ;	 function ebike_control_motor
                                    491 ;	-----------------------------------------
      00B498                        492 _ebike_control_motor:
      00B498 52 13            [ 2]  493 	sub	sp, #19
                           000059   494 	C$ebike_app.c$311$2_0$430 ==.
                                    495 ;	ebike_app.c: 311: uint8_t ui8_adc_max_motor_current = 0;
      00B49A 0F 01            [ 1]  496 	clr	(0x01, sp)
                           00005B   497 	C$ebike_app.c$313$2_0$430 ==.
                                    498 ;	ebike_app.c: 313: uint8_t ui8_boost_enabled_and_applied = 0;
      00B49C 0F 04            [ 1]  499 	clr	(0x04, sp)
                           00005D   500 	C$ebike_app.c$315$2_0$430 ==.
                                    501 ;	ebike_app.c: 315: uint8_t ui8_adc_max_motor_current_boost_state = 0;
      00B49E 0F 03            [ 1]  502 	clr	(0x03, sp)
                           00005F   503 	C$ebike_app.c$318$2_0$430 ==.
                                    504 ;	ebike_app.c: 318: float f_temp = 0;
      00B4A0 5F               [ 1]  505 	clrw	x
      00B4A1 1F 07            [ 2]  506 	ldw	(0x07, sp), x
      00B4A3 1F 05            [ 2]  507 	ldw	(0x05, sp), x
                           000064   508 	C$ebike_app.c$323$1_0$430 ==.
                                    509 ;	ebike_app.c: 323: uint16_t ui16_battery_voltage_filtered = calc_filtered_battery_voltage();
      00B4A5 CD C1 75         [ 4]  510 	call	_calc_filtered_battery_voltage
      00B4A8 1F 09            [ 2]  511 	ldw	(0x09, sp), x
                           000069   512 	C$ebike_app.c$329$1_0$430 ==.
                                    513 ;	ebike_app.c: 329: ui8_brake_is_set = 0;
      00B4AA 72 5F 02 2F      [ 1]  514 	clr	_ui8_brake_is_set+0
                           00006D   515 	C$ebike_app.c$333$1_0$430 ==.
                                    516 ;	ebike_app.c: 333: ui8_adc_max_motor_current_boost_state = 0;
      00B4AE 0F 03            [ 1]  517 	clr	(0x03, sp)
                           00006F   518 	C$ebike_app.c$336$1_0$430 ==.
                                    519 ;	ebike_app.c: 336: ui8_adc_battery_target_current = ui8_adc_battery_current_max;
      00B4B0 55 01 F3 02 2D   [ 1]  520 	mov	_ui8_adc_battery_target_current+0, _ui8_adc_battery_current_max+0
                           000074   521 	C$ebike_app.c$337$1_0$430 ==.
                                    522 ;	ebike_app.c: 337: ui8_adc_motor_target_current = 0;
      00B4B5 72 5F 02 2E      [ 1]  523 	clr	_ui8_adc_motor_target_current+0
                           000078   524 	C$ebike_app.c$340$1_0$430 ==.
                                    525 ;	ebike_app.c: 340: ui8_adc_max_battery_power_current = 0;
      00B4B9 0F 0B            [ 1]  526 	clr	(0x0b, sp)
                           00007A   527 	C$ebike_app.c$343$1_0$430 ==.
                                    528 ;	ebike_app.c: 343: if(ui16_battery_voltage_filtered > 15)
      00B4BB 1E 09            [ 2]  529 	ldw	x, (0x09, sp)
      00B4BD A3 00 0F         [ 2]  530 	cpw	x, #0x000f
      00B4C0 22 03            [ 1]  531 	jrugt	00385$
      00B4C2 CC B7 E7         [ 2]  532 	jp	00132$
      00B4C5                        533 00385$:
                           000084   534 	C$ebike_app.c$348$2_0$431 ==.
                                    535 ;	ebike_app.c: 348: if(configuration_variables.ui8_startup_motor_power_boost_assist_level > 0)
      00B4C5 C6 00 27         [ 1]  536 	ld	a, _configuration_variables+18
      00B4C8 26 03            [ 1]  537 	jrne	00386$
      00B4CA CC B5 6F         [ 2]  538 	jp	00102$
      00B4CD                        539 00386$:
                           00008C   540 	C$ebike_app.c$350$3_0$432 ==.
                                    541 ;	ebike_app.c: 350: ui32_vartemp = (uint32_t)((float) configuration_variables.ui8_startup_motor_power_boost_assist_level * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio);
      00B4CD C6 00 27         [ 1]  542 	ld	a, _configuration_variables+18
      00B4D0 88               [ 1]  543 	push	a
      00B4D1 CD DA DC         [ 4]  544 	call	___uchar2fs
      00B4D4 84               [ 1]  545 	pop	a
      00B4D5 1F 0E            [ 2]  546 	ldw	(0x0e, sp), x
      00B4D7 90 89            [ 2]  547 	pushw	y
      00B4D9 3B 02 03         [ 1]  548 	push	_ui16_pedal_torque_x10+1
      00B4DC 3B 02 02         [ 1]  549 	push	_ui16_pedal_torque_x10+0
      00B4DF CD D8 3B         [ 4]  550 	call	___uint2fs
      00B4E2 5B 02            [ 2]  551 	addw	sp, #2
      00B4E4 1F 14            [ 2]  552 	ldw	(0x14, sp), x
      00B4E6 17 12            [ 2]  553 	ldw	(0x12, sp), y
      00B4E8 90 85            [ 2]  554 	popw	y
      00B4EA 1E 12            [ 2]  555 	ldw	x, (0x12, sp)
      00B4EC 89               [ 2]  556 	pushw	x
      00B4ED 1E 12            [ 2]  557 	ldw	x, (0x12, sp)
      00B4EF 89               [ 2]  558 	pushw	x
      00B4F0 1E 12            [ 2]  559 	ldw	x, (0x12, sp)
      00B4F2 89               [ 2]  560 	pushw	x
      00B4F3 90 89            [ 2]  561 	pushw	y
      00B4F5 CD D2 04         [ 4]  562 	call	___fsmul
      00B4F8 5B 08            [ 2]  563 	addw	sp, #8
      00B4FA 3B 01 F8         [ 1]  564 	push	_f_torque_assist_ratio+3
      00B4FD 3B 01 F7         [ 1]  565 	push	_f_torque_assist_ratio+2
      00B500 3B 01 F6         [ 1]  566 	push	_f_torque_assist_ratio+1
      00B503 3B 01 F5         [ 1]  567 	push	_f_torque_assist_ratio+0
      00B506 89               [ 2]  568 	pushw	x
      00B507 90 89            [ 2]  569 	pushw	y
      00B509 CD DA 4B         [ 4]  570 	call	___fsdiv
      00B50C 5B 08            [ 2]  571 	addw	sp, #8
      00B50E 89               [ 2]  572 	pushw	x
      00B50F 90 89            [ 2]  573 	pushw	y
      00B511 CD D4 0A         [ 4]  574 	call	___fs2ulong
      00B514 5B 04            [ 2]  575 	addw	sp, #4
      00B516 CF 00 57         [ 2]  576 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
      00B519 90 CF 00 55      [ 2]  577 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
                           0000DC   578 	C$ebike_app.c$351$1_0$430 ==.
                                    579 ;	ebike_app.c: 351: ui32_vartemp /= 100;
      00B51D 4B 64            [ 1]  580 	push	#0x64
      00B51F 5F               [ 1]  581 	clrw	x
      00B520 89               [ 2]  582 	pushw	x
      00B521 4B 00            [ 1]  583 	push	#0x00
      00B523 3B 00 58         [ 1]  584 	push	_ebike_control_motor_ui32_vartemp_65536_430+3
      00B526 3B 00 57         [ 1]  585 	push	_ebike_control_motor_ui32_vartemp_65536_430+2
      00B529 3B 00 56         [ 1]  586 	push	_ebike_control_motor_ui32_vartemp_65536_430+1
      00B52C 3B 00 55         [ 1]  587 	push	_ebike_control_motor_ui32_vartemp_65536_430+0
      00B52F CD D7 E1         [ 4]  588 	call	__divulong
      00B532 5B 08            [ 2]  589 	addw	sp, #8
      00B534 CF 00 57         [ 2]  590 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
      00B537 90 CF 00 55      [ 2]  591 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
                           0000FA   592 	C$ebike_app.c$355$1_0$430 ==.
                                    593 ;	ebike_app.c: 355: ui32_vartemp = ui32_vartemp * 13;
      00B53B 3B 00 58         [ 1]  594 	push	_ebike_control_motor_ui32_vartemp_65536_430+3
      00B53E 3B 00 57         [ 1]  595 	push	_ebike_control_motor_ui32_vartemp_65536_430+2
      00B541 3B 00 56         [ 1]  596 	push	_ebike_control_motor_ui32_vartemp_65536_430+1
      00B544 3B 00 55         [ 1]  597 	push	_ebike_control_motor_ui32_vartemp_65536_430+0
      00B547 4B 0D            [ 1]  598 	push	#0x0d
      00B549 5F               [ 1]  599 	clrw	x
      00B54A 89               [ 2]  600 	pushw	x
      00B54B 4B 00            [ 1]  601 	push	#0x00
      00B54D CD DB 08         [ 4]  602 	call	__mullong
      00B550 5B 08            [ 2]  603 	addw	sp, #8
      00B552 CF 00 57         [ 2]  604 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
      00B555 90 CF 00 55      [ 2]  605 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
                           000118   606 	C$ebike_app.c$356$1_0$430 ==.
                                    607 ;	ebike_app.c: 356: ui8_adc_max_motor_current_boost_state = ui32_vartemp >> 3;
      00B559 CE 00 57         [ 2]  608 	ldw	x, _ebike_control_motor_ui32_vartemp_65536_430+2
      00B55C 54               [ 2]  609 	srlw	x
      00B55D 54               [ 2]  610 	srlw	x
      00B55E 54               [ 2]  611 	srlw	x
      00B55F 41               [ 1]  612 	exg	a, xl
      00B560 6B 03            [ 1]  613 	ld	(0x03, sp), a
      00B562 41               [ 1]  614 	exg	a, xl
                           000122   615 	C$ebike_app.c$357$3_0$432 ==.
                                    616 ;	ebike_app.c: 357: ui8_limit_max(&ui8_adc_max_motor_current_boost_state, 255);
      00B563 96               [ 1]  617 	ldw	x, sp
      00B564 1C 00 03         [ 2]  618 	addw	x, #3
      00B567 4B FF            [ 1]  619 	push	#0xff
      00B569 89               [ 2]  620 	pushw	x
      00B56A CD C8 93         [ 4]  621 	call	_ui8_limit_max
      00B56D 5B 03            [ 2]  622 	addw	sp, #3
      00B56F                        623 00102$:
                           00012E   624 	C$ebike_app.c$400$2_0$431 ==.
                                    625 ;	ebike_app.c: 400: if(configuration_variables.ui8_assist_level_factor_x10 > 0)
      00B56F C6 00 15         [ 1]  626 	ld	a, _configuration_variables+0
      00B572 26 03            [ 1]  627 	jrne	00387$
      00B574 CC B7 B2         [ 2]  628 	jp	00128$
      00B577                        629 00387$:
                           000136   630 	C$ebike_app.c$403$3_0$434 ==.
                                    631 ;	ebike_app.c: 403: if(configuration_variables.ui8_startup_motor_power_boost_feature_enabled == 0)
      00B577 C6 00 26         [ 1]  632 	ld	a, _configuration_variables+17
      00B57A 6B 13            [ 1]  633 	ld	(0x13, sp), a
      00B57C 27 03            [ 1]  634 	jreq	00388$
      00B57E CC B6 5A         [ 2]  635 	jp	00116$
      00B581                        636 00388$:
                           000140   637 	C$ebike_app.c$407$4_0$435 ==.
                                    638 ;	ebike_app.c: 407: if(ui8_pas_cadence_rpm == 0)
      00B581 72 5D 02 00      [ 1]  639 	tnz	_ui8_pas_cadence_rpm+0
      00B585 26 12            [ 1]  640 	jrne	00104$
                           000146   641 	C$ebike_app.c$410$5_0$436 ==.
                                    642 ;	ebike_app.c: 410: f_soft_start_factor = 0.0;
      00B587 5F               [ 1]  643 	clrw	x
      00B588 CF 02 39         [ 2]  644 	ldw	_f_soft_start_factor+2, x
      00B58B CF 02 37         [ 2]  645 	ldw	_f_soft_start_factor+0, x
                           00014D   646 	C$ebike_app.c$413$5_0$436 ==.
                                    647 ;	ebike_app.c: 413: f_soft_start_factor_old = 0.0;
      00B58E 5F               [ 1]  648 	clrw	x
      00B58F CF 02 3D         [ 2]  649 	ldw	_f_soft_start_factor_old+2, x
      00B592 CF 02 3B         [ 2]  650 	ldw	_f_soft_start_factor_old+0, x
                           000154   651 	C$ebike_app.c$416$5_0$436 ==.
                                    652 ;	ebike_app.c: 416: ui16_soft_start_time = 0;
      00B595 5F               [ 1]  653 	clrw	x
      00B596 CF 02 3F         [ 2]  654 	ldw	_ui16_soft_start_time+0, x
      00B599                        655 00104$:
                           000158   656 	C$ebike_app.c$436$1_0$430 ==.
                                    657 ;	ebike_app.c: 436: if(f_soft_start_factor < 1.0)	
      00B599 5F               [ 1]  658 	clrw	x
      00B59A 89               [ 2]  659 	pushw	x
      00B59B 4B 80            [ 1]  660 	push	#0x80
      00B59D 4B 3F            [ 1]  661 	push	#0x3f
      00B59F 3B 02 3A         [ 1]  662 	push	_f_soft_start_factor+3
      00B5A2 3B 02 39         [ 1]  663 	push	_f_soft_start_factor+2
      00B5A5 3B 02 38         [ 1]  664 	push	_f_soft_start_factor+1
      00B5A8 3B 02 37         [ 1]  665 	push	_f_soft_start_factor+0
      00B5AB CD D4 69         [ 4]  666 	call	___fslt
      00B5AE 5B 08            [ 2]  667 	addw	sp, #8
      00B5B0 4D               [ 1]  668 	tnz	a
      00B5B1 26 03            [ 1]  669 	jrne	00390$
      00B5B3 CC B6 64         [ 2]  670 	jp	00117$
      00B5B6                        671 00390$:
                           000175   672 	C$ebike_app.c$439$5_0$437 ==.
                                    673 ;	ebike_app.c: 439: if(ui16_soft_start_time++ < SOFT_START_TIMEOUT)
      00B5B6 90 CE 02 3F      [ 2]  674 	ldw	y, _ui16_soft_start_time+0
      00B5BA 93               [ 1]  675 	ldw	x, y
      00B5BB 5C               [ 1]  676 	incw	x
      00B5BC CF 02 3F         [ 2]  677 	ldw	_ui16_soft_start_time+0, x
      00B5BF 90 A3 00 05      [ 2]  678 	cpw	y, #0x0005
      00B5C3 25 03            [ 1]  679 	jrc	00391$
      00B5C5 CC B6 4E         [ 2]  680 	jp	00111$
      00B5C8                        681 00391$:
                           000187   682 	C$ebike_app.c$442$6_0$438 ==.
                                    683 ;	ebike_app.c: 442: if(ui8_pas_cadence_rpm > THRESHOLD_SOFT_START_PAS_CADENCE)
      00B5C8 C6 02 00         [ 1]  684 	ld	a, _ui8_pas_cadence_rpm+0
      00B5CB A1 01            [ 1]  685 	cp	a, #0x01
      00B5CD 23 28            [ 2]  686 	jrule	00106$
                           00018E   687 	C$ebike_app.c$462$7_0$439 ==.
                                    688 ;	ebike_app.c: 462: f_temp = 1.000;
      00B5CF 5F               [ 1]  689 	clrw	x
      00B5D0 1F 07            [ 2]  690 	ldw	(0x07, sp), x
      00B5D2 AE 3F 80         [ 2]  691 	ldw	x, #0x3f80
      00B5D5 1F 05            [ 2]  692 	ldw	(0x05, sp), x
                           000196   693 	C$ebike_app.c$464$1_0$430 ==.
                                    694 ;	ebike_app.c: 464: f_soft_start_factor += f_k_soft_start_factor;
      00B5D7 4B CD            [ 1]  695 	push	#0xcd
      00B5D9 4B CC            [ 1]  696 	push	#0xcc
      00B5DB 4B 4C            [ 1]  697 	push	#0x4c
      00B5DD 4B 3E            [ 1]  698 	push	#0x3e
      00B5DF 3B 02 3A         [ 1]  699 	push	_f_soft_start_factor+3
      00B5E2 3B 02 39         [ 1]  700 	push	_f_soft_start_factor+2
      00B5E5 3B 02 38         [ 1]  701 	push	_f_soft_start_factor+1
      00B5E8 3B 02 37         [ 1]  702 	push	_f_soft_start_factor+0
      00B5EB CD D5 2D         [ 4]  703 	call	___fsadd
      00B5EE 5B 08            [ 2]  704 	addw	sp, #8
      00B5F0 CF 02 39         [ 2]  705 	ldw	_f_soft_start_factor+2, x
      00B5F3 90 CF 02 37      [ 2]  706 	ldw	_f_soft_start_factor+0, y
      00B5F7                        707 00106$:
                           0001B6   708 	C$ebike_app.c$469$6_0$438 ==.
                                    709 ;	ebike_app.c: 469: if(configuration_variables.ui8_assist_level_factor_x10 > INITIAL_SOFT_START_ASSIST_VALUE)
      00B5F7 C6 00 15         [ 1]  710 	ld	a, _configuration_variables+0
      00B5FA A1 02            [ 1]  711 	cp	a, #0x02
      00B5FC 23 44            [ 2]  712 	jrule	00108$
                           0001BD   713 	C$ebike_app.c$472$7_0$440 ==.
                                    714 ;	ebike_app.c: 472: f_temp = (float) (configuration_variables.ui8_assist_level_factor_x10 - INITIAL_SOFT_START_ASSIST_VALUE) * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio;
      00B5FE C6 00 15         [ 1]  715 	ld	a, _configuration_variables+0
      00B601 5F               [ 1]  716 	clrw	x
      00B602 97               [ 1]  717 	ld	xl, a
      00B603 5A               [ 2]  718 	decw	x
      00B604 5A               [ 2]  719 	decw	x
      00B605 89               [ 2]  720 	pushw	x
      00B606 CD D7 D0         [ 4]  721 	call	___sint2fs
      00B609 5B 02            [ 2]  722 	addw	sp, #2
      00B60B 1F 12            [ 2]  723 	ldw	(0x12, sp), x
      00B60D 17 10            [ 2]  724 	ldw	(0x10, sp), y
      00B60F 3B 02 03         [ 1]  725 	push	_ui16_pedal_torque_x10+1
      00B612 3B 02 02         [ 1]  726 	push	_ui16_pedal_torque_x10+0
      00B615 CD D8 3B         [ 4]  727 	call	___uint2fs
      00B618 5B 02            [ 2]  728 	addw	sp, #2
      00B61A 89               [ 2]  729 	pushw	x
      00B61B 90 89            [ 2]  730 	pushw	y
      00B61D 1E 16            [ 2]  731 	ldw	x, (0x16, sp)
      00B61F 89               [ 2]  732 	pushw	x
      00B620 1E 16            [ 2]  733 	ldw	x, (0x16, sp)
      00B622 89               [ 2]  734 	pushw	x
      00B623 CD D2 04         [ 4]  735 	call	___fsmul
      00B626 5B 08            [ 2]  736 	addw	sp, #8
      00B628 3B 01 F8         [ 1]  737 	push	_f_torque_assist_ratio+3
      00B62B 3B 01 F7         [ 1]  738 	push	_f_torque_assist_ratio+2
      00B62E 3B 01 F6         [ 1]  739 	push	_f_torque_assist_ratio+1
      00B631 3B 01 F5         [ 1]  740 	push	_f_torque_assist_ratio+0
      00B634 89               [ 2]  741 	pushw	x
      00B635 90 89            [ 2]  742 	pushw	y
      00B637 CD DA 4B         [ 4]  743 	call	___fsdiv
      00B63A 5B 08            [ 2]  744 	addw	sp, #8
      00B63C 1F 07            [ 2]  745 	ldw	(0x07, sp), x
      00B63E 17 05            [ 2]  746 	ldw	(0x05, sp), y
      00B640 20 22            [ 2]  747 	jra	00117$
      00B642                        748 00108$:
                           000201   749 	C$ebike_app.c$477$7_0$441 ==.
                                    750 ;	ebike_app.c: 477: f_soft_start_factor = 1.0;
      00B642 5F               [ 1]  751 	clrw	x
      00B643 CF 02 39         [ 2]  752 	ldw	_f_soft_start_factor+2, x
      00B646 AE 3F 80         [ 2]  753 	ldw	x, #0x3f80
      00B649 CF 02 37         [ 2]  754 	ldw	_f_soft_start_factor+0, x
      00B64C 20 16            [ 2]  755 	jra	00117$
      00B64E                        756 00111$:
                           00020D   757 	C$ebike_app.c$483$6_0$442 ==.
                                    758 ;	ebike_app.c: 483: f_soft_start_factor = 1.0;
      00B64E 5F               [ 1]  759 	clrw	x
      00B64F CF 02 39         [ 2]  760 	ldw	_f_soft_start_factor+2, x
      00B652 AE 3F 80         [ 2]  761 	ldw	x, #0x3f80
      00B655 CF 02 37         [ 2]  762 	ldw	_f_soft_start_factor+0, x
      00B658 20 0A            [ 2]  763 	jra	00117$
      00B65A                        764 00116$:
                           000219   765 	C$ebike_app.c$491$4_0$443 ==.
                                    766 ;	ebike_app.c: 491: f_soft_start_factor = 1.0;				
      00B65A 5F               [ 1]  767 	clrw	x
      00B65B CF 02 39         [ 2]  768 	ldw	_f_soft_start_factor+2, x
      00B65E AE 3F 80         [ 2]  769 	ldw	x, #0x3f80
      00B661 CF 02 37         [ 2]  770 	ldw	_f_soft_start_factor+0, x
      00B664                        771 00117$:
                           000223   772 	C$ebike_app.c$495$1_0$430 ==.
                                    773 ;	ebike_app.c: 495: if(f_soft_start_factor < 1.0)
      00B664 5F               [ 1]  774 	clrw	x
      00B665 89               [ 2]  775 	pushw	x
      00B666 4B 80            [ 1]  776 	push	#0x80
      00B668 4B 3F            [ 1]  777 	push	#0x3f
      00B66A 3B 02 3A         [ 1]  778 	push	_f_soft_start_factor+3
      00B66D 3B 02 39         [ 1]  779 	push	_f_soft_start_factor+2
      00B670 3B 02 38         [ 1]  780 	push	_f_soft_start_factor+1
      00B673 3B 02 37         [ 1]  781 	push	_f_soft_start_factor+0
      00B676 CD D4 69         [ 4]  782 	call	___fslt
      00B679 5B 08            [ 2]  783 	addw	sp, #8
      00B67B 6B 13            [ 1]  784 	ld	(0x13, sp), a
      00B67D 27 5C            [ 1]  785 	jreq	00119$
                           00023E   786 	C$ebike_app.c$497$1_0$430 ==.
                                    787 ;	ebike_app.c: 497: f_pedal_torque_x_assist_level_factor = f_temp * f_soft_start_factor;
      00B67F 3B 02 3A         [ 1]  788 	push	_f_soft_start_factor+3
      00B682 3B 02 39         [ 1]  789 	push	_f_soft_start_factor+2
      00B685 3B 02 38         [ 1]  790 	push	_f_soft_start_factor+1
      00B688 3B 02 37         [ 1]  791 	push	_f_soft_start_factor+0
      00B68B 1E 0B            [ 2]  792 	ldw	x, (0x0b, sp)
      00B68D 89               [ 2]  793 	pushw	x
      00B68E 1E 0B            [ 2]  794 	ldw	x, (0x0b, sp)
      00B690 89               [ 2]  795 	pushw	x
      00B691 CD D2 04         [ 4]  796 	call	___fsmul
      00B694 5B 08            [ 2]  797 	addw	sp, #8
      00B696 1F 12            [ 2]  798 	ldw	(0x12, sp), x
      00B698 17 10            [ 2]  799 	ldw	(0x10, sp), y
                           000259   800 	C$ebike_app.c$498$1_0$430 ==.
                                    801 ;	ebike_app.c: 498: f_temp = (float) INITIAL_SOFT_START_ASSIST_VALUE * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio;
      00B69A 3B 02 03         [ 1]  802 	push	_ui16_pedal_torque_x10+1
      00B69D 3B 02 02         [ 1]  803 	push	_ui16_pedal_torque_x10+0
      00B6A0 CD D8 3B         [ 4]  804 	call	___uint2fs
      00B6A3 5B 02            [ 2]  805 	addw	sp, #2
      00B6A5 89               [ 2]  806 	pushw	x
      00B6A6 90 89            [ 2]  807 	pushw	y
      00B6A8 5F               [ 1]  808 	clrw	x
      00B6A9 89               [ 2]  809 	pushw	x
      00B6AA 4B 00            [ 1]  810 	push	#0x00
      00B6AC 4B 40            [ 1]  811 	push	#0x40
      00B6AE CD D2 04         [ 4]  812 	call	___fsmul
      00B6B1 5B 08            [ 2]  813 	addw	sp, #8
      00B6B3 3B 01 F8         [ 1]  814 	push	_f_torque_assist_ratio+3
      00B6B6 3B 01 F7         [ 1]  815 	push	_f_torque_assist_ratio+2
      00B6B9 3B 01 F6         [ 1]  816 	push	_f_torque_assist_ratio+1
      00B6BC 3B 01 F5         [ 1]  817 	push	_f_torque_assist_ratio+0
      00B6BF 89               [ 2]  818 	pushw	x
      00B6C0 90 89            [ 2]  819 	pushw	y
      00B6C2 CD DA 4B         [ 4]  820 	call	___fsdiv
      00B6C5 5B 08            [ 2]  821 	addw	sp, #8
                           000286   822 	C$ebike_app.c$499$1_0$430 ==.
                                    823 ;	ebike_app.c: 499: f_pedal_torque_x_assist_level_factor += f_temp; 
      00B6C7 89               [ 2]  824 	pushw	x
      00B6C8 90 89            [ 2]  825 	pushw	y
      00B6CA 1E 16            [ 2]  826 	ldw	x, (0x16, sp)
      00B6CC 89               [ 2]  827 	pushw	x
      00B6CD 1E 16            [ 2]  828 	ldw	x, (0x16, sp)
      00B6CF 89               [ 2]  829 	pushw	x
      00B6D0 CD D5 2D         [ 4]  830 	call	___fsadd
      00B6D3 5B 08            [ 2]  831 	addw	sp, #8
      00B6D5 1F 12            [ 2]  832 	ldw	(0x12, sp), x
      00B6D7 17 10            [ 2]  833 	ldw	(0x10, sp), y
      00B6D9 20 3D            [ 2]  834 	jra	00120$
      00B6DB                        835 00119$:
                           00029A   836 	C$ebike_app.c$503$4_0$445 ==.
                                    837 ;	ebike_app.c: 503: f_pedal_torque_x_assist_level_factor = (float) configuration_variables.ui8_assist_level_factor_x10 * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio;
      00B6DB C6 00 15         [ 1]  838 	ld	a, _configuration_variables+0
      00B6DE 88               [ 1]  839 	push	a
      00B6DF CD DA DC         [ 4]  840 	call	___uchar2fs
      00B6E2 84               [ 1]  841 	pop	a
      00B6E3 1F 12            [ 2]  842 	ldw	(0x12, sp), x
      00B6E5 17 10            [ 2]  843 	ldw	(0x10, sp), y
      00B6E7 3B 02 03         [ 1]  844 	push	_ui16_pedal_torque_x10+1
      00B6EA 3B 02 02         [ 1]  845 	push	_ui16_pedal_torque_x10+0
      00B6ED CD D8 3B         [ 4]  846 	call	___uint2fs
      00B6F0 5B 02            [ 2]  847 	addw	sp, #2
      00B6F2 89               [ 2]  848 	pushw	x
      00B6F3 90 89            [ 2]  849 	pushw	y
      00B6F5 1E 16            [ 2]  850 	ldw	x, (0x16, sp)
      00B6F7 89               [ 2]  851 	pushw	x
      00B6F8 1E 16            [ 2]  852 	ldw	x, (0x16, sp)
      00B6FA 89               [ 2]  853 	pushw	x
      00B6FB CD D2 04         [ 4]  854 	call	___fsmul
      00B6FE 5B 08            [ 2]  855 	addw	sp, #8
      00B700 3B 01 F8         [ 1]  856 	push	_f_torque_assist_ratio+3
      00B703 3B 01 F7         [ 1]  857 	push	_f_torque_assist_ratio+2
      00B706 3B 01 F6         [ 1]  858 	push	_f_torque_assist_ratio+1
      00B709 3B 01 F5         [ 1]  859 	push	_f_torque_assist_ratio+0
      00B70C 89               [ 2]  860 	pushw	x
      00B70D 90 89            [ 2]  861 	pushw	y
      00B70F CD DA 4B         [ 4]  862 	call	___fsdiv
      00B712 5B 08            [ 2]  863 	addw	sp, #8
      00B714 1F 12            [ 2]  864 	ldw	(0x12, sp), x
      00B716 17 10            [ 2]  865 	ldw	(0x10, sp), y
      00B718                        866 00120$:
                           0002D7   867 	C$ebike_app.c$507$3_0$434 ==.
                                    868 ;	ebike_app.c: 507: if(configuration_variables.ui8_motor_assistance_startup_without_pedal_rotation == 0)
      00B718 C6 00 23         [ 1]  869 	ld	a, _configuration_variables+14
      00B71B 26 14            [ 1]  870 	jrne	00125$
                           0002DC   871 	C$ebike_app.c$509$1_0$430 ==.
                                    872 ;	ebike_app.c: 509: ui32_vartemp = (uint32_t) f_pedal_torque_x_assist_level_factor;
      00B71D 1E 12            [ 2]  873 	ldw	x, (0x12, sp)
      00B71F 89               [ 2]  874 	pushw	x
      00B720 1E 12            [ 2]  875 	ldw	x, (0x12, sp)
      00B722 89               [ 2]  876 	pushw	x
      00B723 CD D4 0A         [ 4]  877 	call	___fs2ulong
      00B726 5B 04            [ 2]  878 	addw	sp, #4
      00B728 CF 00 57         [ 2]  879 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
      00B72B 90 CF 00 55      [ 2]  880 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
      00B72F 20 2C            [ 2]  881 	jra	00126$
      00B731                        882 00125$:
                           0002F0   883 	C$ebike_app.c$513$4_0$447 ==.
                                    884 ;	ebike_app.c: 513: if(ui8_pas_cadence_rpm)
      00B731 72 5D 02 00      [ 1]  885 	tnz	_ui8_pas_cadence_rpm+0
      00B735 27 14            [ 1]  886 	jreq	00122$
                           0002F6   887 	C$ebike_app.c$515$1_0$430 ==.
                                    888 ;	ebike_app.c: 515: ui32_vartemp = (uint32_t) f_pedal_torque_x_assist_level_factor;
      00B737 1E 12            [ 2]  889 	ldw	x, (0x12, sp)
      00B739 89               [ 2]  890 	pushw	x
      00B73A 1E 12            [ 2]  891 	ldw	x, (0x12, sp)
      00B73C 89               [ 2]  892 	pushw	x
      00B73D CD D4 0A         [ 4]  893 	call	___fs2ulong
      00B740 5B 04            [ 2]  894 	addw	sp, #4
      00B742 CF 00 57         [ 2]  895 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
      00B745 90 CF 00 55      [ 2]  896 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
      00B749 20 12            [ 2]  897 	jra	00126$
      00B74B                        898 00122$:
                           00030A   899 	C$ebike_app.c$519$1_0$430 ==.
                                    900 ;	ebike_app.c: 519: ui32_vartemp = (uint32_t) f_pedal_torque_x_assist_level_factor;
      00B74B 1E 12            [ 2]  901 	ldw	x, (0x12, sp)
      00B74D 89               [ 2]  902 	pushw	x
      00B74E 1E 12            [ 2]  903 	ldw	x, (0x12, sp)
      00B750 89               [ 2]  904 	pushw	x
      00B751 CD D4 0A         [ 4]  905 	call	___fs2ulong
      00B754 5B 04            [ 2]  906 	addw	sp, #4
      00B756 CF 00 57         [ 2]  907 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
      00B759 90 CF 00 55      [ 2]  908 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
      00B75D                        909 00126$:
                           00031C   910 	C$ebike_app.c$523$1_0$430 ==.
                                    911 ;	ebike_app.c: 523: ui32_vartemp = ui32_vartemp * 13;
      00B75D 3B 00 58         [ 1]  912 	push	_ebike_control_motor_ui32_vartemp_65536_430+3
      00B760 3B 00 57         [ 1]  913 	push	_ebike_control_motor_ui32_vartemp_65536_430+2
      00B763 3B 00 56         [ 1]  914 	push	_ebike_control_motor_ui32_vartemp_65536_430+1
      00B766 3B 00 55         [ 1]  915 	push	_ebike_control_motor_ui32_vartemp_65536_430+0
      00B769 4B 0D            [ 1]  916 	push	#0x0d
      00B76B 5F               [ 1]  917 	clrw	x
      00B76C 89               [ 2]  918 	pushw	x
      00B76D 4B 00            [ 1]  919 	push	#0x00
      00B76F CD DB 08         [ 4]  920 	call	__mullong
      00B772 5B 08            [ 2]  921 	addw	sp, #8
      00B774 CF 00 57         [ 2]  922 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
      00B777 90 CF 00 55      [ 2]  923 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
                           00033A   924 	C$ebike_app.c$524$1_0$430 ==.
                                    925 ;	ebike_app.c: 524: ui32_vartemp /= 100;
      00B77B 4B 64            [ 1]  926 	push	#0x64
      00B77D 5F               [ 1]  927 	clrw	x
      00B77E 89               [ 2]  928 	pushw	x
      00B77F 4B 00            [ 1]  929 	push	#0x00
      00B781 3B 00 58         [ 1]  930 	push	_ebike_control_motor_ui32_vartemp_65536_430+3
      00B784 3B 00 57         [ 1]  931 	push	_ebike_control_motor_ui32_vartemp_65536_430+2
      00B787 3B 00 56         [ 1]  932 	push	_ebike_control_motor_ui32_vartemp_65536_430+1
      00B78A 3B 00 55         [ 1]  933 	push	_ebike_control_motor_ui32_vartemp_65536_430+0
      00B78D CD D7 E1         [ 4]  934 	call	__divulong
      00B790 5B 08            [ 2]  935 	addw	sp, #8
      00B792 CF 00 57         [ 2]  936 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
      00B795 90 CF 00 55      [ 2]  937 	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
                           000358   938 	C$ebike_app.c$525$1_0$430 ==.
                                    939 ;	ebike_app.c: 525: ui8_adc_max_motor_current = ui32_vartemp >> 3;
      00B799 CE 00 57         [ 2]  940 	ldw	x, _ebike_control_motor_ui32_vartemp_65536_430+2
      00B79C 54               [ 2]  941 	srlw	x
      00B79D 54               [ 2]  942 	srlw	x
      00B79E 54               [ 2]  943 	srlw	x
      00B79F 41               [ 1]  944 	exg	a, xl
      00B7A0 6B 01            [ 1]  945 	ld	(0x01, sp), a
      00B7A2 41               [ 1]  946 	exg	a, xl
                           000362   947 	C$ebike_app.c$526$3_0$434 ==.
                                    948 ;	ebike_app.c: 526: ui8_limit_max(&ui8_adc_max_motor_current, 255);
      00B7A3 96               [ 1]  949 	ldw	x, sp
      00B7A4 5C               [ 1]  950 	incw	x
      00B7A5 4B FF            [ 1]  951 	push	#0xff
      00B7A7 89               [ 2]  952 	pushw	x
      00B7A8 CD C8 93         [ 4]  953 	call	_ui8_limit_max
      00B7AB 5B 03            [ 2]  954 	addw	sp, #3
                           00036C   955 	C$ebike_app.c$527$3_0$434 ==.
                                    956 ;	ebike_app.c: 527: ui8_adc_motor_target_current = ui8_adc_max_motor_current;
      00B7AD 7B 01            [ 1]  957 	ld	a, (0x01, sp)
      00B7AF C7 02 2E         [ 1]  958 	ld	_ui8_adc_motor_target_current+0, a
      00B7B2                        959 00128$:
                           000371   960 	C$ebike_app.c$534$2_0$431 ==.
                                    961 ;	ebike_app.c: 534: if(configuration_variables.ui8_target_battery_max_power_div25 > 0) //TODO: add real feature toggle for max power feature
      00B7B2 C6 00 24         [ 1]  962 	ld	a, _configuration_variables+15
      00B7B5 27 30            [ 1]  963 	jreq	00132$
                           000376   964 	C$ebike_app.c$536$3_0$451 ==.
                                    965 ;	ebike_app.c: 536: ui32_adc_max_battery_current_x4 = (((uint32_t) configuration_variables.ui8_target_battery_max_power_div25) * 160) / ((uint32_t) ui16_battery_voltage_filtered);
      00B7B7 C6 00 24         [ 1]  966 	ld	a, _configuration_variables+15
      00B7BA 5F               [ 1]  967 	clrw	x
      00B7BB 97               [ 1]  968 	ld	xl, a
      00B7BC 90 5F            [ 1]  969 	clrw	y
      00B7BE 89               [ 2]  970 	pushw	x
      00B7BF 90 89            [ 2]  971 	pushw	y
      00B7C1 4B A0            [ 1]  972 	push	#0xa0
      00B7C3 5F               [ 1]  973 	clrw	x
      00B7C4 89               [ 2]  974 	pushw	x
      00B7C5 4B 00            [ 1]  975 	push	#0x00
      00B7C7 CD DB 08         [ 4]  976 	call	__mullong
      00B7CA 5B 08            [ 2]  977 	addw	sp, #8
      00B7CC 1F 12            [ 2]  978 	ldw	(0x12, sp), x
      00B7CE 17 10            [ 2]  979 	ldw	(0x10, sp), y
      00B7D0 16 09            [ 2]  980 	ldw	y, (0x09, sp)
      00B7D2 5F               [ 1]  981 	clrw	x
      00B7D3 90 89            [ 2]  982 	pushw	y
      00B7D5 89               [ 2]  983 	pushw	x
      00B7D6 1E 16            [ 2]  984 	ldw	x, (0x16, sp)
      00B7D8 89               [ 2]  985 	pushw	x
      00B7D9 1E 16            [ 2]  986 	ldw	x, (0x16, sp)
      00B7DB 89               [ 2]  987 	pushw	x
      00B7DC CD D7 E1         [ 4]  988 	call	__divulong
      00B7DF 5B 08            [ 2]  989 	addw	sp, #8
                           0003A0   990 	C$ebike_app.c$537$1_0$430 ==.
                                    991 ;	ebike_app.c: 537: ui8_adc_max_battery_power_current = ui32_adc_max_battery_current_x4 >> 2;
      00B7E1 54               [ 2]  992 	srlw	x
      00B7E2 54               [ 2]  993 	srlw	x
      00B7E3 41               [ 1]  994 	exg	a, xl
      00B7E4 6B 0B            [ 1]  995 	ld	(0x0b, sp), a
      00B7E6 41               [ 1]  996 	exg	a, xl
      00B7E7                        997 00132$:
                           0003A6   998 	C$ebike_app.c$550$1_0$430 ==.
                                    999 ;	ebike_app.c: 550: ui8_tmp_pas_cadence_rpm = ui8_pas_cadence_rpm;
      00B7E7 C6 02 00         [ 1] 1000 	ld	a, _ui8_pas_cadence_rpm+0
      00B7EA 6B 13            [ 1] 1001 	ld	(0x13, sp), a
                           0003AB  1002 	C$ebike_app.c$553$1_0$430 ==.
                                   1003 ;	ebike_app.c: 553: if(configuration_variables.ui8_motor_assistance_startup_without_pedal_rotation)
      00B7EC C6 00 23         [ 1] 1004 	ld	a, _configuration_variables+14
      00B7EF 27 0B            [ 1] 1005 	jreq	00136$
                           0003B0  1006 	C$ebike_app.c$555$2_0$454 ==.
                                   1007 ;	ebike_app.c: 555: if(ui8_pas_cadence_rpm < MIN_PAS_CADENCE_RPM){ui8_tmp_pas_cadence_rpm = MIN_PAS_CADENCE_RPM;}
      00B7F1 C6 02 00         [ 1] 1008 	ld	a, _ui8_pas_cadence_rpm+0
      00B7F4 A1 05            [ 1] 1009 	cp	a, #0x05
      00B7F6 24 04            [ 1] 1010 	jrnc	00136$
      00B7F8 A6 05            [ 1] 1011 	ld	a, #0x05
      00B7FA 6B 13            [ 1] 1012 	ld	(0x13, sp), a
      00B7FC                       1013 00136$:
                           0003BB  1014 	C$ebike_app.c$559$1_0$430 ==.
                                   1015 ;	ebike_app.c: 559: if(configuration_variables.ui8_startup_motor_power_boost_feature_enabled)
      00B7FC C6 00 26         [ 1] 1016 	ld	a, _configuration_variables+17
      00B7FF 27 1D            [ 1] 1017 	jreq	00138$
                           0003C0  1018 	C$ebike_app.c$561$2_0$456 ==.
                                   1019 ;	ebike_app.c: 561: boost_run_statemachine();  
      00B801 CD C3 49         [ 4] 1020 	call	_boost_run_statemachine
                           0003C3  1021 	C$ebike_app.c$562$2_0$456 ==.
                                   1022 ;	ebike_app.c: 562: ui8_boost_enabled_and_applied = apply_boost(ui8_tmp_pas_cadence_rpm, ui8_adc_max_motor_current_boost_state, &ui8_adc_motor_target_current);
      00B804 4B 2E            [ 1] 1023 	push	#<(_ui8_adc_motor_target_current + 0)
      00B806 4B 02            [ 1] 1024 	push	#((_ui8_adc_motor_target_current + 0) >> 8)
      00B808 7B 05            [ 1] 1025 	ld	a, (0x05, sp)
      00B80A 88               [ 1] 1026 	push	a
      00B80B 7B 16            [ 1] 1027 	ld	a, (0x16, sp)
      00B80D 88               [ 1] 1028 	push	a
      00B80E CD C4 67         [ 4] 1029 	call	_apply_boost
      00B811 5B 04            [ 2] 1030 	addw	sp, #4
      00B813 6B 04            [ 1] 1031 	ld	(0x04, sp), a
                           0003D4  1032 	C$ebike_app.c$563$2_0$456 ==.
                                   1033 ;	ebike_app.c: 563: apply_boost_fade_out(&ui8_adc_motor_target_current);
      00B815 4B 2E            [ 1] 1034 	push	#<(_ui8_adc_motor_target_current + 0)
      00B817 4B 02            [ 1] 1035 	push	#((_ui8_adc_motor_target_current + 0) >> 8)
      00B819 CD C4 86         [ 4] 1036 	call	_apply_boost_fade_out
      00B81C 5B 02            [ 2] 1037 	addw	sp, #2
      00B81E                       1038 00138$:
                           0003DD  1039 	C$ebike_app.c$572$1_0$430 ==.
                                   1040 ;	ebike_app.c: 572: if(ui8_walk_assist_flag)
      00B81E 72 5D 02 49      [ 1] 1041 	tnz	_ui8_walk_assist_flag+0
      00B822 27 22            [ 1] 1042 	jreq	00140$
                           0003E3  1043 	C$ebike_app.c$574$2_0$457 ==.
                                   1044 ;	ebike_app.c: 574: ui8_adc_motor_target_current = (ui8_adc_motor_current_max	* ui8_walk_assist_current_per_cent) / 100;
      00B824 C6 01 F4         [ 1] 1045 	ld	a, _ui8_adc_motor_current_max+0
      00B827 97               [ 1] 1046 	ld	xl, a
      00B828 C6 02 4B         [ 1] 1047 	ld	a, _ui8_walk_assist_current_per_cent+0
      00B82B 42               [ 4] 1048 	mul	x, a
      00B82C 4B 64            [ 1] 1049 	push	#0x64
      00B82E 4B 00            [ 1] 1050 	push	#0x00
      00B830 89               [ 2] 1051 	pushw	x
      00B831 CD DB 84         [ 4] 1052 	call	__divsint
      00B834 5B 04            [ 2] 1053 	addw	sp, #4
      00B836 9F               [ 1] 1054 	ld	a, xl
      00B837 C7 02 2E         [ 1] 1055 	ld	_ui8_adc_motor_target_current+0, a
                           0003F9  1056 	C$ebike_app.c$575$2_0$457 ==.
                                   1057 ;	ebike_app.c: 575: apply_walk_assist(ui8_walk_assist, &ui8_adc_motor_target_current);
      00B83A 4B 2E            [ 1] 1058 	push	#<(_ui8_adc_motor_target_current + 0)
      00B83C 4B 02            [ 1] 1059 	push	#((_ui8_adc_motor_target_current + 0) >> 8)
      00B83E 3B 02 4A         [ 1] 1060 	push	_ui8_walk_assist+0
      00B841 CD C2 57         [ 4] 1061 	call	_apply_walk_assist
      00B844 5B 03            [ 2] 1062 	addw	sp, #3
      00B846                       1063 00140$:
                           000405  1064 	C$ebike_app.c$579$1_0$430 ==.
                                   1065 ;	ebike_app.c: 579: ui8_tmp_max_speed = configuration_variables.ui8_wheel_max_speed;
      00B846 C6 00 21         [ 1] 1066 	ld	a, _configuration_variables+12
      00B849 6B 02            [ 1] 1067 	ld	(0x02, sp), a
                           00040A  1068 	C$ebike_app.c$582$1_0$430 ==.
                                   1069 ;	ebike_app.c: 582: if(configuration_variables.ui8_street_feature_enabled)
      00B84B C6 00 33         [ 1] 1070 	ld	a, _configuration_variables+30
      00B84E 27 10            [ 1] 1071 	jreq	00142$
                           00040F  1072 	C$ebike_app.c$584$2_0$458 ==.
                                   1073 ;	ebike_app.c: 584: apply_street_mode(ui16_battery_voltage_filtered, &ui8_tmp_max_speed, &ui8_adc_battery_target_current);
      00B850 96               [ 1] 1074 	ldw	x, sp
      00B851 5C               [ 1] 1075 	incw	x
      00B852 5C               [ 1] 1076 	incw	x
      00B853 4B 2D            [ 1] 1077 	push	#<(_ui8_adc_battery_target_current + 0)
      00B855 4B 02            [ 1] 1078 	push	#((_ui8_adc_battery_target_current + 0) >> 8)
      00B857 89               [ 2] 1079 	pushw	x
      00B858 1E 0D            [ 2] 1080 	ldw	x, (0x0d, sp)
      00B85A 89               [ 2] 1081 	pushw	x
      00B85B CD C1 87         [ 4] 1082 	call	_apply_street_mode
      00B85E 5B 06            [ 2] 1083 	addw	sp, #6
      00B860                       1084 00142$:
                           00041F  1085 	C$ebike_app.c$588$1_0$430 ==.
                                   1086 ;	ebike_app.c: 588: apply_speed_limit(ui16_wheel_speed_x10, ui8_tmp_max_speed, &ui8_adc_motor_target_current);
      00B860 4B 2E            [ 1] 1087 	push	#<(_ui8_adc_motor_target_current + 0)
      00B862 4B 02            [ 1] 1088 	push	#((_ui8_adc_motor_target_current + 0) >> 8)
      00B864 7B 04            [ 1] 1089 	ld	a, (0x04, sp)
      00B866 88               [ 1] 1090 	push	a
      00B867 3B 02 18         [ 1] 1091 	push	_ui16_wheel_speed_x10+1
      00B86A 3B 02 17         [ 1] 1092 	push	_ui16_wheel_speed_x10+0
      00B86D CD C1 E2         [ 4] 1093 	call	_apply_speed_limit
      00B870 5B 05            [ 2] 1094 	addw	sp, #5
                           000431  1095 	C$ebike_app.c$591$1_0$430 ==.
                                   1096 ;	ebike_app.c: 591: if(configuration_variables.ui8_target_battery_max_power_div25 > 0) //TODO: add real feature toggle for max power feature
      00B872 C6 00 24         [ 1] 1097 	ld	a, _configuration_variables+15
      00B875 27 1F            [ 1] 1098 	jreq	00148$
                           000436  1099 	C$ebike_app.c$596$2_0$459 ==.
                                   1100 ;	ebike_app.c: 596: if((configuration_variables.ui8_startup_motor_power_boost_limit_to_max_power == 1)||
      00B877 C6 00 29         [ 1] 1101 	ld	a, _configuration_variables+20
      00B87A 4A               [ 1] 1102 	dec	a
      00B87B 27 0B            [ 1] 1103 	jreq	00143$
                           00043C  1104 	C$ebike_app.c$597$2_0$459 ==.
                                   1105 ;	ebike_app.c: 597: (!((ui8_boost_enabled_and_applied == 1)||
      00B87D 7B 04            [ 1] 1106 	ld	a, (0x04, sp)
      00B87F 4A               [ 1] 1107 	dec	a
      00B880 27 14            [ 1] 1108 	jreq	00148$
                           000441  1109 	C$ebike_app.c$598$2_0$459 ==.
                                   1110 ;	ebike_app.c: 598: (ui8_startup_boost_fade_enable == 1))))
      00B882 C6 02 09         [ 1] 1111 	ld	a, _ui8_startup_boost_fade_enable+0
      00B885 4A               [ 1] 1112 	dec	a
      00B886 27 0E            [ 1] 1113 	jreq	00148$
      00B888                       1114 00143$:
                           000447  1115 	C$ebike_app.c$601$3_0$460 ==.
                                   1116 ;	ebike_app.c: 601: ui8_adc_battery_target_current = ui8_min(ui8_adc_battery_target_current, ui8_adc_max_battery_power_current);
      00B888 7B 0B            [ 1] 1117 	ld	a, (0x0b, sp)
      00B88A 88               [ 1] 1118 	push	a
      00B88B 3B 02 2D         [ 1] 1119 	push	_ui8_adc_battery_target_current+0
      00B88E CD C8 7D         [ 4] 1120 	call	_ui8_min
      00B891 5B 02            [ 2] 1121 	addw	sp, #2
      00B893 C7 02 2D         [ 1] 1122 	ld	_ui8_adc_battery_target_current+0, a
      00B896                       1123 00148$:
                           000455  1124 	C$ebike_app.c$606$1_0$430 ==.
                                   1125 ;	ebike_app.c: 606: if(configuration_variables.ui8_temperature_limit_feature_enabled)
      00B896 C6 00 2C         [ 1] 1126 	ld	a, _configuration_variables+23
      00B899 27 33            [ 1] 1127 	jreq	00156$
                           00045A  1128 	C$ebike_app.c$608$2_0$461 ==.
                                   1129 ;	ebike_app.c: 608: apply_temperature_limiting(&ui8_adc_motor_target_current);
      00B89B 4B 2E            [ 1] 1130 	push	#<(_ui8_adc_motor_target_current + 0)
      00B89D 4B 02            [ 1] 1131 	push	#((_ui8_adc_motor_target_current + 0) >> 8)
      00B89F CD C2 91         [ 4] 1132 	call	_apply_temperature_limiting
      00B8A2 5B 02            [ 2] 1133 	addw	sp, #2
                           000463  1134 	C$ebike_app.c$610$2_0$461 ==.
                                   1135 ;	ebike_app.c: 610: if(configuration_variables.ui8_motor_temperature >= configuration_variables.ui8_motor_temperature_max_value_to_limit)
      00B8A4 C6 00 32         [ 1] 1136 	ld	a, _configuration_variables+29
      00B8A7 6B 13            [ 1] 1137 	ld	(0x13, sp), a
      00B8A9 C6 00 2E         [ 1] 1138 	ld	a, _configuration_variables+25
      00B8AC 11 13            [ 1] 1139 	cp	a, (0x13, sp)
      00B8AE 22 06            [ 1] 1140 	jrugt	00153$
                           00046F  1141 	C$ebike_app.c$611$2_0$461 ==.
                                   1142 ;	ebike_app.c: 611: ui8_overtemperature = 2;
      00B8B0 35 02 02 2C      [ 1] 1143 	mov	_ui8_overtemperature+0, #0x02
      00B8B4 20 1C            [ 2] 1144 	jra	00157$
      00B8B6                       1145 00153$:
                           000475  1146 	C$ebike_app.c$612$2_0$461 ==.
                                   1147 ;	ebike_app.c: 612: else if(configuration_variables.ui8_motor_temperature >= configuration_variables.ui8_motor_temperature_min_value_to_limit)
      00B8B6 C6 00 32         [ 1] 1148 	ld	a, _configuration_variables+29
      00B8B9 6B 13            [ 1] 1149 	ld	(0x13, sp), a
      00B8BB C6 00 2D         [ 1] 1150 	ld	a, _configuration_variables+24
      00B8BE 11 13            [ 1] 1151 	cp	a, (0x13, sp)
      00B8C0 22 06            [ 1] 1152 	jrugt	00150$
                           000481  1153 	C$ebike_app.c$613$2_0$461 ==.
                                   1154 ;	ebike_app.c: 613: ui8_overtemperature = 1;
      00B8C2 35 01 02 2C      [ 1] 1155 	mov	_ui8_overtemperature+0, #0x01
      00B8C6 20 0A            [ 2] 1156 	jra	00157$
      00B8C8                       1157 00150$:
                           000487  1158 	C$ebike_app.c$615$2_0$461 ==.
                                   1159 ;	ebike_app.c: 615: ui8_overtemperature = 0;
      00B8C8 72 5F 02 2C      [ 1] 1160 	clr	_ui8_overtemperature+0
      00B8CC 20 04            [ 2] 1161 	jra	00157$
      00B8CE                       1162 00156$:
                           00048D  1163 	C$ebike_app.c$633$2_0$462 ==.
                                   1164 ;	ebike_app.c: 633: ui8_overtemperature = 0;
      00B8CE 72 5F 02 2C      [ 1] 1165 	clr	_ui8_overtemperature+0
      00B8D2                       1166 00157$:
                           000491  1167 	C$ebike_app.c$637$1_0$430 ==.
                                   1168 ;	ebike_app.c: 637: if((ui8_brake_is_set)||(ui8_system_state != NO_ERROR))
      00B8D2 72 5D 02 2F      [ 1] 1169 	tnz	_ui8_brake_is_set+0
      00B8D6 26 06            [ 1] 1170 	jrne	00158$
      00B8D8 72 5D 01 F9      [ 1] 1171 	tnz	_ui8_system_state+0
      00B8DC 27 08            [ 1] 1172 	jreq	00159$
      00B8DE                       1173 00158$:
                           00049D  1174 	C$ebike_app.c$639$2_0$463 ==.
                                   1175 ;	ebike_app.c: 639: ui8_adc_battery_target_current = 0;
      00B8DE 72 5F 02 2D      [ 1] 1176 	clr	_ui8_adc_battery_target_current+0
                           0004A1  1177 	C$ebike_app.c$640$2_0$463 ==.
                                   1178 ;	ebike_app.c: 640: ui8_adc_motor_target_current = 0;
      00B8E2 72 5F 02 2E      [ 1] 1179 	clr	_ui8_adc_motor_target_current+0
      00B8E6                       1180 00159$:
                           0004A5  1181 	C$ebike_app.c$645$1_0$430 ==.
                                   1182 ;	ebike_app.c: 645: if((!ui8_motor_enabled)&&
      00B8E6 72 5D 01 FC      [ 1] 1183 	tnz	_ui8_motor_enabled+0
      00B8EA 26 17            [ 1] 1184 	jrne	00162$
                           0004AB  1185 	C$ebike_app.c$646$1_0$430 ==.
                                   1186 ;	ebike_app.c: 646: (ui16_motor_get_motor_speed_erps() == 0)&&
      00B8EC CD B0 44         [ 4] 1187 	call	_ui16_motor_get_motor_speed_erps
      00B8EF 5D               [ 2] 1188 	tnzw	x
      00B8F0 26 11            [ 1] 1189 	jrne	00162$
                           0004B1  1190 	C$ebike_app.c$647$1_0$430 ==.
                                   1191 ;	ebike_app.c: 647: (ui8_adc_motor_target_current))
      00B8F2 72 5D 02 2E      [ 1] 1192 	tnz	_ui8_adc_motor_target_current+0
      00B8F6 27 0B            [ 1] 1193 	jreq	00162$
                           0004B7  1194 	C$ebike_app.c$649$2_0$464 ==.
                                   1195 ;	ebike_app.c: 649: ui8_motor_enabled = 1;
      00B8F8 35 01 01 FC      [ 1] 1196 	mov	_ui8_motor_enabled+0, #0x01
                           0004BB  1197 	C$ebike_app.c$650$2_0$464 ==.
                                   1198 ;	ebike_app.c: 650: ui8_duty_cycle = 0;
      00B8FC 72 5F 01 B1      [ 1] 1199 	clr	_ui8_duty_cycle+0
                           0004BF  1200 	C$ebike_app.c$651$2_0$464 ==.
                                   1201 ;	ebike_app.c: 651: enable_pwm();
      00B900 CD A9 B7         [ 4] 1202 	call	_enable_pwm
      00B903                       1203 00162$:
                           0004C2  1204 	C$ebike_app.c$655$1_0$430 ==.
                                   1205 ;	ebike_app.c: 655: if((ui8_motor_enabled)&&
      00B903 72 5D 01 FC      [ 1] 1206 	tnz	_ui8_motor_enabled+0
      00B907 27 19            [ 1] 1207 	jreq	00166$
                           0004C8  1208 	C$ebike_app.c$656$1_0$430 ==.
                                   1209 ;	ebike_app.c: 656: (ui16_motor_get_motor_speed_erps() == 0)&&
      00B909 CD B0 44         [ 4] 1210 	call	_ui16_motor_get_motor_speed_erps
      00B90C 5D               [ 2] 1211 	tnzw	x
      00B90D 26 13            [ 1] 1212 	jrne	00166$
                           0004CE  1213 	C$ebike_app.c$657$1_0$430 ==.
                                   1214 ;	ebike_app.c: 657: (ui8_adc_motor_target_current == 0)&&
      00B90F 72 5D 02 2E      [ 1] 1215 	tnz	_ui8_adc_motor_target_current+0
      00B913 26 0D            [ 1] 1216 	jrne	00166$
                           0004D4  1217 	C$ebike_app.c$658$1_0$430 ==.
                                   1218 ;	ebike_app.c: 658: (ui8_duty_cycle == 0))
      00B915 72 5D 01 B1      [ 1] 1219 	tnz	_ui8_duty_cycle+0
      00B919 26 07            [ 1] 1220 	jrne	00166$
                           0004DA  1221 	C$ebike_app.c$660$2_0$465 ==.
                                   1222 ;	ebike_app.c: 660: ui8_motor_enabled = 0;
      00B91B 72 5F 01 FC      [ 1] 1223 	clr	_ui8_motor_enabled+0
                           0004DE  1224 	C$ebike_app.c$661$2_0$465 ==.
                                   1225 ;	ebike_app.c: 661: disable_pwm();
      00B91F CD A9 6B         [ 4] 1226 	call	_disable_pwm
      00B922                       1227 00166$:
                           0004E1  1228 	C$ebike_app.c$665$1_0$430 ==.
                                   1229 ;	ebike_app.c: 665: if(ui8_motor_enabled)
      00B922 72 5D 01 FC      [ 1] 1230 	tnz	_ui8_motor_enabled+0
      00B926 27 10            [ 1] 1231 	jreq	00171$
                           0004E7  1232 	C$ebike_app.c$668$2_0$466 ==.
                                   1233 ;	ebike_app.c: 668: ebike_app_set_target_adc_battery_max_current(ui8_adc_battery_target_current);
      00B928 3B 02 2D         [ 1] 1234 	push	_ui8_adc_battery_target_current+0
      00B92B CD BF 7D         [ 4] 1235 	call	_ebike_app_set_target_adc_battery_max_current
      00B92E 84               [ 1] 1236 	pop	a
                           0004EE  1237 	C$ebike_app.c$669$2_0$466 ==.
                                   1238 ;	ebike_app.c: 669: ebike_app_set_target_adc_motor_max_current(ui8_adc_motor_target_current);
      00B92F 3B 02 2E         [ 1] 1239 	push	_ui8_adc_motor_target_current+0
      00B932 CD BF 92         [ 4] 1240 	call	_ebike_app_set_target_adc_motor_max_current
      00B935 84               [ 1] 1241 	pop	a
      00B936 20 10            [ 2] 1242 	jra	00172$
      00B938                       1243 00171$:
                           0004F7  1244 	C$ebike_app.c$674$2_0$467 ==.
                                   1245 ;	ebike_app.c: 674: ebike_app_set_target_adc_battery_max_current(0);
      00B938 4B 00            [ 1] 1246 	push	#0x00
      00B93A CD BF 7D         [ 4] 1247 	call	_ebike_app_set_target_adc_battery_max_current
      00B93D 84               [ 1] 1248 	pop	a
                           0004FD  1249 	C$ebike_app.c$675$2_0$467 ==.
                                   1250 ;	ebike_app.c: 675: ebike_app_set_target_adc_motor_max_current(0);
      00B93E 4B 00            [ 1] 1251 	push	#0x00
      00B940 CD BF 92         [ 4] 1252 	call	_ebike_app_set_target_adc_motor_max_current
      00B943 84               [ 1] 1253 	pop	a
                           000503  1254 	C$ebike_app.c$676$2_0$467 ==.
                                   1255 ;	ebike_app.c: 676: ui8_duty_cycle = 0;
      00B944 72 5F 01 B1      [ 1] 1256 	clr	_ui8_duty_cycle+0
      00B948                       1257 00172$:
                           000507  1258 	C$ebike_app.c$685$1_0$430 ==.
                                   1259 ;	ebike_app.c: 685: if((ui8_adc_motor_target_current)&&(!ui8_brake_is_set))
      00B948 72 5D 02 2E      [ 1] 1260 	tnz	_ui8_adc_motor_target_current+0
      00B94C 26 03            [ 1] 1261 	jrne	00426$
      00B94E CC B9 CA         [ 2] 1262 	jp	00185$
      00B951                       1263 00426$:
      00B951 72 5D 02 2F      [ 1] 1264 	tnz	_ui8_brake_is_set+0
      00B955 27 03            [ 1] 1265 	jreq	00427$
      00B957 CC B9 CA         [ 2] 1266 	jp	00185$
      00B95A                       1267 00427$:
                           000519  1268 	C$ebike_app.c$688$2_0$468 ==.
                                   1269 ;	ebike_app.c: 688: if(ui8_walk_assist_flag)
      00B95A 72 5D 02 49      [ 1] 1270 	tnz	_ui8_walk_assist_flag+0
      00B95E 26 03            [ 1] 1271 	jrne	00428$
      00B960 CC B9 C2         [ 2] 1272 	jp	00182$
      00B963                       1273 00428$:
                           000522  1274 	C$ebike_app.c$691$3_0$469 ==.
                                   1275 ;	ebike_app.c: 691: if(ui8_walk_assist_start == 0)
      00B963 72 5D 02 4C      [ 1] 1276 	tnz	_ui8_walk_assist_start+0
      00B967 26 25            [ 1] 1277 	jrne	00177$
                           000528  1278 	C$ebike_app.c$694$4_0$470 ==.
                                   1279 ;	ebike_app.c: 694: ui8_walk_assist_start = 1;
      00B969 35 01 02 4C      [ 1] 1280 	mov	_ui8_walk_assist_start+0, #0x01
                           00052C  1281 	C$ebike_app.c$697$4_0$470 ==.
                                   1282 ;	ebike_app.c: 697: ui8_walk_assist_pwm = 0;
      00B96D 72 5F 02 4D      [ 1] 1283 	clr	_ui8_walk_assist_pwm+0
                           000530  1284 	C$ebike_app.c$700$4_0$470 ==.
                                   1285 ;	ebike_app.c: 700: if(ui8_walk_assist_pwm < configuration_variables.ui8_walk_assist_ramp_time)
      00B971 C6 00 50         [ 1] 1286 	ld	a, _configuration_variables+59
      00B974 C1 02 4D         [ 1] 1287 	cp	a, _ui8_walk_assist_pwm+0
      00B977 23 06            [ 2] 1288 	jrule	00174$
                           000538  1289 	C$ebike_app.c$701$4_0$470 ==.
                                   1290 ;	ebike_app.c: 701: ui8_walk_assist_pwm_step = 1;
      00B979 35 01 02 4E      [ 1] 1291 	mov	_ui8_walk_assist_pwm_step+0, #0x01
      00B97D 20 0F            [ 2] 1292 	jra	00177$
      00B97F                       1293 00174$:
                           00053E  1294 	C$ebike_app.c$703$4_0$470 ==.
                                   1295 ;	ebike_app.c: 703: ui8_walk_assist_pwm_step = configuration_variables.ui8_walk_assist_pwm_duty_cycle / configuration_variables.ui8_walk_assist_ramp_time;
      00B97F C6 00 4A         [ 1] 1296 	ld	a, _configuration_variables+53
      00B982 97               [ 1] 1297 	ld	xl, a
      00B983 C6 00 50         [ 1] 1298 	ld	a, _configuration_variables+59
      00B986 02               [ 1] 1299 	rlwa	x
      00B987 4F               [ 1] 1300 	clr	a
      00B988 01               [ 1] 1301 	rrwa	x
      00B989 62               [ 2] 1302 	div	x, a
      00B98A 9F               [ 1] 1303 	ld	a, xl
      00B98B C7 02 4E         [ 1] 1304 	ld	_ui8_walk_assist_pwm_step+0, a
      00B98E                       1305 00177$:
                           00054D  1306 	C$ebike_app.c$707$3_0$469 ==.
                                   1307 ;	ebike_app.c: 707: if((ui8_walk_assist_pwm + ui8_walk_assist_pwm_step) <= configuration_variables.ui8_walk_assist_pwm_duty_cycle)
      00B98E C6 02 4D         [ 1] 1308 	ld	a, _ui8_walk_assist_pwm+0
      00B991 6B 13            [ 1] 1309 	ld	(0x13, sp), a
      00B993 0F 12            [ 1] 1310 	clr	(0x12, sp)
      00B995 5F               [ 1] 1311 	clrw	x
      00B996 C6 02 4E         [ 1] 1312 	ld	a, _ui8_walk_assist_pwm_step+0
      00B999 97               [ 1] 1313 	ld	xl, a
      00B99A 72 FB 12         [ 2] 1314 	addw	x, (0x12, sp)
      00B99D C6 00 4A         [ 1] 1315 	ld	a, _configuration_variables+53
      00B9A0 6B 13            [ 1] 1316 	ld	(0x13, sp), a
      00B9A2 0F 12            [ 1] 1317 	clr	(0x12, sp)
      00B9A4 13 12            [ 2] 1318 	cpw	x, (0x12, sp)
      00B9A6 2C 0B            [ 1] 1319 	jrsgt	00179$
                           000567  1320 	C$ebike_app.c$708$3_0$469 ==.
                                   1321 ;	ebike_app.c: 708: ui8_walk_assist_pwm += ui8_walk_assist_pwm_step;
      00B9A8 C6 02 4D         [ 1] 1322 	ld	a, _ui8_walk_assist_pwm+0
      00B9AB CB 02 4E         [ 1] 1323 	add	a, _ui8_walk_assist_pwm_step+0
      00B9AE C7 02 4D         [ 1] 1324 	ld	_ui8_walk_assist_pwm+0, a
      00B9B1 20 06            [ 2] 1325 	jra	00180$
      00B9B3                       1326 00179$:
                           000572  1327 	C$ebike_app.c$710$3_0$469 ==.
                                   1328 ;	ebike_app.c: 710: ui8_walk_assist_pwm = configuration_variables.ui8_walk_assist_pwm_duty_cycle;
      00B9B3 C6 00 4A         [ 1] 1329 	ld	a, _configuration_variables+53
      00B9B6 C7 02 4D         [ 1] 1330 	ld	_ui8_walk_assist_pwm+0, a
      00B9B9                       1331 00180$:
                           000578  1332 	C$ebike_app.c$713$3_0$469 ==.
                                   1333 ;	ebike_app.c: 713: motor_set_pwm_duty_cycle_target(ui8_walk_assist_pwm);
      00B9B9 3B 02 4D         [ 1] 1334 	push	_ui8_walk_assist_pwm+0
      00B9BC CD B0 16         [ 4] 1335 	call	_motor_set_pwm_duty_cycle_target
      00B9BF 84               [ 1] 1336 	pop	a
      00B9C0 20 1E            [ 2] 1337 	jra	00188$
      00B9C2                       1338 00182$:
                           000581  1339 	C$ebike_app.c$717$3_0$471 ==.
                                   1340 ;	ebike_app.c: 717: motor_set_pwm_duty_cycle_target(255);
      00B9C2 4B FF            [ 1] 1341 	push	#0xff
      00B9C4 CD B0 16         [ 4] 1342 	call	_motor_set_pwm_duty_cycle_target
      00B9C7 84               [ 1] 1343 	pop	a
      00B9C8 20 16            [ 2] 1344 	jra	00188$
      00B9CA                       1345 00185$:
                           000589  1346 	C$ebike_app.c$723$2_0$472 ==.
                                   1347 ;	ebike_app.c: 723: motor_set_pwm_duty_cycle_target(0);
      00B9CA 4B 00            [ 1] 1348 	push	#0x00
      00B9CC CD B0 16         [ 4] 1349 	call	_motor_set_pwm_duty_cycle_target
      00B9CF 84               [ 1] 1350 	pop	a
                           00058F  1351 	C$ebike_app.c$726$2_0$472 ==.
                                   1352 ;	ebike_app.c: 726: ui8_walk_assist_flag = 0;
      00B9D0 72 5F 02 49      [ 1] 1353 	clr	_ui8_walk_assist_flag+0
                           000593  1354 	C$ebike_app.c$727$2_0$472 ==.
                                   1355 ;	ebike_app.c: 727: ui8_walk_assist_start = 0;
      00B9D4 72 5F 02 4C      [ 1] 1356 	clr	_ui8_walk_assist_start+0
                           000597  1357 	C$ebike_app.c$728$2_0$472 ==.
                                   1358 ;	ebike_app.c: 728: ui8_walk_assist_delay_off_flag = 0;
      00B9D8 72 5F 02 46      [ 1] 1359 	clr	_ui8_walk_assist_delay_off_flag+0
                           00059B  1360 	C$ebike_app.c$729$2_0$472 ==.
                                   1361 ;	ebike_app.c: 729: ui8_walk_assist_current_per_cent = 0;
      00B9DC 72 5F 02 4B      [ 1] 1362 	clr	_ui8_walk_assist_current_per_cent+0
      00B9E0                       1363 00188$:
                           00059F  1364 	C$ebike_app.c$731$1_0$430 ==.
                                   1365 ;	ebike_app.c: 731: }
      00B9E0 5B 13            [ 2] 1366 	addw	sp, #19
                           0005A1  1367 	C$ebike_app.c$731$1_0$430 ==.
                           0005A1  1368 	XFebike_app$ebike_control_motor$0$0 ==.
      00B9E2 81               [ 4] 1369 	ret
                           0005A2  1370 	Febike_app$check_battery_soc$0$0 ==.
                           0005A2  1371 	C$ebike_app.c$736$1_0$474 ==.
                                   1372 ;	ebike_app.c: 736: static void check_battery_soc(void)
                                   1373 ;	-----------------------------------------
                                   1374 ;	 function check_battery_soc
                                   1375 ;	-----------------------------------------
      00B9E3                       1376 _check_battery_soc:
      00B9E3 52 06            [ 2] 1377 	sub	sp, #6
                           0005A4  1378 	C$ebike_app.c$747$1_0$474 ==.
                                   1379 ;	ebike_app.c: 747: ui16_adc_battery_voltage = motor_get_adc_battery_voltage_filtered_10b();
      00B9E5 CD B1 ED         [ 4] 1380 	call	_motor_get_adc_battery_voltage_filtered_10b
      00B9E8 1F 01            [ 2] 1381 	ldw	(0x01, sp), x
                           0005A9  1382 	C$ebike_app.c$750$1_0$474 ==.
                                   1383 ;	ebike_app.c: 750: ui32_battery_voltage_accumulated_x10000 -= ui32_battery_voltage_accumulated_x10000 >> SOC_BATTERY_VOLTAGE_FILTER_COEFFICIENT;
      00B9EA CE 02 32         [ 2] 1384 	ldw	x, _ui32_battery_voltage_accumulated_x10000+2
      00B9ED 1F 05            [ 2] 1385 	ldw	(0x05, sp), x
      00B9EF CE 02 30         [ 2] 1386 	ldw	x, _ui32_battery_voltage_accumulated_x10000+0
      00B9F2 54               [ 2] 1387 	srlw	x
      00B9F3 06 05            [ 1] 1388 	rrc	(0x05, sp)
      00B9F5 06 06            [ 1] 1389 	rrc	(0x06, sp)
      00B9F7 54               [ 2] 1390 	srlw	x
      00B9F8 06 05            [ 1] 1391 	rrc	(0x05, sp)
      00B9FA 06 06            [ 1] 1392 	rrc	(0x06, sp)
      00B9FC 90 CE 02 32      [ 2] 1393 	ldw	y, _ui32_battery_voltage_accumulated_x10000+2
      00BA00 72 F2 05         [ 2] 1394 	subw	y, (0x05, sp)
      00BA03 C6 02 31         [ 1] 1395 	ld	a, _ui32_battery_voltage_accumulated_x10000+1
      00BA06 89               [ 2] 1396 	pushw	x
      00BA07 12 02            [ 1] 1397 	sbc	a, (#2, sp)
      00BA09 85               [ 2] 1398 	popw	x
      00BA0A 97               [ 1] 1399 	ld	xl, a
      00BA0B C6 02 30         [ 1] 1400 	ld	a, _ui32_battery_voltage_accumulated_x10000+0
      00BA0E 89               [ 2] 1401 	pushw	x
      00BA0F 12 01            [ 1] 1402 	sbc	a, (#1, sp)
      00BA11 85               [ 2] 1403 	popw	x
      00BA12 95               [ 1] 1404 	ld	xh, a
      00BA13 90 CF 02 32      [ 2] 1405 	ldw	_ui32_battery_voltage_accumulated_x10000+2, y
      00BA17 CF 02 30         [ 2] 1406 	ldw	_ui32_battery_voltage_accumulated_x10000+0, x
                           0005D9  1407 	C$ebike_app.c$751$1_0$474 ==.
                                   1408 ;	ebike_app.c: 751: ui32_battery_voltage_accumulated_x10000 += (uint32_t) ui16_adc_battery_voltage * SOC_ADC_BATTERY_VOLTAGE_PER_ADC_STEP_X10000;
      00BA1A 1E 01            [ 2] 1409 	ldw	x, (0x01, sp)
      00BA1C 89               [ 2] 1410 	pushw	x
      00BA1D 4B 62            [ 1] 1411 	push	#0x62
      00BA1F 4B 03            [ 1] 1412 	push	#0x03
      00BA21 CD D1 AC         [ 4] 1413 	call	___muluint2ulong
      00BA24 5B 04            [ 2] 1414 	addw	sp, #4
      00BA26 1F 05            [ 2] 1415 	ldw	(0x05, sp), x
      00BA28 17 03            [ 2] 1416 	ldw	(0x03, sp), y
      00BA2A CE 02 32         [ 2] 1417 	ldw	x, _ui32_battery_voltage_accumulated_x10000+2
      00BA2D 72 FB 05         [ 2] 1418 	addw	x, (0x05, sp)
      00BA30 90 CE 02 30      [ 2] 1419 	ldw	y, _ui32_battery_voltage_accumulated_x10000+0
      00BA34 24 02            [ 1] 1420 	jrnc	00151$
      00BA36 90 5C            [ 1] 1421 	incw	y
      00BA38                       1422 00151$:
      00BA38 72 F9 03         [ 2] 1423 	addw	y, (0x03, sp)
      00BA3B CF 02 32         [ 2] 1424 	ldw	_ui32_battery_voltage_accumulated_x10000+2, x
      00BA3E 90 CF 02 30      [ 2] 1425 	ldw	_ui32_battery_voltage_accumulated_x10000+0, y
                           000601  1426 	C$ebike_app.c$752$1_0$474 ==.
                                   1427 ;	ebike_app.c: 752: ui16_battery_voltage_filtered_x10 = ((uint32_t) (ui32_battery_voltage_accumulated_x10000 >> SOC_BATTERY_VOLTAGE_FILTER_COEFFICIENT)) / 1000;
      00BA42 CE 02 32         [ 2] 1428 	ldw	x, _ui32_battery_voltage_accumulated_x10000+2
      00BA45 90 CE 02 30      [ 2] 1429 	ldw	y, _ui32_battery_voltage_accumulated_x10000+0
      00BA49 90 54            [ 2] 1430 	srlw	y
      00BA4B 56               [ 2] 1431 	rrcw	x
      00BA4C 90 54            [ 2] 1432 	srlw	y
      00BA4E 56               [ 2] 1433 	rrcw	x
      00BA4F 4B E8            [ 1] 1434 	push	#0xe8
      00BA51 4B 03            [ 1] 1435 	push	#0x03
      00BA53 4B 00            [ 1] 1436 	push	#0x00
      00BA55 4B 00            [ 1] 1437 	push	#0x00
      00BA57 89               [ 2] 1438 	pushw	x
      00BA58 90 89            [ 2] 1439 	pushw	y
      00BA5A CD D7 E1         [ 4] 1440 	call	__divulong
      00BA5D 5B 08            [ 2] 1441 	addw	sp, #8
      00BA5F 1F 05            [ 2] 1442 	ldw	(0x05, sp), x
                           000620  1443 	C$ebike_app.c$755$1_0$474 ==.
                                   1444 ;	ebike_app.c: 755: ui8_battery_current_x5 = (uint8_t) ((float) motor_get_adc_battery_current_filtered_10b() * 0.826);
      00BA61 CD B1 E9         [ 4] 1445 	call	_motor_get_adc_battery_current_filtered_10b
      00BA64 88               [ 1] 1446 	push	a
      00BA65 CD DA DC         [ 4] 1447 	call	___uchar2fs
      00BA68 84               [ 1] 1448 	pop	a
      00BA69 89               [ 2] 1449 	pushw	x
      00BA6A 90 89            [ 2] 1450 	pushw	y
      00BA6C 4B BC            [ 1] 1451 	push	#0xbc
      00BA6E 4B 74            [ 1] 1452 	push	#0x74
      00BA70 4B 53            [ 1] 1453 	push	#0x53
      00BA72 4B 3F            [ 1] 1454 	push	#0x3f
      00BA74 CD D2 04         [ 4] 1455 	call	___fsmul
      00BA77 5B 08            [ 2] 1456 	addw	sp, #8
      00BA79 89               [ 2] 1457 	pushw	x
      00BA7A 90 89            [ 2] 1458 	pushw	y
      00BA7C CD DA EB         [ 4] 1459 	call	___fs2uchar
      00BA7F 5B 04            [ 2] 1460 	addw	sp, #4
                           000640  1461 	C$ebike_app.c$758$1_0$474 ==.
                                   1462 ;	ebike_app.c: 758: ui16_battery_current_accumulated_x5 -= ui16_battery_current_accumulated_x5 >> SOC_BATTERY_CURRENT_FILTER_COEFFICIENT;
      00BA81 CE 02 34         [ 2] 1463 	ldw	x, _ui16_battery_current_accumulated_x5+0
      00BA84 54               [ 2] 1464 	srlw	x
      00BA85 54               [ 2] 1465 	srlw	x
      00BA86 50               [ 2] 1466 	negw	x
      00BA87 72 BB 02 34      [ 2] 1467 	addw	x, _ui16_battery_current_accumulated_x5+0
      00BA8B CF 02 34         [ 2] 1468 	ldw	_ui16_battery_current_accumulated_x5+0, x
                           00064D  1469 	C$ebike_app.c$759$1_0$474 ==.
                                   1470 ;	ebike_app.c: 759: ui16_battery_current_accumulated_x5 += (uint16_t) ui8_battery_current_x5;
      00BA8E 5F               [ 1] 1471 	clrw	x
      00BA8F 97               [ 1] 1472 	ld	xl, a
      00BA90 72 BB 02 34      [ 2] 1473 	addw	x, _ui16_battery_current_accumulated_x5+0
      00BA94 CF 02 34         [ 2] 1474 	ldw	_ui16_battery_current_accumulated_x5+0, x
                           000656  1475 	C$ebike_app.c$760$1_0$474 ==.
                                   1476 ;	ebike_app.c: 760: ui16_battery_current_filtered_x5 = ui16_battery_current_accumulated_x5 >> SOC_BATTERY_CURRENT_FILTER_COEFFICIENT;
      00BA97 CE 02 34         [ 2] 1477 	ldw	x, _ui16_battery_current_accumulated_x5+0
      00BA9A 54               [ 2] 1478 	srlw	x
      00BA9B 54               [ 2] 1479 	srlw	x
                           00065B  1480 	C$ebike_app.c$763$1_0$474 ==.
                                   1481 ;	ebike_app.c: 763: ui16_fluctuate_battery_voltage_x10 = (uint16_t) ((((uint32_t) configuration_variables.ui16_battery_pack_resistance_x1000) * ((uint32_t) ui16_battery_current_filtered_x5)) / ((uint32_t) 500));
      00BA9C 90 CE 00 3C      [ 2] 1482 	ldw	y, _configuration_variables+39
      00BAA0 89               [ 2] 1483 	pushw	x
      00BAA1 90 89            [ 2] 1484 	pushw	y
      00BAA3 CD D1 AC         [ 4] 1485 	call	___muluint2ulong
      00BAA6 5B 04            [ 2] 1486 	addw	sp, #4
      00BAA8 4B F4            [ 1] 1487 	push	#0xf4
      00BAAA 4B 01            [ 1] 1488 	push	#0x01
      00BAAC 4B 00            [ 1] 1489 	push	#0x00
      00BAAE 4B 00            [ 1] 1490 	push	#0x00
      00BAB0 89               [ 2] 1491 	pushw	x
      00BAB1 90 89            [ 2] 1492 	pushw	y
      00BAB3 CD D7 E1         [ 4] 1493 	call	__divulong
      00BAB6 5B 08            [ 2] 1494 	addw	sp, #8
                           000677  1495 	C$ebike_app.c$765$1_0$474 ==.
                                   1496 ;	ebike_app.c: 765: ui16_battery_voltage_soc_x10 = ui16_battery_voltage_filtered_x10 + ui16_fluctuate_battery_voltage_x10;
      00BAB8 72 FB 05         [ 2] 1497 	addw	x, (0x05, sp)
      00BABB 1F 01            [ 2] 1498 	ldw	(0x01, sp), x
                           00067C  1499 	C$ebike_app.c$768$1_0$474 ==.
                                   1500 ;	ebike_app.c: 768: ui8_battery_cells_number_x10 = configuration_variables.ui8_battery_cells_number * 10;
      00BABD C6 00 3B         [ 1] 1501 	ld	a, _configuration_variables+38
      00BAC0 97               [ 1] 1502 	ld	xl, a
      00BAC1 A6 0A            [ 1] 1503 	ld	a, #0x0a
      00BAC3 42               [ 4] 1504 	mul	x, a
                           000683  1505 	C$ebike_app.c$771$1_0$474 ==.
                                   1506 ;	ebike_app.c: 771: if(ui8_timer_counter++ >= 1)
      00BAC4 C6 02 41         [ 1] 1507 	ld	a, _ui8_timer_counter+0
      00BAC7 95               [ 1] 1508 	ld	xh, a
      00BAC8 4C               [ 1] 1509 	inc	a
      00BAC9 C7 02 41         [ 1] 1510 	ld	_ui8_timer_counter+0, a
      00BACC 9E               [ 1] 1511 	ld	a, xh
      00BACD A1 01            [ 1] 1512 	cp	a, #0x01
      00BACF 24 03            [ 1] 1513 	jrnc	00152$
      00BAD1 CC BB C5         [ 2] 1514 	jp	00121$
      00BAD4                       1515 00152$:
                           000693  1516 	C$ebike_app.c$773$2_0$475 ==.
                                   1517 ;	ebike_app.c: 773: ui8_timer_counter = 0;
      00BAD4 72 5F 02 41      [ 1] 1518 	clr	_ui8_timer_counter+0
                           000697  1519 	C$ebike_app.c$776$1_0$474 ==.
                                   1520 ;	ebike_app.c: 776: if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_5))) {ui8_battery_state_of_charge = 6;}				// 4 bars --> full + overvoltage
      00BAD8 9F               [ 1] 1521 	ld	a, xl
      00BAD9 88               [ 1] 1522 	push	a
      00BADA CD DA DC         [ 4] 1523 	call	___uchar2fs
      00BADD 84               [ 1] 1524 	pop	a
      00BADE 1F 05            [ 2] 1525 	ldw	(0x05, sp), x
      00BAE0 17 03            [ 2] 1526 	ldw	(0x03, sp), y
      00BAE2 1E 05            [ 2] 1527 	ldw	x, (0x05, sp)
      00BAE4 89               [ 2] 1528 	pushw	x
      00BAE5 1E 05            [ 2] 1529 	ldw	x, (0x05, sp)
      00BAE7 89               [ 2] 1530 	pushw	x
      00BAE8 5F               [ 1] 1531 	clrw	x
      00BAE9 89               [ 2] 1532 	pushw	x
      00BAEA 4B 88            [ 1] 1533 	push	#0x88
      00BAEC 4B 40            [ 1] 1534 	push	#0x40
      00BAEE CD D2 04         [ 4] 1535 	call	___fsmul
      00BAF1 5B 08            [ 2] 1536 	addw	sp, #8
      00BAF3 89               [ 2] 1537 	pushw	x
      00BAF4 90 89            [ 2] 1538 	pushw	y
      00BAF6 CD D8 47         [ 4] 1539 	call	___fs2uint
      00BAF9 5B 04            [ 2] 1540 	addw	sp, #4
      00BAFB 13 01            [ 2] 1541 	cpw	x, (0x01, sp)
      00BAFD 24 07            [ 1] 1542 	jrnc	00117$
      00BAFF 35 06 02 36      [ 1] 1543 	mov	_ui8_battery_state_of_charge+0, #0x06
      00BB03 CC BB C5         [ 2] 1544 	jp	00121$
      00BB06                       1545 00117$:
                           0006C5  1546 	C$ebike_app.c$777$1_0$474 ==.
                                   1547 ;	ebike_app.c: 777: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_4))) {ui8_battery_state_of_charge = 5;}	// 4 bars --> full
      00BB06 1E 05            [ 2] 1548 	ldw	x, (0x05, sp)
      00BB08 89               [ 2] 1549 	pushw	x
      00BB09 1E 05            [ 2] 1550 	ldw	x, (0x05, sp)
      00BB0B 89               [ 2] 1551 	pushw	x
      00BB0C 4B A4            [ 1] 1552 	push	#0xa4
      00BB0E 4B 70            [ 1] 1553 	push	#0x70
      00BB10 4B 7D            [ 1] 1554 	push	#0x7d
      00BB12 4B 40            [ 1] 1555 	push	#0x40
      00BB14 CD D2 04         [ 4] 1556 	call	___fsmul
      00BB17 5B 08            [ 2] 1557 	addw	sp, #8
      00BB19 89               [ 2] 1558 	pushw	x
      00BB1A 90 89            [ 2] 1559 	pushw	y
      00BB1C CD D8 47         [ 4] 1560 	call	___fs2uint
      00BB1F 5B 04            [ 2] 1561 	addw	sp, #4
      00BB21 13 01            [ 2] 1562 	cpw	x, (0x01, sp)
      00BB23 24 07            [ 1] 1563 	jrnc	00114$
      00BB25 35 05 02 36      [ 1] 1564 	mov	_ui8_battery_state_of_charge+0, #0x05
      00BB29 CC BB C5         [ 2] 1565 	jp	00121$
      00BB2C                       1566 00114$:
                           0006EB  1567 	C$ebike_app.c$778$1_0$474 ==.
                                   1568 ;	ebike_app.c: 778: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_3))) {ui8_battery_state_of_charge = 4;}	// 3 bars
      00BB2C 1E 05            [ 2] 1569 	ldw	x, (0x05, sp)
      00BB2E 89               [ 2] 1570 	pushw	x
      00BB2F 1E 05            [ 2] 1571 	ldw	x, (0x05, sp)
      00BB31 89               [ 2] 1572 	pushw	x
      00BB32 4B CD            [ 1] 1573 	push	#0xcd
      00BB34 4B CC            [ 1] 1574 	push	#0xcc
      00BB36 4B 6C            [ 1] 1575 	push	#0x6c
      00BB38 4B 40            [ 1] 1576 	push	#0x40
      00BB3A CD D2 04         [ 4] 1577 	call	___fsmul
      00BB3D 5B 08            [ 2] 1578 	addw	sp, #8
      00BB3F 89               [ 2] 1579 	pushw	x
      00BB40 90 89            [ 2] 1580 	pushw	y
      00BB42 CD D8 47         [ 4] 1581 	call	___fs2uint
      00BB45 5B 04            [ 2] 1582 	addw	sp, #4
      00BB47 13 01            [ 2] 1583 	cpw	x, (0x01, sp)
      00BB49 24 07            [ 1] 1584 	jrnc	00111$
      00BB4B 35 04 02 36      [ 1] 1585 	mov	_ui8_battery_state_of_charge+0, #0x04
      00BB4F CC BB C5         [ 2] 1586 	jp	00121$
      00BB52                       1587 00111$:
                           000711  1588 	C$ebike_app.c$779$1_0$474 ==.
                                   1589 ;	ebike_app.c: 779: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_2))) {ui8_battery_state_of_charge = 3;}	// 2 bars
      00BB52 1E 05            [ 2] 1590 	ldw	x, (0x05, sp)
      00BB54 89               [ 2] 1591 	pushw	x
      00BB55 1E 05            [ 2] 1592 	ldw	x, (0x05, sp)
      00BB57 89               [ 2] 1593 	pushw	x
      00BB58 4B F6            [ 1] 1594 	push	#0xf6
      00BB5A 4B 28            [ 1] 1595 	push	#0x28
      00BB5C 4B 5C            [ 1] 1596 	push	#0x5c
      00BB5E 4B 40            [ 1] 1597 	push	#0x40
      00BB60 CD D2 04         [ 4] 1598 	call	___fsmul
      00BB63 5B 08            [ 2] 1599 	addw	sp, #8
      00BB65 89               [ 2] 1600 	pushw	x
      00BB66 90 89            [ 2] 1601 	pushw	y
      00BB68 CD D8 47         [ 4] 1602 	call	___fs2uint
      00BB6B 5B 04            [ 2] 1603 	addw	sp, #4
      00BB6D 13 01            [ 2] 1604 	cpw	x, (0x01, sp)
      00BB6F 24 06            [ 1] 1605 	jrnc	00108$
      00BB71 35 03 02 36      [ 1] 1606 	mov	_ui8_battery_state_of_charge+0, #0x03
      00BB75 20 4E            [ 2] 1607 	jra	00121$
      00BB77                       1608 00108$:
                           000736  1609 	C$ebike_app.c$780$1_0$474 ==.
                                   1610 ;	ebike_app.c: 780: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_1))) {ui8_battery_state_of_charge = 2;}	// 1 bar
      00BB77 1E 05            [ 2] 1611 	ldw	x, (0x05, sp)
      00BB79 89               [ 2] 1612 	pushw	x
      00BB7A 1E 05            [ 2] 1613 	ldw	x, (0x05, sp)
      00BB7C 89               [ 2] 1614 	pushw	x
      00BB7D 4B 33            [ 1] 1615 	push	#0x33
      00BB7F 4B 33            [ 1] 1616 	push	#0x33
      00BB81 4B 53            [ 1] 1617 	push	#0x53
      00BB83 4B 40            [ 1] 1618 	push	#0x40
      00BB85 CD D2 04         [ 4] 1619 	call	___fsmul
      00BB88 5B 08            [ 2] 1620 	addw	sp, #8
      00BB8A 89               [ 2] 1621 	pushw	x
      00BB8B 90 89            [ 2] 1622 	pushw	y
      00BB8D CD D8 47         [ 4] 1623 	call	___fs2uint
      00BB90 5B 04            [ 2] 1624 	addw	sp, #4
      00BB92 13 01            [ 2] 1625 	cpw	x, (0x01, sp)
      00BB94 24 06            [ 1] 1626 	jrnc	00105$
      00BB96 35 02 02 36      [ 1] 1627 	mov	_ui8_battery_state_of_charge+0, #0x02
      00BB9A 20 29            [ 2] 1628 	jra	00121$
      00BB9C                       1629 00105$:
                           00075B  1630 	C$ebike_app.c$781$1_0$474 ==.
                                   1631 ;	ebike_app.c: 781: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_0))) {ui8_battery_state_of_charge = 1;}	// blink --> empty
      00BB9C 1E 05            [ 2] 1632 	ldw	x, (0x05, sp)
      00BB9E 89               [ 2] 1633 	pushw	x
      00BB9F 1E 05            [ 2] 1634 	ldw	x, (0x05, sp)
      00BBA1 89               [ 2] 1635 	pushw	x
      00BBA2 4B E1            [ 1] 1636 	push	#0xe1
      00BBA4 4B 7A            [ 1] 1637 	push	#0x7a
      00BBA6 4B 44            [ 1] 1638 	push	#0x44
      00BBA8 4B 40            [ 1] 1639 	push	#0x40
      00BBAA CD D2 04         [ 4] 1640 	call	___fsmul
      00BBAD 5B 08            [ 2] 1641 	addw	sp, #8
      00BBAF 89               [ 2] 1642 	pushw	x
      00BBB0 90 89            [ 2] 1643 	pushw	y
      00BBB2 CD D8 47         [ 4] 1644 	call	___fs2uint
      00BBB5 5B 04            [ 2] 1645 	addw	sp, #4
      00BBB7 13 01            [ 2] 1646 	cpw	x, (0x01, sp)
      00BBB9 24 06            [ 1] 1647 	jrnc	00102$
      00BBBB 35 01 02 36      [ 1] 1648 	mov	_ui8_battery_state_of_charge+0, #0x01
      00BBBF 20 04            [ 2] 1649 	jra	00121$
      00BBC1                       1650 00102$:
                           000780  1651 	C$ebike_app.c$782$3_0$482 ==.
                                   1652 ;	ebike_app.c: 782: else{ui8_battery_state_of_charge = 0;} // undervoltage
      00BBC1 72 5F 02 36      [ 1] 1653 	clr	_ui8_battery_state_of_charge+0
      00BBC5                       1654 00121$:
                           000784  1655 	C$ebike_app.c$807$1_0$474 ==.
                                   1656 ;	ebike_app.c: 807: }
      00BBC5 5B 06            [ 2] 1657 	addw	sp, #6
                           000786  1658 	C$ebike_app.c$807$1_0$474 ==.
                           000786  1659 	XFebike_app$check_battery_soc$0$0 ==.
      00BBC7 81               [ 4] 1660 	ret
                           000787  1661 	Febike_app$uart_receive_package$0$0 ==.
                           000787  1662 	C$ebike_app.c$812$1_0$484 ==.
                                   1663 ;	ebike_app.c: 812: static void uart_receive_package(void)
                                   1664 ;	-----------------------------------------
                                   1665 ;	 function uart_receive_package
                                   1666 ;	-----------------------------------------
      00BBC8                       1667 _uart_receive_package:
      00BBC8 52 02            [ 2] 1668 	sub	sp, #2
                           000789  1669 	C$ebike_app.c$820$1_0$484 ==.
                                   1670 ;	ebike_app.c: 820: ui16_walk_assist_delay_off++;
      00BBCA CE 02 44         [ 2] 1671 	ldw	x, _ui16_walk_assist_delay_off+0
      00BBCD 5C               [ 1] 1672 	incw	x
      00BBCE CF 02 44         [ 2] 1673 	ldw	_ui16_walk_assist_delay_off+0, x
                           000790  1674 	C$ebike_app.c$823$1_0$484 ==.
                                   1675 ;	ebike_app.c: 823: ui8_lights_counter++;
      00BBD1 72 5C 02 43      [ 1] 1676 	inc	_ui8_lights_counter+0
                           000794  1677 	C$ebike_app.c$825$1_0$484 ==.
                                   1678 ;	ebike_app.c: 825: if(ui8_received_package_flag)
      00BBD5 72 5D 02 23      [ 1] 1679 	tnz	_ui8_received_package_flag+0
      00BBD9 26 03            [ 1] 1680 	jrne	00306$
      00BBDB CC BE 12         [ 2] 1681 	jp	00163$
      00BBDE                       1682 00306$:
                           00079D  1683 	C$ebike_app.c$828$2_0$485 ==.
                                   1684 ;	ebike_app.c: 828: ui8_rx_check_code = 0x00;
      00BBDE 0F 01            [ 1] 1685 	clr	(0x01, sp)
                           00079F  1686 	C$ebike_app.c$829$1_0$484 ==.
                                   1687 ;	ebike_app.c: 829: for(ui8_i = 0; ui8_i < RX_CHECK_CODE; ui8_i++)
      00BBE0 0F 02            [ 1] 1688 	clr	(0x02, sp)
      00BBE2                       1689 00161$:
                           0007A1  1690 	C$ebike_app.c$831$4_0$487 ==.
                                   1691 ;	ebike_app.c: 831: ui8_rx_check_code += ui8_rx_buffer[ui8_i];
      00BBE2 5F               [ 1] 1692 	clrw	x
      00BBE3 7B 02            [ 1] 1693 	ld	a, (0x02, sp)
      00BBE5 97               [ 1] 1694 	ld	xl, a
      00BBE6 1C 00 05         [ 2] 1695 	addw	x, #(_ui8_rx_buffer + 0)
      00BBE9 F6               [ 1] 1696 	ld	a, (x)
      00BBEA 1B 01            [ 1] 1697 	add	a, (0x01, sp)
      00BBEC 6B 01            [ 1] 1698 	ld	(0x01, sp), a
                           0007AD  1699 	C$ebike_app.c$829$3_0$486 ==.
                                   1700 ;	ebike_app.c: 829: for(ui8_i = 0; ui8_i < RX_CHECK_CODE; ui8_i++)
      00BBEE 0C 02            [ 1] 1701 	inc	(0x02, sp)
      00BBF0 7B 02            [ 1] 1702 	ld	a, (0x02, sp)
      00BBF2 A1 06            [ 1] 1703 	cp	a, #0x06
      00BBF4 25 EC            [ 1] 1704 	jrc	00161$
                           0007B5  1705 	C$ebike_app.c$835$2_0$485 ==.
                                   1706 ;	ebike_app.c: 835: if(ui8_rx_check_code == ui8_rx_buffer[RX_CHECK_CODE])
      00BBF6 C6 00 0B         [ 1] 1707 	ld	a, _ui8_rx_buffer+6
      00BBF9 11 01            [ 1] 1708 	cp	a, (0x01, sp)
      00BBFB 27 03            [ 1] 1709 	jreq	00310$
      00BBFD CC BE 0E         [ 2] 1710 	jp	00158$
      00BC00                       1711 00310$:
                           0007BF  1712 	C$ebike_app.c$838$3_0$488 ==.
                                   1713 ;	ebike_app.c: 838: ui8_enable_walk_assist = 1;
      00BC00 35 01 02 48      [ 1] 1714 	mov	_ui8_enable_walk_assist+0, #0x01
                           0007C3  1715 	C$ebike_app.c$841$3_0$488 ==.
                                   1716 ;	ebike_app.c: 841: ui8_assist_level = ui8_rx_buffer[1] & 0x5E; // mask: 01011110
      00BC04 C6 00 06         [ 1] 1717 	ld	a, _ui8_rx_buffer+1
      00BC07 A4 5E            [ 1] 1718 	and	a, #0x5e
      00BC09 C7 01 FF         [ 1] 1719 	ld	_ui8_assist_level+0, a
                           0007CB  1720 	C$ebike_app.c$843$3_0$488 ==.
                                   1721 ;	ebike_app.c: 843: switch(ui8_assist_level)
      00BC0C C6 01 FF         [ 1] 1722 	ld	a, _ui8_assist_level+0
      00BC0F 6B 02            [ 1] 1723 	ld	(0x02, sp), a
      00BC11 A1 02            [ 1] 1724 	cp	a, #0x02
      00BC13 26 03            [ 1] 1725 	jrne	00312$
      00BC15 CC BC 5F         [ 2] 1726 	jp	00104$
      00BC18                       1727 00312$:
      00BC18 7B 02            [ 1] 1728 	ld	a, (0x02, sp)
      00BC1A A1 04            [ 1] 1729 	cp	a, #0x04
      00BC1C 26 03            [ 1] 1730 	jrne	00315$
      00BC1E CC BC 73         [ 2] 1731 	jp	00105$
      00BC21                       1732 00315$:
      00BC21 7B 02            [ 1] 1733 	ld	a, (0x02, sp)
      00BC23 A1 08            [ 1] 1734 	cp	a, #0x08
      00BC25 26 03            [ 1] 1735 	jrne	00318$
      00BC27 CC BC 87         [ 2] 1736 	jp	00106$
      00BC2A                       1737 00318$:
      00BC2A 7B 02            [ 1] 1738 	ld	a, (0x02, sp)
      00BC2C A1 10            [ 1] 1739 	cp	a, #0x10
      00BC2E 27 09            [ 1] 1740 	jreq	00102$
      00BC30 7B 02            [ 1] 1741 	ld	a, (0x02, sp)
      00BC32 A1 40            [ 1] 1742 	cp	a, #0x40
      00BC34 27 14            [ 1] 1743 	jreq	00103$
      00BC36 CC BC 99         [ 2] 1744 	jp	00108$
                           0007F8  1745 	C$ebike_app.c$845$4_0$489 ==.
                                   1746 ;	ebike_app.c: 845: case ASSIST_PEDAL_LEVEL0:
      00BC39                       1747 00102$:
                           0007F8  1748 	C$ebike_app.c$847$4_0$489 ==.
                                   1749 ;	ebike_app.c: 847: configuration_variables.ui8_assist_level_factor_x10 = 0;
      00BC39 35 00 00 15      [ 1] 1750 	mov	_configuration_variables+0, #0x00
                           0007FC  1751 	C$ebike_app.c$850$4_0$489 ==.
                                   1752 ;	ebike_app.c: 850: configuration_variables.ui8_startup_motor_power_boost_assist_level = 0;
      00BC3D 35 00 00 27      [ 1] 1753 	mov	_configuration_variables+18, #0x00
                           000800  1754 	C$ebike_app.c$853$4_0$489 ==.
                                   1755 ;	ebike_app.c: 853: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[0];
      00BC41 C6 00 4B         [ 1] 1756 	ld	a, _configuration_variables+54
      00BC44 C7 00 4A         [ 1] 1757 	ld	_configuration_variables+53, a
                           000806  1758 	C$ebike_app.c$859$4_0$489 ==.
                                   1759 ;	ebike_app.c: 859: break;
      00BC47 CC BC 99         [ 2] 1760 	jp	00108$
                           000809  1761 	C$ebike_app.c$861$4_0$489 ==.
                                   1762 ;	ebike_app.c: 861: case ASSIST_PEDAL_LEVEL1:
      00BC4A                       1763 00103$:
                           000809  1764 	C$ebike_app.c$863$4_0$489 ==.
                                   1765 ;	ebike_app.c: 863: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[ECO];
      00BC4A C6 00 40         [ 1] 1766 	ld	a, _configuration_variables+43
      00BC4D C7 00 15         [ 1] 1767 	ld	_configuration_variables+0, a
                           00080F  1768 	C$ebike_app.c$866$4_0$489 ==.
                                   1769 ;	ebike_app.c: 866: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[0];
      00BC50 C6 00 45         [ 1] 1770 	ld	a, _configuration_variables+48
      00BC53 C7 00 27         [ 1] 1771 	ld	_configuration_variables+18, a
                           000815  1772 	C$ebike_app.c$873$4_0$489 ==.
                                   1773 ;	ebike_app.c: 873: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[1];
      00BC56 C6 00 4C         [ 1] 1774 	ld	a, _configuration_variables+55
      00BC59 C7 00 4A         [ 1] 1775 	ld	_configuration_variables+53, a
                           00081B  1776 	C$ebike_app.c$875$4_0$489 ==.
                                   1777 ;	ebike_app.c: 875: break;
      00BC5C CC BC 99         [ 2] 1778 	jp	00108$
                           00081E  1779 	C$ebike_app.c$877$4_0$489 ==.
                                   1780 ;	ebike_app.c: 877: case ASSIST_PEDAL_LEVEL2:
      00BC5F                       1781 00104$:
                           00081E  1782 	C$ebike_app.c$879$4_0$489 ==.
                                   1783 ;	ebike_app.c: 879: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[TOUR];
      00BC5F C6 00 41         [ 1] 1784 	ld	a, _configuration_variables+44
      00BC62 C7 00 15         [ 1] 1785 	ld	_configuration_variables+0, a
                           000824  1786 	C$ebike_app.c$882$4_0$489 ==.
                                   1787 ;	ebike_app.c: 882: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[1];
      00BC65 C6 00 46         [ 1] 1788 	ld	a, _configuration_variables+49
      00BC68 C7 00 27         [ 1] 1789 	ld	_configuration_variables+18, a
                           00082A  1790 	C$ebike_app.c$885$4_0$489 ==.
                                   1791 ;	ebike_app.c: 885: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[2];
      00BC6B C6 00 4D         [ 1] 1792 	ld	a, _configuration_variables+56
      00BC6E C7 00 4A         [ 1] 1793 	ld	_configuration_variables+53, a
                           000830  1794 	C$ebike_app.c$891$4_0$489 ==.
                                   1795 ;	ebike_app.c: 891: break;
      00BC71 20 26            [ 2] 1796 	jra	00108$
                           000832  1797 	C$ebike_app.c$893$4_0$489 ==.
                                   1798 ;	ebike_app.c: 893: case ASSIST_PEDAL_LEVEL3:
      00BC73                       1799 00105$:
                           000832  1800 	C$ebike_app.c$895$4_0$489 ==.
                                   1801 ;	ebike_app.c: 895: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[SPORT];
      00BC73 C6 00 42         [ 1] 1802 	ld	a, _configuration_variables+45
      00BC76 C7 00 15         [ 1] 1803 	ld	_configuration_variables+0, a
                           000838  1804 	C$ebike_app.c$898$4_0$489 ==.
                                   1805 ;	ebike_app.c: 898: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[2];
      00BC79 C6 00 47         [ 1] 1806 	ld	a, _configuration_variables+50
      00BC7C C7 00 27         [ 1] 1807 	ld	_configuration_variables+18, a
                           00083E  1808 	C$ebike_app.c$901$4_0$489 ==.
                                   1809 ;	ebike_app.c: 901: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[3];
      00BC7F C6 00 4E         [ 1] 1810 	ld	a, _configuration_variables+57
      00BC82 C7 00 4A         [ 1] 1811 	ld	_configuration_variables+53, a
                           000844  1812 	C$ebike_app.c$902$4_0$489 ==.
                                   1813 ;	ebike_app.c: 902: break;
      00BC85 20 12            [ 2] 1814 	jra	00108$
                           000846  1815 	C$ebike_app.c$904$4_0$489 ==.
                                   1816 ;	ebike_app.c: 904: case ASSIST_PEDAL_LEVEL4:
      00BC87                       1817 00106$:
                           000846  1818 	C$ebike_app.c$906$4_0$489 ==.
                                   1819 ;	ebike_app.c: 906: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[TURBO];
      00BC87 C6 00 43         [ 1] 1820 	ld	a, _configuration_variables+46
      00BC8A C7 00 15         [ 1] 1821 	ld	_configuration_variables+0, a
                           00084C  1822 	C$ebike_app.c$909$4_0$489 ==.
                                   1823 ;	ebike_app.c: 909: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[3];
      00BC8D C6 00 48         [ 1] 1824 	ld	a, _configuration_variables+51
      00BC90 C7 00 27         [ 1] 1825 	ld	_configuration_variables+18, a
                           000852  1826 	C$ebike_app.c$912$4_0$489 ==.
                                   1827 ;	ebike_app.c: 912: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[4];
      00BC93 C6 00 4F         [ 1] 1828 	ld	a, _configuration_variables+58
      00BC96 C7 00 4A         [ 1] 1829 	ld	_configuration_variables+53, a
                           000858  1830 	C$ebike_app.c$918$3_0$488 ==.
                                   1831 ;	ebike_app.c: 918: }
      00BC99                       1832 00108$:
                           000858  1833 	C$ebike_app.c$924$3_0$488 ==.
                                   1834 ;	ebike_app.c: 924: if(ui8_assist_level == ASSIST_PEDAL_LEVEL0)
      00BC99 C6 01 FF         [ 1] 1835 	ld	a, _ui8_assist_level+0
      00BC9C A1 10            [ 1] 1836 	cp	a, #0x10
      00BC9E 27 03            [ 1] 1837 	jreq	00328$
      00BCA0 CC BD 13         [ 2] 1838 	jp	00130$
      00BCA3                       1839 00328$:
                           000862  1840 	C$ebike_app.c$927$4_0$490 ==.
                                   1841 ;	ebike_app.c: 927: if(ui8_rx_buffer[1] & 0x01)
      00BCA3 C6 00 06         [ 1] 1842 	ld	a, _ui8_rx_buffer+1
      00BCA6 44               [ 1] 1843 	srl	a
      00BCA7 24 2C            [ 1] 1844 	jrnc	00127$
                           000868  1845 	C$ebike_app.c$930$5_0$491 ==.
                                   1846 ;	ebike_app.c: 930: if(!ui8_lights_flag)
      00BCA9 72 5D 02 50      [ 1] 1847 	tnz	_ui8_lights_flag+0
      00BCAD 27 03            [ 1] 1848 	jreq	00330$
      00BCAF CC BD 17         [ 2] 1849 	jp	00131$
      00BCB2                       1850 00330$:
                           000871  1851 	C$ebike_app.c$933$6_0$492 ==.
                                   1852 ;	ebike_app.c: 933: if(!ui8_default_flag)
      00BCB2 72 5D 02 4F      [ 1] 1853 	tnz	_ui8_default_flag+0
      00BCB6 26 0C            [ 1] 1854 	jrne	00110$
                           000877  1855 	C$ebike_app.c$936$7_0$493 ==.
                                   1856 ;	ebike_app.c: 936: ui8_default_flag = 1;
      00BCB8 35 01 02 4F      [ 1] 1857 	mov	_ui8_default_flag+0, #0x01
                           00087B  1858 	C$ebike_app.c$939$7_0$493 ==.
                                   1859 ;	ebike_app.c: 939: configuration_variables.ui8_function_code = DEFAULT_ENABLED_ON_OEM;
      00BCBC 35 02 00 39      [ 1] 1860 	mov	_configuration_variables+36, #0x02
                           00087F  1861 	C$ebike_app.c$942$7_0$493 ==.
                                   1862 ;	ebike_app.c: 942: ui8_lights_counter = 0;
      00BCC0 72 5F 02 43      [ 1] 1863 	clr	_ui8_lights_counter+0
      00BCC4                       1864 00110$:
                           000883  1865 	C$ebike_app.c$946$6_0$492 ==.
                                   1866 ;	ebike_app.c: 946: if(ui8_lights_counter >= DELAY_LIGHTS_ON)
      00BCC4 C6 02 43         [ 1] 1867 	ld	a, _ui8_lights_counter+0
      00BCC7 A1 32            [ 1] 1868 	cp	a, #0x32
      00BCC9 24 03            [ 1] 1869 	jrnc	00332$
      00BCCB CC BD 17         [ 2] 1870 	jp	00131$
      00BCCE                       1871 00332$:
                           00088D  1872 	C$ebike_app.c$954$7_0$494 ==.
                                   1873 ;	ebike_app.c: 954: ui8_default_flag = 0;
      00BCCE 72 5F 02 4F      [ 1] 1874 	clr	_ui8_default_flag+0
      00BCD2 CC BD 17         [ 2] 1875 	jp	00131$
      00BCD5                       1876 00127$:
                           000894  1877 	C$ebike_app.c$961$5_0$495 ==.
                                   1878 ;	ebike_app.c: 961: if(!ui8_lights_flag)
      00BCD5 72 5D 02 50      [ 1] 1879 	tnz	_ui8_lights_flag+0
      00BCD9 26 32            [ 1] 1880 	jrne	00124$
                           00089A  1881 	C$ebike_app.c$964$6_0$496 ==.
                                   1882 ;	ebike_app.c: 964: if(ui8_default_flag)
      00BCDB 72 5D 02 4F      [ 1] 1883 	tnz	_ui8_default_flag+0
      00BCDF 27 36            [ 1] 1884 	jreq	00131$
                           0008A0  1885 	C$ebike_app.c$967$7_0$497 ==.
                                   1886 ;	ebike_app.c: 967: ui8_default_flag = 0;
      00BCE1 72 5F 02 4F      [ 1] 1887 	clr	_ui8_default_flag+0
                           0008A4  1888 	C$ebike_app.c$969$7_0$497 ==.
                                   1889 ;	ebike_app.c: 969: if(configuration_variables.ui8_street_enabled_on_startup)
      00BCE5 C6 00 34         [ 1] 1890 	ld	a, _configuration_variables+31
      00BCE8 27 06            [ 1] 1891 	jreq	00116$
                           0008A9  1892 	C$ebike_app.c$971$7_0$497 ==.
                                   1893 ;	ebike_app.c: 971: configuration_variables.ui8_offroad_mode = 0;
      00BCEA 35 00 00 1E      [ 1] 1894 	mov	_configuration_variables+9, #0x00
      00BCEE 20 04            [ 2] 1895 	jra	00117$
      00BCF0                       1896 00116$:
                           0008AF  1897 	C$ebike_app.c$974$7_0$497 ==.
                                   1898 ;	ebike_app.c: 974: configuration_variables.ui8_offroad_mode = 1;
      00BCF0 35 01 00 1E      [ 1] 1899 	mov	_configuration_variables+9, #0x01
      00BCF4                       1900 00117$:
                           0008B3  1901 	C$ebike_app.c$977$7_0$497 ==.
                                   1902 ;	ebike_app.c: 977: configuration_variables.ui8_startup_motor_power_boost_feature_enabled = 0;
      00BCF4 35 00 00 26      [ 1] 1903 	mov	_configuration_variables+17, #0x00
                           0008B7  1904 	C$ebike_app.c$979$7_0$497 ==.
                                   1905 ;	ebike_app.c: 979: if(configuration_variables.ui8_emtb_enabled_on_startup)
      00BCF8 C6 00 20         [ 1] 1906 	ld	a, _configuration_variables+11
      00BCFB 27 06            [ 1] 1907 	jreq	00119$
                           0008BC  1908 	C$ebike_app.c$981$7_0$497 ==.
                                   1909 ;	ebike_app.c: 981: configuration_variables.ui8_emtb_mode = 1;
      00BCFD 35 01 00 1F      [ 1] 1910 	mov	_configuration_variables+10, #0x01
      00BD01 20 04            [ 2] 1911 	jra	00120$
      00BD03                       1912 00119$:
                           0008C2  1913 	C$ebike_app.c$984$7_0$497 ==.
                                   1914 ;	ebike_app.c: 984: configuration_variables.ui8_emtb_mode = 0;								
      00BD03 35 00 00 1F      [ 1] 1915 	mov	_configuration_variables+10, #0x00
      00BD07                       1916 00120$:
                           0008C6  1917 	C$ebike_app.c$987$7_0$497 ==.
                                   1918 ;	ebike_app.c: 987: configuration_variables.ui8_function_code = DEFAULT_FUNCTION_ENABLED;
      00BD07 35 0F 00 39      [ 1] 1919 	mov	_configuration_variables+36, #0x0f
      00BD0B 20 0A            [ 2] 1920 	jra	00131$
      00BD0D                       1921 00124$:
                           0008CC  1922 	C$ebike_app.c$994$6_0$498 ==.
                                   1923 ;	ebike_app.c: 994: ui8_lights_flag = 0;
      00BD0D 72 5F 02 50      [ 1] 1924 	clr	_ui8_lights_flag+0
      00BD11 20 04            [ 2] 1925 	jra	00131$
      00BD13                       1926 00130$:
                           0008D2  1927 	C$ebike_app.c$1001$4_0$499 ==.
                                   1928 ;	ebike_app.c: 1001: ui8_default_flag = 0;
      00BD13 72 5F 02 4F      [ 1] 1929 	clr	_ui8_default_flag+0
      00BD17                       1930 00131$:
                           0008D6  1931 	C$ebike_app.c$1008$3_0$488 ==.
                                   1932 ;	ebike_app.c: 1008: if(ui8_assist_level == ASSIST_PEDAL_LEVEL1)
      00BD17 C6 01 FF         [ 1] 1933 	ld	a, _ui8_assist_level+0
      00BD1A A1 40            [ 1] 1934 	cp	a, #0x40
      00BD1C 27 03            [ 1] 1935 	jreq	00339$
      00BD1E CC BD 8B         [ 2] 1936 	jp	00153$
      00BD21                       1937 00339$:
                           0008E0  1938 	C$ebike_app.c$1011$4_0$500 ==.
                                   1939 ;	ebike_app.c: 1011: if(ui8_rx_buffer[1] & 0x01)
      00BD21 C6 00 06         [ 1] 1940 	ld	a, _ui8_rx_buffer+1
      00BD24 44               [ 1] 1941 	srl	a
      00BD25 24 34            [ 1] 1942 	jrnc	00150$
                           0008E6  1943 	C$ebike_app.c$1014$5_0$501 ==.
                                   1944 ;	ebike_app.c: 1014: if(!ui8_lights_flag)
      00BD27 72 5D 02 50      [ 1] 1945 	tnz	_ui8_lights_flag+0
      00BD2B 27 03            [ 1] 1946 	jreq	00341$
      00BD2D CC BD 8F         [ 2] 1947 	jp	00154$
      00BD30                       1948 00341$:
                           0008EF  1949 	C$ebike_app.c$1017$6_0$502 ==.
                                   1950 ;	ebike_app.c: 1017: if(!ui8_mode_flag)
      00BD30 72 5D 02 51      [ 1] 1951 	tnz	_ui8_mode_flag+0
      00BD34 26 18            [ 1] 1952 	jrne	00136$
                           0008F5  1953 	C$ebike_app.c$1020$7_0$503 ==.
                                   1954 ;	ebike_app.c: 1020: ui8_mode_flag = 1;
      00BD36 35 01 02 51      [ 1] 1955 	mov	_ui8_mode_flag+0, #0x01
                           0008F9  1956 	C$ebike_app.c$1022$7_0$503 ==.
                                   1957 ;	ebike_app.c: 1022: if(configuration_variables.ui8_offroad_mode == 1)
      00BD3A C6 00 1E         [ 1] 1958 	ld	a, _configuration_variables+9
      00BD3D 4A               [ 1] 1959 	dec	a
      00BD3E 26 06            [ 1] 1960 	jrne	00133$
                           0008FF  1961 	C$ebike_app.c$1024$7_0$503 ==.
                                   1962 ;	ebike_app.c: 1024: configuration_variables.ui8_function_code = STREET_ENABLED_ON_OEM;
      00BD40 35 02 00 39      [ 1] 1963 	mov	_configuration_variables+36, #0x02
      00BD44 20 04            [ 2] 1964 	jra	00134$
      00BD46                       1965 00133$:
                           000905  1966 	C$ebike_app.c$1027$7_0$503 ==.
                                   1967 ;	ebike_app.c: 1027: configuration_variables.ui8_function_code = OFFROAD_ENABLED_ON_OEM;
      00BD46 35 03 00 39      [ 1] 1968 	mov	_configuration_variables+36, #0x03
      00BD4A                       1969 00134$:
                           000909  1970 	C$ebike_app.c$1030$7_0$503 ==.
                                   1971 ;	ebike_app.c: 1030: ui8_lights_counter = 0;
      00BD4A 72 5F 02 43      [ 1] 1972 	clr	_ui8_lights_counter+0
      00BD4E                       1973 00136$:
                           00090D  1974 	C$ebike_app.c$1034$6_0$502 ==.
                                   1975 ;	ebike_app.c: 1034: if(ui8_lights_counter >= DELAY_LIGHTS_ON)
      00BD4E C6 02 43         [ 1] 1976 	ld	a, _ui8_lights_counter+0
      00BD51 A1 32            [ 1] 1977 	cp	a, #0x32
      00BD53 25 3A            [ 1] 1978 	jrc	00154$
                           000914  1979 	C$ebike_app.c$1042$7_0$504 ==.
                                   1980 ;	ebike_app.c: 1042: ui8_mode_flag = 0;
      00BD55 72 5F 02 51      [ 1] 1981 	clr	_ui8_mode_flag+0
      00BD59 20 34            [ 2] 1982 	jra	00154$
      00BD5B                       1983 00150$:
                           00091A  1984 	C$ebike_app.c$1049$5_0$505 ==.
                                   1985 ;	ebike_app.c: 1049: if(!ui8_lights_flag)
      00BD5B 72 5D 02 50      [ 1] 1986 	tnz	_ui8_lights_flag+0
      00BD5F 26 24            [ 1] 1987 	jrne	00147$
                           000920  1988 	C$ebike_app.c$1052$6_0$506 ==.
                                   1989 ;	ebike_app.c: 1052: if(ui8_mode_flag)
      00BD61 72 5D 02 51      [ 1] 1990 	tnz	_ui8_mode_flag+0
      00BD65 27 28            [ 1] 1991 	jreq	00154$
                           000926  1992 	C$ebike_app.c$1055$7_0$507 ==.
                                   1993 ;	ebike_app.c: 1055: ui8_mode_flag = 0;
      00BD67 72 5F 02 51      [ 1] 1994 	clr	_ui8_mode_flag+0
                           00092A  1995 	C$ebike_app.c$1057$7_0$507 ==.
                                   1996 ;	ebike_app.c: 1057: if(configuration_variables.ui8_offroad_mode == 1)
      00BD6B C6 00 1E         [ 1] 1997 	ld	a, _configuration_variables+9
      00BD6E 4A               [ 1] 1998 	dec	a
      00BD6F 26 0A            [ 1] 1999 	jrne	00142$
                           000930  2000 	C$ebike_app.c$1060$8_0$508 ==.
                                   2001 ;	ebike_app.c: 1060: configuration_variables.ui8_offroad_mode = 0;
      00BD71 35 00 00 1E      [ 1] 2002 	mov	_configuration_variables+9, #0x00
                           000934  2003 	C$ebike_app.c$1063$8_0$508 ==.
                                   2004 ;	ebike_app.c: 1063: configuration_variables.ui8_function_code = STREET_FUNCTION_ENABLED;
      00BD75 35 0D 00 39      [ 1] 2005 	mov	_configuration_variables+36, #0x0d
      00BD79 20 14            [ 2] 2006 	jra	00154$
      00BD7B                       2007 00142$:
                           00093A  2008 	C$ebike_app.c$1068$8_0$509 ==.
                                   2009 ;	ebike_app.c: 1068: configuration_variables.ui8_offroad_mode = 1;
      00BD7B 35 01 00 1E      [ 1] 2010 	mov	_configuration_variables+9, #0x01
                           00093E  2011 	C$ebike_app.c$1071$8_0$509 ==.
                                   2012 ;	ebike_app.c: 1071: configuration_variables.ui8_function_code = OFFROAD_FUNCTION_ENABLED;
      00BD7F 35 0C 00 39      [ 1] 2013 	mov	_configuration_variables+36, #0x0c
      00BD83 20 0A            [ 2] 2014 	jra	00154$
      00BD85                       2015 00147$:
                           000944  2016 	C$ebike_app.c$1079$6_0$510 ==.
                                   2017 ;	ebike_app.c: 1079: ui8_lights_flag = 0;
      00BD85 72 5F 02 50      [ 1] 2018 	clr	_ui8_lights_flag+0
      00BD89 20 04            [ 2] 2019 	jra	00154$
      00BD8B                       2020 00153$:
                           00094A  2021 	C$ebike_app.c$1086$4_0$511 ==.
                                   2022 ;	ebike_app.c: 1086: ui8_mode_flag = 0;
      00BD8B 72 5F 02 51      [ 1] 2023 	clr	_ui8_mode_flag+0
      00BD8F                       2024 00154$:
                           00094E  2025 	C$ebike_app.c$1093$3_0$488 ==.
                                   2026 ;	ebike_app.c: 1093: if(ui8_assist_level == ASSIST_PEDAL_LEVEL2)
      00BD8F C6 01 FF         [ 1] 2027 	ld	a, _ui8_assist_level+0
                           000951  2028 	C$ebike_app.c$1111$3_0$488 ==.
                                   2029 ;	ebike_app.c: 1111: if(ui8_assist_level == ASSIST_PEDAL_LEVEL3)
      00BD92 C6 01 FF         [ 1] 2030 	ld	a, _ui8_assist_level+0
                           000954  2031 	C$ebike_app.c$1128$3_0$488 ==.
                                   2032 ;	ebike_app.c: 1128: if(ui8_assist_level == ASSIST_PEDAL_LEVEL4)
      00BD95 C6 01 FF         [ 1] 2033 	ld	a, _ui8_assist_level+0
                           000957  2034 	C$ebike_app.c$1202$3_0$488 ==.
                                   2035 ;	ebike_app.c: 1202: ui8_walk_assist_current_per_cent = 0;
      00BD98 72 5F 02 4B      [ 1] 2036 	clr	_ui8_walk_assist_current_per_cent+0
                           00095B  2037 	C$ebike_app.c$1206$3_0$488 ==.
                                   2038 ;	ebike_app.c: 1206: ebike_app_set_battery_max_current(configuration_variables.ui8_battery_max_current);
      00BD9C C6 00 16         [ 1] 2039 	ld	a, _configuration_variables+1
      00BD9F 88               [ 1] 2040 	push	a
      00BDA0 CD BF A4         [ 4] 2041 	call	_ebike_app_set_battery_max_current
      00BDA3 84               [ 1] 2042 	pop	a
                           000963  2043 	C$ebike_app.c$1209$3_0$488 ==.
                                   2044 ;	ebike_app.c: 1209: ui32_temp = ((uint32_t) configuration_variables.ui16_battery_low_voltage_cut_off_x10 << 8) / ((uint32_t) ADC8BITS_BATTERY_VOLTAGE_PER_ADC_STEP_INVERSE_X256);
      00BDA4 90 CE 00 18      [ 2] 2045 	ldw	y, _configuration_variables+3
      00BDA8 5F               [ 1] 2046 	clrw	x
      00BDA9 4F               [ 1] 2047 	clr	a
      00BDAA 95               [ 1] 2048 	ld	xh, a
      00BDAB 4B 58            [ 1] 2049 	push	#0x58
      00BDAD 4B 00            [ 1] 2050 	push	#0x00
      00BDAF 4B 00            [ 1] 2051 	push	#0x00
      00BDB1 4B 00            [ 1] 2052 	push	#0x00
      00BDB3 9E               [ 1] 2053 	ld	a, xh
      00BDB4 88               [ 1] 2054 	push	a
      00BDB5 90 89            [ 2] 2055 	pushw	y
      00BDB7 9F               [ 1] 2056 	ld	a, xl
      00BDB8 88               [ 1] 2057 	push	a
      00BDB9 CD D7 E1         [ 4] 2058 	call	__divulong
      00BDBC 5B 08            [ 2] 2059 	addw	sp, #8
                           00097D  2060 	C$ebike_app.c$1210$1_0$484 ==.
                                   2061 ;	ebike_app.c: 1210: ui32_temp /= 10;
      00BDBE 4B 0A            [ 1] 2062 	push	#0x0a
      00BDC0 4B 00            [ 1] 2063 	push	#0x00
      00BDC2 4B 00            [ 1] 2064 	push	#0x00
      00BDC4 4B 00            [ 1] 2065 	push	#0x00
      00BDC6 89               [ 2] 2066 	pushw	x
      00BDC7 90 89            [ 2] 2067 	pushw	y
      00BDC9 CD D7 E1         [ 4] 2068 	call	__divulong
      00BDCC 5B 08            [ 2] 2069 	addw	sp, #8
      00BDCE 9F               [ 1] 2070 	ld	a, xl
                           00098E  2071 	C$ebike_app.c$1211$3_0$488 ==.
                                   2072 ;	ebike_app.c: 1211: motor_set_adc_battery_voltage_cut_off((uint8_t) ui32_temp);
      00BDCF 88               [ 1] 2073 	push	a
      00BDD0 CD B1 F1         [ 4] 2074 	call	_motor_set_adc_battery_voltage_cut_off
      00BDD3 84               [ 1] 2075 	pop	a
                           000993  2076 	C$ebike_app.c$1222$3_1$515 ==.
                                   2077 ;	ebike_app.c: 1222: ui16_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_0);
      00BDD4 4B 07            [ 1] 2078 	push	#0x07
      00BDD6 4B 40            [ 1] 2079 	push	#0x40
      00BDD8 5F               [ 1] 2080 	clrw	x
      00BDD9 89               [ 2] 2081 	pushw	x
      00BDDA CD A6 1A         [ 4] 2082 	call	_FLASH_ReadByte
      00BDDD 5B 04            [ 2] 2083 	addw	sp, #4
      00BDDF 5F               [ 1] 2084 	clrw	x
      00BDE0 97               [ 1] 2085 	ld	xl, a
      00BDE1 1F 01            [ 2] 2086 	ldw	(0x01, sp), x
                           0009A2  2087 	C$ebike_app.c$1223$3_1$515 ==.
                                   2088 ;	ebike_app.c: 1223: ui8_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_1);
      00BDE3 4B 08            [ 1] 2089 	push	#0x08
      00BDE5 4B 40            [ 1] 2090 	push	#0x40
      00BDE7 5F               [ 1] 2091 	clrw	x
      00BDE8 89               [ 2] 2092 	pushw	x
      00BDE9 CD A6 1A         [ 4] 2093 	call	_FLASH_ReadByte
      00BDEC 5B 04            [ 2] 2094 	addw	sp, #4
                           0009AD  2095 	C$ebike_app.c$1224$3_1$515 ==.
                                   2096 ;	ebike_app.c: 1224: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xFF00);
      00BDEE 95               [ 1] 2097 	ld	xh, a
      00BDEF 4F               [ 1] 2098 	clr	a
      00BDF0 97               [ 1] 2099 	ld	xl, a
      00BDF1 72 FB 01         [ 2] 2100 	addw	x, (0x01, sp)
                           0009B3  2101 	C$ebike_app.c$1225$3_1$515 ==.
                                   2102 ;	ebike_app.c: 1225: configuration_variables.ui16_wheel_perimeter = ui16_temp;
      00BDF4 CF 00 1A         [ 2] 2103 	ldw	_configuration_variables+5, x
                           0009B6  2104 	C$ebike_app.c$1240$3_1$515 ==.
                                   2105 ;	ebike_app.c: 1240: if(configuration_variables.ui8_offroad_mode)
      00BDF7 C6 00 1E         [ 1] 2106 	ld	a, _configuration_variables+9
      00BDFA 27 0E            [ 1] 2107 	jreq	00156$
                           0009BB  2108 	C$ebike_app.c$1241$3_1$515 ==.
                                   2109 ;	ebike_app.c: 1241: configuration_variables.ui8_wheel_max_speed = FLASH_ReadByte(ADDR_WHEEL_MAX_SPEED);
      00BDFC 4B 09            [ 1] 2110 	push	#0x09
      00BDFE 4B 40            [ 1] 2111 	push	#0x40
      00BE00 5F               [ 1] 2112 	clrw	x
      00BE01 89               [ 2] 2113 	pushw	x
      00BE02 CD A6 1A         [ 4] 2114 	call	_FLASH_ReadByte
      00BE05 5B 04            [ 2] 2115 	addw	sp, #4
      00BE07 C7 00 21         [ 1] 2116 	ld	_configuration_variables+12, a
      00BE0A                       2117 00156$:
                           0009C9  2118 	C$ebike_app.c$1250$3_1$515 ==.
                                   2119 ;	ebike_app.c: 1250: ui8_received_package_flag = 0;
      00BE0A 72 5F 02 23      [ 1] 2120 	clr	_ui8_received_package_flag+0
      00BE0E                       2121 00158$:
                           0009CD  2122 	C$ebike_app.c$1254$2_0$485 ==.
                                   2123 ;	ebike_app.c: 1254: UART2->CR2 |= (1 << 5);
      00BE0E 72 1A 52 45      [ 1] 2124 	bset	21061, #5
      00BE12                       2125 00163$:
                           0009D1  2126 	C$ebike_app.c$1257$1_0$484 ==.
                                   2127 ;	ebike_app.c: 1257: }
      00BE12 5B 02            [ 2] 2128 	addw	sp, #2
                           0009D3  2129 	C$ebike_app.c$1257$1_0$484 ==.
                           0009D3  2130 	XFebike_app$uart_receive_package$0$0 ==.
      00BE14 81               [ 4] 2131 	ret
                           0009D4  2132 	Febike_app$uart_send_package$0$0 ==.
                           0009D4  2133 	C$ebike_app.c$1262$1_0$517 ==.
                                   2134 ;	ebike_app.c: 1262: static void uart_send_package(void)
                                   2135 ;	-----------------------------------------
                                   2136 ;	 function uart_send_package
                                   2137 ;	-----------------------------------------
      00BE15                       2138 _uart_send_package:
      00BE15 52 02            [ 2] 2139 	sub	sp, #2
                           0009D6  2140 	C$ebike_app.c$1270$1_0$517 ==.
                                   2141 ;	ebike_app.c: 1270: ui8_tx_buffer[0] = TX_STX;
      00BE17 35 43 00 0C      [ 1] 2142 	mov	_ui8_tx_buffer+0, #0x43
                           0009DA  2143 	C$ebike_app.c$1273$1_0$517 ==.
                                   2144 ;	ebike_app.c: 1273: configuration_variables.ui8_fault_code = NO_FAULT;
      00BE1B 35 00 00 3A      [ 1] 2145 	mov	_configuration_variables+37, #0x00
                           0009DE  2146 	C$ebike_app.c$1276$1_0$517 ==.
                                   2147 ;	ebike_app.c: 1276: configuration_variables.ui8_working_status &= 0xFE; // bit0 = 0 (battery normal)
      00BE1F C6 00 38         [ 1] 2148 	ld	a, _configuration_variables+35
      00BE22 A4 FE            [ 1] 2149 	and	a, #0xfe
      00BE24 C7 00 38         [ 1] 2150 	ld	_configuration_variables+35, a
                           0009E6  2151 	C$ebike_app.c$1279$1_0$517 ==.
                                   2152 ;	ebike_app.c: 1279: switch(ui8_battery_state_of_charge)
      00BE27 C6 02 36         [ 1] 2153 	ld	a, _ui8_battery_state_of_charge+0
      00BE2A A1 06            [ 1] 2154 	cp	a, #0x06
      00BE2C 23 03            [ 2] 2155 	jrule	00197$
      00BE2E CC BE 7B         [ 2] 2156 	jp	00108$
      00BE31                       2157 00197$:
      00BE31 5F               [ 1] 2158 	clrw	x
      00BE32 97               [ 1] 2159 	ld	xl, a
      00BE33 58               [ 2] 2160 	sllw	x
      00BE34 DE BE 38         [ 2] 2161 	ldw	x, (#00198$, x)
      00BE37 FC               [ 2] 2162 	jp	(x)
      00BE38                       2163 00198$:
      00BE38 BE 46                 2164 	.dw	#00101$
      00BE3A BE 55                 2165 	.dw	#00102$
      00BE3C BE 5B                 2166 	.dw	#00103$
      00BE3E BE 61                 2167 	.dw	#00104$
      00BE40 BE 67                 2168 	.dw	#00105$
      00BE42 BE 6D                 2169 	.dw	#00106$
      00BE44 BE 73                 2170 	.dw	#00107$
                           000A05  2171 	C$ebike_app.c$1281$2_0$518 ==.
                                   2172 ;	ebike_app.c: 1281: case 0:
      00BE46                       2173 00101$:
                           000A05  2174 	C$ebike_app.c$1282$2_0$518 ==.
                                   2175 ;	ebike_app.c: 1282: configuration_variables.ui8_working_status |= 0x01; // bit0 = 1 (battery undervoltage)
      00BE46 C6 00 38         [ 1] 2176 	ld	a, _configuration_variables+35
      00BE49 AA 01            [ 1] 2177 	or	a, #0x01
      00BE4B C7 00 38         [ 1] 2178 	ld	_configuration_variables+35, a
                           000A0D  2179 	C$ebike_app.c$1283$2_0$518 ==.
                                   2180 ;	ebike_app.c: 1283: ui8_tx_buffer[1] = 0x00;
      00BE4E 35 00 00 0D      [ 1] 2181 	mov	_ui8_tx_buffer+1, #0x00
                           000A11  2182 	C$ebike_app.c$1284$2_0$518 ==.
                                   2183 ;	ebike_app.c: 1284: break;
      00BE52 CC BE 7B         [ 2] 2184 	jp	00108$
                           000A14  2185 	C$ebike_app.c$1286$2_0$518 ==.
                                   2186 ;	ebike_app.c: 1286: case 1:
      00BE55                       2187 00102$:
                           000A14  2188 	C$ebike_app.c$1287$2_0$518 ==.
                                   2189 ;	ebike_app.c: 1287: ui8_tx_buffer[1] = 0x00; // Battery 0/4 (empty and blinking)
      00BE55 35 00 00 0D      [ 1] 2190 	mov	_ui8_tx_buffer+1, #0x00
                           000A18  2191 	C$ebike_app.c$1288$2_0$518 ==.
                                   2192 ;	ebike_app.c: 1288: break;
      00BE59 20 20            [ 2] 2193 	jra	00108$
                           000A1A  2194 	C$ebike_app.c$1290$2_0$518 ==.
                                   2195 ;	ebike_app.c: 1290: case 2:
      00BE5B                       2196 00103$:
                           000A1A  2197 	C$ebike_app.c$1291$2_0$518 ==.
                                   2198 ;	ebike_app.c: 1291: ui8_tx_buffer[1] = 0x02; // Battery 1/4
      00BE5B 35 02 00 0D      [ 1] 2199 	mov	_ui8_tx_buffer+1, #0x02
                           000A1E  2200 	C$ebike_app.c$1292$2_0$518 ==.
                                   2201 ;	ebike_app.c: 1292: break;
      00BE5F 20 1A            [ 2] 2202 	jra	00108$
                           000A20  2203 	C$ebike_app.c$1294$2_0$518 ==.
                                   2204 ;	ebike_app.c: 1294: case 3:
      00BE61                       2205 00104$:
                           000A20  2206 	C$ebike_app.c$1295$2_0$518 ==.
                                   2207 ;	ebike_app.c: 1295: ui8_tx_buffer[1] = 0x06; // Battery 2/4
      00BE61 35 06 00 0D      [ 1] 2208 	mov	_ui8_tx_buffer+1, #0x06
                           000A24  2209 	C$ebike_app.c$1296$2_0$518 ==.
                                   2210 ;	ebike_app.c: 1296: break;
      00BE65 20 14            [ 2] 2211 	jra	00108$
                           000A26  2212 	C$ebike_app.c$1298$2_0$518 ==.
                                   2213 ;	ebike_app.c: 1298: case 4:
      00BE67                       2214 00105$:
                           000A26  2215 	C$ebike_app.c$1299$2_0$518 ==.
                                   2216 ;	ebike_app.c: 1299: ui8_tx_buffer[1] = 0x09; // Battery 3/4
      00BE67 35 09 00 0D      [ 1] 2217 	mov	_ui8_tx_buffer+1, #0x09
                           000A2A  2218 	C$ebike_app.c$1300$2_0$518 ==.
                                   2219 ;	ebike_app.c: 1300: break;
      00BE6B 20 0E            [ 2] 2220 	jra	00108$
                           000A2C  2221 	C$ebike_app.c$1302$2_0$518 ==.
                                   2222 ;	ebike_app.c: 1302: case 5:
      00BE6D                       2223 00106$:
                           000A2C  2224 	C$ebike_app.c$1303$2_0$518 ==.
                                   2225 ;	ebike_app.c: 1303: ui8_tx_buffer[1] = 0x0C; // Battery 4/4 (full)
      00BE6D 35 0C 00 0D      [ 1] 2226 	mov	_ui8_tx_buffer+1, #0x0c
                           000A30  2227 	C$ebike_app.c$1304$2_0$518 ==.
                                   2228 ;	ebike_app.c: 1304: break;
      00BE71 20 08            [ 2] 2229 	jra	00108$
                           000A32  2230 	C$ebike_app.c$1306$2_0$518 ==.
                                   2231 ;	ebike_app.c: 1306: case 6:
      00BE73                       2232 00107$:
                           000A32  2233 	C$ebike_app.c$1307$2_0$518 ==.
                                   2234 ;	ebike_app.c: 1307: ui8_tx_buffer[1] = 0x0C; // Battery 4/4 (full)
      00BE73 35 0C 00 0D      [ 1] 2235 	mov	_ui8_tx_buffer+1, #0x0c
                           000A36  2236 	C$ebike_app.c$1308$2_0$518 ==.
                                   2237 ;	ebike_app.c: 1308: configuration_variables.ui8_fault_code = OVERVOLTAGE; // Fault overvoltage
      00BE77 35 08 00 3A      [ 1] 2238 	mov	_configuration_variables+37, #0x08
                           000A3A  2239 	C$ebike_app.c$1310$1_0$517 ==.
                                   2240 ;	ebike_app.c: 1310: }
      00BE7B                       2241 00108$:
                           000A3A  2242 	C$ebike_app.c$1392$1_0$517 ==.
                                   2243 ;	ebike_app.c: 1392: ui8_tx_buffer[3] = 0x46;
      00BE7B 35 46 00 0F      [ 1] 2244 	mov	_ui8_tx_buffer+3, #0x46
                           000A3E  2245 	C$ebike_app.c$1393$1_0$517 ==.
                                   2246 ;	ebike_app.c: 1393: ui8_tx_buffer[4] = 0x46;
      00BE7F 35 46 00 10      [ 1] 2247 	mov	_ui8_tx_buffer+4, #0x46
                           000A42  2248 	C$ebike_app.c$1396$1_0$517 ==.
                                   2249 ;	ebike_app.c: 1396: if(ui8_system_state & ERROR_MOTOR_BLOCKED)
      00BE83 C6 01 F9         [ 1] 2250 	ld	a, _ui8_system_state+0
      00BE86 44               [ 1] 2251 	srl	a
      00BE87 24 06            [ 1] 2252 	jrnc	00121$
                           000A48  2253 	C$ebike_app.c$1398$2_0$519 ==.
                                   2254 ;	ebike_app.c: 1398: configuration_variables.ui8_fault_code = EBIKE_WHEEL_BLOCKED;
      00BE89 35 04 00 3A      [ 1] 2255 	mov	_configuration_variables+37, #0x04
      00BE8D 20 39            [ 2] 2256 	jra	00122$
      00BE8F                       2257 00121$:
                           000A4E  2258 	C$ebike_app.c$1400$1_0$517 ==.
                                   2259 ;	ebike_app.c: 1400: else if(ui8_overtemperature)
      00BE8F 72 5D 02 2C      [ 1] 2260 	tnz	_ui8_overtemperature+0
      00BE93 27 2F            [ 1] 2261 	jreq	00118$
                           000A54  2262 	C$ebike_app.c$1402$2_0$520 ==.
                                   2263 ;	ebike_app.c: 1402: if(ui8_overtemperature == 2)
      00BE95 C6 02 2C         [ 1] 2264 	ld	a, _ui8_overtemperature+0
      00BE98 A1 02            [ 1] 2265 	cp	a, #0x02
      00BE9A 26 06            [ 1] 2266 	jrne	00115$
                           000A5B  2267 	C$ebike_app.c$1404$3_0$521 ==.
                                   2268 ;	ebike_app.c: 1404: configuration_variables.ui8_fault_code = OVERTEMPERATURE;    
      00BE9C 35 06 00 3A      [ 1] 2269 	mov	_configuration_variables+37, #0x06
      00BEA0 20 26            [ 2] 2270 	jra	00122$
      00BEA2                       2271 00115$:
                           000A61  2272 	C$ebike_app.c$1409$3_0$522 ==.
                                   2273 ;	ebike_app.c: 1409: if(ui8_overtemperature_counter > 2)
      00BEA2 C6 00 59         [ 1] 2274 	ld	a, _uart_send_package_ui8_overtemperature_counter_196608_522+0
      00BEA5 A1 02            [ 1] 2275 	cp	a, #0x02
      00BEA7 23 06            [ 2] 2276 	jrule	00110$
                           000A68  2277 	C$ebike_app.c$1411$4_0$523 ==.
                                   2278 ;	ebike_app.c: 1411: configuration_variables.ui8_fault_code = OVERTEMPERATURE;
      00BEA9 35 06 00 3A      [ 1] 2279 	mov	_configuration_variables+37, #0x06
      00BEAD 20 04            [ 2] 2280 	jra	00111$
      00BEAF                       2281 00110$:
                           000A6E  2282 	C$ebike_app.c$1415$4_0$524 ==.
                                   2283 ;	ebike_app.c: 1415: configuration_variables.ui8_fault_code = NO_FAULT;
      00BEAF 35 00 00 3A      [ 1] 2284 	mov	_configuration_variables+37, #0x00
      00BEB3                       2285 00111$:
                           000A72  2286 	C$ebike_app.c$1418$3_0$522 ==.
                                   2287 ;	ebike_app.c: 1418: if(++ui8_overtemperature_counter > 5) ui8_overtemperature_counter = 0;
      00BEB3 72 5C 00 59      [ 1] 2288 	inc	_uart_send_package_ui8_overtemperature_counter_196608_522+0
      00BEB7 C6 00 59         [ 1] 2289 	ld	a, _uart_send_package_ui8_overtemperature_counter_196608_522+0
      00BEBA A1 05            [ 1] 2290 	cp	a, #0x05
      00BEBC 23 0A            [ 2] 2291 	jrule	00122$
      00BEBE 72 5F 00 59      [ 1] 2292 	clr	_uart_send_package_ui8_overtemperature_counter_196608_522+0
      00BEC2 20 04            [ 2] 2293 	jra	00122$
      00BEC4                       2294 00118$:
                           000A83  2295 	C$ebike_app.c$1423$2_0$525 ==.
                                   2296 ;	ebike_app.c: 1423: configuration_variables.ui8_fault_code = NO_FAULT;
      00BEC4 35 00 00 3A      [ 1] 2297 	mov	_configuration_variables+37, #0x00
      00BEC8                       2298 00122$:
                           000A87  2299 	C$ebike_app.c$1427$1_0$517 ==.
                                   2300 ;	ebike_app.c: 1427: if(configuration_variables.ui8_function_code != NO_FUNCTION)
      00BEC8 C6 00 39         [ 1] 2301 	ld	a, _configuration_variables+36
      00BECB 27 17            [ 1] 2302 	jreq	00127$
                           000A8C  2303 	C$ebike_app.c$1430$2_0$526 ==.
                                   2304 ;	ebike_app.c: 1430: if(configuration_variables.ui8_function_code > FUNCTION_CODE_RANGE)
      00BECD C6 00 39         [ 1] 2305 	ld	a, _configuration_variables+36
      00BED0 A1 09            [ 1] 2306 	cp	a, #0x09
      00BED2 23 08            [ 2] 2307 	jrule	00124$
                           000A93  2308 	C$ebike_app.c$1432$2_0$526 ==.
                                   2309 ;	ebike_app.c: 1432: ui8_tx_buffer[5] = configuration_variables.ui8_fault_code;
      00BED4 C6 00 3A         [ 1] 2310 	ld	a, _configuration_variables+37
      00BED7 C7 00 11         [ 1] 2311 	ld	_ui8_tx_buffer+5, a
      00BEDA 20 0E            [ 2] 2312 	jra	00128$
      00BEDC                       2313 00124$:
                           000A9B  2314 	C$ebike_app.c$1434$2_0$526 ==.
                                   2315 ;	ebike_app.c: 1434: ui8_tx_buffer[5] = configuration_variables.ui8_function_code;
      00BEDC C6 00 39         [ 1] 2316 	ld	a, _configuration_variables+36
      00BEDF C7 00 11         [ 1] 2317 	ld	_ui8_tx_buffer+5, a
      00BEE2 20 06            [ 2] 2318 	jra	00128$
      00BEE4                       2319 00127$:
                           000AA3  2320 	C$ebike_app.c$1439$2_0$527 ==.
                                   2321 ;	ebike_app.c: 1439: ui8_tx_buffer[5] = configuration_variables.ui8_fault_code;
      00BEE4 C6 00 3A         [ 1] 2322 	ld	a, _configuration_variables+37
      00BEE7 C7 00 11         [ 1] 2323 	ld	_ui8_tx_buffer+5, a
      00BEEA                       2324 00128$:
                           000AA9  2325 	C$ebike_app.c$1443$1_0$517 ==.
                                   2326 ;	ebike_app.c: 1443: if(ui16_oem_wheel_speed == 0)
      00BEEA CE 02 21         [ 2] 2327 	ldw	x, _ui16_oem_wheel_speed+0
      00BEED 26 12            [ 1] 2328 	jrne	00130$
                           000AAE  2329 	C$ebike_app.c$1445$2_0$528 ==.
                                   2330 ;	ebike_app.c: 1445: ui8_tx_buffer[6] = 0x07;
      00BEEF 35 07 00 12      [ 1] 2331 	mov	_ui8_tx_buffer+6, #0x07
                           000AB2  2332 	C$ebike_app.c$1446$2_0$528 ==.
                                   2333 ;	ebike_app.c: 1446: ui8_tx_buffer[7] = 0x07;
      00BEF3 35 07 00 13      [ 1] 2334 	mov	_ui8_tx_buffer+7, #0x07
                           000AB6  2335 	C$ebike_app.c$1450$2_0$528 ==.
                                   2336 ;	ebike_app.c: 1450: configuration_variables.ui8_working_status &= 0x7F;
      00BEF7 C6 00 38         [ 1] 2337 	ld	a, _configuration_variables+35
      00BEFA A4 7F            [ 1] 2338 	and	a, #0x7f
      00BEFC C7 00 38         [ 1] 2339 	ld	_configuration_variables+35, a
      00BEFF 20 1A            [ 2] 2340 	jra	00131$
      00BF01                       2341 00130$:
                           000AC0  2342 	C$ebike_app.c$1455$2_0$529 ==.
                                   2343 ;	ebike_app.c: 1455: ui8_tx_buffer[6] = (uint8_t) (ui16_oem_wheel_speed & 0xFF);
      00BF01 C6 02 22         [ 1] 2344 	ld	a, _ui16_oem_wheel_speed+1
      00BF04 C7 00 12         [ 1] 2345 	ld	_ui8_tx_buffer+6, a
                           000AC6  2346 	C$ebike_app.c$1456$2_0$529 ==.
                                   2347 ;	ebike_app.c: 1456: ui8_tx_buffer[7] = (uint8_t) (ui16_oem_wheel_speed >> 8);
      00BF07 C6 02 21         [ 1] 2348 	ld	a, _ui16_oem_wheel_speed+0
      00BF0A 6B 02            [ 1] 2349 	ld	(0x02, sp), a
      00BF0C 0F 01            [ 1] 2350 	clr	(0x01, sp)
      00BF0E 7B 02            [ 1] 2351 	ld	a, (0x02, sp)
      00BF10 C7 00 13         [ 1] 2352 	ld	_ui8_tx_buffer+7, a
                           000AD2  2353 	C$ebike_app.c$1460$2_0$529 ==.
                                   2354 ;	ebike_app.c: 1460: configuration_variables.ui8_working_status |= 0x80;
      00BF13 C6 00 38         [ 1] 2355 	ld	a, _configuration_variables+35
      00BF16 AA 80            [ 1] 2356 	or	a, #0x80
      00BF18 C7 00 38         [ 1] 2357 	ld	_configuration_variables+35, a
      00BF1B                       2358 00131$:
                           000ADA  2359 	C$ebike_app.c$1469$1_0$517 ==.
                                   2360 ;	ebike_app.c: 1469: if(configuration_variables.ui8_working_status & 0xC0)
      00BF1B C6 00 38         [ 1] 2361 	ld	a, _configuration_variables+35
      00BF1E A5 C0            [ 1] 2362 	bcp	a, #0xc0
      00BF20 27 0A            [ 1] 2363 	jreq	00133$
                           000AE1  2364 	C$ebike_app.c$1472$2_0$530 ==.
                                   2365 ;	ebike_app.c: 1472: configuration_variables.ui8_working_status |= 0x04;
      00BF22 C6 00 38         [ 1] 2366 	ld	a, _configuration_variables+35
      00BF25 AA 04            [ 1] 2367 	or	a, #0x04
      00BF27 C7 00 38         [ 1] 2368 	ld	_configuration_variables+35, a
      00BF2A 20 08            [ 2] 2369 	jra	00134$
      00BF2C                       2370 00133$:
                           000AEB  2371 	C$ebike_app.c$1477$2_0$531 ==.
                                   2372 ;	ebike_app.c: 1477: configuration_variables.ui8_working_status &= 0xFB;
      00BF2C C6 00 38         [ 1] 2373 	ld	a, _configuration_variables+35
      00BF2F A4 FB            [ 1] 2374 	and	a, #0xfb
      00BF31 C7 00 38         [ 1] 2375 	ld	_configuration_variables+35, a
      00BF34                       2376 00134$:
                           000AF3  2377 	C$ebike_app.c$1482$1_0$517 ==.
                                   2378 ;	ebike_app.c: 1482: ui8_tx_buffer[2] = (configuration_variables.ui8_working_status & 0x1F);
      00BF34 C6 00 38         [ 1] 2379 	ld	a, _configuration_variables+35
      00BF37 A4 1F            [ 1] 2380 	and	a, #0x1f
      00BF39 C7 00 0E         [ 1] 2381 	ld	_ui8_tx_buffer+2, a
                           000AFB  2382 	C$ebike_app.c$1485$1_0$517 ==.
                                   2383 ;	ebike_app.c: 1485: configuration_variables.ui8_working_status &= 0x3B;	
      00BF3C C6 00 38         [ 1] 2384 	ld	a, _configuration_variables+35
      00BF3F A4 3B            [ 1] 2385 	and	a, #0x3b
      00BF41 C7 00 38         [ 1] 2386 	ld	_configuration_variables+35, a
                           000B03  2387 	C$ebike_app.c$1488$1_0$517 ==.
                                   2388 ;	ebike_app.c: 1488: ui8_tx_check_code = 0x00;
      00BF44 4F               [ 1] 2389 	clr	a
      00BF45 90 97            [ 1] 2390 	ld	yl, a
                           000B06  2391 	C$ebike_app.c$1489$2_0$517 ==.
                                   2392 ;	ebike_app.c: 1489: for(ui8_i = 0; ui8_i < TX_CHECK_CODE; ui8_i++)
      00BF47 4F               [ 1] 2393 	clr	a
      00BF48                       2394 00137$:
                           000B07  2395 	C$ebike_app.c$1491$3_0$533 ==.
                                   2396 ;	ebike_app.c: 1491: ui8_tx_check_code += ui8_tx_buffer[ui8_i];
      00BF48 5F               [ 1] 2397 	clrw	x
      00BF49 97               [ 1] 2398 	ld	xl, a
      00BF4A 1C 00 0C         [ 2] 2399 	addw	x, #(_ui8_tx_buffer + 0)
      00BF4D 88               [ 1] 2400 	push	a
      00BF4E F6               [ 1] 2401 	ld	a, (x)
      00BF4F 6B 03            [ 1] 2402 	ld	(0x03, sp), a
      00BF51 84               [ 1] 2403 	pop	a
      00BF52 72 F9 01         [ 2] 2404 	addw	y, (1, sp)
                           000B14  2405 	C$ebike_app.c$1489$2_0$532 ==.
                                   2406 ;	ebike_app.c: 1489: for(ui8_i = 0; ui8_i < TX_CHECK_CODE; ui8_i++)
      00BF55 4C               [ 1] 2407 	inc	a
      00BF56 A1 08            [ 1] 2408 	cp	a, #0x08
      00BF58 25 EE            [ 1] 2409 	jrc	00137$
                           000B19  2410 	C$ebike_app.c$1493$1_0$517 ==.
                                   2411 ;	ebike_app.c: 1493: ui8_tx_buffer[TX_CHECK_CODE] = ui8_tx_check_code;
      00BF5A AE 00 14         [ 2] 2412 	ldw	x, #(_ui8_tx_buffer + 8)
      00BF5D 90 9F            [ 1] 2413 	ld	a, yl
      00BF5F F7               [ 1] 2414 	ld	(x), a
                           000B1F  2415 	C$ebike_app.c$1496$2_0$517 ==.
                                   2416 ;	ebike_app.c: 1496: for(ui8_i = 0; ui8_i < UART_TX_BUFFER_LEN; ui8_i++)
      00BF60 0F 02            [ 1] 2417 	clr	(0x02, sp)
      00BF62                       2418 00139$:
                           000B21  2419 	C$ebike_app.c$1498$3_0$535 ==.
                                   2420 ;	ebike_app.c: 1498: putchar(ui8_tx_buffer[ui8_i]);
      00BF62 5F               [ 1] 2421 	clrw	x
      00BF63 7B 02            [ 1] 2422 	ld	a, (0x02, sp)
      00BF65 97               [ 1] 2423 	ld	xl, a
      00BF66 1C 00 0C         [ 2] 2424 	addw	x, #(_ui8_tx_buffer + 0)
      00BF69 F6               [ 1] 2425 	ld	a, (x)
      00BF6A 5F               [ 1] 2426 	clrw	x
      00BF6B 97               [ 1] 2427 	ld	xl, a
      00BF6C 89               [ 2] 2428 	pushw	x
      00BF6D CD A8 7D         [ 4] 2429 	call	_putchar
      00BF70 5B 02            [ 2] 2430 	addw	sp, #2
                           000B31  2431 	C$ebike_app.c$1496$2_0$534 ==.
                                   2432 ;	ebike_app.c: 1496: for(ui8_i = 0; ui8_i < UART_TX_BUFFER_LEN; ui8_i++)
      00BF72 0C 02            [ 1] 2433 	inc	(0x02, sp)
      00BF74 7B 02            [ 1] 2434 	ld	a, (0x02, sp)
      00BF76 A1 09            [ 1] 2435 	cp	a, #0x09
      00BF78 25 E8            [ 1] 2436 	jrc	00139$
                           000B39  2437 	C$ebike_app.c$1501$2_0$517 ==.
                                   2438 ;	ebike_app.c: 1501: }
      00BF7A 5B 02            [ 2] 2439 	addw	sp, #2
                           000B3B  2440 	C$ebike_app.c$1501$2_0$517 ==.
                           000B3B  2441 	XFebike_app$uart_send_package$0$0 ==.
      00BF7C 81               [ 4] 2442 	ret
                           000B3C  2443 	Febike_app$ebike_app_set_target_adc_battery_max_current$0$0 ==.
                           000B3C  2444 	C$ebike_app.c$1506$2_0$537 ==.
                                   2445 ;	ebike_app.c: 1506: static void ebike_app_set_target_adc_battery_max_current(uint8_t ui8_value) // each 1 unit = 0.625 amps
                                   2446 ;	-----------------------------------------
                                   2447 ;	 function ebike_app_set_target_adc_battery_max_current
                                   2448 ;	-----------------------------------------
      00BF7D                       2449 _ebike_app_set_target_adc_battery_max_current:
                           000B3C  2450 	C$ebike_app.c$1509$1_0$537 ==.
                                   2451 ;	ebike_app.c: 1509: if(ui8_value > ui8_adc_battery_current_max) ui8_value = ui8_adc_battery_current_max;
      00BF7D 7B 03            [ 1] 2452 	ld	a, (0x03, sp)
      00BF7F C1 01 F3         [ 1] 2453 	cp	a, _ui8_adc_battery_current_max+0
      00BF82 23 05            [ 2] 2454 	jrule	00102$
      00BF84 C6 01 F3         [ 1] 2455 	ld	a, _ui8_adc_battery_current_max+0
      00BF87 6B 03            [ 1] 2456 	ld	(0x03, sp), a
      00BF89                       2457 00102$:
                           000B48  2458 	C$ebike_app.c$1511$1_0$537 ==.
                                   2459 ;	ebike_app.c: 1511: ui8_adc_target_battery_max_current = ui8_adc_battery_current_offset + ui8_value;
      00BF89 C6 01 EF         [ 1] 2460 	ld	a, _ui8_adc_battery_current_offset+0
      00BF8C 1B 03            [ 1] 2461 	add	a, (0x03, sp)
      00BF8E C7 01 F1         [ 1] 2462 	ld	_ui8_adc_target_battery_max_current+0, a
                           000B50  2463 	C$ebike_app.c$1512$1_0$537 ==.
                                   2464 ;	ebike_app.c: 1512: }
                           000B50  2465 	C$ebike_app.c$1512$1_0$537 ==.
                           000B50  2466 	XFebike_app$ebike_app_set_target_adc_battery_max_current$0$0 ==.
      00BF91 81               [ 4] 2467 	ret
                           000B51  2468 	Febike_app$ebike_app_set_target_adc_motor_max_current$0$0 ==.
                           000B51  2469 	C$ebike_app.c$1517$1_0$539 ==.
                                   2470 ;	ebike_app.c: 1517: static void ebike_app_set_target_adc_motor_max_current(uint8_t ui8_value) // each 1 unit = 0.625 amps
                                   2471 ;	-----------------------------------------
                                   2472 ;	 function ebike_app_set_target_adc_motor_max_current
                                   2473 ;	-----------------------------------------
      00BF92                       2474 _ebike_app_set_target_adc_motor_max_current:
                           000B51  2475 	C$ebike_app.c$1520$1_0$539 ==.
                                   2476 ;	ebike_app.c: 1520: if(ui8_value > ui8_adc_motor_current_max) ui8_value = ui8_adc_motor_current_max;
      00BF92 7B 03            [ 1] 2477 	ld	a, (0x03, sp)
      00BF94 C1 01 F4         [ 1] 2478 	cp	a, _ui8_adc_motor_current_max+0
      00BF97 23 05            [ 2] 2479 	jrule	00102$
      00BF99 C6 01 F4         [ 1] 2480 	ld	a, _ui8_adc_motor_current_max+0
      00BF9C 6B 03            [ 1] 2481 	ld	(0x03, sp), a
      00BF9E                       2482 00102$:
                           000B5D  2483 	C$ebike_app.c$1522$1_0$539 ==.
                                   2484 ;	ebike_app.c: 1522: ui8_adc_target_motor_max_current = ui8_value;
      00BF9E 7B 03            [ 1] 2485 	ld	a, (0x03, sp)
      00BFA0 C7 01 F2         [ 1] 2486 	ld	_ui8_adc_target_motor_max_current+0, a
                           000B62  2487 	C$ebike_app.c$1523$1_0$539 ==.
                                   2488 ;	ebike_app.c: 1523: }
                           000B62  2489 	C$ebike_app.c$1523$1_0$539 ==.
                           000B62  2490 	XFebike_app$ebike_app_set_target_adc_motor_max_current$0$0 ==.
      00BFA3 81               [ 4] 2491 	ret
                           000B63  2492 	Febike_app$ebike_app_set_battery_max_current$0$0 ==.
                           000B63  2493 	C$ebike_app.c$1528$1_0$541 ==.
                                   2494 ;	ebike_app.c: 1528: static void ebike_app_set_battery_max_current(uint8_t ui8_value) // in amps
                                   2495 ;	-----------------------------------------
                                   2496 ;	 function ebike_app_set_battery_max_current
                                   2497 ;	-----------------------------------------
      00BFA4                       2498 _ebike_app_set_battery_max_current:
                           000B63  2499 	C$ebike_app.c$1531$1_0$541 ==.
                                   2500 ;	ebike_app.c: 1531: ui8_adc_battery_current_max = ((((uint16_t) ui8_value) << 8) / 160);
      00BFA4 7B 03            [ 1] 2501 	ld	a, (0x03, sp)
      00BFA6 95               [ 1] 2502 	ld	xh, a
      00BFA7 4F               [ 1] 2503 	clr	a
      00BFA8 97               [ 1] 2504 	ld	xl, a
      00BFA9 90 AE 00 A0      [ 2] 2505 	ldw	y, #0x00a0
      00BFAD 65               [ 2] 2506 	divw	x, y
      00BFAE 9F               [ 1] 2507 	ld	a, xl
      00BFAF C7 01 F3         [ 1] 2508 	ld	_ui8_adc_battery_current_max+0, a
                           000B71  2509 	C$ebike_app.c$1533$1_0$541 ==.
                                   2510 ;	ebike_app.c: 1533: if(ui8_adc_battery_current_max > ADC_BATTERY_CURRENT_MAX)
      00BFB2 C6 01 F3         [ 1] 2511 	ld	a, _ui8_adc_battery_current_max+0
      00BFB5 A1 1C            [ 1] 2512 	cp	a, #0x1c
      00BFB7 23 04            [ 2] 2513 	jrule	00103$
                           000B78  2514 	C$ebike_app.c$1534$1_0$541 ==.
                                   2515 ;	ebike_app.c: 1534: ui8_adc_battery_current_max = ADC_BATTERY_CURRENT_MAX;
      00BFB9 35 1C 01 F3      [ 1] 2516 	mov	_ui8_adc_battery_current_max+0, #0x1c
      00BFBD                       2517 00103$:
                           000B7C  2518 	C$ebike_app.c$1535$1_0$541 ==.
                                   2519 ;	ebike_app.c: 1535: }
                           000B7C  2520 	C$ebike_app.c$1535$1_0$541 ==.
                           000B7C  2521 	XFebike_app$ebike_app_set_battery_max_current$0$0 ==.
      00BFBD 81               [ 4] 2522 	ret
                           000B7D  2523 	Febike_app$ebike_app_set_motor_max_current$0$0 ==.
                           000B7D  2524 	C$ebike_app.c$1540$1_0$543 ==.
                                   2525 ;	ebike_app.c: 1540: static void ebike_app_set_motor_max_current(uint8_t ui8_value) // in amps
                                   2526 ;	-----------------------------------------
                                   2527 ;	 function ebike_app_set_motor_max_current
                                   2528 ;	-----------------------------------------
      00BFBE                       2529 _ebike_app_set_motor_max_current:
                           000B7D  2530 	C$ebike_app.c$1543$1_0$543 ==.
                                   2531 ;	ebike_app.c: 1543: ui8_adc_motor_current_max = ((((uint16_t) ui8_value) << 8) / 160);
      00BFBE 7B 03            [ 1] 2532 	ld	a, (0x03, sp)
      00BFC0 95               [ 1] 2533 	ld	xh, a
      00BFC1 4F               [ 1] 2534 	clr	a
      00BFC2 97               [ 1] 2535 	ld	xl, a
      00BFC3 90 AE 00 A0      [ 2] 2536 	ldw	y, #0x00a0
      00BFC7 65               [ 2] 2537 	divw	x, y
      00BFC8 9F               [ 1] 2538 	ld	a, xl
      00BFC9 C7 01 F4         [ 1] 2539 	ld	_ui8_adc_motor_current_max+0, a
                           000B8B  2540 	C$ebike_app.c$1545$1_0$543 ==.
                                   2541 ;	ebike_app.c: 1545: if(ui8_adc_motor_current_max > ADC_MOTOR_PHASE_CURRENT_MAX)
      00BFCC C6 01 F4         [ 1] 2542 	ld	a, _ui8_adc_motor_current_max+0
      00BFCF A1 30            [ 1] 2543 	cp	a, #0x30
      00BFD1 23 04            [ 2] 2544 	jrule	00103$
                           000B92  2545 	C$ebike_app.c$1546$1_0$543 ==.
                                   2546 ;	ebike_app.c: 1546: ui8_adc_motor_current_max = ADC_MOTOR_PHASE_CURRENT_MAX;
      00BFD3 35 30 01 F4      [ 1] 2547 	mov	_ui8_adc_motor_current_max+0, #0x30
      00BFD7                       2548 00103$:
                           000B96  2549 	C$ebike_app.c$1547$1_0$543 ==.
                                   2550 ;	ebike_app.c: 1547: }
                           000B96  2551 	C$ebike_app.c$1547$1_0$543 ==.
                           000B96  2552 	XFebike_app$ebike_app_set_motor_max_current$0$0 ==.
      00BFD7 81               [ 4] 2553 	ret
                           000B97  2554 	Febike_app$ebike_app_set_torque_assist_ratio$0$0 ==.
                           000B97  2555 	C$ebike_app.c$1549$1_0$545 ==.
                                   2556 ;	ebike_app.c: 1549: static void ebike_app_set_torque_assist_ratio(void)
                                   2557 ;	-----------------------------------------
                                   2558 ;	 function ebike_app_set_torque_assist_ratio
                                   2559 ;	-----------------------------------------
      00BFD8                       2560 _ebike_app_set_torque_assist_ratio:
      00BFD8 52 02            [ 2] 2561 	sub	sp, #2
                           000B99  2562 	C$ebike_app.c$1553$1_0$545 ==.
                                   2563 ;	ebike_app.c: 1553: f_torque_assist_ratio = (90.0 * 10.0) / (30.0 / 0.625) / 10.0 * (255.0 / (float)(ui8_adc_torque_sensor_max_value - ui8_adc_torque_sensor_min_value));
      00BFDA 5F               [ 1] 2564 	clrw	x
      00BFDB C6 01 EE         [ 1] 2565 	ld	a, _ui8_adc_torque_sensor_max_value+0
      00BFDE 97               [ 1] 2566 	ld	xl, a
      00BFDF C6 01 ED         [ 1] 2567 	ld	a, _ui8_adc_torque_sensor_min_value+0
      00BFE2 6B 02            [ 1] 2568 	ld	(0x02, sp), a
      00BFE4 0F 01            [ 1] 2569 	clr	(0x01, sp)
      00BFE6 72 F0 01         [ 2] 2570 	subw	x, (0x01, sp)
      00BFE9 89               [ 2] 2571 	pushw	x
      00BFEA CD D7 D0         [ 4] 2572 	call	___sint2fs
      00BFED 5B 02            [ 2] 2573 	addw	sp, #2
      00BFEF 89               [ 2] 2574 	pushw	x
      00BFF0 90 89            [ 2] 2575 	pushw	y
      00BFF2 5F               [ 1] 2576 	clrw	x
      00BFF3 89               [ 2] 2577 	pushw	x
      00BFF4 4B 7F            [ 1] 2578 	push	#0x7f
      00BFF6 4B 43            [ 1] 2579 	push	#0x43
      00BFF8 CD DA 4B         [ 4] 2580 	call	___fsdiv
      00BFFB 5B 08            [ 2] 2581 	addw	sp, #8
      00BFFD 89               [ 2] 2582 	pushw	x
      00BFFE 90 89            [ 2] 2583 	pushw	y
      00C000 5F               [ 1] 2584 	clrw	x
      00C001 89               [ 2] 2585 	pushw	x
      00C002 4B F0            [ 1] 2586 	push	#0xf0
      00C004 4B 3F            [ 1] 2587 	push	#0x3f
      00C006 CD D2 04         [ 4] 2588 	call	___fsmul
      00C009 5B 08            [ 2] 2589 	addw	sp, #8
      00C00B CF 01 F7         [ 2] 2590 	ldw	_f_torque_assist_ratio+2, x
      00C00E 90 CF 01 F5      [ 2] 2591 	ldw	_f_torque_assist_ratio+0, y
                           000BD1  2592 	C$ebike_app.c$1557$1_0$545 ==.
                                   2593 ;	ebike_app.c: 1557: }
      00C012 5B 02            [ 2] 2594 	addw	sp, #2
                           000BD3  2595 	C$ebike_app.c$1557$1_0$545 ==.
                           000BD3  2596 	XFebike_app$ebike_app_set_torque_assist_ratio$0$0 ==.
      00C014 81               [ 4] 2597 	ret
                           000BD4  2598 	Febike_app$calc_pedal_force_and_torque$0$0 ==.
                           000BD4  2599 	C$ebike_app.c$1562$1_0$547 ==.
                                   2600 ;	ebike_app.c: 1562: static void calc_pedal_force_and_torque(void)
                                   2601 ;	-----------------------------------------
                                   2602 ;	 function calc_pedal_force_and_torque
                                   2603 ;	-----------------------------------------
      00C015                       2604 _calc_pedal_force_and_torque:
                           000BD4  2605 	C$ebike_app.c$1567$1_0$547 ==.
                                   2606 ;	ebike_app.c: 1567: ui16_pedal_torque_x100 = (uint16_t) ui8_torque_sensor * (uint16_t) ADC_STEP_PEDAL_TORQUE_X100;
      00C015 5F               [ 1] 2607 	clrw	x
      00C016 C6 01 E7         [ 1] 2608 	ld	a, _ui8_torque_sensor+0
      00C019 97               [ 1] 2609 	ld	xl, a
      00C01A 89               [ 2] 2610 	pushw	x
      00C01B 4B 37            [ 1] 2611 	push	#0x37
      00C01D 4B 00            [ 1] 2612 	push	#0x00
      00C01F CD D5 14         [ 4] 2613 	call	__mulint
      00C022 5B 04            [ 2] 2614 	addw	sp, #4
                           000BE3  2615 	C$ebike_app.c$1568$1_0$547 ==.
                                   2616 ;	ebike_app.c: 1568: ui16_pedal_torque_x10 = ui16_pedal_torque_x100 / 10;
      00C024 90 AE 00 0A      [ 2] 2617 	ldw	y, #0x000a
      00C028 65               [ 2] 2618 	divw	x, y
      00C029 CF 02 02         [ 2] 2619 	ldw	_ui16_pedal_torque_x10+0, x
                           000BEB  2620 	C$ebike_app.c$1627$1_0$547 ==.
                                   2621 ;	ebike_app.c: 1627: }
                           000BEB  2622 	C$ebike_app.c$1627$1_0$547 ==.
                           000BEB  2623 	XFebike_app$calc_pedal_force_and_torque$0$0 ==.
      00C02C 81               [ 4] 2624 	ret
                           000BEC  2625 	Febike_app$calc_wheel_speed$0$0 ==.
                           000BEC  2626 	C$ebike_app.c$1632$1_0$549 ==.
                                   2627 ;	ebike_app.c: 1632: static void calc_wheel_speed(void)
                                   2628 ;	-----------------------------------------
                                   2629 ;	 function calc_wheel_speed
                                   2630 ;	-----------------------------------------
      00C02D                       2631 _calc_wheel_speed:
      00C02D 52 04            [ 2] 2632 	sub	sp, #4
                           000BEE  2633 	C$ebike_app.c$1635$1_0$549 ==.
                                   2634 ;	ebike_app.c: 1635: if(ui16_wheel_speed_sensor_pwm_cycles_ticks < WHEEL_SPEED_SENSOR_MIN_PWM_CYCLE_TICKS)
      00C02F CE 02 11         [ 2] 2635 	ldw	x, _ui16_wheel_speed_sensor_pwm_cycles_ticks+0
      00C032 A3 FF FE         [ 2] 2636 	cpw	x, #0xfffe
      00C035 25 03            [ 1] 2637 	jrc	00123$
      00C037 CC C1 22         [ 2] 2638 	jp	00107$
      00C03A                       2639 00123$:
                           000BF9  2640 	C$ebike_app.c$1655$1_0$549 ==.
                                   2641 ;	ebike_app.c: 1655: f_wheel_speed_x10 = ((float) PWM_CYCLES_SECOND) / ((float) ui16_wheel_speed_sensor_pwm_cycles_ticks); // rps
      00C03A 3B 02 12         [ 1] 2642 	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+1
      00C03D 3B 02 11         [ 1] 2643 	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0
      00C040 CD D8 3B         [ 4] 2644 	call	___uint2fs
      00C043 5B 02            [ 2] 2645 	addw	sp, #2
      00C045 89               [ 2] 2646 	pushw	x
      00C046 90 89            [ 2] 2647 	pushw	y
      00C048 4B 00            [ 1] 2648 	push	#0x00
      00C04A 4B 24            [ 1] 2649 	push	#0x24
      00C04C 4B 74            [ 1] 2650 	push	#0x74
      00C04E 4B 46            [ 1] 2651 	push	#0x46
      00C050 CD DA 4B         [ 4] 2652 	call	___fsdiv
      00C053 5B 08            [ 2] 2653 	addw	sp, #8
      00C055 CF 02 15         [ 2] 2654 	ldw	_f_wheel_speed_x10+2, x
      00C058 90 CF 02 13      [ 2] 2655 	ldw	_f_wheel_speed_x10+0, y
                           000C1B  2656 	C$ebike_app.c$1656$2_0$550 ==.
                                   2657 ;	ebike_app.c: 1656: f_wheel_speed_x10 *= configuration_variables.ui16_wheel_perimeter; // millimeters per second
      00C05C CE 00 1A         [ 2] 2658 	ldw	x, _configuration_variables+5
      00C05F 89               [ 2] 2659 	pushw	x
      00C060 CD D8 3B         [ 4] 2660 	call	___uint2fs
      00C063 5B 02            [ 2] 2661 	addw	sp, #2
      00C065 89               [ 2] 2662 	pushw	x
      00C066 90 89            [ 2] 2663 	pushw	y
      00C068 3B 02 16         [ 1] 2664 	push	_f_wheel_speed_x10+3
      00C06B 3B 02 15         [ 1] 2665 	push	_f_wheel_speed_x10+2
      00C06E 3B 02 14         [ 1] 2666 	push	_f_wheel_speed_x10+1
      00C071 3B 02 13         [ 1] 2667 	push	_f_wheel_speed_x10+0
      00C074 CD D2 04         [ 4] 2668 	call	___fsmul
      00C077 5B 08            [ 2] 2669 	addw	sp, #8
      00C079 CF 02 15         [ 2] 2670 	ldw	_f_wheel_speed_x10+2, x
      00C07C 90 CF 02 13      [ 2] 2671 	ldw	_f_wheel_speed_x10+0, y
                           000C3F  2672 	C$ebike_app.c$1657$1_0$549 ==.
                                   2673 ;	ebike_app.c: 1657: f_wheel_speed_x10 *= 0.036; // ((3600 / (1000 * 1000)) * 10) kms per hour * 10
      00C080 3B 02 16         [ 1] 2674 	push	_f_wheel_speed_x10+3
      00C083 3B 02 15         [ 1] 2675 	push	_f_wheel_speed_x10+2
      00C086 3B 02 14         [ 1] 2676 	push	_f_wheel_speed_x10+1
      00C089 3B 02 13         [ 1] 2677 	push	_f_wheel_speed_x10+0
      00C08C 4B BC            [ 1] 2678 	push	#0xbc
      00C08E 4B 74            [ 1] 2679 	push	#0x74
      00C090 4B 13            [ 1] 2680 	push	#0x13
      00C092 4B 3D            [ 1] 2681 	push	#0x3d
      00C094 CD D2 04         [ 4] 2682 	call	___fsmul
      00C097 5B 08            [ 2] 2683 	addw	sp, #8
      00C099 CF 02 15         [ 2] 2684 	ldw	_f_wheel_speed_x10+2, x
      00C09C 90 CF 02 13      [ 2] 2685 	ldw	_f_wheel_speed_x10+0, y
                           000C5F  2686 	C$ebike_app.c$1658$1_0$549 ==.
                                   2687 ;	ebike_app.c: 1658: ui16_wheel_speed_x10 = (uint16_t) f_wheel_speed_x10;
      00C0A0 3B 02 16         [ 1] 2688 	push	_f_wheel_speed_x10+3
      00C0A3 3B 02 15         [ 1] 2689 	push	_f_wheel_speed_x10+2
      00C0A6 3B 02 14         [ 1] 2690 	push	_f_wheel_speed_x10+1
      00C0A9 3B 02 13         [ 1] 2691 	push	_f_wheel_speed_x10+0
      00C0AC CD D8 47         [ 4] 2692 	call	___fs2uint
      00C0AF 5B 04            [ 2] 2693 	addw	sp, #4
      00C0B1 CF 02 17         [ 2] 2694 	ldw	_ui16_wheel_speed_x10+0, x
                           000C73  2695 	C$ebike_app.c$1661$2_0$550 ==.
                                   2696 ;	ebike_app.c: 1661: if(ui8_display_ready_flag)
      00C0B4 72 5D 02 47      [ 1] 2697 	tnz	_ui8_display_ready_flag+0
      00C0B8 27 51            [ 1] 2698 	jreq	00104$
                           000C79  2699 	C$ebike_app.c$1663$1_0$549 ==.
                                   2700 ;	ebike_app.c: 1663: f_oem_wheel_speed = (((float) ui16_wheel_speed_sensor_pwm_cycles_ticks) * 10.0) / ((float) configuration_variables.ui16_oem_wheel_speed_factor);
      00C0BA 3B 02 12         [ 1] 2701 	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+1
      00C0BD 3B 02 11         [ 1] 2702 	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0
      00C0C0 CD D8 3B         [ 4] 2703 	call	___uint2fs
      00C0C3 5B 02            [ 2] 2704 	addw	sp, #2
      00C0C5 89               [ 2] 2705 	pushw	x
      00C0C6 90 89            [ 2] 2706 	pushw	y
      00C0C8 5F               [ 1] 2707 	clrw	x
      00C0C9 89               [ 2] 2708 	pushw	x
      00C0CA 4B 20            [ 1] 2709 	push	#0x20
      00C0CC 4B 41            [ 1] 2710 	push	#0x41
      00C0CE CD D2 04         [ 4] 2711 	call	___fsmul
      00C0D1 5B 08            [ 2] 2712 	addw	sp, #8
      00C0D3 1F 03            [ 2] 2713 	ldw	(0x03, sp), x
      00C0D5 17 01            [ 2] 2714 	ldw	(0x01, sp), y
      00C0D7 CE 00 3E         [ 2] 2715 	ldw	x, _configuration_variables+41
      00C0DA 89               [ 2] 2716 	pushw	x
      00C0DB CD D8 3B         [ 4] 2717 	call	___uint2fs
      00C0DE 5B 02            [ 2] 2718 	addw	sp, #2
      00C0E0 89               [ 2] 2719 	pushw	x
      00C0E1 90 89            [ 2] 2720 	pushw	y
      00C0E3 1E 07            [ 2] 2721 	ldw	x, (0x07, sp)
      00C0E5 89               [ 2] 2722 	pushw	x
      00C0E6 1E 07            [ 2] 2723 	ldw	x, (0x07, sp)
      00C0E8 89               [ 2] 2724 	pushw	x
      00C0E9 CD DA 4B         [ 4] 2725 	call	___fsdiv
      00C0EC 5B 08            [ 2] 2726 	addw	sp, #8
      00C0EE CF 02 1F         [ 2] 2727 	ldw	_f_oem_wheel_speed+2, x
      00C0F1 90 CF 02 1D      [ 2] 2728 	ldw	_f_oem_wheel_speed+0, y
                           000CB4  2729 	C$ebike_app.c$1664$1_0$549 ==.
                                   2730 ;	ebike_app.c: 1664: ui16_oem_wheel_speed = (uint16_t) f_oem_wheel_speed;
      00C0F5 3B 02 20         [ 1] 2731 	push	_f_oem_wheel_speed+3
      00C0F8 3B 02 1F         [ 1] 2732 	push	_f_oem_wheel_speed+2
      00C0FB 3B 02 1E         [ 1] 2733 	push	_f_oem_wheel_speed+1
      00C0FE 3B 02 1D         [ 1] 2734 	push	_f_oem_wheel_speed+0
      00C101 CD D8 47         [ 4] 2735 	call	___fs2uint
      00C104 5B 04            [ 2] 2736 	addw	sp, #4
      00C106 CF 02 21         [ 2] 2737 	ldw	_ui16_oem_wheel_speed+0, x
      00C109 20 1F            [ 2] 2738 	jra	00109$
      00C10B                       2739 00104$:
                           000CCA  2740 	C$ebike_app.c$1670$3_0$552 ==.
                                   2741 ;	ebike_app.c: 1670: ui16_oem_wheel_speed = 0;
      00C10B 5F               [ 1] 2742 	clrw	x
      00C10C CF 02 21         [ 2] 2743 	ldw	_ui16_oem_wheel_speed+0, x
                           000CCE  2744 	C$ebike_app.c$1673$3_0$552 ==.
                                   2745 ;	ebike_app.c: 1673: if(ui8_startup_counter++ >= 40)
      00C10F C6 02 42         [ 1] 2746 	ld	a, _ui8_startup_counter+0
      00C112 97               [ 1] 2747 	ld	xl, a
      00C113 4C               [ 1] 2748 	inc	a
      00C114 C7 02 42         [ 1] 2749 	ld	_ui8_startup_counter+0, a
      00C117 9F               [ 1] 2750 	ld	a, xl
      00C118 A1 28            [ 1] 2751 	cp	a, #0x28
      00C11A 25 0E            [ 1] 2752 	jrc	00109$
                           000CDB  2753 	C$ebike_app.c$1675$4_0$553 ==.
                                   2754 ;	ebike_app.c: 1675: ui8_display_ready_flag = 1;
      00C11C 35 01 02 47      [ 1] 2755 	mov	_ui8_display_ready_flag+0, #0x01
      00C120 20 08            [ 2] 2756 	jra	00109$
      00C122                       2757 00107$:
                           000CE1  2758 	C$ebike_app.c$1681$2_0$554 ==.
                                   2759 ;	ebike_app.c: 1681: ui16_wheel_speed_x10 = 0;
      00C122 5F               [ 1] 2760 	clrw	x
      00C123 CF 02 17         [ 2] 2761 	ldw	_ui16_wheel_speed_x10+0, x
                           000CE5  2762 	C$ebike_app.c$1682$2_0$554 ==.
                                   2763 ;	ebike_app.c: 1682: ui16_oem_wheel_speed = 0;
      00C126 5F               [ 1] 2764 	clrw	x
      00C127 CF 02 21         [ 2] 2765 	ldw	_ui16_oem_wheel_speed+0, x
      00C12A                       2766 00109$:
                           000CE9  2767 	C$ebike_app.c$1684$1_0$549 ==.
                                   2768 ;	ebike_app.c: 1684: }
      00C12A 5B 04            [ 2] 2769 	addw	sp, #4
                           000CEB  2770 	C$ebike_app.c$1684$1_0$549 ==.
                           000CEB  2771 	XFebike_app$calc_wheel_speed$0$0 ==.
      00C12C 81               [ 4] 2772 	ret
                           000CEC  2773 	Febike_app$calc_motor_temperature$0$0 ==.
                           000CEC  2774 	C$ebike_app.c$1689$1_0$556 ==.
                                   2775 ;	ebike_app.c: 1689: static void calc_motor_temperature(void)
                                   2776 ;	-----------------------------------------
                                   2777 ;	 function calc_motor_temperature
                                   2778 ;	-----------------------------------------
      00C12D                       2779 _calc_motor_temperature:
                           000CEC  2780 	C$ebike_app.c$1694$1_0$556 ==.
                                   2781 ;	ebike_app.c: 1694: ui16_adc_motor_temperatured_accumulated -= ui16_adc_motor_temperatured_accumulated >> READ_MOTOR_TEMPERATURE_FILTER_COEFFICIENT;
      00C12D CE 02 2A         [ 2] 2782 	ldw	x, _ui16_adc_motor_temperatured_accumulated+0
      00C130 A6 10            [ 1] 2783 	ld	a, #0x10
      00C132 62               [ 2] 2784 	div	x, a
      00C133 50               [ 2] 2785 	negw	x
      00C134 72 BB 02 2A      [ 2] 2786 	addw	x, _ui16_adc_motor_temperatured_accumulated+0
      00C138 CF 02 2A         [ 2] 2787 	ldw	_ui16_adc_motor_temperatured_accumulated+0, x
                           000CFA  2788 	C$ebike_app.c$1695$1_0$556 ==.
                                   2789 ;	ebike_app.c: 1695: ui16_adc_motor_temperatured_accumulated += ui16_adc_read_throttle_10b();
      00C13B CD B3 AD         [ 4] 2790 	call	_ui16_adc_read_throttle_10b
      00C13E 72 BB 02 2A      [ 2] 2791 	addw	x, _ui16_adc_motor_temperatured_accumulated+0
      00C142 CF 02 2A         [ 2] 2792 	ldw	_ui16_adc_motor_temperatured_accumulated+0, x
                           000D04  2793 	C$ebike_app.c$1696$1_0$556 ==.
                                   2794 ;	ebike_app.c: 1696: ui16_adc_motor_temperatured_filtered_10b = ui16_adc_motor_temperatured_accumulated >> READ_MOTOR_TEMPERATURE_FILTER_COEFFICIENT;
      00C145 CE 02 2A         [ 2] 2795 	ldw	x, _ui16_adc_motor_temperatured_accumulated+0
      00C148 A6 10            [ 1] 2796 	ld	a, #0x10
      00C14A 62               [ 2] 2797 	div	x, a
                           000D0A  2798 	C$ebike_app.c$1698$1_0$556 ==.
                                   2799 ;	ebike_app.c: 1698: configuration_variables.ui16_motor_temperature_x2 = (uint16_t) ((float) ui16_adc_motor_temperatured_filtered_10b / 1.024);
      00C14B 89               [ 2] 2800 	pushw	x
      00C14C CD D8 3B         [ 4] 2801 	call	___uint2fs
      00C14F 5B 02            [ 2] 2802 	addw	sp, #2
      00C151 4B 6F            [ 1] 2803 	push	#0x6f
      00C153 4B 12            [ 1] 2804 	push	#0x12
      00C155 4B 83            [ 1] 2805 	push	#0x83
      00C157 4B 3F            [ 1] 2806 	push	#0x3f
      00C159 89               [ 2] 2807 	pushw	x
      00C15A 90 89            [ 2] 2808 	pushw	y
      00C15C CD DA 4B         [ 4] 2809 	call	___fsdiv
      00C15F 5B 08            [ 2] 2810 	addw	sp, #8
      00C161 89               [ 2] 2811 	pushw	x
      00C162 90 89            [ 2] 2812 	pushw	y
      00C164 CD D8 47         [ 4] 2813 	call	___fs2uint
      00C167 5B 04            [ 2] 2814 	addw	sp, #4
      00C169 CF 00 30         [ 2] 2815 	ldw	_configuration_variables+27, x
                           000D2B  2816 	C$ebike_app.c$1699$1_0$556 ==.
                                   2817 ;	ebike_app.c: 1699: configuration_variables.ui8_motor_temperature = (uint8_t) (configuration_variables.ui16_motor_temperature_x2 >> 1);
      00C16C CE 00 30         [ 2] 2818 	ldw	x, _configuration_variables+27
      00C16F 54               [ 2] 2819 	srlw	x
      00C170 9F               [ 1] 2820 	ld	a, xl
      00C171 C7 00 32         [ 1] 2821 	ld	_configuration_variables+29, a
                           000D33  2822 	C$ebike_app.c$1700$1_0$556 ==.
                                   2823 ;	ebike_app.c: 1700: }
                           000D33  2824 	C$ebike_app.c$1700$1_0$556 ==.
                           000D33  2825 	XFebike_app$calc_motor_temperature$0$0 ==.
      00C174 81               [ 4] 2826 	ret
                           000D34  2827 	Febike_app$calc_filtered_battery_voltage$0$0 ==.
                           000D34  2828 	C$ebike_app.c$1705$1_0$558 ==.
                                   2829 ;	ebike_app.c: 1705: static uint16_t calc_filtered_battery_voltage(void)
                                   2830 ;	-----------------------------------------
                                   2831 ;	 function calc_filtered_battery_voltage
                                   2832 ;	-----------------------------------------
      00C175                       2833 _calc_filtered_battery_voltage:
                           000D34  2834 	C$ebike_app.c$1707$1_0$558 ==.
                                   2835 ;	ebike_app.c: 1707: uint16_t ui16_batt_voltage_filtered = (uint16_t) motor_get_adc_battery_voltage_filtered_10b() * ADC10BITS_BATTERY_VOLTAGE_PER_ADC_STEP_X512;
      00C175 CD B1 ED         [ 4] 2836 	call	_motor_get_adc_battery_voltage_filtered_10b
      00C178 89               [ 2] 2837 	pushw	x
      00C179 4B 2C            [ 1] 2838 	push	#0x2c
      00C17B 4B 00            [ 1] 2839 	push	#0x00
      00C17D CD D5 14         [ 4] 2840 	call	__mulint
      00C180 5B 04            [ 2] 2841 	addw	sp, #4
      00C182 9E               [ 1] 2842 	ld	a, xh
                           000D42  2843 	C$ebike_app.c$1708$1_0$558 ==.
                                   2844 ;	ebike_app.c: 1708: return (ui16_batt_voltage_filtered >> 9);
      00C183 5F               [ 1] 2845 	clrw	x
      00C184 97               [ 1] 2846 	ld	xl, a
      00C185 54               [ 2] 2847 	srlw	x
                           000D45  2848 	C$ebike_app.c$1709$1_0$558 ==.
                                   2849 ;	ebike_app.c: 1709: }
                           000D45  2850 	C$ebike_app.c$1709$1_0$558 ==.
                           000D45  2851 	XFebike_app$calc_filtered_battery_voltage$0$0 ==.
      00C186 81               [ 4] 2852 	ret
                           000D46  2853 	Febike_app$apply_street_mode$0$0 ==.
                           000D46  2854 	C$ebike_app.c$1714$1_0$560 ==.
                                   2855 ;	ebike_app.c: 1714: static void apply_street_mode(uint16_t ui16_battery_voltage, uint8_t *ui8_max_speed, uint8_t *ui8_target_current)
                                   2856 ;	-----------------------------------------
                                   2857 ;	 function apply_street_mode
                                   2858 ;	-----------------------------------------
      00C187                       2859 _apply_street_mode:
      00C187 52 08            [ 2] 2860 	sub	sp, #8
                           000D48  2861 	C$ebike_app.c$1716$1_0$560 ==.
                                   2862 ;	ebike_app.c: 1716: if(!configuration_variables.ui8_offroad_mode)
      00C189 C6 00 1E         [ 1] 2863 	ld	a, _configuration_variables+9
      00C18C 26 51            [ 1] 2864 	jrne	00106$
                           000D4D  2865 	C$ebike_app.c$1719$2_0$561 ==.
                                   2866 ;	ebike_app.c: 1719: *ui8_max_speed = configuration_variables.ui8_street_speed_limit;
      00C18E 1E 0D            [ 2] 2867 	ldw	x, (0x0d, sp)
      00C190 C6 00 35         [ 1] 2868 	ld	a, _configuration_variables+32
      00C193 F7               [ 1] 2869 	ld	(x), a
                           000D53  2870 	C$ebike_app.c$1721$2_0$561 ==.
                                   2871 ;	ebike_app.c: 1721: if((configuration_variables.ui8_street_power_limit_enabled)&&(configuration_variables.ui8_street_power_limit_div25 > 0))
      00C194 C6 00 36         [ 1] 2872 	ld	a, _configuration_variables+33
      00C197 27 46            [ 1] 2873 	jreq	00106$
      00C199 C6 00 37         [ 1] 2874 	ld	a, _configuration_variables+34
      00C19C 27 41            [ 1] 2875 	jreq	00106$
                           000D5D  2876 	C$ebike_app.c$1723$3_0$562 ==.
                                   2877 ;	ebike_app.c: 1723: uint8_t ui8_street_mode_max_current = (uint8_t) (((((uint32_t) configuration_variables.ui8_street_power_limit_div25) * 160) / ((uint32_t) ui16_battery_voltage)) >> 2);
      00C19E C6 00 37         [ 1] 2878 	ld	a, _configuration_variables+34
      00C1A1 5F               [ 1] 2879 	clrw	x
      00C1A2 97               [ 1] 2880 	ld	xl, a
      00C1A3 90 5F            [ 1] 2881 	clrw	y
      00C1A5 89               [ 2] 2882 	pushw	x
      00C1A6 90 89            [ 2] 2883 	pushw	y
      00C1A8 4B A0            [ 1] 2884 	push	#0xa0
      00C1AA 5F               [ 1] 2885 	clrw	x
      00C1AB 89               [ 2] 2886 	pushw	x
      00C1AC 4B 00            [ 1] 2887 	push	#0x00
      00C1AE CD DB 08         [ 4] 2888 	call	__mullong
      00C1B1 5B 08            [ 2] 2889 	addw	sp, #8
      00C1B3 1F 03            [ 2] 2890 	ldw	(0x03, sp), x
      00C1B5 1E 0B            [ 2] 2891 	ldw	x, (0x0b, sp)
      00C1B7 1F 07            [ 2] 2892 	ldw	(0x07, sp), x
      00C1B9 0F 06            [ 1] 2893 	clr	(0x06, sp)
      00C1BB 0F 05            [ 1] 2894 	clr	(0x05, sp)
      00C1BD 1E 07            [ 2] 2895 	ldw	x, (0x07, sp)
      00C1BF 89               [ 2] 2896 	pushw	x
      00C1C0 1E 07            [ 2] 2897 	ldw	x, (0x07, sp)
      00C1C2 89               [ 2] 2898 	pushw	x
      00C1C3 1E 07            [ 2] 2899 	ldw	x, (0x07, sp)
      00C1C5 89               [ 2] 2900 	pushw	x
      00C1C6 90 89            [ 2] 2901 	pushw	y
      00C1C8 CD D7 E1         [ 4] 2902 	call	__divulong
      00C1CB 5B 08            [ 2] 2903 	addw	sp, #8
      00C1CD 54               [ 2] 2904 	srlw	x
      00C1CE 54               [ 2] 2905 	srlw	x
      00C1CF 51               [ 1] 2906 	exgw	x, y
                           000D8F  2907 	C$ebike_app.c$1724$3_0$562 ==.
                                   2908 ;	ebike_app.c: 1724: *ui8_target_current = ui8_min(ui8_street_mode_max_current, *ui8_target_current);
      00C1D0 1E 0F            [ 2] 2909 	ldw	x, (0x0f, sp)
      00C1D2 F6               [ 1] 2910 	ld	a, (x)
      00C1D3 89               [ 2] 2911 	pushw	x
      00C1D4 88               [ 1] 2912 	push	a
      00C1D5 90 9F            [ 1] 2913 	ld	a, yl
      00C1D7 88               [ 1] 2914 	push	a
      00C1D8 CD C8 7D         [ 4] 2915 	call	_ui8_min
      00C1DB 5B 02            [ 2] 2916 	addw	sp, #2
      00C1DD 85               [ 2] 2917 	popw	x
      00C1DE F7               [ 1] 2918 	ld	(x), a
      00C1DF                       2919 00106$:
                           000D9E  2920 	C$ebike_app.c$1727$1_0$560 ==.
                                   2921 ;	ebike_app.c: 1727: }
      00C1DF 5B 08            [ 2] 2922 	addw	sp, #8
                           000DA0  2923 	C$ebike_app.c$1727$1_0$560 ==.
                           000DA0  2924 	XFebike_app$apply_street_mode$0$0 ==.
      00C1E1 81               [ 4] 2925 	ret
                           000DA1  2926 	Febike_app$apply_speed_limit$0$0 ==.
                           000DA1  2927 	C$ebike_app.c$1732$1_0$564 ==.
                                   2928 ;	ebike_app.c: 1732: static void apply_speed_limit(uint16_t ui16_speed_x10, uint8_t ui8_max_speed, uint8_t *ui8_target_current)
                                   2929 ;	-----------------------------------------
                                   2930 ;	 function apply_speed_limit
                                   2931 ;	-----------------------------------------
      00C1E2                       2932 _apply_speed_limit:
      00C1E2 52 10            [ 2] 2933 	sub	sp, #16
                           000DA3  2934 	C$ebike_app.c$1734$1_0$564 ==.
                                   2935 ;	ebike_app.c: 1734: *ui8_target_current = (uint8_t) (map((uint32_t) ui16_speed_x10,
      00C1E4 16 16            [ 2] 2936 	ldw	y, (0x16, sp)
                           000DA5  2937 	C$ebike_app.c$1737$1_0$564 ==.
                                   2938 ;	ebike_app.c: 1737: (uint32_t) *ui8_target_current,
      00C1E6 90 F6            [ 1] 2939 	ld	a, (y)
      00C1E8 6B 04            [ 1] 2940 	ld	(0x04, sp), a
      00C1EA 0F 03            [ 1] 2941 	clr	(0x03, sp)
      00C1EC 0F 02            [ 1] 2942 	clr	(0x02, sp)
      00C1EE 0F 01            [ 1] 2943 	clr	(0x01, sp)
                           000DAF  2944 	C$ebike_app.c$1736$1_0$564 ==.
                                   2945 ;	ebike_app.c: 1736: (uint32_t) ((ui8_max_speed * 10) + 20),
      00C1F0 5F               [ 1] 2946 	clrw	x
      00C1F1 7B 15            [ 1] 2947 	ld	a, (0x15, sp)
      00C1F3 97               [ 1] 2948 	ld	xl, a
      00C1F4 89               [ 2] 2949 	pushw	x
      00C1F5 58               [ 2] 2950 	sllw	x
      00C1F6 58               [ 2] 2951 	sllw	x
      00C1F7 72 FB 01         [ 2] 2952 	addw	x, (1, sp)
      00C1FA 58               [ 2] 2953 	sllw	x
      00C1FB 5B 02            [ 2] 2954 	addw	sp, #2
      00C1FD 1F 0F            [ 2] 2955 	ldw	(0x0f, sp), x
      00C1FF 1C 00 14         [ 2] 2956 	addw	x, #0x0014
      00C202 1F 07            [ 2] 2957 	ldw	(0x07, sp), x
      00C204 7B 07            [ 1] 2958 	ld	a, (0x07, sp)
      00C206 49               [ 1] 2959 	rlc	a
      00C207 4F               [ 1] 2960 	clr	a
      00C208 A2 00            [ 1] 2961 	sbc	a, #0x00
      00C20A 6B 06            [ 1] 2962 	ld	(0x06, sp), a
      00C20C 6B 05            [ 1] 2963 	ld	(0x05, sp), a
                           000DCD  2964 	C$ebike_app.c$1735$1_0$564 ==.
                                   2965 ;	ebike_app.c: 1735: (uint32_t) ((ui8_max_speed * 10) - 20),
      00C20E 1E 0F            [ 2] 2966 	ldw	x, (0x0f, sp)
      00C210 1D 00 14         [ 2] 2967 	subw	x, #0x0014
      00C213 1F 0B            [ 2] 2968 	ldw	(0x0b, sp), x
      00C215 7B 0B            [ 1] 2969 	ld	a, (0x0b, sp)
      00C217 49               [ 1] 2970 	rlc	a
      00C218 4F               [ 1] 2971 	clr	a
      00C219 A2 00            [ 1] 2972 	sbc	a, #0x00
      00C21B 6B 0A            [ 1] 2973 	ld	(0x0a, sp), a
      00C21D 6B 09            [ 1] 2974 	ld	(0x09, sp), a
                           000DDE  2975 	C$ebike_app.c$1734$1_0$564 ==.
                                   2976 ;	ebike_app.c: 1734: *ui8_target_current = (uint8_t) (map((uint32_t) ui16_speed_x10,
      00C21F 1E 13            [ 2] 2977 	ldw	x, (0x13, sp)
      00C221 1F 0F            [ 2] 2978 	ldw	(0x0f, sp), x
      00C223 0F 0E            [ 1] 2979 	clr	(0x0e, sp)
      00C225 0F 0D            [ 1] 2980 	clr	(0x0d, sp)
      00C227 90 89            [ 2] 2981 	pushw	y
      00C229 5F               [ 1] 2982 	clrw	x
      00C22A 89               [ 2] 2983 	pushw	x
      00C22B 5F               [ 1] 2984 	clrw	x
      00C22C 89               [ 2] 2985 	pushw	x
      00C22D 1E 09            [ 2] 2986 	ldw	x, (0x09, sp)
      00C22F 89               [ 2] 2987 	pushw	x
      00C230 1E 09            [ 2] 2988 	ldw	x, (0x09, sp)
      00C232 89               [ 2] 2989 	pushw	x
      00C233 1E 11            [ 2] 2990 	ldw	x, (0x11, sp)
      00C235 89               [ 2] 2991 	pushw	x
      00C236 1E 11            [ 2] 2992 	ldw	x, (0x11, sp)
      00C238 89               [ 2] 2993 	pushw	x
      00C239 1E 19            [ 2] 2994 	ldw	x, (0x19, sp)
      00C23B 89               [ 2] 2995 	pushw	x
      00C23C 1E 19            [ 2] 2996 	ldw	x, (0x19, sp)
      00C23E 89               [ 2] 2997 	pushw	x
      00C23F 1E 21            [ 2] 2998 	ldw	x, (0x21, sp)
      00C241 89               [ 2] 2999 	pushw	x
      00C242 1E 21            [ 2] 3000 	ldw	x, (0x21, sp)
      00C244 89               [ 2] 3001 	pushw	x
      00C245 CD C6 E6         [ 4] 3002 	call	_map
      00C248 5B 14            [ 2] 3003 	addw	sp, #20
      00C24A 1F 11            [ 2] 3004 	ldw	(0x11, sp), x
      00C24C 17 0F            [ 2] 3005 	ldw	(0x0f, sp), y
      00C24E 90 85            [ 2] 3006 	popw	y
      00C250 7B 10            [ 1] 3007 	ld	a, (0x10, sp)
      00C252 90 F7            [ 1] 3008 	ld	(y), a
                           000E13  3009 	C$ebike_app.c$1739$1_0$564 ==.
                                   3010 ;	ebike_app.c: 1739: }
      00C254 5B 10            [ 2] 3011 	addw	sp, #16
                           000E15  3012 	C$ebike_app.c$1739$1_0$564 ==.
                           000E15  3013 	XFebike_app$apply_speed_limit$0$0 ==.
      00C256 81               [ 4] 3014 	ret
                           000E16  3015 	Febike_app$apply_walk_assist$0$0 ==.
                           000E16  3016 	C$ebike_app.c$1769$1_0$566 ==.
                                   3017 ;	ebike_app.c: 1769: static void apply_walk_assist(uint8_t ui8_walk_assist_value, uint8_t *ui8_target_current)
                                   3018 ;	-----------------------------------------
                                   3019 ;	 function apply_walk_assist
                                   3020 ;	-----------------------------------------
      00C257                       3021 _apply_walk_assist:
      00C257 52 04            [ 2] 3022 	sub	sp, #4
                           000E18  3023 	C$ebike_app.c$1772$1_0$566 ==.
                                   3024 ;	ebike_app.c: 1772: if(ui8_walk_assist_value)
      00C259 0D 07            [ 1] 3025 	tnz	(0x07, sp)
      00C25B 27 31            [ 1] 3026 	jreq	00103$
                           000E1C  3027 	C$ebike_app.c$1774$2_0$567 ==.
                                   3028 ;	ebike_app.c: 1774: uint8_t ui8_temp = (uint8_t) (map((uint32_t) ui8_walk_assist_value,
      00C25D 5F               [ 1] 3029 	clrw	x
      00C25E C6 01 F4         [ 1] 3030 	ld	a, _ui8_adc_motor_current_max+0
      00C261 97               [ 1] 3031 	ld	xl, a
      00C262 90 5F            [ 1] 3032 	clrw	y
      00C264 7B 07            [ 1] 3033 	ld	a, (0x07, sp)
      00C266 6B 04            [ 1] 3034 	ld	(0x04, sp), a
      00C268 0F 03            [ 1] 3035 	clr	(0x03, sp)
      00C26A 0F 02            [ 1] 3036 	clr	(0x02, sp)
      00C26C 0F 01            [ 1] 3037 	clr	(0x01, sp)
      00C26E 89               [ 2] 3038 	pushw	x
      00C26F 90 89            [ 2] 3039 	pushw	y
      00C271 5F               [ 1] 3040 	clrw	x
      00C272 89               [ 2] 3041 	pushw	x
      00C273 5F               [ 1] 3042 	clrw	x
      00C274 89               [ 2] 3043 	pushw	x
      00C275 4B FF            [ 1] 3044 	push	#0xff
      00C277 5F               [ 1] 3045 	clrw	x
      00C278 89               [ 2] 3046 	pushw	x
      00C279 4B 00            [ 1] 3047 	push	#0x00
      00C27B 5F               [ 1] 3048 	clrw	x
      00C27C 89               [ 2] 3049 	pushw	x
      00C27D 5F               [ 1] 3050 	clrw	x
      00C27E 89               [ 2] 3051 	pushw	x
      00C27F 1E 13            [ 2] 3052 	ldw	x, (0x13, sp)
      00C281 89               [ 2] 3053 	pushw	x
      00C282 1E 13            [ 2] 3054 	ldw	x, (0x13, sp)
      00C284 89               [ 2] 3055 	pushw	x
      00C285 CD C6 E6         [ 4] 3056 	call	_map
      00C288 5B 14            [ 2] 3057 	addw	sp, #20
      00C28A 9F               [ 1] 3058 	ld	a, xl
                           000E4A  3059 	C$ebike_app.c$1781$2_0$567 ==.
                                   3060 ;	ebike_app.c: 1781: *ui8_target_current = ui8_temp;
      00C28B 1E 08            [ 2] 3061 	ldw	x, (0x08, sp)
      00C28D F7               [ 1] 3062 	ld	(x), a
      00C28E                       3063 00103$:
                           000E4D  3064 	C$ebike_app.c$1783$1_0$566 ==.
                                   3065 ;	ebike_app.c: 1783: }
      00C28E 5B 04            [ 2] 3066 	addw	sp, #4
                           000E4F  3067 	C$ebike_app.c$1783$1_0$566 ==.
                           000E4F  3068 	XFebike_app$apply_walk_assist$0$0 ==.
      00C290 81               [ 4] 3069 	ret
                           000E50  3070 	Febike_app$apply_temperature_limiting$0$0 ==.
                           000E50  3071 	C$ebike_app.c$1788$1_0$569 ==.
                                   3072 ;	ebike_app.c: 1788: static void apply_temperature_limiting(uint8_t *ui8_target_current)
                                   3073 ;	-----------------------------------------
                                   3074 ;	 function apply_temperature_limiting
                                   3075 ;	-----------------------------------------
      00C291                       3076 _apply_temperature_limiting:
      00C291 52 10            [ 2] 3077 	sub	sp, #16
                           000E52  3078 	C$ebike_app.c$1791$1_0$569 ==.
                                   3079 ;	ebike_app.c: 1791: if(configuration_variables.ui8_motor_temperature_min_value_to_limit >= configuration_variables.ui8_motor_temperature_max_value_to_limit)
      00C293 C6 00 2D         [ 1] 3080 	ld	a, _configuration_variables+24
      00C296 6B 10            [ 1] 3081 	ld	(0x10, sp), a
      00C298 C6 00 2E         [ 1] 3082 	ld	a, _configuration_variables+25
      00C29B 11 10            [ 1] 3083 	cp	a, (0x10, sp)
      00C29D 22 0A            [ 1] 3084 	jrugt	00102$
                           000E5E  3085 	C$ebike_app.c$1793$2_0$570 ==.
                                   3086 ;	ebike_app.c: 1793: *ui8_target_current = 0;
      00C29F 1E 13            [ 2] 3087 	ldw	x, (0x13, sp)
      00C2A1 7F               [ 1] 3088 	clr	(x)
                           000E61  3089 	C$ebike_app.c$1794$2_0$570 ==.
                                   3090 ;	ebike_app.c: 1794: configuration_variables.ui8_temperature_current_limiting_value = 0;
      00C2A2 35 00 00 2F      [ 1] 3091 	mov	_configuration_variables+26, #0x00
      00C2A6 CC C3 46         [ 2] 3092 	jp	00104$
      00C2A9                       3093 00102$:
                           000E68  3094 	C$ebike_app.c$1799$2_0$571 ==.
                                   3095 ;	ebike_app.c: 1799: *ui8_target_current = 
      00C2A9 16 13            [ 2] 3096 	ldw	y, (0x13, sp)
                           000E6A  3097 	C$ebike_app.c$1803$2_0$571 ==.
                                   3098 ;	ebike_app.c: 1803: (uint32_t) *ui8_target_current,
      00C2AB 90 F6            [ 1] 3099 	ld	a, (y)
      00C2AD 6B 04            [ 1] 3100 	ld	(0x04, sp), a
      00C2AF 0F 03            [ 1] 3101 	clr	(0x03, sp)
      00C2B1 0F 02            [ 1] 3102 	clr	(0x02, sp)
      00C2B3 0F 01            [ 1] 3103 	clr	(0x01, sp)
                           000E74  3104 	C$ebike_app.c$1802$2_0$571 ==.
                                   3105 ;	ebike_app.c: 1802: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_max_value_to_limit) << 1),
      00C2B5 C6 00 2E         [ 1] 3106 	ld	a, _configuration_variables+25
      00C2B8 5F               [ 1] 3107 	clrw	x
      00C2B9 97               [ 1] 3108 	ld	xl, a
      00C2BA 58               [ 2] 3109 	sllw	x
      00C2BB 1F 07            [ 2] 3110 	ldw	(0x07, sp), x
      00C2BD 0F 06            [ 1] 3111 	clr	(0x06, sp)
      00C2BF 0F 05            [ 1] 3112 	clr	(0x05, sp)
                           000E80  3113 	C$ebike_app.c$1801$2_0$571 ==.
                                   3114 ;	ebike_app.c: 1801: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_min_value_to_limit) << 1),
      00C2C1 C6 00 2D         [ 1] 3115 	ld	a, _configuration_variables+24
      00C2C4 5F               [ 1] 3116 	clrw	x
      00C2C5 97               [ 1] 3117 	ld	xl, a
      00C2C6 58               [ 2] 3118 	sllw	x
      00C2C7 1F 0B            [ 2] 3119 	ldw	(0x0b, sp), x
      00C2C9 0F 0A            [ 1] 3120 	clr	(0x0a, sp)
      00C2CB 0F 09            [ 1] 3121 	clr	(0x09, sp)
                           000E8C  3122 	C$ebike_app.c$1800$2_0$571 ==.
                                   3123 ;	ebike_app.c: 1800: (uint8_t) (map((uint32_t) configuration_variables.ui16_motor_temperature_x2,
      00C2CD CE 00 30         [ 2] 3124 	ldw	x, _configuration_variables+27
      00C2D0 1F 0F            [ 2] 3125 	ldw	(0x0f, sp), x
      00C2D2 0F 0E            [ 1] 3126 	clr	(0x0e, sp)
      00C2D4 0F 0D            [ 1] 3127 	clr	(0x0d, sp)
      00C2D6 90 89            [ 2] 3128 	pushw	y
      00C2D8 5F               [ 1] 3129 	clrw	x
      00C2D9 89               [ 2] 3130 	pushw	x
      00C2DA 5F               [ 1] 3131 	clrw	x
      00C2DB 89               [ 2] 3132 	pushw	x
      00C2DC 1E 09            [ 2] 3133 	ldw	x, (0x09, sp)
      00C2DE 89               [ 2] 3134 	pushw	x
      00C2DF 1E 09            [ 2] 3135 	ldw	x, (0x09, sp)
      00C2E1 89               [ 2] 3136 	pushw	x
      00C2E2 1E 11            [ 2] 3137 	ldw	x, (0x11, sp)
      00C2E4 89               [ 2] 3138 	pushw	x
      00C2E5 1E 11            [ 2] 3139 	ldw	x, (0x11, sp)
      00C2E7 89               [ 2] 3140 	pushw	x
      00C2E8 1E 19            [ 2] 3141 	ldw	x, (0x19, sp)
      00C2EA 89               [ 2] 3142 	pushw	x
      00C2EB 1E 19            [ 2] 3143 	ldw	x, (0x19, sp)
      00C2ED 89               [ 2] 3144 	pushw	x
      00C2EE 1E 21            [ 2] 3145 	ldw	x, (0x21, sp)
      00C2F0 89               [ 2] 3146 	pushw	x
      00C2F1 1E 21            [ 2] 3147 	ldw	x, (0x21, sp)
      00C2F3 89               [ 2] 3148 	pushw	x
      00C2F4 CD C6 E6         [ 4] 3149 	call	_map
      00C2F7 5B 14            [ 2] 3150 	addw	sp, #20
      00C2F9 1F 11            [ 2] 3151 	ldw	(0x11, sp), x
      00C2FB 17 0F            [ 2] 3152 	ldw	(0x0f, sp), y
      00C2FD 90 85            [ 2] 3153 	popw	y
      00C2FF 7B 10            [ 1] 3154 	ld	a, (0x10, sp)
      00C301 90 F7            [ 1] 3155 	ld	(y), a
                           000EC2  3156 	C$ebike_app.c$1807$2_0$571 ==.
                                   3157 ;	ebike_app.c: 1807: configuration_variables.ui8_temperature_current_limiting_value = 
                           000EC2  3158 	C$ebike_app.c$1810$2_0$571 ==.
                                   3159 ;	ebike_app.c: 1810: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_max_value_to_limit) << 1),
      00C303 C6 00 2E         [ 1] 3160 	ld	a, _configuration_variables+25
      00C306 5F               [ 1] 3161 	clrw	x
      00C307 97               [ 1] 3162 	ld	xl, a
      00C308 58               [ 2] 3163 	sllw	x
      00C309 1F 07            [ 2] 3164 	ldw	(0x07, sp), x
      00C30B 90 5F            [ 1] 3165 	clrw	y
                           000ECC  3166 	C$ebike_app.c$1809$2_0$571 ==.
                                   3167 ;	ebike_app.c: 1809: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_min_value_to_limit) << 1),
      00C30D C6 00 2D         [ 1] 3168 	ld	a, _configuration_variables+24
      00C310 5F               [ 1] 3169 	clrw	x
      00C311 97               [ 1] 3170 	ld	xl, a
      00C312 58               [ 2] 3171 	sllw	x
      00C313 1F 0B            [ 2] 3172 	ldw	(0x0b, sp), x
      00C315 0F 0A            [ 1] 3173 	clr	(0x0a, sp)
      00C317 0F 09            [ 1] 3174 	clr	(0x09, sp)
                           000ED8  3175 	C$ebike_app.c$1808$2_0$571 ==.
                                   3176 ;	ebike_app.c: 1808: (uint8_t) (map((uint32_t) configuration_variables.ui16_motor_temperature_x2,
      00C319 CE 00 30         [ 2] 3177 	ldw	x, _configuration_variables+27
      00C31C 1F 0F            [ 2] 3178 	ldw	(0x0f, sp), x
      00C31E 0F 0E            [ 1] 3179 	clr	(0x0e, sp)
      00C320 0F 0D            [ 1] 3180 	clr	(0x0d, sp)
      00C322 5F               [ 1] 3181 	clrw	x
      00C323 89               [ 2] 3182 	pushw	x
      00C324 5F               [ 1] 3183 	clrw	x
      00C325 89               [ 2] 3184 	pushw	x
      00C326 4B FF            [ 1] 3185 	push	#0xff
      00C328 5F               [ 1] 3186 	clrw	x
      00C329 89               [ 2] 3187 	pushw	x
      00C32A 4B 00            [ 1] 3188 	push	#0x00
      00C32C 1E 0F            [ 2] 3189 	ldw	x, (0x0f, sp)
      00C32E 89               [ 2] 3190 	pushw	x
      00C32F 90 89            [ 2] 3191 	pushw	y
      00C331 1E 17            [ 2] 3192 	ldw	x, (0x17, sp)
      00C333 89               [ 2] 3193 	pushw	x
      00C334 1E 17            [ 2] 3194 	ldw	x, (0x17, sp)
      00C336 89               [ 2] 3195 	pushw	x
      00C337 1E 1F            [ 2] 3196 	ldw	x, (0x1f, sp)
      00C339 89               [ 2] 3197 	pushw	x
      00C33A 1E 1F            [ 2] 3198 	ldw	x, (0x1f, sp)
      00C33C 89               [ 2] 3199 	pushw	x
      00C33D CD C6 E6         [ 4] 3200 	call	_map
      00C340 5B 14            [ 2] 3201 	addw	sp, #20
      00C342 9F               [ 1] 3202 	ld	a, xl
      00C343 C7 00 2F         [ 1] 3203 	ld	_configuration_variables+26, a
      00C346                       3204 00104$:
                           000F05  3205 	C$ebike_app.c$1814$1_0$569 ==.
                                   3206 ;	ebike_app.c: 1814: }
      00C346 5B 10            [ 2] 3207 	addw	sp, #16
                           000F07  3208 	C$ebike_app.c$1814$1_0$569 ==.
                           000F07  3209 	XFebike_app$apply_temperature_limiting$0$0 ==.
      00C348 81               [ 4] 3210 	ret
                           000F08  3211 	Febike_app$boost_run_statemachine$0$0 ==.
                           000F08  3212 	C$ebike_app.c$1819$1_0$573 ==.
                                   3213 ;	ebike_app.c: 1819: static void boost_run_statemachine (void)
                                   3214 ;	-----------------------------------------
                                   3215 ;	 function boost_run_statemachine
                                   3216 ;	-----------------------------------------
      00C349                       3217 _boost_run_statemachine:
      00C349 52 02            [ 2] 3218 	sub	sp, #2
                           000F0A  3219 	C$ebike_app.c$1821$1_0$573 ==.
                                   3220 ;	ebike_app.c: 1821: if(configuration_variables.ui8_startup_motor_power_boost_time > 0)
      00C34B C6 00 2A         [ 1] 3221 	ld	a, _configuration_variables+21
      00C34E 6B 02            [ 1] 3222 	ld	(0x02, sp), a
      00C350 26 03            [ 1] 3223 	jrne	00215$
      00C352 CC C4 64         [ 2] 3224 	jp	00137$
      00C355                       3225 00215$:
                           000F14  3226 	C$ebike_app.c$1823$2_0$574 ==.
                                   3227 ;	ebike_app.c: 1823: switch(ui8_startup_boost_state_machine)
      00C355 C6 02 0A         [ 1] 3228 	ld	a, _ui8_startup_boost_state_machine+0
      00C358 A1 00            [ 1] 3229 	cp	a, #0x00
      00C35A 27 15            [ 1] 3230 	jreq	00101$
      00C35C A1 02            [ 1] 3231 	cp	a, #0x02
      00C35E 27 35            [ 1] 3232 	jreq	00105$
      00C360 A1 04            [ 1] 3233 	cp	a, #0x04
      00C362 26 03            [ 1] 3234 	jrne	00223$
      00C364 CC C3 F0         [ 2] 3235 	jp	00114$
      00C367                       3236 00223$:
      00C367 A1 05            [ 1] 3237 	cp	a, #0x05
      00C369 26 03            [ 1] 3238 	jrne	00226$
      00C36B CC C4 2A         [ 2] 3239 	jp	00122$
      00C36E                       3240 00226$:
      00C36E CC C4 64         [ 2] 3241 	jp	00137$
                           000F30  3242 	C$ebike_app.c$1826$3_0$575 ==.
                                   3243 ;	ebike_app.c: 1826: case BOOST_STATE_BOOST_DISABLED:
      00C371                       3244 00101$:
                           000F30  3245 	C$ebike_app.c$1827$3_0$575 ==.
                                   3246 ;	ebike_app.c: 1827: if((ui8_torque_sensor > TORQUE_SENSOR_THRESHOLD_HI)&&(!ui8_brake_is_set))
      00C371 C6 01 E7         [ 1] 3247 	ld	a, _ui8_torque_sensor+0
      00C374 A1 0C            [ 1] 3248 	cp	a, #0x0c
      00C376 22 03            [ 1] 3249 	jrugt	00228$
      00C378 CC C4 64         [ 2] 3250 	jp	00137$
      00C37B                       3251 00228$:
      00C37B 72 5D 02 2F      [ 1] 3252 	tnz	_ui8_brake_is_set+0
      00C37F 27 03            [ 1] 3253 	jreq	00229$
      00C381 CC C4 64         [ 2] 3254 	jp	00137$
      00C384                       3255 00229$:
                           000F43  3256 	C$ebike_app.c$1829$4_0$576 ==.
                                   3257 ;	ebike_app.c: 1829: ui8_startup_boost_enable = 1;
      00C384 35 01 02 08      [ 1] 3258 	mov	_ui8_startup_boost_enable+0, #0x01
                           000F47  3259 	C$ebike_app.c$1830$4_0$576 ==.
                                   3260 ;	ebike_app.c: 1830: ui8_startup_boost_timer = configuration_variables.ui8_startup_motor_power_boost_time;
      00C388 C6 00 2A         [ 1] 3261 	ld	a, _configuration_variables+21
      00C38B C7 02 0B         [ 1] 3262 	ld	_ui8_startup_boost_timer+0, a
                           000F4D  3263 	C$ebike_app.c$1831$4_0$576 ==.
                                   3264 ;	ebike_app.c: 1831: ui8_startup_boost_state_machine = BOOST_STATE_BOOST;
      00C38E 35 02 02 0A      [ 1] 3265 	mov	_ui8_startup_boost_state_machine+0, #0x02
                           000F51  3266 	C$ebike_app.c$1833$3_0$575 ==.
                                   3267 ;	ebike_app.c: 1833: break;
      00C392 CC C4 64         [ 2] 3268 	jp	00137$
                           000F54  3269 	C$ebike_app.c$1835$3_0$575 ==.
                                   3270 ;	ebike_app.c: 1835: case BOOST_STATE_BOOST:
      00C395                       3271 00105$:
                           000F54  3272 	C$ebike_app.c$1837$3_0$575 ==.
                                   3273 ;	ebike_app.c: 1837: if(ui8_brake_is_set)
      00C395 72 5D 02 2F      [ 1] 3274 	tnz	_ui8_brake_is_set+0
      00C399 27 08            [ 1] 3275 	jreq	00107$
                           000F5A  3276 	C$ebike_app.c$1839$4_0$577 ==.
                                   3277 ;	ebike_app.c: 1839: ui8_startup_boost_enable = 0;
      00C39B 72 5F 02 08      [ 1] 3278 	clr	_ui8_startup_boost_enable+0
                           000F5E  3279 	C$ebike_app.c$1840$4_0$577 ==.
                                   3280 ;	ebike_app.c: 1840: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
      00C39F 72 5F 02 0A      [ 1] 3281 	clr	_ui8_startup_boost_state_machine+0
      00C3A3                       3282 00107$:
                           000F62  3283 	C$ebike_app.c$1844$3_0$575 ==.
                                   3284 ;	ebike_app.c: 1844: if(ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW)
      00C3A3 C6 01 E7         [ 1] 3285 	ld	a, _ui8_torque_sensor+0
      00C3A6 A1 0C            [ 1] 3286 	cp	a, #0x0c
      00C3A8 24 08            [ 1] 3287 	jrnc	00109$
                           000F69  3288 	C$ebike_app.c$1846$4_0$578 ==.
                                   3289 ;	ebike_app.c: 1846: ui8_startup_boost_enable = 0;
      00C3AA 72 5F 02 08      [ 1] 3290 	clr	_ui8_startup_boost_enable+0
                           000F6D  3291 	C$ebike_app.c$1847$4_0$578 ==.
                                   3292 ;	ebike_app.c: 1847: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_WAIT_TO_RESTART;
      00C3AE 35 05 02 0A      [ 1] 3293 	mov	_ui8_startup_boost_state_machine+0, #0x05
      00C3B2                       3294 00109$:
                           000F71  3295 	C$ebike_app.c$1851$3_0$575 ==.
                                   3296 ;	ebike_app.c: 1851: if(ui8_startup_boost_timer > 0){ui8_startup_boost_timer--;}
      00C3B2 72 5D 02 0B      [ 1] 3297 	tnz	_ui8_startup_boost_timer+0
      00C3B6 27 04            [ 1] 3298 	jreq	00111$
      00C3B8 72 5A 02 0B      [ 1] 3299 	dec	_ui8_startup_boost_timer+0
      00C3BC                       3300 00111$:
                           000F7B  3301 	C$ebike_app.c$1854$3_0$575 ==.
                                   3302 ;	ebike_app.c: 1854: if(ui8_startup_boost_timer == 0)
      00C3BC 72 5D 02 0B      [ 1] 3303 	tnz	_ui8_startup_boost_timer+0
      00C3C0 27 03            [ 1] 3304 	jreq	00233$
      00C3C2 CC C4 64         [ 2] 3305 	jp	00137$
      00C3C5                       3306 00233$:
                           000F84  3307 	C$ebike_app.c$1856$4_0$580 ==.
                                   3308 ;	ebike_app.c: 1856: ui8_startup_boost_state_machine = BOOST_STATE_FADE;
      00C3C5 35 04 02 0A      [ 1] 3309 	mov	_ui8_startup_boost_state_machine+0, #0x04
                           000F88  3310 	C$ebike_app.c$1857$4_0$580 ==.
                                   3311 ;	ebike_app.c: 1857: ui8_startup_boost_enable = 0;
      00C3C9 72 5F 02 08      [ 1] 3312 	clr	_ui8_startup_boost_enable+0
                           000F8C  3313 	C$ebike_app.c$1860$4_0$580 ==.
                                   3314 ;	ebike_app.c: 1860: ui8_startup_boost_fade_steps = configuration_variables.ui8_startup_motor_power_boost_fade_time;
      00C3CD C6 00 2B         [ 1] 3315 	ld	a, _configuration_variables+22
      00C3D0 C7 02 0C         [ 1] 3316 	ld	_ui8_startup_boost_fade_steps+0, a
                           000F92  3317 	C$ebike_app.c$1861$4_0$580 ==.
                                   3318 ;	ebike_app.c: 1861: ui16_startup_boost_fade_variable_x256 = ((uint16_t) ui8_adc_motor_target_current << 8);
      00C3D3 C6 02 2E         [ 1] 3319 	ld	a, _ui8_adc_motor_target_current+0
      00C3D6 97               [ 1] 3320 	ld	xl, a
      00C3D7 4F               [ 1] 3321 	clr	a
      00C3D8 02               [ 1] 3322 	rlwa	x
      00C3D9 CF 02 0D         [ 2] 3323 	ldw	_ui16_startup_boost_fade_variable_x256+0, x
                           000F9B  3324 	C$ebike_app.c$1862$4_0$580 ==.
                                   3325 ;	ebike_app.c: 1862: ui16_startup_boost_fade_variable_step_amount_x256 = (ui16_startup_boost_fade_variable_x256 / ((uint16_t) ui8_startup_boost_fade_steps));
      00C3DC 5F               [ 1] 3326 	clrw	x
      00C3DD C6 02 0C         [ 1] 3327 	ld	a, _ui8_startup_boost_fade_steps+0
      00C3E0 97               [ 1] 3328 	ld	xl, a
      00C3E1 51               [ 1] 3329 	exgw	x, y
      00C3E2 CE 02 0D         [ 2] 3330 	ldw	x, _ui16_startup_boost_fade_variable_x256+0
      00C3E5 65               [ 2] 3331 	divw	x, y
      00C3E6 CF 02 0F         [ 2] 3332 	ldw	_ui16_startup_boost_fade_variable_step_amount_x256+0, x
                           000FA8  3333 	C$ebike_app.c$1863$4_0$580 ==.
                                   3334 ;	ebike_app.c: 1863: ui8_startup_boost_fade_enable = 1;
      00C3E9 35 01 02 09      [ 1] 3335 	mov	_ui8_startup_boost_fade_enable+0, #0x01
                           000FAC  3336 	C$ebike_app.c$1865$3_0$575 ==.
                                   3337 ;	ebike_app.c: 1865: break;
      00C3ED CC C4 64         [ 2] 3338 	jp	00137$
                           000FAF  3339 	C$ebike_app.c$1867$3_0$575 ==.
                                   3340 ;	ebike_app.c: 1867: case BOOST_STATE_FADE:
      00C3F0                       3341 00114$:
                           000FAF  3342 	C$ebike_app.c$1869$3_0$575 ==.
                                   3343 ;	ebike_app.c: 1869: if(ui8_brake_is_set)
      00C3F0 72 5D 02 2F      [ 1] 3344 	tnz	_ui8_brake_is_set+0
      00C3F4 27 0C            [ 1] 3345 	jreq	00116$
                           000FB5  3346 	C$ebike_app.c$1871$4_0$581 ==.
                                   3347 ;	ebike_app.c: 1871: ui8_startup_boost_fade_enable = 0;
      00C3F6 72 5F 02 09      [ 1] 3348 	clr	_ui8_startup_boost_fade_enable+0
                           000FB9  3349 	C$ebike_app.c$1872$4_0$581 ==.
                                   3350 ;	ebike_app.c: 1872: ui8_startup_boost_fade_steps = 0;
      00C3FA 72 5F 02 0C      [ 1] 3351 	clr	_ui8_startup_boost_fade_steps+0
                           000FBD  3352 	C$ebike_app.c$1873$4_0$581 ==.
                                   3353 ;	ebike_app.c: 1873: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
      00C3FE 72 5F 02 0A      [ 1] 3354 	clr	_ui8_startup_boost_state_machine+0
      00C402                       3355 00116$:
                           000FC1  3356 	C$ebike_app.c$1876$3_0$575 ==.
                                   3357 ;	ebike_app.c: 1876: if(ui8_startup_boost_fade_steps > 0){ui8_startup_boost_fade_steps--;}
      00C402 72 5D 02 0C      [ 1] 3358 	tnz	_ui8_startup_boost_fade_steps+0
      00C406 27 04            [ 1] 3359 	jreq	00118$
      00C408 72 5A 02 0C      [ 1] 3360 	dec	_ui8_startup_boost_fade_steps+0
      00C40C                       3361 00118$:
                           000FCB  3362 	C$ebike_app.c$1879$3_0$575 ==.
                                   3363 ;	ebike_app.c: 1879: if((ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW)||(ui8_startup_boost_fade_steps == 0))
      00C40C C6 01 E7         [ 1] 3364 	ld	a, _ui8_torque_sensor+0
      00C40F A1 0C            [ 1] 3365 	cp	a, #0x0c
      00C411 25 09            [ 1] 3366 	jrc	00119$
      00C413 72 5D 02 0C      [ 1] 3367 	tnz	_ui8_startup_boost_fade_steps+0
      00C417 27 03            [ 1] 3368 	jreq	00237$
      00C419 CC C4 64         [ 2] 3369 	jp	00137$
      00C41C                       3370 00237$:
      00C41C                       3371 00119$:
                           000FDB  3372 	C$ebike_app.c$1881$4_0$583 ==.
                                   3373 ;	ebike_app.c: 1881: ui8_startup_boost_fade_enable = 0;
      00C41C 72 5F 02 09      [ 1] 3374 	clr	_ui8_startup_boost_fade_enable+0
                           000FDF  3375 	C$ebike_app.c$1882$4_0$583 ==.
                                   3376 ;	ebike_app.c: 1882: ui8_startup_boost_fade_steps = 0;
      00C420 72 5F 02 0C      [ 1] 3377 	clr	_ui8_startup_boost_fade_steps+0
                           000FE3  3378 	C$ebike_app.c$1883$4_0$583 ==.
                                   3379 ;	ebike_app.c: 1883: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_WAIT_TO_RESTART;
      00C424 35 05 02 0A      [ 1] 3380 	mov	_ui8_startup_boost_state_machine+0, #0x05
                           000FE7  3381 	C$ebike_app.c$1885$3_0$575 ==.
                                   3382 ;	ebike_app.c: 1885: break;
      00C428 20 3A            [ 2] 3383 	jra	00137$
                           000FE9  3384 	C$ebike_app.c$1888$3_0$575 ==.
                                   3385 ;	ebike_app.c: 1888: case BOOST_STATE_BOOST_WAIT_TO_RESTART:
      00C42A                       3386 00122$:
                           000FE9  3387 	C$ebike_app.c$1890$3_0$575 ==.
                                   3388 ;	ebike_app.c: 1890: if((configuration_variables.ui8_startup_motor_power_boost_state & 0x01) == 0)
      00C42A C6 00 28         [ 1] 3389 	ld	a, _configuration_variables+19
      00C42D 44               [ 1] 3390 	srl	a
      00C42E 25 10            [ 1] 3391 	jrc	00127$
                           000FEF  3392 	C$ebike_app.c$1892$4_0$584 ==.
                                   3393 ;	ebike_app.c: 1892: if((ui16_wheel_speed_x10 == 0)&&(ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW))
      00C430 CE 02 17         [ 2] 3394 	ldw	x, _ui16_wheel_speed_x10+0
      00C433 26 0B            [ 1] 3395 	jrne	00127$
      00C435 C6 01 E7         [ 1] 3396 	ld	a, _ui8_torque_sensor+0
      00C438 A1 0C            [ 1] 3397 	cp	a, #0x0c
      00C43A 24 04            [ 1] 3398 	jrnc	00127$
                           000FFB  3399 	C$ebike_app.c$1894$5_0$585 ==.
                                   3400 ;	ebike_app.c: 1894: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
      00C43C 72 5F 02 0A      [ 1] 3401 	clr	_ui8_startup_boost_state_machine+0
      00C440                       3402 00127$:
                           000FFF  3403 	C$ebike_app.c$1898$3_0$575 ==.
                                   3404 ;	ebike_app.c: 1898: if((configuration_variables.ui8_startup_motor_power_boost_state & 0x01) > 0)
      00C440 C6 00 28         [ 1] 3405 	ld	a, _configuration_variables+19
      00C443 6B 02            [ 1] 3406 	ld	(0x02, sp), a
      00C445 0F 01            [ 1] 3407 	clr	(0x01, sp)
      00C447 7B 02            [ 1] 3408 	ld	a, (0x02, sp)
      00C449 A4 01            [ 1] 3409 	and	a, #0x01
      00C44B 97               [ 1] 3410 	ld	xl, a
      00C44C 4F               [ 1] 3411 	clr	a
      00C44D 95               [ 1] 3412 	ld	xh, a
      00C44E A3 00 00         [ 2] 3413 	cpw	x, #0x0000
      00C451 2D 11            [ 1] 3414 	jrsle	00137$
                           001012  3415 	C$ebike_app.c$1900$4_0$586 ==.
                                   3416 ;	ebike_app.c: 1900: if((ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW)||(ui8_pas_cadence_rpm == 0))
      00C453 C6 01 E7         [ 1] 3417 	ld	a, _ui8_torque_sensor+0
      00C456 A1 0C            [ 1] 3418 	cp	a, #0x0c
      00C458 25 06            [ 1] 3419 	jrc	00128$
      00C45A 72 5D 02 00      [ 1] 3420 	tnz	_ui8_pas_cadence_rpm+0
      00C45E 26 04            [ 1] 3421 	jrne	00137$
      00C460                       3422 00128$:
                           00101F  3423 	C$ebike_app.c$1902$5_0$587 ==.
                                   3424 ;	ebike_app.c: 1902: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
      00C460 72 5F 02 0A      [ 1] 3425 	clr	_ui8_startup_boost_state_machine+0
                           001023  3426 	C$ebike_app.c$1909$1_0$573 ==.
                                   3427 ;	ebike_app.c: 1909: }
      00C464                       3428 00137$:
                           001023  3429 	C$ebike_app.c$1911$1_0$573 ==.
                                   3430 ;	ebike_app.c: 1911: }
      00C464 5B 02            [ 2] 3431 	addw	sp, #2
                           001025  3432 	C$ebike_app.c$1911$1_0$573 ==.
                           001025  3433 	XFebike_app$boost_run_statemachine$0$0 ==.
      00C466 81               [ 4] 3434 	ret
                           001026  3435 	Febike_app$apply_boost$0$0 ==.
                           001026  3436 	C$ebike_app.c$1916$1_0$589 ==.
                                   3437 ;	ebike_app.c: 1916: static uint8_t apply_boost(uint8_t ui8_pas_cadence, uint8_t ui8_max_current_boost_state, uint8_t *ui8_target_current)
                                   3438 ;	-----------------------------------------
                                   3439 ;	 function apply_boost
                                   3440 ;	-----------------------------------------
      00C467                       3441 _apply_boost:
                           001026  3442 	C$ebike_app.c$1918$1_0$589 ==.
                                   3443 ;	ebike_app.c: 1918: uint8_t ui8_boost_enable = (ui8_startup_boost_enable && configuration_variables.ui8_assist_level_factor_x10 && ui8_pas_cadence > 0) ? 1 : 0;
      00C467 72 5D 02 08      [ 1] 3444 	tnz	_ui8_startup_boost_enable+0
      00C46B 27 0C            [ 1] 3445 	jreq	00105$
      00C46D C6 00 15         [ 1] 3446 	ld	a, _configuration_variables+0
      00C470 27 07            [ 1] 3447 	jreq	00105$
      00C472 0D 03            [ 1] 3448 	tnz	(0x03, sp)
      00C474 27 03            [ 1] 3449 	jreq	00105$
      00C476 5F               [ 1] 3450 	clrw	x
      00C477 5C               [ 1] 3451 	incw	x
      00C478 21                    3452 	.byte 0x21
      00C479                       3453 00105$:
      00C479 5F               [ 1] 3454 	clrw	x
      00C47A                       3455 00106$:
      00C47A 9F               [ 1] 3456 	ld	a, xl
                           00103A  3457 	C$ebike_app.c$1920$1_0$589 ==.
                                   3458 ;	ebike_app.c: 1920: if(ui8_boost_enable)
      00C47B 4D               [ 1] 3459 	tnz	a
      00C47C 27 06            [ 1] 3460 	jreq	00102$
                           00103D  3461 	C$ebike_app.c$1922$2_0$590 ==.
                                   3462 ;	ebike_app.c: 1922: *ui8_target_current = ui8_max_current_boost_state;
      00C47E 16 05            [ 2] 3463 	ldw	y, (0x05, sp)
      00C480 7B 04            [ 1] 3464 	ld	a, (0x04, sp)
      00C482 90 F7            [ 1] 3465 	ld	(y), a
      00C484                       3466 00102$:
                           001043  3467 	C$ebike_app.c$1925$1_0$589 ==.
                                   3468 ;	ebike_app.c: 1925: return ui8_boost_enable;
      00C484 9F               [ 1] 3469 	ld	a, xl
                           001044  3470 	C$ebike_app.c$1926$1_0$589 ==.
                                   3471 ;	ebike_app.c: 1926: }
                           001044  3472 	C$ebike_app.c$1926$1_0$589 ==.
                           001044  3473 	XFebike_app$apply_boost$0$0 ==.
      00C485 81               [ 4] 3474 	ret
                           001045  3475 	Febike_app$apply_boost_fade_out$0$0 ==.
                           001045  3476 	C$ebike_app.c$1931$1_0$592 ==.
                                   3477 ;	ebike_app.c: 1931: static void apply_boost_fade_out(uint8_t *ui8_target_current)
                                   3478 ;	-----------------------------------------
                                   3479 ;	 function apply_boost_fade_out
                                   3480 ;	-----------------------------------------
      00C486                       3481 _apply_boost_fade_out:
      00C486 52 02            [ 2] 3482 	sub	sp, #2
                           001047  3483 	C$ebike_app.c$1933$1_0$592 ==.
                                   3484 ;	ebike_app.c: 1933: if(ui8_startup_boost_fade_enable)
      00C488 72 5D 02 09      [ 1] 3485 	tnz	_ui8_startup_boost_fade_enable+0
      00C48C 27 38            [ 1] 3486 	jreq	00108$
                           00104D  3487 	C$ebike_app.c$1936$2_0$593 ==.
                                   3488 ;	ebike_app.c: 1936: uint16_t ui16_adc_motor_target_current_x256 = ((uint16_t) ui8_adc_motor_target_current) << 8;
      00C48E C6 02 2E         [ 1] 3489 	ld	a, _ui8_adc_motor_target_current+0
      00C491 97               [ 1] 3490 	ld	xl, a
      00C492 4F               [ 1] 3491 	clr	a
      00C493 02               [ 1] 3492 	rlwa	x
      00C494 1F 01            [ 2] 3493 	ldw	(0x01, sp), x
                           001055  3494 	C$ebike_app.c$1937$2_0$593 ==.
                                   3495 ;	ebike_app.c: 1937: if(ui16_startup_boost_fade_variable_x256 > ui16_adc_motor_target_current_x256)
      00C496 1E 01            [ 2] 3496 	ldw	x, (0x01, sp)
      00C498 C3 02 0D         [ 2] 3497 	cpw	x, _ui16_startup_boost_fade_variable_x256+0
      00C49B 24 0C            [ 1] 3498 	jrnc	00104$
                           00105C  3499 	C$ebike_app.c$1939$3_0$594 ==.
                                   3500 ;	ebike_app.c: 1939: ui16_startup_boost_fade_variable_x256 -= ui16_startup_boost_fade_variable_step_amount_x256;
      00C49D CE 02 0D         [ 2] 3501 	ldw	x, _ui16_startup_boost_fade_variable_x256+0
      00C4A0 72 B0 02 0F      [ 2] 3502 	subw	x, _ui16_startup_boost_fade_variable_step_amount_x256+0
      00C4A4 CF 02 0D         [ 2] 3503 	ldw	_ui16_startup_boost_fade_variable_x256+0, x
      00C4A7 20 11            [ 2] 3504 	jra	00105$
      00C4A9                       3505 00104$:
                           001068  3506 	C$ebike_app.c$1941$2_0$593 ==.
                                   3507 ;	ebike_app.c: 1941: else if(ui16_startup_boost_fade_variable_x256 < ui16_adc_motor_target_current_x256)
      00C4A9 1E 01            [ 2] 3508 	ldw	x, (0x01, sp)
      00C4AB C3 02 0D         [ 2] 3509 	cpw	x, _ui16_startup_boost_fade_variable_x256+0
      00C4AE 23 0A            [ 2] 3510 	jrule	00105$
                           00106F  3511 	C$ebike_app.c$1943$3_0$595 ==.
                                   3512 ;	ebike_app.c: 1943: ui16_startup_boost_fade_variable_x256 += ui16_startup_boost_fade_variable_step_amount_x256;
      00C4B0 CE 02 0D         [ 2] 3513 	ldw	x, _ui16_startup_boost_fade_variable_x256+0
      00C4B3 72 BB 02 0F      [ 2] 3514 	addw	x, _ui16_startup_boost_fade_variable_step_amount_x256+0
      00C4B7 CF 02 0D         [ 2] 3515 	ldw	_ui16_startup_boost_fade_variable_x256+0, x
      00C4BA                       3516 00105$:
                           001079  3517 	C$ebike_app.c$1946$2_0$593 ==.
                                   3518 ;	ebike_app.c: 1946: *ui8_target_current = (uint8_t) (ui16_startup_boost_fade_variable_x256 >> 8);
      00C4BA 1E 05            [ 2] 3519 	ldw	x, (0x05, sp)
      00C4BC C6 02 0D         [ 1] 3520 	ld	a, _ui16_startup_boost_fade_variable_x256+0
      00C4BF 6B 02            [ 1] 3521 	ld	(0x02, sp), a
      00C4C1 0F 01            [ 1] 3522 	clr	(0x01, sp)
      00C4C3 7B 02            [ 1] 3523 	ld	a, (0x02, sp)
      00C4C5 F7               [ 1] 3524 	ld	(x), a
      00C4C6                       3525 00108$:
                           001085  3526 	C$ebike_app.c$1948$1_0$592 ==.
                                   3527 ;	ebike_app.c: 1948: }
      00C4C6 5B 02            [ 2] 3528 	addw	sp, #2
                           001087  3529 	C$ebike_app.c$1948$1_0$592 ==.
                           001087  3530 	XFebike_app$apply_boost_fade_out$0$0 ==.
      00C4C8 81               [ 4] 3531 	ret
                           001088  3532 	Febike_app$read_pas_cadence$0$0 ==.
                           001088  3533 	C$ebike_app.c$1953$1_0$597 ==.
                                   3534 ;	ebike_app.c: 1953: static void read_pas_cadence(void)
                                   3535 ;	-----------------------------------------
                                   3536 ;	 function read_pas_cadence
                                   3537 ;	-----------------------------------------
      00C4C9                       3538 _read_pas_cadence:
                           001088  3539 	C$ebike_app.c$1956$1_0$597 ==.
                                   3540 ;	ebike_app.c: 1956: if(ui16_pas_pwm_cycles_ticks >= ((uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS)||(ui8_pedaling_direction == 0))
      00C4C9 CE 01 FA         [ 2] 3541 	ldw	x, _ui16_pas_pwm_cycles_ticks+0
      00C4CC A3 24 9F         [ 2] 3542 	cpw	x, #0x249f
      00C4CF 24 06            [ 1] 3543 	jrnc	00104$
      00C4D1 72 5D 01 FD      [ 1] 3544 	tnz	_ui8_pedaling_direction+0
      00C4D5 26 0B            [ 1] 3545 	jrne	00105$
      00C4D7                       3546 00104$:
                           001096  3547 	C$ebike_app.c$1958$2_0$598 ==.
                                   3548 ;	ebike_app.c: 1958: ui8_pas_cadence_rpm = 0;
      00C4D7 72 5F 02 00      [ 1] 3549 	clr	_ui8_pas_cadence_rpm+0
                           00109A  3550 	C$ebike_app.c$1959$2_0$598 ==.
                                   3551 ;	ebike_app.c: 1959: ui8_pas_backwards_cadence_rpm = 0;
      00C4DB 72 5F 02 01      [ 1] 3552 	clr	_ui8_pas_backwards_cadence_rpm+0
      00C4DF CC C5 5B         [ 2] 3553 	jp	00108$
      00C4E2                       3554 00105$:
                           0010A1  3555 	C$ebike_app.c$1961$1_0$597 ==.
                                   3556 ;	ebike_app.c: 1961: else if(ui8_pedaling_direction == 2)
      00C4E2 C6 01 FD         [ 1] 3557 	ld	a, _ui8_pedaling_direction+0
      00C4E5 A1 02            [ 1] 3558 	cp	a, #0x02
      00C4E7 26 3A            [ 1] 3559 	jrne	00102$
                           0010A8  3560 	C$ebike_app.c$1963$2_0$599 ==.
                                   3561 ;	ebike_app.c: 1963: ui8_pas_cadence_rpm = 0;
      00C4E9 72 5F 02 00      [ 1] 3562 	clr	_ui8_pas_cadence_rpm+0
                           0010AC  3563 	C$ebike_app.c$1964$1_0$597 ==.
                                   3564 ;	ebike_app.c: 1964: ui8_pas_backwards_cadence_rpm = (uint8_t) (60 / (((float) ui16_pas_pwm_cycles_ticks) * ((float) PAS_NUMBER_MAGNETS) * 0.000064));
      00C4ED 3B 01 FB         [ 1] 3565 	push	_ui16_pas_pwm_cycles_ticks+1
      00C4F0 3B 01 FA         [ 1] 3566 	push	_ui16_pas_pwm_cycles_ticks+0
      00C4F3 CD D8 3B         [ 4] 3567 	call	___uint2fs
      00C4F6 5B 02            [ 2] 3568 	addw	sp, #2
      00C4F8 89               [ 2] 3569 	pushw	x
      00C4F9 90 89            [ 2] 3570 	pushw	y
      00C4FB 4B AC            [ 1] 3571 	push	#0xac
      00C4FD 4B C5            [ 1] 3572 	push	#0xc5
      00C4FF 4B A7            [ 1] 3573 	push	#0xa7
      00C501 4B 3A            [ 1] 3574 	push	#0x3a
      00C503 CD D2 04         [ 4] 3575 	call	___fsmul
      00C506 5B 08            [ 2] 3576 	addw	sp, #8
      00C508 89               [ 2] 3577 	pushw	x
      00C509 90 89            [ 2] 3578 	pushw	y
      00C50B 5F               [ 1] 3579 	clrw	x
      00C50C 89               [ 2] 3580 	pushw	x
      00C50D 4B 70            [ 1] 3581 	push	#0x70
      00C50F 4B 42            [ 1] 3582 	push	#0x42
      00C511 CD DA 4B         [ 4] 3583 	call	___fsdiv
      00C514 5B 08            [ 2] 3584 	addw	sp, #8
      00C516 89               [ 2] 3585 	pushw	x
      00C517 90 89            [ 2] 3586 	pushw	y
      00C519 CD DA EB         [ 4] 3587 	call	___fs2uchar
      00C51C 5B 04            [ 2] 3588 	addw	sp, #4
      00C51E C7 02 01         [ 1] 3589 	ld	_ui8_pas_backwards_cadence_rpm+0, a
      00C521 20 38            [ 2] 3590 	jra	00108$
      00C523                       3591 00102$:
                           0010E2  3592 	C$ebike_app.c$1968$1_0$597 ==.
                                   3593 ;	ebike_app.c: 1968: ui8_pas_cadence_rpm = (uint8_t) (60 / (((float) ui16_pas_pwm_cycles_ticks) * ((float) PAS_NUMBER_MAGNETS) * 0.000064));
      00C523 3B 01 FB         [ 1] 3594 	push	_ui16_pas_pwm_cycles_ticks+1
      00C526 3B 01 FA         [ 1] 3595 	push	_ui16_pas_pwm_cycles_ticks+0
      00C529 CD D8 3B         [ 4] 3596 	call	___uint2fs
      00C52C 5B 02            [ 2] 3597 	addw	sp, #2
      00C52E 89               [ 2] 3598 	pushw	x
      00C52F 90 89            [ 2] 3599 	pushw	y
      00C531 4B AC            [ 1] 3600 	push	#0xac
      00C533 4B C5            [ 1] 3601 	push	#0xc5
      00C535 4B A7            [ 1] 3602 	push	#0xa7
      00C537 4B 3A            [ 1] 3603 	push	#0x3a
      00C539 CD D2 04         [ 4] 3604 	call	___fsmul
      00C53C 5B 08            [ 2] 3605 	addw	sp, #8
      00C53E 89               [ 2] 3606 	pushw	x
      00C53F 90 89            [ 2] 3607 	pushw	y
      00C541 5F               [ 1] 3608 	clrw	x
      00C542 89               [ 2] 3609 	pushw	x
      00C543 4B 70            [ 1] 3610 	push	#0x70
      00C545 4B 42            [ 1] 3611 	push	#0x42
      00C547 CD DA 4B         [ 4] 3612 	call	___fsdiv
      00C54A 5B 08            [ 2] 3613 	addw	sp, #8
      00C54C 89               [ 2] 3614 	pushw	x
      00C54D 90 89            [ 2] 3615 	pushw	y
      00C54F CD DA EB         [ 4] 3616 	call	___fs2uchar
      00C552 5B 04            [ 2] 3617 	addw	sp, #4
      00C554 C7 02 00         [ 1] 3618 	ld	_ui8_pas_cadence_rpm+0, a
                           001116  3619 	C$ebike_app.c$1969$2_0$600 ==.
                                   3620 ;	ebike_app.c: 1969: ui8_pas_backwards_cadence_rpm = 0;
      00C557 72 5F 02 01      [ 1] 3621 	clr	_ui8_pas_backwards_cadence_rpm+0
      00C55B                       3622 00108$:
                           00111A  3623 	C$ebike_app.c$1971$1_0$597 ==.
                                   3624 ;	ebike_app.c: 1971: }
                           00111A  3625 	C$ebike_app.c$1971$1_0$597 ==.
                           00111A  3626 	XFebike_app$read_pas_cadence$0$0 ==.
      00C55B 81               [ 4] 3627 	ret
                           00111B  3628 	Febike_app$torque_sensor_read$0$0 ==.
                           00111B  3629 	C$ebike_app.c$1976$1_0$602 ==.
                                   3630 ;	ebike_app.c: 1976: static void torque_sensor_read(void)
                                   3631 ;	-----------------------------------------
                                   3632 ;	 function torque_sensor_read
                                   3633 ;	-----------------------------------------
      00C55C                       3634 _torque_sensor_read:
      00C55C 52 0C            [ 2] 3635 	sub	sp, #12
                           00111D  3636 	C$ebike_app.c$1978$1_0$602 ==.
                                   3637 ;	ebike_app.c: 1978: uint8_t ui8_adc_torque_sensor = UI8_ADC_TORQUE_SENSOR;
      00C55E C6 53 E8         [ 1] 3638 	ld	a, 0x53e8
      00C561 97               [ 1] 3639 	ld	xl, a
                           001121  3640 	C$ebike_app.c$2012$1_0$602 ==.
                                   3641 ;	ebike_app.c: 2012: (uint8_t) ui8_adc_torque_sensor_max_value,
      00C562 C6 01 EE         [ 1] 3642 	ld	a, _ui8_adc_torque_sensor_max_value+0
      00C565 6B 04            [ 1] 3643 	ld	(0x04, sp), a
      00C567 0F 03            [ 1] 3644 	clr	(0x03, sp)
      00C569 90 5F            [ 1] 3645 	clrw	y
                           00112A  3646 	C$ebike_app.c$2011$1_0$602 ==.
                                   3647 ;	ebike_app.c: 2011: (uint8_t) ui8_adc_torque_sensor_min_value,
      00C56B C6 01 ED         [ 1] 3648 	ld	a, _ui8_adc_torque_sensor_min_value+0
      00C56E 6B 08            [ 1] 3649 	ld	(0x08, sp), a
      00C570 0F 07            [ 1] 3650 	clr	(0x07, sp)
      00C572 0F 06            [ 1] 3651 	clr	(0x06, sp)
      00C574 0F 05            [ 1] 3652 	clr	(0x05, sp)
                           001135  3653 	C$ebike_app.c$2010$1_0$602 ==.
                                   3654 ;	ebike_app.c: 2010: ui8_adc_torque_sensor,
      00C576 41               [ 1] 3655 	exg	a, xl
      00C577 6B 0C            [ 1] 3656 	ld	(0x0c, sp), a
      00C579 41               [ 1] 3657 	exg	a, xl
      00C57A 0F 0B            [ 1] 3658 	clr	(0x0b, sp)
      00C57C 0F 0A            [ 1] 3659 	clr	(0x0a, sp)
      00C57E 0F 09            [ 1] 3660 	clr	(0x09, sp)
      00C580 4B FF            [ 1] 3661 	push	#0xff
      00C582 5F               [ 1] 3662 	clrw	x
      00C583 89               [ 2] 3663 	pushw	x
      00C584 4B 00            [ 1] 3664 	push	#0x00
      00C586 5F               [ 1] 3665 	clrw	x
      00C587 89               [ 2] 3666 	pushw	x
      00C588 5F               [ 1] 3667 	clrw	x
      00C589 89               [ 2] 3668 	pushw	x
      00C58A 1E 0B            [ 2] 3669 	ldw	x, (0x0b, sp)
      00C58C 89               [ 2] 3670 	pushw	x
      00C58D 90 89            [ 2] 3671 	pushw	y
      00C58F 1E 13            [ 2] 3672 	ldw	x, (0x13, sp)
      00C591 89               [ 2] 3673 	pushw	x
      00C592 1E 13            [ 2] 3674 	ldw	x, (0x13, sp)
      00C594 89               [ 2] 3675 	pushw	x
      00C595 1E 1B            [ 2] 3676 	ldw	x, (0x1b, sp)
      00C597 89               [ 2] 3677 	pushw	x
      00C598 1E 1B            [ 2] 3678 	ldw	x, (0x1b, sp)
      00C59A 89               [ 2] 3679 	pushw	x
      00C59B CD C6 E6         [ 4] 3680 	call	_map
      00C59E 5B 14            [ 2] 3681 	addw	sp, #20
      00C5A0 9F               [ 1] 3682 	ld	a, xl
      00C5A1 C7 01 E8         [ 1] 3683 	ld	_ui8_torque_sensor_raw+0, a
                           001163  3684 	C$ebike_app.c$2019$1_0$602 ==.
                                   3685 ;	ebike_app.c: 2019: switch(ui8_tstr_state_machine)
      00C5A4 C6 02 28         [ 1] 3686 	ld	a, _ui8_tstr_state_machine+0
      00C5A7 A1 00            [ 1] 3687 	cp	a, #0x00
      00C5A9 27 06            [ 1] 3688 	jreq	00101$
      00C5AB A1 02            [ 1] 3689 	cp	a, #0x02
      00C5AD 27 13            [ 1] 3690 	jreq	00105$
      00C5AF 20 20            [ 2] 3691 	jra	00110$
                           001170  3692 	C$ebike_app.c$2022$2_0$603 ==.
                                   3693 ;	ebike_app.c: 2022: case STATE_NO_PEDALLING:
      00C5B1                       3694 00101$:
                           001170  3695 	C$ebike_app.c$2023$2_0$603 ==.
                                   3696 ;	ebike_app.c: 2023: if((ui8_torque_sensor_raw > 0)&&
      00C5B1 72 5D 01 E8      [ 1] 3697 	tnz	_ui8_torque_sensor_raw+0
      00C5B5 27 1A            [ 1] 3698 	jreq	00110$
                           001176  3699 	C$ebike_app.c$2024$2_0$603 ==.
                                   3700 ;	ebike_app.c: 2024: (ui16_wheel_speed_x10))
      00C5B7 CE 02 17         [ 2] 3701 	ldw	x, _ui16_wheel_speed_x10+0
      00C5BA 27 15            [ 1] 3702 	jreq	00110$
                           00117B  3703 	C$ebike_app.c$2026$3_0$604 ==.
                                   3704 ;	ebike_app.c: 2026: ui8_tstr_state_machine = STATE_PEDALLING;
      00C5BC 35 02 02 28      [ 1] 3705 	mov	_ui8_tstr_state_machine+0, #0x02
                           00117F  3706 	C$ebike_app.c$2028$2_0$603 ==.
                                   3707 ;	ebike_app.c: 2028: break;
      00C5C0 20 0F            [ 2] 3708 	jra	00110$
                           001181  3709 	C$ebike_app.c$2031$2_0$603 ==.
                                   3710 ;	ebike_app.c: 2031: case STATE_PEDALLING:
      00C5C2                       3711 00105$:
                           001181  3712 	C$ebike_app.c$2032$2_0$603 ==.
                                   3713 ;	ebike_app.c: 2032: if((ui16_wheel_speed_x10 == 0)&&
      00C5C2 CE 02 17         [ 2] 3714 	ldw	x, _ui16_wheel_speed_x10+0
      00C5C5 26 0A            [ 1] 3715 	jrne	00110$
                           001186  3716 	C$ebike_app.c$2033$2_0$603 ==.
                                   3717 ;	ebike_app.c: 2033: (ui8_torque_sensor_raw == 0))
      00C5C7 72 5D 01 E8      [ 1] 3718 	tnz	_ui8_torque_sensor_raw+0
      00C5CB 26 04            [ 1] 3719 	jrne	00110$
                           00118C  3720 	C$ebike_app.c$2035$3_0$605 ==.
                                   3721 ;	ebike_app.c: 2035: ui8_tstr_state_machine = STATE_NO_PEDALLING;
      00C5CD 72 5F 02 28      [ 1] 3722 	clr	_ui8_tstr_state_machine+0
                           001190  3723 	C$ebike_app.c$2041$1_0$602 ==.
                                   3724 ;	ebike_app.c: 2041: }			
      00C5D1                       3725 00110$:
                           001190  3726 	C$ebike_app.c$2044$1_0$602 ==.
                                   3727 ;	ebike_app.c: 2044: if((ui8_tstr_state_machine == STATE_PEDALLING)&&(ui8_pas_cadence_rpm == 0))
      00C5D1 C6 02 28         [ 1] 3728 	ld	a, _ui8_tstr_state_machine+0
      00C5D4 A1 02            [ 1] 3729 	cp	a, #0x02
      00C5D6 26 0C            [ 1] 3730 	jrne	00112$
      00C5D8 72 5D 02 00      [ 1] 3731 	tnz	_ui8_pas_cadence_rpm+0
      00C5DC 26 06            [ 1] 3732 	jrne	00112$
                           00119D  3733 	C$ebike_app.c$2046$2_0$606 ==.
                                   3734 ;	ebike_app.c: 2046: ui8_torque_sensor = 0;
      00C5DE 72 5F 01 E7      [ 1] 3735 	clr	_ui8_torque_sensor+0
      00C5E2 20 05            [ 2] 3736 	jra	00115$
      00C5E4                       3737 00112$:
                           0011A3  3738 	C$ebike_app.c$2050$2_0$607 ==.
                                   3739 ;	ebike_app.c: 2050: ui8_torque_sensor = ui8_torque_sensor_raw;
      00C5E4 55 01 E8 01 E7   [ 1] 3740 	mov	_ui8_torque_sensor+0, _ui8_torque_sensor_raw+0
      00C5E9                       3741 00115$:
                           0011A8  3742 	C$ebike_app.c$2052$1_0$602 ==.
                                   3743 ;	ebike_app.c: 2052: }
      00C5E9 5B 0C            [ 2] 3744 	addw	sp, #12
                           0011AA  3745 	C$ebike_app.c$2052$1_0$602 ==.
                           0011AA  3746 	XFebike_app$torque_sensor_read$0$0 ==.
      00C5EB 81               [ 4] 3747 	ret
                           0011AB  3748 	Febike_app$throttle_read$0$0 ==.
                           0011AB  3749 	C$ebike_app.c$2057$1_0$609 ==.
                                   3750 ;	ebike_app.c: 2057: static void throttle_read(void)
                                   3751 ;	-----------------------------------------
                                   3752 ;	 function throttle_read
                                   3753 ;	-----------------------------------------
      00C5EC                       3754 _throttle_read:
                           0011AB  3755 	C$ebike_app.c$2068$1_0$609 ==.
                                   3756 ;	ebike_app.c: 2068: ui8_throttle = 0;
      00C5EC 72 5F 01 E6      [ 1] 3757 	clr	_ui8_throttle+0
                           0011AF  3758 	C$ebike_app.c$2070$1_0$609 ==.
                                   3759 ;	ebike_app.c: 2070: }
                           0011AF  3760 	C$ebike_app.c$2070$1_0$609 ==.
                           0011AF  3761 	XFebike_app$throttle_read$0$0 ==.
      00C5F0 81               [ 4] 3762 	ret
                           0011B0  3763 	Febike_app$walk_assist_read$0$0 ==.
                           0011B0  3764 	C$ebike_app.c$2075$1_0$611 ==.
                                   3765 ;	ebike_app.c: 2075: static void walk_assist_read(void)
                                   3766 ;	-----------------------------------------
                                   3767 ;	 function walk_assist_read
                                   3768 ;	-----------------------------------------
      00C5F1                       3769 _walk_assist_read:
      00C5F1 52 04            [ 2] 3770 	sub	sp, #4
                           0011B2  3771 	C$ebike_app.c$2079$1_0$611 ==.
                                   3772 ;	ebike_app.c: 2079: ui8_walk_assist_current_per_cent,
      00C5F3 C6 02 4B         [ 1] 3773 	ld	a, _ui8_walk_assist_current_per_cent+0
      00C5F6 6B 04            [ 1] 3774 	ld	(0x04, sp), a
      00C5F8 0F 03            [ 1] 3775 	clr	(0x03, sp)
      00C5FA 0F 02            [ 1] 3776 	clr	(0x02, sp)
      00C5FC 0F 01            [ 1] 3777 	clr	(0x01, sp)
      00C5FE 4B FF            [ 1] 3778 	push	#0xff
      00C600 5F               [ 1] 3779 	clrw	x
      00C601 89               [ 2] 3780 	pushw	x
      00C602 4B 00            [ 1] 3781 	push	#0x00
      00C604 5F               [ 1] 3782 	clrw	x
      00C605 89               [ 2] 3783 	pushw	x
      00C606 5F               [ 1] 3784 	clrw	x
      00C607 89               [ 2] 3785 	pushw	x
      00C608 4B 64            [ 1] 3786 	push	#0x64
      00C60A 5F               [ 1] 3787 	clrw	x
      00C60B 89               [ 2] 3788 	pushw	x
      00C60C 4B 00            [ 1] 3789 	push	#0x00
      00C60E 5F               [ 1] 3790 	clrw	x
      00C60F 89               [ 2] 3791 	pushw	x
      00C610 5F               [ 1] 3792 	clrw	x
      00C611 89               [ 2] 3793 	pushw	x
      00C612 1E 13            [ 2] 3794 	ldw	x, (0x13, sp)
      00C614 89               [ 2] 3795 	pushw	x
      00C615 1E 13            [ 2] 3796 	ldw	x, (0x13, sp)
      00C617 89               [ 2] 3797 	pushw	x
      00C618 CD C6 E6         [ 4] 3798 	call	_map
      00C61B 5B 14            [ 2] 3799 	addw	sp, #20
      00C61D 9F               [ 1] 3800 	ld	a, xl
      00C61E C7 02 4A         [ 1] 3801 	ld	_ui8_walk_assist+0, a
                           0011E0  3802 	C$ebike_app.c$2084$1_0$611 ==.
                                   3803 ;	ebike_app.c: 2084: }
      00C621 5B 04            [ 2] 3804 	addw	sp, #4
                           0011E2  3805 	C$ebike_app.c$2084$1_0$611 ==.
                           0011E2  3806 	XFebike_app$walk_assist_read$0$0 ==.
      00C623 81               [ 4] 3807 	ret
                           0011E3  3808 	G$UART2_IRQHandler$0$0 ==.
                           0011E3  3809 	C$ebike_app.c$2092$1_0$613 ==.
                                   3810 ;	ebike_app.c: 2092: void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER)
                                   3811 ;	-----------------------------------------
                                   3812 ;	 function UART2_IRQHandler
                                   3813 ;	-----------------------------------------
      00C624                       3814 _UART2_IRQHandler:
      00C624 4F               [ 1] 3815 	clr	a
      00C625 62               [ 2] 3816 	div	x, a
                           0011E5  3817 	C$ebike_app.c$2094$1_0$613 ==.
                                   3818 ;	ebike_app.c: 2094: if(UART2_GetFlagStatus(UART2_FLAG_RXNE) == SET)
      00C626 4B 20            [ 1] 3819 	push	#0x20
      00C628 4B 00            [ 1] 3820 	push	#0x00
      00C62A CD 8C 88         [ 4] 3821 	call	_UART2_GetFlagStatus
      00C62D 5B 02            [ 2] 3822 	addw	sp, #2
      00C62F 4A               [ 1] 3823 	dec	a
      00C630 27 03            [ 1] 3824 	jreq	00136$
      00C632 CC C6 9D         [ 2] 3825 	jp	00112$
      00C635                       3826 00136$:
                           0011F4  3827 	C$ebike_app.c$2096$2_0$614 ==.
                                   3828 ;	ebike_app.c: 2096: UART2->SR &= (uint8_t)~(UART2_FLAG_RXNE); // this may be redundant
      00C635 C6 52 40         [ 1] 3829 	ld	a, 0x5240
      00C638 A4 DF            [ 1] 3830 	and	a, #0xdf
      00C63A C7 52 40         [ 1] 3831 	ld	0x5240, a
                           0011FC  3832 	C$ebike_app.c$2098$2_0$614 ==.
                                   3833 ;	ebike_app.c: 2098: ui8_byte_received = UART2_ReceiveData8();
      00C63D CD 8C 1E         [ 4] 3834 	call	_UART2_ReceiveData8
      00C640 C7 02 26         [ 1] 3835 	ld	_ui8_byte_received+0, a
                           001202  3836 	C$ebike_app.c$2100$2_0$614 ==.
                                   3837 ;	ebike_app.c: 2100: switch(ui8_state_machine)
      00C643 C6 02 27         [ 1] 3838 	ld	a, _ui8_state_machine+0
      00C646 A1 00            [ 1] 3839 	cp	a, #0x00
      00C648 27 06            [ 1] 3840 	jreq	00101$
      00C64A 4A               [ 1] 3841 	dec	a
      00C64B 27 29            [ 1] 3842 	jreq	00105$
      00C64D CC C6 9D         [ 2] 3843 	jp	00112$
                           00120F  3844 	C$ebike_app.c$2102$3_0$615 ==.
                                   3845 ;	ebike_app.c: 2102: case 0:
      00C650                       3846 00101$:
                           00120F  3847 	C$ebike_app.c$2103$3_0$615 ==.
                                   3848 ;	ebike_app.c: 2103: if(ui8_byte_received == RX_STX) // see if we get start package byte
      00C650 C6 02 26         [ 1] 3849 	ld	a, _ui8_byte_received+0
      00C653 A1 59            [ 1] 3850 	cp	a, #0x59
      00C655 26 15            [ 1] 3851 	jrne	00103$
                           001216  3852 	C$ebike_app.c$2105$4_0$616 ==.
                                   3853 ;	ebike_app.c: 2105: ui8_rx_buffer[ui8_rx_counter] = ui8_byte_received;
      00C657 5F               [ 1] 3854 	clrw	x
      00C658 C6 02 24         [ 1] 3855 	ld	a, _ui8_rx_counter+0
      00C65B 97               [ 1] 3856 	ld	xl, a
      00C65C C6 02 26         [ 1] 3857 	ld	a, _ui8_byte_received+0
      00C65F D7 00 05         [ 1] 3858 	ld	((_ui8_rx_buffer + 0), x), a
                           001221  3859 	C$ebike_app.c$2106$4_0$616 ==.
                                   3860 ;	ebike_app.c: 2106: ui8_rx_counter++;
      00C662 72 5C 02 24      [ 1] 3861 	inc	_ui8_rx_counter+0
                           001225  3862 	C$ebike_app.c$2107$4_0$616 ==.
                                   3863 ;	ebike_app.c: 2107: ui8_state_machine = 1;
      00C666 35 01 02 27      [ 1] 3864 	mov	_ui8_state_machine+0, #0x01
      00C66A 20 31            [ 2] 3865 	jra	00112$
      00C66C                       3866 00103$:
                           00122B  3867 	C$ebike_app.c$2111$4_0$617 ==.
                                   3868 ;	ebike_app.c: 2111: ui8_rx_counter = 0;
      00C66C 72 5F 02 24      [ 1] 3869 	clr	_ui8_rx_counter+0
                           00122F  3870 	C$ebike_app.c$2112$4_0$617 ==.
                                   3871 ;	ebike_app.c: 2112: ui8_state_machine = 0;
      00C670 72 5F 02 27      [ 1] 3872 	clr	_ui8_state_machine+0
                           001233  3873 	C$ebike_app.c$2114$3_0$615 ==.
                                   3874 ;	ebike_app.c: 2114: break;
      00C674 20 27            [ 2] 3875 	jra	00112$
                           001235  3876 	C$ebike_app.c$2116$3_0$615 ==.
                                   3877 ;	ebike_app.c: 2116: case 1:
      00C676                       3878 00105$:
                           001235  3879 	C$ebike_app.c$2117$3_0$615 ==.
                                   3880 ;	ebike_app.c: 2117: ui8_rx_buffer[ui8_rx_counter] = ui8_byte_received;
      00C676 5F               [ 1] 3881 	clrw	x
      00C677 C6 02 24         [ 1] 3882 	ld	a, _ui8_rx_counter+0
      00C67A 97               [ 1] 3883 	ld	xl, a
      00C67B 1C 00 05         [ 2] 3884 	addw	x, #(_ui8_rx_buffer + 0)
      00C67E C6 02 26         [ 1] 3885 	ld	a, _ui8_byte_received+0
      00C681 F7               [ 1] 3886 	ld	(x), a
                           001241  3887 	C$ebike_app.c$2118$3_0$615 ==.
                                   3888 ;	ebike_app.c: 2118: ui8_rx_counter++;
      00C682 72 5C 02 24      [ 1] 3889 	inc	_ui8_rx_counter+0
                           001245  3890 	C$ebike_app.c$2121$3_0$615 ==.
                                   3891 ;	ebike_app.c: 2121: if(ui8_rx_counter > UART_RX_BUFFER_LEN)
      00C686 C6 02 24         [ 1] 3892 	ld	a, _ui8_rx_counter+0
      00C689 A1 07            [ 1] 3893 	cp	a, #0x07
      00C68B 23 10            [ 2] 3894 	jrule	00112$
                           00124C  3895 	C$ebike_app.c$2123$4_0$618 ==.
                                   3896 ;	ebike_app.c: 2123: ui8_rx_counter = 0;
      00C68D 72 5F 02 24      [ 1] 3897 	clr	_ui8_rx_counter+0
                           001250  3898 	C$ebike_app.c$2124$4_0$618 ==.
                                   3899 ;	ebike_app.c: 2124: ui8_state_machine = 0;
      00C691 72 5F 02 27      [ 1] 3900 	clr	_ui8_state_machine+0
                           001254  3901 	C$ebike_app.c$2125$4_0$618 ==.
                                   3902 ;	ebike_app.c: 2125: ui8_received_package_flag = 1; // signal that we have a full package to be processed
      00C695 35 01 02 23      [ 1] 3903 	mov	_ui8_received_package_flag+0, #0x01
                           001258  3904 	C$ebike_app.c$2126$4_0$618 ==.
                                   3905 ;	ebike_app.c: 2126: UART2->CR2 &= ~(1 << 5); // disable UART2 receive interrupt
      00C699 72 1B 52 45      [ 1] 3906 	bres	21061, #5
                           00125C  3907 	C$ebike_app.c$2132$1_0$613 ==.
                                   3908 ;	ebike_app.c: 2132: }
      00C69D                       3909 00112$:
                           00125C  3910 	C$ebike_app.c$2134$1_0$613 ==.
                                   3911 ;	ebike_app.c: 2134: }
                           00125C  3912 	C$ebike_app.c$2134$1_0$613 ==.
                           00125C  3913 	XG$UART2_IRQHandler$0$0 ==.
      00C69D 80               [11] 3914 	iret
                           00125D  3915 	G$get_configuration_variables$0$0 ==.
                           00125D  3916 	C$ebike_app.c$2139$1_0$620 ==.
                                   3917 ;	ebike_app.c: 2139: struct_configuration_variables* get_configuration_variables(void)
                                   3918 ;	-----------------------------------------
                                   3919 ;	 function get_configuration_variables
                                   3920 ;	-----------------------------------------
      00C69E                       3921 _get_configuration_variables:
                           00125D  3922 	C$ebike_app.c$2141$1_0$620 ==.
                                   3923 ;	ebike_app.c: 2141: return &configuration_variables;
      00C69E AE 00 15         [ 2] 3924 	ldw	x, #(_configuration_variables + 0)
                           001260  3925 	C$ebike_app.c$2142$1_0$620 ==.
                                   3926 ;	ebike_app.c: 2142: }
                           001260  3927 	C$ebike_app.c$2142$1_0$620 ==.
                           001260  3928 	XG$get_configuration_variables$0$0 ==.
      00C6A1 81               [ 4] 3929 	ret
                           001261  3930 	Febike_app$check_system$0$0 ==.
                           001261  3931 	C$ebike_app.c$2147$1_0$621 ==.
                                   3932 ;	ebike_app.c: 2147: void check_system()
                                   3933 ;	-----------------------------------------
                                   3934 ;	 function check_system
                                   3935 ;	-----------------------------------------
      00C6A2                       3936 _check_system:
                           001261  3937 	C$ebike_app.c$2153$1_0$621 ==.
                                   3938 ;	ebike_app.c: 2153: if(ui8_system_state == ERROR_MOTOR_BLOCKED)
      00C6A2 C6 01 F9         [ 1] 3939 	ld	a, _ui8_system_state+0
      00C6A5 4A               [ 1] 3940 	dec	a
      00C6A6 26 15            [ 1] 3941 	jrne	00110$
                           001267  3942 	C$ebike_app.c$2156$2_0$622 ==.
                                   3943 ;	ebike_app.c: 2156: ui8_motor_blocked_reset_counter++;
      00C6A8 72 5C 00 5B      [ 1] 3944 	inc	_check_system_ui8_motor_blocked_reset_counter_65536_621+0
                           00126B  3945 	C$ebike_app.c$2159$2_0$622 ==.
                                   3946 ;	ebike_app.c: 2159: if(ui8_motor_blocked_reset_counter > MOTOR_BLOCKED_RESET_COUNTER_THRESHOLD)
      00C6AC C6 00 5B         [ 1] 3947 	ld	a, _check_system_ui8_motor_blocked_reset_counter_65536_621+0
      00C6AF A1 64            [ 1] 3948 	cp	a, #0x64
      00C6B1 23 32            [ 2] 3949 	jrule	00112$
                           001272  3950 	C$ebike_app.c$2162$3_0$623 ==.
                                   3951 ;	ebike_app.c: 2162: ui8_system_state = NO_ERROR;
      00C6B3 72 5F 01 F9      [ 1] 3952 	clr	_ui8_system_state+0
                           001276  3953 	C$ebike_app.c$2165$3_0$623 ==.
                                   3954 ;	ebike_app.c: 2165: ui8_motor_blocked_reset_counter = 0;
      00C6B7 72 5F 00 5B      [ 1] 3955 	clr	_check_system_ui8_motor_blocked_reset_counter_65536_621+0
      00C6BB 20 28            [ 2] 3956 	jra	00112$
      00C6BD                       3957 00110$:
                           00127C  3958 	C$ebike_app.c$2171$2_0$624 ==.
                                   3959 ;	ebike_app.c: 2171: if((motor_get_adc_battery_current_filtered_10b() > MOTOR_BLOCKED_BATTERY_CURRENT_THRESHOLD_X5)&&
      00C6BD CD B1 E9         [ 4] 3960 	call	_motor_get_adc_battery_current_filtered_10b
      00C6C0 A1 08            [ 1] 3961 	cp	a, #0x08
      00C6C2 23 1D            [ 2] 3962 	jrule	00106$
                           001283  3963 	C$ebike_app.c$2172$2_0$624 ==.
                                   3964 ;	ebike_app.c: 2172: (ui16_motor_get_motor_speed_erps() < MOTOR_BLOCKED_ERPS_THRESHOLD))
      00C6C4 CD B0 44         [ 4] 3965 	call	_ui16_motor_get_motor_speed_erps
      00C6C7 A3 00 0A         [ 2] 3966 	cpw	x, #0x000a
      00C6CA 24 15            [ 1] 3967 	jrnc	00106$
                           00128B  3968 	C$ebike_app.c$2175$3_0$625 ==.
                                   3969 ;	ebike_app.c: 2175: ui8_motor_blocked_counter++;
      00C6CC 72 5C 00 5A      [ 1] 3970 	inc	_check_system_ui8_motor_blocked_counter_65536_621+0
                           00128F  3971 	C$ebike_app.c$2178$3_0$625 ==.
                                   3972 ;	ebike_app.c: 2178: if(ui8_motor_blocked_counter > MOTOR_BLOCKED_COUNTER_THRESHOLD)
      00C6D0 C6 00 5A         [ 1] 3973 	ld	a, _check_system_ui8_motor_blocked_counter_65536_621+0
      00C6D3 A1 1E            [ 1] 3974 	cp	a, #0x1e
      00C6D5 23 0E            [ 2] 3975 	jrule	00112$
                           001296  3976 	C$ebike_app.c$2181$4_0$626 ==.
                                   3977 ;	ebike_app.c: 2181: ui8_system_state = ERROR_MOTOR_BLOCKED;
      00C6D7 35 01 01 F9      [ 1] 3978 	mov	_ui8_system_state+0, #0x01
                           00129A  3979 	C$ebike_app.c$2184$4_0$626 ==.
                                   3980 ;	ebike_app.c: 2184: ui8_motor_blocked_counter = 0;
      00C6DB 72 5F 00 5A      [ 1] 3981 	clr	_check_system_ui8_motor_blocked_counter_65536_621+0
      00C6DF 20 04            [ 2] 3982 	jra	00112$
      00C6E1                       3983 00106$:
                           0012A0  3984 	C$ebike_app.c$2190$3_0$627 ==.
                                   3985 ;	ebike_app.c: 2190: ui8_motor_blocked_counter = 0;
      00C6E1 72 5F 00 5A      [ 1] 3986 	clr	_check_system_ui8_motor_blocked_counter_65536_621+0
      00C6E5                       3987 00112$:
                           0012A4  3988 	C$ebike_app.c$2193$1_0$621 ==.
                                   3989 ;	ebike_app.c: 2193: }
                           0012A4  3990 	C$ebike_app.c$2193$1_0$621 ==.
                           0012A4  3991 	XFebike_app$check_system$0$0 ==.
      00C6E5 81               [ 4] 3992 	ret
                                   3993 	.area CODE
                                   3994 	.area CONST
                                   3995 	.area INITIALIZER
                           000000  3996 Febike_app$__xinit_ui8_throttle$0_0$0 == .
      008217                       3997 __xinit__ui8_throttle:
      008217 00                    3998 	.db #0x00	; 0
                           000001  3999 Febike_app$__xinit_ui8_torque_sensor$0_0$0 == .
      008218                       4000 __xinit__ui8_torque_sensor:
      008218 00                    4001 	.db #0x00	; 0
                           000002  4002 Febike_app$__xinit_ui8_torque_sensor_raw$0_0$0 == .
      008219                       4003 __xinit__ui8_torque_sensor_raw:
      008219 00                    4004 	.db #0x00	; 0
                           000003  4005 Febike_app$__xinit_f_pedal_torque_sensor_unit$0_0$0 == .
      00821A                       4006 __xinit__f_pedal_torque_sensor_unit:
      00821A 3F 0C CC CD           4007 	.byte #0x3f, #0x0c, #0xcc, #0xcd	;  5.500000e-001
                           000007  4008 Febike_app$__xinit_ui8_adc_torque_sensor_min_value$0_0$0 == .
      00821E                       4009 __xinit__ui8_adc_torque_sensor_min_value:
      00821E 00                    4010 	.db #0x00	; 0
                           000008  4011 Febike_app$__xinit_ui8_adc_torque_sensor_max_value$0_0$0 == .
      00821F                       4012 __xinit__ui8_adc_torque_sensor_max_value:
      00821F 00                    4013 	.db #0x00	; 0
                           000009  4014 Febike_app$__xinit_ui8_adc_battery_current_offset$0_0$0 == .
      008220                       4015 __xinit__ui8_adc_battery_current_offset:
      008220 00                    4016 	.db #0x00	; 0
                           00000A  4017 Febike_app$__xinit_ui8_ebike_app_state$0_0$0 == .
      008221                       4018 __xinit__ui8_ebike_app_state:
      008221 01                    4019 	.db #0x01	; 1
                           00000B  4020 Febike_app$__xinit_ui8_adc_target_battery_max_current$0_0$0 == .
      008222                       4021 __xinit__ui8_adc_target_battery_max_current:
      008222 00                    4022 	.db #0x00	; 0
                           00000C  4023 Febike_app$__xinit_ui8_adc_target_motor_max_current$0_0$0 == .
      008223                       4024 __xinit__ui8_adc_target_motor_max_current:
      008223 00                    4025 	.db #0x00	; 0
                           00000D  4026 Febike_app$__xinit_ui8_adc_battery_current_max$0_0$0 == .
      008224                       4027 __xinit__ui8_adc_battery_current_max:
      008224 00                    4028 	.db #0x00	; 0
                           00000E  4029 Febike_app$__xinit_ui8_adc_motor_current_max$0_0$0 == .
      008225                       4030 __xinit__ui8_adc_motor_current_max:
      008225 00                    4031 	.db #0x00	; 0
                           00000F  4032 Febike_app$__xinit_f_torque_assist_ratio$0_0$0 == .
      008226                       4033 __xinit__f_torque_assist_ratio:
      008226 00 00 00 00           4034 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           000013  4035 Febike_app$__xinit_ui8_system_state$0_0$0 == .
      00822A                       4036 __xinit__ui8_system_state:
      00822A 00                    4037 	.db #0x00	; 0
                           000014  4038 Febike_app$__xinit_ui16_pas_pwm_cycles_ticks$0_0$0 == .
      00822B                       4039 __xinit__ui16_pas_pwm_cycles_ticks:
      00822B 24 9F                 4040 	.dw #0x249f
                           000016  4041 Febike_app$__xinit_ui8_motor_enabled$0_0$0 == .
      00822D                       4042 __xinit__ui8_motor_enabled:
      00822D 01                    4043 	.db #0x01	; 1
                           000017  4044 Febike_app$__xinit_ui8_pedaling_direction$0_0$0 == .
      00822E                       4045 __xinit__ui8_pedaling_direction:
      00822E 00                    4046 	.db #0x00	; 0
                           000018  4047 Febike_app$__xinit_ui8_pas_direction$0_0$0 == .
      00822F                       4048 __xinit__ui8_pas_direction:
      00822F 00                    4049 	.db #0x00	; 0
                           000019  4050 Febike_app$__xinit_ui8_assist_level$0_0$0 == .
      008230                       4051 __xinit__ui8_assist_level:
      008230 00                    4052 	.db #0x00	; 0
                           00001A  4053 Febike_app$__xinit_ui8_pas_cadence_rpm$0_0$0 == .
      008231                       4054 __xinit__ui8_pas_cadence_rpm:
      008231 00                    4055 	.db #0x00	; 0
                           00001B  4056 Febike_app$__xinit_ui8_pas_backwards_cadence_rpm$0_0$0 == .
      008232                       4057 __xinit__ui8_pas_backwards_cadence_rpm:
      008232 00                    4058 	.db #0x00	; 0
                           00001C  4059 Febike_app$__xinit_ui16_pedal_torque_x10$0_0$0 == .
      008233                       4060 __xinit__ui16_pedal_torque_x10:
      008233 00 00                 4061 	.dw #0x0000
                           00001E  4062 Febike_app$__xinit_ui16_pedal_torque_x_cadence$0_0$0 == .
      008235                       4063 __xinit__ui16_pedal_torque_x_cadence:
      008235 00 00                 4064 	.dw #0x0000
                           000020  4065 Febike_app$__xinit_ui16_max_pedal_power_x_emtb_motor_pull_factor$0_0$0 == .
      008237                       4066 __xinit__ui16_max_pedal_power_x_emtb_motor_pull_factor:
      008237 00 00                 4067 	.dw #0x0000
                           000022  4068 Febike_app$__xinit_ui8_startup_boost_enable$0_0$0 == .
      008239                       4069 __xinit__ui8_startup_boost_enable:
      008239 00                    4070 	.db #0x00	; 0
                           000023  4071 Febike_app$__xinit_ui8_startup_boost_fade_enable$0_0$0 == .
      00823A                       4072 __xinit__ui8_startup_boost_fade_enable:
      00823A 00                    4073 	.db #0x00	; 0
                           000024  4074 Febike_app$__xinit_ui8_startup_boost_state_machine$0_0$0 == .
      00823B                       4075 __xinit__ui8_startup_boost_state_machine:
      00823B 00                    4076 	.db #0x00	; 0
                           000025  4077 Febike_app$__xinit_ui8_startup_boost_timer$0_0$0 == .
      00823C                       4078 __xinit__ui8_startup_boost_timer:
      00823C 00                    4079 	.db #0x00	; 0
                           000026  4080 Febike_app$__xinit_ui8_startup_boost_fade_steps$0_0$0 == .
      00823D                       4081 __xinit__ui8_startup_boost_fade_steps:
      00823D 00                    4082 	.db #0x00	; 0
                           000027  4083 Febike_app$__xinit_ui16_startup_boost_fade_variable_x256$0_0$0 == .
      00823E                       4084 __xinit__ui16_startup_boost_fade_variable_x256:
      00823E 00 00                 4085 	.dw #0x0000
                           000029  4086 Febike_app$__xinit_ui16_startup_boost_fade_variable_step_amount_x256$0_0$0 == .
      008240                       4087 __xinit__ui16_startup_boost_fade_variable_step_amount_x256:
      008240 00 00                 4088 	.dw #0x0000
                           00002B  4089 Febike_app$__xinit_ui16_wheel_speed_sensor_pwm_cycles_ticks$0_0$0 == .
      008242                       4090 __xinit__ui16_wheel_speed_sensor_pwm_cycles_ticks:
      008242 04 8E                 4091 	.dw #0x048e
                           00002D  4092 Febike_app$__xinit_f_wheel_speed_x10$0_0$0 == .
      008244                       4093 __xinit__f_wheel_speed_x10:
      008244 00 00 00 00           4094 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           000031  4095 Febike_app$__xinit_ui16_wheel_speed_x10$0_0$0 == .
      008248                       4096 __xinit__ui16_wheel_speed_x10:
      008248 00 00                 4097 	.dw #0x0000
                           000033  4098 Febike_app$__xinit_ui32_wheel_speed_sensor_tick_counter$0_0$0 == .
      00824A                       4099 __xinit__ui32_wheel_speed_sensor_tick_counter:
      00824A 00 00 00 00           4100 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                           000037  4101 Febike_app$__xinit_f_oem_wheel_speed$0_0$0 == .
      00824E                       4102 __xinit__f_oem_wheel_speed:
      00824E 00 00 00 00           4103 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           00003B  4104 Febike_app$__xinit_ui16_oem_wheel_speed$0_0$0 == .
      008252                       4105 __xinit__ui16_oem_wheel_speed:
      008252 00 00                 4106 	.dw #0x0000
                           00003D  4107 Febike_app$__xinit_ui8_received_package_flag$0_0$0 == .
      008254                       4108 __xinit__ui8_received_package_flag:
      008254 00                    4109 	.db #0x00	; 0
                           00003E  4110 Febike_app$__xinit_ui8_rx_counter$0_0$0 == .
      008255                       4111 __xinit__ui8_rx_counter:
      008255 00                    4112 	.db #0x00	; 0
                           00003F  4113 Febike_app$__xinit_ui8_tx_counter$0_0$0 == .
      008256                       4114 __xinit__ui8_tx_counter:
      008256 00                    4115 	.db #0x00	; 0
                           000040  4116 Febike_app$__xinit_ui8_byte_received$0_0$0 == .
      008257                       4117 __xinit__ui8_byte_received:
      008257 00                    4118 	.db #0x00	; 0
                           000041  4119 Febike_app$__xinit_ui8_state_machine$0_0$0 == .
      008258                       4120 __xinit__ui8_state_machine:
      008258 00                    4121 	.db #0x00	; 0
                           000042  4122 Febike_app$__xinit_ui8_tstr_state_machine$0_0$0 == .
      008259                       4123 __xinit__ui8_tstr_state_machine:
      008259 00                    4124 	.db #0x00	; 0
                           000043  4125 Febike_app$__xinit_ui8_rtst_counter$0_0$0 == .
      00825A                       4126 __xinit__ui8_rtst_counter:
      00825A 00                    4127 	.db #0x00	; 0
                           000044  4128 Febike_app$__xinit_ui16_adc_motor_temperatured_accumulated$0_0$0 == .
      00825B                       4129 __xinit__ui16_adc_motor_temperatured_accumulated:
      00825B 00 00                 4130 	.dw #0x0000
                           000046  4131 Febike_app$__xinit_ui8_overtemperature$0_0$0 == .
      00825D                       4132 __xinit__ui8_overtemperature:
      00825D 00                    4133 	.db #0x00	; 0
                           000047  4134 Febike_app$__xinit_ui8_adc_battery_target_current$0_0$0 == .
      00825E                       4135 __xinit__ui8_adc_battery_target_current:
      00825E 00                    4136 	.db #0x00	; 0
                           000048  4137 Febike_app$__xinit_ui8_adc_motor_target_current$0_0$0 == .
      00825F                       4138 __xinit__ui8_adc_motor_target_current:
      00825F 00                    4139 	.db #0x00	; 0
                           000049  4140 Febike_app$__xinit_ui8_brake_is_set$0_0$0 == .
      008260                       4141 __xinit__ui8_brake_is_set:
      008260 00                    4142 	.db #0x00	; 0
                           00004A  4143 Febike_app$__xinit_ui32_battery_voltage_accumulated_x10000$0_0$0 == .
      008261                       4144 __xinit__ui32_battery_voltage_accumulated_x10000:
      008261 00 00 00 00           4145 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                           00004E  4146 Febike_app$__xinit_ui16_battery_current_accumulated_x5$0_0$0 == .
      008265                       4147 __xinit__ui16_battery_current_accumulated_x5:
      008265 00 00                 4148 	.dw #0x0000
                           000050  4149 Febike_app$__xinit_ui8_battery_state_of_charge$0_0$0 == .
      008267                       4150 __xinit__ui8_battery_state_of_charge:
      008267 00                    4151 	.db #0x00	; 0
                           000051  4152 Febike_app$__xinit_f_soft_start_factor$0_0$0 == .
      008268                       4153 __xinit__f_soft_start_factor:
      008268 00 00 00 00           4154 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           000055  4155 Febike_app$__xinit_f_soft_start_factor_old$0_0$0 == .
      00826C                       4156 __xinit__f_soft_start_factor_old:
      00826C 00 00 00 00           4157 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           000059  4158 Febike_app$__xinit_ui16_soft_start_time$0_0$0 == .
      008270                       4159 __xinit__ui16_soft_start_time:
      008270 00 00                 4160 	.dw #0x0000
                           00005B  4161 Febike_app$__xinit_ui8_timer_counter$0_0$0 == .
      008272                       4162 __xinit__ui8_timer_counter:
      008272 00                    4163 	.db #0x00	; 0
                           00005C  4164 Febike_app$__xinit_ui8_startup_counter$0_0$0 == .
      008273                       4165 __xinit__ui8_startup_counter:
      008273 00                    4166 	.db #0x00	; 0
                           00005D  4167 Febike_app$__xinit_ui8_lights_counter$0_0$0 == .
      008274                       4168 __xinit__ui8_lights_counter:
      008274 00                    4169 	.db #0x00	; 0
                           00005E  4170 Febike_app$__xinit_ui16_walk_assist_delay_off$0_0$0 == .
      008275                       4171 __xinit__ui16_walk_assist_delay_off:
      008275 00 00                 4172 	.dw #0x0000
                           000060  4173 Febike_app$__xinit_ui8_walk_assist_delay_off_flag$0_0$0 == .
      008277                       4174 __xinit__ui8_walk_assist_delay_off_flag:
      008277 00                    4175 	.db #0x00	; 0
                           000061  4176 Febike_app$__xinit_ui8_display_ready_flag$0_0$0 == .
      008278                       4177 __xinit__ui8_display_ready_flag:
      008278 00                    4178 	.db #0x00	; 0
                           000062  4179 Febike_app$__xinit_ui8_enable_walk_assist$0_0$0 == .
      008279                       4180 __xinit__ui8_enable_walk_assist:
      008279 00                    4181 	.db #0x00	; 0
                           000063  4182 Febike_app$__xinit_ui8_walk_assist_flag$0_0$0 == .
      00827A                       4183 __xinit__ui8_walk_assist_flag:
      00827A 00                    4184 	.db #0x00	; 0
                           000064  4185 Febike_app$__xinit_ui8_walk_assist$0_0$0 == .
      00827B                       4186 __xinit__ui8_walk_assist:
      00827B 00                    4187 	.db #0x00	; 0
                           000065  4188 Febike_app$__xinit_ui8_walk_assist_current_per_cent$0_0$0 == .
      00827C                       4189 __xinit__ui8_walk_assist_current_per_cent:
      00827C 00                    4190 	.db #0x00	; 0
                           000066  4191 Febike_app$__xinit_ui8_walk_assist_start$0_0$0 == .
      00827D                       4192 __xinit__ui8_walk_assist_start:
      00827D 00                    4193 	.db #0x00	; 0
                           000067  4194 Febike_app$__xinit_ui8_walk_assist_pwm$0_0$0 == .
      00827E                       4195 __xinit__ui8_walk_assist_pwm:
      00827E 00                    4196 	.db #0x00	; 0
                           000068  4197 Febike_app$__xinit_ui8_walk_assist_pwm_step$0_0$0 == .
      00827F                       4198 __xinit__ui8_walk_assist_pwm_step:
      00827F 00                    4199 	.db #0x00	; 0
                           000069  4200 Febike_app$__xinit_ui8_default_flag$0_0$0 == .
      008280                       4201 __xinit__ui8_default_flag:
      008280 00                    4202 	.db #0x00	; 0
                           00006A  4203 Febike_app$__xinit_ui8_lights_flag$0_0$0 == .
      008281                       4204 __xinit__ui8_lights_flag:
      008281 00                    4205 	.db #0x00	; 0
                           00006B  4206 Febike_app$__xinit_ui8_mode_flag$0_0$0 == .
      008282                       4207 __xinit__ui8_mode_flag:
      008282 00                    4208 	.db #0x00	; 0
                           00006C  4209 Febike_app$__xinit_ui8_boost_flag$0_0$0 == .
      008283                       4210 __xinit__ui8_boost_flag:
      008283 00                    4211 	.db #0x00	; 0
                           00006D  4212 Febike_app$__xinit_ui8_emtb_flag$0_0$0 == .
      008284                       4213 __xinit__ui8_emtb_flag:
      008284 00                    4214 	.db #0x00	; 0
                                   4215 	.area CABS (ABS)
