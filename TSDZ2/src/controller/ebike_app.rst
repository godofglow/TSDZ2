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
                           000054   119 Lebike_app.uart_send_package$ui8_overtemperature_counter$3_0$513==.
      000059                        120 _uart_send_package_ui8_overtemperature_counter_196608_513:
      000059                        121 	.ds 1
                           000055   122 Lebike_app.check_system$ui8_motor_blocked_counter$1_0$612==.
      00005A                        123 _check_system_ui8_motor_blocked_counter_65536_612:
      00005A                        124 	.ds 1
                           000056   125 Lebike_app.check_system$ui8_motor_blocked_reset_counter$1_0$612==.
      00005B                        126 _check_system_ui8_motor_blocked_reset_counter_65536_612:
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
                           000000   372 	C$ebike_app.c$1350$2_0$508 ==.
                                    373 ;	ebike_app.c: 1350: static uint8_t ui8_overtemperature_counter = 0;
      00807D 72 5F 00 59      [ 1]  374 	clr	_uart_send_package_ui8_overtemperature_counter_196608_513+0
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
      00B443 CD BF 39         [ 4]  394 	call	_ebike_app_set_battery_max_current
      00B446 84               [ 1]  395 	pop	a
                           000006   396 	C$ebike_app.c$152$1_0$426 ==.
                                    397 ;	ebike_app.c: 152: ebike_app_set_motor_max_current(MOTOR_PHASE_CURRENT_MAX_AMP);
      00B447 4B 1E            [ 1]  398 	push	#0x1e
      00B449 CD BF 53         [ 4]  399 	call	_ebike_app_set_motor_max_current
      00B44C 84               [ 1]  400 	pop	a
                           00000C   401 	C$ebike_app.c$153$1_0$426 ==.
                                    402 ;	ebike_app.c: 153: ebike_app_set_torque_assist_ratio();
      00B44D CD BF 6D         [ 4]  403 	call	_ebike_app_set_torque_assist_ratio
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
      00B476 CD C5 86         [ 4]  450 	call	_walk_assist_read
                           000038   451 	C$ebike_app.c$178$1_0$428 ==.
                                    452 ;	ebike_app.c: 178: throttle_read();
      00B479 CD C5 81         [ 4]  453 	call	_throttle_read
                           00003B   454 	C$ebike_app.c$179$1_0$428 ==.
                                    455 ;	ebike_app.c: 179: torque_sensor_read();
      00B47C CD C4 F1         [ 4]  456 	call	_torque_sensor_read
                           00003E   457 	C$ebike_app.c$180$1_0$428 ==.
                                    458 ;	ebike_app.c: 180: read_pas_cadence();
      00B47F CD C4 5E         [ 4]  459 	call	_read_pas_cadence
                           000041   460 	C$ebike_app.c$181$1_0$428 ==.
                                    461 ;	ebike_app.c: 181: calc_pedal_force_and_torque();
      00B482 CD BF AA         [ 4]  462 	call	_calc_pedal_force_and_torque
                           000044   463 	C$ebike_app.c$182$1_0$428 ==.
                                    464 ;	ebike_app.c: 182: calc_wheel_speed();
      00B485 CD BF C2         [ 4]  465 	call	_calc_wheel_speed
                           000047   466 	C$ebike_app.c$183$1_0$428 ==.
                                    467 ;	ebike_app.c: 183: calc_motor_temperature();
      00B488 CD C0 C2         [ 4]  468 	call	_calc_motor_temperature
                           00004A   469 	C$ebike_app.c$184$1_0$428 ==.
                                    470 ;	ebike_app.c: 184: check_system();
      00B48B CD C6 37         [ 4]  471 	call	_check_system
                           00004D   472 	C$ebike_app.c$185$1_0$428 ==.
                                    473 ;	ebike_app.c: 185: ebike_control_motor();
      00B48E CD B4 98         [ 4]  474 	call	_ebike_control_motor
                           000050   475 	C$ebike_app.c$186$1_0$428 ==.
                                    476 ;	ebike_app.c: 186: uart_receive_package();
      00B491 CD BB C8         [ 4]  477 	call	_uart_receive_package
                           000053   478 	C$ebike_app.c$187$1_0$428 ==.
                                    479 ;	ebike_app.c: 187: uart_send_package();
      00B494 CD BD AA         [ 4]  480 	call	_uart_send_package
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
      00B4A5 CD C1 0A         [ 4]  510 	call	_calc_filtered_battery_voltage
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
      00B4D1 CD DA 71         [ 4]  544 	call	___uchar2fs
      00B4D4 84               [ 1]  545 	pop	a
      00B4D5 1F 0E            [ 2]  546 	ldw	(0x0e, sp), x
      00B4D7 90 89            [ 2]  547 	pushw	y
      00B4D9 3B 02 03         [ 1]  548 	push	_ui16_pedal_torque_x10+1
      00B4DC 3B 02 02         [ 1]  549 	push	_ui16_pedal_torque_x10+0
      00B4DF CD D7 D0         [ 4]  550 	call	___uint2fs
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
      00B4F5 CD D1 99         [ 4]  562 	call	___fsmul
      00B4F8 5B 08            [ 2]  563 	addw	sp, #8
      00B4FA 3B 01 F8         [ 1]  564 	push	_f_torque_assist_ratio+3
      00B4FD 3B 01 F7         [ 1]  565 	push	_f_torque_assist_ratio+2
      00B500 3B 01 F6         [ 1]  566 	push	_f_torque_assist_ratio+1
      00B503 3B 01 F5         [ 1]  567 	push	_f_torque_assist_ratio+0
      00B506 89               [ 2]  568 	pushw	x
      00B507 90 89            [ 2]  569 	pushw	y
      00B509 CD D9 E0         [ 4]  570 	call	___fsdiv
      00B50C 5B 08            [ 2]  571 	addw	sp, #8
      00B50E 89               [ 2]  572 	pushw	x
      00B50F 90 89            [ 2]  573 	pushw	y
      00B511 CD D3 9F         [ 4]  574 	call	___fs2ulong
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
      00B52F CD D7 76         [ 4]  588 	call	__divulong
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
      00B54D CD DA 9D         [ 4]  602 	call	__mullong
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
      00B56A CD C8 28         [ 4]  621 	call	_ui8_limit_max
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
      00B5AB CD D3 FE         [ 4]  666 	call	___fslt
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
      00B5EB CD D4 C2         [ 4]  703 	call	___fsadd
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
      00B606 CD D7 65         [ 4]  721 	call	___sint2fs
      00B609 5B 02            [ 2]  722 	addw	sp, #2
      00B60B 1F 12            [ 2]  723 	ldw	(0x12, sp), x
      00B60D 17 10            [ 2]  724 	ldw	(0x10, sp), y
      00B60F 3B 02 03         [ 1]  725 	push	_ui16_pedal_torque_x10+1
      00B612 3B 02 02         [ 1]  726 	push	_ui16_pedal_torque_x10+0
      00B615 CD D7 D0         [ 4]  727 	call	___uint2fs
      00B618 5B 02            [ 2]  728 	addw	sp, #2
      00B61A 89               [ 2]  729 	pushw	x
      00B61B 90 89            [ 2]  730 	pushw	y
      00B61D 1E 16            [ 2]  731 	ldw	x, (0x16, sp)
      00B61F 89               [ 2]  732 	pushw	x
      00B620 1E 16            [ 2]  733 	ldw	x, (0x16, sp)
      00B622 89               [ 2]  734 	pushw	x
      00B623 CD D1 99         [ 4]  735 	call	___fsmul
      00B626 5B 08            [ 2]  736 	addw	sp, #8
      00B628 3B 01 F8         [ 1]  737 	push	_f_torque_assist_ratio+3
      00B62B 3B 01 F7         [ 1]  738 	push	_f_torque_assist_ratio+2
      00B62E 3B 01 F6         [ 1]  739 	push	_f_torque_assist_ratio+1
      00B631 3B 01 F5         [ 1]  740 	push	_f_torque_assist_ratio+0
      00B634 89               [ 2]  741 	pushw	x
      00B635 90 89            [ 2]  742 	pushw	y
      00B637 CD D9 E0         [ 4]  743 	call	___fsdiv
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
      00B676 CD D3 FE         [ 4]  782 	call	___fslt
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
      00B691 CD D1 99         [ 4]  796 	call	___fsmul
      00B694 5B 08            [ 2]  797 	addw	sp, #8
      00B696 1F 12            [ 2]  798 	ldw	(0x12, sp), x
      00B698 17 10            [ 2]  799 	ldw	(0x10, sp), y
                           000259   800 	C$ebike_app.c$498$1_0$430 ==.
                                    801 ;	ebike_app.c: 498: f_temp = (float) INITIAL_SOFT_START_ASSIST_VALUE * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio;
      00B69A 3B 02 03         [ 1]  802 	push	_ui16_pedal_torque_x10+1
      00B69D 3B 02 02         [ 1]  803 	push	_ui16_pedal_torque_x10+0
      00B6A0 CD D7 D0         [ 4]  804 	call	___uint2fs
      00B6A3 5B 02            [ 2]  805 	addw	sp, #2
      00B6A5 89               [ 2]  806 	pushw	x
      00B6A6 90 89            [ 2]  807 	pushw	y
      00B6A8 5F               [ 1]  808 	clrw	x
      00B6A9 89               [ 2]  809 	pushw	x
      00B6AA 4B 00            [ 1]  810 	push	#0x00
      00B6AC 4B 40            [ 1]  811 	push	#0x40
      00B6AE CD D1 99         [ 4]  812 	call	___fsmul
      00B6B1 5B 08            [ 2]  813 	addw	sp, #8
      00B6B3 3B 01 F8         [ 1]  814 	push	_f_torque_assist_ratio+3
      00B6B6 3B 01 F7         [ 1]  815 	push	_f_torque_assist_ratio+2
      00B6B9 3B 01 F6         [ 1]  816 	push	_f_torque_assist_ratio+1
      00B6BC 3B 01 F5         [ 1]  817 	push	_f_torque_assist_ratio+0
      00B6BF 89               [ 2]  818 	pushw	x
      00B6C0 90 89            [ 2]  819 	pushw	y
      00B6C2 CD D9 E0         [ 4]  820 	call	___fsdiv
      00B6C5 5B 08            [ 2]  821 	addw	sp, #8
                           000286   822 	C$ebike_app.c$499$1_0$430 ==.
                                    823 ;	ebike_app.c: 499: f_pedal_torque_x_assist_level_factor += f_temp; 
      00B6C7 89               [ 2]  824 	pushw	x
      00B6C8 90 89            [ 2]  825 	pushw	y
      00B6CA 1E 16            [ 2]  826 	ldw	x, (0x16, sp)
      00B6CC 89               [ 2]  827 	pushw	x
      00B6CD 1E 16            [ 2]  828 	ldw	x, (0x16, sp)
      00B6CF 89               [ 2]  829 	pushw	x
      00B6D0 CD D4 C2         [ 4]  830 	call	___fsadd
      00B6D3 5B 08            [ 2]  831 	addw	sp, #8
      00B6D5 1F 12            [ 2]  832 	ldw	(0x12, sp), x
      00B6D7 17 10            [ 2]  833 	ldw	(0x10, sp), y
      00B6D9 20 3D            [ 2]  834 	jra	00120$
      00B6DB                        835 00119$:
                           00029A   836 	C$ebike_app.c$503$4_0$445 ==.
                                    837 ;	ebike_app.c: 503: f_pedal_torque_x_assist_level_factor = (float) configuration_variables.ui8_assist_level_factor_x10 * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio;
      00B6DB C6 00 15         [ 1]  838 	ld	a, _configuration_variables+0
      00B6DE 88               [ 1]  839 	push	a
      00B6DF CD DA 71         [ 4]  840 	call	___uchar2fs
      00B6E2 84               [ 1]  841 	pop	a
      00B6E3 1F 12            [ 2]  842 	ldw	(0x12, sp), x
      00B6E5 17 10            [ 2]  843 	ldw	(0x10, sp), y
      00B6E7 3B 02 03         [ 1]  844 	push	_ui16_pedal_torque_x10+1
      00B6EA 3B 02 02         [ 1]  845 	push	_ui16_pedal_torque_x10+0
      00B6ED CD D7 D0         [ 4]  846 	call	___uint2fs
      00B6F0 5B 02            [ 2]  847 	addw	sp, #2
      00B6F2 89               [ 2]  848 	pushw	x
      00B6F3 90 89            [ 2]  849 	pushw	y
      00B6F5 1E 16            [ 2]  850 	ldw	x, (0x16, sp)
      00B6F7 89               [ 2]  851 	pushw	x
      00B6F8 1E 16            [ 2]  852 	ldw	x, (0x16, sp)
      00B6FA 89               [ 2]  853 	pushw	x
      00B6FB CD D1 99         [ 4]  854 	call	___fsmul
      00B6FE 5B 08            [ 2]  855 	addw	sp, #8
      00B700 3B 01 F8         [ 1]  856 	push	_f_torque_assist_ratio+3
      00B703 3B 01 F7         [ 1]  857 	push	_f_torque_assist_ratio+2
      00B706 3B 01 F6         [ 1]  858 	push	_f_torque_assist_ratio+1
      00B709 3B 01 F5         [ 1]  859 	push	_f_torque_assist_ratio+0
      00B70C 89               [ 2]  860 	pushw	x
      00B70D 90 89            [ 2]  861 	pushw	y
      00B70F CD D9 E0         [ 4]  862 	call	___fsdiv
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
      00B723 CD D3 9F         [ 4]  877 	call	___fs2ulong
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
      00B73D CD D3 9F         [ 4]  893 	call	___fs2ulong
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
      00B751 CD D3 9F         [ 4]  905 	call	___fs2ulong
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
      00B76F CD DA 9D         [ 4]  920 	call	__mullong
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
      00B78D CD D7 76         [ 4]  934 	call	__divulong
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
      00B7A8 CD C8 28         [ 4]  953 	call	_ui8_limit_max
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
      00B7C7 CD DA 9D         [ 4]  976 	call	__mullong
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
      00B7DC CD D7 76         [ 4]  988 	call	__divulong
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
      00B801 CD C2 DE         [ 4] 1020 	call	_boost_run_statemachine
                           0003C3  1021 	C$ebike_app.c$562$2_0$456 ==.
                                   1022 ;	ebike_app.c: 562: ui8_boost_enabled_and_applied = apply_boost(ui8_tmp_pas_cadence_rpm, ui8_adc_max_motor_current_boost_state, &ui8_adc_motor_target_current);
      00B804 4B 2E            [ 1] 1023 	push	#<(_ui8_adc_motor_target_current + 0)
      00B806 4B 02            [ 1] 1024 	push	#((_ui8_adc_motor_target_current + 0) >> 8)
      00B808 7B 05            [ 1] 1025 	ld	a, (0x05, sp)
      00B80A 88               [ 1] 1026 	push	a
      00B80B 7B 16            [ 1] 1027 	ld	a, (0x16, sp)
      00B80D 88               [ 1] 1028 	push	a
      00B80E CD C3 FC         [ 4] 1029 	call	_apply_boost
      00B811 5B 04            [ 2] 1030 	addw	sp, #4
      00B813 6B 04            [ 1] 1031 	ld	(0x04, sp), a
                           0003D4  1032 	C$ebike_app.c$563$2_0$456 ==.
                                   1033 ;	ebike_app.c: 563: apply_boost_fade_out(&ui8_adc_motor_target_current);
      00B815 4B 2E            [ 1] 1034 	push	#<(_ui8_adc_motor_target_current + 0)
      00B817 4B 02            [ 1] 1035 	push	#((_ui8_adc_motor_target_current + 0) >> 8)
      00B819 CD C4 1B         [ 4] 1036 	call	_apply_boost_fade_out
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
      00B831 CD DB 19         [ 4] 1052 	call	__divsint
      00B834 5B 04            [ 2] 1053 	addw	sp, #4
      00B836 9F               [ 1] 1054 	ld	a, xl
      00B837 C7 02 2E         [ 1] 1055 	ld	_ui8_adc_motor_target_current+0, a
                           0003F9  1056 	C$ebike_app.c$575$2_0$457 ==.
                                   1057 ;	ebike_app.c: 575: apply_walk_assist(ui8_walk_assist, &ui8_adc_motor_target_current);
      00B83A 4B 2E            [ 1] 1058 	push	#<(_ui8_adc_motor_target_current + 0)
      00B83C 4B 02            [ 1] 1059 	push	#((_ui8_adc_motor_target_current + 0) >> 8)
      00B83E 3B 02 4A         [ 1] 1060 	push	_ui8_walk_assist+0
      00B841 CD C1 EC         [ 4] 1061 	call	_apply_walk_assist
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
      00B85B CD C1 1C         [ 4] 1082 	call	_apply_street_mode
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
      00B86D CD C1 77         [ 4] 1093 	call	_apply_speed_limit
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
      00B88E CD C8 12         [ 4] 1120 	call	_ui8_min
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
      00B89F CD C2 26         [ 4] 1132 	call	_apply_temperature_limiting
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
      00B92B CD BF 12         [ 4] 1235 	call	_ebike_app_set_target_adc_battery_max_current
      00B92E 84               [ 1] 1236 	pop	a
                           0004EE  1237 	C$ebike_app.c$669$2_0$466 ==.
                                   1238 ;	ebike_app.c: 669: ebike_app_set_target_adc_motor_max_current(ui8_adc_motor_target_current);
      00B92F 3B 02 2E         [ 1] 1239 	push	_ui8_adc_motor_target_current+0
      00B932 CD BF 27         [ 4] 1240 	call	_ebike_app_set_target_adc_motor_max_current
      00B935 84               [ 1] 1241 	pop	a
      00B936 20 10            [ 2] 1242 	jra	00172$
      00B938                       1243 00171$:
                           0004F7  1244 	C$ebike_app.c$674$2_0$467 ==.
                                   1245 ;	ebike_app.c: 674: ebike_app_set_target_adc_battery_max_current(0);
      00B938 4B 00            [ 1] 1246 	push	#0x00
      00B93A CD BF 12         [ 4] 1247 	call	_ebike_app_set_target_adc_battery_max_current
      00B93D 84               [ 1] 1248 	pop	a
                           0004FD  1249 	C$ebike_app.c$675$2_0$467 ==.
                                   1250 ;	ebike_app.c: 675: ebike_app_set_target_adc_motor_max_current(0);
      00B93E 4B 00            [ 1] 1251 	push	#0x00
      00B940 CD BF 27         [ 4] 1252 	call	_ebike_app_set_target_adc_motor_max_current
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
      00BA21 CD D1 41         [ 4] 1413 	call	___muluint2ulong
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
      00BA5A CD D7 76         [ 4] 1440 	call	__divulong
      00BA5D 5B 08            [ 2] 1441 	addw	sp, #8
      00BA5F 1F 05            [ 2] 1442 	ldw	(0x05, sp), x
                           000620  1443 	C$ebike_app.c$755$1_0$474 ==.
                                   1444 ;	ebike_app.c: 755: ui8_battery_current_x5 = (uint8_t) ((float) motor_get_adc_battery_current_filtered_10b() * 0.826);
      00BA61 CD B1 E9         [ 4] 1445 	call	_motor_get_adc_battery_current_filtered_10b
      00BA64 88               [ 1] 1446 	push	a
      00BA65 CD DA 71         [ 4] 1447 	call	___uchar2fs
      00BA68 84               [ 1] 1448 	pop	a
      00BA69 89               [ 2] 1449 	pushw	x
      00BA6A 90 89            [ 2] 1450 	pushw	y
      00BA6C 4B BC            [ 1] 1451 	push	#0xbc
      00BA6E 4B 74            [ 1] 1452 	push	#0x74
      00BA70 4B 53            [ 1] 1453 	push	#0x53
      00BA72 4B 3F            [ 1] 1454 	push	#0x3f
      00BA74 CD D1 99         [ 4] 1455 	call	___fsmul
      00BA77 5B 08            [ 2] 1456 	addw	sp, #8
      00BA79 89               [ 2] 1457 	pushw	x
      00BA7A 90 89            [ 2] 1458 	pushw	y
      00BA7C CD DA 80         [ 4] 1459 	call	___fs2uchar
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
      00BAA3 CD D1 41         [ 4] 1485 	call	___muluint2ulong
      00BAA6 5B 04            [ 2] 1486 	addw	sp, #4
      00BAA8 4B F4            [ 1] 1487 	push	#0xf4
      00BAAA 4B 01            [ 1] 1488 	push	#0x01
      00BAAC 4B 00            [ 1] 1489 	push	#0x00
      00BAAE 4B 00            [ 1] 1490 	push	#0x00
      00BAB0 89               [ 2] 1491 	pushw	x
      00BAB1 90 89            [ 2] 1492 	pushw	y
      00BAB3 CD D7 76         [ 4] 1493 	call	__divulong
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
      00BADA CD DA 71         [ 4] 1523 	call	___uchar2fs
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
      00BAEE CD D1 99         [ 4] 1535 	call	___fsmul
      00BAF1 5B 08            [ 2] 1536 	addw	sp, #8
      00BAF3 89               [ 2] 1537 	pushw	x
      00BAF4 90 89            [ 2] 1538 	pushw	y
      00BAF6 CD D7 DC         [ 4] 1539 	call	___fs2uint
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
      00BB14 CD D1 99         [ 4] 1556 	call	___fsmul
      00BB17 5B 08            [ 2] 1557 	addw	sp, #8
      00BB19 89               [ 2] 1558 	pushw	x
      00BB1A 90 89            [ 2] 1559 	pushw	y
      00BB1C CD D7 DC         [ 4] 1560 	call	___fs2uint
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
      00BB3A CD D1 99         [ 4] 1577 	call	___fsmul
      00BB3D 5B 08            [ 2] 1578 	addw	sp, #8
      00BB3F 89               [ 2] 1579 	pushw	x
      00BB40 90 89            [ 2] 1580 	pushw	y
      00BB42 CD D7 DC         [ 4] 1581 	call	___fs2uint
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
      00BB60 CD D1 99         [ 4] 1598 	call	___fsmul
      00BB63 5B 08            [ 2] 1599 	addw	sp, #8
      00BB65 89               [ 2] 1600 	pushw	x
      00BB66 90 89            [ 2] 1601 	pushw	y
      00BB68 CD D7 DC         [ 4] 1602 	call	___fs2uint
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
      00BB85 CD D1 99         [ 4] 1619 	call	___fsmul
      00BB88 5B 08            [ 2] 1620 	addw	sp, #8
      00BB8A 89               [ 2] 1621 	pushw	x
      00BB8B 90 89            [ 2] 1622 	pushw	y
      00BB8D CD D7 DC         [ 4] 1623 	call	___fs2uint
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
      00BBAA CD D1 99         [ 4] 1640 	call	___fsmul
      00BBAD 5B 08            [ 2] 1641 	addw	sp, #8
      00BBAF 89               [ 2] 1642 	pushw	x
      00BBB0 90 89            [ 2] 1643 	pushw	y
      00BBB2 CD D7 DC         [ 4] 1644 	call	___fs2uint
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
      00BBD9 26 03            [ 1] 1680 	jrne	00238$
      00BBDB CC BD A7         [ 2] 1681 	jp	00140$
      00BBDE                       1682 00238$:
                           00079D  1683 	C$ebike_app.c$828$2_0$485 ==.
                                   1684 ;	ebike_app.c: 828: ui8_rx_check_code = 0x00;
      00BBDE 0F 01            [ 1] 1685 	clr	(0x01, sp)
                           00079F  1686 	C$ebike_app.c$829$1_0$484 ==.
                                   1687 ;	ebike_app.c: 829: for(ui8_i = 0; ui8_i < RX_CHECK_CODE; ui8_i++)
      00BBE0 0F 02            [ 1] 1688 	clr	(0x02, sp)
      00BBE2                       1689 00138$:
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
      00BBF4 25 EC            [ 1] 1704 	jrc	00138$
                           0007B5  1705 	C$ebike_app.c$835$2_0$485 ==.
                                   1706 ;	ebike_app.c: 835: if(ui8_rx_check_code == ui8_rx_buffer[RX_CHECK_CODE])
      00BBF6 C6 00 0B         [ 1] 1707 	ld	a, _ui8_rx_buffer+6
      00BBF9 11 01            [ 1] 1708 	cp	a, (0x01, sp)
      00BBFB 27 03            [ 1] 1709 	jreq	00242$
      00BBFD CC BD A3         [ 2] 1710 	jp	00135$
      00BC00                       1711 00242$:
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
      00BC13 26 03            [ 1] 1725 	jrne	00244$
      00BC15 CC BC 6F         [ 2] 1726 	jp	00104$
      00BC18                       1727 00244$:
      00BC18 7B 02            [ 1] 1728 	ld	a, (0x02, sp)
      00BC1A A1 04            [ 1] 1729 	cp	a, #0x04
      00BC1C 26 03            [ 1] 1730 	jrne	00247$
      00BC1E CC BC 83         [ 2] 1731 	jp	00105$
      00BC21                       1732 00247$:
      00BC21 7B 02            [ 1] 1733 	ld	a, (0x02, sp)
      00BC23 A1 08            [ 1] 1734 	cp	a, #0x08
      00BC25 26 03            [ 1] 1735 	jrne	00250$
      00BC27 CC BC 97         [ 2] 1736 	jp	00106$
      00BC2A                       1737 00250$:
      00BC2A 7B 02            [ 1] 1738 	ld	a, (0x02, sp)
      00BC2C A1 10            [ 1] 1739 	cp	a, #0x10
      00BC2E 27 09            [ 1] 1740 	jreq	00102$
      00BC30 7B 02            [ 1] 1741 	ld	a, (0x02, sp)
      00BC32 A1 40            [ 1] 1742 	cp	a, #0x40
      00BC34 27 24            [ 1] 1743 	jreq	00103$
      00BC36 CC BC A9         [ 2] 1744 	jp	00108$
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
                           000806  1758 	C$ebike_app.c$856$4_0$489 ==.
                                   1759 ;	ebike_app.c: 856: configuration_variables.ui8_offroad_mode = 0;
      00BC47 35 00 00 1E      [ 1] 1760 	mov	_configuration_variables+9, #0x00
                           00080A  1761 	C$ebike_app.c$857$4_0$489 ==.
                                   1762 ;	ebike_app.c: 857: configuration_variables.ui8_startup_motor_power_boost_feature_enabled = 0;
      00BC4B 35 00 00 26      [ 1] 1763 	mov	_configuration_variables+17, #0x00
                           00080E  1764 	C$ebike_app.c$858$4_0$489 ==.
                                   1765 ;	ebike_app.c: 858: configuration_variables.ui8_emtb_mode = 0;
      00BC4F 35 00 00 1F      [ 1] 1766 	mov	_configuration_variables+10, #0x00
                           000812  1767 	C$ebike_app.c$859$4_0$489 ==.
                                   1768 ;	ebike_app.c: 859: configuration_variables.ui8_function_code = DEFAULT_FUNCTION_ENABLED;
      00BC53 35 0F 00 39      [ 1] 1769 	mov	_configuration_variables+36, #0x0f
                           000816  1770 	C$ebike_app.c$865$4_0$489 ==.
                                   1771 ;	ebike_app.c: 865: break;
      00BC57 CC BC A9         [ 2] 1772 	jp	00108$
                           000819  1773 	C$ebike_app.c$867$4_0$489 ==.
                                   1774 ;	ebike_app.c: 867: case ASSIST_PEDAL_LEVEL1:
      00BC5A                       1775 00103$:
                           000819  1776 	C$ebike_app.c$869$4_0$489 ==.
                                   1777 ;	ebike_app.c: 869: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[ECO];
      00BC5A C6 00 40         [ 1] 1778 	ld	a, _configuration_variables+43
      00BC5D C7 00 15         [ 1] 1779 	ld	_configuration_variables+0, a
                           00081F  1780 	C$ebike_app.c$872$4_0$489 ==.
                                   1781 ;	ebike_app.c: 872: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[0];
      00BC60 C6 00 45         [ 1] 1782 	ld	a, _configuration_variables+48
      00BC63 C7 00 27         [ 1] 1783 	ld	_configuration_variables+18, a
                           000825  1784 	C$ebike_app.c$879$4_0$489 ==.
                                   1785 ;	ebike_app.c: 879: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[1];
      00BC66 C6 00 4C         [ 1] 1786 	ld	a, _configuration_variables+55
      00BC69 C7 00 4A         [ 1] 1787 	ld	_configuration_variables+53, a
                           00082B  1788 	C$ebike_app.c$881$4_0$489 ==.
                                   1789 ;	ebike_app.c: 881: break;
      00BC6C CC BC A9         [ 2] 1790 	jp	00108$
                           00082E  1791 	C$ebike_app.c$883$4_0$489 ==.
                                   1792 ;	ebike_app.c: 883: case ASSIST_PEDAL_LEVEL2:
      00BC6F                       1793 00104$:
                           00082E  1794 	C$ebike_app.c$885$4_0$489 ==.
                                   1795 ;	ebike_app.c: 885: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[TOUR];
      00BC6F C6 00 41         [ 1] 1796 	ld	a, _configuration_variables+44
      00BC72 C7 00 15         [ 1] 1797 	ld	_configuration_variables+0, a
                           000834  1798 	C$ebike_app.c$888$4_0$489 ==.
                                   1799 ;	ebike_app.c: 888: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[1];
      00BC75 C6 00 46         [ 1] 1800 	ld	a, _configuration_variables+49
      00BC78 C7 00 27         [ 1] 1801 	ld	_configuration_variables+18, a
                           00083A  1802 	C$ebike_app.c$891$4_0$489 ==.
                                   1803 ;	ebike_app.c: 891: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[2];
      00BC7B C6 00 4D         [ 1] 1804 	ld	a, _configuration_variables+56
      00BC7E C7 00 4A         [ 1] 1805 	ld	_configuration_variables+53, a
                           000840  1806 	C$ebike_app.c$899$4_0$489 ==.
                                   1807 ;	ebike_app.c: 899: break;
      00BC81 20 26            [ 2] 1808 	jra	00108$
                           000842  1809 	C$ebike_app.c$901$4_0$489 ==.
                                   1810 ;	ebike_app.c: 901: case ASSIST_PEDAL_LEVEL3:
      00BC83                       1811 00105$:
                           000842  1812 	C$ebike_app.c$903$4_0$489 ==.
                                   1813 ;	ebike_app.c: 903: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[SPORT];
      00BC83 C6 00 42         [ 1] 1814 	ld	a, _configuration_variables+45
      00BC86 C7 00 15         [ 1] 1815 	ld	_configuration_variables+0, a
                           000848  1816 	C$ebike_app.c$906$4_0$489 ==.
                                   1817 ;	ebike_app.c: 906: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[2];
      00BC89 C6 00 47         [ 1] 1818 	ld	a, _configuration_variables+50
      00BC8C C7 00 27         [ 1] 1819 	ld	_configuration_variables+18, a
                           00084E  1820 	C$ebike_app.c$909$4_0$489 ==.
                                   1821 ;	ebike_app.c: 909: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[3];
      00BC8F C6 00 4E         [ 1] 1822 	ld	a, _configuration_variables+57
      00BC92 C7 00 4A         [ 1] 1823 	ld	_configuration_variables+53, a
                           000854  1824 	C$ebike_app.c$910$4_0$489 ==.
                                   1825 ;	ebike_app.c: 910: break;
      00BC95 20 12            [ 2] 1826 	jra	00108$
                           000856  1827 	C$ebike_app.c$912$4_0$489 ==.
                                   1828 ;	ebike_app.c: 912: case ASSIST_PEDAL_LEVEL4:
      00BC97                       1829 00106$:
                           000856  1830 	C$ebike_app.c$914$4_0$489 ==.
                                   1831 ;	ebike_app.c: 914: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[TURBO];
      00BC97 C6 00 43         [ 1] 1832 	ld	a, _configuration_variables+46
      00BC9A C7 00 15         [ 1] 1833 	ld	_configuration_variables+0, a
                           00085C  1834 	C$ebike_app.c$917$4_0$489 ==.
                                   1835 ;	ebike_app.c: 917: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[3];
      00BC9D C6 00 48         [ 1] 1836 	ld	a, _configuration_variables+51
      00BCA0 C7 00 27         [ 1] 1837 	ld	_configuration_variables+18, a
                           000862  1838 	C$ebike_app.c$920$4_0$489 ==.
                                   1839 ;	ebike_app.c: 920: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[4];
      00BCA3 C6 00 4F         [ 1] 1840 	ld	a, _configuration_variables+58
      00BCA6 C7 00 4A         [ 1] 1841 	ld	_configuration_variables+53, a
                           000868  1842 	C$ebike_app.c$926$3_0$488 ==.
                                   1843 ;	ebike_app.c: 926: }
      00BCA9                       1844 00108$:
                           000868  1845 	C$ebike_app.c$932$3_0$488 ==.
                                   1846 ;	ebike_app.c: 932: if(ui8_assist_level == ASSIST_PEDAL_LEVEL0)
      00BCA9 C6 01 FF         [ 1] 1847 	ld	a, _ui8_assist_level+0
                           00086B  1848 	C$ebike_app.c$950$3_0$488 ==.
                                   1849 ;	ebike_app.c: 950: if(ui8_assist_level == ASSIST_PEDAL_LEVEL1)
      00BCAC C6 01 FF         [ 1] 1850 	ld	a, _ui8_assist_level+0
      00BCAF A1 40            [ 1] 1851 	cp	a, #0x40
      00BCB1 27 03            [ 1] 1852 	jreq	00260$
      00BCB3 CC BD 20         [ 2] 1853 	jp	00130$
      00BCB6                       1854 00260$:
                           000875  1855 	C$ebike_app.c$953$4_0$491 ==.
                                   1856 ;	ebike_app.c: 953: if(ui8_rx_buffer[1] & 0x01)
      00BCB6 C6 00 06         [ 1] 1857 	ld	a, _ui8_rx_buffer+1
      00BCB9 44               [ 1] 1858 	srl	a
      00BCBA 24 34            [ 1] 1859 	jrnc	00127$
                           00087B  1860 	C$ebike_app.c$956$5_0$492 ==.
                                   1861 ;	ebike_app.c: 956: if(!ui8_lights_flag)
      00BCBC 72 5D 02 50      [ 1] 1862 	tnz	_ui8_lights_flag+0
      00BCC0 27 03            [ 1] 1863 	jreq	00262$
      00BCC2 CC BD 24         [ 2] 1864 	jp	00131$
      00BCC5                       1865 00262$:
                           000884  1866 	C$ebike_app.c$959$6_0$493 ==.
                                   1867 ;	ebike_app.c: 959: if(!ui8_mode_flag)
      00BCC5 72 5D 02 51      [ 1] 1868 	tnz	_ui8_mode_flag+0
      00BCC9 26 18            [ 1] 1869 	jrne	00113$
                           00088A  1870 	C$ebike_app.c$962$7_0$494 ==.
                                   1871 ;	ebike_app.c: 962: ui8_mode_flag = 1;
      00BCCB 35 01 02 51      [ 1] 1872 	mov	_ui8_mode_flag+0, #0x01
                           00088E  1873 	C$ebike_app.c$964$7_0$494 ==.
                                   1874 ;	ebike_app.c: 964: if(configuration_variables.ui8_offroad_mode == 1)
      00BCCF C6 00 1E         [ 1] 1875 	ld	a, _configuration_variables+9
      00BCD2 4A               [ 1] 1876 	dec	a
      00BCD3 26 06            [ 1] 1877 	jrne	00110$
                           000894  1878 	C$ebike_app.c$966$7_0$494 ==.
                                   1879 ;	ebike_app.c: 966: configuration_variables.ui8_function_code = STREET_ENABLED_ON_OEM;
      00BCD5 35 02 00 39      [ 1] 1880 	mov	_configuration_variables+36, #0x02
      00BCD9 20 04            [ 2] 1881 	jra	00111$
      00BCDB                       1882 00110$:
                           00089A  1883 	C$ebike_app.c$969$7_0$494 ==.
                                   1884 ;	ebike_app.c: 969: configuration_variables.ui8_function_code = OFFROAD_ENABLED_ON_OEM;
      00BCDB 35 03 00 39      [ 1] 1885 	mov	_configuration_variables+36, #0x03
      00BCDF                       1886 00111$:
                           00089E  1887 	C$ebike_app.c$972$7_0$494 ==.
                                   1888 ;	ebike_app.c: 972: ui8_lights_counter = 0;
      00BCDF 72 5F 02 43      [ 1] 1889 	clr	_ui8_lights_counter+0
      00BCE3                       1890 00113$:
                           0008A2  1891 	C$ebike_app.c$976$6_0$493 ==.
                                   1892 ;	ebike_app.c: 976: if(ui8_lights_counter >= DELAY_LIGHTS_ON)
      00BCE3 C6 02 43         [ 1] 1893 	ld	a, _ui8_lights_counter+0
      00BCE6 A1 32            [ 1] 1894 	cp	a, #0x32
      00BCE8 25 3A            [ 1] 1895 	jrc	00131$
                           0008A9  1896 	C$ebike_app.c$984$7_0$495 ==.
                                   1897 ;	ebike_app.c: 984: ui8_mode_flag = 0;
      00BCEA 72 5F 02 51      [ 1] 1898 	clr	_ui8_mode_flag+0
      00BCEE 20 34            [ 2] 1899 	jra	00131$
      00BCF0                       1900 00127$:
                           0008AF  1901 	C$ebike_app.c$991$5_0$496 ==.
                                   1902 ;	ebike_app.c: 991: if(!ui8_lights_flag)
      00BCF0 72 5D 02 50      [ 1] 1903 	tnz	_ui8_lights_flag+0
      00BCF4 26 24            [ 1] 1904 	jrne	00124$
                           0008B5  1905 	C$ebike_app.c$994$6_0$497 ==.
                                   1906 ;	ebike_app.c: 994: if(ui8_mode_flag)
      00BCF6 72 5D 02 51      [ 1] 1907 	tnz	_ui8_mode_flag+0
      00BCFA 27 28            [ 1] 1908 	jreq	00131$
                           0008BB  1909 	C$ebike_app.c$997$7_0$498 ==.
                                   1910 ;	ebike_app.c: 997: ui8_mode_flag = 0;
      00BCFC 72 5F 02 51      [ 1] 1911 	clr	_ui8_mode_flag+0
                           0008BF  1912 	C$ebike_app.c$999$7_0$498 ==.
                                   1913 ;	ebike_app.c: 999: if(configuration_variables.ui8_offroad_mode == 1)
      00BD00 C6 00 1E         [ 1] 1914 	ld	a, _configuration_variables+9
      00BD03 4A               [ 1] 1915 	dec	a
      00BD04 26 0A            [ 1] 1916 	jrne	00119$
                           0008C5  1917 	C$ebike_app.c$1002$8_0$499 ==.
                                   1918 ;	ebike_app.c: 1002: configuration_variables.ui8_offroad_mode = 0;
      00BD06 35 00 00 1E      [ 1] 1919 	mov	_configuration_variables+9, #0x00
                           0008C9  1920 	C$ebike_app.c$1005$8_0$499 ==.
                                   1921 ;	ebike_app.c: 1005: configuration_variables.ui8_function_code = STREET_FUNCTION_ENABLED;
      00BD0A 35 0D 00 39      [ 1] 1922 	mov	_configuration_variables+36, #0x0d
      00BD0E 20 14            [ 2] 1923 	jra	00131$
      00BD10                       1924 00119$:
                           0008CF  1925 	C$ebike_app.c$1010$8_0$500 ==.
                                   1926 ;	ebike_app.c: 1010: configuration_variables.ui8_offroad_mode = 1;
      00BD10 35 01 00 1E      [ 1] 1927 	mov	_configuration_variables+9, #0x01
                           0008D3  1928 	C$ebike_app.c$1013$8_0$500 ==.
                                   1929 ;	ebike_app.c: 1013: configuration_variables.ui8_function_code = OFFROAD_FUNCTION_ENABLED;
      00BD14 35 0C 00 39      [ 1] 1930 	mov	_configuration_variables+36, #0x0c
      00BD18 20 0A            [ 2] 1931 	jra	00131$
      00BD1A                       1932 00124$:
                           0008D9  1933 	C$ebike_app.c$1021$6_0$501 ==.
                                   1934 ;	ebike_app.c: 1021: ui8_lights_flag = 0;
      00BD1A 72 5F 02 50      [ 1] 1935 	clr	_ui8_lights_flag+0
      00BD1E 20 04            [ 2] 1936 	jra	00131$
      00BD20                       1937 00130$:
                           0008DF  1938 	C$ebike_app.c$1028$4_0$502 ==.
                                   1939 ;	ebike_app.c: 1028: ui8_mode_flag = 0;
      00BD20 72 5F 02 51      [ 1] 1940 	clr	_ui8_mode_flag+0
      00BD24                       1941 00131$:
                           0008E3  1942 	C$ebike_app.c$1035$3_0$488 ==.
                                   1943 ;	ebike_app.c: 1035: if(ui8_assist_level == ASSIST_PEDAL_LEVEL2)
      00BD24 C6 01 FF         [ 1] 1944 	ld	a, _ui8_assist_level+0
                           0008E6  1945 	C$ebike_app.c$1053$3_0$488 ==.
                                   1946 ;	ebike_app.c: 1053: if(ui8_assist_level == ASSIST_PEDAL_LEVEL3)
      00BD27 C6 01 FF         [ 1] 1947 	ld	a, _ui8_assist_level+0
                           0008E9  1948 	C$ebike_app.c$1070$3_0$488 ==.
                                   1949 ;	ebike_app.c: 1070: if(ui8_assist_level == ASSIST_PEDAL_LEVEL4)
      00BD2A C6 01 FF         [ 1] 1950 	ld	a, _ui8_assist_level+0
                           0008EC  1951 	C$ebike_app.c$1144$3_0$488 ==.
                                   1952 ;	ebike_app.c: 1144: ui8_walk_assist_current_per_cent = 0;
      00BD2D 72 5F 02 4B      [ 1] 1953 	clr	_ui8_walk_assist_current_per_cent+0
                           0008F0  1954 	C$ebike_app.c$1148$3_0$488 ==.
                                   1955 ;	ebike_app.c: 1148: ebike_app_set_battery_max_current(configuration_variables.ui8_battery_max_current);
      00BD31 C6 00 16         [ 1] 1956 	ld	a, _configuration_variables+1
      00BD34 88               [ 1] 1957 	push	a
      00BD35 CD BF 39         [ 4] 1958 	call	_ebike_app_set_battery_max_current
      00BD38 84               [ 1] 1959 	pop	a
                           0008F8  1960 	C$ebike_app.c$1151$3_0$488 ==.
                                   1961 ;	ebike_app.c: 1151: ui32_temp = ((uint32_t) configuration_variables.ui16_battery_low_voltage_cut_off_x10 << 8) / ((uint32_t) ADC8BITS_BATTERY_VOLTAGE_PER_ADC_STEP_INVERSE_X256);
      00BD39 90 CE 00 18      [ 2] 1962 	ldw	y, _configuration_variables+3
      00BD3D 5F               [ 1] 1963 	clrw	x
      00BD3E 4F               [ 1] 1964 	clr	a
      00BD3F 95               [ 1] 1965 	ld	xh, a
      00BD40 4B 58            [ 1] 1966 	push	#0x58
      00BD42 4B 00            [ 1] 1967 	push	#0x00
      00BD44 4B 00            [ 1] 1968 	push	#0x00
      00BD46 4B 00            [ 1] 1969 	push	#0x00
      00BD48 9E               [ 1] 1970 	ld	a, xh
      00BD49 88               [ 1] 1971 	push	a
      00BD4A 90 89            [ 2] 1972 	pushw	y
      00BD4C 9F               [ 1] 1973 	ld	a, xl
      00BD4D 88               [ 1] 1974 	push	a
      00BD4E CD D7 76         [ 4] 1975 	call	__divulong
      00BD51 5B 08            [ 2] 1976 	addw	sp, #8
                           000912  1977 	C$ebike_app.c$1152$1_0$484 ==.
                                   1978 ;	ebike_app.c: 1152: ui32_temp /= 10;
      00BD53 4B 0A            [ 1] 1979 	push	#0x0a
      00BD55 4B 00            [ 1] 1980 	push	#0x00
      00BD57 4B 00            [ 1] 1981 	push	#0x00
      00BD59 4B 00            [ 1] 1982 	push	#0x00
      00BD5B 89               [ 2] 1983 	pushw	x
      00BD5C 90 89            [ 2] 1984 	pushw	y
      00BD5E CD D7 76         [ 4] 1985 	call	__divulong
      00BD61 5B 08            [ 2] 1986 	addw	sp, #8
                           000922  1987 	C$ebike_app.c$1153$3_0$488 ==.
                                   1988 ;	ebike_app.c: 1153: motor_set_adc_battery_voltage_cut_off((uint8_t) ui32_temp);
      00BD63 9F               [ 1] 1989 	ld	a, xl
      00BD64 88               [ 1] 1990 	push	a
      00BD65 CD B1 F1         [ 4] 1991 	call	_motor_set_adc_battery_voltage_cut_off
      00BD68 84               [ 1] 1992 	pop	a
                           000928  1993 	C$ebike_app.c$1164$3_1$506 ==.
                                   1994 ;	ebike_app.c: 1164: ui16_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_0);
      00BD69 4B 07            [ 1] 1995 	push	#0x07
      00BD6B 4B 40            [ 1] 1996 	push	#0x40
      00BD6D 5F               [ 1] 1997 	clrw	x
      00BD6E 89               [ 2] 1998 	pushw	x
      00BD6F CD A6 1A         [ 4] 1999 	call	_FLASH_ReadByte
      00BD72 5B 04            [ 2] 2000 	addw	sp, #4
      00BD74 5F               [ 1] 2001 	clrw	x
      00BD75 97               [ 1] 2002 	ld	xl, a
      00BD76 1F 01            [ 2] 2003 	ldw	(0x01, sp), x
                           000937  2004 	C$ebike_app.c$1165$3_1$506 ==.
                                   2005 ;	ebike_app.c: 1165: ui8_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_1);
      00BD78 4B 08            [ 1] 2006 	push	#0x08
      00BD7A 4B 40            [ 1] 2007 	push	#0x40
      00BD7C 5F               [ 1] 2008 	clrw	x
      00BD7D 89               [ 2] 2009 	pushw	x
      00BD7E CD A6 1A         [ 4] 2010 	call	_FLASH_ReadByte
      00BD81 5B 04            [ 2] 2011 	addw	sp, #4
                           000942  2012 	C$ebike_app.c$1166$3_1$506 ==.
                                   2013 ;	ebike_app.c: 1166: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xFF00);
      00BD83 95               [ 1] 2014 	ld	xh, a
      00BD84 4F               [ 1] 2015 	clr	a
      00BD85 97               [ 1] 2016 	ld	xl, a
      00BD86 72 FB 01         [ 2] 2017 	addw	x, (0x01, sp)
                           000948  2018 	C$ebike_app.c$1167$3_1$506 ==.
                                   2019 ;	ebike_app.c: 1167: configuration_variables.ui16_wheel_perimeter = ui16_temp;
      00BD89 CF 00 1A         [ 2] 2020 	ldw	_configuration_variables+5, x
                           00094B  2021 	C$ebike_app.c$1182$3_1$506 ==.
                                   2022 ;	ebike_app.c: 1182: if(configuration_variables.ui8_offroad_mode)
      00BD8C C6 00 1E         [ 1] 2023 	ld	a, _configuration_variables+9
      00BD8F 27 0E            [ 1] 2024 	jreq	00133$
                           000950  2025 	C$ebike_app.c$1183$3_1$506 ==.
                                   2026 ;	ebike_app.c: 1183: configuration_variables.ui8_wheel_max_speed = FLASH_ReadByte(ADDR_WHEEL_MAX_SPEED);
      00BD91 4B 09            [ 1] 2027 	push	#0x09
      00BD93 4B 40            [ 1] 2028 	push	#0x40
      00BD95 5F               [ 1] 2029 	clrw	x
      00BD96 89               [ 2] 2030 	pushw	x
      00BD97 CD A6 1A         [ 4] 2031 	call	_FLASH_ReadByte
      00BD9A 5B 04            [ 2] 2032 	addw	sp, #4
      00BD9C C7 00 21         [ 1] 2033 	ld	_configuration_variables+12, a
      00BD9F                       2034 00133$:
                           00095E  2035 	C$ebike_app.c$1192$3_1$506 ==.
                                   2036 ;	ebike_app.c: 1192: ui8_received_package_flag = 0;
      00BD9F 72 5F 02 23      [ 1] 2037 	clr	_ui8_received_package_flag+0
      00BDA3                       2038 00135$:
                           000962  2039 	C$ebike_app.c$1196$2_0$485 ==.
                                   2040 ;	ebike_app.c: 1196: UART2->CR2 |= (1 << 5);
      00BDA3 72 1A 52 45      [ 1] 2041 	bset	21061, #5
      00BDA7                       2042 00140$:
                           000966  2043 	C$ebike_app.c$1199$1_0$484 ==.
                                   2044 ;	ebike_app.c: 1199: }
      00BDA7 5B 02            [ 2] 2045 	addw	sp, #2
                           000968  2046 	C$ebike_app.c$1199$1_0$484 ==.
                           000968  2047 	XFebike_app$uart_receive_package$0$0 ==.
      00BDA9 81               [ 4] 2048 	ret
                           000969  2049 	Febike_app$uart_send_package$0$0 ==.
                           000969  2050 	C$ebike_app.c$1204$1_0$508 ==.
                                   2051 ;	ebike_app.c: 1204: static void uart_send_package(void)
                                   2052 ;	-----------------------------------------
                                   2053 ;	 function uart_send_package
                                   2054 ;	-----------------------------------------
      00BDAA                       2055 _uart_send_package:
      00BDAA 52 02            [ 2] 2056 	sub	sp, #2
                           00096B  2057 	C$ebike_app.c$1212$1_0$508 ==.
                                   2058 ;	ebike_app.c: 1212: ui8_tx_buffer[0] = TX_STX;
      00BDAC 35 43 00 0C      [ 1] 2059 	mov	_ui8_tx_buffer+0, #0x43
                           00096F  2060 	C$ebike_app.c$1215$1_0$508 ==.
                                   2061 ;	ebike_app.c: 1215: configuration_variables.ui8_fault_code = NO_FAULT;
      00BDB0 35 00 00 3A      [ 1] 2062 	mov	_configuration_variables+37, #0x00
                           000973  2063 	C$ebike_app.c$1218$1_0$508 ==.
                                   2064 ;	ebike_app.c: 1218: configuration_variables.ui8_working_status &= 0xFE; // bit0 = 0 (battery normal)
      00BDB4 C6 00 38         [ 1] 2065 	ld	a, _configuration_variables+35
      00BDB7 A4 FE            [ 1] 2066 	and	a, #0xfe
      00BDB9 C7 00 38         [ 1] 2067 	ld	_configuration_variables+35, a
                           00097B  2068 	C$ebike_app.c$1221$1_0$508 ==.
                                   2069 ;	ebike_app.c: 1221: switch(ui8_battery_state_of_charge)
      00BDBC C6 02 36         [ 1] 2070 	ld	a, _ui8_battery_state_of_charge+0
      00BDBF A1 06            [ 1] 2071 	cp	a, #0x06
      00BDC1 23 03            [ 2] 2072 	jrule	00197$
      00BDC3 CC BE 10         [ 2] 2073 	jp	00108$
      00BDC6                       2074 00197$:
      00BDC6 5F               [ 1] 2075 	clrw	x
      00BDC7 97               [ 1] 2076 	ld	xl, a
      00BDC8 58               [ 2] 2077 	sllw	x
      00BDC9 DE BD CD         [ 2] 2078 	ldw	x, (#00198$, x)
      00BDCC FC               [ 2] 2079 	jp	(x)
      00BDCD                       2080 00198$:
      00BDCD BD DB                 2081 	.dw	#00101$
      00BDCF BD EA                 2082 	.dw	#00102$
      00BDD1 BD F0                 2083 	.dw	#00103$
      00BDD3 BD F6                 2084 	.dw	#00104$
      00BDD5 BD FC                 2085 	.dw	#00105$
      00BDD7 BE 02                 2086 	.dw	#00106$
      00BDD9 BE 08                 2087 	.dw	#00107$
                           00099A  2088 	C$ebike_app.c$1223$2_0$509 ==.
                                   2089 ;	ebike_app.c: 1223: case 0:
      00BDDB                       2090 00101$:
                           00099A  2091 	C$ebike_app.c$1224$2_0$509 ==.
                                   2092 ;	ebike_app.c: 1224: configuration_variables.ui8_working_status |= 0x01; // bit0 = 1 (battery undervoltage)
      00BDDB C6 00 38         [ 1] 2093 	ld	a, _configuration_variables+35
      00BDDE AA 01            [ 1] 2094 	or	a, #0x01
      00BDE0 C7 00 38         [ 1] 2095 	ld	_configuration_variables+35, a
                           0009A2  2096 	C$ebike_app.c$1225$2_0$509 ==.
                                   2097 ;	ebike_app.c: 1225: ui8_tx_buffer[1] = 0x00;
      00BDE3 35 00 00 0D      [ 1] 2098 	mov	_ui8_tx_buffer+1, #0x00
                           0009A6  2099 	C$ebike_app.c$1226$2_0$509 ==.
                                   2100 ;	ebike_app.c: 1226: break;
      00BDE7 CC BE 10         [ 2] 2101 	jp	00108$
                           0009A9  2102 	C$ebike_app.c$1228$2_0$509 ==.
                                   2103 ;	ebike_app.c: 1228: case 1:
      00BDEA                       2104 00102$:
                           0009A9  2105 	C$ebike_app.c$1229$2_0$509 ==.
                                   2106 ;	ebike_app.c: 1229: ui8_tx_buffer[1] = 0x00; // Battery 0/4 (empty and blinking)
      00BDEA 35 00 00 0D      [ 1] 2107 	mov	_ui8_tx_buffer+1, #0x00
                           0009AD  2108 	C$ebike_app.c$1230$2_0$509 ==.
                                   2109 ;	ebike_app.c: 1230: break;
      00BDEE 20 20            [ 2] 2110 	jra	00108$
                           0009AF  2111 	C$ebike_app.c$1232$2_0$509 ==.
                                   2112 ;	ebike_app.c: 1232: case 2:
      00BDF0                       2113 00103$:
                           0009AF  2114 	C$ebike_app.c$1233$2_0$509 ==.
                                   2115 ;	ebike_app.c: 1233: ui8_tx_buffer[1] = 0x02; // Battery 1/4
      00BDF0 35 02 00 0D      [ 1] 2116 	mov	_ui8_tx_buffer+1, #0x02
                           0009B3  2117 	C$ebike_app.c$1234$2_0$509 ==.
                                   2118 ;	ebike_app.c: 1234: break;
      00BDF4 20 1A            [ 2] 2119 	jra	00108$
                           0009B5  2120 	C$ebike_app.c$1236$2_0$509 ==.
                                   2121 ;	ebike_app.c: 1236: case 3:
      00BDF6                       2122 00104$:
                           0009B5  2123 	C$ebike_app.c$1237$2_0$509 ==.
                                   2124 ;	ebike_app.c: 1237: ui8_tx_buffer[1] = 0x06; // Battery 2/4
      00BDF6 35 06 00 0D      [ 1] 2125 	mov	_ui8_tx_buffer+1, #0x06
                           0009B9  2126 	C$ebike_app.c$1238$2_0$509 ==.
                                   2127 ;	ebike_app.c: 1238: break;
      00BDFA 20 14            [ 2] 2128 	jra	00108$
                           0009BB  2129 	C$ebike_app.c$1240$2_0$509 ==.
                                   2130 ;	ebike_app.c: 1240: case 4:
      00BDFC                       2131 00105$:
                           0009BB  2132 	C$ebike_app.c$1241$2_0$509 ==.
                                   2133 ;	ebike_app.c: 1241: ui8_tx_buffer[1] = 0x09; // Battery 3/4
      00BDFC 35 09 00 0D      [ 1] 2134 	mov	_ui8_tx_buffer+1, #0x09
                           0009BF  2135 	C$ebike_app.c$1242$2_0$509 ==.
                                   2136 ;	ebike_app.c: 1242: break;
      00BE00 20 0E            [ 2] 2137 	jra	00108$
                           0009C1  2138 	C$ebike_app.c$1244$2_0$509 ==.
                                   2139 ;	ebike_app.c: 1244: case 5:
      00BE02                       2140 00106$:
                           0009C1  2141 	C$ebike_app.c$1245$2_0$509 ==.
                                   2142 ;	ebike_app.c: 1245: ui8_tx_buffer[1] = 0x0C; // Battery 4/4 (full)
      00BE02 35 0C 00 0D      [ 1] 2143 	mov	_ui8_tx_buffer+1, #0x0c
                           0009C5  2144 	C$ebike_app.c$1246$2_0$509 ==.
                                   2145 ;	ebike_app.c: 1246: break;
      00BE06 20 08            [ 2] 2146 	jra	00108$
                           0009C7  2147 	C$ebike_app.c$1248$2_0$509 ==.
                                   2148 ;	ebike_app.c: 1248: case 6:
      00BE08                       2149 00107$:
                           0009C7  2150 	C$ebike_app.c$1249$2_0$509 ==.
                                   2151 ;	ebike_app.c: 1249: ui8_tx_buffer[1] = 0x0C; // Battery 4/4 (full)
      00BE08 35 0C 00 0D      [ 1] 2152 	mov	_ui8_tx_buffer+1, #0x0c
                           0009CB  2153 	C$ebike_app.c$1250$2_0$509 ==.
                                   2154 ;	ebike_app.c: 1250: configuration_variables.ui8_fault_code = OVERVOLTAGE; // Fault overvoltage
      00BE0C 35 08 00 3A      [ 1] 2155 	mov	_configuration_variables+37, #0x08
                           0009CF  2156 	C$ebike_app.c$1252$1_0$508 ==.
                                   2157 ;	ebike_app.c: 1252: }
      00BE10                       2158 00108$:
                           0009CF  2159 	C$ebike_app.c$1334$1_0$508 ==.
                                   2160 ;	ebike_app.c: 1334: ui8_tx_buffer[3] = 0x46;
      00BE10 35 46 00 0F      [ 1] 2161 	mov	_ui8_tx_buffer+3, #0x46
                           0009D3  2162 	C$ebike_app.c$1335$1_0$508 ==.
                                   2163 ;	ebike_app.c: 1335: ui8_tx_buffer[4] = 0x46;
      00BE14 35 46 00 10      [ 1] 2164 	mov	_ui8_tx_buffer+4, #0x46
                           0009D7  2165 	C$ebike_app.c$1338$1_0$508 ==.
                                   2166 ;	ebike_app.c: 1338: if(ui8_system_state & ERROR_MOTOR_BLOCKED)
      00BE18 C6 01 F9         [ 1] 2167 	ld	a, _ui8_system_state+0
      00BE1B 44               [ 1] 2168 	srl	a
      00BE1C 24 06            [ 1] 2169 	jrnc	00121$
                           0009DD  2170 	C$ebike_app.c$1340$2_0$510 ==.
                                   2171 ;	ebike_app.c: 1340: configuration_variables.ui8_fault_code = EBIKE_WHEEL_BLOCKED;
      00BE1E 35 04 00 3A      [ 1] 2172 	mov	_configuration_variables+37, #0x04
      00BE22 20 39            [ 2] 2173 	jra	00122$
      00BE24                       2174 00121$:
                           0009E3  2175 	C$ebike_app.c$1342$1_0$508 ==.
                                   2176 ;	ebike_app.c: 1342: else if(ui8_overtemperature)
      00BE24 72 5D 02 2C      [ 1] 2177 	tnz	_ui8_overtemperature+0
      00BE28 27 2F            [ 1] 2178 	jreq	00118$
                           0009E9  2179 	C$ebike_app.c$1344$2_0$511 ==.
                                   2180 ;	ebike_app.c: 1344: if(ui8_overtemperature == 2)
      00BE2A C6 02 2C         [ 1] 2181 	ld	a, _ui8_overtemperature+0
      00BE2D A1 02            [ 1] 2182 	cp	a, #0x02
      00BE2F 26 06            [ 1] 2183 	jrne	00115$
                           0009F0  2184 	C$ebike_app.c$1346$3_0$512 ==.
                                   2185 ;	ebike_app.c: 1346: configuration_variables.ui8_fault_code = OVERTEMPERATURE;    
      00BE31 35 06 00 3A      [ 1] 2186 	mov	_configuration_variables+37, #0x06
      00BE35 20 26            [ 2] 2187 	jra	00122$
      00BE37                       2188 00115$:
                           0009F6  2189 	C$ebike_app.c$1351$3_0$513 ==.
                                   2190 ;	ebike_app.c: 1351: if(ui8_overtemperature_counter > 2)
      00BE37 C6 00 59         [ 1] 2191 	ld	a, _uart_send_package_ui8_overtemperature_counter_196608_513+0
      00BE3A A1 02            [ 1] 2192 	cp	a, #0x02
      00BE3C 23 06            [ 2] 2193 	jrule	00110$
                           0009FD  2194 	C$ebike_app.c$1353$4_0$514 ==.
                                   2195 ;	ebike_app.c: 1353: configuration_variables.ui8_fault_code = OVERTEMPERATURE;
      00BE3E 35 06 00 3A      [ 1] 2196 	mov	_configuration_variables+37, #0x06
      00BE42 20 04            [ 2] 2197 	jra	00111$
      00BE44                       2198 00110$:
                           000A03  2199 	C$ebike_app.c$1357$4_0$515 ==.
                                   2200 ;	ebike_app.c: 1357: configuration_variables.ui8_fault_code = NO_FAULT;
      00BE44 35 00 00 3A      [ 1] 2201 	mov	_configuration_variables+37, #0x00
      00BE48                       2202 00111$:
                           000A07  2203 	C$ebike_app.c$1360$3_0$513 ==.
                                   2204 ;	ebike_app.c: 1360: if(++ui8_overtemperature_counter > 5) ui8_overtemperature_counter = 0;
      00BE48 72 5C 00 59      [ 1] 2205 	inc	_uart_send_package_ui8_overtemperature_counter_196608_513+0
      00BE4C C6 00 59         [ 1] 2206 	ld	a, _uart_send_package_ui8_overtemperature_counter_196608_513+0
      00BE4F A1 05            [ 1] 2207 	cp	a, #0x05
      00BE51 23 0A            [ 2] 2208 	jrule	00122$
      00BE53 72 5F 00 59      [ 1] 2209 	clr	_uart_send_package_ui8_overtemperature_counter_196608_513+0
      00BE57 20 04            [ 2] 2210 	jra	00122$
      00BE59                       2211 00118$:
                           000A18  2212 	C$ebike_app.c$1365$2_0$516 ==.
                                   2213 ;	ebike_app.c: 1365: configuration_variables.ui8_fault_code = NO_FAULT;
      00BE59 35 00 00 3A      [ 1] 2214 	mov	_configuration_variables+37, #0x00
      00BE5D                       2215 00122$:
                           000A1C  2216 	C$ebike_app.c$1369$1_0$508 ==.
                                   2217 ;	ebike_app.c: 1369: if(configuration_variables.ui8_function_code != NO_FUNCTION)
      00BE5D C6 00 39         [ 1] 2218 	ld	a, _configuration_variables+36
      00BE60 27 17            [ 1] 2219 	jreq	00127$
                           000A21  2220 	C$ebike_app.c$1372$2_0$517 ==.
                                   2221 ;	ebike_app.c: 1372: if(configuration_variables.ui8_function_code > FUNCTION_CODE_RANGE)
      00BE62 C6 00 39         [ 1] 2222 	ld	a, _configuration_variables+36
      00BE65 A1 09            [ 1] 2223 	cp	a, #0x09
      00BE67 23 08            [ 2] 2224 	jrule	00124$
                           000A28  2225 	C$ebike_app.c$1374$2_0$517 ==.
                                   2226 ;	ebike_app.c: 1374: ui8_tx_buffer[5] = configuration_variables.ui8_fault_code;
      00BE69 C6 00 3A         [ 1] 2227 	ld	a, _configuration_variables+37
      00BE6C C7 00 11         [ 1] 2228 	ld	_ui8_tx_buffer+5, a
      00BE6F 20 0E            [ 2] 2229 	jra	00128$
      00BE71                       2230 00124$:
                           000A30  2231 	C$ebike_app.c$1376$2_0$517 ==.
                                   2232 ;	ebike_app.c: 1376: ui8_tx_buffer[5] = configuration_variables.ui8_function_code;
      00BE71 C6 00 39         [ 1] 2233 	ld	a, _configuration_variables+36
      00BE74 C7 00 11         [ 1] 2234 	ld	_ui8_tx_buffer+5, a
      00BE77 20 06            [ 2] 2235 	jra	00128$
      00BE79                       2236 00127$:
                           000A38  2237 	C$ebike_app.c$1381$2_0$518 ==.
                                   2238 ;	ebike_app.c: 1381: ui8_tx_buffer[5] = configuration_variables.ui8_fault_code;
      00BE79 C6 00 3A         [ 1] 2239 	ld	a, _configuration_variables+37
      00BE7C C7 00 11         [ 1] 2240 	ld	_ui8_tx_buffer+5, a
      00BE7F                       2241 00128$:
                           000A3E  2242 	C$ebike_app.c$1385$1_0$508 ==.
                                   2243 ;	ebike_app.c: 1385: if(ui16_oem_wheel_speed == 0)
      00BE7F CE 02 21         [ 2] 2244 	ldw	x, _ui16_oem_wheel_speed+0
      00BE82 26 12            [ 1] 2245 	jrne	00130$
                           000A43  2246 	C$ebike_app.c$1387$2_0$519 ==.
                                   2247 ;	ebike_app.c: 1387: ui8_tx_buffer[6] = 0x07;
      00BE84 35 07 00 12      [ 1] 2248 	mov	_ui8_tx_buffer+6, #0x07
                           000A47  2249 	C$ebike_app.c$1388$2_0$519 ==.
                                   2250 ;	ebike_app.c: 1388: ui8_tx_buffer[7] = 0x07;
      00BE88 35 07 00 13      [ 1] 2251 	mov	_ui8_tx_buffer+7, #0x07
                           000A4B  2252 	C$ebike_app.c$1392$2_0$519 ==.
                                   2253 ;	ebike_app.c: 1392: configuration_variables.ui8_working_status &= 0x7F;
      00BE8C C6 00 38         [ 1] 2254 	ld	a, _configuration_variables+35
      00BE8F A4 7F            [ 1] 2255 	and	a, #0x7f
      00BE91 C7 00 38         [ 1] 2256 	ld	_configuration_variables+35, a
      00BE94 20 1A            [ 2] 2257 	jra	00131$
      00BE96                       2258 00130$:
                           000A55  2259 	C$ebike_app.c$1397$2_0$520 ==.
                                   2260 ;	ebike_app.c: 1397: ui8_tx_buffer[6] = (uint8_t) (ui16_oem_wheel_speed & 0xFF);
      00BE96 C6 02 22         [ 1] 2261 	ld	a, _ui16_oem_wheel_speed+1
      00BE99 C7 00 12         [ 1] 2262 	ld	_ui8_tx_buffer+6, a
                           000A5B  2263 	C$ebike_app.c$1398$2_0$520 ==.
                                   2264 ;	ebike_app.c: 1398: ui8_tx_buffer[7] = (uint8_t) (ui16_oem_wheel_speed >> 8);
      00BE9C C6 02 21         [ 1] 2265 	ld	a, _ui16_oem_wheel_speed+0
      00BE9F 6B 02            [ 1] 2266 	ld	(0x02, sp), a
      00BEA1 0F 01            [ 1] 2267 	clr	(0x01, sp)
      00BEA3 7B 02            [ 1] 2268 	ld	a, (0x02, sp)
      00BEA5 C7 00 13         [ 1] 2269 	ld	_ui8_tx_buffer+7, a
                           000A67  2270 	C$ebike_app.c$1402$2_0$520 ==.
                                   2271 ;	ebike_app.c: 1402: configuration_variables.ui8_working_status |= 0x80;
      00BEA8 C6 00 38         [ 1] 2272 	ld	a, _configuration_variables+35
      00BEAB AA 80            [ 1] 2273 	or	a, #0x80
      00BEAD C7 00 38         [ 1] 2274 	ld	_configuration_variables+35, a
      00BEB0                       2275 00131$:
                           000A6F  2276 	C$ebike_app.c$1411$1_0$508 ==.
                                   2277 ;	ebike_app.c: 1411: if(configuration_variables.ui8_working_status & 0xC0)
      00BEB0 C6 00 38         [ 1] 2278 	ld	a, _configuration_variables+35
      00BEB3 A5 C0            [ 1] 2279 	bcp	a, #0xc0
      00BEB5 27 0A            [ 1] 2280 	jreq	00133$
                           000A76  2281 	C$ebike_app.c$1414$2_0$521 ==.
                                   2282 ;	ebike_app.c: 1414: configuration_variables.ui8_working_status |= 0x04;
      00BEB7 C6 00 38         [ 1] 2283 	ld	a, _configuration_variables+35
      00BEBA AA 04            [ 1] 2284 	or	a, #0x04
      00BEBC C7 00 38         [ 1] 2285 	ld	_configuration_variables+35, a
      00BEBF 20 08            [ 2] 2286 	jra	00134$
      00BEC1                       2287 00133$:
                           000A80  2288 	C$ebike_app.c$1419$2_0$522 ==.
                                   2289 ;	ebike_app.c: 1419: configuration_variables.ui8_working_status &= 0xFB;
      00BEC1 C6 00 38         [ 1] 2290 	ld	a, _configuration_variables+35
      00BEC4 A4 FB            [ 1] 2291 	and	a, #0xfb
      00BEC6 C7 00 38         [ 1] 2292 	ld	_configuration_variables+35, a
      00BEC9                       2293 00134$:
                           000A88  2294 	C$ebike_app.c$1424$1_0$508 ==.
                                   2295 ;	ebike_app.c: 1424: ui8_tx_buffer[2] = (configuration_variables.ui8_working_status & 0x1F);
      00BEC9 C6 00 38         [ 1] 2296 	ld	a, _configuration_variables+35
      00BECC A4 1F            [ 1] 2297 	and	a, #0x1f
      00BECE C7 00 0E         [ 1] 2298 	ld	_ui8_tx_buffer+2, a
                           000A90  2299 	C$ebike_app.c$1427$1_0$508 ==.
                                   2300 ;	ebike_app.c: 1427: configuration_variables.ui8_working_status &= 0x3B;	
      00BED1 C6 00 38         [ 1] 2301 	ld	a, _configuration_variables+35
      00BED4 A4 3B            [ 1] 2302 	and	a, #0x3b
      00BED6 C7 00 38         [ 1] 2303 	ld	_configuration_variables+35, a
                           000A98  2304 	C$ebike_app.c$1430$1_0$508 ==.
                                   2305 ;	ebike_app.c: 1430: ui8_tx_check_code = 0x00;
      00BED9 4F               [ 1] 2306 	clr	a
      00BEDA 90 97            [ 1] 2307 	ld	yl, a
                           000A9B  2308 	C$ebike_app.c$1431$2_0$508 ==.
                                   2309 ;	ebike_app.c: 1431: for(ui8_i = 0; ui8_i < TX_CHECK_CODE; ui8_i++)
      00BEDC 4F               [ 1] 2310 	clr	a
      00BEDD                       2311 00137$:
                           000A9C  2312 	C$ebike_app.c$1433$3_0$524 ==.
                                   2313 ;	ebike_app.c: 1433: ui8_tx_check_code += ui8_tx_buffer[ui8_i];
      00BEDD 5F               [ 1] 2314 	clrw	x
      00BEDE 97               [ 1] 2315 	ld	xl, a
      00BEDF 1C 00 0C         [ 2] 2316 	addw	x, #(_ui8_tx_buffer + 0)
      00BEE2 88               [ 1] 2317 	push	a
      00BEE3 F6               [ 1] 2318 	ld	a, (x)
      00BEE4 6B 03            [ 1] 2319 	ld	(0x03, sp), a
      00BEE6 84               [ 1] 2320 	pop	a
      00BEE7 72 F9 01         [ 2] 2321 	addw	y, (1, sp)
                           000AA9  2322 	C$ebike_app.c$1431$2_0$523 ==.
                                   2323 ;	ebike_app.c: 1431: for(ui8_i = 0; ui8_i < TX_CHECK_CODE; ui8_i++)
      00BEEA 4C               [ 1] 2324 	inc	a
      00BEEB A1 08            [ 1] 2325 	cp	a, #0x08
      00BEED 25 EE            [ 1] 2326 	jrc	00137$
                           000AAE  2327 	C$ebike_app.c$1435$1_0$508 ==.
                                   2328 ;	ebike_app.c: 1435: ui8_tx_buffer[TX_CHECK_CODE] = ui8_tx_check_code;
      00BEEF AE 00 14         [ 2] 2329 	ldw	x, #(_ui8_tx_buffer + 8)
      00BEF2 90 9F            [ 1] 2330 	ld	a, yl
      00BEF4 F7               [ 1] 2331 	ld	(x), a
                           000AB4  2332 	C$ebike_app.c$1438$2_0$508 ==.
                                   2333 ;	ebike_app.c: 1438: for(ui8_i = 0; ui8_i < UART_TX_BUFFER_LEN; ui8_i++)
      00BEF5 0F 02            [ 1] 2334 	clr	(0x02, sp)
      00BEF7                       2335 00139$:
                           000AB6  2336 	C$ebike_app.c$1440$3_0$526 ==.
                                   2337 ;	ebike_app.c: 1440: putchar(ui8_tx_buffer[ui8_i]);
      00BEF7 5F               [ 1] 2338 	clrw	x
      00BEF8 7B 02            [ 1] 2339 	ld	a, (0x02, sp)
      00BEFA 97               [ 1] 2340 	ld	xl, a
      00BEFB 1C 00 0C         [ 2] 2341 	addw	x, #(_ui8_tx_buffer + 0)
      00BEFE F6               [ 1] 2342 	ld	a, (x)
      00BEFF 5F               [ 1] 2343 	clrw	x
      00BF00 97               [ 1] 2344 	ld	xl, a
      00BF01 89               [ 2] 2345 	pushw	x
      00BF02 CD A8 7D         [ 4] 2346 	call	_putchar
      00BF05 5B 02            [ 2] 2347 	addw	sp, #2
                           000AC6  2348 	C$ebike_app.c$1438$2_0$525 ==.
                                   2349 ;	ebike_app.c: 1438: for(ui8_i = 0; ui8_i < UART_TX_BUFFER_LEN; ui8_i++)
      00BF07 0C 02            [ 1] 2350 	inc	(0x02, sp)
      00BF09 7B 02            [ 1] 2351 	ld	a, (0x02, sp)
      00BF0B A1 09            [ 1] 2352 	cp	a, #0x09
      00BF0D 25 E8            [ 1] 2353 	jrc	00139$
                           000ACE  2354 	C$ebike_app.c$1443$2_0$508 ==.
                                   2355 ;	ebike_app.c: 1443: }
      00BF0F 5B 02            [ 2] 2356 	addw	sp, #2
                           000AD0  2357 	C$ebike_app.c$1443$2_0$508 ==.
                           000AD0  2358 	XFebike_app$uart_send_package$0$0 ==.
      00BF11 81               [ 4] 2359 	ret
                           000AD1  2360 	Febike_app$ebike_app_set_target_adc_battery_max_current$0$0 ==.
                           000AD1  2361 	C$ebike_app.c$1448$2_0$528 ==.
                                   2362 ;	ebike_app.c: 1448: static void ebike_app_set_target_adc_battery_max_current(uint8_t ui8_value) // each 1 unit = 0.625 amps
                                   2363 ;	-----------------------------------------
                                   2364 ;	 function ebike_app_set_target_adc_battery_max_current
                                   2365 ;	-----------------------------------------
      00BF12                       2366 _ebike_app_set_target_adc_battery_max_current:
                           000AD1  2367 	C$ebike_app.c$1451$1_0$528 ==.
                                   2368 ;	ebike_app.c: 1451: if(ui8_value > ui8_adc_battery_current_max) ui8_value = ui8_adc_battery_current_max;
      00BF12 7B 03            [ 1] 2369 	ld	a, (0x03, sp)
      00BF14 C1 01 F3         [ 1] 2370 	cp	a, _ui8_adc_battery_current_max+0
      00BF17 23 05            [ 2] 2371 	jrule	00102$
      00BF19 C6 01 F3         [ 1] 2372 	ld	a, _ui8_adc_battery_current_max+0
      00BF1C 6B 03            [ 1] 2373 	ld	(0x03, sp), a
      00BF1E                       2374 00102$:
                           000ADD  2375 	C$ebike_app.c$1453$1_0$528 ==.
                                   2376 ;	ebike_app.c: 1453: ui8_adc_target_battery_max_current = ui8_adc_battery_current_offset + ui8_value;
      00BF1E C6 01 EF         [ 1] 2377 	ld	a, _ui8_adc_battery_current_offset+0
      00BF21 1B 03            [ 1] 2378 	add	a, (0x03, sp)
      00BF23 C7 01 F1         [ 1] 2379 	ld	_ui8_adc_target_battery_max_current+0, a
                           000AE5  2380 	C$ebike_app.c$1454$1_0$528 ==.
                                   2381 ;	ebike_app.c: 1454: }
                           000AE5  2382 	C$ebike_app.c$1454$1_0$528 ==.
                           000AE5  2383 	XFebike_app$ebike_app_set_target_adc_battery_max_current$0$0 ==.
      00BF26 81               [ 4] 2384 	ret
                           000AE6  2385 	Febike_app$ebike_app_set_target_adc_motor_max_current$0$0 ==.
                           000AE6  2386 	C$ebike_app.c$1459$1_0$530 ==.
                                   2387 ;	ebike_app.c: 1459: static void ebike_app_set_target_adc_motor_max_current(uint8_t ui8_value) // each 1 unit = 0.625 amps
                                   2388 ;	-----------------------------------------
                                   2389 ;	 function ebike_app_set_target_adc_motor_max_current
                                   2390 ;	-----------------------------------------
      00BF27                       2391 _ebike_app_set_target_adc_motor_max_current:
                           000AE6  2392 	C$ebike_app.c$1462$1_0$530 ==.
                                   2393 ;	ebike_app.c: 1462: if(ui8_value > ui8_adc_motor_current_max) ui8_value = ui8_adc_motor_current_max;
      00BF27 7B 03            [ 1] 2394 	ld	a, (0x03, sp)
      00BF29 C1 01 F4         [ 1] 2395 	cp	a, _ui8_adc_motor_current_max+0
      00BF2C 23 05            [ 2] 2396 	jrule	00102$
      00BF2E C6 01 F4         [ 1] 2397 	ld	a, _ui8_adc_motor_current_max+0
      00BF31 6B 03            [ 1] 2398 	ld	(0x03, sp), a
      00BF33                       2399 00102$:
                           000AF2  2400 	C$ebike_app.c$1464$1_0$530 ==.
                                   2401 ;	ebike_app.c: 1464: ui8_adc_target_motor_max_current = ui8_value;
      00BF33 7B 03            [ 1] 2402 	ld	a, (0x03, sp)
      00BF35 C7 01 F2         [ 1] 2403 	ld	_ui8_adc_target_motor_max_current+0, a
                           000AF7  2404 	C$ebike_app.c$1465$1_0$530 ==.
                                   2405 ;	ebike_app.c: 1465: }
                           000AF7  2406 	C$ebike_app.c$1465$1_0$530 ==.
                           000AF7  2407 	XFebike_app$ebike_app_set_target_adc_motor_max_current$0$0 ==.
      00BF38 81               [ 4] 2408 	ret
                           000AF8  2409 	Febike_app$ebike_app_set_battery_max_current$0$0 ==.
                           000AF8  2410 	C$ebike_app.c$1470$1_0$532 ==.
                                   2411 ;	ebike_app.c: 1470: static void ebike_app_set_battery_max_current(uint8_t ui8_value) // in amps
                                   2412 ;	-----------------------------------------
                                   2413 ;	 function ebike_app_set_battery_max_current
                                   2414 ;	-----------------------------------------
      00BF39                       2415 _ebike_app_set_battery_max_current:
                           000AF8  2416 	C$ebike_app.c$1473$1_0$532 ==.
                                   2417 ;	ebike_app.c: 1473: ui8_adc_battery_current_max = ((((uint16_t) ui8_value) << 8) / 160);
      00BF39 7B 03            [ 1] 2418 	ld	a, (0x03, sp)
      00BF3B 95               [ 1] 2419 	ld	xh, a
      00BF3C 4F               [ 1] 2420 	clr	a
      00BF3D 97               [ 1] 2421 	ld	xl, a
      00BF3E 90 AE 00 A0      [ 2] 2422 	ldw	y, #0x00a0
      00BF42 65               [ 2] 2423 	divw	x, y
      00BF43 9F               [ 1] 2424 	ld	a, xl
      00BF44 C7 01 F3         [ 1] 2425 	ld	_ui8_adc_battery_current_max+0, a
                           000B06  2426 	C$ebike_app.c$1475$1_0$532 ==.
                                   2427 ;	ebike_app.c: 1475: if(ui8_adc_battery_current_max > ADC_BATTERY_CURRENT_MAX)
      00BF47 C6 01 F3         [ 1] 2428 	ld	a, _ui8_adc_battery_current_max+0
      00BF4A A1 1C            [ 1] 2429 	cp	a, #0x1c
      00BF4C 23 04            [ 2] 2430 	jrule	00103$
                           000B0D  2431 	C$ebike_app.c$1476$1_0$532 ==.
                                   2432 ;	ebike_app.c: 1476: ui8_adc_battery_current_max = ADC_BATTERY_CURRENT_MAX;
      00BF4E 35 1C 01 F3      [ 1] 2433 	mov	_ui8_adc_battery_current_max+0, #0x1c
      00BF52                       2434 00103$:
                           000B11  2435 	C$ebike_app.c$1477$1_0$532 ==.
                                   2436 ;	ebike_app.c: 1477: }
                           000B11  2437 	C$ebike_app.c$1477$1_0$532 ==.
                           000B11  2438 	XFebike_app$ebike_app_set_battery_max_current$0$0 ==.
      00BF52 81               [ 4] 2439 	ret
                           000B12  2440 	Febike_app$ebike_app_set_motor_max_current$0$0 ==.
                           000B12  2441 	C$ebike_app.c$1482$1_0$534 ==.
                                   2442 ;	ebike_app.c: 1482: static void ebike_app_set_motor_max_current(uint8_t ui8_value) // in amps
                                   2443 ;	-----------------------------------------
                                   2444 ;	 function ebike_app_set_motor_max_current
                                   2445 ;	-----------------------------------------
      00BF53                       2446 _ebike_app_set_motor_max_current:
                           000B12  2447 	C$ebike_app.c$1485$1_0$534 ==.
                                   2448 ;	ebike_app.c: 1485: ui8_adc_motor_current_max = ((((uint16_t) ui8_value) << 8) / 160);
      00BF53 7B 03            [ 1] 2449 	ld	a, (0x03, sp)
      00BF55 95               [ 1] 2450 	ld	xh, a
      00BF56 4F               [ 1] 2451 	clr	a
      00BF57 97               [ 1] 2452 	ld	xl, a
      00BF58 90 AE 00 A0      [ 2] 2453 	ldw	y, #0x00a0
      00BF5C 65               [ 2] 2454 	divw	x, y
      00BF5D 9F               [ 1] 2455 	ld	a, xl
      00BF5E C7 01 F4         [ 1] 2456 	ld	_ui8_adc_motor_current_max+0, a
                           000B20  2457 	C$ebike_app.c$1487$1_0$534 ==.
                                   2458 ;	ebike_app.c: 1487: if(ui8_adc_motor_current_max > ADC_MOTOR_PHASE_CURRENT_MAX)
      00BF61 C6 01 F4         [ 1] 2459 	ld	a, _ui8_adc_motor_current_max+0
      00BF64 A1 30            [ 1] 2460 	cp	a, #0x30
      00BF66 23 04            [ 2] 2461 	jrule	00103$
                           000B27  2462 	C$ebike_app.c$1488$1_0$534 ==.
                                   2463 ;	ebike_app.c: 1488: ui8_adc_motor_current_max = ADC_MOTOR_PHASE_CURRENT_MAX;
      00BF68 35 30 01 F4      [ 1] 2464 	mov	_ui8_adc_motor_current_max+0, #0x30
      00BF6C                       2465 00103$:
                           000B2B  2466 	C$ebike_app.c$1489$1_0$534 ==.
                                   2467 ;	ebike_app.c: 1489: }
                           000B2B  2468 	C$ebike_app.c$1489$1_0$534 ==.
                           000B2B  2469 	XFebike_app$ebike_app_set_motor_max_current$0$0 ==.
      00BF6C 81               [ 4] 2470 	ret
                           000B2C  2471 	Febike_app$ebike_app_set_torque_assist_ratio$0$0 ==.
                           000B2C  2472 	C$ebike_app.c$1491$1_0$536 ==.
                                   2473 ;	ebike_app.c: 1491: static void ebike_app_set_torque_assist_ratio(void)
                                   2474 ;	-----------------------------------------
                                   2475 ;	 function ebike_app_set_torque_assist_ratio
                                   2476 ;	-----------------------------------------
      00BF6D                       2477 _ebike_app_set_torque_assist_ratio:
      00BF6D 52 02            [ 2] 2478 	sub	sp, #2
                           000B2E  2479 	C$ebike_app.c$1495$1_0$536 ==.
                                   2480 ;	ebike_app.c: 1495: f_torque_assist_ratio = (90.0 * 10.0) / (30.0 / 0.625) / 10.0 * (255.0 / (float)(ui8_adc_torque_sensor_max_value - ui8_adc_torque_sensor_min_value));
      00BF6F 5F               [ 1] 2481 	clrw	x
      00BF70 C6 01 EE         [ 1] 2482 	ld	a, _ui8_adc_torque_sensor_max_value+0
      00BF73 97               [ 1] 2483 	ld	xl, a
      00BF74 C6 01 ED         [ 1] 2484 	ld	a, _ui8_adc_torque_sensor_min_value+0
      00BF77 6B 02            [ 1] 2485 	ld	(0x02, sp), a
      00BF79 0F 01            [ 1] 2486 	clr	(0x01, sp)
      00BF7B 72 F0 01         [ 2] 2487 	subw	x, (0x01, sp)
      00BF7E 89               [ 2] 2488 	pushw	x
      00BF7F CD D7 65         [ 4] 2489 	call	___sint2fs
      00BF82 5B 02            [ 2] 2490 	addw	sp, #2
      00BF84 89               [ 2] 2491 	pushw	x
      00BF85 90 89            [ 2] 2492 	pushw	y
      00BF87 5F               [ 1] 2493 	clrw	x
      00BF88 89               [ 2] 2494 	pushw	x
      00BF89 4B 7F            [ 1] 2495 	push	#0x7f
      00BF8B 4B 43            [ 1] 2496 	push	#0x43
      00BF8D CD D9 E0         [ 4] 2497 	call	___fsdiv
      00BF90 5B 08            [ 2] 2498 	addw	sp, #8
      00BF92 89               [ 2] 2499 	pushw	x
      00BF93 90 89            [ 2] 2500 	pushw	y
      00BF95 5F               [ 1] 2501 	clrw	x
      00BF96 89               [ 2] 2502 	pushw	x
      00BF97 4B F0            [ 1] 2503 	push	#0xf0
      00BF99 4B 3F            [ 1] 2504 	push	#0x3f
      00BF9B CD D1 99         [ 4] 2505 	call	___fsmul
      00BF9E 5B 08            [ 2] 2506 	addw	sp, #8
      00BFA0 CF 01 F7         [ 2] 2507 	ldw	_f_torque_assist_ratio+2, x
      00BFA3 90 CF 01 F5      [ 2] 2508 	ldw	_f_torque_assist_ratio+0, y
                           000B66  2509 	C$ebike_app.c$1499$1_0$536 ==.
                                   2510 ;	ebike_app.c: 1499: }
      00BFA7 5B 02            [ 2] 2511 	addw	sp, #2
                           000B68  2512 	C$ebike_app.c$1499$1_0$536 ==.
                           000B68  2513 	XFebike_app$ebike_app_set_torque_assist_ratio$0$0 ==.
      00BFA9 81               [ 4] 2514 	ret
                           000B69  2515 	Febike_app$calc_pedal_force_and_torque$0$0 ==.
                           000B69  2516 	C$ebike_app.c$1504$1_0$538 ==.
                                   2517 ;	ebike_app.c: 1504: static void calc_pedal_force_and_torque(void)
                                   2518 ;	-----------------------------------------
                                   2519 ;	 function calc_pedal_force_and_torque
                                   2520 ;	-----------------------------------------
      00BFAA                       2521 _calc_pedal_force_and_torque:
                           000B69  2522 	C$ebike_app.c$1509$1_0$538 ==.
                                   2523 ;	ebike_app.c: 1509: ui16_pedal_torque_x100 = (uint16_t) ui8_torque_sensor * (uint16_t) ADC_STEP_PEDAL_TORQUE_X100;
      00BFAA 5F               [ 1] 2524 	clrw	x
      00BFAB C6 01 E7         [ 1] 2525 	ld	a, _ui8_torque_sensor+0
      00BFAE 97               [ 1] 2526 	ld	xl, a
      00BFAF 89               [ 2] 2527 	pushw	x
      00BFB0 4B 37            [ 1] 2528 	push	#0x37
      00BFB2 4B 00            [ 1] 2529 	push	#0x00
      00BFB4 CD D4 A9         [ 4] 2530 	call	__mulint
      00BFB7 5B 04            [ 2] 2531 	addw	sp, #4
                           000B78  2532 	C$ebike_app.c$1510$1_0$538 ==.
                                   2533 ;	ebike_app.c: 1510: ui16_pedal_torque_x10 = ui16_pedal_torque_x100 / 10;
      00BFB9 90 AE 00 0A      [ 2] 2534 	ldw	y, #0x000a
      00BFBD 65               [ 2] 2535 	divw	x, y
      00BFBE CF 02 02         [ 2] 2536 	ldw	_ui16_pedal_torque_x10+0, x
                           000B80  2537 	C$ebike_app.c$1569$1_0$538 ==.
                                   2538 ;	ebike_app.c: 1569: }
                           000B80  2539 	C$ebike_app.c$1569$1_0$538 ==.
                           000B80  2540 	XFebike_app$calc_pedal_force_and_torque$0$0 ==.
      00BFC1 81               [ 4] 2541 	ret
                           000B81  2542 	Febike_app$calc_wheel_speed$0$0 ==.
                           000B81  2543 	C$ebike_app.c$1574$1_0$540 ==.
                                   2544 ;	ebike_app.c: 1574: static void calc_wheel_speed(void)
                                   2545 ;	-----------------------------------------
                                   2546 ;	 function calc_wheel_speed
                                   2547 ;	-----------------------------------------
      00BFC2                       2548 _calc_wheel_speed:
      00BFC2 52 04            [ 2] 2549 	sub	sp, #4
                           000B83  2550 	C$ebike_app.c$1577$1_0$540 ==.
                                   2551 ;	ebike_app.c: 1577: if(ui16_wheel_speed_sensor_pwm_cycles_ticks < WHEEL_SPEED_SENSOR_MIN_PWM_CYCLE_TICKS)
      00BFC4 CE 02 11         [ 2] 2552 	ldw	x, _ui16_wheel_speed_sensor_pwm_cycles_ticks+0
      00BFC7 A3 FF FE         [ 2] 2553 	cpw	x, #0xfffe
      00BFCA 25 03            [ 1] 2554 	jrc	00123$
      00BFCC CC C0 B7         [ 2] 2555 	jp	00107$
      00BFCF                       2556 00123$:
                           000B8E  2557 	C$ebike_app.c$1597$1_0$540 ==.
                                   2558 ;	ebike_app.c: 1597: f_wheel_speed_x10 = ((float) PWM_CYCLES_SECOND) / ((float) ui16_wheel_speed_sensor_pwm_cycles_ticks); // rps
      00BFCF 3B 02 12         [ 1] 2559 	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+1
      00BFD2 3B 02 11         [ 1] 2560 	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0
      00BFD5 CD D7 D0         [ 4] 2561 	call	___uint2fs
      00BFD8 5B 02            [ 2] 2562 	addw	sp, #2
      00BFDA 89               [ 2] 2563 	pushw	x
      00BFDB 90 89            [ 2] 2564 	pushw	y
      00BFDD 4B 00            [ 1] 2565 	push	#0x00
      00BFDF 4B 24            [ 1] 2566 	push	#0x24
      00BFE1 4B 74            [ 1] 2567 	push	#0x74
      00BFE3 4B 46            [ 1] 2568 	push	#0x46
      00BFE5 CD D9 E0         [ 4] 2569 	call	___fsdiv
      00BFE8 5B 08            [ 2] 2570 	addw	sp, #8
      00BFEA CF 02 15         [ 2] 2571 	ldw	_f_wheel_speed_x10+2, x
      00BFED 90 CF 02 13      [ 2] 2572 	ldw	_f_wheel_speed_x10+0, y
                           000BB0  2573 	C$ebike_app.c$1598$2_0$541 ==.
                                   2574 ;	ebike_app.c: 1598: f_wheel_speed_x10 *= configuration_variables.ui16_wheel_perimeter; // millimeters per second
      00BFF1 CE 00 1A         [ 2] 2575 	ldw	x, _configuration_variables+5
      00BFF4 89               [ 2] 2576 	pushw	x
      00BFF5 CD D7 D0         [ 4] 2577 	call	___uint2fs
      00BFF8 5B 02            [ 2] 2578 	addw	sp, #2
      00BFFA 89               [ 2] 2579 	pushw	x
      00BFFB 90 89            [ 2] 2580 	pushw	y
      00BFFD 3B 02 16         [ 1] 2581 	push	_f_wheel_speed_x10+3
      00C000 3B 02 15         [ 1] 2582 	push	_f_wheel_speed_x10+2
      00C003 3B 02 14         [ 1] 2583 	push	_f_wheel_speed_x10+1
      00C006 3B 02 13         [ 1] 2584 	push	_f_wheel_speed_x10+0
      00C009 CD D1 99         [ 4] 2585 	call	___fsmul
      00C00C 5B 08            [ 2] 2586 	addw	sp, #8
      00C00E CF 02 15         [ 2] 2587 	ldw	_f_wheel_speed_x10+2, x
      00C011 90 CF 02 13      [ 2] 2588 	ldw	_f_wheel_speed_x10+0, y
                           000BD4  2589 	C$ebike_app.c$1599$1_0$540 ==.
                                   2590 ;	ebike_app.c: 1599: f_wheel_speed_x10 *= 0.036; // ((3600 / (1000 * 1000)) * 10) kms per hour * 10
      00C015 3B 02 16         [ 1] 2591 	push	_f_wheel_speed_x10+3
      00C018 3B 02 15         [ 1] 2592 	push	_f_wheel_speed_x10+2
      00C01B 3B 02 14         [ 1] 2593 	push	_f_wheel_speed_x10+1
      00C01E 3B 02 13         [ 1] 2594 	push	_f_wheel_speed_x10+0
      00C021 4B BC            [ 1] 2595 	push	#0xbc
      00C023 4B 74            [ 1] 2596 	push	#0x74
      00C025 4B 13            [ 1] 2597 	push	#0x13
      00C027 4B 3D            [ 1] 2598 	push	#0x3d
      00C029 CD D1 99         [ 4] 2599 	call	___fsmul
      00C02C 5B 08            [ 2] 2600 	addw	sp, #8
      00C02E CF 02 15         [ 2] 2601 	ldw	_f_wheel_speed_x10+2, x
      00C031 90 CF 02 13      [ 2] 2602 	ldw	_f_wheel_speed_x10+0, y
                           000BF4  2603 	C$ebike_app.c$1600$1_0$540 ==.
                                   2604 ;	ebike_app.c: 1600: ui16_wheel_speed_x10 = (uint16_t) f_wheel_speed_x10;
      00C035 3B 02 16         [ 1] 2605 	push	_f_wheel_speed_x10+3
      00C038 3B 02 15         [ 1] 2606 	push	_f_wheel_speed_x10+2
      00C03B 3B 02 14         [ 1] 2607 	push	_f_wheel_speed_x10+1
      00C03E 3B 02 13         [ 1] 2608 	push	_f_wheel_speed_x10+0
      00C041 CD D7 DC         [ 4] 2609 	call	___fs2uint
      00C044 5B 04            [ 2] 2610 	addw	sp, #4
      00C046 CF 02 17         [ 2] 2611 	ldw	_ui16_wheel_speed_x10+0, x
                           000C08  2612 	C$ebike_app.c$1603$2_0$541 ==.
                                   2613 ;	ebike_app.c: 1603: if(ui8_display_ready_flag)
      00C049 72 5D 02 47      [ 1] 2614 	tnz	_ui8_display_ready_flag+0
      00C04D 27 51            [ 1] 2615 	jreq	00104$
                           000C0E  2616 	C$ebike_app.c$1605$1_0$540 ==.
                                   2617 ;	ebike_app.c: 1605: f_oem_wheel_speed = (((float) ui16_wheel_speed_sensor_pwm_cycles_ticks) * 10.0) / ((float) configuration_variables.ui16_oem_wheel_speed_factor);
      00C04F 3B 02 12         [ 1] 2618 	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+1
      00C052 3B 02 11         [ 1] 2619 	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0
      00C055 CD D7 D0         [ 4] 2620 	call	___uint2fs
      00C058 5B 02            [ 2] 2621 	addw	sp, #2
      00C05A 89               [ 2] 2622 	pushw	x
      00C05B 90 89            [ 2] 2623 	pushw	y
      00C05D 5F               [ 1] 2624 	clrw	x
      00C05E 89               [ 2] 2625 	pushw	x
      00C05F 4B 20            [ 1] 2626 	push	#0x20
      00C061 4B 41            [ 1] 2627 	push	#0x41
      00C063 CD D1 99         [ 4] 2628 	call	___fsmul
      00C066 5B 08            [ 2] 2629 	addw	sp, #8
      00C068 1F 03            [ 2] 2630 	ldw	(0x03, sp), x
      00C06A 17 01            [ 2] 2631 	ldw	(0x01, sp), y
      00C06C CE 00 3E         [ 2] 2632 	ldw	x, _configuration_variables+41
      00C06F 89               [ 2] 2633 	pushw	x
      00C070 CD D7 D0         [ 4] 2634 	call	___uint2fs
      00C073 5B 02            [ 2] 2635 	addw	sp, #2
      00C075 89               [ 2] 2636 	pushw	x
      00C076 90 89            [ 2] 2637 	pushw	y
      00C078 1E 07            [ 2] 2638 	ldw	x, (0x07, sp)
      00C07A 89               [ 2] 2639 	pushw	x
      00C07B 1E 07            [ 2] 2640 	ldw	x, (0x07, sp)
      00C07D 89               [ 2] 2641 	pushw	x
      00C07E CD D9 E0         [ 4] 2642 	call	___fsdiv
      00C081 5B 08            [ 2] 2643 	addw	sp, #8
      00C083 CF 02 1F         [ 2] 2644 	ldw	_f_oem_wheel_speed+2, x
      00C086 90 CF 02 1D      [ 2] 2645 	ldw	_f_oem_wheel_speed+0, y
                           000C49  2646 	C$ebike_app.c$1606$1_0$540 ==.
                                   2647 ;	ebike_app.c: 1606: ui16_oem_wheel_speed = (uint16_t) f_oem_wheel_speed;
      00C08A 3B 02 20         [ 1] 2648 	push	_f_oem_wheel_speed+3
      00C08D 3B 02 1F         [ 1] 2649 	push	_f_oem_wheel_speed+2
      00C090 3B 02 1E         [ 1] 2650 	push	_f_oem_wheel_speed+1
      00C093 3B 02 1D         [ 1] 2651 	push	_f_oem_wheel_speed+0
      00C096 CD D7 DC         [ 4] 2652 	call	___fs2uint
      00C099 5B 04            [ 2] 2653 	addw	sp, #4
      00C09B CF 02 21         [ 2] 2654 	ldw	_ui16_oem_wheel_speed+0, x
      00C09E 20 1F            [ 2] 2655 	jra	00109$
      00C0A0                       2656 00104$:
                           000C5F  2657 	C$ebike_app.c$1612$3_0$543 ==.
                                   2658 ;	ebike_app.c: 1612: ui16_oem_wheel_speed = 0;
      00C0A0 5F               [ 1] 2659 	clrw	x
      00C0A1 CF 02 21         [ 2] 2660 	ldw	_ui16_oem_wheel_speed+0, x
                           000C63  2661 	C$ebike_app.c$1615$3_0$543 ==.
                                   2662 ;	ebike_app.c: 1615: if(ui8_startup_counter++ >= 40)
      00C0A4 C6 02 42         [ 1] 2663 	ld	a, _ui8_startup_counter+0
      00C0A7 97               [ 1] 2664 	ld	xl, a
      00C0A8 4C               [ 1] 2665 	inc	a
      00C0A9 C7 02 42         [ 1] 2666 	ld	_ui8_startup_counter+0, a
      00C0AC 9F               [ 1] 2667 	ld	a, xl
      00C0AD A1 28            [ 1] 2668 	cp	a, #0x28
      00C0AF 25 0E            [ 1] 2669 	jrc	00109$
                           000C70  2670 	C$ebike_app.c$1617$4_0$544 ==.
                                   2671 ;	ebike_app.c: 1617: ui8_display_ready_flag = 1;
      00C0B1 35 01 02 47      [ 1] 2672 	mov	_ui8_display_ready_flag+0, #0x01
      00C0B5 20 08            [ 2] 2673 	jra	00109$
      00C0B7                       2674 00107$:
                           000C76  2675 	C$ebike_app.c$1623$2_0$545 ==.
                                   2676 ;	ebike_app.c: 1623: ui16_wheel_speed_x10 = 0;
      00C0B7 5F               [ 1] 2677 	clrw	x
      00C0B8 CF 02 17         [ 2] 2678 	ldw	_ui16_wheel_speed_x10+0, x
                           000C7A  2679 	C$ebike_app.c$1624$2_0$545 ==.
                                   2680 ;	ebike_app.c: 1624: ui16_oem_wheel_speed = 0;
      00C0BB 5F               [ 1] 2681 	clrw	x
      00C0BC CF 02 21         [ 2] 2682 	ldw	_ui16_oem_wheel_speed+0, x
      00C0BF                       2683 00109$:
                           000C7E  2684 	C$ebike_app.c$1626$1_0$540 ==.
                                   2685 ;	ebike_app.c: 1626: }
      00C0BF 5B 04            [ 2] 2686 	addw	sp, #4
                           000C80  2687 	C$ebike_app.c$1626$1_0$540 ==.
                           000C80  2688 	XFebike_app$calc_wheel_speed$0$0 ==.
      00C0C1 81               [ 4] 2689 	ret
                           000C81  2690 	Febike_app$calc_motor_temperature$0$0 ==.
                           000C81  2691 	C$ebike_app.c$1631$1_0$547 ==.
                                   2692 ;	ebike_app.c: 1631: static void calc_motor_temperature(void)
                                   2693 ;	-----------------------------------------
                                   2694 ;	 function calc_motor_temperature
                                   2695 ;	-----------------------------------------
      00C0C2                       2696 _calc_motor_temperature:
                           000C81  2697 	C$ebike_app.c$1636$1_0$547 ==.
                                   2698 ;	ebike_app.c: 1636: ui16_adc_motor_temperatured_accumulated -= ui16_adc_motor_temperatured_accumulated >> READ_MOTOR_TEMPERATURE_FILTER_COEFFICIENT;
      00C0C2 CE 02 2A         [ 2] 2699 	ldw	x, _ui16_adc_motor_temperatured_accumulated+0
      00C0C5 A6 10            [ 1] 2700 	ld	a, #0x10
      00C0C7 62               [ 2] 2701 	div	x, a
      00C0C8 50               [ 2] 2702 	negw	x
      00C0C9 72 BB 02 2A      [ 2] 2703 	addw	x, _ui16_adc_motor_temperatured_accumulated+0
      00C0CD CF 02 2A         [ 2] 2704 	ldw	_ui16_adc_motor_temperatured_accumulated+0, x
                           000C8F  2705 	C$ebike_app.c$1637$1_0$547 ==.
                                   2706 ;	ebike_app.c: 1637: ui16_adc_motor_temperatured_accumulated += ui16_adc_read_throttle_10b();
      00C0D0 CD B3 AD         [ 4] 2707 	call	_ui16_adc_read_throttle_10b
      00C0D3 72 BB 02 2A      [ 2] 2708 	addw	x, _ui16_adc_motor_temperatured_accumulated+0
      00C0D7 CF 02 2A         [ 2] 2709 	ldw	_ui16_adc_motor_temperatured_accumulated+0, x
                           000C99  2710 	C$ebike_app.c$1638$1_0$547 ==.
                                   2711 ;	ebike_app.c: 1638: ui16_adc_motor_temperatured_filtered_10b = ui16_adc_motor_temperatured_accumulated >> READ_MOTOR_TEMPERATURE_FILTER_COEFFICIENT;
      00C0DA CE 02 2A         [ 2] 2712 	ldw	x, _ui16_adc_motor_temperatured_accumulated+0
      00C0DD A6 10            [ 1] 2713 	ld	a, #0x10
      00C0DF 62               [ 2] 2714 	div	x, a
                           000C9F  2715 	C$ebike_app.c$1640$1_0$547 ==.
                                   2716 ;	ebike_app.c: 1640: configuration_variables.ui16_motor_temperature_x2 = (uint16_t) ((float) ui16_adc_motor_temperatured_filtered_10b / 1.024);
      00C0E0 89               [ 2] 2717 	pushw	x
      00C0E1 CD D7 D0         [ 4] 2718 	call	___uint2fs
      00C0E4 5B 02            [ 2] 2719 	addw	sp, #2
      00C0E6 4B 6F            [ 1] 2720 	push	#0x6f
      00C0E8 4B 12            [ 1] 2721 	push	#0x12
      00C0EA 4B 83            [ 1] 2722 	push	#0x83
      00C0EC 4B 3F            [ 1] 2723 	push	#0x3f
      00C0EE 89               [ 2] 2724 	pushw	x
      00C0EF 90 89            [ 2] 2725 	pushw	y
      00C0F1 CD D9 E0         [ 4] 2726 	call	___fsdiv
      00C0F4 5B 08            [ 2] 2727 	addw	sp, #8
      00C0F6 89               [ 2] 2728 	pushw	x
      00C0F7 90 89            [ 2] 2729 	pushw	y
      00C0F9 CD D7 DC         [ 4] 2730 	call	___fs2uint
      00C0FC 5B 04            [ 2] 2731 	addw	sp, #4
      00C0FE CF 00 30         [ 2] 2732 	ldw	_configuration_variables+27, x
                           000CC0  2733 	C$ebike_app.c$1641$1_0$547 ==.
                                   2734 ;	ebike_app.c: 1641: configuration_variables.ui8_motor_temperature = (uint8_t) (configuration_variables.ui16_motor_temperature_x2 >> 1);
      00C101 CE 00 30         [ 2] 2735 	ldw	x, _configuration_variables+27
      00C104 54               [ 2] 2736 	srlw	x
      00C105 9F               [ 1] 2737 	ld	a, xl
      00C106 C7 00 32         [ 1] 2738 	ld	_configuration_variables+29, a
                           000CC8  2739 	C$ebike_app.c$1642$1_0$547 ==.
                                   2740 ;	ebike_app.c: 1642: }
                           000CC8  2741 	C$ebike_app.c$1642$1_0$547 ==.
                           000CC8  2742 	XFebike_app$calc_motor_temperature$0$0 ==.
      00C109 81               [ 4] 2743 	ret
                           000CC9  2744 	Febike_app$calc_filtered_battery_voltage$0$0 ==.
                           000CC9  2745 	C$ebike_app.c$1647$1_0$549 ==.
                                   2746 ;	ebike_app.c: 1647: static uint16_t calc_filtered_battery_voltage(void)
                                   2747 ;	-----------------------------------------
                                   2748 ;	 function calc_filtered_battery_voltage
                                   2749 ;	-----------------------------------------
      00C10A                       2750 _calc_filtered_battery_voltage:
                           000CC9  2751 	C$ebike_app.c$1649$1_0$549 ==.
                                   2752 ;	ebike_app.c: 1649: uint16_t ui16_batt_voltage_filtered = (uint16_t) motor_get_adc_battery_voltage_filtered_10b() * ADC10BITS_BATTERY_VOLTAGE_PER_ADC_STEP_X512;
      00C10A CD B1 ED         [ 4] 2753 	call	_motor_get_adc_battery_voltage_filtered_10b
      00C10D 89               [ 2] 2754 	pushw	x
      00C10E 4B 2C            [ 1] 2755 	push	#0x2c
      00C110 4B 00            [ 1] 2756 	push	#0x00
      00C112 CD D4 A9         [ 4] 2757 	call	__mulint
      00C115 5B 04            [ 2] 2758 	addw	sp, #4
      00C117 9E               [ 1] 2759 	ld	a, xh
                           000CD7  2760 	C$ebike_app.c$1650$1_0$549 ==.
                                   2761 ;	ebike_app.c: 1650: return (ui16_batt_voltage_filtered >> 9);
      00C118 5F               [ 1] 2762 	clrw	x
      00C119 97               [ 1] 2763 	ld	xl, a
      00C11A 54               [ 2] 2764 	srlw	x
                           000CDA  2765 	C$ebike_app.c$1651$1_0$549 ==.
                                   2766 ;	ebike_app.c: 1651: }
                           000CDA  2767 	C$ebike_app.c$1651$1_0$549 ==.
                           000CDA  2768 	XFebike_app$calc_filtered_battery_voltage$0$0 ==.
      00C11B 81               [ 4] 2769 	ret
                           000CDB  2770 	Febike_app$apply_street_mode$0$0 ==.
                           000CDB  2771 	C$ebike_app.c$1656$1_0$551 ==.
                                   2772 ;	ebike_app.c: 1656: static void apply_street_mode(uint16_t ui16_battery_voltage, uint8_t *ui8_max_speed, uint8_t *ui8_target_current)
                                   2773 ;	-----------------------------------------
                                   2774 ;	 function apply_street_mode
                                   2775 ;	-----------------------------------------
      00C11C                       2776 _apply_street_mode:
      00C11C 52 08            [ 2] 2777 	sub	sp, #8
                           000CDD  2778 	C$ebike_app.c$1658$1_0$551 ==.
                                   2779 ;	ebike_app.c: 1658: if(!configuration_variables.ui8_offroad_mode)
      00C11E C6 00 1E         [ 1] 2780 	ld	a, _configuration_variables+9
      00C121 26 51            [ 1] 2781 	jrne	00106$
                           000CE2  2782 	C$ebike_app.c$1661$2_0$552 ==.
                                   2783 ;	ebike_app.c: 1661: *ui8_max_speed = configuration_variables.ui8_street_speed_limit;
      00C123 1E 0D            [ 2] 2784 	ldw	x, (0x0d, sp)
      00C125 C6 00 35         [ 1] 2785 	ld	a, _configuration_variables+32
      00C128 F7               [ 1] 2786 	ld	(x), a
                           000CE8  2787 	C$ebike_app.c$1663$2_0$552 ==.
                                   2788 ;	ebike_app.c: 1663: if((configuration_variables.ui8_street_power_limit_enabled)&&(configuration_variables.ui8_street_power_limit_div25 > 0))
      00C129 C6 00 36         [ 1] 2789 	ld	a, _configuration_variables+33
      00C12C 27 46            [ 1] 2790 	jreq	00106$
      00C12E C6 00 37         [ 1] 2791 	ld	a, _configuration_variables+34
      00C131 27 41            [ 1] 2792 	jreq	00106$
                           000CF2  2793 	C$ebike_app.c$1665$3_0$553 ==.
                                   2794 ;	ebike_app.c: 1665: uint8_t ui8_street_mode_max_current = (uint8_t) (((((uint32_t) configuration_variables.ui8_street_power_limit_div25) * 160) / ((uint32_t) ui16_battery_voltage)) >> 2);
      00C133 C6 00 37         [ 1] 2795 	ld	a, _configuration_variables+34
      00C136 5F               [ 1] 2796 	clrw	x
      00C137 97               [ 1] 2797 	ld	xl, a
      00C138 90 5F            [ 1] 2798 	clrw	y
      00C13A 89               [ 2] 2799 	pushw	x
      00C13B 90 89            [ 2] 2800 	pushw	y
      00C13D 4B A0            [ 1] 2801 	push	#0xa0
      00C13F 5F               [ 1] 2802 	clrw	x
      00C140 89               [ 2] 2803 	pushw	x
      00C141 4B 00            [ 1] 2804 	push	#0x00
      00C143 CD DA 9D         [ 4] 2805 	call	__mullong
      00C146 5B 08            [ 2] 2806 	addw	sp, #8
      00C148 1F 03            [ 2] 2807 	ldw	(0x03, sp), x
      00C14A 1E 0B            [ 2] 2808 	ldw	x, (0x0b, sp)
      00C14C 1F 07            [ 2] 2809 	ldw	(0x07, sp), x
      00C14E 0F 06            [ 1] 2810 	clr	(0x06, sp)
      00C150 0F 05            [ 1] 2811 	clr	(0x05, sp)
      00C152 1E 07            [ 2] 2812 	ldw	x, (0x07, sp)
      00C154 89               [ 2] 2813 	pushw	x
      00C155 1E 07            [ 2] 2814 	ldw	x, (0x07, sp)
      00C157 89               [ 2] 2815 	pushw	x
      00C158 1E 07            [ 2] 2816 	ldw	x, (0x07, sp)
      00C15A 89               [ 2] 2817 	pushw	x
      00C15B 90 89            [ 2] 2818 	pushw	y
      00C15D CD D7 76         [ 4] 2819 	call	__divulong
      00C160 5B 08            [ 2] 2820 	addw	sp, #8
      00C162 54               [ 2] 2821 	srlw	x
      00C163 54               [ 2] 2822 	srlw	x
      00C164 51               [ 1] 2823 	exgw	x, y
                           000D24  2824 	C$ebike_app.c$1666$3_0$553 ==.
                                   2825 ;	ebike_app.c: 1666: *ui8_target_current = ui8_min(ui8_street_mode_max_current, *ui8_target_current);
      00C165 1E 0F            [ 2] 2826 	ldw	x, (0x0f, sp)
      00C167 F6               [ 1] 2827 	ld	a, (x)
      00C168 89               [ 2] 2828 	pushw	x
      00C169 88               [ 1] 2829 	push	a
      00C16A 90 9F            [ 1] 2830 	ld	a, yl
      00C16C 88               [ 1] 2831 	push	a
      00C16D CD C8 12         [ 4] 2832 	call	_ui8_min
      00C170 5B 02            [ 2] 2833 	addw	sp, #2
      00C172 85               [ 2] 2834 	popw	x
      00C173 F7               [ 1] 2835 	ld	(x), a
      00C174                       2836 00106$:
                           000D33  2837 	C$ebike_app.c$1669$1_0$551 ==.
                                   2838 ;	ebike_app.c: 1669: }
      00C174 5B 08            [ 2] 2839 	addw	sp, #8
                           000D35  2840 	C$ebike_app.c$1669$1_0$551 ==.
                           000D35  2841 	XFebike_app$apply_street_mode$0$0 ==.
      00C176 81               [ 4] 2842 	ret
                           000D36  2843 	Febike_app$apply_speed_limit$0$0 ==.
                           000D36  2844 	C$ebike_app.c$1674$1_0$555 ==.
                                   2845 ;	ebike_app.c: 1674: static void apply_speed_limit(uint16_t ui16_speed_x10, uint8_t ui8_max_speed, uint8_t *ui8_target_current)
                                   2846 ;	-----------------------------------------
                                   2847 ;	 function apply_speed_limit
                                   2848 ;	-----------------------------------------
      00C177                       2849 _apply_speed_limit:
      00C177 52 10            [ 2] 2850 	sub	sp, #16
                           000D38  2851 	C$ebike_app.c$1676$1_0$555 ==.
                                   2852 ;	ebike_app.c: 1676: *ui8_target_current = (uint8_t) (map((uint32_t) ui16_speed_x10,
      00C179 16 16            [ 2] 2853 	ldw	y, (0x16, sp)
                           000D3A  2854 	C$ebike_app.c$1679$1_0$555 ==.
                                   2855 ;	ebike_app.c: 1679: (uint32_t) *ui8_target_current,
      00C17B 90 F6            [ 1] 2856 	ld	a, (y)
      00C17D 6B 04            [ 1] 2857 	ld	(0x04, sp), a
      00C17F 0F 03            [ 1] 2858 	clr	(0x03, sp)
      00C181 0F 02            [ 1] 2859 	clr	(0x02, sp)
      00C183 0F 01            [ 1] 2860 	clr	(0x01, sp)
                           000D44  2861 	C$ebike_app.c$1678$1_0$555 ==.
                                   2862 ;	ebike_app.c: 1678: (uint32_t) ((ui8_max_speed * 10) + 20),
      00C185 5F               [ 1] 2863 	clrw	x
      00C186 7B 15            [ 1] 2864 	ld	a, (0x15, sp)
      00C188 97               [ 1] 2865 	ld	xl, a
      00C189 89               [ 2] 2866 	pushw	x
      00C18A 58               [ 2] 2867 	sllw	x
      00C18B 58               [ 2] 2868 	sllw	x
      00C18C 72 FB 01         [ 2] 2869 	addw	x, (1, sp)
      00C18F 58               [ 2] 2870 	sllw	x
      00C190 5B 02            [ 2] 2871 	addw	sp, #2
      00C192 1F 0F            [ 2] 2872 	ldw	(0x0f, sp), x
      00C194 1C 00 14         [ 2] 2873 	addw	x, #0x0014
      00C197 1F 07            [ 2] 2874 	ldw	(0x07, sp), x
      00C199 7B 07            [ 1] 2875 	ld	a, (0x07, sp)
      00C19B 49               [ 1] 2876 	rlc	a
      00C19C 4F               [ 1] 2877 	clr	a
      00C19D A2 00            [ 1] 2878 	sbc	a, #0x00
      00C19F 6B 06            [ 1] 2879 	ld	(0x06, sp), a
      00C1A1 6B 05            [ 1] 2880 	ld	(0x05, sp), a
                           000D62  2881 	C$ebike_app.c$1677$1_0$555 ==.
                                   2882 ;	ebike_app.c: 1677: (uint32_t) ((ui8_max_speed * 10) - 20),
      00C1A3 1E 0F            [ 2] 2883 	ldw	x, (0x0f, sp)
      00C1A5 1D 00 14         [ 2] 2884 	subw	x, #0x0014
      00C1A8 1F 0B            [ 2] 2885 	ldw	(0x0b, sp), x
      00C1AA 7B 0B            [ 1] 2886 	ld	a, (0x0b, sp)
      00C1AC 49               [ 1] 2887 	rlc	a
      00C1AD 4F               [ 1] 2888 	clr	a
      00C1AE A2 00            [ 1] 2889 	sbc	a, #0x00
      00C1B0 6B 0A            [ 1] 2890 	ld	(0x0a, sp), a
      00C1B2 6B 09            [ 1] 2891 	ld	(0x09, sp), a
                           000D73  2892 	C$ebike_app.c$1676$1_0$555 ==.
                                   2893 ;	ebike_app.c: 1676: *ui8_target_current = (uint8_t) (map((uint32_t) ui16_speed_x10,
      00C1B4 1E 13            [ 2] 2894 	ldw	x, (0x13, sp)
      00C1B6 1F 0F            [ 2] 2895 	ldw	(0x0f, sp), x
      00C1B8 0F 0E            [ 1] 2896 	clr	(0x0e, sp)
      00C1BA 0F 0D            [ 1] 2897 	clr	(0x0d, sp)
      00C1BC 90 89            [ 2] 2898 	pushw	y
      00C1BE 5F               [ 1] 2899 	clrw	x
      00C1BF 89               [ 2] 2900 	pushw	x
      00C1C0 5F               [ 1] 2901 	clrw	x
      00C1C1 89               [ 2] 2902 	pushw	x
      00C1C2 1E 09            [ 2] 2903 	ldw	x, (0x09, sp)
      00C1C4 89               [ 2] 2904 	pushw	x
      00C1C5 1E 09            [ 2] 2905 	ldw	x, (0x09, sp)
      00C1C7 89               [ 2] 2906 	pushw	x
      00C1C8 1E 11            [ 2] 2907 	ldw	x, (0x11, sp)
      00C1CA 89               [ 2] 2908 	pushw	x
      00C1CB 1E 11            [ 2] 2909 	ldw	x, (0x11, sp)
      00C1CD 89               [ 2] 2910 	pushw	x
      00C1CE 1E 19            [ 2] 2911 	ldw	x, (0x19, sp)
      00C1D0 89               [ 2] 2912 	pushw	x
      00C1D1 1E 19            [ 2] 2913 	ldw	x, (0x19, sp)
      00C1D3 89               [ 2] 2914 	pushw	x
      00C1D4 1E 21            [ 2] 2915 	ldw	x, (0x21, sp)
      00C1D6 89               [ 2] 2916 	pushw	x
      00C1D7 1E 21            [ 2] 2917 	ldw	x, (0x21, sp)
      00C1D9 89               [ 2] 2918 	pushw	x
      00C1DA CD C6 7B         [ 4] 2919 	call	_map
      00C1DD 5B 14            [ 2] 2920 	addw	sp, #20
      00C1DF 1F 11            [ 2] 2921 	ldw	(0x11, sp), x
      00C1E1 17 0F            [ 2] 2922 	ldw	(0x0f, sp), y
      00C1E3 90 85            [ 2] 2923 	popw	y
      00C1E5 7B 10            [ 1] 2924 	ld	a, (0x10, sp)
      00C1E7 90 F7            [ 1] 2925 	ld	(y), a
                           000DA8  2926 	C$ebike_app.c$1681$1_0$555 ==.
                                   2927 ;	ebike_app.c: 1681: }
      00C1E9 5B 10            [ 2] 2928 	addw	sp, #16
                           000DAA  2929 	C$ebike_app.c$1681$1_0$555 ==.
                           000DAA  2930 	XFebike_app$apply_speed_limit$0$0 ==.
      00C1EB 81               [ 4] 2931 	ret
                           000DAB  2932 	Febike_app$apply_walk_assist$0$0 ==.
                           000DAB  2933 	C$ebike_app.c$1711$1_0$557 ==.
                                   2934 ;	ebike_app.c: 1711: static void apply_walk_assist(uint8_t ui8_walk_assist_value, uint8_t *ui8_target_current)
                                   2935 ;	-----------------------------------------
                                   2936 ;	 function apply_walk_assist
                                   2937 ;	-----------------------------------------
      00C1EC                       2938 _apply_walk_assist:
      00C1EC 52 04            [ 2] 2939 	sub	sp, #4
                           000DAD  2940 	C$ebike_app.c$1714$1_0$557 ==.
                                   2941 ;	ebike_app.c: 1714: if(ui8_walk_assist_value)
      00C1EE 0D 07            [ 1] 2942 	tnz	(0x07, sp)
      00C1F0 27 31            [ 1] 2943 	jreq	00103$
                           000DB1  2944 	C$ebike_app.c$1716$2_0$558 ==.
                                   2945 ;	ebike_app.c: 1716: uint8_t ui8_temp = (uint8_t) (map((uint32_t) ui8_walk_assist_value,
      00C1F2 5F               [ 1] 2946 	clrw	x
      00C1F3 C6 01 F4         [ 1] 2947 	ld	a, _ui8_adc_motor_current_max+0
      00C1F6 97               [ 1] 2948 	ld	xl, a
      00C1F7 90 5F            [ 1] 2949 	clrw	y
      00C1F9 7B 07            [ 1] 2950 	ld	a, (0x07, sp)
      00C1FB 6B 04            [ 1] 2951 	ld	(0x04, sp), a
      00C1FD 0F 03            [ 1] 2952 	clr	(0x03, sp)
      00C1FF 0F 02            [ 1] 2953 	clr	(0x02, sp)
      00C201 0F 01            [ 1] 2954 	clr	(0x01, sp)
      00C203 89               [ 2] 2955 	pushw	x
      00C204 90 89            [ 2] 2956 	pushw	y
      00C206 5F               [ 1] 2957 	clrw	x
      00C207 89               [ 2] 2958 	pushw	x
      00C208 5F               [ 1] 2959 	clrw	x
      00C209 89               [ 2] 2960 	pushw	x
      00C20A 4B FF            [ 1] 2961 	push	#0xff
      00C20C 5F               [ 1] 2962 	clrw	x
      00C20D 89               [ 2] 2963 	pushw	x
      00C20E 4B 00            [ 1] 2964 	push	#0x00
      00C210 5F               [ 1] 2965 	clrw	x
      00C211 89               [ 2] 2966 	pushw	x
      00C212 5F               [ 1] 2967 	clrw	x
      00C213 89               [ 2] 2968 	pushw	x
      00C214 1E 13            [ 2] 2969 	ldw	x, (0x13, sp)
      00C216 89               [ 2] 2970 	pushw	x
      00C217 1E 13            [ 2] 2971 	ldw	x, (0x13, sp)
      00C219 89               [ 2] 2972 	pushw	x
      00C21A CD C6 7B         [ 4] 2973 	call	_map
      00C21D 5B 14            [ 2] 2974 	addw	sp, #20
      00C21F 9F               [ 1] 2975 	ld	a, xl
                           000DDF  2976 	C$ebike_app.c$1723$2_0$558 ==.
                                   2977 ;	ebike_app.c: 1723: *ui8_target_current = ui8_temp;
      00C220 1E 08            [ 2] 2978 	ldw	x, (0x08, sp)
      00C222 F7               [ 1] 2979 	ld	(x), a
      00C223                       2980 00103$:
                           000DE2  2981 	C$ebike_app.c$1725$1_0$557 ==.
                                   2982 ;	ebike_app.c: 1725: }
      00C223 5B 04            [ 2] 2983 	addw	sp, #4
                           000DE4  2984 	C$ebike_app.c$1725$1_0$557 ==.
                           000DE4  2985 	XFebike_app$apply_walk_assist$0$0 ==.
      00C225 81               [ 4] 2986 	ret
                           000DE5  2987 	Febike_app$apply_temperature_limiting$0$0 ==.
                           000DE5  2988 	C$ebike_app.c$1730$1_0$560 ==.
                                   2989 ;	ebike_app.c: 1730: static void apply_temperature_limiting(uint8_t *ui8_target_current)
                                   2990 ;	-----------------------------------------
                                   2991 ;	 function apply_temperature_limiting
                                   2992 ;	-----------------------------------------
      00C226                       2993 _apply_temperature_limiting:
      00C226 52 10            [ 2] 2994 	sub	sp, #16
                           000DE7  2995 	C$ebike_app.c$1733$1_0$560 ==.
                                   2996 ;	ebike_app.c: 1733: if(configuration_variables.ui8_motor_temperature_min_value_to_limit >= configuration_variables.ui8_motor_temperature_max_value_to_limit)
      00C228 C6 00 2D         [ 1] 2997 	ld	a, _configuration_variables+24
      00C22B 6B 10            [ 1] 2998 	ld	(0x10, sp), a
      00C22D C6 00 2E         [ 1] 2999 	ld	a, _configuration_variables+25
      00C230 11 10            [ 1] 3000 	cp	a, (0x10, sp)
      00C232 22 0A            [ 1] 3001 	jrugt	00102$
                           000DF3  3002 	C$ebike_app.c$1735$2_0$561 ==.
                                   3003 ;	ebike_app.c: 1735: *ui8_target_current = 0;
      00C234 1E 13            [ 2] 3004 	ldw	x, (0x13, sp)
      00C236 7F               [ 1] 3005 	clr	(x)
                           000DF6  3006 	C$ebike_app.c$1736$2_0$561 ==.
                                   3007 ;	ebike_app.c: 1736: configuration_variables.ui8_temperature_current_limiting_value = 0;
      00C237 35 00 00 2F      [ 1] 3008 	mov	_configuration_variables+26, #0x00
      00C23B CC C2 DB         [ 2] 3009 	jp	00104$
      00C23E                       3010 00102$:
                           000DFD  3011 	C$ebike_app.c$1741$2_0$562 ==.
                                   3012 ;	ebike_app.c: 1741: *ui8_target_current = 
      00C23E 16 13            [ 2] 3013 	ldw	y, (0x13, sp)
                           000DFF  3014 	C$ebike_app.c$1745$2_0$562 ==.
                                   3015 ;	ebike_app.c: 1745: (uint32_t) *ui8_target_current,
      00C240 90 F6            [ 1] 3016 	ld	a, (y)
      00C242 6B 04            [ 1] 3017 	ld	(0x04, sp), a
      00C244 0F 03            [ 1] 3018 	clr	(0x03, sp)
      00C246 0F 02            [ 1] 3019 	clr	(0x02, sp)
      00C248 0F 01            [ 1] 3020 	clr	(0x01, sp)
                           000E09  3021 	C$ebike_app.c$1744$2_0$562 ==.
                                   3022 ;	ebike_app.c: 1744: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_max_value_to_limit) << 1),
      00C24A C6 00 2E         [ 1] 3023 	ld	a, _configuration_variables+25
      00C24D 5F               [ 1] 3024 	clrw	x
      00C24E 97               [ 1] 3025 	ld	xl, a
      00C24F 58               [ 2] 3026 	sllw	x
      00C250 1F 07            [ 2] 3027 	ldw	(0x07, sp), x
      00C252 0F 06            [ 1] 3028 	clr	(0x06, sp)
      00C254 0F 05            [ 1] 3029 	clr	(0x05, sp)
                           000E15  3030 	C$ebike_app.c$1743$2_0$562 ==.
                                   3031 ;	ebike_app.c: 1743: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_min_value_to_limit) << 1),
      00C256 C6 00 2D         [ 1] 3032 	ld	a, _configuration_variables+24
      00C259 5F               [ 1] 3033 	clrw	x
      00C25A 97               [ 1] 3034 	ld	xl, a
      00C25B 58               [ 2] 3035 	sllw	x
      00C25C 1F 0B            [ 2] 3036 	ldw	(0x0b, sp), x
      00C25E 0F 0A            [ 1] 3037 	clr	(0x0a, sp)
      00C260 0F 09            [ 1] 3038 	clr	(0x09, sp)
                           000E21  3039 	C$ebike_app.c$1742$2_0$562 ==.
                                   3040 ;	ebike_app.c: 1742: (uint8_t) (map((uint32_t) configuration_variables.ui16_motor_temperature_x2,
      00C262 CE 00 30         [ 2] 3041 	ldw	x, _configuration_variables+27
      00C265 1F 0F            [ 2] 3042 	ldw	(0x0f, sp), x
      00C267 0F 0E            [ 1] 3043 	clr	(0x0e, sp)
      00C269 0F 0D            [ 1] 3044 	clr	(0x0d, sp)
      00C26B 90 89            [ 2] 3045 	pushw	y
      00C26D 5F               [ 1] 3046 	clrw	x
      00C26E 89               [ 2] 3047 	pushw	x
      00C26F 5F               [ 1] 3048 	clrw	x
      00C270 89               [ 2] 3049 	pushw	x
      00C271 1E 09            [ 2] 3050 	ldw	x, (0x09, sp)
      00C273 89               [ 2] 3051 	pushw	x
      00C274 1E 09            [ 2] 3052 	ldw	x, (0x09, sp)
      00C276 89               [ 2] 3053 	pushw	x
      00C277 1E 11            [ 2] 3054 	ldw	x, (0x11, sp)
      00C279 89               [ 2] 3055 	pushw	x
      00C27A 1E 11            [ 2] 3056 	ldw	x, (0x11, sp)
      00C27C 89               [ 2] 3057 	pushw	x
      00C27D 1E 19            [ 2] 3058 	ldw	x, (0x19, sp)
      00C27F 89               [ 2] 3059 	pushw	x
      00C280 1E 19            [ 2] 3060 	ldw	x, (0x19, sp)
      00C282 89               [ 2] 3061 	pushw	x
      00C283 1E 21            [ 2] 3062 	ldw	x, (0x21, sp)
      00C285 89               [ 2] 3063 	pushw	x
      00C286 1E 21            [ 2] 3064 	ldw	x, (0x21, sp)
      00C288 89               [ 2] 3065 	pushw	x
      00C289 CD C6 7B         [ 4] 3066 	call	_map
      00C28C 5B 14            [ 2] 3067 	addw	sp, #20
      00C28E 1F 11            [ 2] 3068 	ldw	(0x11, sp), x
      00C290 17 0F            [ 2] 3069 	ldw	(0x0f, sp), y
      00C292 90 85            [ 2] 3070 	popw	y
      00C294 7B 10            [ 1] 3071 	ld	a, (0x10, sp)
      00C296 90 F7            [ 1] 3072 	ld	(y), a
                           000E57  3073 	C$ebike_app.c$1749$2_0$562 ==.
                                   3074 ;	ebike_app.c: 1749: configuration_variables.ui8_temperature_current_limiting_value = 
                           000E57  3075 	C$ebike_app.c$1752$2_0$562 ==.
                                   3076 ;	ebike_app.c: 1752: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_max_value_to_limit) << 1),
      00C298 C6 00 2E         [ 1] 3077 	ld	a, _configuration_variables+25
      00C29B 5F               [ 1] 3078 	clrw	x
      00C29C 97               [ 1] 3079 	ld	xl, a
      00C29D 58               [ 2] 3080 	sllw	x
      00C29E 1F 07            [ 2] 3081 	ldw	(0x07, sp), x
      00C2A0 90 5F            [ 1] 3082 	clrw	y
                           000E61  3083 	C$ebike_app.c$1751$2_0$562 ==.
                                   3084 ;	ebike_app.c: 1751: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_min_value_to_limit) << 1),
      00C2A2 C6 00 2D         [ 1] 3085 	ld	a, _configuration_variables+24
      00C2A5 5F               [ 1] 3086 	clrw	x
      00C2A6 97               [ 1] 3087 	ld	xl, a
      00C2A7 58               [ 2] 3088 	sllw	x
      00C2A8 1F 0B            [ 2] 3089 	ldw	(0x0b, sp), x
      00C2AA 0F 0A            [ 1] 3090 	clr	(0x0a, sp)
      00C2AC 0F 09            [ 1] 3091 	clr	(0x09, sp)
                           000E6D  3092 	C$ebike_app.c$1750$2_0$562 ==.
                                   3093 ;	ebike_app.c: 1750: (uint8_t) (map((uint32_t) configuration_variables.ui16_motor_temperature_x2,
      00C2AE CE 00 30         [ 2] 3094 	ldw	x, _configuration_variables+27
      00C2B1 1F 0F            [ 2] 3095 	ldw	(0x0f, sp), x
      00C2B3 0F 0E            [ 1] 3096 	clr	(0x0e, sp)
      00C2B5 0F 0D            [ 1] 3097 	clr	(0x0d, sp)
      00C2B7 5F               [ 1] 3098 	clrw	x
      00C2B8 89               [ 2] 3099 	pushw	x
      00C2B9 5F               [ 1] 3100 	clrw	x
      00C2BA 89               [ 2] 3101 	pushw	x
      00C2BB 4B FF            [ 1] 3102 	push	#0xff
      00C2BD 5F               [ 1] 3103 	clrw	x
      00C2BE 89               [ 2] 3104 	pushw	x
      00C2BF 4B 00            [ 1] 3105 	push	#0x00
      00C2C1 1E 0F            [ 2] 3106 	ldw	x, (0x0f, sp)
      00C2C3 89               [ 2] 3107 	pushw	x
      00C2C4 90 89            [ 2] 3108 	pushw	y
      00C2C6 1E 17            [ 2] 3109 	ldw	x, (0x17, sp)
      00C2C8 89               [ 2] 3110 	pushw	x
      00C2C9 1E 17            [ 2] 3111 	ldw	x, (0x17, sp)
      00C2CB 89               [ 2] 3112 	pushw	x
      00C2CC 1E 1F            [ 2] 3113 	ldw	x, (0x1f, sp)
      00C2CE 89               [ 2] 3114 	pushw	x
      00C2CF 1E 1F            [ 2] 3115 	ldw	x, (0x1f, sp)
      00C2D1 89               [ 2] 3116 	pushw	x
      00C2D2 CD C6 7B         [ 4] 3117 	call	_map
      00C2D5 5B 14            [ 2] 3118 	addw	sp, #20
      00C2D7 9F               [ 1] 3119 	ld	a, xl
      00C2D8 C7 00 2F         [ 1] 3120 	ld	_configuration_variables+26, a
      00C2DB                       3121 00104$:
                           000E9A  3122 	C$ebike_app.c$1756$1_0$560 ==.
                                   3123 ;	ebike_app.c: 1756: }
      00C2DB 5B 10            [ 2] 3124 	addw	sp, #16
                           000E9C  3125 	C$ebike_app.c$1756$1_0$560 ==.
                           000E9C  3126 	XFebike_app$apply_temperature_limiting$0$0 ==.
      00C2DD 81               [ 4] 3127 	ret
                           000E9D  3128 	Febike_app$boost_run_statemachine$0$0 ==.
                           000E9D  3129 	C$ebike_app.c$1761$1_0$564 ==.
                                   3130 ;	ebike_app.c: 1761: static void boost_run_statemachine (void)
                                   3131 ;	-----------------------------------------
                                   3132 ;	 function boost_run_statemachine
                                   3133 ;	-----------------------------------------
      00C2DE                       3134 _boost_run_statemachine:
      00C2DE 52 02            [ 2] 3135 	sub	sp, #2
                           000E9F  3136 	C$ebike_app.c$1763$1_0$564 ==.
                                   3137 ;	ebike_app.c: 1763: if(configuration_variables.ui8_startup_motor_power_boost_time > 0)
      00C2E0 C6 00 2A         [ 1] 3138 	ld	a, _configuration_variables+21
      00C2E3 6B 02            [ 1] 3139 	ld	(0x02, sp), a
      00C2E5 26 03            [ 1] 3140 	jrne	00215$
      00C2E7 CC C3 F9         [ 2] 3141 	jp	00137$
      00C2EA                       3142 00215$:
                           000EA9  3143 	C$ebike_app.c$1765$2_0$565 ==.
                                   3144 ;	ebike_app.c: 1765: switch(ui8_startup_boost_state_machine)
      00C2EA C6 02 0A         [ 1] 3145 	ld	a, _ui8_startup_boost_state_machine+0
      00C2ED A1 00            [ 1] 3146 	cp	a, #0x00
      00C2EF 27 15            [ 1] 3147 	jreq	00101$
      00C2F1 A1 02            [ 1] 3148 	cp	a, #0x02
      00C2F3 27 35            [ 1] 3149 	jreq	00105$
      00C2F5 A1 04            [ 1] 3150 	cp	a, #0x04
      00C2F7 26 03            [ 1] 3151 	jrne	00223$
      00C2F9 CC C3 85         [ 2] 3152 	jp	00114$
      00C2FC                       3153 00223$:
      00C2FC A1 05            [ 1] 3154 	cp	a, #0x05
      00C2FE 26 03            [ 1] 3155 	jrne	00226$
      00C300 CC C3 BF         [ 2] 3156 	jp	00122$
      00C303                       3157 00226$:
      00C303 CC C3 F9         [ 2] 3158 	jp	00137$
                           000EC5  3159 	C$ebike_app.c$1768$3_0$566 ==.
                                   3160 ;	ebike_app.c: 1768: case BOOST_STATE_BOOST_DISABLED:
      00C306                       3161 00101$:
                           000EC5  3162 	C$ebike_app.c$1769$3_0$566 ==.
                                   3163 ;	ebike_app.c: 1769: if((ui8_torque_sensor > TORQUE_SENSOR_THRESHOLD_HI)&&(!ui8_brake_is_set))
      00C306 C6 01 E7         [ 1] 3164 	ld	a, _ui8_torque_sensor+0
      00C309 A1 0C            [ 1] 3165 	cp	a, #0x0c
      00C30B 22 03            [ 1] 3166 	jrugt	00228$
      00C30D CC C3 F9         [ 2] 3167 	jp	00137$
      00C310                       3168 00228$:
      00C310 72 5D 02 2F      [ 1] 3169 	tnz	_ui8_brake_is_set+0
      00C314 27 03            [ 1] 3170 	jreq	00229$
      00C316 CC C3 F9         [ 2] 3171 	jp	00137$
      00C319                       3172 00229$:
                           000ED8  3173 	C$ebike_app.c$1771$4_0$567 ==.
                                   3174 ;	ebike_app.c: 1771: ui8_startup_boost_enable = 1;
      00C319 35 01 02 08      [ 1] 3175 	mov	_ui8_startup_boost_enable+0, #0x01
                           000EDC  3176 	C$ebike_app.c$1772$4_0$567 ==.
                                   3177 ;	ebike_app.c: 1772: ui8_startup_boost_timer = configuration_variables.ui8_startup_motor_power_boost_time;
      00C31D C6 00 2A         [ 1] 3178 	ld	a, _configuration_variables+21
      00C320 C7 02 0B         [ 1] 3179 	ld	_ui8_startup_boost_timer+0, a
                           000EE2  3180 	C$ebike_app.c$1773$4_0$567 ==.
                                   3181 ;	ebike_app.c: 1773: ui8_startup_boost_state_machine = BOOST_STATE_BOOST;
      00C323 35 02 02 0A      [ 1] 3182 	mov	_ui8_startup_boost_state_machine+0, #0x02
                           000EE6  3183 	C$ebike_app.c$1775$3_0$566 ==.
                                   3184 ;	ebike_app.c: 1775: break;
      00C327 CC C3 F9         [ 2] 3185 	jp	00137$
                           000EE9  3186 	C$ebike_app.c$1777$3_0$566 ==.
                                   3187 ;	ebike_app.c: 1777: case BOOST_STATE_BOOST:
      00C32A                       3188 00105$:
                           000EE9  3189 	C$ebike_app.c$1779$3_0$566 ==.
                                   3190 ;	ebike_app.c: 1779: if(ui8_brake_is_set)
      00C32A 72 5D 02 2F      [ 1] 3191 	tnz	_ui8_brake_is_set+0
      00C32E 27 08            [ 1] 3192 	jreq	00107$
                           000EEF  3193 	C$ebike_app.c$1781$4_0$568 ==.
                                   3194 ;	ebike_app.c: 1781: ui8_startup_boost_enable = 0;
      00C330 72 5F 02 08      [ 1] 3195 	clr	_ui8_startup_boost_enable+0
                           000EF3  3196 	C$ebike_app.c$1782$4_0$568 ==.
                                   3197 ;	ebike_app.c: 1782: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
      00C334 72 5F 02 0A      [ 1] 3198 	clr	_ui8_startup_boost_state_machine+0
      00C338                       3199 00107$:
                           000EF7  3200 	C$ebike_app.c$1786$3_0$566 ==.
                                   3201 ;	ebike_app.c: 1786: if(ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW)
      00C338 C6 01 E7         [ 1] 3202 	ld	a, _ui8_torque_sensor+0
      00C33B A1 0C            [ 1] 3203 	cp	a, #0x0c
      00C33D 24 08            [ 1] 3204 	jrnc	00109$
                           000EFE  3205 	C$ebike_app.c$1788$4_0$569 ==.
                                   3206 ;	ebike_app.c: 1788: ui8_startup_boost_enable = 0;
      00C33F 72 5F 02 08      [ 1] 3207 	clr	_ui8_startup_boost_enable+0
                           000F02  3208 	C$ebike_app.c$1789$4_0$569 ==.
                                   3209 ;	ebike_app.c: 1789: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_WAIT_TO_RESTART;
      00C343 35 05 02 0A      [ 1] 3210 	mov	_ui8_startup_boost_state_machine+0, #0x05
      00C347                       3211 00109$:
                           000F06  3212 	C$ebike_app.c$1793$3_0$566 ==.
                                   3213 ;	ebike_app.c: 1793: if(ui8_startup_boost_timer > 0){ui8_startup_boost_timer--;}
      00C347 72 5D 02 0B      [ 1] 3214 	tnz	_ui8_startup_boost_timer+0
      00C34B 27 04            [ 1] 3215 	jreq	00111$
      00C34D 72 5A 02 0B      [ 1] 3216 	dec	_ui8_startup_boost_timer+0
      00C351                       3217 00111$:
                           000F10  3218 	C$ebike_app.c$1796$3_0$566 ==.
                                   3219 ;	ebike_app.c: 1796: if(ui8_startup_boost_timer == 0)
      00C351 72 5D 02 0B      [ 1] 3220 	tnz	_ui8_startup_boost_timer+0
      00C355 27 03            [ 1] 3221 	jreq	00233$
      00C357 CC C3 F9         [ 2] 3222 	jp	00137$
      00C35A                       3223 00233$:
                           000F19  3224 	C$ebike_app.c$1798$4_0$571 ==.
                                   3225 ;	ebike_app.c: 1798: ui8_startup_boost_state_machine = BOOST_STATE_FADE;
      00C35A 35 04 02 0A      [ 1] 3226 	mov	_ui8_startup_boost_state_machine+0, #0x04
                           000F1D  3227 	C$ebike_app.c$1799$4_0$571 ==.
                                   3228 ;	ebike_app.c: 1799: ui8_startup_boost_enable = 0;
      00C35E 72 5F 02 08      [ 1] 3229 	clr	_ui8_startup_boost_enable+0
                           000F21  3230 	C$ebike_app.c$1802$4_0$571 ==.
                                   3231 ;	ebike_app.c: 1802: ui8_startup_boost_fade_steps = configuration_variables.ui8_startup_motor_power_boost_fade_time;
      00C362 C6 00 2B         [ 1] 3232 	ld	a, _configuration_variables+22
      00C365 C7 02 0C         [ 1] 3233 	ld	_ui8_startup_boost_fade_steps+0, a
                           000F27  3234 	C$ebike_app.c$1803$4_0$571 ==.
                                   3235 ;	ebike_app.c: 1803: ui16_startup_boost_fade_variable_x256 = ((uint16_t) ui8_adc_motor_target_current << 8);
      00C368 C6 02 2E         [ 1] 3236 	ld	a, _ui8_adc_motor_target_current+0
      00C36B 97               [ 1] 3237 	ld	xl, a
      00C36C 4F               [ 1] 3238 	clr	a
      00C36D 02               [ 1] 3239 	rlwa	x
      00C36E CF 02 0D         [ 2] 3240 	ldw	_ui16_startup_boost_fade_variable_x256+0, x
                           000F30  3241 	C$ebike_app.c$1804$4_0$571 ==.
                                   3242 ;	ebike_app.c: 1804: ui16_startup_boost_fade_variable_step_amount_x256 = (ui16_startup_boost_fade_variable_x256 / ((uint16_t) ui8_startup_boost_fade_steps));
      00C371 5F               [ 1] 3243 	clrw	x
      00C372 C6 02 0C         [ 1] 3244 	ld	a, _ui8_startup_boost_fade_steps+0
      00C375 97               [ 1] 3245 	ld	xl, a
      00C376 51               [ 1] 3246 	exgw	x, y
      00C377 CE 02 0D         [ 2] 3247 	ldw	x, _ui16_startup_boost_fade_variable_x256+0
      00C37A 65               [ 2] 3248 	divw	x, y
      00C37B CF 02 0F         [ 2] 3249 	ldw	_ui16_startup_boost_fade_variable_step_amount_x256+0, x
                           000F3D  3250 	C$ebike_app.c$1805$4_0$571 ==.
                                   3251 ;	ebike_app.c: 1805: ui8_startup_boost_fade_enable = 1;
      00C37E 35 01 02 09      [ 1] 3252 	mov	_ui8_startup_boost_fade_enable+0, #0x01
                           000F41  3253 	C$ebike_app.c$1807$3_0$566 ==.
                                   3254 ;	ebike_app.c: 1807: break;
      00C382 CC C3 F9         [ 2] 3255 	jp	00137$
                           000F44  3256 	C$ebike_app.c$1809$3_0$566 ==.
                                   3257 ;	ebike_app.c: 1809: case BOOST_STATE_FADE:
      00C385                       3258 00114$:
                           000F44  3259 	C$ebike_app.c$1811$3_0$566 ==.
                                   3260 ;	ebike_app.c: 1811: if(ui8_brake_is_set)
      00C385 72 5D 02 2F      [ 1] 3261 	tnz	_ui8_brake_is_set+0
      00C389 27 0C            [ 1] 3262 	jreq	00116$
                           000F4A  3263 	C$ebike_app.c$1813$4_0$572 ==.
                                   3264 ;	ebike_app.c: 1813: ui8_startup_boost_fade_enable = 0;
      00C38B 72 5F 02 09      [ 1] 3265 	clr	_ui8_startup_boost_fade_enable+0
                           000F4E  3266 	C$ebike_app.c$1814$4_0$572 ==.
                                   3267 ;	ebike_app.c: 1814: ui8_startup_boost_fade_steps = 0;
      00C38F 72 5F 02 0C      [ 1] 3268 	clr	_ui8_startup_boost_fade_steps+0
                           000F52  3269 	C$ebike_app.c$1815$4_0$572 ==.
                                   3270 ;	ebike_app.c: 1815: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
      00C393 72 5F 02 0A      [ 1] 3271 	clr	_ui8_startup_boost_state_machine+0
      00C397                       3272 00116$:
                           000F56  3273 	C$ebike_app.c$1818$3_0$566 ==.
                                   3274 ;	ebike_app.c: 1818: if(ui8_startup_boost_fade_steps > 0){ui8_startup_boost_fade_steps--;}
      00C397 72 5D 02 0C      [ 1] 3275 	tnz	_ui8_startup_boost_fade_steps+0
      00C39B 27 04            [ 1] 3276 	jreq	00118$
      00C39D 72 5A 02 0C      [ 1] 3277 	dec	_ui8_startup_boost_fade_steps+0
      00C3A1                       3278 00118$:
                           000F60  3279 	C$ebike_app.c$1821$3_0$566 ==.
                                   3280 ;	ebike_app.c: 1821: if((ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW)||(ui8_startup_boost_fade_steps == 0))
      00C3A1 C6 01 E7         [ 1] 3281 	ld	a, _ui8_torque_sensor+0
      00C3A4 A1 0C            [ 1] 3282 	cp	a, #0x0c
      00C3A6 25 09            [ 1] 3283 	jrc	00119$
      00C3A8 72 5D 02 0C      [ 1] 3284 	tnz	_ui8_startup_boost_fade_steps+0
      00C3AC 27 03            [ 1] 3285 	jreq	00237$
      00C3AE CC C3 F9         [ 2] 3286 	jp	00137$
      00C3B1                       3287 00237$:
      00C3B1                       3288 00119$:
                           000F70  3289 	C$ebike_app.c$1823$4_0$574 ==.
                                   3290 ;	ebike_app.c: 1823: ui8_startup_boost_fade_enable = 0;
      00C3B1 72 5F 02 09      [ 1] 3291 	clr	_ui8_startup_boost_fade_enable+0
                           000F74  3292 	C$ebike_app.c$1824$4_0$574 ==.
                                   3293 ;	ebike_app.c: 1824: ui8_startup_boost_fade_steps = 0;
      00C3B5 72 5F 02 0C      [ 1] 3294 	clr	_ui8_startup_boost_fade_steps+0
                           000F78  3295 	C$ebike_app.c$1825$4_0$574 ==.
                                   3296 ;	ebike_app.c: 1825: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_WAIT_TO_RESTART;
      00C3B9 35 05 02 0A      [ 1] 3297 	mov	_ui8_startup_boost_state_machine+0, #0x05
                           000F7C  3298 	C$ebike_app.c$1827$3_0$566 ==.
                                   3299 ;	ebike_app.c: 1827: break;
      00C3BD 20 3A            [ 2] 3300 	jra	00137$
                           000F7E  3301 	C$ebike_app.c$1830$3_0$566 ==.
                                   3302 ;	ebike_app.c: 1830: case BOOST_STATE_BOOST_WAIT_TO_RESTART:
      00C3BF                       3303 00122$:
                           000F7E  3304 	C$ebike_app.c$1832$3_0$566 ==.
                                   3305 ;	ebike_app.c: 1832: if((configuration_variables.ui8_startup_motor_power_boost_state & 0x01) == 0)
      00C3BF C6 00 28         [ 1] 3306 	ld	a, _configuration_variables+19
      00C3C2 44               [ 1] 3307 	srl	a
      00C3C3 25 10            [ 1] 3308 	jrc	00127$
                           000F84  3309 	C$ebike_app.c$1834$4_0$575 ==.
                                   3310 ;	ebike_app.c: 1834: if((ui16_wheel_speed_x10 == 0)&&(ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW))
      00C3C5 CE 02 17         [ 2] 3311 	ldw	x, _ui16_wheel_speed_x10+0
      00C3C8 26 0B            [ 1] 3312 	jrne	00127$
      00C3CA C6 01 E7         [ 1] 3313 	ld	a, _ui8_torque_sensor+0
      00C3CD A1 0C            [ 1] 3314 	cp	a, #0x0c
      00C3CF 24 04            [ 1] 3315 	jrnc	00127$
                           000F90  3316 	C$ebike_app.c$1836$5_0$576 ==.
                                   3317 ;	ebike_app.c: 1836: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
      00C3D1 72 5F 02 0A      [ 1] 3318 	clr	_ui8_startup_boost_state_machine+0
      00C3D5                       3319 00127$:
                           000F94  3320 	C$ebike_app.c$1840$3_0$566 ==.
                                   3321 ;	ebike_app.c: 1840: if((configuration_variables.ui8_startup_motor_power_boost_state & 0x01) > 0)
      00C3D5 C6 00 28         [ 1] 3322 	ld	a, _configuration_variables+19
      00C3D8 6B 02            [ 1] 3323 	ld	(0x02, sp), a
      00C3DA 0F 01            [ 1] 3324 	clr	(0x01, sp)
      00C3DC 7B 02            [ 1] 3325 	ld	a, (0x02, sp)
      00C3DE A4 01            [ 1] 3326 	and	a, #0x01
      00C3E0 97               [ 1] 3327 	ld	xl, a
      00C3E1 4F               [ 1] 3328 	clr	a
      00C3E2 95               [ 1] 3329 	ld	xh, a
      00C3E3 A3 00 00         [ 2] 3330 	cpw	x, #0x0000
      00C3E6 2D 11            [ 1] 3331 	jrsle	00137$
                           000FA7  3332 	C$ebike_app.c$1842$4_0$577 ==.
                                   3333 ;	ebike_app.c: 1842: if((ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW)||(ui8_pas_cadence_rpm == 0))
      00C3E8 C6 01 E7         [ 1] 3334 	ld	a, _ui8_torque_sensor+0
      00C3EB A1 0C            [ 1] 3335 	cp	a, #0x0c
      00C3ED 25 06            [ 1] 3336 	jrc	00128$
      00C3EF 72 5D 02 00      [ 1] 3337 	tnz	_ui8_pas_cadence_rpm+0
      00C3F3 26 04            [ 1] 3338 	jrne	00137$
      00C3F5                       3339 00128$:
                           000FB4  3340 	C$ebike_app.c$1844$5_0$578 ==.
                                   3341 ;	ebike_app.c: 1844: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
      00C3F5 72 5F 02 0A      [ 1] 3342 	clr	_ui8_startup_boost_state_machine+0
                           000FB8  3343 	C$ebike_app.c$1851$1_0$564 ==.
                                   3344 ;	ebike_app.c: 1851: }
      00C3F9                       3345 00137$:
                           000FB8  3346 	C$ebike_app.c$1853$1_0$564 ==.
                                   3347 ;	ebike_app.c: 1853: }
      00C3F9 5B 02            [ 2] 3348 	addw	sp, #2
                           000FBA  3349 	C$ebike_app.c$1853$1_0$564 ==.
                           000FBA  3350 	XFebike_app$boost_run_statemachine$0$0 ==.
      00C3FB 81               [ 4] 3351 	ret
                           000FBB  3352 	Febike_app$apply_boost$0$0 ==.
                           000FBB  3353 	C$ebike_app.c$1858$1_0$580 ==.
                                   3354 ;	ebike_app.c: 1858: static uint8_t apply_boost(uint8_t ui8_pas_cadence, uint8_t ui8_max_current_boost_state, uint8_t *ui8_target_current)
                                   3355 ;	-----------------------------------------
                                   3356 ;	 function apply_boost
                                   3357 ;	-----------------------------------------
      00C3FC                       3358 _apply_boost:
                           000FBB  3359 	C$ebike_app.c$1860$1_0$580 ==.
                                   3360 ;	ebike_app.c: 1860: uint8_t ui8_boost_enable = (ui8_startup_boost_enable && configuration_variables.ui8_assist_level_factor_x10 && ui8_pas_cadence > 0) ? 1 : 0;
      00C3FC 72 5D 02 08      [ 1] 3361 	tnz	_ui8_startup_boost_enable+0
      00C400 27 0C            [ 1] 3362 	jreq	00105$
      00C402 C6 00 15         [ 1] 3363 	ld	a, _configuration_variables+0
      00C405 27 07            [ 1] 3364 	jreq	00105$
      00C407 0D 03            [ 1] 3365 	tnz	(0x03, sp)
      00C409 27 03            [ 1] 3366 	jreq	00105$
      00C40B 5F               [ 1] 3367 	clrw	x
      00C40C 5C               [ 1] 3368 	incw	x
      00C40D 21                    3369 	.byte 0x21
      00C40E                       3370 00105$:
      00C40E 5F               [ 1] 3371 	clrw	x
      00C40F                       3372 00106$:
      00C40F 9F               [ 1] 3373 	ld	a, xl
                           000FCF  3374 	C$ebike_app.c$1862$1_0$580 ==.
                                   3375 ;	ebike_app.c: 1862: if(ui8_boost_enable)
      00C410 4D               [ 1] 3376 	tnz	a
      00C411 27 06            [ 1] 3377 	jreq	00102$
                           000FD2  3378 	C$ebike_app.c$1864$2_0$581 ==.
                                   3379 ;	ebike_app.c: 1864: *ui8_target_current = ui8_max_current_boost_state;
      00C413 16 05            [ 2] 3380 	ldw	y, (0x05, sp)
      00C415 7B 04            [ 1] 3381 	ld	a, (0x04, sp)
      00C417 90 F7            [ 1] 3382 	ld	(y), a
      00C419                       3383 00102$:
                           000FD8  3384 	C$ebike_app.c$1867$1_0$580 ==.
                                   3385 ;	ebike_app.c: 1867: return ui8_boost_enable;
      00C419 9F               [ 1] 3386 	ld	a, xl
                           000FD9  3387 	C$ebike_app.c$1868$1_0$580 ==.
                                   3388 ;	ebike_app.c: 1868: }
                           000FD9  3389 	C$ebike_app.c$1868$1_0$580 ==.
                           000FD9  3390 	XFebike_app$apply_boost$0$0 ==.
      00C41A 81               [ 4] 3391 	ret
                           000FDA  3392 	Febike_app$apply_boost_fade_out$0$0 ==.
                           000FDA  3393 	C$ebike_app.c$1873$1_0$583 ==.
                                   3394 ;	ebike_app.c: 1873: static void apply_boost_fade_out(uint8_t *ui8_target_current)
                                   3395 ;	-----------------------------------------
                                   3396 ;	 function apply_boost_fade_out
                                   3397 ;	-----------------------------------------
      00C41B                       3398 _apply_boost_fade_out:
      00C41B 52 02            [ 2] 3399 	sub	sp, #2
                           000FDC  3400 	C$ebike_app.c$1875$1_0$583 ==.
                                   3401 ;	ebike_app.c: 1875: if(ui8_startup_boost_fade_enable)
      00C41D 72 5D 02 09      [ 1] 3402 	tnz	_ui8_startup_boost_fade_enable+0
      00C421 27 38            [ 1] 3403 	jreq	00108$
                           000FE2  3404 	C$ebike_app.c$1878$2_0$584 ==.
                                   3405 ;	ebike_app.c: 1878: uint16_t ui16_adc_motor_target_current_x256 = ((uint16_t) ui8_adc_motor_target_current) << 8;
      00C423 C6 02 2E         [ 1] 3406 	ld	a, _ui8_adc_motor_target_current+0
      00C426 97               [ 1] 3407 	ld	xl, a
      00C427 4F               [ 1] 3408 	clr	a
      00C428 02               [ 1] 3409 	rlwa	x
      00C429 1F 01            [ 2] 3410 	ldw	(0x01, sp), x
                           000FEA  3411 	C$ebike_app.c$1879$2_0$584 ==.
                                   3412 ;	ebike_app.c: 1879: if(ui16_startup_boost_fade_variable_x256 > ui16_adc_motor_target_current_x256)
      00C42B 1E 01            [ 2] 3413 	ldw	x, (0x01, sp)
      00C42D C3 02 0D         [ 2] 3414 	cpw	x, _ui16_startup_boost_fade_variable_x256+0
      00C430 24 0C            [ 1] 3415 	jrnc	00104$
                           000FF1  3416 	C$ebike_app.c$1881$3_0$585 ==.
                                   3417 ;	ebike_app.c: 1881: ui16_startup_boost_fade_variable_x256 -= ui16_startup_boost_fade_variable_step_amount_x256;
      00C432 CE 02 0D         [ 2] 3418 	ldw	x, _ui16_startup_boost_fade_variable_x256+0
      00C435 72 B0 02 0F      [ 2] 3419 	subw	x, _ui16_startup_boost_fade_variable_step_amount_x256+0
      00C439 CF 02 0D         [ 2] 3420 	ldw	_ui16_startup_boost_fade_variable_x256+0, x
      00C43C 20 11            [ 2] 3421 	jra	00105$
      00C43E                       3422 00104$:
                           000FFD  3423 	C$ebike_app.c$1883$2_0$584 ==.
                                   3424 ;	ebike_app.c: 1883: else if(ui16_startup_boost_fade_variable_x256 < ui16_adc_motor_target_current_x256)
      00C43E 1E 01            [ 2] 3425 	ldw	x, (0x01, sp)
      00C440 C3 02 0D         [ 2] 3426 	cpw	x, _ui16_startup_boost_fade_variable_x256+0
      00C443 23 0A            [ 2] 3427 	jrule	00105$
                           001004  3428 	C$ebike_app.c$1885$3_0$586 ==.
                                   3429 ;	ebike_app.c: 1885: ui16_startup_boost_fade_variable_x256 += ui16_startup_boost_fade_variable_step_amount_x256;
      00C445 CE 02 0D         [ 2] 3430 	ldw	x, _ui16_startup_boost_fade_variable_x256+0
      00C448 72 BB 02 0F      [ 2] 3431 	addw	x, _ui16_startup_boost_fade_variable_step_amount_x256+0
      00C44C CF 02 0D         [ 2] 3432 	ldw	_ui16_startup_boost_fade_variable_x256+0, x
      00C44F                       3433 00105$:
                           00100E  3434 	C$ebike_app.c$1888$2_0$584 ==.
                                   3435 ;	ebike_app.c: 1888: *ui8_target_current = (uint8_t) (ui16_startup_boost_fade_variable_x256 >> 8);
      00C44F 1E 05            [ 2] 3436 	ldw	x, (0x05, sp)
      00C451 C6 02 0D         [ 1] 3437 	ld	a, _ui16_startup_boost_fade_variable_x256+0
      00C454 6B 02            [ 1] 3438 	ld	(0x02, sp), a
      00C456 0F 01            [ 1] 3439 	clr	(0x01, sp)
      00C458 7B 02            [ 1] 3440 	ld	a, (0x02, sp)
      00C45A F7               [ 1] 3441 	ld	(x), a
      00C45B                       3442 00108$:
                           00101A  3443 	C$ebike_app.c$1890$1_0$583 ==.
                                   3444 ;	ebike_app.c: 1890: }
      00C45B 5B 02            [ 2] 3445 	addw	sp, #2
                           00101C  3446 	C$ebike_app.c$1890$1_0$583 ==.
                           00101C  3447 	XFebike_app$apply_boost_fade_out$0$0 ==.
      00C45D 81               [ 4] 3448 	ret
                           00101D  3449 	Febike_app$read_pas_cadence$0$0 ==.
                           00101D  3450 	C$ebike_app.c$1895$1_0$588 ==.
                                   3451 ;	ebike_app.c: 1895: static void read_pas_cadence(void)
                                   3452 ;	-----------------------------------------
                                   3453 ;	 function read_pas_cadence
                                   3454 ;	-----------------------------------------
      00C45E                       3455 _read_pas_cadence:
                           00101D  3456 	C$ebike_app.c$1898$1_0$588 ==.
                                   3457 ;	ebike_app.c: 1898: if(ui16_pas_pwm_cycles_ticks >= ((uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS)||(ui8_pedaling_direction == 0))
      00C45E CE 01 FA         [ 2] 3458 	ldw	x, _ui16_pas_pwm_cycles_ticks+0
      00C461 A3 24 9F         [ 2] 3459 	cpw	x, #0x249f
      00C464 24 06            [ 1] 3460 	jrnc	00104$
      00C466 72 5D 01 FD      [ 1] 3461 	tnz	_ui8_pedaling_direction+0
      00C46A 26 0B            [ 1] 3462 	jrne	00105$
      00C46C                       3463 00104$:
                           00102B  3464 	C$ebike_app.c$1900$2_0$589 ==.
                                   3465 ;	ebike_app.c: 1900: ui8_pas_cadence_rpm = 0;
      00C46C 72 5F 02 00      [ 1] 3466 	clr	_ui8_pas_cadence_rpm+0
                           00102F  3467 	C$ebike_app.c$1901$2_0$589 ==.
                                   3468 ;	ebike_app.c: 1901: ui8_pas_backwards_cadence_rpm = 0;
      00C470 72 5F 02 01      [ 1] 3469 	clr	_ui8_pas_backwards_cadence_rpm+0
      00C474 CC C4 F0         [ 2] 3470 	jp	00108$
      00C477                       3471 00105$:
                           001036  3472 	C$ebike_app.c$1903$1_0$588 ==.
                                   3473 ;	ebike_app.c: 1903: else if(ui8_pedaling_direction == 2)
      00C477 C6 01 FD         [ 1] 3474 	ld	a, _ui8_pedaling_direction+0
      00C47A A1 02            [ 1] 3475 	cp	a, #0x02
      00C47C 26 3A            [ 1] 3476 	jrne	00102$
                           00103D  3477 	C$ebike_app.c$1905$2_0$590 ==.
                                   3478 ;	ebike_app.c: 1905: ui8_pas_cadence_rpm = 0;
      00C47E 72 5F 02 00      [ 1] 3479 	clr	_ui8_pas_cadence_rpm+0
                           001041  3480 	C$ebike_app.c$1906$1_0$588 ==.
                                   3481 ;	ebike_app.c: 1906: ui8_pas_backwards_cadence_rpm = (uint8_t) (60 / (((float) ui16_pas_pwm_cycles_ticks) * ((float) PAS_NUMBER_MAGNETS) * 0.000064));
      00C482 3B 01 FB         [ 1] 3482 	push	_ui16_pas_pwm_cycles_ticks+1
      00C485 3B 01 FA         [ 1] 3483 	push	_ui16_pas_pwm_cycles_ticks+0
      00C488 CD D7 D0         [ 4] 3484 	call	___uint2fs
      00C48B 5B 02            [ 2] 3485 	addw	sp, #2
      00C48D 89               [ 2] 3486 	pushw	x
      00C48E 90 89            [ 2] 3487 	pushw	y
      00C490 4B AC            [ 1] 3488 	push	#0xac
      00C492 4B C5            [ 1] 3489 	push	#0xc5
      00C494 4B A7            [ 1] 3490 	push	#0xa7
      00C496 4B 3A            [ 1] 3491 	push	#0x3a
      00C498 CD D1 99         [ 4] 3492 	call	___fsmul
      00C49B 5B 08            [ 2] 3493 	addw	sp, #8
      00C49D 89               [ 2] 3494 	pushw	x
      00C49E 90 89            [ 2] 3495 	pushw	y
      00C4A0 5F               [ 1] 3496 	clrw	x
      00C4A1 89               [ 2] 3497 	pushw	x
      00C4A2 4B 70            [ 1] 3498 	push	#0x70
      00C4A4 4B 42            [ 1] 3499 	push	#0x42
      00C4A6 CD D9 E0         [ 4] 3500 	call	___fsdiv
      00C4A9 5B 08            [ 2] 3501 	addw	sp, #8
      00C4AB 89               [ 2] 3502 	pushw	x
      00C4AC 90 89            [ 2] 3503 	pushw	y
      00C4AE CD DA 80         [ 4] 3504 	call	___fs2uchar
      00C4B1 5B 04            [ 2] 3505 	addw	sp, #4
      00C4B3 C7 02 01         [ 1] 3506 	ld	_ui8_pas_backwards_cadence_rpm+0, a
      00C4B6 20 38            [ 2] 3507 	jra	00108$
      00C4B8                       3508 00102$:
                           001077  3509 	C$ebike_app.c$1910$1_0$588 ==.
                                   3510 ;	ebike_app.c: 1910: ui8_pas_cadence_rpm = (uint8_t) (60 / (((float) ui16_pas_pwm_cycles_ticks) * ((float) PAS_NUMBER_MAGNETS) * 0.000064));
      00C4B8 3B 01 FB         [ 1] 3511 	push	_ui16_pas_pwm_cycles_ticks+1
      00C4BB 3B 01 FA         [ 1] 3512 	push	_ui16_pas_pwm_cycles_ticks+0
      00C4BE CD D7 D0         [ 4] 3513 	call	___uint2fs
      00C4C1 5B 02            [ 2] 3514 	addw	sp, #2
      00C4C3 89               [ 2] 3515 	pushw	x
      00C4C4 90 89            [ 2] 3516 	pushw	y
      00C4C6 4B AC            [ 1] 3517 	push	#0xac
      00C4C8 4B C5            [ 1] 3518 	push	#0xc5
      00C4CA 4B A7            [ 1] 3519 	push	#0xa7
      00C4CC 4B 3A            [ 1] 3520 	push	#0x3a
      00C4CE CD D1 99         [ 4] 3521 	call	___fsmul
      00C4D1 5B 08            [ 2] 3522 	addw	sp, #8
      00C4D3 89               [ 2] 3523 	pushw	x
      00C4D4 90 89            [ 2] 3524 	pushw	y
      00C4D6 5F               [ 1] 3525 	clrw	x
      00C4D7 89               [ 2] 3526 	pushw	x
      00C4D8 4B 70            [ 1] 3527 	push	#0x70
      00C4DA 4B 42            [ 1] 3528 	push	#0x42
      00C4DC CD D9 E0         [ 4] 3529 	call	___fsdiv
      00C4DF 5B 08            [ 2] 3530 	addw	sp, #8
      00C4E1 89               [ 2] 3531 	pushw	x
      00C4E2 90 89            [ 2] 3532 	pushw	y
      00C4E4 CD DA 80         [ 4] 3533 	call	___fs2uchar
      00C4E7 5B 04            [ 2] 3534 	addw	sp, #4
      00C4E9 C7 02 00         [ 1] 3535 	ld	_ui8_pas_cadence_rpm+0, a
                           0010AB  3536 	C$ebike_app.c$1911$2_0$591 ==.
                                   3537 ;	ebike_app.c: 1911: ui8_pas_backwards_cadence_rpm = 0;
      00C4EC 72 5F 02 01      [ 1] 3538 	clr	_ui8_pas_backwards_cadence_rpm+0
      00C4F0                       3539 00108$:
                           0010AF  3540 	C$ebike_app.c$1913$1_0$588 ==.
                                   3541 ;	ebike_app.c: 1913: }
                           0010AF  3542 	C$ebike_app.c$1913$1_0$588 ==.
                           0010AF  3543 	XFebike_app$read_pas_cadence$0$0 ==.
      00C4F0 81               [ 4] 3544 	ret
                           0010B0  3545 	Febike_app$torque_sensor_read$0$0 ==.
                           0010B0  3546 	C$ebike_app.c$1918$1_0$593 ==.
                                   3547 ;	ebike_app.c: 1918: static void torque_sensor_read(void)
                                   3548 ;	-----------------------------------------
                                   3549 ;	 function torque_sensor_read
                                   3550 ;	-----------------------------------------
      00C4F1                       3551 _torque_sensor_read:
      00C4F1 52 0C            [ 2] 3552 	sub	sp, #12
                           0010B2  3553 	C$ebike_app.c$1920$1_0$593 ==.
                                   3554 ;	ebike_app.c: 1920: uint8_t ui8_adc_torque_sensor = UI8_ADC_TORQUE_SENSOR;
      00C4F3 C6 53 E8         [ 1] 3555 	ld	a, 0x53e8
      00C4F6 97               [ 1] 3556 	ld	xl, a
                           0010B6  3557 	C$ebike_app.c$1954$1_0$593 ==.
                                   3558 ;	ebike_app.c: 1954: (uint8_t) ui8_adc_torque_sensor_max_value,
      00C4F7 C6 01 EE         [ 1] 3559 	ld	a, _ui8_adc_torque_sensor_max_value+0
      00C4FA 6B 04            [ 1] 3560 	ld	(0x04, sp), a
      00C4FC 0F 03            [ 1] 3561 	clr	(0x03, sp)
      00C4FE 90 5F            [ 1] 3562 	clrw	y
                           0010BF  3563 	C$ebike_app.c$1953$1_0$593 ==.
                                   3564 ;	ebike_app.c: 1953: (uint8_t) ui8_adc_torque_sensor_min_value,
      00C500 C6 01 ED         [ 1] 3565 	ld	a, _ui8_adc_torque_sensor_min_value+0
      00C503 6B 08            [ 1] 3566 	ld	(0x08, sp), a
      00C505 0F 07            [ 1] 3567 	clr	(0x07, sp)
      00C507 0F 06            [ 1] 3568 	clr	(0x06, sp)
      00C509 0F 05            [ 1] 3569 	clr	(0x05, sp)
                           0010CA  3570 	C$ebike_app.c$1952$1_0$593 ==.
                                   3571 ;	ebike_app.c: 1952: ui8_adc_torque_sensor,
      00C50B 41               [ 1] 3572 	exg	a, xl
      00C50C 6B 0C            [ 1] 3573 	ld	(0x0c, sp), a
      00C50E 41               [ 1] 3574 	exg	a, xl
      00C50F 0F 0B            [ 1] 3575 	clr	(0x0b, sp)
      00C511 0F 0A            [ 1] 3576 	clr	(0x0a, sp)
      00C513 0F 09            [ 1] 3577 	clr	(0x09, sp)
      00C515 4B FF            [ 1] 3578 	push	#0xff
      00C517 5F               [ 1] 3579 	clrw	x
      00C518 89               [ 2] 3580 	pushw	x
      00C519 4B 00            [ 1] 3581 	push	#0x00
      00C51B 5F               [ 1] 3582 	clrw	x
      00C51C 89               [ 2] 3583 	pushw	x
      00C51D 5F               [ 1] 3584 	clrw	x
      00C51E 89               [ 2] 3585 	pushw	x
      00C51F 1E 0B            [ 2] 3586 	ldw	x, (0x0b, sp)
      00C521 89               [ 2] 3587 	pushw	x
      00C522 90 89            [ 2] 3588 	pushw	y
      00C524 1E 13            [ 2] 3589 	ldw	x, (0x13, sp)
      00C526 89               [ 2] 3590 	pushw	x
      00C527 1E 13            [ 2] 3591 	ldw	x, (0x13, sp)
      00C529 89               [ 2] 3592 	pushw	x
      00C52A 1E 1B            [ 2] 3593 	ldw	x, (0x1b, sp)
      00C52C 89               [ 2] 3594 	pushw	x
      00C52D 1E 1B            [ 2] 3595 	ldw	x, (0x1b, sp)
      00C52F 89               [ 2] 3596 	pushw	x
      00C530 CD C6 7B         [ 4] 3597 	call	_map
      00C533 5B 14            [ 2] 3598 	addw	sp, #20
      00C535 9F               [ 1] 3599 	ld	a, xl
      00C536 C7 01 E8         [ 1] 3600 	ld	_ui8_torque_sensor_raw+0, a
                           0010F8  3601 	C$ebike_app.c$1961$1_0$593 ==.
                                   3602 ;	ebike_app.c: 1961: switch(ui8_tstr_state_machine)
      00C539 C6 02 28         [ 1] 3603 	ld	a, _ui8_tstr_state_machine+0
      00C53C A1 00            [ 1] 3604 	cp	a, #0x00
      00C53E 27 06            [ 1] 3605 	jreq	00101$
      00C540 A1 02            [ 1] 3606 	cp	a, #0x02
      00C542 27 13            [ 1] 3607 	jreq	00105$
      00C544 20 20            [ 2] 3608 	jra	00110$
                           001105  3609 	C$ebike_app.c$1964$2_0$594 ==.
                                   3610 ;	ebike_app.c: 1964: case STATE_NO_PEDALLING:
      00C546                       3611 00101$:
                           001105  3612 	C$ebike_app.c$1965$2_0$594 ==.
                                   3613 ;	ebike_app.c: 1965: if((ui8_torque_sensor_raw > 0)&&
      00C546 72 5D 01 E8      [ 1] 3614 	tnz	_ui8_torque_sensor_raw+0
      00C54A 27 1A            [ 1] 3615 	jreq	00110$
                           00110B  3616 	C$ebike_app.c$1966$2_0$594 ==.
                                   3617 ;	ebike_app.c: 1966: (ui16_wheel_speed_x10))
      00C54C CE 02 17         [ 2] 3618 	ldw	x, _ui16_wheel_speed_x10+0
      00C54F 27 15            [ 1] 3619 	jreq	00110$
                           001110  3620 	C$ebike_app.c$1968$3_0$595 ==.
                                   3621 ;	ebike_app.c: 1968: ui8_tstr_state_machine = STATE_PEDALLING;
      00C551 35 02 02 28      [ 1] 3622 	mov	_ui8_tstr_state_machine+0, #0x02
                           001114  3623 	C$ebike_app.c$1970$2_0$594 ==.
                                   3624 ;	ebike_app.c: 1970: break;
      00C555 20 0F            [ 2] 3625 	jra	00110$
                           001116  3626 	C$ebike_app.c$1973$2_0$594 ==.
                                   3627 ;	ebike_app.c: 1973: case STATE_PEDALLING:
      00C557                       3628 00105$:
                           001116  3629 	C$ebike_app.c$1974$2_0$594 ==.
                                   3630 ;	ebike_app.c: 1974: if((ui16_wheel_speed_x10 == 0)&&
      00C557 CE 02 17         [ 2] 3631 	ldw	x, _ui16_wheel_speed_x10+0
      00C55A 26 0A            [ 1] 3632 	jrne	00110$
                           00111B  3633 	C$ebike_app.c$1975$2_0$594 ==.
                                   3634 ;	ebike_app.c: 1975: (ui8_torque_sensor_raw == 0))
      00C55C 72 5D 01 E8      [ 1] 3635 	tnz	_ui8_torque_sensor_raw+0
      00C560 26 04            [ 1] 3636 	jrne	00110$
                           001121  3637 	C$ebike_app.c$1977$3_0$596 ==.
                                   3638 ;	ebike_app.c: 1977: ui8_tstr_state_machine = STATE_NO_PEDALLING;
      00C562 72 5F 02 28      [ 1] 3639 	clr	_ui8_tstr_state_machine+0
                           001125  3640 	C$ebike_app.c$1983$1_0$593 ==.
                                   3641 ;	ebike_app.c: 1983: }			
      00C566                       3642 00110$:
                           001125  3643 	C$ebike_app.c$1986$1_0$593 ==.
                                   3644 ;	ebike_app.c: 1986: if((ui8_tstr_state_machine == STATE_PEDALLING)&&(ui8_pas_cadence_rpm == 0))
      00C566 C6 02 28         [ 1] 3645 	ld	a, _ui8_tstr_state_machine+0
      00C569 A1 02            [ 1] 3646 	cp	a, #0x02
      00C56B 26 0C            [ 1] 3647 	jrne	00112$
      00C56D 72 5D 02 00      [ 1] 3648 	tnz	_ui8_pas_cadence_rpm+0
      00C571 26 06            [ 1] 3649 	jrne	00112$
                           001132  3650 	C$ebike_app.c$1988$2_0$597 ==.
                                   3651 ;	ebike_app.c: 1988: ui8_torque_sensor = 0;
      00C573 72 5F 01 E7      [ 1] 3652 	clr	_ui8_torque_sensor+0
      00C577 20 05            [ 2] 3653 	jra	00115$
      00C579                       3654 00112$:
                           001138  3655 	C$ebike_app.c$1992$2_0$598 ==.
                                   3656 ;	ebike_app.c: 1992: ui8_torque_sensor = ui8_torque_sensor_raw;
      00C579 55 01 E8 01 E7   [ 1] 3657 	mov	_ui8_torque_sensor+0, _ui8_torque_sensor_raw+0
      00C57E                       3658 00115$:
                           00113D  3659 	C$ebike_app.c$1994$1_0$593 ==.
                                   3660 ;	ebike_app.c: 1994: }
      00C57E 5B 0C            [ 2] 3661 	addw	sp, #12
                           00113F  3662 	C$ebike_app.c$1994$1_0$593 ==.
                           00113F  3663 	XFebike_app$torque_sensor_read$0$0 ==.
      00C580 81               [ 4] 3664 	ret
                           001140  3665 	Febike_app$throttle_read$0$0 ==.
                           001140  3666 	C$ebike_app.c$1999$1_0$600 ==.
                                   3667 ;	ebike_app.c: 1999: static void throttle_read(void)
                                   3668 ;	-----------------------------------------
                                   3669 ;	 function throttle_read
                                   3670 ;	-----------------------------------------
      00C581                       3671 _throttle_read:
                           001140  3672 	C$ebike_app.c$2010$1_0$600 ==.
                                   3673 ;	ebike_app.c: 2010: ui8_throttle = 0;
      00C581 72 5F 01 E6      [ 1] 3674 	clr	_ui8_throttle+0
                           001144  3675 	C$ebike_app.c$2012$1_0$600 ==.
                                   3676 ;	ebike_app.c: 2012: }
                           001144  3677 	C$ebike_app.c$2012$1_0$600 ==.
                           001144  3678 	XFebike_app$throttle_read$0$0 ==.
      00C585 81               [ 4] 3679 	ret
                           001145  3680 	Febike_app$walk_assist_read$0$0 ==.
                           001145  3681 	C$ebike_app.c$2017$1_0$602 ==.
                                   3682 ;	ebike_app.c: 2017: static void walk_assist_read(void)
                                   3683 ;	-----------------------------------------
                                   3684 ;	 function walk_assist_read
                                   3685 ;	-----------------------------------------
      00C586                       3686 _walk_assist_read:
      00C586 52 04            [ 2] 3687 	sub	sp, #4
                           001147  3688 	C$ebike_app.c$2021$1_0$602 ==.
                                   3689 ;	ebike_app.c: 2021: ui8_walk_assist_current_per_cent,
      00C588 C6 02 4B         [ 1] 3690 	ld	a, _ui8_walk_assist_current_per_cent+0
      00C58B 6B 04            [ 1] 3691 	ld	(0x04, sp), a
      00C58D 0F 03            [ 1] 3692 	clr	(0x03, sp)
      00C58F 0F 02            [ 1] 3693 	clr	(0x02, sp)
      00C591 0F 01            [ 1] 3694 	clr	(0x01, sp)
      00C593 4B FF            [ 1] 3695 	push	#0xff
      00C595 5F               [ 1] 3696 	clrw	x
      00C596 89               [ 2] 3697 	pushw	x
      00C597 4B 00            [ 1] 3698 	push	#0x00
      00C599 5F               [ 1] 3699 	clrw	x
      00C59A 89               [ 2] 3700 	pushw	x
      00C59B 5F               [ 1] 3701 	clrw	x
      00C59C 89               [ 2] 3702 	pushw	x
      00C59D 4B 64            [ 1] 3703 	push	#0x64
      00C59F 5F               [ 1] 3704 	clrw	x
      00C5A0 89               [ 2] 3705 	pushw	x
      00C5A1 4B 00            [ 1] 3706 	push	#0x00
      00C5A3 5F               [ 1] 3707 	clrw	x
      00C5A4 89               [ 2] 3708 	pushw	x
      00C5A5 5F               [ 1] 3709 	clrw	x
      00C5A6 89               [ 2] 3710 	pushw	x
      00C5A7 1E 13            [ 2] 3711 	ldw	x, (0x13, sp)
      00C5A9 89               [ 2] 3712 	pushw	x
      00C5AA 1E 13            [ 2] 3713 	ldw	x, (0x13, sp)
      00C5AC 89               [ 2] 3714 	pushw	x
      00C5AD CD C6 7B         [ 4] 3715 	call	_map
      00C5B0 5B 14            [ 2] 3716 	addw	sp, #20
      00C5B2 9F               [ 1] 3717 	ld	a, xl
      00C5B3 C7 02 4A         [ 1] 3718 	ld	_ui8_walk_assist+0, a
                           001175  3719 	C$ebike_app.c$2026$1_0$602 ==.
                                   3720 ;	ebike_app.c: 2026: }
      00C5B6 5B 04            [ 2] 3721 	addw	sp, #4
                           001177  3722 	C$ebike_app.c$2026$1_0$602 ==.
                           001177  3723 	XFebike_app$walk_assist_read$0$0 ==.
      00C5B8 81               [ 4] 3724 	ret
                           001178  3725 	G$UART2_IRQHandler$0$0 ==.
                           001178  3726 	C$ebike_app.c$2034$1_0$604 ==.
                                   3727 ;	ebike_app.c: 2034: void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER)
                                   3728 ;	-----------------------------------------
                                   3729 ;	 function UART2_IRQHandler
                                   3730 ;	-----------------------------------------
      00C5B9                       3731 _UART2_IRQHandler:
      00C5B9 4F               [ 1] 3732 	clr	a
      00C5BA 62               [ 2] 3733 	div	x, a
                           00117A  3734 	C$ebike_app.c$2036$1_0$604 ==.
                                   3735 ;	ebike_app.c: 2036: if(UART2_GetFlagStatus(UART2_FLAG_RXNE) == SET)
      00C5BB 4B 20            [ 1] 3736 	push	#0x20
      00C5BD 4B 00            [ 1] 3737 	push	#0x00
      00C5BF CD 8C 88         [ 4] 3738 	call	_UART2_GetFlagStatus
      00C5C2 5B 02            [ 2] 3739 	addw	sp, #2
      00C5C4 4A               [ 1] 3740 	dec	a
      00C5C5 27 03            [ 1] 3741 	jreq	00136$
      00C5C7 CC C6 32         [ 2] 3742 	jp	00112$
      00C5CA                       3743 00136$:
                           001189  3744 	C$ebike_app.c$2038$2_0$605 ==.
                                   3745 ;	ebike_app.c: 2038: UART2->SR &= (uint8_t)~(UART2_FLAG_RXNE); // this may be redundant
      00C5CA C6 52 40         [ 1] 3746 	ld	a, 0x5240
      00C5CD A4 DF            [ 1] 3747 	and	a, #0xdf
      00C5CF C7 52 40         [ 1] 3748 	ld	0x5240, a
                           001191  3749 	C$ebike_app.c$2040$2_0$605 ==.
                                   3750 ;	ebike_app.c: 2040: ui8_byte_received = UART2_ReceiveData8();
      00C5D2 CD 8C 1E         [ 4] 3751 	call	_UART2_ReceiveData8
      00C5D5 C7 02 26         [ 1] 3752 	ld	_ui8_byte_received+0, a
                           001197  3753 	C$ebike_app.c$2042$2_0$605 ==.
                                   3754 ;	ebike_app.c: 2042: switch(ui8_state_machine)
      00C5D8 C6 02 27         [ 1] 3755 	ld	a, _ui8_state_machine+0
      00C5DB A1 00            [ 1] 3756 	cp	a, #0x00
      00C5DD 27 06            [ 1] 3757 	jreq	00101$
      00C5DF 4A               [ 1] 3758 	dec	a
      00C5E0 27 29            [ 1] 3759 	jreq	00105$
      00C5E2 CC C6 32         [ 2] 3760 	jp	00112$
                           0011A4  3761 	C$ebike_app.c$2044$3_0$606 ==.
                                   3762 ;	ebike_app.c: 2044: case 0:
      00C5E5                       3763 00101$:
                           0011A4  3764 	C$ebike_app.c$2045$3_0$606 ==.
                                   3765 ;	ebike_app.c: 2045: if(ui8_byte_received == RX_STX) // see if we get start package byte
      00C5E5 C6 02 26         [ 1] 3766 	ld	a, _ui8_byte_received+0
      00C5E8 A1 59            [ 1] 3767 	cp	a, #0x59
      00C5EA 26 15            [ 1] 3768 	jrne	00103$
                           0011AB  3769 	C$ebike_app.c$2047$4_0$607 ==.
                                   3770 ;	ebike_app.c: 2047: ui8_rx_buffer[ui8_rx_counter] = ui8_byte_received;
      00C5EC 5F               [ 1] 3771 	clrw	x
      00C5ED C6 02 24         [ 1] 3772 	ld	a, _ui8_rx_counter+0
      00C5F0 97               [ 1] 3773 	ld	xl, a
      00C5F1 C6 02 26         [ 1] 3774 	ld	a, _ui8_byte_received+0
      00C5F4 D7 00 05         [ 1] 3775 	ld	((_ui8_rx_buffer + 0), x), a
                           0011B6  3776 	C$ebike_app.c$2048$4_0$607 ==.
                                   3777 ;	ebike_app.c: 2048: ui8_rx_counter++;
      00C5F7 72 5C 02 24      [ 1] 3778 	inc	_ui8_rx_counter+0
                           0011BA  3779 	C$ebike_app.c$2049$4_0$607 ==.
                                   3780 ;	ebike_app.c: 2049: ui8_state_machine = 1;
      00C5FB 35 01 02 27      [ 1] 3781 	mov	_ui8_state_machine+0, #0x01
      00C5FF 20 31            [ 2] 3782 	jra	00112$
      00C601                       3783 00103$:
                           0011C0  3784 	C$ebike_app.c$2053$4_0$608 ==.
                                   3785 ;	ebike_app.c: 2053: ui8_rx_counter = 0;
      00C601 72 5F 02 24      [ 1] 3786 	clr	_ui8_rx_counter+0
                           0011C4  3787 	C$ebike_app.c$2054$4_0$608 ==.
                                   3788 ;	ebike_app.c: 2054: ui8_state_machine = 0;
      00C605 72 5F 02 27      [ 1] 3789 	clr	_ui8_state_machine+0
                           0011C8  3790 	C$ebike_app.c$2056$3_0$606 ==.
                                   3791 ;	ebike_app.c: 2056: break;
      00C609 20 27            [ 2] 3792 	jra	00112$
                           0011CA  3793 	C$ebike_app.c$2058$3_0$606 ==.
                                   3794 ;	ebike_app.c: 2058: case 1:
      00C60B                       3795 00105$:
                           0011CA  3796 	C$ebike_app.c$2059$3_0$606 ==.
                                   3797 ;	ebike_app.c: 2059: ui8_rx_buffer[ui8_rx_counter] = ui8_byte_received;
      00C60B 5F               [ 1] 3798 	clrw	x
      00C60C C6 02 24         [ 1] 3799 	ld	a, _ui8_rx_counter+0
      00C60F 97               [ 1] 3800 	ld	xl, a
      00C610 1C 00 05         [ 2] 3801 	addw	x, #(_ui8_rx_buffer + 0)
      00C613 C6 02 26         [ 1] 3802 	ld	a, _ui8_byte_received+0
      00C616 F7               [ 1] 3803 	ld	(x), a
                           0011D6  3804 	C$ebike_app.c$2060$3_0$606 ==.
                                   3805 ;	ebike_app.c: 2060: ui8_rx_counter++;
      00C617 72 5C 02 24      [ 1] 3806 	inc	_ui8_rx_counter+0
                           0011DA  3807 	C$ebike_app.c$2063$3_0$606 ==.
                                   3808 ;	ebike_app.c: 2063: if(ui8_rx_counter > UART_RX_BUFFER_LEN)
      00C61B C6 02 24         [ 1] 3809 	ld	a, _ui8_rx_counter+0
      00C61E A1 07            [ 1] 3810 	cp	a, #0x07
      00C620 23 10            [ 2] 3811 	jrule	00112$
                           0011E1  3812 	C$ebike_app.c$2065$4_0$609 ==.
                                   3813 ;	ebike_app.c: 2065: ui8_rx_counter = 0;
      00C622 72 5F 02 24      [ 1] 3814 	clr	_ui8_rx_counter+0
                           0011E5  3815 	C$ebike_app.c$2066$4_0$609 ==.
                                   3816 ;	ebike_app.c: 2066: ui8_state_machine = 0;
      00C626 72 5F 02 27      [ 1] 3817 	clr	_ui8_state_machine+0
                           0011E9  3818 	C$ebike_app.c$2067$4_0$609 ==.
                                   3819 ;	ebike_app.c: 2067: ui8_received_package_flag = 1; // signal that we have a full package to be processed
      00C62A 35 01 02 23      [ 1] 3820 	mov	_ui8_received_package_flag+0, #0x01
                           0011ED  3821 	C$ebike_app.c$2068$4_0$609 ==.
                                   3822 ;	ebike_app.c: 2068: UART2->CR2 &= ~(1 << 5); // disable UART2 receive interrupt
      00C62E 72 1B 52 45      [ 1] 3823 	bres	21061, #5
                           0011F1  3824 	C$ebike_app.c$2074$1_0$604 ==.
                                   3825 ;	ebike_app.c: 2074: }
      00C632                       3826 00112$:
                           0011F1  3827 	C$ebike_app.c$2076$1_0$604 ==.
                                   3828 ;	ebike_app.c: 2076: }
                           0011F1  3829 	C$ebike_app.c$2076$1_0$604 ==.
                           0011F1  3830 	XG$UART2_IRQHandler$0$0 ==.
      00C632 80               [11] 3831 	iret
                           0011F2  3832 	G$get_configuration_variables$0$0 ==.
                           0011F2  3833 	C$ebike_app.c$2081$1_0$611 ==.
                                   3834 ;	ebike_app.c: 2081: struct_configuration_variables* get_configuration_variables(void)
                                   3835 ;	-----------------------------------------
                                   3836 ;	 function get_configuration_variables
                                   3837 ;	-----------------------------------------
      00C633                       3838 _get_configuration_variables:
                           0011F2  3839 	C$ebike_app.c$2083$1_0$611 ==.
                                   3840 ;	ebike_app.c: 2083: return &configuration_variables;
      00C633 AE 00 15         [ 2] 3841 	ldw	x, #(_configuration_variables + 0)
                           0011F5  3842 	C$ebike_app.c$2084$1_0$611 ==.
                                   3843 ;	ebike_app.c: 2084: }
                           0011F5  3844 	C$ebike_app.c$2084$1_0$611 ==.
                           0011F5  3845 	XG$get_configuration_variables$0$0 ==.
      00C636 81               [ 4] 3846 	ret
                           0011F6  3847 	Febike_app$check_system$0$0 ==.
                           0011F6  3848 	C$ebike_app.c$2089$1_0$612 ==.
                                   3849 ;	ebike_app.c: 2089: void check_system()
                                   3850 ;	-----------------------------------------
                                   3851 ;	 function check_system
                                   3852 ;	-----------------------------------------
      00C637                       3853 _check_system:
                           0011F6  3854 	C$ebike_app.c$2095$1_0$612 ==.
                                   3855 ;	ebike_app.c: 2095: if(ui8_system_state == ERROR_MOTOR_BLOCKED)
      00C637 C6 01 F9         [ 1] 3856 	ld	a, _ui8_system_state+0
      00C63A 4A               [ 1] 3857 	dec	a
      00C63B 26 15            [ 1] 3858 	jrne	00110$
                           0011FC  3859 	C$ebike_app.c$2098$2_0$613 ==.
                                   3860 ;	ebike_app.c: 2098: ui8_motor_blocked_reset_counter++;
      00C63D 72 5C 00 5B      [ 1] 3861 	inc	_check_system_ui8_motor_blocked_reset_counter_65536_612+0
                           001200  3862 	C$ebike_app.c$2101$2_0$613 ==.
                                   3863 ;	ebike_app.c: 2101: if(ui8_motor_blocked_reset_counter > MOTOR_BLOCKED_RESET_COUNTER_THRESHOLD)
      00C641 C6 00 5B         [ 1] 3864 	ld	a, _check_system_ui8_motor_blocked_reset_counter_65536_612+0
      00C644 A1 64            [ 1] 3865 	cp	a, #0x64
      00C646 23 32            [ 2] 3866 	jrule	00112$
                           001207  3867 	C$ebike_app.c$2104$3_0$614 ==.
                                   3868 ;	ebike_app.c: 2104: ui8_system_state = NO_ERROR;
      00C648 72 5F 01 F9      [ 1] 3869 	clr	_ui8_system_state+0
                           00120B  3870 	C$ebike_app.c$2107$3_0$614 ==.
                                   3871 ;	ebike_app.c: 2107: ui8_motor_blocked_reset_counter = 0;
      00C64C 72 5F 00 5B      [ 1] 3872 	clr	_check_system_ui8_motor_blocked_reset_counter_65536_612+0
      00C650 20 28            [ 2] 3873 	jra	00112$
      00C652                       3874 00110$:
                           001211  3875 	C$ebike_app.c$2113$2_0$615 ==.
                                   3876 ;	ebike_app.c: 2113: if((motor_get_adc_battery_current_filtered_10b() > MOTOR_BLOCKED_BATTERY_CURRENT_THRESHOLD_X5)&&
      00C652 CD B1 E9         [ 4] 3877 	call	_motor_get_adc_battery_current_filtered_10b
      00C655 A1 08            [ 1] 3878 	cp	a, #0x08
      00C657 23 1D            [ 2] 3879 	jrule	00106$
                           001218  3880 	C$ebike_app.c$2114$2_0$615 ==.
                                   3881 ;	ebike_app.c: 2114: (ui16_motor_get_motor_speed_erps() < MOTOR_BLOCKED_ERPS_THRESHOLD))
      00C659 CD B0 44         [ 4] 3882 	call	_ui16_motor_get_motor_speed_erps
      00C65C A3 00 0A         [ 2] 3883 	cpw	x, #0x000a
      00C65F 24 15            [ 1] 3884 	jrnc	00106$
                           001220  3885 	C$ebike_app.c$2117$3_0$616 ==.
                                   3886 ;	ebike_app.c: 2117: ui8_motor_blocked_counter++;
      00C661 72 5C 00 5A      [ 1] 3887 	inc	_check_system_ui8_motor_blocked_counter_65536_612+0
                           001224  3888 	C$ebike_app.c$2120$3_0$616 ==.
                                   3889 ;	ebike_app.c: 2120: if(ui8_motor_blocked_counter > MOTOR_BLOCKED_COUNTER_THRESHOLD)
      00C665 C6 00 5A         [ 1] 3890 	ld	a, _check_system_ui8_motor_blocked_counter_65536_612+0
      00C668 A1 1E            [ 1] 3891 	cp	a, #0x1e
      00C66A 23 0E            [ 2] 3892 	jrule	00112$
                           00122B  3893 	C$ebike_app.c$2123$4_0$617 ==.
                                   3894 ;	ebike_app.c: 2123: ui8_system_state = ERROR_MOTOR_BLOCKED;
      00C66C 35 01 01 F9      [ 1] 3895 	mov	_ui8_system_state+0, #0x01
                           00122F  3896 	C$ebike_app.c$2126$4_0$617 ==.
                                   3897 ;	ebike_app.c: 2126: ui8_motor_blocked_counter = 0;
      00C670 72 5F 00 5A      [ 1] 3898 	clr	_check_system_ui8_motor_blocked_counter_65536_612+0
      00C674 20 04            [ 2] 3899 	jra	00112$
      00C676                       3900 00106$:
                           001235  3901 	C$ebike_app.c$2132$3_0$618 ==.
                                   3902 ;	ebike_app.c: 2132: ui8_motor_blocked_counter = 0;
      00C676 72 5F 00 5A      [ 1] 3903 	clr	_check_system_ui8_motor_blocked_counter_65536_612+0
      00C67A                       3904 00112$:
                           001239  3905 	C$ebike_app.c$2135$1_0$612 ==.
                                   3906 ;	ebike_app.c: 2135: }
                           001239  3907 	C$ebike_app.c$2135$1_0$612 ==.
                           001239  3908 	XFebike_app$check_system$0$0 ==.
      00C67A 81               [ 4] 3909 	ret
                                   3910 	.area CODE
                                   3911 	.area CONST
                                   3912 	.area INITIALIZER
                           000000  3913 Febike_app$__xinit_ui8_throttle$0_0$0 == .
      008217                       3914 __xinit__ui8_throttle:
      008217 00                    3915 	.db #0x00	; 0
                           000001  3916 Febike_app$__xinit_ui8_torque_sensor$0_0$0 == .
      008218                       3917 __xinit__ui8_torque_sensor:
      008218 00                    3918 	.db #0x00	; 0
                           000002  3919 Febike_app$__xinit_ui8_torque_sensor_raw$0_0$0 == .
      008219                       3920 __xinit__ui8_torque_sensor_raw:
      008219 00                    3921 	.db #0x00	; 0
                           000003  3922 Febike_app$__xinit_f_pedal_torque_sensor_unit$0_0$0 == .
      00821A                       3923 __xinit__f_pedal_torque_sensor_unit:
      00821A 3F 0C CC CD           3924 	.byte #0x3f, #0x0c, #0xcc, #0xcd	;  5.500000e-001
                           000007  3925 Febike_app$__xinit_ui8_adc_torque_sensor_min_value$0_0$0 == .
      00821E                       3926 __xinit__ui8_adc_torque_sensor_min_value:
      00821E 00                    3927 	.db #0x00	; 0
                           000008  3928 Febike_app$__xinit_ui8_adc_torque_sensor_max_value$0_0$0 == .
      00821F                       3929 __xinit__ui8_adc_torque_sensor_max_value:
      00821F 00                    3930 	.db #0x00	; 0
                           000009  3931 Febike_app$__xinit_ui8_adc_battery_current_offset$0_0$0 == .
      008220                       3932 __xinit__ui8_adc_battery_current_offset:
      008220 00                    3933 	.db #0x00	; 0
                           00000A  3934 Febike_app$__xinit_ui8_ebike_app_state$0_0$0 == .
      008221                       3935 __xinit__ui8_ebike_app_state:
      008221 01                    3936 	.db #0x01	; 1
                           00000B  3937 Febike_app$__xinit_ui8_adc_target_battery_max_current$0_0$0 == .
      008222                       3938 __xinit__ui8_adc_target_battery_max_current:
      008222 00                    3939 	.db #0x00	; 0
                           00000C  3940 Febike_app$__xinit_ui8_adc_target_motor_max_current$0_0$0 == .
      008223                       3941 __xinit__ui8_adc_target_motor_max_current:
      008223 00                    3942 	.db #0x00	; 0
                           00000D  3943 Febike_app$__xinit_ui8_adc_battery_current_max$0_0$0 == .
      008224                       3944 __xinit__ui8_adc_battery_current_max:
      008224 00                    3945 	.db #0x00	; 0
                           00000E  3946 Febike_app$__xinit_ui8_adc_motor_current_max$0_0$0 == .
      008225                       3947 __xinit__ui8_adc_motor_current_max:
      008225 00                    3948 	.db #0x00	; 0
                           00000F  3949 Febike_app$__xinit_f_torque_assist_ratio$0_0$0 == .
      008226                       3950 __xinit__f_torque_assist_ratio:
      008226 00 00 00 00           3951 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           000013  3952 Febike_app$__xinit_ui8_system_state$0_0$0 == .
      00822A                       3953 __xinit__ui8_system_state:
      00822A 00                    3954 	.db #0x00	; 0
                           000014  3955 Febike_app$__xinit_ui16_pas_pwm_cycles_ticks$0_0$0 == .
      00822B                       3956 __xinit__ui16_pas_pwm_cycles_ticks:
      00822B 24 9F                 3957 	.dw #0x249f
                           000016  3958 Febike_app$__xinit_ui8_motor_enabled$0_0$0 == .
      00822D                       3959 __xinit__ui8_motor_enabled:
      00822D 01                    3960 	.db #0x01	; 1
                           000017  3961 Febike_app$__xinit_ui8_pedaling_direction$0_0$0 == .
      00822E                       3962 __xinit__ui8_pedaling_direction:
      00822E 00                    3963 	.db #0x00	; 0
                           000018  3964 Febike_app$__xinit_ui8_pas_direction$0_0$0 == .
      00822F                       3965 __xinit__ui8_pas_direction:
      00822F 00                    3966 	.db #0x00	; 0
                           000019  3967 Febike_app$__xinit_ui8_assist_level$0_0$0 == .
      008230                       3968 __xinit__ui8_assist_level:
      008230 00                    3969 	.db #0x00	; 0
                           00001A  3970 Febike_app$__xinit_ui8_pas_cadence_rpm$0_0$0 == .
      008231                       3971 __xinit__ui8_pas_cadence_rpm:
      008231 00                    3972 	.db #0x00	; 0
                           00001B  3973 Febike_app$__xinit_ui8_pas_backwards_cadence_rpm$0_0$0 == .
      008232                       3974 __xinit__ui8_pas_backwards_cadence_rpm:
      008232 00                    3975 	.db #0x00	; 0
                           00001C  3976 Febike_app$__xinit_ui16_pedal_torque_x10$0_0$0 == .
      008233                       3977 __xinit__ui16_pedal_torque_x10:
      008233 00 00                 3978 	.dw #0x0000
                           00001E  3979 Febike_app$__xinit_ui16_pedal_torque_x_cadence$0_0$0 == .
      008235                       3980 __xinit__ui16_pedal_torque_x_cadence:
      008235 00 00                 3981 	.dw #0x0000
                           000020  3982 Febike_app$__xinit_ui16_max_pedal_power_x_emtb_motor_pull_factor$0_0$0 == .
      008237                       3983 __xinit__ui16_max_pedal_power_x_emtb_motor_pull_factor:
      008237 00 00                 3984 	.dw #0x0000
                           000022  3985 Febike_app$__xinit_ui8_startup_boost_enable$0_0$0 == .
      008239                       3986 __xinit__ui8_startup_boost_enable:
      008239 00                    3987 	.db #0x00	; 0
                           000023  3988 Febike_app$__xinit_ui8_startup_boost_fade_enable$0_0$0 == .
      00823A                       3989 __xinit__ui8_startup_boost_fade_enable:
      00823A 00                    3990 	.db #0x00	; 0
                           000024  3991 Febike_app$__xinit_ui8_startup_boost_state_machine$0_0$0 == .
      00823B                       3992 __xinit__ui8_startup_boost_state_machine:
      00823B 00                    3993 	.db #0x00	; 0
                           000025  3994 Febike_app$__xinit_ui8_startup_boost_timer$0_0$0 == .
      00823C                       3995 __xinit__ui8_startup_boost_timer:
      00823C 00                    3996 	.db #0x00	; 0
                           000026  3997 Febike_app$__xinit_ui8_startup_boost_fade_steps$0_0$0 == .
      00823D                       3998 __xinit__ui8_startup_boost_fade_steps:
      00823D 00                    3999 	.db #0x00	; 0
                           000027  4000 Febike_app$__xinit_ui16_startup_boost_fade_variable_x256$0_0$0 == .
      00823E                       4001 __xinit__ui16_startup_boost_fade_variable_x256:
      00823E 00 00                 4002 	.dw #0x0000
                           000029  4003 Febike_app$__xinit_ui16_startup_boost_fade_variable_step_amount_x256$0_0$0 == .
      008240                       4004 __xinit__ui16_startup_boost_fade_variable_step_amount_x256:
      008240 00 00                 4005 	.dw #0x0000
                           00002B  4006 Febike_app$__xinit_ui16_wheel_speed_sensor_pwm_cycles_ticks$0_0$0 == .
      008242                       4007 __xinit__ui16_wheel_speed_sensor_pwm_cycles_ticks:
      008242 04 8E                 4008 	.dw #0x048e
                           00002D  4009 Febike_app$__xinit_f_wheel_speed_x10$0_0$0 == .
      008244                       4010 __xinit__f_wheel_speed_x10:
      008244 00 00 00 00           4011 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           000031  4012 Febike_app$__xinit_ui16_wheel_speed_x10$0_0$0 == .
      008248                       4013 __xinit__ui16_wheel_speed_x10:
      008248 00 00                 4014 	.dw #0x0000
                           000033  4015 Febike_app$__xinit_ui32_wheel_speed_sensor_tick_counter$0_0$0 == .
      00824A                       4016 __xinit__ui32_wheel_speed_sensor_tick_counter:
      00824A 00 00 00 00           4017 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                           000037  4018 Febike_app$__xinit_f_oem_wheel_speed$0_0$0 == .
      00824E                       4019 __xinit__f_oem_wheel_speed:
      00824E 00 00 00 00           4020 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           00003B  4021 Febike_app$__xinit_ui16_oem_wheel_speed$0_0$0 == .
      008252                       4022 __xinit__ui16_oem_wheel_speed:
      008252 00 00                 4023 	.dw #0x0000
                           00003D  4024 Febike_app$__xinit_ui8_received_package_flag$0_0$0 == .
      008254                       4025 __xinit__ui8_received_package_flag:
      008254 00                    4026 	.db #0x00	; 0
                           00003E  4027 Febike_app$__xinit_ui8_rx_counter$0_0$0 == .
      008255                       4028 __xinit__ui8_rx_counter:
      008255 00                    4029 	.db #0x00	; 0
                           00003F  4030 Febike_app$__xinit_ui8_tx_counter$0_0$0 == .
      008256                       4031 __xinit__ui8_tx_counter:
      008256 00                    4032 	.db #0x00	; 0
                           000040  4033 Febike_app$__xinit_ui8_byte_received$0_0$0 == .
      008257                       4034 __xinit__ui8_byte_received:
      008257 00                    4035 	.db #0x00	; 0
                           000041  4036 Febike_app$__xinit_ui8_state_machine$0_0$0 == .
      008258                       4037 __xinit__ui8_state_machine:
      008258 00                    4038 	.db #0x00	; 0
                           000042  4039 Febike_app$__xinit_ui8_tstr_state_machine$0_0$0 == .
      008259                       4040 __xinit__ui8_tstr_state_machine:
      008259 00                    4041 	.db #0x00	; 0
                           000043  4042 Febike_app$__xinit_ui8_rtst_counter$0_0$0 == .
      00825A                       4043 __xinit__ui8_rtst_counter:
      00825A 00                    4044 	.db #0x00	; 0
                           000044  4045 Febike_app$__xinit_ui16_adc_motor_temperatured_accumulated$0_0$0 == .
      00825B                       4046 __xinit__ui16_adc_motor_temperatured_accumulated:
      00825B 00 00                 4047 	.dw #0x0000
                           000046  4048 Febike_app$__xinit_ui8_overtemperature$0_0$0 == .
      00825D                       4049 __xinit__ui8_overtemperature:
      00825D 00                    4050 	.db #0x00	; 0
                           000047  4051 Febike_app$__xinit_ui8_adc_battery_target_current$0_0$0 == .
      00825E                       4052 __xinit__ui8_adc_battery_target_current:
      00825E 00                    4053 	.db #0x00	; 0
                           000048  4054 Febike_app$__xinit_ui8_adc_motor_target_current$0_0$0 == .
      00825F                       4055 __xinit__ui8_adc_motor_target_current:
      00825F 00                    4056 	.db #0x00	; 0
                           000049  4057 Febike_app$__xinit_ui8_brake_is_set$0_0$0 == .
      008260                       4058 __xinit__ui8_brake_is_set:
      008260 00                    4059 	.db #0x00	; 0
                           00004A  4060 Febike_app$__xinit_ui32_battery_voltage_accumulated_x10000$0_0$0 == .
      008261                       4061 __xinit__ui32_battery_voltage_accumulated_x10000:
      008261 00 00 00 00           4062 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                           00004E  4063 Febike_app$__xinit_ui16_battery_current_accumulated_x5$0_0$0 == .
      008265                       4064 __xinit__ui16_battery_current_accumulated_x5:
      008265 00 00                 4065 	.dw #0x0000
                           000050  4066 Febike_app$__xinit_ui8_battery_state_of_charge$0_0$0 == .
      008267                       4067 __xinit__ui8_battery_state_of_charge:
      008267 00                    4068 	.db #0x00	; 0
                           000051  4069 Febike_app$__xinit_f_soft_start_factor$0_0$0 == .
      008268                       4070 __xinit__f_soft_start_factor:
      008268 00 00 00 00           4071 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           000055  4072 Febike_app$__xinit_f_soft_start_factor_old$0_0$0 == .
      00826C                       4073 __xinit__f_soft_start_factor_old:
      00826C 00 00 00 00           4074 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
                           000059  4075 Febike_app$__xinit_ui16_soft_start_time$0_0$0 == .
      008270                       4076 __xinit__ui16_soft_start_time:
      008270 00 00                 4077 	.dw #0x0000
                           00005B  4078 Febike_app$__xinit_ui8_timer_counter$0_0$0 == .
      008272                       4079 __xinit__ui8_timer_counter:
      008272 00                    4080 	.db #0x00	; 0
                           00005C  4081 Febike_app$__xinit_ui8_startup_counter$0_0$0 == .
      008273                       4082 __xinit__ui8_startup_counter:
      008273 00                    4083 	.db #0x00	; 0
                           00005D  4084 Febike_app$__xinit_ui8_lights_counter$0_0$0 == .
      008274                       4085 __xinit__ui8_lights_counter:
      008274 00                    4086 	.db #0x00	; 0
                           00005E  4087 Febike_app$__xinit_ui16_walk_assist_delay_off$0_0$0 == .
      008275                       4088 __xinit__ui16_walk_assist_delay_off:
      008275 00 00                 4089 	.dw #0x0000
                           000060  4090 Febike_app$__xinit_ui8_walk_assist_delay_off_flag$0_0$0 == .
      008277                       4091 __xinit__ui8_walk_assist_delay_off_flag:
      008277 00                    4092 	.db #0x00	; 0
                           000061  4093 Febike_app$__xinit_ui8_display_ready_flag$0_0$0 == .
      008278                       4094 __xinit__ui8_display_ready_flag:
      008278 00                    4095 	.db #0x00	; 0
                           000062  4096 Febike_app$__xinit_ui8_enable_walk_assist$0_0$0 == .
      008279                       4097 __xinit__ui8_enable_walk_assist:
      008279 00                    4098 	.db #0x00	; 0
                           000063  4099 Febike_app$__xinit_ui8_walk_assist_flag$0_0$0 == .
      00827A                       4100 __xinit__ui8_walk_assist_flag:
      00827A 00                    4101 	.db #0x00	; 0
                           000064  4102 Febike_app$__xinit_ui8_walk_assist$0_0$0 == .
      00827B                       4103 __xinit__ui8_walk_assist:
      00827B 00                    4104 	.db #0x00	; 0
                           000065  4105 Febike_app$__xinit_ui8_walk_assist_current_per_cent$0_0$0 == .
      00827C                       4106 __xinit__ui8_walk_assist_current_per_cent:
      00827C 00                    4107 	.db #0x00	; 0
                           000066  4108 Febike_app$__xinit_ui8_walk_assist_start$0_0$0 == .
      00827D                       4109 __xinit__ui8_walk_assist_start:
      00827D 00                    4110 	.db #0x00	; 0
                           000067  4111 Febike_app$__xinit_ui8_walk_assist_pwm$0_0$0 == .
      00827E                       4112 __xinit__ui8_walk_assist_pwm:
      00827E 00                    4113 	.db #0x00	; 0
                           000068  4114 Febike_app$__xinit_ui8_walk_assist_pwm_step$0_0$0 == .
      00827F                       4115 __xinit__ui8_walk_assist_pwm_step:
      00827F 00                    4116 	.db #0x00	; 0
                           000069  4117 Febike_app$__xinit_ui8_default_flag$0_0$0 == .
      008280                       4118 __xinit__ui8_default_flag:
      008280 00                    4119 	.db #0x00	; 0
                           00006A  4120 Febike_app$__xinit_ui8_lights_flag$0_0$0 == .
      008281                       4121 __xinit__ui8_lights_flag:
      008281 00                    4122 	.db #0x00	; 0
                           00006B  4123 Febike_app$__xinit_ui8_mode_flag$0_0$0 == .
      008282                       4124 __xinit__ui8_mode_flag:
      008282 00                    4125 	.db #0x00	; 0
                           00006C  4126 Febike_app$__xinit_ui8_boost_flag$0_0$0 == .
      008283                       4127 __xinit__ui8_boost_flag:
      008283 00                    4128 	.db #0x00	; 0
                           00006D  4129 Febike_app$__xinit_ui8_emtb_flag$0_0$0 == .
      008284                       4130 __xinit__ui8_emtb_flag:
      008284 00                    4131 	.db #0x00	; 0
                                   4132 	.area CABS (ABS)
