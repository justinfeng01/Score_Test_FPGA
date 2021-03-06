
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group [add_wave_group ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_pool_top/AESL_inst_pool/interrupt -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_BRESP -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_BREADY -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_BVALID -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_RRESP -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_RDATA -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_RREADY -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_RVALID -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_ARREADY -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_ARVALID -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_ARADDR -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_WSTRB -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_WDATA -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_WREADY -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_WVALID -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_AWREADY -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_AWVALID -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/s_axi_AXILiteS_AWADDR -into $ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set out_group [add_wave_group out(axis) -into $coutputgroup]
add_wave /apatb_pool_top/AESL_inst_pool/out_r_TREADY -into $out_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/out_r_TVALID -into $out_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/out_r_TLAST -into $out_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/out_r_TDATA -into $out_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set in_group [add_wave_group in(axis) -into $cinputgroup]
add_wave /apatb_pool_top/AESL_inst_pool/in_V_V_TREADY -into $in_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/in_V_V_TVALID -into $in_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AESL_inst_pool/in_V_V_TDATA -into $in_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_pool_top/AESL_inst_pool/ap_done -into $blocksiggroup
add_wave /apatb_pool_top/AESL_inst_pool/ap_idle -into $blocksiggroup
add_wave /apatb_pool_top/AESL_inst_pool/ap_ready -into $blocksiggroup
add_wave /apatb_pool_top/AESL_inst_pool/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_pool_top/AESL_inst_pool/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_pool_top/AESL_inst_pool/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_pool_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_pool_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_pool_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_pool_top/LENGTH_in_V_V -into $tb_portdepth_group -radix hex
add_wave /apatb_pool_top/LENGTH_out_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_pool_top/LENGTH_out_V_last -into $tb_portdepth_group -radix hex
add_wave /apatb_pool_top/LENGTH_ch_div_K -into $tb_portdepth_group -radix hex
add_wave /apatb_pool_top/LENGTH_height_in -into $tb_portdepth_group -radix hex
add_wave /apatb_pool_top/LENGTH_width_in -into $tb_portdepth_group -radix hex
add_wave /apatb_pool_top/LENGTH_height_out -into $tb_portdepth_group -radix hex
add_wave /apatb_pool_top/LENGTH_width_out -into $tb_portdepth_group -radix hex
add_wave /apatb_pool_top/LENGTH_Kx -into $tb_portdepth_group -radix hex
add_wave /apatb_pool_top/LENGTH_Ky -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group [add_wave_group ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_pool_top/AXILiteS_INTERRUPT -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_BRESP -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AXILiteS_BREADY -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_BVALID -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_RRESP -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AXILiteS_RDATA -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AXILiteS_RREADY -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_RVALID -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_ARREADY -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_ARVALID -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_ARADDR -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AXILiteS_WSTRB -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AXILiteS_WDATA -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
add_wave /apatb_pool_top/AXILiteS_WREADY -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_WVALID -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_AWREADY -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_AWVALID -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/AXILiteS_AWADDR -into $tb_ch_div_K__height_in__width_in__height_out__width_out__Kx__Ky__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_out_group [add_wave_group out(axis) -into $tbcoutputgroup]
add_wave /apatb_pool_top/out_r_TREADY -into $tb_out_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/out_r_TVALID -into $tb_out_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/out_r_TLAST -into $tb_out_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/out_r_TDATA -into $tb_out_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_in_group [add_wave_group in(axis) -into $tbcinputgroup]
add_wave /apatb_pool_top/in_V_V_TREADY -into $tb_in_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/in_V_V_TVALID -into $tb_in_group -color #ffff00 -radix hex
add_wave /apatb_pool_top/in_V_V_TDATA -into $tb_in_group -radix hex
save_wave_config pool.wcfg
run all
quit

