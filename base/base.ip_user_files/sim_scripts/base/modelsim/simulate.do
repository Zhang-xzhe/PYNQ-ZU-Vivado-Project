onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L lib_pkg_v1_0_2 -L lib_cdc_v1_0_2 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_iic_v2_1_2 -L xil_defaultlib -L axi_intc_v4_1_17 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_26 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_25 -L axi_crossbar_v2_1_27 -L axi_protocol_converter_v2_1_26 -L axi_clock_converter_v2_1_25 -L blk_mem_gen_v8_4_5 -L axi_dwidth_converter_v2_1_26 -L xlconstant_v1_1_7 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_vip_v1_1_12 -L xlconcat_v2_1_4 -L axi_gpio_v2_0_28 -L xlslice_v1_0_2 -L lmb_v10_v3_0_12 -L lmb_bram_if_cntlr_v4_0_21 -L microblaze_v11_0_9 -L axi_bram_ctrl_v4_1_6 -L axi_timer_v2_0_28 -L dist_mem_gen_v8_0_13 -L lib_srl_fifo_v1_0_2 -L lib_fifo_v1_0_16 -L axi_quad_spi_v3_2_25 -L axi_uartlite_v2_0_30 -L mdm_v3_2_23 -L lib_bmg_v1_0_14 -L axi_datamover_v5_1_28 -L axi_vdma_v6_3_14 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_26 -L axis_subset_converter_v1_1_26 -L v_demosaic_v1_1_5 -L v_gamma_lut_v1_1_5 -L mipi_csi2_rx_ctrl_v1_0_8 -L high_speed_selectio_wiz_v3_6_3 -L mipi_dphy_v4_3_4 -L axis_dwidth_converter_v1_1_25 -L axis_switch_v1_1_26 -L vfb_v1_0_20 -L v_csc_v1_1_5 -L zynq_ultra_ps_e_vip_v1_0_12 -L xbip_utils_v3_0_10 -L dfx_axi_shutdown_manager_v1_0_0 -L axi_sg_v4_1_15 -L axi_dma_v7_1_27 -L axis_data_fifo_v2_0_8 -L v_hdmi_rx_v3_0_0 -L v_vid_in_axi4s_v5_0_1 -L util_vector_logic_v2_0_2 -L v_hdmi_tx_v3_0_0 -L v_tc_v6_2_4 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_9 -L v_axi4s_vid_out_v4_0_14 -L gtwizard_ultrascale_v1_7_13 -L vid_phy_controller_v2_2_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.base xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {base.udo}

run -all

quit -force
