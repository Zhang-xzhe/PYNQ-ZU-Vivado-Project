// file: base_system_management_wiz_0_0.v
// (c) Copyright 2013 - 2013 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
`timescale 1ns / 1 ps

(* CORE_GENERATION_INFO = "base_system_management_wiz_0_0,system_management_wiz_v1_3_16,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=system_management_wiz,x_ipVersion=1.3,x_ipCoreRevision=16,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=zynquplus,C_IS_DIABLO=1,C_DUAL0_REGISTER=0,C_DUAL1_REGISTER=0,C_DUAL2_REGISTER=0,C_DUAL3_REGISTER=0,C_COMMON_N_SOURCE=Null,C_ENABLE_ADC_DATA_OUT_MASTER=0,C_ENABLE_ADC_DATA_OUT_SLAVE0=0,C_ENABLE_ADC_DATA_OUT_SLAVE1=0,C_ENABLE_ADC_DATA_OUT_SLAVE2=0,C_ENABLE_DUAL_SEQUENCE_MODE=0,c_component_name=base_system_management_wiz_0_0,C_SIM_FILE_SEL=Default,C_SIM_DEVICE=ZYNQ_ULTRASCALE,C_SIM_FILE_REL_PATH=./,C_SIM_FILE_NAME=design,C_HAS_DCLK=1,C_HAS_DRP=0,C_HAS_RESET=0,C_HAS_CONVST=0,C_HAS_CONVSTCLK=0,C_HAS_VP=1,C_HAS_VN=1,C_HAS_CHANNEL=1,C_HAS_EOC=1,C_HAS_EOS=1,C_HAS_BUSY=1,C_HAS_JTAGLOCKED=0,C_HAS_JTAGMODIFIED=0,C_HAS_JTAGBUSY=0,C_HAS_EXTERNAL_MUX=0,C_EXTERNAL_MUXADDR_ENABLE=0,C_EXTERNAL_MUX_CHANNEL=VP_VN,C_DCLK_FREQUENCY=100,C_SAMPLING_RATE=192307.6923076923,C_HAS_OT_ALARM=1,C_HAS_USER_TEMP_ALARM=1,C_HAS_UNDER_OT_ALARM=0,C_HAS_UNDER_TEMP_ALARM=0,C_HAS_VCCINT_ALARM=1,C_HAS_VCCPSINTFP_ALARM=1,C_HAS_VCCPSAUX_ALARM=1,C_HAS_VCCPSINTLP_ALARM=1,C_HAS_VCCAUX_ALARM=1,C_HAS_VBRAM_ALARM=0,C_HAS_VCCPINT_ALARM=0,C_HAS_VCCPAUX_ALARM=0,C_HAS_VCCDDRO_ALARM=0,C_CONFIGURATION_R0=4096,C_CONFIGURATION_R1=8592,C_CONFIGURATION_R2=5120,C_CONFIGURATION_R4=0,C_ALARM_LIMIT_R0=46996,C_ALARM_LIMIT_R1=20097,C_ALARM_LIMIT_R2=41287,C_ALARM_LIMIT_R3=52131,C_ALARM_LIMIT_R4=43779,C_ALARM_LIMIT_R5=18787,C_ALARM_LIMIT_R6=38229,C_ALARM_LIMIT_R7=45066,C_ALARM_LIMIT_R8=20097,C_ALARM_LIMIT_R9=18787,C_ALARM_LIMIT_R10=18787,C_ALARM_LIMIT_R11=17694,C_ALARM_LIMIT_R12=18787,C_ALARM_LIMIT_R13=17694,C_ALARM_LIMIT_R14=39540,C_ALARM_LIMIT_R15=37355,C_SEQUENCE_R0=20225,C_SEQUENCE_SLAVE0_SSIT_R0=256,C_SEQUENCE_SLAVE1_SSIT_R0=256,C_SEQUENCE_SLAVE2_SSIT_R0=256,C_SEQUENCE_R1=49152,C_SEQUENCE_R2=0,C_SEQUENCE_R3=49152,C_SEQUENCE_R4=0,C_SEQUENCE_R5=0,C_SEQUENCE_R6=0,C_SEQUENCE_R7=0,C_VPVN=1,C_VAUX0=0,C_VAUX1=0,C_VAUX2=0,C_VAUX3=0,C_VAUX4=0,C_VAUX5=0,C_VAUX6=0,C_VAUX7=0,C_VAUX8=0,C_VAUX9=0,C_VAUX10=0,C_VAUX11=0,C_VAUX12=0,C_VAUX13=0,C_VAUX14=1,C_VAUX15=1,C_HAS_AXI=1,C_HAS_PMC=0,C_HAS_PMC_MASTER=0,C_HAS_AXI4STREAM=0,C_HAS_TEMP_BUS=0,C_HAS_SLAVE0_SSIT_TEMP_CH=1,C_HAS_SLAVE1_SSIT_TEMP_CH=1,C_HAS_SLAVE2_SSIT_TEMP_CH=1,C_FIFO_DEPTH=7,C_INCLUDE_INTR=1,C_IS_SSIT_SLAVE0=0,C_IS_SSIT_SLAVE1=0,C_IS_SSIT_SLAVE2=0,C_ENABLE_SLAVE0=0,C_ENABLE_SLAVE1=0,C_ENABLE_SLAVE2=0,C_IS_SSIT_SLAVE0_ANALOG_BANK=0,C_IS_SSIT_SLAVE1_ANALOG_BANK=0,C_IS_SSIT_SLAVE2_ANALOG_BANK=0,C_HAS_I2C=0,C_HAS_PMBUS=0,C_HAS_I2C_SLAVE=0,C_I2C_SLAVE_ADDRESS=32,C_I2C_SLAVE0_ADDRESS=32,C_I2C_SLAVE1_ADDRESS=32,C_I2C_SLAVE2_ADDRESS=32,C_CONFIGURATION_R3=15,C_CONFIGURATION_SLAVE0_SSIT_R3=15,C_CONFIGURATION_SLAVE1_SSIT_R3=15,C_CONFIGURATION_SLAVE2_SSIT_R3=15,C_CONFIGURATION_R4_1=12,C_CONFIGURATION_R4_2=13,C_CONFIGURATION_R4_3=14,C_CONFIGURATION_R4_4=14,C_CONFIGURATION_SLAVE0_SSIT_R4_1=12,C_CONFIGURATION_SLAVE0_SSIT_R4_2=13,C_CONFIGURATION_SLAVE0_SSIT_R4_3=14,C_CONFIGURATION_SLAVE0_SSIT_R4_4=14,C_CONFIGURATION_SLAVE1_SSIT_R4_1=12,C_CONFIGURATION_SLAVE1_SSIT_R4_2=13,C_CONFIGURATION_SLAVE1_SSIT_R4_3=14,C_CONFIGURATION_SLAVE1_SSIT_R4_4=14,C_CONFIGURATION_SLAVE2_SSIT_R4_1=12,C_CONFIGURATION_SLAVE2_SSIT_R4_2=13,C_CONFIGURATION_SLAVE2_SSIT_R4_3=14,C_CONFIGURATION_SLAVE2_SSIT_R4_4=14,C_ALARM_LIMIT_USL1=19550,C_ALARM_LIMIT_USU1=19769,C_ALARM_LIMIT_USL2=19442,C_ALARM_LIMIT_USU2=19879,C_ALARM_LIMIT_USL3=39103,C_ALARM_LIMIT_USU3=39540,C_ALARM_LIMIT_USL4=39103,C_ALARM_LIMIT_USU4=39540,C_ALARM_LIMIT_SLAVE0_SSIT_USL1=19550,C_ALARM_LIMIT_SLAVE0_SSIT_USU1=19769,C_ALARM_LIMIT_SLAVE0_SSIT_USL2=19442,C_ALARM_LIMIT_SLAVE0_SSIT_USU2=19879,C_ALARM_LIMIT_SLAVE0_SSIT_USL3=39103,C_ALARM_LIMIT_SLAVE0_SSIT_USU3=39540,C_ALARM_LIMIT_SLAVE0_SSIT_USL4=39103,C_ALARM_LIMIT_SLAVE0_SSIT_USU4=39540,C_ALARM_LIMIT_SLAVE1_SSIT_USL1=19550,C_ALARM_LIMIT_SLAVE1_SSIT_USU1=19769,C_ALARM_LIMIT_SLAVE1_SSIT_USL2=19442,C_ALARM_LIMIT_SLAVE1_SSIT_USU2=19879,C_ALARM_LIMIT_SLAVE1_SSIT_USL3=39103,C_ALARM_LIMIT_SLAVE1_SSIT_USU3=39540,C_ALARM_LIMIT_SLAVE1_SSIT_USL4=39103,C_ALARM_LIMIT_SLAVE1_SSIT_USU4=39540,C_ALARM_LIMIT_SLAVE2_SSIT_USL1=19550,C_ALARM_LIMIT_SLAVE2_SSIT_USU1=19769,C_ALARM_LIMIT_SLAVE2_SSIT_USL2=19442,C_ALARM_LIMIT_SLAVE2_SSIT_USU2=19879,C_ALARM_LIMIT_SLAVE2_SSIT_USL3=39103,C_ALARM_LIMIT_SLAVE2_SSIT_USU3=39540,C_ALARM_LIMIT_SLAVE2_SSIT_USL4=39103,C_ALARM_LIMIT_SLAVE2_SSIT_USU4=39540,C_SEQUENCE_R8=0,C_DUAL_SEQUENCE_R2=0,C_DUAL_SEQUENCE_R1=0,C_DUAL_SEQUENCE_R0=0,C_AVG_VUSER=0,C_SEQUENCE_SLAVE0_SSIT_R8=0,C_AVG_SLAVE0_SSIT_VUSER=0,C_SEQUENCE_SLAVE1_SSIT_R8=0,C_AVG_SLAVE1_SSIT_VUSER=0,C_SEQUENCE_SLAVE2_SSIT_R8=0,C_AVG_SLAVE2_SSIT_VUSER=0,C_HAS_USER_SUPPLY0_ALARM=0,C_HAS_USER_SUPPLY1_ALARM=0,C_HAS_USER_SUPPLY2_ALARM=0,C_HAS_USER_SUPPLY3_ALARM=0,C_AVERAGE_EN_VUSER0=0,C_AVERAGE_EN_VUSER1=0,C_AVERAGE_EN_VUSER2=0,C_AVERAGE_EN_VUSER3=0,C_HAS_USER_SUPPLY0_SLAVE0_SSIT_ALARM=0,C_HAS_USER_SUPPLY1_SLAVE0_SSIT_ALARM=0,C_HAS_USER_SUPPLY2_SLAVE0_SSIT_ALARM=0,C_HAS_USER_SUPPLY3_SLAVE0_SSIT_ALARM=0,C_AVERAGE_EN_SLAVE0_SSIT_VUSER0=0,C_AVERAGE_EN_SLAVE0_SSIT_VUSER1=0,C_AVERAGE_EN_SLAVE0_SSIT_VUSER2=0,C_AVERAGE_EN_SLAVE0_SSIT_VUSER3=0,C_HAS_USER_SUPPLY0_SLAVE1_SSIT_ALARM=0,C_HAS_USER_SUPPLY1_SLAVE1_SSIT_ALARM=0,C_HAS_USER_SUPPLY2_SLAVE1_SSIT_ALARM=0,C_HAS_USER_SUPPLY3_SLAVE1_SSIT_ALARM=0,C_AVERAGE_EN_SLAVE1_SSIT_VUSER0=0,C_AVERAGE_EN_SLAVE1_SSIT_VUSER1=0,C_AVERAGE_EN_SLAVE1_SSIT_VUSER2=0,C_AVERAGE_EN_SLAVE1_SSIT_VUSER3=0,C_HAS_USER_SUPPLY0_SLAVE2_SSIT_ALARM=0,C_HAS_USER_SUPPLY1_SLAVE2_SSIT_ALARM=0,C_HAS_USER_SUPPLY2_SLAVE2_SSIT_ALARM=0,C_HAS_USER_SUPPLY3_SLAVE2_SSIT_ALARM=0,C_AVERAGE_EN_SLAVE2_SSIT_VUSER0=0,C_AVERAGE_EN_SLAVE2_SSIT_VUSER1=0,C_AVERAGE_EN_SLAVE2_SSIT_VUSER2=0,C_AVERAGE_EN_SLAVE2_SSIT_VUSER3=0,C_I2C_CLK_PERIOD=2500.000,C_USER_SUPPLY0_SOURCE=VCCO,C_USER_SUPPLY1_SOURCE=VCCINT,C_USER_SUPPLY2_SOURCE=VCCAUX,C_USER_SUPPLY3_SOURCE=VCCO,C_USER_SUPPLY0_BANK=44,C_USER_SUPPLY1_BANK=44,C_USER_SUPPLY2_BANK=44,C_USER_SUPPLY3_BANK=65,C_USER_SUPPLY0_SLAVE0_SSIT_SOURCE=VCCO,C_USER_SUPPLY1_SLAVE0_SSIT_SOURCE=VCCINT,C_USER_SUPPLY2_SLAVE0_SSIT_SOURCE=VCCAUX,C_USER_SUPPLY3_SLAVE0_SSIT_SOURCE=VCCO,C_USER_SUPPLY0_SLAVE0_SSIT_BANK=44,C_USER_SUPPLY1_SLAVE0_SSIT_BANK=44,C_USER_SUPPLY2_SLAVE0_SSIT_BANK=44,C_USER_SUPPLY3_SLAVE0_SSIT_BANK=65,C_USER_SUPPLY0_SLAVE1_SSIT_SOURCE=VCCO,C_USER_SUPPLY1_SLAVE1_SSIT_SOURCE=VCCINT,C_USER_SUPPLY2_SLAVE1_SSIT_SOURCE=VCCAUX,C_USER_SUPPLY3_SLAVE1_SSIT_SOURCE=VCCO,C_USER_SUPPLY0_SLAVE1_SSIT_BANK=44,C_USER_SUPPLY1_SLAVE1_SSIT_BANK=44,C_USER_SUPPLY2_SLAVE1_SSIT_BANK=44,C_USER_SUPPLY3_SLAVE1_SSIT_BANK=65,C_USER_SUPPLY0_SLAVE2_SSIT_SOURCE=VCCO,C_USER_SUPPLY1_SLAVE2_SSIT_SOURCE=VCCINT,C_USER_SUPPLY2_SLAVE2_SSIT_SOURCE=VCCAUX,C_USER_SUPPLY3_SLAVE2_SSIT_SOURCE=VCCO,C_USER_SUPPLY0_SLAVE2_SSIT_BANK=44,C_USER_SUPPLY1_SLAVE2_SSIT_BANK=44,C_USER_SUPPLY2_SLAVE2_SSIT_BANK=44,C_USER_SUPPLY3_SLAVE2_SSIT_BANK=65,C_HAS_VUSER0=0,C_HAS_VUSER1=0,C_HAS_VUSER2=0,C_HAS_VUSER3=0,C_HAS_SLAVE0_SSIT_VUSER0=0,C_HAS_SLAVE0_SSIT_VUSER1=0,C_HAS_SLAVE0_SSIT_VUSER2=0,C_HAS_SLAVE0_SSIT_VUSER3=0,C_HAS_SLAVE1_SSIT_VUSER0=0,C_HAS_SLAVE1_SSIT_VUSER1=0,C_HAS_SLAVE1_SSIT_VUSER2=0,C_HAS_SLAVE1_SSIT_VUSER3=0,C_HAS_SLAVE2_SSIT_VUSER0=0,C_HAS_SLAVE2_SSIT_VUSER1=0,C_HAS_SLAVE2_SSIT_VUSER2=0,C_HAS_SLAVE2_SSIT_VUSER3=0,C_DUAL_SEQ=0,C_DIV_VUSER0=6,C_DIV_VUSER1=3,C_DIV_VUSER2=3,C_DIV_VUSER3=3,C_DIV_VUSER0_SLAVE0=6,C_DIV_VUSER1_SLAVE0=3,C_DIV_VUSER2_SLAVE0=3,C_DIV_VUSER3_SLAVE0=3,C_DIV_VUSER0_SLAVE1=6,C_DIV_VUSER1_SLAVE1=3,C_DIV_VUSER2_SLAVE1=3,C_DIV_VUSER3_SLAVE1=3,C_DIV_VUSER0_SLAVE2=6,C_DIV_VUSER1_SLAVE2=3,C_DIV_VUSER2_SLAVE2=3,C_DIV_VUSER3_SLAVE2=3,C_CHANNEL_CNT=8,C_VAUXN0_LOC=D30,C_VAUXP0_LOC=D29,C_VAUXN1_LOC=E31,C_VAUXP1_LOC=E30,C_VAUXN2_LOC=G30,C_VAUXP2_LOC=G29,C_VAUXN3_LOC=E32,C_VAUXP3_LOC=F32,C_VAUXN4_LOC=K28,C_VAUXP4_LOC=L27,C_VAUXN5_LOC=J29,C_VAUXP5_LOC=J28,C_VAUXN6_LOC=N29,C_VAUXP6_LOC=N28,C_VAUXN7_LOC=P30,C_VAUXP7_LOC=P29,C_VAUXN8_LOC=AA12,C_VAUXP8_LOC=Y12,C_VAUXN9_LOC=W11,C_VAUXP9_LOC=W12,C_VAUXN10_LOC=Y13,C_VAUXP10_LOC=Y14,C_VAUXN11_LOC=W13,C_VAUXP11_LOC=W14,C_VAUXN12_LOC=AF13,C_VAUXP12_LOC=AE13,C_VAUXN13_LOC=AH13,C_VAUXP13_LOC=AG13,C_VAUXN14_LOC=AH14,C_VAUXP14_LOC=AG14,C_VAUXN15_LOC=AE14,C_VAUXP15_LOC=AE15,C_I2C_SCLK_LOC=K9,C_I2C_SDA_LOC=H9}" *)

module base_system_management_wiz_0_0


   (
    input s_axi_aclk,
    input s_axi_aresetn,
    input [12 : 0] s_axi_awaddr,
    input s_axi_awvalid,
    output s_axi_awready,
    input [31 : 0] s_axi_wdata,
    input [3 : 0] s_axi_wstrb,
    input s_axi_wvalid,
    output s_axi_wready,
    output [1 : 0] s_axi_bresp,
    output s_axi_bvalid,
    input s_axi_bready,
    input [12 : 0] s_axi_araddr,
    input s_axi_arvalid,
    output s_axi_arready,
    output [31 : 0] s_axi_rdata,
    output [1 : 0] s_axi_rresp,
    output s_axi_rvalid,
    input s_axi_rready,
    output ip2intc_irpt,

          input vauxp14,
          input vauxn14,
          input vauxp15,
          input vauxn15,
    input vp,                                             
    input vn,
    output [5:0] channel_out,
    output busy_out,        
    output eoc_out, 
    output eos_out,
    output ot_out, 
    output vccpsaux_alarm_out,
    output vccpsintfp_alarm_out,
    output vccpsintlp_alarm_out,
    output vccaux_alarm_out,
    output vccint_alarm_out,
    output user_temp_alarm_out,
    output alarm_out
);

       wire [15:0]  alm_int;
       assign alarm_out = alm_int[7];
       assign vccpsaux_alarm_out = alm_int[6];
       assign vccpsintfp_alarm_out = alm_int[5];
       assign vccpsintlp_alarm_out = alm_int[4];
          assign vccaux_alarm_out = alm_int[2];
          assign vccint_alarm_out = alm_int[1];
          assign user_temp_alarm_out = alm_int[0];

    base_system_management_wiz_0_0_axi_xadc 
   #("base_system_management_wiz_0_0_axi_xadc","virtex7", 13, 32, 1,"design.txt")
    inst 
    (
    .s_axi_aclk      (s_axi_aclk),                    
    .s_axi_aresetn   (s_axi_aresetn),                    
    .s_axi_awaddr    (s_axi_awaddr),                    
    .s_axi_awvalid   (s_axi_awvalid),                    
    .s_axi_awready   (s_axi_awready),                    
    .s_axi_wdata     (s_axi_wdata),                    
    .s_axi_wstrb     (s_axi_wstrb),                    
    .s_axi_wvalid    (s_axi_wvalid),                    
    .s_axi_wready    (s_axi_wready),                    
    .s_axi_bresp     (s_axi_bresp),                    
    .s_axi_bvalid    (s_axi_bvalid),                    
    .s_axi_bready    (s_axi_bready),                    
    .s_axi_araddr    (s_axi_araddr),                    
    .s_axi_arvalid   (s_axi_arvalid),                    
    .s_axi_arready   (s_axi_arready),                    
    .s_axi_rdata     (s_axi_rdata),                    
    .s_axi_rresp     (s_axi_rresp),                    
    .s_axi_rvalid    (s_axi_rvalid),                    
    .s_axi_rready    (s_axi_rready),                    
    .ip2intc_irpt    (ip2intc_irpt),  

      .vauxp14(vauxp14),
      .vauxn14(vauxn14),
      .vauxp15(vauxp15),
      .vauxn15(vauxn15),
    .vp (vp),
    .vn (vn),
    .channel_out(channel_out),
    .busy_out(busy_out), 
    .eoc_out(eoc_out), 
    .eos_out(eos_out),
    .ot_out(ot_out),
    .alarm_out  (alm_int)

          );


endmodule
