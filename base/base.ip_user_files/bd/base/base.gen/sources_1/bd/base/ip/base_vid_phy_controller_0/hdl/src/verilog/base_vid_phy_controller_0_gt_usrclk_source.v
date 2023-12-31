///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 3.5
//  \   \         Application : 7 Series FPGAs Transceivers  Wizard
//  /   /         Filename : gtwizard_0_gt_usrclk_source.v
// /___/   /\      
// \   \  /  \ 
//  \___\/\___\ 
//
//
// Module gtwizard_0_GT_USRCLK_SOURCE (for use with GTs)
// Generated by Xilinx 7 Series FPGAs Transceivers Wizard
// 
// 
// (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
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


`timescale 1ns / 1ps

//***********************************Entity Declaration*******************************

module base_vid_phy_controller_0_gt_usrclk_source #
(
  parameter TX_BUFFER_BYPASS = 0,
 
	// HDMI
  parameter RX_USE_MMCM      = 0,
  parameter USE_REFCLK_BUFG  = 1,
 
  parameter ADV_CLOCK_MODE   = 0

) 
(
 
	// Only for HDMI
    input  wire        MMCM_TX_DRP_RST,
    input  wire        MMCM_TX_DRP_SCLK,
    input  wire        MMCM_TX_DRP_TXN_AVAILABLE,
    input  wire        MMCM_TX_DRP_RSP_READ,
    input  wire [11:0] MMCM_TX_DRPADDR, 
    input  wire        MMCM_TX_DRPEN,
    input  wire        MMCM_TX_DRPWE,
    input  wire [15:0] MMCM_TX_DRPDI,
    output wire        MMCM_TX_DRPBUSY,
    output wire        MMCM_TX_DRPRDY,
    output wire [15:0] MMCM_TX_DRPDO,
    input  wire        OBUFTDS_TX_EN,
	// Only for HDMI
    input  wire        MMCM_RX_DRP_RST,
    input  wire        MMCM_RX_DRP_SCLK,
    input  wire        MMCM_RX_DRP_TXN_AVAILABLE,
    input  wire        MMCM_RX_DRP_RSP_READ,
    input  wire [11:0] MMCM_RX_DRPADDR, 
    input  wire        MMCM_RX_DRPEN,
    input  wire        MMCM_RX_DRPWE,
    input  wire [15:0] MMCM_RX_DRPDI,
    output wire        MMCM_RX_DRPBUSY,
    output wire        MMCM_RX_DRPRDY,
    output wire [15:0] MMCM_RX_DRPDO,
    input  wire        OBUFTDS_RX_EN,    
	
	
	
    input  wire  mgtrefclk0_in,  
    input  wire  mgtrefclk1_in,  
    input  wire  Q0_CLK0_GTREFCLK_PAD_N_IN,
    input  wire  Q0_CLK0_GTREFCLK_PAD_P_IN,
    output wire  Q0_CLK0_GTREFCLK_OUT,
    input  wire  Q0_CLK1_GTREFCLK_PAD_N_IN,
    input  wire  Q0_CLK1_GTREFCLK_PAD_P_IN,
    output wire  Q0_CLK1_GTREFCLK_OUT,

    output wire  GT0_TXCLK_LOCK_OUT,
    input  wire  GT0_TX_MMCM_RESET_IN,    
	
 
	// Only for HDMI
    output wire  GT0_RXCLK_LOCK_OUT,
    input  wire  GT0_RX_MMCM_RESET_IN,   
    input  wire  GT0_TX_MMCM_PWRDN_IN,
    input  wire  GT0_RX_MMCM_PWRDN_IN,
    input  wire  Q0_CLK0_GTREFCLK_IBUF_EN_IN,
    input  wire	 Q0_CLK1_GTREFCLK_IBUF_EN_IN,
	// Only for HDMI
    output wire  GT0_TX_MMCM_CLKOUT1_OUT,
    output wire  GT0_TX_MMCM_CLKOUT2_OUT,
    output wire  GT0_RX_MMCM_CLKOUT1_OUT,
    output wire  GT0_RX_MMCM_CLKOUT2_OUT,
    output wire  GT0_TX_MMCM_CLKOUT1_P_OUT,
    output wire  GT0_TX_MMCM_CLKOUT1_N_OUT,
    output wire  GT0_RX_MMCM_CLKOUT1_P_OUT,
    output wire  GT0_RX_MMCM_CLKOUT1_N_OUT,
        
	 

    output wire  GT0_TXUSRCLK_OUT,
    output wire  GT0_TXUSRCLK2_OUT,
    input  wire  GT0_TXOUTCLK_IN,
    output wire  GT0_RXUSRCLK_OUT,
    output wire  GT0_RXUSRCLK2_OUT,
    input  wire  GT0_RXOUTCLK_IN

);


`define DLY #1

//*********************************Wire Declarations**********************************
    wire            tied_to_ground_i;
    wire            tied_to_vcc_i;
 
    wire            gt0_txoutclk_i; 
    wire            gt0_rxoutclk_i;
    wire            q0_clk1_gtrefclk /*synthesis syn_noclockbuf=1*/;
    wire            q0_clk0_gtrefclk /*synthesis syn_noclockbuf=1*/;

    wire            gt0_txusrclk_i;
    wire            gt0_rxusrclk_i;
    wire            txoutclk_mmcm0_locked_i;
    wire            txoutclk_mmcm0_reset_i;

	
 
	// Only for HDMI
    wire            q0_clk1_gtrefclk_i /*synthesis syn_noclockbuf=1*/;
    wire            q0_clk0_gtrefclk_i /*synthesis syn_noclockbuf=1*/;
    wire            rxoutclk_mmcm0_locked_i;
    wire            rxoutclk_mmcm0_reset_i;
		

//*********************************** Beginning of Code *******************************

    //  Static signal Assigments    
    assign tied_to_ground_i             = 1'b0;
    assign tied_to_vcc_i                = 1'b1;
    assign gt0_txoutclk_i = GT0_TXOUTCLK_IN;
    assign gt0_rxoutclk_i = GT0_RXOUTCLK_IN;
     

    assign Q0_CLK0_GTREFCLK_OUT = (ADV_CLOCK_MODE)?mgtrefclk0_in:q0_clk0_gtrefclk_i;
    assign Q0_CLK1_GTREFCLK_OUT = (ADV_CLOCK_MODE)?mgtrefclk1_in:q0_clk1_gtrefclk_i;
	
   generate
      if (ADV_CLOCK_MODE==0) begin : gen_standard_clocking
	  
  
	   // HDMI
	   if (USE_REFCLK_BUFG==0) begin : refclk_bufg_bypassed

	     assign q0_clk0_gtrefclk_i = q0_clk0_gtrefclk;
	     assign q0_clk1_gtrefclk_i = q0_clk1_gtrefclk;

	   end
	   else begin : refclk_bufg_used

	     BUFG bufg_instQ0_REFCLK0
	     (
	        .I              (q0_clk0_gtrefclk),
	        .O              (q0_clk0_gtrefclk_i)
	     );  

	     BUFG bufg_instQ0_REFCLK1
	     (
	        .I              (q0_clk1_gtrefclk),
	        .O              (q0_clk1_gtrefclk_i)
	     );  

	   end
	

	  wire Q0_CLK0_GTREFCLK_PAD_P_IN_IBUF;
	  wire Q0_CLK0_GTREFCLK_PAD_N_IN_IBUF;
	  wire Q0_CLK1_GTREFCLK_PAD_P_IN_IBUF;
	  wire Q0_CLK1_GTREFCLK_PAD_N_IN_IBUF;

	   IBUF #(
	      .IBUF_LOW_PWR("TRUE"),  // Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards 
	      .IOSTANDARD("DEFAULT")  // Specify the input I/O standard
	   ) Q0_CLK0_IBUF_P_inst (
	      .O(Q0_CLK0_GTREFCLK_PAD_P_IN_IBUF),     // Buffer output
	      .I(Q0_CLK0_GTREFCLK_PAD_P_IN)      // Buffer input (connect directly to top-level port)
	   );

	   IBUF #(
	      .IBUF_LOW_PWR("TRUE"),  // Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards 
	      .IOSTANDARD("DEFAULT")  // Specify the input I/O standard
	   ) Q0_CLK0_IBUF_N_inst (
	      .O(Q0_CLK0_GTREFCLK_PAD_N_IN_IBUF),     // Buffer output
	      .I(Q0_CLK0_GTREFCLK_PAD_N_IN)      // Buffer input (connect directly to top-level port)
	   );

	    //IBUFDS_GTE2
	    IBUFDS_GTE2 ibufds_instQ0_CLK0  
	    (
	        .O               (q0_clk0_gtrefclk),
	        .ODIV2           (),
    
	        .CEB             (Q0_CLK0_GTREFCLK_IBUF_EN_IN),
	        .I               (Q0_CLK0_GTREFCLK_PAD_P_IN_IBUF),
	        .IB              (Q0_CLK0_GTREFCLK_PAD_N_IN_IBUF)
	    );

	   IBUF #(
	      .IBUF_LOW_PWR("TRUE"),  // Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards 
	      .IOSTANDARD("DEFAULT")  // Specify the input I/O standard
	   ) Q0_CLK1_IBUF_P_inst (
	      .O(Q0_CLK1_GTREFCLK_PAD_P_IN_IBUF),     // Buffer output
	      .I(Q0_CLK1_GTREFCLK_PAD_P_IN)      // Buffer input (connect directly to top-level port)
	   );

	   IBUF #(
	      .IBUF_LOW_PWR("TRUE"),  // Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards 
	      .IOSTANDARD("DEFAULT")  // Specify the input I/O standard
	   ) Q0_CLK1_IBUF_N_inst (
	      .O(Q0_CLK1_GTREFCLK_PAD_N_IN_IBUF),     // Buffer output
	      .I(Q0_CLK1_GTREFCLK_PAD_N_IN)      // Buffer input (connect directly to top-level port)
	   );

	    IBUFDS_GTE2 ibufds_instQ0_CLK1  
	    (
	        .O               (q0_clk1_gtrefclk),
	        .ODIV2           (),
	        .CEB             (Q0_CLK1_GTREFCLK_IBUF_EN_IN),
	        .I               (Q0_CLK1_GTREFCLK_PAD_P_IN_IBUF),
	        .IB              (Q0_CLK1_GTREFCLK_PAD_N_IN_IBUF)
	    );
      end else begin
        assign q0_clk0_gtrefclk = 1'b0;
        assign q0_clk1_gtrefclk = 1'b0;
      end // if
    endgenerate


    // Instantiate a TX MMCM module to divide the reference clock. Uses internal feedback
    // for improved jitter performance, and to avoid consuming an additional BUFG
    generate
        if (TX_BUFFER_BYPASS==0) begin : tx_buffer_used

          BUFG txoutclk_bufg0_i
          (
              .I                              (gt0_txoutclk_i),
              .O                              (gt0_txusrclk_i)
          );

    end
    endgenerate

    generate
        if (TX_BUFFER_BYPASS==1) begin : tx_buffer_bypassed


 	
		// HDMI
          wire[15:0] TX_DO;
          wire       TX_DRDY;		
          wire       TX_MMCM_LOCKED;
          wire       TX_DWE;
          wire       TX_DEN;
          wire[6:0]  TX_DADDR;
          wire[15:0] TX_DI;
		 

           // TXPLL DRP CONTROLLER
           wire [31:0] DRP_Config_mmcm_txusrclk;
           wire [31:0] DRP_Status_mmcm_txusrclk;

 	
           assign DRP_Config_mmcm_txusrclk[11:0] = MMCM_TX_DRPADDR;
           assign DRP_Config_mmcm_txusrclk[12]   = MMCM_TX_DRPEN;
           assign DRP_Config_mmcm_txusrclk[13]   = MMCM_TX_DRPWE;
           assign DRP_Config_mmcm_txusrclk[31:16]= MMCM_TX_DRPDI;
           assign MMCM_TX_DRPBUSY = DRP_Status_mmcm_txusrclk[17];
           assign MMCM_TX_DRPRDY  = DRP_Status_mmcm_txusrclk[16];
           assign MMCM_TX_DRPDO   = DRP_Status_mmcm_txusrclk[15:0];

           vid_phy_controller_v2_2_13_drp_control_hdmi #  
          (
               .DRP_ADDR_WIDTH (7)
           )
           TXPLL_DRP_INST
           (
               .Config_Clk          (MMCM_TX_DRP_SCLK),
               .Config_Rst          (MMCM_TX_DRP_RST),
               .DRP_Config          (DRP_Config_mmcm_txusrclk),
               .DRP_Status          (DRP_Status_mmcm_txusrclk),
               .drp_txn_available   (MMCM_TX_DRP_TXN_AVAILABLE),
               .drp_rsp_read        (MMCM_TX_DRP_RSP_READ),
               .DRPCLK              (MMCM_TX_DRP_SCLK),
               .DRPBUSY             (1'b0),
               .DRPEN               (TX_DEN),
               .DRPWE               (TX_DWE),
               .DRPADDR             (TX_DADDR),
               .DRPDI               (TX_DI),
               .DRPDO               (TX_DO),
               .DRPRDY              (TX_DRDY)  
          );
		   assign  txoutclk_mmcm0_reset_i               =  GT0_TX_MMCM_RESET_IN;


           base_vid_phy_controller_0_CLOCK_MODULE #
           (
 
               .MULT                           (4),
               .DIVIDE                         (1),
               .CLK_PERIOD                     (3.367),
               .OUT0_DIVIDE                    (8),
               .OUT1_DIVIDE                    (4),
               .OUT2_DIVIDE                    (8),
               .OUT3_DIVIDE                    (8)
           )
           txoutclk_mmcm0_i
           (
               .CLK0_OUT                       (gt0_txusrclk_i),
 	
				// HDMI
               .CLK1_OUT                       (GT0_TX_MMCM_CLKOUT1_OUT),
               .CLK2_OUT                       (GT0_TX_MMCM_CLKOUT2_OUT),
               .CLK3_OUT                       (),
               .CLK_IN                         (gt0_txoutclk_i),
 	
               .DCLK                           (MMCM_DRP_SCLK),
               .DWE                            (TX_DWE),
               .DEN                            (TX_DEN),
               .DADDR                          (TX_DADDR),
               .DI                             (TX_DI),
               .DRDY                           (TX_DRDY),
               .DO                             (TX_DO),
               .MMCM_PWRDN_IN                  (GT0_TX_MMCM_PWRDN_IN),
               .MMCM_LOCKED_OUT                (txoutclk_mmcm0_locked_i),
               .MMCM_RESET_IN                  (txoutclk_mmcm0_reset_i)
           );

 
          wire       txoutclk_mmcm0_oddr_data_i;
	// TX CLKOUT1 clock driver
	  	ODDR
	  	#(
	    	.DDR_CLK_EDGE	        ("OPPOSITE_EDGE"),
	      	.INIT			(1'b0),
	      	.SRTYPE			("SYNC")
	   	)
	   	txoutclk_mmcm0_clkout1_oddr_inst
	   	(
	    	.Q			(txoutclk_mmcm0_oddr_data_i), 
	      	.C			(GT0_TX_MMCM_CLKOUT1_OUT),
	      	.CE			(1'b1), 
	      	.D1			(1'b1), 
	      	.D2			(1'b0),	
	      	.R			(1'b0),   
	      	.S			(1'b0)  
	   	);

	// TX TMDS clock buffer
		OBUFTDS
		#(
	      	.IOSTANDARD		("DEFAULT"), 
	      	.SLEW			("FAST")     
	   	)
		txoutclk_mmcm0_clkout1_obuftds_inst
	  	(
	    	.I			(txoutclk_mmcm0_oddr_data_i), 
	      	.T			(~OBUFTDS_TX_EN),   
	      	.O			(GT0_TX_MMCM_CLKOUT1_P_OUT),   
	      	.OB			(GT0_TX_MMCM_CLKOUT1_N_OUT)
		);

    end
    endgenerate

	

    // Instantiate an RX MMCM module to divide the reference clock. Uses internal feedback
    // for improved jitter performance, and to avoid consuming an additional BUFG
    generate
        if (RX_USE_MMCM==0) begin : rx_mmcm_not_used

          BUFG rxoutclk_bufg1_i
          (
              .I                              (gt0_rxoutclk_i),
              .O                              (gt0_rxusrclk_i)
          );

    end
    endgenerate

    generate
        if (RX_USE_MMCM==1) begin : rx_mmcm_used

          wire[15:0] RX_DO;
          wire       RX_DRDY;
          wire       RX_MMCM_LOCKED;
          wire       RX_DWE;
          wire       RX_DEN;
          wire[6:0]  RX_DADDR;
          wire[15:0] RX_DI;

           // RXPLL DRP CONTROLLER
           wire [31:0] DRP_Config_mmcm_rxusrclk;
           wire [31:0] DRP_Status_mmcm_rxusrclk;
           assign DRP_Config_mmcm_rxusrclk[11:0] = MMCM_RX_DRPADDR;
           assign DRP_Config_mmcm_rxusrclk[12]   = MMCM_RX_DRPEN;
           assign DRP_Config_mmcm_rxusrclk[13]   = MMCM_RX_DRPWE;
           assign DRP_Config_mmcm_rxusrclk[31:16]= MMCM_RX_DRPDI;
           assign MMCM_RX_DRPBUSY = DRP_Status_mmcm_rxusrclk[17];
           assign MMCM_RX_DRPRDY  = DRP_Status_mmcm_rxusrclk[16];
           assign MMCM_RX_DRPDO   = DRP_Status_mmcm_rxusrclk[15:0];
           
           vid_phy_controller_v2_2_13_drp_control_hdmi #  
           (
               .DRP_ADDR_WIDTH (7)
           )
           RXPLL_DRP_INST
           (
               .Config_Clk          (MMCM_RX_DRP_SCLK),
               .Config_Rst          (MMCM_RX_DRP_RST),
               .DRP_Config          (DRP_Config_mmcm_rxusrclk),
               .DRP_Status          (DRP_Status_mmcm_rxusrclk),
               .drp_txn_available   (MMCM_RX_DRP_TXN_AVAILABLE),
               .drp_rsp_read        (MMCM_RX_DRP_RSP_READ),
               .DRPCLK              (MMCM_RX_DRP_SCLK),
               .DRPBUSY             (1'b0),
               .DRPEN               (RX_DEN),
               .DRPWE               (RX_DWE),
               .DRPADDR             (RX_DADDR),
               .DRPDI               (RX_DI),
               .DRPDO               (RX_DO),
               .DRPRDY              (RX_DRDY)  
          );

          assign RX_MMCM_LOCKED = rxoutclk_mmcm0_locked_i;

          assign  rxoutclk_mmcm0_reset_i               =  GT0_RX_MMCM_RESET_IN;

           base_vid_phy_controller_0_CLOCK_MODULE #
           (
 
               .MULT                           (4),
               .DIVIDE                         (1),
               .CLK_PERIOD                     (3.367),
               .OUT0_DIVIDE                    (8),
               .OUT1_DIVIDE                    (4),
               .OUT2_DIVIDE                    (8),
               .OUT3_DIVIDE                    (8)
           )
           rxoutclk_mmcm0_i
           (
               .CLK0_OUT                       (gt0_rxusrclk_i),
               .CLK1_OUT                       (GT0_RX_MMCM_CLKOUT1_OUT),
               .CLK2_OUT                       (GT0_RX_MMCM_CLKOUT2_OUT),
               .CLK3_OUT                       (),
               .CLK_IN                         (gt0_rxoutclk_i),
               .DCLK                           (MMCM_RX_DRP_SCLK),
               .DWE                            (RX_DWE),
               .DEN                            (RX_DEN),
               .DADDR                          (RX_DADDR),
               .DI                             (RX_DI),
               .DRDY                           (RX_DRDY),
               .DO                             (RX_DO),
 
               .MMCM_PWRDN_IN                  (GT0_RX_MMCM_PWRDN_IN),
               .MMCM_LOCKED_OUT                (rxoutclk_mmcm0_locked_i),
               .MMCM_RESET_IN                  (rxoutclk_mmcm0_reset_i)
           );

          wire       rxoutclk_mmcm0_oddr_data_i;
	// RX CLKOUT1 clock driver
	  	ODDR
	  	#(
	    	.DDR_CLK_EDGE	        ("OPPOSITE_EDGE"),
	      	.INIT			(1'b0),
	      	.SRTYPE			("SYNC")
	   	)
	   	rxoutclk_mmcm0_clkout1_oddr_inst
	   	(
	    	.Q			(rxoutclk_mmcm0_oddr_data_i), 
	      	.C			(GT0_RX_MMCM_CLKOUT1_OUT),
	      	.CE			(1'b1), 
	      	.D1			(1'b1), 
	      	.D2			(1'b0),	
	      	.R			(1'b0),   
	      	.S			(1'b0)  
	   	);

	// RX TMDS clock buffer
		OBUFTDS
		#(
	      	.IOSTANDARD		("DEFAULT"), 
	      	.SLEW			("FAST")     
	   	)
		rxoutclk_mmcm0_clkout1_obuftds_inst
	  	(
	    	.I			(rxoutclk_mmcm0_oddr_data_i), 
	      	.T			(~OBUFTDS_RX_EN),   
	      	.O			(GT0_RX_MMCM_CLKOUT1_P_OUT),   
	      	.OB			(GT0_RX_MMCM_CLKOUT1_N_OUT)
		);

    end
    endgenerate
	


 
assign GT0_TXUSRCLK_OUT   = gt0_txusrclk_i;
assign GT0_TXUSRCLK2_OUT  = gt0_txusrclk_i;
assign GT0_RXUSRCLK_OUT   = gt0_rxusrclk_i;
assign GT0_RXUSRCLK2_OUT  = gt0_rxusrclk_i;
assign GT0_TXCLK_LOCK_OUT = txoutclk_mmcm0_locked_i;
	
assign GT0_RXCLK_LOCK_OUT = rxoutclk_mmcm0_locked_i;

endmodule

