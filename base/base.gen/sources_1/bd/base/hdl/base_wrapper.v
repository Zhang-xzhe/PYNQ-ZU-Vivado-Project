//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Tue Oct 10 11:20:24 2023
//Host        : DESKTOP-Q7HNGOE running 64-bit major release  (build 9200)
//Command     : generate_target base_wrapper.bd
//Design      : base_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module base_wrapper
   (HDMI_CTL_iic_scl_io,
    HDMI_CTL_iic_sda_io,
    HDMI_RX_CLK_N_IN,
    HDMI_RX_CLK_P_IN,
    HDMI_RX_DAT_N_IN,
    HDMI_RX_DAT_P_IN,
    HDMI_SI5324_LOL_IN,
    HDMI_SI5324_RST_OUT,
    HDMI_TX_CLK_N_OUT,
    HDMI_TX_CLK_P_OUT,
    HDMI_TX_DAT_N_OUT,
    HDMI_TX_DAT_P_OUT,
    HDMI_TX_LS_OE,
    RX_DDC_OUT_scl_io,
    RX_DDC_OUT_sda_io,
    RX_DET_IN,
    RX_HPD_OUT,
    RX_REFCLK_N_OUT,
    RX_REFCLK_P_OUT,
    TX_DDC_OUT_scl_io,
    TX_DDC_OUT_sda_io,
    TX_EN_OUT,
    TX_HPD_IN,
    TX_REFCLK_N_IN,
    TX_REFCLK_P_IN,
    Vaux14_v_n,
    Vaux14_v_p,
    Vaux15_v_n,
    Vaux15_v_p,
    Vp_Vn_v_n,
    Vp_Vn_v_p,
    audio_codec_bclk,
    audio_codec_clk_10MHz,
    audio_codec_lrclk,
    audio_codec_sdata_i,
    audio_codec_sdata_o,
    cam_gpio_tri_o,
    codec_addr,
    dip_switch_4bits_tri_i,
    led_4bits_tri_o,
    mipi_phy_if_0_clk_n,
    mipi_phy_if_0_clk_p,
    mipi_phy_if_0_data_n,
    mipi_phy_if_0_data_p,
    pl_groves,
    pmod0,
    pmod1,
    push_button_4bits_tri_i,
    rgbleds_tri_o,
    rpi,
    syzygy_pg);
  inout HDMI_CTL_iic_scl_io;
  inout HDMI_CTL_iic_sda_io;
  input HDMI_RX_CLK_N_IN;
  input HDMI_RX_CLK_P_IN;
  input [2:0]HDMI_RX_DAT_N_IN;
  input [2:0]HDMI_RX_DAT_P_IN;
  input HDMI_SI5324_LOL_IN;
  output [0:0]HDMI_SI5324_RST_OUT;
  output HDMI_TX_CLK_N_OUT;
  output HDMI_TX_CLK_P_OUT;
  output [2:0]HDMI_TX_DAT_N_OUT;
  output [2:0]HDMI_TX_DAT_P_OUT;
  output [0:0]HDMI_TX_LS_OE;
  inout RX_DDC_OUT_scl_io;
  inout RX_DDC_OUT_sda_io;
  input RX_DET_IN;
  output RX_HPD_OUT;
  output RX_REFCLK_N_OUT;
  output RX_REFCLK_P_OUT;
  inout TX_DDC_OUT_scl_io;
  inout TX_DDC_OUT_sda_io;
  output [0:0]TX_EN_OUT;
  input TX_HPD_IN;
  input TX_REFCLK_N_IN;
  input TX_REFCLK_P_IN;
  input Vaux14_v_n;
  input Vaux14_v_p;
  input Vaux15_v_n;
  input Vaux15_v_p;
  input Vp_Vn_v_n;
  input Vp_Vn_v_p;
  output audio_codec_bclk;
  output audio_codec_clk_10MHz;
  output audio_codec_lrclk;
  input audio_codec_sdata_i;
  output audio_codec_sdata_o;
  output [0:0]cam_gpio_tri_o;
  output [1:0]codec_addr;
  input [3:0]dip_switch_4bits_tri_i;
  output [3:0]led_4bits_tri_o;
  input mipi_phy_if_0_clk_n;
  input mipi_phy_if_0_clk_p;
  input [1:0]mipi_phy_if_0_data_n;
  input [1:0]mipi_phy_if_0_data_p;
  inout [3:0]pl_groves;
  inout [7:0]pmod0;
  inout [7:0]pmod1;
  input [3:0]push_button_4bits_tri_i;
  output [5:0]rgbleds_tri_o;
  inout [27:0]rpi;
  input syzygy_pg;

  wire HDMI_CTL_iic_scl_i;
  wire HDMI_CTL_iic_scl_io;
  wire HDMI_CTL_iic_scl_o;
  wire HDMI_CTL_iic_scl_t;
  wire HDMI_CTL_iic_sda_i;
  wire HDMI_CTL_iic_sda_io;
  wire HDMI_CTL_iic_sda_o;
  wire HDMI_CTL_iic_sda_t;
  wire HDMI_RX_CLK_N_IN;
  wire HDMI_RX_CLK_P_IN;
  wire [2:0]HDMI_RX_DAT_N_IN;
  wire [2:0]HDMI_RX_DAT_P_IN;
  wire HDMI_SI5324_LOL_IN;
  wire [0:0]HDMI_SI5324_RST_OUT;
  wire HDMI_TX_CLK_N_OUT;
  wire HDMI_TX_CLK_P_OUT;
  wire [2:0]HDMI_TX_DAT_N_OUT;
  wire [2:0]HDMI_TX_DAT_P_OUT;
  wire [0:0]HDMI_TX_LS_OE;
  wire RX_DDC_OUT_scl_i;
  wire RX_DDC_OUT_scl_io;
  wire RX_DDC_OUT_scl_o;
  wire RX_DDC_OUT_scl_t;
  wire RX_DDC_OUT_sda_i;
  wire RX_DDC_OUT_sda_io;
  wire RX_DDC_OUT_sda_o;
  wire RX_DDC_OUT_sda_t;
  wire RX_DET_IN;
  wire RX_HPD_OUT;
  wire RX_REFCLK_N_OUT;
  wire RX_REFCLK_P_OUT;
  wire TX_DDC_OUT_scl_i;
  wire TX_DDC_OUT_scl_io;
  wire TX_DDC_OUT_scl_o;
  wire TX_DDC_OUT_scl_t;
  wire TX_DDC_OUT_sda_i;
  wire TX_DDC_OUT_sda_io;
  wire TX_DDC_OUT_sda_o;
  wire TX_DDC_OUT_sda_t;
  wire [0:0]TX_EN_OUT;
  wire TX_HPD_IN;
  wire TX_REFCLK_N_IN;
  wire TX_REFCLK_P_IN;
  wire Vaux14_v_n;
  wire Vaux14_v_p;
  wire Vaux15_v_n;
  wire Vaux15_v_p;
  wire Vp_Vn_v_n;
  wire Vp_Vn_v_p;
  wire audio_codec_bclk;
  wire audio_codec_clk_10MHz;
  wire audio_codec_lrclk;
  wire audio_codec_sdata_i;
  wire audio_codec_sdata_o;
  wire [0:0]cam_gpio_tri_o;
  wire [1:0]codec_addr;
  wire [3:0]dip_switch_4bits_tri_i;
  wire [3:0]led_4bits_tri_o;
  wire mipi_phy_if_0_clk_n;
  wire mipi_phy_if_0_clk_p;
  wire [1:0]mipi_phy_if_0_data_n;
  wire [1:0]mipi_phy_if_0_data_p;
  wire [3:0]pl_groves;
  wire [7:0]pmod0;
  wire [7:0]pmod1;
  wire [3:0]push_button_4bits_tri_i;
  wire [5:0]rgbleds_tri_o;
  wire [27:0]rpi;
  wire syzygy_pg;

  IOBUF HDMI_CTL_iic_scl_iobuf
       (.I(HDMI_CTL_iic_scl_o),
        .IO(HDMI_CTL_iic_scl_io),
        .O(HDMI_CTL_iic_scl_i),
        .T(HDMI_CTL_iic_scl_t));
  IOBUF HDMI_CTL_iic_sda_iobuf
       (.I(HDMI_CTL_iic_sda_o),
        .IO(HDMI_CTL_iic_sda_io),
        .O(HDMI_CTL_iic_sda_i),
        .T(HDMI_CTL_iic_sda_t));
  IOBUF RX_DDC_OUT_scl_iobuf
       (.I(RX_DDC_OUT_scl_o),
        .IO(RX_DDC_OUT_scl_io),
        .O(RX_DDC_OUT_scl_i),
        .T(RX_DDC_OUT_scl_t));
  IOBUF RX_DDC_OUT_sda_iobuf
       (.I(RX_DDC_OUT_sda_o),
        .IO(RX_DDC_OUT_sda_io),
        .O(RX_DDC_OUT_sda_i),
        .T(RX_DDC_OUT_sda_t));
  IOBUF TX_DDC_OUT_scl_iobuf
       (.I(TX_DDC_OUT_scl_o),
        .IO(TX_DDC_OUT_scl_io),
        .O(TX_DDC_OUT_scl_i),
        .T(TX_DDC_OUT_scl_t));
  IOBUF TX_DDC_OUT_sda_iobuf
       (.I(TX_DDC_OUT_sda_o),
        .IO(TX_DDC_OUT_sda_io),
        .O(TX_DDC_OUT_sda_i),
        .T(TX_DDC_OUT_sda_t));
  base base_i
       (.HDMI_CTL_iic_scl_i(HDMI_CTL_iic_scl_i),
        .HDMI_CTL_iic_scl_o(HDMI_CTL_iic_scl_o),
        .HDMI_CTL_iic_scl_t(HDMI_CTL_iic_scl_t),
        .HDMI_CTL_iic_sda_i(HDMI_CTL_iic_sda_i),
        .HDMI_CTL_iic_sda_o(HDMI_CTL_iic_sda_o),
        .HDMI_CTL_iic_sda_t(HDMI_CTL_iic_sda_t),
        .HDMI_RX_CLK_N_IN(HDMI_RX_CLK_N_IN),
        .HDMI_RX_CLK_P_IN(HDMI_RX_CLK_P_IN),
        .HDMI_RX_DAT_N_IN(HDMI_RX_DAT_N_IN),
        .HDMI_RX_DAT_P_IN(HDMI_RX_DAT_P_IN),
        .HDMI_SI5324_LOL_IN(HDMI_SI5324_LOL_IN),
        .HDMI_SI5324_RST_OUT(HDMI_SI5324_RST_OUT),
        .HDMI_TX_CLK_N_OUT(HDMI_TX_CLK_N_OUT),
        .HDMI_TX_CLK_P_OUT(HDMI_TX_CLK_P_OUT),
        .HDMI_TX_DAT_N_OUT(HDMI_TX_DAT_N_OUT),
        .HDMI_TX_DAT_P_OUT(HDMI_TX_DAT_P_OUT),
        .HDMI_TX_LS_OE(HDMI_TX_LS_OE),
        .RX_DDC_OUT_scl_i(RX_DDC_OUT_scl_i),
        .RX_DDC_OUT_scl_o(RX_DDC_OUT_scl_o),
        .RX_DDC_OUT_scl_t(RX_DDC_OUT_scl_t),
        .RX_DDC_OUT_sda_i(RX_DDC_OUT_sda_i),
        .RX_DDC_OUT_sda_o(RX_DDC_OUT_sda_o),
        .RX_DDC_OUT_sda_t(RX_DDC_OUT_sda_t),
        .RX_DET_IN(RX_DET_IN),
        .RX_HPD_OUT(RX_HPD_OUT),
        .RX_REFCLK_N_OUT(RX_REFCLK_N_OUT),
        .RX_REFCLK_P_OUT(RX_REFCLK_P_OUT),
        .TX_DDC_OUT_scl_i(TX_DDC_OUT_scl_i),
        .TX_DDC_OUT_scl_o(TX_DDC_OUT_scl_o),
        .TX_DDC_OUT_scl_t(TX_DDC_OUT_scl_t),
        .TX_DDC_OUT_sda_i(TX_DDC_OUT_sda_i),
        .TX_DDC_OUT_sda_o(TX_DDC_OUT_sda_o),
        .TX_DDC_OUT_sda_t(TX_DDC_OUT_sda_t),
        .TX_EN_OUT(TX_EN_OUT),
        .TX_HPD_IN(TX_HPD_IN),
        .TX_REFCLK_N_IN(TX_REFCLK_N_IN),
        .TX_REFCLK_P_IN(TX_REFCLK_P_IN),
        .Vaux14_v_n(Vaux14_v_n),
        .Vaux14_v_p(Vaux14_v_p),
        .Vaux15_v_n(Vaux15_v_n),
        .Vaux15_v_p(Vaux15_v_p),
        .Vp_Vn_v_n(Vp_Vn_v_n),
        .Vp_Vn_v_p(Vp_Vn_v_p),
        .audio_codec_bclk(audio_codec_bclk),
        .audio_codec_clk_10MHz(audio_codec_clk_10MHz),
        .audio_codec_lrclk(audio_codec_lrclk),
        .audio_codec_sdata_i(audio_codec_sdata_i),
        .audio_codec_sdata_o(audio_codec_sdata_o),
        .cam_gpio_tri_o(cam_gpio_tri_o),
        .codec_addr(codec_addr),
        .dip_switch_4bits_tri_i(dip_switch_4bits_tri_i),
        .led_4bits_tri_o(led_4bits_tri_o),
        .mipi_phy_if_0_clk_n(mipi_phy_if_0_clk_n),
        .mipi_phy_if_0_clk_p(mipi_phy_if_0_clk_p),
        .mipi_phy_if_0_data_n(mipi_phy_if_0_data_n),
        .mipi_phy_if_0_data_p(mipi_phy_if_0_data_p),
        .pl_groves(pl_groves),
        .pmod0(pmod0),
        .pmod1(pmod1),
        .push_button_4bits_tri_i(push_button_4bits_tri_i),
        .rgbleds_tri_o(rgbleds_tri_o),
        .rpi(rpi),
        .syzygy_pg(syzygy_pg));
endmodule
