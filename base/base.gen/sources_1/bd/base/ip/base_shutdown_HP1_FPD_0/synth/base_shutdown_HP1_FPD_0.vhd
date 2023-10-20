-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:dfx_axi_shutdown_manager:1.0
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY dfx_axi_shutdown_manager_v1_0_0;
USE dfx_axi_shutdown_manager_v1_0_0.dfx_axi_shutdown_manager_v1_0_0;

ENTITY base_shutdown_HP1_FPD_0 IS
  PORT (
    clk : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    shutdown_requested : OUT STD_LOGIC;
    in_shutdown : OUT STD_LOGIC;
    irq : OUT STD_LOGIC;
    wr_irq : OUT STD_LOGIC;
    rd_irq : OUT STD_LOGIC;
    wr_in_shutdown : OUT STD_LOGIC;
    rd_in_shutdown : OUT STD_LOGIC;
    s_axi_ctrl_awvalid : IN STD_LOGIC;
    s_axi_ctrl_awready : OUT STD_LOGIC;
    s_axi_ctrl_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_wvalid : IN STD_LOGIC;
    s_axi_ctrl_wready : OUT STD_LOGIC;
    s_axi_ctrl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctrl_bvalid : OUT STD_LOGIC;
    s_axi_ctrl_bready : IN STD_LOGIC;
    s_axi_ctrl_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_arvalid : IN STD_LOGIC;
    s_axi_ctrl_arready : OUT STD_LOGIC;
    s_axi_ctrl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctrl_rvalid : OUT STD_LOGIC;
    s_axi_ctrl_rready : IN STD_LOGIC;
    s_axi_awid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_awlock : IN STD_LOGIC;
    s_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awlock : OUT STD_LOGIC;
    m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awvalid : OUT STD_LOGIC;
    m_axi_awready : IN STD_LOGIC;
    m_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_wlast : IN STD_LOGIC;
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    m_axi_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_wlast : OUT STD_LOGIC;
    m_axi_wvalid : OUT STD_LOGIC;
    m_axi_wready : IN STD_LOGIC;
    s_axi_bid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    m_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bvalid : IN STD_LOGIC;
    m_axi_bready : OUT STD_LOGIC;
    s_axi_arid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_arlock : IN STD_LOGIC;
    s_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    m_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arlock : OUT STD_LOGIC;
    m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_arvalid : OUT STD_LOGIC;
    m_axi_arready : IN STD_LOGIC;
    s_axi_rid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rlast : OUT STD_LOGIC;
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    m_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast : IN STD_LOGIC;
    m_axi_rvalid : IN STD_LOGIC;
    m_axi_rready : OUT STD_LOGIC
  );
END base_shutdown_HP1_FPD_0;

ARCHITECTURE base_shutdown_HP1_FPD_0_arch OF base_shutdown_HP1_FPD_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF base_shutdown_HP1_FPD_0_arch: ARCHITECTURE IS "yes";
  COMPONENT dfx_axi_shutdown_manager_v1_0_0 IS
    GENERIC (
      C_FAMILY : STRING;
      C_RESET_ACTIVE_LEVEL : STD_LOGIC;
      C_RP_IS_MASTER : STD_LOGIC;
      C_CTRL_INTERFACE_TYPE : INTEGER;
      C_CTRL_ADDR_WIDTH : INTEGER;
      C_CTRL_DATA_WIDTH : INTEGER;
      C_DP_PROTOCOL : STRING;
      C_DP_AXI_RESP : INTEGER;
      C_DP_AXI_ADDR_WIDTH : INTEGER;
      C_DP_AXI_DATA_WIDTH : INTEGER;
      C_DP_AXI_AWUSER_WIDTH : INTEGER;
      C_DP_AXI_WUSER_WIDTH : INTEGER;
      C_DP_AXI_BUSER_WIDTH : INTEGER;
      C_DP_AXI_ARUSER_WIDTH : INTEGER;
      C_DP_AXI_RUSER_WIDTH : INTEGER;
      C_DP_AXI_ID_WIDTH : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      shutdown_requested : OUT STD_LOGIC;
      in_shutdown : OUT STD_LOGIC;
      irq : OUT STD_LOGIC;
      wr_irq : OUT STD_LOGIC;
      rd_irq : OUT STD_LOGIC;
      wr_in_shutdown : OUT STD_LOGIC;
      rd_in_shutdown : OUT STD_LOGIC;
      request_shutdown : IN STD_LOGIC;
      s_axi_ctrl_awvalid : IN STD_LOGIC;
      s_axi_ctrl_awready : OUT STD_LOGIC;
      s_axi_ctrl_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_wvalid : IN STD_LOGIC;
      s_axi_ctrl_wready : OUT STD_LOGIC;
      s_axi_ctrl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctrl_bvalid : OUT STD_LOGIC;
      s_axi_ctrl_bready : IN STD_LOGIC;
      s_axi_ctrl_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_arvalid : IN STD_LOGIC;
      s_axi_ctrl_arready : OUT STD_LOGIC;
      s_axi_ctrl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctrl_rvalid : OUT STD_LOGIC;
      s_axi_ctrl_rready : IN STD_LOGIC;
      s_axi_awid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_awlock : IN STD_LOGIC;
      s_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awlock : OUT STD_LOGIC;
      m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awvalid : OUT STD_LOGIC;
      m_axi_awready : IN STD_LOGIC;
      m_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_wlast : IN STD_LOGIC;
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_wlast : OUT STD_LOGIC;
      m_axi_wvalid : OUT STD_LOGIC;
      m_axi_wready : IN STD_LOGIC;
      m_axi_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_bid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bvalid : IN STD_LOGIC;
      m_axi_bready : OUT STD_LOGIC;
      m_axi_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_arid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_arlock : IN STD_LOGIC;
      s_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      m_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arlock : OUT STD_LOGIC;
      m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_arvalid : OUT STD_LOGIC;
      m_axi_arready : IN STD_LOGIC;
      s_axi_rid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rlast : OUT STD_LOGIC;
      s_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      m_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast : IN STD_LOGIC;
      m_axi_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_rvalid : IN STD_LOGIC;
      m_axi_rready : OUT STD_LOGIC
    );
  END COMPONENT dfx_axi_shutdown_manager_v1_0_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF base_shutdown_HP1_FPD_0_arch: ARCHITECTURE IS "dfx_axi_shutdown_manager_v1_0_0,Vivado 2022.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF base_shutdown_HP1_FPD_0_arch : ARCHITECTURE IS "base_shutdown_HP1_FPD_0,dfx_axi_shutdown_manager_v1_0_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF base_shutdown_HP1_FPD_0_arch: ARCHITECTURE IS "base_shutdown_HP1_FPD_0,dfx_axi_shutdown_manager_v1_0_0,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dfx_axi_shutdown_manager,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=zynquplus,C_RESET_ACTIVE_LEVEL=0,C_RP_IS_MASTER=1,C_CTRL_INTERFACE_TYPE=1,C_CTRL_ADDR_WIDTH=32,C_CTRL_DATA_WIDTH=32,C_DP_PROTOCOL=AXI4MM,C_DP_AXI_RESP=0,C_DP_AXI_ADDR_WIDTH=32,C_DP_AXI_DATA_WIDTH=128,C_DP_AXI_AWUSER_WIDTH=1,C_DP_AXI_WUSER_WIDTH=1,C_DP_AXI_BUS" & 
"ER_WIDTH=1,C_DP_AXI_ARUSER_WIDTH=1,C_DP_AXI_RUSER_WIDTH=1,C_DP_AXI_ID_WIDTH=1}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF M_AXI:S_AXI:S_AXI_CTRL, ASSOCIATED_RESET resetn:reset, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_ps_e_0_0_pl_clk1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_intf CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF irq: SIGNAL IS "XIL_INTERFACENAME irq_intf, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 irq_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_awid: SIGNAL IS "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN base_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREAD" & 
"S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rd_irq: SIGNAL IS "XIL_INTERFACENAME rd_irq_intf, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF rd_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 rd_irq_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME resetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 resetn_intf RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_awid: SIGNAL IS "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN base_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS " & 
"1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_ctrl_awvalid: SIGNAL IS "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN base_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_TH" & 
"READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF wr_irq: SIGNAL IS "XIL_INTERFACENAME wr_irq_intf, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF wr_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 wr_irq_intf INTERRUPT";
BEGIN
  U0 : dfx_axi_shutdown_manager_v1_0_0
    GENERIC MAP (
      C_FAMILY => "zynquplus",
      C_RESET_ACTIVE_LEVEL => '0',
      C_RP_IS_MASTER => '1',
      C_CTRL_INTERFACE_TYPE => 1,
      C_CTRL_ADDR_WIDTH => 32,
      C_CTRL_DATA_WIDTH => 32,
      C_DP_PROTOCOL => "AXI4MM",
      C_DP_AXI_RESP => 0,
      C_DP_AXI_ADDR_WIDTH => 32,
      C_DP_AXI_DATA_WIDTH => 128,
      C_DP_AXI_AWUSER_WIDTH => 1,
      C_DP_AXI_WUSER_WIDTH => 1,
      C_DP_AXI_BUSER_WIDTH => 1,
      C_DP_AXI_ARUSER_WIDTH => 1,
      C_DP_AXI_RUSER_WIDTH => 1,
      C_DP_AXI_ID_WIDTH => 1
    )
    PORT MAP (
      clk => clk,
      reset => '0',
      resetn => resetn,
      shutdown_requested => shutdown_requested,
      in_shutdown => in_shutdown,
      irq => irq,
      wr_irq => wr_irq,
      rd_irq => rd_irq,
      wr_in_shutdown => wr_in_shutdown,
      rd_in_shutdown => rd_in_shutdown,
      request_shutdown => '0',
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_awready => s_axi_ctrl_awready,
      s_axi_ctrl_awaddr => s_axi_ctrl_awaddr,
      s_axi_ctrl_wdata => s_axi_ctrl_wdata,
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      s_axi_ctrl_wready => s_axi_ctrl_wready,
      s_axi_ctrl_bresp => s_axi_ctrl_bresp,
      s_axi_ctrl_bvalid => s_axi_ctrl_bvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_araddr => s_axi_ctrl_araddr,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_rdata => s_axi_ctrl_rdata,
      s_axi_ctrl_rresp => s_axi_ctrl_rresp,
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_awid => s_axi_awid,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awlen => s_axi_awlen,
      s_axi_awsize => s_axi_awsize,
      s_axi_awburst => s_axi_awburst,
      s_axi_awlock => s_axi_awlock,
      s_axi_awcache => s_axi_awcache,
      s_axi_awprot => s_axi_awprot,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awqos => s_axi_awqos,
      s_axi_awregion => s_axi_awregion,
      s_axi_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_awid => m_axi_awid,
      m_axi_awaddr => m_axi_awaddr,
      m_axi_awlen => m_axi_awlen,
      m_axi_awsize => m_axi_awsize,
      m_axi_awburst => m_axi_awburst,
      m_axi_awlock => m_axi_awlock,
      m_axi_awcache => m_axi_awcache,
      m_axi_awprot => m_axi_awprot,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awready => m_axi_awready,
      m_axi_awqos => m_axi_awqos,
      m_axi_awregion => m_axi_awregion,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_wdata => m_axi_wdata,
      m_axi_wstrb => m_axi_wstrb,
      m_axi_wlast => m_axi_wlast,
      m_axi_wvalid => m_axi_wvalid,
      m_axi_wready => m_axi_wready,
      s_axi_bid => s_axi_bid,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      m_axi_bid => m_axi_bid,
      m_axi_bresp => m_axi_bresp,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bready => m_axi_bready,
      m_axi_buser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      s_axi_arid => s_axi_arid,
      s_axi_araddr => s_axi_araddr,
      s_axi_arlen => s_axi_arlen,
      s_axi_arsize => s_axi_arsize,
      s_axi_arburst => s_axi_arburst,
      s_axi_arlock => s_axi_arlock,
      s_axi_arcache => s_axi_arcache,
      s_axi_arprot => s_axi_arprot,
      s_axi_arqos => s_axi_arqos,
      s_axi_arregion => s_axi_arregion,
      s_axi_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      m_axi_arid => m_axi_arid,
      m_axi_araddr => m_axi_araddr,
      m_axi_arlen => m_axi_arlen,
      m_axi_arsize => m_axi_arsize,
      m_axi_arburst => m_axi_arburst,
      m_axi_arlock => m_axi_arlock,
      m_axi_arcache => m_axi_arcache,
      m_axi_arprot => m_axi_arprot,
      m_axi_arqos => m_axi_arqos,
      m_axi_arregion => m_axi_arregion,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arready => m_axi_arready,
      s_axi_rid => s_axi_rid,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rlast => s_axi_rlast,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      m_axi_rid => m_axi_rid,
      m_axi_rdata => m_axi_rdata,
      m_axi_rresp => m_axi_rresp,
      m_axi_rlast => m_axi_rlast,
      m_axi_ruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_rready => m_axi_rready
    );
END base_shutdown_HP1_FPD_0_arch;
