
==============================================================================

                      TITAN input processor protocol file

           TITAN version 2024.03            2024-09-06 for WINNT

             Started at 2025-02-27 11:27:33 on host LAPTOP-33HE614J

==============================================================================
 

*** INFO [I-489] Preprocessing passed. 136 subcircuit definitions found.

*** WARNING [W-282] Preprocessing found 118 unused subcircuit(s) which will be
*** WARNING [W-282] ... excluded from further processing.

 (     1) (     1) $$$$ GENERATED TITAN NETLIST using revision 81e4570437
 (     2) (     2) 
 (     3) (     3) * ==== HEADER WITH GENERAL OPTIONS =======
 (     4) (     4) * Change syntax properties and semantics of some functions/operators
 (     5) (     5) .COMOPT COMPAT=PSPICE

*** INFO [I-312] The compatibility mode has been set to COMPAT=PSPICE by
*** INFO [I-312] ... .COMOPT COMPAT record.

 (     6) (     6) .COMOPT NAMES=RELAXED
 (     7) (     7) .COMOPT LEVEL=0
 (     8) (     8) .COMOPT MESSAGE SUPPRESS = E-027, E-091, E-238, E-458, E-636
 (     9) (     9) .OPTION DEFL=100u
 (    10) (    10) .OPTION DEFW=100u
 (    11) (    11) * Define some functions aliases which are typically used
 (    12) (    12) .FUNC iff(cond,then,else) = '(cond != 0)? then : else'
 (    13) (    13) .FUNC ln(x) = 'log(x)'
 (    14) (    14) * Define an alias for temperature evaluation
 (    15) (    15) .PARAM TEMP = 'TEMPER'
 (    16) (    16) 
 (    17) (    17) * ======= SPECIAL TITAN SETTINGS ======== 
 (    18) (    18) * Possible errors which will be suppressed
 (    19) (    19) .OPTION MESSAGE WARNING=707,708,700,596,593
 (    20) (    20) .OPTION MESSAGE WARNING=DP-0493

                   ------------------------^
*** WARNING [W-306(s)] Message groups no longer supported, ignored.

 (    21) (    21) * Show progress during simulation
 (    22) (    22) .OPTION PROGRESS=0.5 VERBOSE 
 (    23) (    23) * ---- Settings for robustness ---- 
 (    24) (    24) .TEST 737 
 (    25) (    25) .TEST 254 * TOL_LIMIT=200
 (    26) (    26) .TEST 253 
 (    27) (    27) .OPTION ITL4=80
 (    28) (    28) .COMOPT COMPAT=TITAN

*** INFO [I-312] The compatibility mode has been set to COMPAT=TITAN by .COMOPT
*** INFO [I-312] ... COMPAT record.

 (    29) (    29) .NLSOL
 (    30) (    30)    OP, DC FIRST, DC SWEEP:
 (    31) (    31)      NEWTON;
 (    32) (    32)      PSEUDO(PSALPHA=1e-5);
 (    33) (    33)      RAMP;
 (    34) (    34)    TRAN DC:
 (    35) (    35)      NEWTON;
 (    36) (    36)      PSEUDO;
 (    37) (    37)      RAMP(ACCEPT_QUIET_TRAN=1, MIN_SPREAD=10);
 (    38) (    38)      RAMP(RAMP_TIME=1E-6, ACCEPT_QUIET_TRAN=0, MIN_SPREAD=10, WAVEFORMS=1, SETTLE_TIME=100, DELMAX=100);
 (    39) (    39) .ENDNLSOL
 (    40) (    40) .COMOPT COMPAT=RESTORE

*** INFO [I-312] The compatibility mode has been restored to COMPAT=PSPICE by
*** INFO [I-312] ... .COMOPT COMPAT record.

 (    41) (    41) 
 (    42) (    42) * ======= SCHEMATIC START ======== 
 (    43) (    43) 
 (    44) (    44) .global 0
 (    45) (    45) .subckt 2edl05n06pf lo ho gnd lin hin vdd vb vs 
 (    46) (    46) r_hin hin gnd 1E12
 (    47) (    47) c_hin hin gnd 1F
 (    48) (    48) r_ho ho gnd 1E12
 (    49) (    49) c_ho ho gnd 1F
 (    50) (    50) r_vb vb gnd 1E12
 (    51) (    51) c_vb vb gnd 1F
 (    52) (    52) r_vs vs gnd 1E12
 (    53) (    53) c_vs vs gnd 1F
 (    54) (    54) r_lin lin gnd 1E12
 (    55) (    55) c_lin lin gnd 1F
 (    56) (    56) r_lo lo gnd 1E12
 (    57) (    57) c_out lo gnd 1F
 (    58) (    58) r_vcc vdd gnd 1E12
 (    59) (    59) c_vcc vdd gnd 1F
 (    60) (    60) e_sd sd gnd value = '5'
 (    61) (    61) r_dt dt gnd 1
 (    62) (    62) c_dt dt gnd 1P
 (    63) (    63) x_gd_template lo ho gnd lin hin vdd vb vs sd dt two_edl05n06pf_gd_template  * endx-call 
 (    64) (    64) .ends 2edl05n06pf
 (    65) (    65) .subckt two_edl05n06pf_gd_template lo ho com lin hin vcc vb vs sd dt hb_en='1' sht_en='0' p_offset_dt='7.5E-08' p_slope_dt='-0.0' p_sd_d='2.5714285714285715E-08' p_th_sd_up='2.1' p_th_sd_dw='0.9' p_c_tpd='6.2374E-08' p_th_tpd='0.5145856856' p_c_pw_min='2.78E-08' p_th_hin_off='0.9' p_th_lin_off='0.9' p_th_hin_on='2.1' p_th_lin_on='2.1' p_r_hin_cl='94285.71428571429' p_r_lin_cl='94285.71428571429' p_c_gate='1.2E-11' p_rbond_nmos='0.01' p_rbond_pmos='0.01' p_lo_vgs_nmos='3' p_lo_vgs_pmos='3' p_lpmos_lamda='0.5' p_lpmos_kp='2E-05' p_lnmos_lamda='0.394' p_lnmos_kp='4.9E-05' p_ho_vgs_nmos='3' p_ho_vgs_pmos='3' p_hpmos_lamda='0.5' p_hpmos_kp='2E-05' p_hnmos_lamda='0.394' p_hnmos_kp='4.9E-05' p_vcc_uvh='9.1' p_vcc_uvl='8.3' p_vb_uvl='8.3' p_vb_uvh='9.1' p_r_uv_d_h='2571428' p_r_uv_d_l='2571428' p_vcc_min='10' p_iq_vcc='0.00028' p_vb_min='10' p_iq_vb='0.00017' p_v_leak='600' p_i_leak='1E-06' p_r_bsd='52' p_n_bsd='1.2294559113268089' p_is_bsd='1E-17' 
 (    66) (    66) r_lin_clamp lin com 'P_R_LIN_CL'
 (    67) (    67) r_hin_clamp hin com 'P_R_HIN_CL'
 (    68) (    68) r_sd_clamp sd com 'P_R_LIN_CL'
 (    69) (    69) x_hin_vcc_d hin vcc two_edl05n06pf_esd_dio p_v_bv='1' p_i_bv='1M'  * endx-call 
 (    70) (    70) x_com_hin_d com hin two_edl05n06pf_esd_dio p_v_bv='1' p_i_bv='1M'  * endx-call 
 (    71) (    71) x_lin_vcc_d lin vcc two_edl05n06pf_esd_dio p_v_bv='1' p_i_bv='1M'  * endx-call 
 (    72) (    72) x_com_lin_d com lin two_edl05n06pf_esd_dio p_v_bv='1' p_i_bv='1M'  * endx-call 
 (    73) (    73) x_sd_vcc_d sd vcc two_edl05n06pf_esd_dio p_v_bv='1' p_i_bv='1M'  * endx-call 
 (    74) (    74) x_com_sd_d com sd two_edl05n06pf_esd_dio p_v_bv='1' p_i_bv='1M'  * endx-call 
 (    75) (    75) x_cl_hin hin com two_edl05n06pf_cl_dio p_v_bv='5.25' p_i_bv='0.1M'  * endx-call 
 (    76) (    76) x_cl_lin lin com two_edl05n06pf_cl_dio p_v_bv='5.25' p_i_bv='0.1M'  * endx-call 
 (    77) (    77) x_cl_vcc vcc com two_edl05n06pf_cl_dio p_v_bv='20' p_i_bv='1'  * endx-call 
 (    78) (    78) x_cl_vb vb vs two_edl05n06pf_cl_dio p_v_bv='20' p_i_bv='1'  * endx-call 
 (    79) (    79) d_bs_diode vcc vb two_edl05n06pf_bs_dio
 (    80) (    80) .model two_edl05n06pf_bs_dio d
 (    81) (    81) +is='P_IS_BSD' rs='P_R_BSD' n='P_N_BSD' 
 (    82) (    82) x_input_stage lin_dd hin_dd sd_dd lin hin sd com two_edl05n06pf_input_stage p_sd_d='P_SD_D' p_th_sd_up='P_TH_SD_UP' p_th_sd_dw='P_TH_SD_DW' p_c_tpd='P_C_TPD' p_th_tpd='P_TH_TPD' p_c_pw_min='P_C_PW_MIN' p_th_hin_off='P_TH_HIN_OFF' p_th_lin_off='P_TH_LIN_OFF' p_th_hin_on='P_TH_HIN_ON' p_th_lin_on='P_TH_LIN_ON'  * endx-call 
 (    83) (    83) x_deadtime lin_dt_dig hin_dt_dig lin_dd hin_dd dt vcc com vcc_uv two_edl05n06pf_deadtime p_slope_dt='P_SLOPE_DT' p_offset_dt='P_OFFSET_DT' hb_en='HB_EN' sht_en='SHT_EN'  * endx-call 
 (    84) (    84) x_ho_stage ho hin_dt_dig vcc_uv vb_uv sd_dd vb vs two_edl05n06pf_ho_stage p_rbond_pmos='P_RBOND_PMOS' p_rbond_nmos='P_RBOND_NMOS' p_c_gate='P_C_GATE' p_ho_vgs_pmos='P_HO_VGS_PMOS' p_hpmos_lamda='P_HPMOS_LAMDA' p_hpmos_kp='P_HPMOS_KP' p_ho_vgs_nmos='P_HO_VGS_NMOS' p_hnmos_lamda='P_HNMOS_LAMDA' p_hnmos_kp='P_HNMOS_KP'  * endx-call 
 (    85) (    85) x_lo_stage lo lin_dt_dig vcc_uv sd_dd vcc com two_edl05n06pf_lo_stage p_rbond_pmos='P_RBOND_PMOS' p_rbond_nmos='P_RBOND_NMOS' p_c_gate='P_C_GATE' p_lo_vgs_pmos='P_LO_VGS_PMOS' p_lpmos_lamda='P_LPMOS_LAMDA' p_lpmos_kp='P_LPMOS_KP' p_lo_vgs_nmos='P_LO_VGS_NMOS' p_lnmos_lamda='P_LNMOS_LAMDA' p_lnmos_kp='P_LNMOS_KP'  * endx-call 
 (    86) (    86) x_uv_detect vcc_uv vb_uv vcc vb com vs two_edl05n06pf_uv_detect p_vb_uvl='P_VB_UVL' p_vb_uvh='P_VB_UVH' p_r_uv_d_h='P_R_UV_D_H' p_vcc_uvl='P_VCC_UVL' p_vcc_uvh='P_VCC_UVH' p_r_uv_d_l='P_R_UV_D_L'  * endx-call 
 (    87) (    87) x_cc_emulator vcc com vb vs two_edl05n06pf_cc_emulator p_vb_min='P_VB_MIN' p_vcc_min='P_VCC_MIN' p_iq_vb='P_IQ_VB' p_iq_vcc='P_IQ_VCC' p_i_leak='P_I_LEAK' p_v_leak='P_V_LEAK'  * endx-call 
 (    88) (    88) .ends two_edl05n06pf_gd_template
 (    89) (    89) .subckt two_edl05n06pf_input_stage lin_dd hin_dd sd_dd lin hin sd com p_sd_d='5E-08' p_th_sd_up='2.1' p_th_sd_dw='1.1' p_c_tpd='1.9E-07' p_th_tpd='10E-9' p_th_hin_off='0.9' p_th_lin_off='0.9' p_th_hin_on='2.1' p_th_lin_on='2.1' p_c_pw_min='42E-9' 
 (    90) (    90) x_sd_th sd sd_dig com two_edl05n06pf_stp_ideal p_th_up='P_TH_SD_UP' p_th_dw='P_TH_SD_DW'  * endx-call 
 (    91) (    91) x_sd_dd sd_dig sd_dd two_edl05n06pf_rc_delay_10 p_c_delay='P_SD_D'  * endx-call 
 (    92) (    92) x_hin_th hin hin_dig com two_edl05n06pf_stp_ideal p_th_up='P_TH_HIN_ON' p_th_dw='P_TH_HIN_OFF'  * endx-call 
 (    93) (    93) x_hin_lpf hin_dig hin_lpf_dig two_edl05n06pf_adv_filter p_c_delay='1.45E-08'  * endx-call 
 (    94) (    94) x_hin_dd hin_lpf_dig hin_dd two_edl05n06pf_rc_delay_10 p_c_delay='5.8652E-08' p_th_tpd='0.5069963491'  * endx-call 
 (    95) (    95) x_lin_th lin lin_dig com two_edl05n06pf_stp_ideal p_th_up='P_TH_LIN_ON' p_th_dw='P_TH_LIN_OFF'  * endx-call 
 (    96) (    96) x_lin_lpf lin_dig lin_lpf_dig two_edl05n06pf_adv_filter p_c_delay='2.17E-08'  * endx-call 
 (    97) (    97) x_lin_dd lin_lpf_dig lin_dd two_edl05n06pf_rc_delay_10 p_c_delay='4.4222E-08' p_th_tpd='0.5092815206'  * endx-call 
 (    98) (    98) .ends two_edl05n06pf_input_stage
 (    99) (    99) .subckt two_edl05n06pf_deadtime lin_dt_dig hin_dt_dig lin hin dt vcc com vcc_uv hb_en='1' sht_en='0.0' p_slope_dt='2.43236451E-05' p_offset_dt='5.4E-07' p_i_dt='1E-06' p_c_dt='10P' p_th_up='0.5' 
 (   100) (   100) x_lin_dt lin lin_dd two_edl05n06pf_rc_delay_10 p_c_delay='0.3N'  * endx-call 
 (   101) (   101) x_hin_dt hin hin_dd two_edl05n06pf_rc_delay_10 p_c_delay='0.1N'  * endx-call 
 (   102) (   102) e_vcc_1v vcc_1v 0 value = 'TABLE( V(VCC,COM) , 0,0 , 3,0 , 6,1 )'
 (   103) (   103) g_dt vcc dt value = 'TABLE( V(VCC,DT) , 0,0 , 10M,{P_I_DT} )'
 (   104) (   104) e_hdt_pls hin_dt_pls 0 value = 'IF( ((V(HIN_DD) - V(LIN_DD)) > 0.1) | (V(HIN_DT_DIG) > 0.5) | ({HB_EN} < 0.5), 1.0 , 0.0 )'
 (   105) (   105) e_hin_dt hin_dt_dig 0 value = 'IF( ( ((V(HIN_DT_PLS) > 0.5) & (V(LOFF) > {P_TH_UP})) | {HB_EN} < 0.5 ) & (V(HIN_DD) > 0.5 ) & V( VCC_UV) > 0.5 , 1.0 , 0.0 )'
 (   106) (   106) e_ldt_pls lin_dt_pls 0 value = 'IF( ((V(LIN_DD) - V(HIN_DD)) > 0.1) | (V(LIN_DT_DIG) > 0.5) | ({HB_EN} < 0.5) , 1.0 , 0.0 )'
 (   107) (   107) e_lin_dt lin_dt_dig 0 value = 'IF( ( ((V(LIN_DT_PLS) > 0.5) & (V(HOFF) > {P_TH_UP})) | {HB_EN} < 0.5 ) & (V(LIN_DD) > 0.5 ) , 1.0 , 0.0 )'
 (   108) (   108) e_sht_h sht_h 0 value = 'IF( {SHT_EN} > 0.5 , V(HIN_DD) , V(HIN_DT_DIG) )'
 (   109) (   109) e_sht_l sht_l 0 value = 'IF( {SHT_EN} > 0.5 , V(LIN_DD) , V(LIN_DT_DIG) )'
 (   110) (   110) g_h_dt vcc_1v hoff value = 'TABLE( V(VCC_1V,HOFF) , 0,0 , 10M, I_DT( V(DT,COM) ) )'
 (   111) (   111) c_h_dt hoff 0 'P_C_DT'
 (   112) (   112) r_h_dt hoff 0 1E8
 (   113) (   113) s_h_dt hoff 0 sht_h 0 two_edl05n06pf_dt_sw
 (   114) (   114) g_l_dt vcc_1v loff value = 'TABLE( V(VCC_1V,LOFF) , 0,0 , 10M, I_DT( V(DT,COM) ) )'
 (   115) (   115) c_l_dt loff 0 'P_C_DT'
 (   116) (   116) r_l_dt loff 0 1E8
 (   117) (   117) s_l_dt loff 0 sht_l 0 two_edl05n06pf_dt_sw
 (   118) (   118) .func i_dt ( v_dt ) '{P_C_DT} * {P_TH_UP} / ({P_SLOPE_DT}/{P_I_DT}*V_DT + {P_OFFSET_DT})'
 (   119) (   119) .model two_edl05n06pf_dt_sw vswitch
 (   120) (   120) +ron='1' roff='100MEG' von='0.8' voff='0.2' 
 (   121) (   121) .ends two_edl05n06pf_deadtime
 (   122) (   122) .subckt two_edl05n06pf_ho_stage ho hin_dt_dig vcc_uv vb_uv sd_dd vb vs p_rbond_nmos='10M' p_rbond_pmos='10M' p_c_gate='1E-12' p_ho_vgs_pmos='6' p_hpmos_lamda='0.06' p_hpmos_kp='60U' p_ho_vgs_nmos='6' p_hnmos_lamda='0.05' p_hnmos_kp='100U' 
 (   123) (   123) r_hin_dt_dd hin_dt_dig hin_dt_dd 100
 (   124) (   124) c_hin_dt_dd hin_dt_dd 0 1N
 (   125) (   125) e_hin_pls hin_pls 0 value = 'IF( (V(HIN_DT_DIG) - V(HIN_DT_DD)) > 0.1 | ((V(HGATE_DIG) > 0.5) & V(HIN_DT_DIG)>0.5), 1.0,0.0 )'
 (   126) (   126) e_hgate_dig hgate_dig 0 value = 'IF( ( V(VB_UV) > 0.5 & V(HIN_PLS) > 0.5 & V(SD_DD) > 0.5 ) , 1.0,0.0 )'
 (   127) (   127) r_hgate hgate_dig hgate 1
 (   128) (   128) c_hgate hgate 0 'P_C_GATE'
 (   129) (   129) e_hgate_p vb hgate_p value = 'V(HGATE) * {P_HO_VGS_PMOS} * V(HGATE_DIG)'
 (   130) (   130) e_hgate_n hgate_n vs value = '(1 - V(HGATE)) * {P_HO_VGS_NMOS} * (1 - V(HGATE_DIG))'
 (   131) (   131) m_ho_pmos ho hgate_p vb vb two_edl05n06pf_ho_pmos
 (   132) (   132) m_ho_nmos ho hgate_n vs vs two_edl05n06pf_ho_nmos
 (   133) (   133) .model two_edl05n06pf_ho_pmos pmos
 (   134) (   134) +level='1' vto='-1' cgso='100P' w='1M' l='1U' rb='1' rg='10' rs='10M' rd='P_RBOND_PMOS' lambda='P_HPMOS_LAMDA' kp='P_HPMOS_KP' 
 (   135) (   135) .model two_edl05n06pf_ho_nmos nmos
 (   136) (   136) +level='1' vto='1' cgso='100P' w='1M' l='1U' rb='1' rg='10' rs='10M' rd='P_RBOND_NMOS' lambda='P_HNMOS_LAMDA' kp='P_HNMOS_KP' 
 (   137) (   137) .ends two_edl05n06pf_ho_stage
 (   138) (   138) .subckt two_edl05n06pf_lo_stage lo lin_dt_dig vcc_uv sd_dd vcc com p_rbond_nmos='10M' p_rbond_pmos='10M' p_c_gate='1E-12' p_lo_vgs_pmos='6' p_lpmos_lamda='0.06' p_lpmos_kp='60U' p_lo_vgs_nmos='6' p_lnmos_lamda='0.05' p_lnmos_kp='100U' 
 (   139) (   139) e_lgate_dig lgate_dig 0 value = 'IF( (V(VCC_UV) > 0.5 & V(LIN_DT_DIG) > 0.5 & V(SD_DD) > 0.5 ), 1.0,0.0 )'
 (   140) (   140) r_lgate lgate_dig lgate 1
 (   141) (   141) c_lgate lgate 0 'P_C_GATE'
 (   142) (   142) e_lgate_p vcc lgate_p value = 'V(LGATE) * {P_LO_VGS_PMOS} * V(LGATE_DIG)'
 (   143) (   143) e_lgate_n lgate_n com value = '(1 - V(LGATE)) * {P_LO_VGS_NMOS} * (1 - V(LGATE_DIG))'
 (   144) (   144) m_lo_pmos lo lgate_p vcc vcc two_edl05n06pf_lo_pmos
 (   145) (   145) m_lo_nmos lo lgate_n com com two_edl05n06pf_lo_nmos
 (   146) (   146) .model two_edl05n06pf_lo_pmos pmos
 (   147) (   147) +level='1' vto='-1' cgso='100P' w='1M' l='1U' rb='1' rg='10' rs='10M' rd='P_RBOND_PMOS' lambda='P_LPMOS_LAMDA' kp='P_LPMOS_KP' 
 (   148) (   148) .model two_edl05n06pf_lo_nmos nmos
 (   149) (   149) +level='1' vto='1' cgso='100P' w='1M' l='1U' rb='1' rg='10' rs='10M' rd='P_RBOND_NMOS' lambda='P_LNMOS_LAMDA' kp='P_LNMOS_KP' 
 (   150) (   150) .ends two_edl05n06pf_lo_stage
 (   151) (   151) .subckt two_edl05n06pf_uv_detect vcc_uv vb_uv vcc vb com vs p_vb_uvl='7' p_vb_uvh='8' p_r_uv_d_h='142857' p_vcc_uvl='8' p_vcc_uvh='9' p_r_uv_d_l='71428' 
 (   152) (   152) x_vb_uv vb vb_uv_dig vs two_edl05n06pf_stp_ideal p_th_up='P_VB_UVH' p_th_dw='P_VB_UVL'  * endx-call 
 (   153) (   153) e_vb_uvl vb_uvl 0 value = 'IF( V(VB,VS) < {P_VB_UVL} , 0.0 , 1.0 )'
 (   154) (   154) r_vb_uvl vb_uvl vb_uvl_lpf 'P_R_UV_D_H'
 (   155) (   155) c_vb_uvl vb_uvl_lpf 0 1P
 (   156) (   156) e_vb_uvl_pls vb_uvl_pls 0 value = 'IF( V(VB_UVL_LPF) < 0.5 | V(VB_UV) < 0.5 , 0.0 , 1.0 )'
 (   157) (   157) e_vb_uv vb_uv 0 value = 'IF( V(VB_UV_DIG) < 0.5 & V(VB_UVL_PLS) < 0.5 , 0.0 , 1.0 )'
 (   158) (   158) x_vcc_uv vcc vcc_uv_dig com two_edl05n06pf_stp_ideal p_th_up='P_VCC_UVH' p_th_dw='P_VCC_UVL'  * endx-call 
 (   159) (   159) e_vcc_uvl vcc_uvl 0 value = 'IF( V(VCC,COM) < {P_VCC_UVL} , 0.0 , 1.0 )'
 (   160) (   160) r_vcc_uvl vcc_uvl vcc_uvl_lpf 'P_R_UV_D_L'
 (   161) (   161) c_vcc_uvl vcc_uvl_lpf 0 1P
 (   162) (   162) e_vcc_uvl_pls vcc_uvl_pls 0 value = 'IF( V(VCC_UVL_LPF) < 0.5 | V(VCC_UV) < 0.5 , 0.0 , 1.0 )'
 (   163) (   163) e_vcc_uv vcc_uv 0 value = 'IF( V(VCC_UV_DIG) < 0.5 & V(VCC_UVL_PLS) < 0.5 , 0.0 , 1.0 )'
 (   164) (   164) .ends two_edl05n06pf_uv_detect
 (   165) (   165) .subckt two_edl05n06pf_cc_emulator vcc com vb vs p_vb_min='10' p_vcc_min='10' p_iq_vb='100U' p_iq_vcc='500U' p_i_leak='1.0U' p_v_leak='650' 
 (   166) (   166) g_qb vb vs value = 'TABLE(V(VB,VS) , 0,0 , 0.1,1U , 1,100U , 0.8*{P_VB_MIN},{P_IQ_VB})'
 (   167) (   167) r_qb vb vs 1E12
 (   168) (   168) g_qcc vcc com value = 'TABLE(V(VCC,COM) , 0,0 , 0.1,1U , 1,100U , 0.8*{P_VCC_MIN},{P_IQ_VCC})'
 (   169) (   169) r_qcc vcc com 1E12
 (   170) (   170) g_vb_leak vs com value = 'TABLE(V(VS,COM) , 0,0 , {P_V_LEAK},{P_I_LEAK})'
 (   171) (   171) r_vb_leak vs com 1E12
 (   172) (   172) .ends two_edl05n06pf_cc_emulator
 (   173) (   173) .subckt two_edl05n06pf_cl_dio c a p_v_bv='5' p_i_bv='1' 
 (   174) (   174) g_cl_dio c a value = 'TABLE(V(C,A) , 0,0 , {P_V_BV}*1.01,0 , {P_V_BV}*1.02,{P_I_BV} , 10*{P_V_BV}, 100*{P_I_BV} )'
 (   175) (   175) c_cl_dio c a 1P
 (   176) (   176) r_cl_dio c a 1E12
 (   177) (   177) .ends two_edl05n06pf_cl_dio
 (   178) (   178) .subckt two_edl05n06pf_esd_dio c a p_v_bv='5' p_i_bv='1' 
 (   179) (   179) g_cl_dio c a value = 'TABLE(V(C,A) , 0,0 , {P_V_BV}*1.01,0 , {P_V_BV}*1.02,{P_I_BV} , 10*{P_V_BV}, 10*{P_I_BV} )'
 (   180) (   180) c_cl_dio c a 1P
 (   181) (   181) r_cl_dio c a 1E12
 (   182) (   182) .ends two_edl05n06pf_esd_dio
 (   183) (   183) .subckt two_edl05n06pf_rc_delay_10 in out p_c_delay='60E-9' p_th_tpd='0.5' 
 (   184) (   184) x_d1 in out two_edl05n06pf_rc_delay_5 p_c_delay='P_C_DELAY' p_th_tpd='P_TH_TPD'  * endx-call 
 (   185) (   185) .ends two_edl05n06pf_rc_delay_10
 (   186) (   186) .subckt two_edl05n06pf_rc_delay_5 in out p_c_delay='60E-9' p_th_tpd='0.5' 
 (   187) (   187) x_d1 in d1 two_edl05n06pf_rc_delay_base p_c_delay='P_C_DELAY' p_th_tpd='P_TH_TPD'  * endx-call 
 (   188) (   188) x_d2 d1 d2 two_edl05n06pf_rc_delay_base p_c_delay='P_C_DELAY' p_th_tpd='P_TH_TPD'  * endx-call 
 (   189) (   189) x_d3 d2 d3 two_edl05n06pf_rc_delay_base p_c_delay='P_C_DELAY' p_th_tpd='P_TH_TPD'  * endx-call 
 (   190) (   190) x_d4 d3 d4 two_edl05n06pf_rc_delay_base p_c_delay='P_C_DELAY' p_th_tpd='P_TH_TPD'  * endx-call 
 (   191) (   191) x_d5 d4 out two_edl05n06pf_rc_delay_base p_c_delay='P_C_DELAY' p_th_tpd='P_TH_TPD'  * endx-call 
 (   192) (   192) .ends two_edl05n06pf_rc_delay_5
 (   193) (   193) .subckt two_edl05n06pf_rc_delay_base in out p_c_delay='60E-9' p_th_tpd='0.5' 
 (   194) (   194) r_delay in in_del 1
 (   195) (   195) c_delay in_del 0 'P_C_DELAY'
 (   196) (   196) e_delay out 0 value = 'IF( V(IN_DEL) > {P_TH_TPD} , 1.0,0.0 )'
 (   197) (   197) .ends two_edl05n06pf_rc_delay_base
 (   198) (   198) .subckt two_edl05n06pf_adv_filter in out p_c_delay='60E-9' p_th_tpd='0.5' 
 (   199) (   199) r_rise in in_del 1
 (   200) (   200) c_rise in_del 0 'P_C_DELAY'
 (   201) (   201) x_cmp in_del out 0 two_edl05n06pf_stp_ideal p_th_up='0.999' p_th_dw='0.001'  * endx-call 
 (   202) (   202) .ends two_edl05n06pf_adv_filter
 (   203) (   203) .subckt two_edl05n06pf_stp_ideal in out gnd p_th_up='0.9' p_th_dw='0.1' 
 (   204) (   204) e_outp outp 0 value = 'IF( V(IN,GND)>={P_TH_UP} | V(OUTN)<0.5 , 1,0 )'
 (   205) (   205) e_outn outn 0 value = 'IF( V(IN,GND)<={P_TH_DW} | V(OUTP)<0.5 , 1,0 )'
 (   206) (   206) e_out out 0 value = 'V(OUTP)'
 (   207) (   207) .ends two_edl05n06pf_stp_ideal
                   Unused block skipped from 208 until 340
                   	 'Subckt' with name 'two_edl05n06pf_stp_ideal1'
                   	 'Subckt' with name 'two_edl05n06pf_stn_ideal'
                   	 'Subckt' with name 'two_edl05n06pf_stn_ideal1'
                   	 'Subckt' with name 'a6_40_d_var'
 (   340) (   340) .subckt a6_40_d1_var dd g s0 sp tj a='1' dvth='0' drdson='0' dgfs='0' dc='0' dvbr='0' inn='1' unn='1' rmax='0' gmin='1' rsp='1' rs='1' rp='1' rmet='1u' 
 (   341) (   341) .param dvthmax='0.4'
 (   342) (   342) .param dcmax='0.3'
 (   343) (   343) .param dvbrmax='3.15'
 (   344) (   344) .param fm='0.05'
 (   345) (   345) .param fn='1'
 (   346) (   346) .param al='0.5'
 (   347) (   347) .param c='0.95'
 (   348) (   348) .param vth0='3.51'
 (   349) (   349) .param auth='3.0m'
 (   350) (   350) .param ut='84.76m'
 (   351) (   351) .param ab='20.15m'
 (   352) (   352) .param lb='-23'
 (   353) (   353) .param ub='41.4'
 (   354) (   354) .param b0='143.8'
 (   355) (   355) .param p0='6.094'
 (   356) (   356) .param p1='-15.32m'
 (   357) (   357) .param p2='26.44u'
 (   358) (   358) .param rd='3.52m'
 (   359) (   359) .param nmu='3.214'
 (   360) (   360) .param tref='298'
 (   361) (   361) .param t0='273'
 (   362) (   362) .param lnisj='-27.1'
 (   363) (   363) .param ndi='1.063'
 (   364) (   364) .param nisj='3.00'
 (   365) (   365) .param rdi='0.717m'
 (   366) (   366) .param nmu2='1.616'
 (   367) (   367) .param td='20n'
 (   368) (   368) .param ta='2n'
 (   369) (   369) .param rf='0.6'
 (   370) (   370) .param nmu3='1.1'
 (   371) (   371) .param kbq='86.2u'
 (   372) (   372) .param f3='544.8p'
 (   373) (   373) .param f3a='31.78p'
 (   374) (   374) .param q81='31.98p'
 (   375) (   375) .param qs1='58.61p'
 (   376) (   376) .param qs2='548.4p'
 (   377) (   377) .param qs3='-85.34m'
 (   378) (   378) .param qs4='46.61p'
 (   379) (   379) .param qs5='-8.081m'
 (   380) (   380) .param x0='12.88'
 (   381) (   381) .param x1='25.56'
 (   382) (   382) .param dx='x1-x0'
 (   383) (   383) .param f2r='178.9m'
 (   384) (   384) .param ps0='27.7p'
 (   385) (   385) .param ps1='55.67p'
 (   386) (   386) .param ps2='-159.6m'
 (   387) (   387) .param ps3='6.027p'
 (   388) (   388) .param ps4='-1.123m'
 (   389) (   389) .param ps5='8.05f'
 (   390) (   390) .param ps6='7.499p'
 (   391) (   391) .param f5='27.9p'
 (   392) (   392) .param x2='7.131'
 (   393) (   393) .param x3='25.52'
 (   394) (   394) .param dx2='x3-x2'
 (   395) (   395) .param vth='Vth0+dVthmax*dVth'
 (   396) (   396) .param q0='b0*((T0/Tref)**nmu3)*a'
 (   397) (   397) .param q1='(Unn-Inn*Rs-Vth0)*q0'
 (   398) (   398) .param q2='(Fm*sqrt(0.4)-c)*Inn*q0'
 (   399) (   399) .param rlim='(q1+2*q2*Rmax-sqrt(max(q1**2+4*q2,0)))/(2*q2)'
 (   400) (   400) .param drd='Rd/a+if(dVth==0,limit(dRdson,0,1)*max(Rlim-Rd/a-Rs-Rp,0),0)'
 (   401) (   401) .param bm='c/((1/gmin-Rs)**2*Inn*a*(T0/Tref)**nmu3)'
 (   402) (   402) .param bet='b0+(b0-bm)*if(dRdson==0,if(dVth==0,limit(dgfs,-1,0),0),0)'
 (   403) (   403) .param dc1='1+dCmax*limit(dC,0,1)'
 (   404) (   404) .param cgs0='f3*a*dC1'
 (   405) (   405) .param cgs1='f3a*a*dC1'
 (   406) (   406) .param drdi='Rdi/a'
 (   407) (   407) .param cox1='(ps1*a+ps0*sqrt(a))*dC1'
 (   408) (   408) .param cox2='ps3*a*dC1'
 (   409) (   409) .param cox3='(ps5*a+ps6)*dC1'
 (   410) (   410) .param cox4='(f5*a+(ps5*a+ps6))*dC1'
 (   411) (   411) .param cds0='qs1*a*dC1'
 (   412) (   412) .param cds1='qs2*(1+f2r/sqrt(a))*a*dC1'
 (   413) (   413) .param cds2='qs4*a*dC1'
 (   414) (   414) .param cds3='(q81+qs1)*a*dC1'
 (   415) (   415) .func vbr ( usps ) 'UB+dVbrmax*dVbr'
 (   416) (   416) .func i0 ( uee , p , pp , z1 ) 'if(Uee>pp,(Uee-c*z1)*z1,p*(pp-p)/c*exp((Uee-pp)/p))'
 (   417) (   417) .func ig ( uds , t , p , uee ) 'bet*(T0/T)**nmu3*I0(Uee,p,min(2*p,p+c*Uds),min(Uds,Uee/(2*c)))'
 (   418) (   418) .func j ( d , g , t , da , s , usps ) 'a*(s*(Ig(da,T,(p0+(p1+p2*T)*T)*kbq*T,g-Vth+auth*(T-Tref)+Fm*da**Fn+1*limit(-d,0,1))+ exp(min(lB+(d-VBR(Usps)-ab*(T-Tref))/UT,25))))'
 (   419) (   419) .func idiode ( usd , tj , iss ) 'exp(min(log(Iss)+Usd/(ndi*kbq*Tj),7))-Iss'
 (   420) (   420) .func idiod ( usd , tj ) 'a*Idiode(Usd,Tj,exp(min(lnIsj+(Tj/Tref-1)*1.12/(ndi*kbq*Tj),7))*(Tj/Tref)**nisj)'
 (   421) (   421) .func pr ( vss0 , vssp ) 'Vss0*Vss0/max(Rmet,1u)+Vssp*Vssp/Rsp'
 (   422) (   422) .func qcds ( x ) 'Cds3*min(x,x1)+Cds0*max(x-x1,0)+(Cds3-Cds0)*((limit(x,x0,x1)-x0)**3/(dx*dx)*((limit(x,x0,x1)-x0)/(2*dx)-1))'
 (   423) (   423) .func qcdg ( x ) 'Cox4*min(x,x3)+Cox3*max(x-x3,0)+(Cox4-Cox3)*((limit(x,x2,x3)-x2)**3/(dx2*dx2)*((limit(x,x2,x3)-x2)/(2*dx2)-1))'
 (   424) (   424) e_edg1 d ox value = 'if(V(d,g)>0,V(d,g)-(exp(ps2*max(V(d,g),0))-1)/ps2,0)'
 (   425) (   425) c_cdg1 ox g 'Cox1'
 (   426) (   426) e_edg2 d ox1 value = 'if(V(d,g)>0,V(d,g)-(exp(ps4*max(V(d,g),0))-1)/ps4,0)'
 (   427) (   427) c_cdg2 ox1 g 'Cox2'
 (   428) (   428) e_edg3 d ox2 value = 'V(d,g)-QCdg(V(d,g))/Cox4'
 (   429) (   429) c_cdg3 ox2 g 'Cox4'
 (   430) (   430) e_eds d edep value = 'V(d,s)-QCds(V(d,s))/Cds3'
 (   431) (   431) c_cds edep s 'Cds3/2'
 (   432) (   432) e_eds1 d edep1 value = 'V(d,sp)-QCds(V(d,sp))/Cds3'
 (   433) (   433) c_cds1 edep1 sp 'Cds3/2'
 (   434) (   434) e_eds2 d edep2 value = 'if(V(d,sp)>0,V(d,sp)-(exp(qs5*max(V(d,sp),0))-1)/qs5,0)'
 (   435) (   435) c_cds2 edep2 sp 'Cds2'
 (   436) (   436) e_eds3 d edep3 value = 'if(V(d,sp)>0,V(d,sp)-(exp(qs3*max(V(d,sp),0))-1)/qs3,0)'
 (   437) (   437) c_cds3 edep3 sp 'Cds1'
 (   438) (   438) c_cgs g s 'Cgs0'
 (   439) (   439) c_cgs1 g sp 'Cgs1'
 (   440) (   440) r_fp s sp 'Rsp'
 (   441) (   441) g_chan d5a s value = 'J(V(d5a,s),V(g,s),T0+limit(V(Tj),-200,300),(sqrt(1+4*al*abs(V(d5a,s)))-1)/2/al,sgn(V(d5a,s)),V(sp,s))'
 (   442) (   442) r_d06 d5a d5 1u
 (   443) (   443) v_sm d d5 0
 (   444) (   444) g_rmos d1 d value = 'V(d1,d)/(Rf*dRd+(1-Rf)*dRd*((limit(V(Tj),-200,999)+T0)/Tref)**nmu)'
 (   445) (   445) v_sense dd d1 0
 (   446) (   446) g_diode s d3 value = 'Idiod(V(s,d3),T0+limit(V(Tj),-200,499))'
 (   447) (   447) g_rdio d2 d1 value = 'V(d2,d1)/(dRdi*((limit(V(Tj),-200,999)+T0)/Tref)**nmu2)'
 (   448) (   448) v_sense2 d2 d3 0
 (   449) (   449) r_1 g s 1G
 (   450) (   450) r_d01 d s 1G
 (   451) (   451) r_d02 d2 s 1G
 (   452) (   452) r_d03 d1 d 1k
 (   453) (   453) r_ssp g sp 100Meg
 (   454) (   454) r_met s s0 'Rmet'
 (   455) (   455) g_th 0 tj value = '(I(V_sense)-I(V_sense2))*V(d1,d)+I(V_sm)*V(d,s)+I(V_sense2)*V(d1,s)+Pr(V(s,s0),V(s,sp))'
 (   456) (   456) .ends a6_40_d1_var
                   Unused block skipped from 457 until 2605
                   	 'Subckt' with name 'a6_40_e_var'
                   	 'Subckt' with name 'a6_40_e1_var'
                   	 'Subckt' with name 'iaua250n04s6n005'
                   	 'Subckt' with name 'iaua250n04s6n007e'
                   	 'Subckt' with name 'iaua250n04s6n008'
                   	 'Subckt' with name 'iaucn04s6n007t'
                   	 'Subckt' with name 'iaucn04s6n009t'
                   	 'Subckt' with name 'iaucn04s6n013t'
                   	 'Subckt' with name 'iaucn04s6n017t'
                   	 'Subckt' with name 'iauc120n04s6l005'
                   	 'Subckt' with name 'iauc120n04s6n006'
                   	 'Subckt' with name 'iauc120n04s6l008'
                   	 'Subckt' with name 'iauc120n04s6n008'
                   	 'Subckt' with name 'iauc120n04s6n009'
                   	 'Subckt' with name 'iauc120n04s6l009'
                   	 'Subckt' with name 'iauc120n04s6n010'
                   	 'Subckt' with name 'iauc120n04s6l012'
                   	 'Subckt' with name 'iauc120n04s6n013'
                   	 'Subckt' with name 'iauc100n04s6l014'
                   	 'Subckt' with name 'iauc100n04s6n015'
                   	 'Subckt' with name 'iauc100n04s6l020'
                   	 'Subckt' with name 'iauc100n04s6n022'
                   	 'Subckt' with name 'iauc100n04s6l025'
                   	 'Subckt' with name 'iauc100n04s6n028'
                   	 'Subckt' with name 'iauc80n04s6l032'
                   	 'Subckt' with name 'iauc80n04s6n036'
                   	 'Subckt' with name 'iauc60n04s6l039'
                   	 'Subckt' with name 'iauc60n04s6n044'
                   	 'Subckt' with name 'iauc60n04s6l030'
                   	 'Subckt' with name 'iauc60n04s6l030h'
                   	 'Subckt' with name 'iauc60n04s6n031'
                   	 'Subckt' with name 'iauc60n04s6n031h'
                   	 'Subckt' with name 'iauc60n04s6l045'
                   	 'Subckt' with name 'iauc60n04s6l045h'
                   	 'Subckt' with name 'iauc60n04s6n050'
                   	 'Subckt' with name 'iauc60n04s6n050h'
                   	 'Subckt' with name 'iauc45n04s6l063'
                   	 'Subckt' with name 'iauc45n04s6l063h'
                   	 'Subckt' with name 'iauc45n04s6n070'
                   	 'Subckt' with name 'iauc45n04s6n070h'
                   	 'Subckt' with name 'iaua250n04s6n005_l1'
                   	 'Subckt' with name 'iaua250n04s6n007e_l1'
                   	 'Subckt' with name 'iaua250n04s6n008_l1'
                   	 'Subckt' with name 'iaucn04s6n007t_l1'
                   	 'Subckt' with name 'iaucn04s6n009t_l1'
                   	 'Subckt' with name 'iaucn04s6n013t_l1'
                   	 'Subckt' with name 'iaucn04s6n017t_l1'
                   	 'Subckt' with name 'iauc120n04s6l005_l1'
                   	 'Subckt' with name 'iauc120n04s6n006_l1'
                   	 'Subckt' with name 'iauc120n04s6l008_l1'
                   	 'Subckt' with name 'iauc120n04s6n008_l1'
                   	 'Subckt' with name 'iauc120n04s6n009_l1'
                   	 'Subckt' with name 'iauc120n04s6l009_l1'
                   	 'Subckt' with name 'iauc120n04s6n010_l1'
                   	 'Subckt' with name 'iauc120n04s6l012_l1'
                   	 'Subckt' with name 'iauc120n04s6n013_l1'
                   	 'Subckt' with name 'iauc100n04s6l014_l1'
                   	 'Subckt' with name 'iauc100n04s6n015_l1'
                   	 'Subckt' with name 'iauc100n04s6l020_l1'
                   	 'Subckt' with name 'iauc100n04s6n022_l1'
                   	 'Subckt' with name 'iauc100n04s6l025_l1'
                   	 'Subckt' with name 'iauc100n04s6n028_l1'
                   	 'Subckt' with name 'iauc80n04s6l032_l1'
                   	 'Subckt' with name 'iauc80n04s6n036_l1'
                   	 'Subckt' with name 'iauc60n04s6l039_l1'
                   	 'Subckt' with name 'iauc60n04s6n044_l1'
                   	 'Subckt' with name 'iauc60n04s6l030_l1'
                   	 'Subckt' with name 'iauc60n04s6l030h_l1'
 (  2605) (  2605) .subckt iauc60n04s6n031_l1 drain gate source dvth='0' drdson='0' dgfs='0' dc='0' dvbr='0' ls='0.05n' ld='1n' lg='3n' 
 (  2606) (  2606) .param rs='650u'
 (  2607) (  2607) .param rg='3.3'
 (  2608) (  2608) .param rd='5u'
 (  2609) (  2609) .param rmet='330u'
 (  2610) (  2610) .param inn='30'
 (  2611) (  2611) .param unn='10'
 (  2612) (  2612) .param rmax='3.1m'
 (  2613) (  2613) .param gmin='25'
 (  2614) (  2614) .param act='2.52'
 (  2615) (  2615) .param rsp='2.4'
 (  2616) (  2616) x_1 d1 g s sp tj1 a6_40_d1_var a='act' dvth='dVth' drdson='dRdson' dgfs='dgfs' dc='dC' dvbr='dVbr' inn='Inn' unn='Unn' rmax='Rmax' gmin='gmin' rsp='Rsp' rs='Rs' rp='Rd' rmet='Rmet'  * endx-call 
 (  2617) (  2617) r_g g1 g 'Rg'
 (  2618) (  2618) l_g gate g1 'Lg*if(dgfs==99,0,1)'
 (  2619) (  2619) g_s s1 s value = 'V(s1,s)/(Rs*(1+(limit(V(Tj),-200,999)-25)*4m)-Rmet)'
 (  2620) (  2620) r_sa s1 s 1Meg
 (  2621) (  2621) l_s source s1 'Ls*if(dgfs==99,0,1)'
 (  2622) (  2622) r_da d1 d2 'Rd'
 (  2623) (  2623) l_d drain d2 'Ld*if(dgfs==99,0,1)'
 (  2624) (  2624) r_daux drain d2 10
 (  2625) (  2625) r_gaux gate g1 10
 (  2626) (  2626) r_saux source s1 10
 (  2627) (  2627) e_2 tj w value = 'TEMP'
 (  2628) (  2628) v_p tj1 tj 0
 (  2629) (  2629) r_1 tj tj1 1u
 (  2630) (  2630) g_power 0 tj value = 'V(s1,s)*V(s1,s)/(Rs*(1+(limit(V(Tj),-200,999)-25)*4m)-Rmet)+V(g,g1)*V(g,g1)/Rg+V(d1,d2)*V(d1,d2)/Rd+I(V_p)'
 (  2631) (  2631) r_2 w 0 1u
 (  2632) (  2632) .ends iauc60n04s6n031_l1
 (  2633) (  2633) .subckt iauc60n04s6n031h_l1 battery gate1 gate2 ground phase dvth1='0' dvth2='0' drdson1='0' drdson2='0' dgfs1='0' dgfs2='0' dc1='0' dc2='0' dvbr1='0' dvbr2='0' ls1='0.05n' ld1='1n' lg1='3n' ls2='0.05n' ld2='1n' lg2='3n' 
 (  2634) (  2634) x_1 battery gate1 phase iauc60n04s6n031_l1 dvth='dVth1' drdson='dRdson1' dgfs='dgfs1' dc='dC1' dvbr='dVbr1' dls='Ls1' ld='Ld1*2' lg='Lg1'  * endx-call 
 (  2635) (  2635) x_2 phase gate2 ground iauc60n04s6n031_l1 dvth='dVth2' drdson='dRdson2' dgfs='dgfs2' dc='dC2' dvbr='dVbr2' dls='Ls2' ld='Ld2*2' lg='Lg2'  * endx-call 
 (  2636) (  2636) .ends iauc60n04s6n031h_l1
                   Unused block skipped from 2637 until 3941
                   	 'Subckt' with name 'iauc60n04s6l045_l1'
                   	 'Subckt' with name 'iauc60n04s6l045h_l1'
                   	 'Subckt' with name 'iauc60n04s6n050_l1'
                   	 'Subckt' with name 'iauc60n04s6n050h_l1'
                   	 'Subckt' with name 'iauc45n04s6l063_l1'
                   	 'Subckt' with name 'iauc45n04s6l063h_l1'
                   	 'Subckt' with name 'iauc45n04s6n070_l1'
                   	 'Subckt' with name 'iauc45n04s6n070h_l1'
                   	 'Subckt' with name 'iaua250n04s6n005_l0'
                   	 'Subckt' with name 'iaua250n04s6n007e_l0'
                   	 'Subckt' with name 'iaua250n04s6n008_l0'
                   	 'Subckt' with name 'iaucn04s6n007t_l0'
                   	 'Subckt' with name 'iaucn04s6n009t_l0'
                   	 'Subckt' with name 'iaucn04s6n013t_l0'
                   	 'Subckt' with name 'iaucn04s6n017t_l0'
                   	 'Subckt' with name 'iauc120n04s6l005_l0'
                   	 'Subckt' with name 'iauc120n04s6n006_l0'
                   	 'Subckt' with name 'iauc120n04s6l008_l0'
                   	 'Subckt' with name 'iauc120n04s6n008_l0'
                   	 'Subckt' with name 'iauc120n04s6n009_l0'
                   	 'Subckt' with name 'iauc120n04s6l009_l0'
                   	 'Subckt' with name 'iauc120n04s6n010_l0'
                   	 'Subckt' with name 'iauc120n04s6l012_l0'
                   	 'Subckt' with name 'iauc120n04s6n013_l0'
                   	 'Subckt' with name 'iauc100n04s6l014_l0'
                   	 'Subckt' with name 'iauc100n04s6n015_l0'
                   	 'Subckt' with name 'iauc100n04s6l020_l0'
                   	 'Subckt' with name 'iauc100n04s6n022_l0'
                   	 'Subckt' with name 'iauc100n04s6l025_l0'
                   	 'Subckt' with name 'iauc100n04s6n028_l0'
                   	 'Subckt' with name 'iauc80n04s6l032_l0'
                   	 'Subckt' with name 'iauc80n04s6n036_l0'
                   	 'Subckt' with name 'iauc60n04s6l039_l0'
                   	 'Subckt' with name 'iauc60n04s6n044_l0'
                   	 'Subckt' with name 'iauc60n04s6l030_l0'
                   	 'Subckt' with name 'iauc60n04s6l030h_l0'
                   	 'Subckt' with name 'iauc60n04s6n031_l0'
                   	 'Subckt' with name 'iauc60n04s6n031h_l0'
                   	 'Subckt' with name 'iauc60n04s6l045_l0'
                   	 'Subckt' with name 'iauc60n04s6l045h_l0'
                   	 'Subckt' with name 'iauc60n04s6n050_l0'
                   	 'Subckt' with name 'iauc60n04s6n050h_l0'
                   	 'Subckt' with name 'iauc45n04s6l063_l0'
                   	 'Subckt' with name 'iauc45n04s6l063h_l0'
                   	 'Subckt' with name 'iauc45n04s6n070_l0'
                   	 'Subckt' with name 'iauc45n04s6n070h_l0'
 (  3941) (  3941) .model _defaultidealdiodemodel d
 (  3942) (  3942) +
 (  3943) (  3943) c1 n8_1 0 c = '1e-08'
 (  3944) (  3944) c0 n1_1 output c = '1e-06'
 (  3945) (  3945) l0 n26_1 0 l = '0.001'
 (  3946) (  3946) r1 n3_3 output r = '10000'
 (  3947) (  3947) r2 n2_2 n4_1 r = '33'
 (  3948) (  3948) r0 n2_2 csense r = '10000'
 (  3949) (  3949) v1 n3_4 0 dc = '24'
 (  3950) (  3950) r5 n4_3 n3_3 r = '33'
 (  3951) (  3951) r4 output n8_1 r = '1'
 (  3952) (  3952) r3 0 csense r = '0.003'
 (  3953) (  3953) v2 n4_8 0 dc = '24'
 (  3954) (  3954) v3 in1 0 pulse ( '0' '3.3' '1.01e-05' '1e-08' '1e-08' '9.9e-06' '2e-05' )
 (  3955) (  3955) r6 output n26_1 r = '10'
 (  3956) (  3956) v0 in2 0 pulse ( '3.3' '0' '9.9e-06' '1e-08' '1e-08' '1.01e-05' '2e-05' )
 (  3957) (  3957) x1 n4_1 n4_3 0 in2 in1 n4_8 n1_1 output 2EDL05N06PF  * endx-call 
 (  3958) (  3958) x0 n3_4 n3_3 n2_2 csense output iauc60n04s6n031h_l1  * endx-call 
 (  3959) (  3959) .tran '1m/1000.0' '1m'
 (  3960) (  3960) .output tran level = 0 v ( * ) v ( 0 )
 (  3961) (  3961) .output tran level = 0 i ( * , * )
 (  3962) (  3962) .temp 27 uet
 (  3963) (  3963) .param temp='27'

                   -------^
*** WARNING [W-328] Redefinition of global parameter 'TEMP'.

 (  3964) (  3964) .option accuracy = standard

*** INFO [I-582] Setting option TRITOL to 20.

*** INFO [I-582] Setting option TRITLL to 10.

*** INFO [I-582] Setting option LTERATIO to 20.

*** INFO [I-485] Setting option RELREF to ALLGLOBAL.

*** INFO [I-582] Setting option RELTOL to 0.001.

*** INFO [I-582] Setting option CHGTOL to 1e-14.

*** INFO [I-582] Setting option FLXTOL to 1e-14.

*** INFO [I-582] Setting option CHGHRT to 0.001.

*** INFO [I-582] Setting option FLXHRT to 0.001.

*** INFO [I-582] Setting option TRICAT to 1e-12.

*** INFO [I-582] Setting option TRIVAT to 1e-06.

*** INFO [I-582] Setting option RESCAT to 1e-08.

*** INFO [I-582] Setting option RESCRT to 1e-08.

*** INFO [I-582] Setting option ABSTOL to 1e-12.

*** INFO [I-582] Setting option VNTOL to 1e-06.

*** INFO [I-582] Setting option DELSTART to 1e-11.

*** INFO [I-582] Setting option DELMIN to 1e-16.

*** INFO [I-582] Setting option TRNEWT_RLX to 1.

*** INFO [I-582] Setting option FRTOLS to 0.001.

*** INFO [I-582] Setting option FRTOLF to 1e-05.

 (  3965) (  3965) .option rshunt = 1.0G
 (  3966) (  3966) .option csdf 
 (  3967) (  3967) .save 'EasyBLDCV3'
 (  3968) (  3968) .end

*** INFO [I-308] The circuit to be simulated contains operators (like 'SQRT' in
*** INFO [I-308] ... line 407) within PSpice compatibility mode (activated by
*** INFO [I-308] ... .COMOPT COMPAT = PSPICE). For such operators the
*** INFO [I-308] ... evaluation might give different results compared to
*** INFO [I-308] ... standard TITAN mode.


*** WARNING [W-560] 1 unused model removed. Output of details is controlled via
*** WARNING [W-560] ... VERBOSE parameter of COMOPT UNUSED MODELS.


                   TITAN input processor end after 0.090 cpu-sec
                   on host LAPTOP-33HE614J (WINNT)
                   0 errors, 4 warnings 
