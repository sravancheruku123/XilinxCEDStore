# ########################################################################
# Copyright (C) 2019, Xilinx Inc - All rights reserved

# Licensed under the Apache License, Version 2.0 (the "License"). You may
# not use this file except in compliance with the License. A copy of the
# License is located at

 # http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.
# ########################################################################
  # Create interface ports
  set M_AXIL [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXIL ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {42} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   ] $M_AXIL

  set PCIE0_GT_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gt_rtl:1.0 PCIE0_GT_0 ]

  set S_AXIL [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXIL ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {15} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXIL

  set ch0_lpddr4_trip1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:lpddr4_rtl:1.0 ch0_lpddr4_trip1 ]

  set ch0_lpddr4_trip2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:lpddr4_rtl:1.0 ch0_lpddr4_trip2 ]

  set ch1_lpddr4_trip1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:lpddr4_rtl:1.0 ch1_lpddr4_trip1 ]

  set ch1_lpddr4_trip2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:lpddr4_rtl:1.0 ch1_lpddr4_trip2 ]

  set dma0_axis_c2h_dmawr_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_eqdma:axis_c2h_dmawr_rtl:1.0 dma0_axis_c2h_dmawr_0 ]

  set dma0_axis_c2h_status_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:qdma_c2h_status_rtl:1.0 dma0_axis_c2h_status_0 ]

  set dma0_c2h_byp_in_mm_0_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:qdma_dsc_byp_rtl:1.0 dma0_c2h_byp_in_mm_0_0 ]

  set dma0_c2h_byp_in_mm_1_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:qdma_dsc_byp_rtl:1.0 dma0_c2h_byp_in_mm_1_0 ]

  set dma0_c2h_byp_in_st_csh_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:qdma_dsc_byp_rtl:1.0 dma0_c2h_byp_in_st_csh_0 ]

  set dma0_c2h_byp_out_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:qdma_dsc_byp_rtl:1.0 dma0_c2h_byp_out_0 ]

  set dma0_dsc_crdt_in_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:qdma_dsc_crdt_in_rtl:1.0 dma0_dsc_crdt_in_0 ]

  set dma0_h2c_byp_in_mm_0_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:qdma_dsc_byp_rtl:1.0 dma0_h2c_byp_in_mm_0_0 ]

  set dma0_h2c_byp_in_mm_1_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:qdma_dsc_byp_rtl:1.0 dma0_h2c_byp_in_mm_1_0 ]

  set dma0_h2c_byp_in_st_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:qdma_dsc_byp_rtl:1.0 dma0_h2c_byp_in_st_0 ]

  set dma0_h2c_byp_out_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:qdma_dsc_byp_rtl:1.0 dma0_h2c_byp_out_0 ]

  set dma0_m_axis_h2c_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_eqdma:m_axis_h2c_rtl:1.0 dma0_m_axis_h2c_0 ]

  set dma0_qsts_out_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:eqdma_qsts_rtl:1.0 dma0_qsts_out_0 ]

  set dma0_s_axis_c2h_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_eqdma:s_axis_c2h_rtl:1.0 dma0_s_axis_c2h_0 ]

  set dma0_s_axis_c2h_cmpt_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_eqdma:s_axis_c2h_cmpt_rtl:1.0 dma0_s_axis_c2h_cmpt_0 ]

  set dma0_st_rx_msg_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 dma0_st_rx_msg_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {249997498} \
   ] $dma0_st_rx_msg_0

  set dma0_tm_dsc_sts_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:qdma_tm_dsc_sts_rtl:1.0 dma0_tm_dsc_sts_0 ]

  set gt_refclk0_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 gt_refclk0_0 ]

  set lpddr4_clk2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 lpddr4_clk2 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200321000} \
   ] $lpddr4_clk2

  set sys_clk0_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_clk0_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $sys_clk0_0

  set usr_flr_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_eqdma:usr_flr_rtl:1.0 usr_flr_0 ]

  set usr_irq_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:qdma_usr_irq_rtl:1.0 usr_irq_0 ]


  # Create ports
  set cpm_cor_irq_0 [ create_bd_port -dir O -type intr cpm_cor_irq_0 ]
  set cpm_irq0_0 [ create_bd_port -dir I -type intr cpm_irq0_0 ]
  set cpm_irq1_0 [ create_bd_port -dir I -type intr cpm_irq1_0 ]
  set cpm_misc_irq_0 [ create_bd_port -dir O -type intr cpm_misc_irq_0 ]
  set cpm_uncor_irq_0 [ create_bd_port -dir O -type intr cpm_uncor_irq_0 ]
  set dma0_axi_aresetn_0 [ create_bd_port -dir O -type rst dma0_axi_aresetn_0 ]
  set dma0_intrfc_clk_0 [ create_bd_port -dir O -type clk dma0_intrfc_clk_0 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S_AXIL:M_AXIL} \
 ] $dma0_intrfc_clk_0
  set dma0_intrfc_resetn_0 [ create_bd_port -dir I -type rst dma0_intrfc_resetn_0 ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.ECC_TYPE {0} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:emb_mem_gen axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH_A {16} \
   CONFIG.ADDR_WIDTH_B {16} \
   CONFIG.READ_DATA_WIDTH_A {512} \
   CONFIG.READ_DATA_WIDTH_B {512} \
   CONFIG.WRITE_DATA_WIDTH_B {512} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: axi_bram_ctrl_0_bram1, and set properties
  set axi_bram_ctrl_0_bram1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:emb_mem_gen axi_bram_ctrl_0_bram1 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH_A {15} \
   CONFIG.ADDR_WIDTH_B {15} \
 ] $axi_bram_ctrl_0_bram1

  # Create instance: axi_bram_ctrl_1, and set properties
  set axi_bram_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl axi_bram_ctrl_1 ]
  set_property -dict [ list \
   CONFIG.ECC_TYPE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_1

  # Create instance: axi_dbg_hub_0, and set properties
  set axi_dbg_hub_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dbg_hub axi_dbg_hub_0 ]

  # Create instance: axi_noc_0, and set properties
  set axi_noc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_noc axi_noc_0 ]
  set_property -dict [ list \
   CONFIG.CH0_LPDDR4_0_BOARD_INTERFACE {ch0_lpddr4_trip1} \
   CONFIG.CH0_LPDDR4_1_BOARD_INTERFACE {ch0_lpddr4_trip2} \
   CONFIG.CH1_LPDDR4_0_BOARD_INTERFACE {ch1_lpddr4_trip1} \
   CONFIG.CH1_LPDDR4_1_BOARD_INTERFACE {ch1_lpddr4_trip2} \
   CONFIG.CONTROLLERTYPE {LPDDR4_SDRAM} \
   CONFIG.HBM_CHNL0_CONFIG {} \
   CONFIG.LOGO_FILE {data/noc_mc.png} \
   CONFIG.MC0_CONFIG_NUM {config26} \
   CONFIG.MC0_FLIPPED_PINOUT {true} \
   CONFIG.MC1_CONFIG_NUM {config26} \
   CONFIG.MC1_FLIPPED_PINOUT {true} \
   CONFIG.MC2_CONFIG_NUM {config26} \
   CONFIG.MC3_CONFIG_NUM {config26} \
   CONFIG.MC_ADDR_BIT2 {CA0} \
   CONFIG.MC_ADDR_BIT3 {CA1} \
   CONFIG.MC_ADDR_BIT4 {CA2} \
   CONFIG.MC_ADDR_BIT5 {CA3} \
   CONFIG.MC_ADDR_BIT6 {CH_SEL} \
   CONFIG.MC_ADDR_BIT7 {NC} \
   CONFIG.MC_ADDR_BIT8 {CA4} \
   CONFIG.MC_ADDR_BIT9 {CA5} \
   CONFIG.MC_ADDR_BIT10 {CA6} \
   CONFIG.MC_ADDR_BIT11 {CA7} \
   CONFIG.MC_ADDR_BIT12 {CA8} \
   CONFIG.MC_ADDR_BIT13 {CA9} \
   CONFIG.MC_ADDR_BIT14 {BA0} \
   CONFIG.MC_ADDR_BIT15 {BA1} \
   CONFIG.MC_ADDR_BIT16 {BA2} \
   CONFIG.MC_ADDR_BIT17 {RA0} \
   CONFIG.MC_ADDR_BIT18 {RA1} \
   CONFIG.MC_ADDR_BIT19 {RA2} \
   CONFIG.MC_ADDR_BIT20 {RA3} \
   CONFIG.MC_ADDR_BIT21 {RA4} \
   CONFIG.MC_ADDR_BIT22 {RA5} \
   CONFIG.MC_ADDR_BIT23 {RA6} \
   CONFIG.MC_ADDR_BIT24 {RA7} \
   CONFIG.MC_ADDR_BIT25 {RA8} \
   CONFIG.MC_ADDR_BIT26 {RA9} \
   CONFIG.MC_ADDR_BIT27 {RA10} \
   CONFIG.MC_ADDR_BIT28 {RA11} \
   CONFIG.MC_ADDR_BIT29 {RA12} \
   CONFIG.MC_ADDR_BIT30 {RA13} \
   CONFIG.MC_ADDR_BIT31 {RA14} \
   CONFIG.MC_ADDR_BIT32 {RA15} \
   CONFIG.MC_ADDR_WIDTH {6} \
   CONFIG.MC_BA_WIDTH {3} \
   CONFIG.MC_BG_WIDTH {0} \
   CONFIG.MC_BOARD_INTRF_EN {true} \
   CONFIG.MC_BURST_LENGTH {16} \
   CONFIG.MC_CASLATENCY {36} \
   CONFIG.MC_CASWRITELATENCY {18} \
   CONFIG.MC_CH0_LP4_CHA_ENABLE {true} \
   CONFIG.MC_CH0_LP4_CHB_ENABLE {true} \
   CONFIG.MC_CH1_LP4_CHA_ENABLE {true} \
   CONFIG.MC_CH1_LP4_CHB_ENABLE {true} \
   CONFIG.MC_CHANNEL_INTERLEAVING {true} \
   CONFIG.MC_CHAN_REGION1 {DDR_LOW1} \
   CONFIG.MC_CH_INTERLEAVING_SIZE {64_Bytes} \
   CONFIG.MC_CKE_WIDTH {0} \
   CONFIG.MC_CK_WIDTH {0} \
   CONFIG.MC_COMPONENT_DENSITY {16Gb} \
   CONFIG.MC_COMPONENT_WIDTH {x32} \
   CONFIG.MC_CONFIG_NUM {config26} \
   CONFIG.MC_DATAWIDTH {32} \
   CONFIG.MC_DDR_INIT_TIMEOUT {0x00036330} \
   CONFIG.MC_DM_WIDTH {4} \
   CONFIG.MC_DQS_WIDTH {4} \
   CONFIG.MC_DQ_WIDTH {32} \
   CONFIG.MC_ECC {false} \
   CONFIG.MC_ECC_SCRUB_PERIOD {0x004C4C} \
   CONFIG.MC_ECC_SCRUB_SIZE {4096} \
   CONFIG.MC_EN_BACKGROUND_SCRUBBING {true} \
   CONFIG.MC_EN_ECC_SCRUBBING {false} \
   CONFIG.MC_F1_CASLATENCY {36} \
   CONFIG.MC_F1_CASWRITELATENCY {18} \
   CONFIG.MC_F1_LPDDR4_MR1 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR2 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR3 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR11 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR13 {0x00C0} \
   CONFIG.MC_F1_LPDDR4_MR22 {0x0000} \
   CONFIG.MC_F1_TCCD_L {0} \
   CONFIG.MC_F1_TCCD_L_MIN {0} \
   CONFIG.MC_F1_TFAW {30000} \
   CONFIG.MC_F1_TFAWMIN {30000} \
   CONFIG.MC_F1_TMOD {0} \
   CONFIG.MC_F1_TMOD_MIN {0} \
   CONFIG.MC_F1_TMRD {14000} \
   CONFIG.MC_F1_TMRDMIN {14000} \
   CONFIG.MC_F1_TMRW {10000} \
   CONFIG.MC_F1_TMRWMIN {10000} \
   CONFIG.MC_F1_TRAS {42000} \
   CONFIG.MC_F1_TRASMIN {42000} \
   CONFIG.MC_F1_TRCD {18000} \
   CONFIG.MC_F1_TRCDMIN {18000} \
   CONFIG.MC_F1_TRPAB {21000} \
   CONFIG.MC_F1_TRPABMIN {21000} \
   CONFIG.MC_F1_TRPPB {18000} \
   CONFIG.MC_F1_TRPPBMIN {18000} \
   CONFIG.MC_F1_TRRD {7500} \
   CONFIG.MC_F1_TRRDMIN {7500} \
   CONFIG.MC_F1_TRRD_L {0} \
   CONFIG.MC_F1_TRRD_L_MIN {0} \
   CONFIG.MC_F1_TRRD_S {0} \
   CONFIG.MC_F1_TRRD_S_MIN {0} \
   CONFIG.MC_F1_TWR {18000} \
   CONFIG.MC_F1_TWRMIN {18000} \
   CONFIG.MC_F1_TWTR {10000} \
   CONFIG.MC_F1_TWTRMIN {10000} \
   CONFIG.MC_F1_TWTR_L {0} \
   CONFIG.MC_F1_TWTR_L_MIN {0} \
   CONFIG.MC_F1_TWTR_S {0} \
   CONFIG.MC_F1_TWTR_S_MIN {0} \
   CONFIG.MC_F1_TZQLAT {30000} \
   CONFIG.MC_F1_TZQLATMIN {30000} \
   CONFIG.MC_INIT_MEM_USING_ECC_SCRUB {false} \
   CONFIG.MC_INPUTCLK0_PERIOD {4992} \
   CONFIG.MC_INPUT_FREQUENCY0 {200.321} \
   CONFIG.MC_IP_TIMEPERIOD0_FOR_OP {1071} \
   CONFIG.MC_IP_TIMEPERIOD1 {512} \
   CONFIG.MC_LP4_CA_A_WIDTH {6} \
   CONFIG.MC_LP4_CA_B_WIDTH {6} \
   CONFIG.MC_LP4_CKE_A_WIDTH {1} \
   CONFIG.MC_LP4_CKE_B_WIDTH {1} \
   CONFIG.MC_LP4_CKT_A_WIDTH {1} \
   CONFIG.MC_LP4_CKT_B_WIDTH {1} \
   CONFIG.MC_LP4_CS_A_WIDTH {1} \
   CONFIG.MC_LP4_CS_B_WIDTH {1} \
   CONFIG.MC_LP4_DMI_A_WIDTH {2} \
   CONFIG.MC_LP4_DMI_B_WIDTH {2} \
   CONFIG.MC_LP4_DQS_A_WIDTH {2} \
   CONFIG.MC_LP4_DQS_B_WIDTH {2} \
   CONFIG.MC_LP4_DQ_A_WIDTH {16} \
   CONFIG.MC_LP4_DQ_B_WIDTH {16} \
   CONFIG.MC_LP4_RESETN_WIDTH {1} \
   CONFIG.MC_MEMORY_DENSITY {2GB} \
   CONFIG.MC_MEMORY_DEVICE_DENSITY {16Gb} \
   CONFIG.MC_MEMORY_SPEEDGRADE {LPDDR4-4267} \
   CONFIG.MC_MEMORY_TIMEPERIOD0 {512} \
   CONFIG.MC_MEMORY_TIMEPERIOD1 {512} \
   CONFIG.MC_MEM_DEVICE_WIDTH {x32} \
   CONFIG.MC_NETLIST_SIMULATION {true} \
   CONFIG.MC_NO_CHANNELS {Dual} \
   CONFIG.MC_ODTLon {8} \
   CONFIG.MC_ODT_WIDTH {0} \
   CONFIG.MC_PER_RD_INTVL {0} \
   CONFIG.MC_PRE_DEF_ADDR_MAP_SEL {ROW_BANK_COLUMN} \
   CONFIG.MC_REFRESH_SPEED {1x} \
   CONFIG.MC_TCCD {8} \
   CONFIG.MC_TCCD_L {0} \
   CONFIG.MC_TCCD_L_MIN {0} \
   CONFIG.MC_TCKE {15} \
   CONFIG.MC_TCKEMIN {15} \
   CONFIG.MC_TDQS2DQ_MAX {800} \
   CONFIG.MC_TDQS2DQ_MIN {200} \
   CONFIG.MC_TDQSCK_MAX {3500} \
   CONFIG.MC_TFAW {30000} \
   CONFIG.MC_TFAWMIN {30000} \
   CONFIG.MC_TFAW_nCK {0} \
   CONFIG.MC_TMOD {0} \
   CONFIG.MC_TMOD_MIN {0} \
   CONFIG.MC_TMPRR {0} \
   CONFIG.MC_TMRD {14000} \
   CONFIG.MC_TMRDMIN {14000} \
   CONFIG.MC_TMRD_div4 {10} \
   CONFIG.MC_TMRD_nCK {28} \
   CONFIG.MC_TMRW {10000} \
   CONFIG.MC_TMRWMIN {10000} \
   CONFIG.MC_TMRW_div4 {10} \
   CONFIG.MC_TMRW_nCK {20} \
   CONFIG.MC_TODTon_MIN {3} \
   CONFIG.MC_TOSCO {40000} \
   CONFIG.MC_TOSCOMIN {40000} \
   CONFIG.MC_TOSCO_nCK {79} \
   CONFIG.MC_TPAR_ALERT_ON {0} \
   CONFIG.MC_TPAR_ALERT_PW_MAX {0} \
   CONFIG.MC_TPBR2PBR {90000} \
   CONFIG.MC_TPBR2PBRMIN {90000} \
   CONFIG.MC_TRAS {42000} \
   CONFIG.MC_TRASMIN {42000} \
   CONFIG.MC_TRAS_nCK {83} \
   CONFIG.MC_TRC {63000} \
   CONFIG.MC_TRCD {18000} \
   CONFIG.MC_TRCDMIN {18000} \
   CONFIG.MC_TRCD_nCK {36} \
   CONFIG.MC_TRCMIN {0} \
   CONFIG.MC_TREFI {3904000} \
   CONFIG.MC_TREFIPB {488000} \
   CONFIG.MC_TRFC {0} \
   CONFIG.MC_TRFCAB {280000} \
   CONFIG.MC_TRFCABMIN {280000} \
   CONFIG.MC_TRFCMIN {0} \
   CONFIG.MC_TRFCPB {140000} \
   CONFIG.MC_TRFCPBMIN {140000} \
   CONFIG.MC_TRP {0} \
   CONFIG.MC_TRPAB {21000} \
   CONFIG.MC_TRPABMIN {21000} \
   CONFIG.MC_TRPAB_nCK {42} \
   CONFIG.MC_TRPMIN {0} \
   CONFIG.MC_TRPPB {18000} \
   CONFIG.MC_TRPPBMIN {18000} \
   CONFIG.MC_TRPPB_nCK {36} \
   CONFIG.MC_TRPRE {1.8} \
   CONFIG.MC_TRRD {7500} \
   CONFIG.MC_TRRDMIN {7500} \
   CONFIG.MC_TRRD_L {0} \
   CONFIG.MC_TRRD_L_MIN {0} \
   CONFIG.MC_TRRD_S {0} \
   CONFIG.MC_TRRD_S_MIN {0} \
   CONFIG.MC_TRRD_nCK {15} \
   CONFIG.MC_TRTP_nCK {16} \
   CONFIG.MC_TWPRE {1.8} \
   CONFIG.MC_TWPST {0.4} \
   CONFIG.MC_TWR {18000} \
   CONFIG.MC_TWRMIN {18000} \
   CONFIG.MC_TWR_nCK {36} \
   CONFIG.MC_TWTR {10000} \
   CONFIG.MC_TWTRMIN {10000} \
   CONFIG.MC_TWTR_L {0} \
   CONFIG.MC_TWTR_S {0} \
   CONFIG.MC_TWTR_S_MIN {0} \
   CONFIG.MC_TWTR_nCK {20} \
   CONFIG.MC_TXP {15} \
   CONFIG.MC_TXPMIN {15} \
   CONFIG.MC_TXPR {0} \
   CONFIG.MC_TZQCAL {1000000} \
   CONFIG.MC_TZQCAL_div4 {489} \
   CONFIG.MC_TZQCS_ITVL {0} \
   CONFIG.MC_TZQLAT {30000} \
   CONFIG.MC_TZQLATMIN {30000} \
   CONFIG.MC_TZQLAT_div4 {15} \
   CONFIG.MC_TZQLAT_nCK {59} \
   CONFIG.MC_TZQ_START_ITVL {1000000000} \
   CONFIG.MC_USER_DEFINED_ADDRESS_MAP {16RA-3BA-10CA} \
   CONFIG.MC_XPLL_CLKOUT1_PERIOD {1024} \
   CONFIG.NUM_CLKS {3} \
   CONFIG.NUM_MC {2} \
   CONFIG.NUM_MCP {4} \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_NMI {0} \
   CONFIG.NUM_SI {2} \
   CONFIG.sys_clk0_BOARD_INTERFACE {lpddr4_clk1} \
   CONFIG.sys_clk1_BOARD_INTERFACE {lpddr4_clk2} \
   CONFIG.sys_clk2_BOARD_INTERFACE {Custom} \
 ] $axi_noc_0

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.PHYSICAL_LOC {} \
   CONFIG.APERTURES {{0x201_0000_0000 1G}} \
   CONFIG.CATEGORY {pl} \
 ] [get_bd_intf_pins /axi_noc_0/M00_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.APERTURES {{0x201_8000_0000 1G}} \
   CONFIG.CATEGORY {pl} \
 ] [get_bd_intf_pins /axi_noc_0/M01_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.APERTURES {{0x208_0000_0000 4G}} \
   CONFIG.CATEGORY {pl} \
 ] [get_bd_intf_pins /axi_noc_0/M02_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.PHYSICAL_LOC {} \
   CONFIG.CONNECTIONS {MC_0 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M01_AXI { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M02_AXI { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M00_AXI { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
   CONFIG.DEST_IDS {M01_AXI:0x0:M02_AXI:0x40:M00_AXI:0x80} \
   CONFIG.CATEGORY {ps_pcie} \
 ] [get_bd_intf_pins /axi_noc_0/S00_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.PHYSICAL_LOC {} \
   CONFIG.CONNECTIONS {MC_0 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M01_AXI { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M02_AXI { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M00_AXI { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
   CONFIG.DEST_IDS {M01_AXI:0x0:M02_AXI:0x40:M00_AXI:0x80} \
   CONFIG.CATEGORY {ps_pcie} \
 ] [get_bd_intf_pins /axi_noc_0/S01_AXI]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S00_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk0]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S01_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk1]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {M00_AXI:M01_AXI:M02_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk2]

  # Create instance: pcie_qdma_mailbox_0, and set properties
  set pcie_qdma_mailbox_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pcie_qdma_mailbox pcie_qdma_mailbox_0 ]
  set_property -dict [ list \
   CONFIG.num_pfs {4} \
   CONFIG.num_vfs_pf0 {64} \
   CONFIG.num_vfs_pf1 {64} \
   CONFIG.num_vfs_pf2 {64} \
   CONFIG.num_vfs_pf3 {48} \
 ] $pcie_qdma_mailbox_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset proc_sys_reset_0 ]

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: smartconnect_1, and set properties
  set smartconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect smartconnect_1 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_1

  # Create instance: versal_cips_0, and set properties
  set versal_cips_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:versal_cips versal_cips_0 ]
  set_property -dict [ list \
   CONFIG.BOOT_MODE {Custom} \
   CONFIG.CLOCK_MODE {Custom} \
   CONFIG.CPM_CONFIG {\
     AURORA_LINE_RATE_GPBS {12.5}\
     BOOT_SECONDARY_PCIE_ENABLE {0}\
     CPM_A0_REFCLK {0}\
     CPM_A1_REFCLK {0}\
     CPM_AXI_SLV_BRIDGE_BASE_ADDRR_H {0x00000006}\
     CPM_AXI_SLV_BRIDGE_BASE_ADDRR_L {0x00000000}\
     CPM_AXI_SLV_MULTQ_BASE_ADDRR_H {0x00000006}\
     CPM_AXI_SLV_MULTQ_BASE_ADDRR_L {0x10000000}\
     CPM_AXI_SLV_XDMA_BASE_ADDRR_H {0x00000006}\
     CPM_AXI_SLV_XDMA_BASE_ADDRR_L {0x10020000}\
     CPM_CCIX_HOOD_MODE_0 {0}\
     CPM_CCIX_HOOD_MODE_1 {0}\
     CPM_CCIX_IS_MM_ONLY {0}\
     CPM_CCIX_PARTIAL_CACHELINE_SUPPORT {0}\
     CPM_CCIX_PORT_AGGREGATION_ENABLE {0}\
     CPM_CCIX_RP_EN {0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_0 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_1 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_10 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_11 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_12 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_13 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_14 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_15 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_2 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_3 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_4 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_5 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_6 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_7 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_8 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_AGENT_TYPE_9 {HA0}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_0 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_1 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_10 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_11 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_12 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_13 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_14 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_15 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_2 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_3 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_4 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_5 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_6 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_7 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_8 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_ATTRIB_9 {Normal_Non_Cacheable_Memory}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_0 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_1 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_10 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_11 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_12 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_13 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_14 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_15 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_2 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_3 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_4 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_5 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_6 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_7 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_8 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_BASEADDRESS_9 {0x00000000}\
     CPM_CCIX_RSVRD_MEMORY_REGION_0 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_1 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_10 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_11 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_12 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_13 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_14 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_15 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_2 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_3 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_4 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_5 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_6 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_7 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_8 {0}\
     CPM_CCIX_RSVRD_MEMORY_REGION_9 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_0 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_1 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_10 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_11 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_12 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_13 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_14 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_15 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_2 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_3 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_4 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_5 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_6 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_7 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_8 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_9 {4GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_0 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_1 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_10 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_11 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_12 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_13 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_14 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_15 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_2 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_3 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_4 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_5 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_6 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_7 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_8 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_9 {16GB}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_0 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_1 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_10 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_11 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_12 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_13 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_14 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_15 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_2 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_3 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_4 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_5 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_6 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_7 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_8 {0}\
     CPM_CCIX_RSVRD_MEMORY_SIZE_OVERWR_EN_9 {0}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_0 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_1 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_10 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_11 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_12 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_13 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_14 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_15 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_2 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_3 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_4 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_5 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_6 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_7 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_8 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_RSVRD_MEMORY_TYPE_9 {Other_or_Non_Specified_Memory_Type}\
     CPM_CCIX_SELECT_AGENT {None}\
     CPM_CDO_EN {0}\
     CPM_CLRERR_LANE_MARGIN {0}\
     CPM_CORE_REF_CTRL_ACT_FREQMHZ {899.991028}\
     CPM_CORE_REF_CTRL_DIVISOR0 {2}\
     CPM_CORE_REF_CTRL_FREQMHZ {900}\
     CPM_CPLL_CTRL_FBDIV {108}\
     CPM_CPLL_CTRL_SRCSEL {REF_CLK}\
     CPM_DBG_REF_CTRL_ACT_FREQMHZ {299.997009}\
     CPM_DBG_REF_CTRL_DIVISOR0 {6}\
     CPM_DBG_REF_CTRL_FREQMHZ {300}\
     CPM_DESIGN_USE_MODE {0}\
     CPM_DMA_CREDIT_INIT_DEMUX {1}\
     CPM_DMA_IS_MM_ONLY {0}\
     CPM_LSBUS_REF_CTRL_ACT_FREQMHZ {149.998505}\
     CPM_LSBUS_REF_CTRL_DIVISOR0 {12}\
     CPM_LSBUS_REF_CTRL_FREQMHZ {150}\
     CPM_NUM_CCIX_CREDIT_LINKS {0}\
     CPM_NUM_HNF_AGENTS {0}\
     CPM_NUM_HOME_OR_SLAVE_AGENTS {0}\
     CPM_NUM_REQ_AGENTS {0}\
     CPM_NUM_SLAVE_AGENTS {0}\
     CPM_PCIE0_AER_CAP_ENABLED {1}\
     CPM_PCIE0_ARI_CAP_ENABLED {1}\
     CPM_PCIE0_ASYNC_MODE {SRNS}\
     CPM_PCIE0_ATS_PRI_CAP_ON {0}\
     CPM_PCIE0_AXIBAR_NUM {1}\
     CPM_PCIE0_AXISTEN_IF_CC_ALIGNMENT_MODE {Address_Aligned}\
     CPM_PCIE0_AXISTEN_IF_COMPL_TIMEOUT_REG0 {BEBC20}\
     CPM_PCIE0_AXISTEN_IF_COMPL_TIMEOUT_REG1 {2FAF080}\
     CPM_PCIE0_AXISTEN_IF_CQ_ALIGNMENT_MODE {Address_Aligned}\
     CPM_PCIE0_AXISTEN_IF_ENABLE_256_TAGS {0}\
     CPM_PCIE0_AXISTEN_IF_ENABLE_CLIENT_TAG {1}\
     CPM_PCIE0_AXISTEN_IF_ENABLE_INTERNAL_MSIX_TABLE {0}\
     CPM_PCIE0_AXISTEN_IF_ENABLE_MESSAGE_RID_CHECK {0}\
     CPM_PCIE0_AXISTEN_IF_ENABLE_MSG_ROUTE {0}\
     CPM_PCIE0_AXISTEN_IF_ENABLE_RX_MSG_INTFC {0}\
     CPM_PCIE0_AXISTEN_IF_ENABLE_RX_TAG_SCALING {0}\
     CPM_PCIE0_AXISTEN_IF_ENABLE_TX_TAG_SCALING {0}\
     CPM_PCIE0_AXISTEN_IF_EXTEND_CPL_TIMEOUT {16ms_to_1s}\
     CPM_PCIE0_AXISTEN_IF_EXT_512 {0}\
     CPM_PCIE0_AXISTEN_IF_EXT_512_CC_STRADDLE {0}\
     CPM_PCIE0_AXISTEN_IF_EXT_512_CQ_STRADDLE {0}\
     CPM_PCIE0_AXISTEN_IF_EXT_512_RC_4TLP_STRADDLE {0}\
     CPM_PCIE0_AXISTEN_IF_EXT_512_RC_STRADDLE {1}\
     CPM_PCIE0_AXISTEN_IF_EXT_512_RQ_STRADDLE {1}\
     CPM_PCIE0_AXISTEN_IF_RC_ALIGNMENT_MODE {DWORD_Aligned}\
     CPM_PCIE0_AXISTEN_IF_RC_STRADDLE {0}\
     CPM_PCIE0_AXISTEN_IF_RQ_ALIGNMENT_MODE {DWORD_Aligned}\
     CPM_PCIE0_AXISTEN_IF_RX_PARITY_EN {0}\
     CPM_PCIE0_AXISTEN_IF_SIM_SHORT_CPL_TIMEOUT {0}\
     CPM_PCIE0_AXISTEN_IF_TX_PARITY_EN {0}\
     CPM_PCIE0_AXISTEN_IF_WIDTH {512}\
     CPM_PCIE0_AXISTEN_MSIX_VECTORS_PER_FUNCTION {8}\
     CPM_PCIE0_AXISTEN_USER_SPARE {0}\
     CPM_PCIE0_BRIDGE_AXI_SLAVE_IF {0}\
     CPM_PCIE0_CCIX_EN {0}\
     CPM_PCIE0_CCIX_OPT_TLP_GEN_AND_RECEPT_EN_CONTROL_INTERNAL {0}\
     CPM_PCIE0_CCIX_VENDOR_ID {0}\
     CPM_PCIE0_CFG_CTL_IF {0}\
     CPM_PCIE0_CFG_EXT_IF {0}\
     CPM_PCIE0_CFG_FC_IF {0}\
     CPM_PCIE0_CFG_MGMT_IF {0}\
     CPM_PCIE0_CFG_SPEC_4_0 {0}\
     CPM_PCIE0_CFG_STS_IF {0}\
     CPM_PCIE0_CFG_VEND_ID {10EE}\
     CPM_PCIE0_CONTROLLER_ENABLE {1}\
     CPM_PCIE0_COPY_PF0_ENABLED {0}\
     CPM_PCIE0_COPY_PF0_QDMA_ENABLED {0}\
     CPM_PCIE0_COPY_PF0_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_COPY_SRIOV_PF0_ENABLED {0}\
     CPM_PCIE0_COPY_XDMA_PF0_ENABLED {0}\
     CPM_PCIE0_CORE_CLK_FREQ {500}\
     CPM_PCIE0_CORE_EDR_CLK_FREQ {625}\
     CPM_PCIE0_DMA_DATA_WIDTH {512bits}\
     CPM_PCIE0_DMA_ENABLE_SECURE {0}\
     CPM_PCIE0_DMA_INTF {AXI_MM_and_AXI_Stream}\
     CPM_PCIE0_DMA_MASK {256bits}\
     CPM_PCIE0_DMA_METERING_ENABLE {1}\
     CPM_PCIE0_DMA_MSI_RX_PIN_ENABLED {FALSE}\
     CPM_PCIE0_DMA_ROOT_PORT {0}\
     CPM_PCIE0_DSC_BYPASS_RD {1}\
     CPM_PCIE0_DSC_BYPASS_WR {1}\
     CPM_PCIE0_EDR_IF {0}\
     CPM_PCIE0_EDR_LINK_SPEED {None}\
     CPM_PCIE0_EN_PARITY {0}\
     CPM_PCIE0_EXT_CFG_SPACE_MODE {None}\
     CPM_PCIE0_EXT_PCIE_CFG_SPACE_ENABLED {None}\
     CPM_PCIE0_FUNCTIONAL_MODE {QDMA}\
     CPM_PCIE0_LANE_REVERSAL_EN {1}\
     CPM_PCIE0_LEGACY_EXT_PCIE_CFG_SPACE_ENABLED {0}\
     CPM_PCIE0_LINK_DEBUG_AXIST_EN {0}\
     CPM_PCIE0_LINK_DEBUG_EN {0}\
     CPM_PCIE0_LINK_SPEED0_FOR_POWER {GEN4}\
     CPM_PCIE0_LINK_WIDTH0_FOR_POWER {8}\
     CPM_PCIE0_MAILBOX_ENABLE {1}\
     CPM_PCIE0_MAX_LINK_SPEED {16.0_GT/s}\
     CPM_PCIE0_MCAP_ENABLE {0}\
     CPM_PCIE0_MESG_RSVD_IF {0}\
     CPM_PCIE0_MESG_TRANSMIT_IF {0}\
     CPM_PCIE0_MODE0_FOR_POWER {CPM5_DMA}\
     CPM_PCIE0_MODES {DMA}\
     CPM_PCIE0_MODE_SELECTION {Advanced}\
     CPM_PCIE0_MSIX_RP_ENABLED {0}\
     CPM_PCIE0_MSI_X_OPTIONS {MSI-X_Internal}\
     CPM_PCIE0_NUM_USR_IRQ {0}\
     CPM_PCIE0_PASID_IF {0}\
     CPM_PCIE0_PF0_AER_CAP_ECRC_GEN_AND_CHECK_CAPABLE {0}\
     CPM_PCIE0_PF0_ARI_CAP_NEXT_FUNC {0}\
     CPM_PCIE0_PF0_ARI_CAP_VER {1}\
     CPM_PCIE0_PF0_ATS_CAP_ON {0}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BASEADDR_0 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BASEADDR_1 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BASEADDR_2 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BASEADDR_3 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BASEADDR_4 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BASEADDR_5 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BRIDGE_0 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BRIDGE_1 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BRIDGE_2 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BRIDGE_3 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BRIDGE_4 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_BRIDGE_5 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_HIGHADDR_0 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_HIGHADDR_1 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_HIGHADDR_2 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_HIGHADDR_3 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_HIGHADDR_4 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXIBAR2PCIE_HIGHADDR_5 {0x0000000000000000}\
     CPM_PCIE0_PF0_AXILITE_MASTER_64BIT {0}\
     CPM_PCIE0_PF0_AXILITE_MASTER_ENABLED {0}\
     CPM_PCIE0_PF0_AXILITE_MASTER_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_AXILITE_MASTER_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_AXILITE_MASTER_SIZE {128}\
     CPM_PCIE0_PF0_AXIST_BYPASS_64BIT {0}\
     CPM_PCIE0_PF0_AXIST_BYPASS_ENABLED {0}\
     CPM_PCIE0_PF0_AXIST_BYPASS_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_AXIST_BYPASS_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_AXIST_BYPASS_SIZE {128}\
     CPM_PCIE0_PF0_BAR0_64BIT {1}\
     CPM_PCIE0_PF0_BAR0_BRIDGE_64BIT {0}\
     CPM_PCIE0_PF0_BAR0_BRIDGE_ENABLED {0}\
     CPM_PCIE0_PF0_BAR0_BRIDGE_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR0_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR0_BRIDGE_SIZE {4}\
     CPM_PCIE0_PF0_BAR0_BRIDGE_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR0_ENABLED {1}\
     CPM_PCIE0_PF0_BAR0_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR0_QDMA_64BIT {1}\
     CPM_PCIE0_PF0_BAR0_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR0_QDMA_ENABLED {1}\
     CPM_PCIE0_PF0_BAR0_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR0_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR0_QDMA_SIZE {512}\
     CPM_PCIE0_PF0_BAR0_QDMA_TYPE {DMA}\
     CPM_PCIE0_PF0_BAR0_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR0_SIZE {512}\
     CPM_PCIE0_PF0_BAR0_SRIOV_QDMA_64BIT {1}\
     CPM_PCIE0_PF0_BAR0_SRIOV_QDMA_ENABLED {1}\
     CPM_PCIE0_PF0_BAR0_SRIOV_QDMA_PREFETCHABLE {1}\
     CPM_PCIE0_PF0_BAR0_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR0_SRIOV_QDMA_SIZE {32}\
     CPM_PCIE0_PF0_BAR0_SRIOV_QDMA_TYPE {DMA}\
     CPM_PCIE0_PF0_BAR0_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR0_XDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR0_XDMA_AXCACHE {1}\
     CPM_PCIE0_PF0_BAR0_XDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR0_XDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR0_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR1_64BIT {0}\
     CPM_PCIE0_PF0_BAR1_BRIDGE_ENABLED {0}\
     CPM_PCIE0_PF0_BAR1_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR1_BRIDGE_SIZE {4}\
     CPM_PCIE0_PF0_BAR1_BRIDGE_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR1_ENABLED {0}\
     CPM_PCIE0_PF0_BAR1_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR1_QDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR1_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR1_QDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR1_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR1_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR1_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR1_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR1_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR1_SIZE {4}\
     CPM_PCIE0_PF0_BAR1_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR1_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR1_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR1_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR1_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR1_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR1_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR1_XDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR1_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR1_XDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR1_XDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR1_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR2_64BIT {1}\
     CPM_PCIE0_PF0_BAR2_BRIDGE_64BIT {0}\
     CPM_PCIE0_PF0_BAR2_BRIDGE_ENABLED {0}\
     CPM_PCIE0_PF0_BAR2_BRIDGE_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR2_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR2_BRIDGE_SIZE {4}\
     CPM_PCIE0_PF0_BAR2_BRIDGE_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR2_ENABLED {1}\
     CPM_PCIE0_PF0_BAR2_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR2_QDMA_64BIT {1}\
     CPM_PCIE0_PF0_BAR2_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR2_QDMA_ENABLED {1}\
     CPM_PCIE0_PF0_BAR2_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR2_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR2_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR2_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR2_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR2_SIZE {4}\
     CPM_PCIE0_PF0_BAR2_SRIOV_QDMA_64BIT {1}\
     CPM_PCIE0_PF0_BAR2_SRIOV_QDMA_ENABLED {1}\
     CPM_PCIE0_PF0_BAR2_SRIOV_QDMA_PREFETCHABLE {1}\
     CPM_PCIE0_PF0_BAR2_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR2_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR2_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR2_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR2_XDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR2_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR2_XDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR2_XDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR2_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR3_64BIT {0}\
     CPM_PCIE0_PF0_BAR3_BRIDGE_ENABLED {0}\
     CPM_PCIE0_PF0_BAR3_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR3_BRIDGE_SIZE {4}\
     CPM_PCIE0_PF0_BAR3_BRIDGE_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR3_ENABLED {0}\
     CPM_PCIE0_PF0_BAR3_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR3_QDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR3_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR3_QDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR3_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR3_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR3_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR3_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR3_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR3_SIZE {4}\
     CPM_PCIE0_PF0_BAR3_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR3_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR3_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR3_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR3_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR3_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR3_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR3_XDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR3_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR3_XDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR3_XDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR3_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR4_64BIT {0}\
     CPM_PCIE0_PF0_BAR4_BRIDGE_64BIT {0}\
     CPM_PCIE0_PF0_BAR4_BRIDGE_ENABLED {0}\
     CPM_PCIE0_PF0_BAR4_BRIDGE_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR4_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR4_BRIDGE_SIZE {4}\
     CPM_PCIE0_PF0_BAR4_BRIDGE_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR4_ENABLED {0}\
     CPM_PCIE0_PF0_BAR4_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR4_QDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR4_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR4_QDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR4_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR4_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR4_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR4_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR4_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR4_SIZE {4}\
     CPM_PCIE0_PF0_BAR4_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR4_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR4_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR4_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR4_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR4_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR4_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR4_XDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR4_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR4_XDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR4_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR4_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR4_XDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR4_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR5_64BIT {0}\
     CPM_PCIE0_PF0_BAR5_BRIDGE_ENABLED {0}\
     CPM_PCIE0_PF0_BAR5_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR5_BRIDGE_SIZE {4}\
     CPM_PCIE0_PF0_BAR5_BRIDGE_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR5_ENABLED {0}\
     CPM_PCIE0_PF0_BAR5_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR5_QDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR5_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR5_QDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR5_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR5_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR5_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR5_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR5_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR5_SIZE {4}\
     CPM_PCIE0_PF0_BAR5_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR5_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR5_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR5_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR5_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR5_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BAR5_TYPE {Memory}\
     CPM_PCIE0_PF0_BAR5_XDMA_64BIT {0}\
     CPM_PCIE0_PF0_BAR5_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF0_BAR5_XDMA_ENABLED {0}\
     CPM_PCIE0_PF0_BAR5_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_BAR5_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_BAR5_XDMA_SIZE {4}\
     CPM_PCIE0_PF0_BAR5_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF0_BASE_CLASS_MENU {Memory_controller}\
     CPM_PCIE0_PF0_BASE_CLASS_VALUE {05}\
     CPM_PCIE0_PF0_CAPABILITY_POINTER {80}\
     CPM_PCIE0_PF0_CFG_DEV_ID {B03F}\
     CPM_PCIE0_PF0_CFG_REV_ID {0}\
     CPM_PCIE0_PF0_CFG_SUBSYS_ID {7}\
     CPM_PCIE0_PF0_CFG_SUBSYS_VEND_ID {10EE}\
     CPM_PCIE0_PF0_CLASS_CODE {0x058000}\
     CPM_PCIE0_PF0_DEV_CAP_10B_TAG_EN {0}\
     CPM_PCIE0_PF0_DEV_CAP_ENDPOINT_L0S_LATENCY {less_than_64ns}\
     CPM_PCIE0_PF0_DEV_CAP_ENDPOINT_L1S_LATENCY {less_than_1us}\
     CPM_PCIE0_PF0_DEV_CAP_EXT_TAG_EN {1}\
     CPM_PCIE0_PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE {1}\
     CPM_PCIE0_PF0_DEV_CAP_MAX_PAYLOAD {512_bytes}\
     CPM_PCIE0_PF0_DLL_FEATURE_CAP_ID {0x0025}\
     CPM_PCIE0_PF0_DLL_FEATURE_CAP_ON {1}\
     CPM_PCIE0_PF0_DLL_FEATURE_CAP_VER {1}\
     CPM_PCIE0_PF0_DSN_CAP_ENABLE {0}\
     CPM_PCIE0_PF0_EXPANSION_ROM_ENABLED {0}\
     CPM_PCIE0_PF0_EXPANSION_ROM_QDMA_ENABLED {0}\
     CPM_PCIE0_PF0_EXPANSION_ROM_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_EXPANSION_ROM_QDMA_SIZE {2}\
     CPM_PCIE0_PF0_EXPANSION_ROM_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_EXPANSION_ROM_SIZE {2}\
     CPM_PCIE0_PF0_INTERFACE_VALUE {00}\
     CPM_PCIE0_PF0_INTERRUPT_PIN {NONE}\
     CPM_PCIE0_PF0_LINK_CAP_ASPM_SUPPORT {No_ASPM}\
     CPM_PCIE0_PF0_LINK_STATUS_SLOT_CLOCK_CONFIG {1}\
     CPM_PCIE0_PF0_MARGINING_CAP_ID {0}\
     CPM_PCIE0_PF0_MARGINING_CAP_ON {1}\
     CPM_PCIE0_PF0_MARGINING_CAP_VER {1}\
     CPM_PCIE0_PF0_MSIX_CAP_PBA_BIR {BAR_1:0}\
     CPM_PCIE0_PF0_MSIX_CAP_PBA_OFFSET {54000}\
     CPM_PCIE0_PF0_MSIX_CAP_TABLE_BIR {BAR_1:0}\
     CPM_PCIE0_PF0_MSIX_CAP_TABLE_OFFSET {50000}\
     CPM_PCIE0_PF0_MSIX_CAP_TABLE_SIZE {7}\
     CPM_PCIE0_PF0_MSIX_ENABLED {1}\
     CPM_PCIE0_PF0_MSI_CAP_MULTIMSGCAP {1_vector}\
     CPM_PCIE0_PF0_MSI_CAP_PERVECMASKCAP {0}\
     CPM_PCIE0_PF0_MSI_ENABLED {0}\
     CPM_PCIE0_PF0_PASID_CAP_MAX_PASID_WIDTH {1}\
     CPM_PCIE0_PF0_PASID_CAP_ON {0}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_AXIL_MASTER {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_AXIST_BYPASS {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_0 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_1 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_2 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_3 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_4 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_5 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_QDMA_0 {0x0000020800000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_QDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_QDMA_2 {0x0000020180000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_QDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_QDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_QDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_0 {0x0000020840000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_2 {0x0000020180000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_XDMA_0 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_XDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_XDMA_2 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_XDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_XDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF0_PCIEBAR2AXIBAR_XDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF0_PL16_CAP_ID {0}\
     CPM_PCIE0_PF0_PL16_CAP_ON {1}\
     CPM_PCIE0_PF0_PL16_CAP_VER {1}\
     CPM_PCIE0_PF0_PM_CAP_ID {1}\
     CPM_PCIE0_PF0_PM_CAP_PMESUPPORT_D0 {1}\
     CPM_PCIE0_PF0_PM_CAP_PMESUPPORT_D1 {1}\
     CPM_PCIE0_PF0_PM_CAP_PMESUPPORT_D3COLD {1}\
     CPM_PCIE0_PF0_PM_CAP_PMESUPPORT_D3HOT {1}\
     CPM_PCIE0_PF0_PM_CAP_SUPP_D1_STATE {1}\
     CPM_PCIE0_PF0_PM_CAP_VER_ID {3}\
     CPM_PCIE0_PF0_PM_CSR_NOSOFTRESET {1}\
     CPM_PCIE0_PF0_PRI_CAP_ON {0}\
     CPM_PCIE0_PF0_SRIOV_ARI_CAPBL_HIER_PRESERVED {0}\
     CPM_PCIE0_PF0_SRIOV_BAR0_64BIT {1}\
     CPM_PCIE0_PF0_SRIOV_BAR0_ENABLED {1}\
     CPM_PCIE0_PF0_SRIOV_BAR0_PREFETCHABLE {1}\
     CPM_PCIE0_PF0_SRIOV_BAR0_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_SRIOV_BAR0_SIZE {32}\
     CPM_PCIE0_PF0_SRIOV_BAR0_TYPE {Memory}\
     CPM_PCIE0_PF0_SRIOV_BAR1_64BIT {0}\
     CPM_PCIE0_PF0_SRIOV_BAR1_ENABLED {0}\
     CPM_PCIE0_PF0_SRIOV_BAR1_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_SRIOV_BAR1_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_SRIOV_BAR1_SIZE {4}\
     CPM_PCIE0_PF0_SRIOV_BAR1_TYPE {Memory}\
     CPM_PCIE0_PF0_SRIOV_BAR2_64BIT {1}\
     CPM_PCIE0_PF0_SRIOV_BAR2_ENABLED {1}\
     CPM_PCIE0_PF0_SRIOV_BAR2_PREFETCHABLE {1}\
     CPM_PCIE0_PF0_SRIOV_BAR2_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_SRIOV_BAR2_SIZE {4}\
     CPM_PCIE0_PF0_SRIOV_BAR2_TYPE {Memory}\
     CPM_PCIE0_PF0_SRIOV_BAR3_64BIT {0}\
     CPM_PCIE0_PF0_SRIOV_BAR3_ENABLED {0}\
     CPM_PCIE0_PF0_SRIOV_BAR3_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_SRIOV_BAR3_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_SRIOV_BAR3_SIZE {4}\
     CPM_PCIE0_PF0_SRIOV_BAR3_TYPE {Memory}\
     CPM_PCIE0_PF0_SRIOV_BAR4_64BIT {0}\
     CPM_PCIE0_PF0_SRIOV_BAR4_ENABLED {0}\
     CPM_PCIE0_PF0_SRIOV_BAR4_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_SRIOV_BAR4_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_SRIOV_BAR4_SIZE {4}\
     CPM_PCIE0_PF0_SRIOV_BAR4_TYPE {Memory}\
     CPM_PCIE0_PF0_SRIOV_BAR5_64BIT {0}\
     CPM_PCIE0_PF0_SRIOV_BAR5_ENABLED {0}\
     CPM_PCIE0_PF0_SRIOV_BAR5_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_SRIOV_BAR5_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_SRIOV_BAR5_SIZE {4}\
     CPM_PCIE0_PF0_SRIOV_BAR5_TYPE {Memory}\
     CPM_PCIE0_PF0_SRIOV_CAP_ENABLE {0}\
     CPM_PCIE0_PF0_SRIOV_CAP_INITIAL_VF {64}\
     CPM_PCIE0_PF0_SRIOV_CAP_TOTAL_VF {0}\
     CPM_PCIE0_PF0_SRIOV_CAP_VER {1}\
     CPM_PCIE0_PF0_SRIOV_FIRST_VF_OFFSET {16}\
     CPM_PCIE0_PF0_SRIOV_FUNC_DEP_LINK {0}\
     CPM_PCIE0_PF0_SRIOV_SUPPORTED_PAGE_SIZE {0x00000553}\
     CPM_PCIE0_PF0_SRIOV_VF_DEVICE_ID {C03F}\
     CPM_PCIE0_PF0_SUB_CLASS_INTF_MENU {Other_memory_controller}\
     CPM_PCIE0_PF0_SUB_CLASS_VALUE {80}\
     CPM_PCIE0_PF0_TPHR_CAP_DEV_SPECIFIC_MODE {1}\
     CPM_PCIE0_PF0_TPHR_CAP_ENABLE {0}\
     CPM_PCIE0_PF0_TPHR_CAP_INT_VEC_MODE {1}\
     CPM_PCIE0_PF0_TPHR_CAP_ST_TABLE_LOC {ST_Table_not_present}\
     CPM_PCIE0_PF0_TPHR_CAP_ST_TABLE_SIZE {16}\
     CPM_PCIE0_PF0_TPHR_CAP_VER {1}\
     CPM_PCIE0_PF0_TPHR_ENABLE {0}\
     CPM_PCIE0_PF0_USE_CLASS_CODE_LOOKUP_ASSISTANT {0}\
     CPM_PCIE0_PF0_VC_ARB_CAPABILITY {0}\
     CPM_PCIE0_PF0_VC_ARB_TBL_OFFSET {0}\
     CPM_PCIE0_PF0_VC_CAP_ENABLED {0}\
     CPM_PCIE0_PF0_VC_CAP_VER {1}\
     CPM_PCIE0_PF0_VC_EXTENDED_COUNT {0}\
     CPM_PCIE0_PF0_VC_LOW_PRIORITY_EXTENDED_COUNT {0}\
     CPM_PCIE0_PF0_XDMA_64BIT {0}\
     CPM_PCIE0_PF0_XDMA_ENABLED {0}\
     CPM_PCIE0_PF0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF0_XDMA_SIZE {128}\
     CPM_PCIE0_PF1_ARI_CAP_NEXT_FUNC {0}\
     CPM_PCIE0_PF1_ATS_CAP_ON {0}\
     CPM_PCIE0_PF1_AXILITE_MASTER_64BIT {0}\
     CPM_PCIE0_PF1_AXILITE_MASTER_ENABLED {0}\
     CPM_PCIE0_PF1_AXILITE_MASTER_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_AXILITE_MASTER_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_AXILITE_MASTER_SIZE {128}\
     CPM_PCIE0_PF1_AXIST_BYPASS_64BIT {0}\
     CPM_PCIE0_PF1_AXIST_BYPASS_ENABLED {0}\
     CPM_PCIE0_PF1_AXIST_BYPASS_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_AXIST_BYPASS_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_AXIST_BYPASS_SIZE {128}\
     CPM_PCIE0_PF1_BAR0_64BIT {1}\
     CPM_PCIE0_PF1_BAR0_ENABLED {1}\
     CPM_PCIE0_PF1_BAR0_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR0_QDMA_64BIT {1}\
     CPM_PCIE0_PF1_BAR0_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR0_QDMA_ENABLED {1}\
     CPM_PCIE0_PF1_BAR0_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR0_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR0_QDMA_SIZE {512}\
     CPM_PCIE0_PF1_BAR0_QDMA_TYPE {DMA}\
     CPM_PCIE0_PF1_BAR0_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR0_SIZE {512}\
     CPM_PCIE0_PF1_BAR0_SRIOV_QDMA_64BIT {1}\
     CPM_PCIE0_PF1_BAR0_SRIOV_QDMA_ENABLED {1}\
     CPM_PCIE0_PF1_BAR0_SRIOV_QDMA_PREFETCHABLE {1}\
     CPM_PCIE0_PF1_BAR0_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR0_SRIOV_QDMA_SIZE {32}\
     CPM_PCIE0_PF1_BAR0_SRIOV_QDMA_TYPE {DMA}\
     CPM_PCIE0_PF1_BAR0_TYPE {Memory}\
     CPM_PCIE0_PF1_BAR0_XDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR0_XDMA_AXCACHE {1}\
     CPM_PCIE0_PF1_BAR0_XDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR0_XDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR0_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR1_64BIT {0}\
     CPM_PCIE0_PF1_BAR1_ENABLED {0}\
     CPM_PCIE0_PF1_BAR1_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR1_QDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR1_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR1_QDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR1_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR1_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR1_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR1_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR1_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR1_SIZE {4}\
     CPM_PCIE0_PF1_BAR1_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR1_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR1_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR1_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR1_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR1_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR1_TYPE {Memory}\
     CPM_PCIE0_PF1_BAR1_XDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR1_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR1_XDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR1_XDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR1_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR2_64BIT {1}\
     CPM_PCIE0_PF1_BAR2_ENABLED {1}\
     CPM_PCIE0_PF1_BAR2_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR2_QDMA_64BIT {1}\
     CPM_PCIE0_PF1_BAR2_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR2_QDMA_ENABLED {1}\
     CPM_PCIE0_PF1_BAR2_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR2_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR2_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR2_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR2_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR2_SIZE {4}\
     CPM_PCIE0_PF1_BAR2_SRIOV_QDMA_64BIT {1}\
     CPM_PCIE0_PF1_BAR2_SRIOV_QDMA_ENABLED {1}\
     CPM_PCIE0_PF1_BAR2_SRIOV_QDMA_PREFETCHABLE {1}\
     CPM_PCIE0_PF1_BAR2_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR2_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR2_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR2_TYPE {Memory}\
     CPM_PCIE0_PF1_BAR2_XDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR2_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR2_XDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR2_XDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR2_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR3_64BIT {0}\
     CPM_PCIE0_PF1_BAR3_ENABLED {0}\
     CPM_PCIE0_PF1_BAR3_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR3_QDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR3_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR3_QDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR3_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR3_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR3_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR3_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR3_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR3_SIZE {4}\
     CPM_PCIE0_PF1_BAR3_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR3_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR3_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR3_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR3_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR3_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR3_TYPE {Memory}\
     CPM_PCIE0_PF1_BAR3_XDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR3_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR3_XDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR3_XDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR3_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR4_64BIT {0}\
     CPM_PCIE0_PF1_BAR4_ENABLED {0}\
     CPM_PCIE0_PF1_BAR4_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR4_QDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR4_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR4_QDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR4_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR4_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR4_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR4_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR4_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR4_SIZE {4}\
     CPM_PCIE0_PF1_BAR4_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR4_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR4_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR4_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR4_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR4_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR4_TYPE {Memory}\
     CPM_PCIE0_PF1_BAR4_XDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR4_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR4_XDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR4_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR4_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR4_XDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR4_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR5_64BIT {0}\
     CPM_PCIE0_PF1_BAR5_ENABLED {0}\
     CPM_PCIE0_PF1_BAR5_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR5_QDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR5_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR5_QDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR5_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR5_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR5_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR5_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR5_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR5_SIZE {4}\
     CPM_PCIE0_PF1_BAR5_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR5_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR5_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR5_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR5_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR5_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BAR5_TYPE {Memory}\
     CPM_PCIE0_PF1_BAR5_XDMA_64BIT {0}\
     CPM_PCIE0_PF1_BAR5_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF1_BAR5_XDMA_ENABLED {0}\
     CPM_PCIE0_PF1_BAR5_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_BAR5_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_BAR5_XDMA_SIZE {4}\
     CPM_PCIE0_PF1_BAR5_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF1_BASE_CLASS_MENU {Memory_controller}\
     CPM_PCIE0_PF1_BASE_CLASS_VALUE {05}\
     CPM_PCIE0_PF1_CAPABILITY_POINTER {80}\
     CPM_PCIE0_PF1_CFG_DEV_ID {B13F}\
     CPM_PCIE0_PF1_CFG_REV_ID {0}\
     CPM_PCIE0_PF1_CFG_SUBSYS_ID {7}\
     CPM_PCIE0_PF1_CFG_SUBSYS_VEND_ID {10EE}\
     CPM_PCIE0_PF1_CLASS_CODE {0x058000}\
     CPM_PCIE0_PF1_DSN_CAP_ENABLE {0}\
     CPM_PCIE0_PF1_EXPANSION_ROM_ENABLED {0}\
     CPM_PCIE0_PF1_EXPANSION_ROM_QDMA_ENABLED {0}\
     CPM_PCIE0_PF1_EXPANSION_ROM_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_EXPANSION_ROM_QDMA_SIZE {2}\
     CPM_PCIE0_PF1_EXPANSION_ROM_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_EXPANSION_ROM_SIZE {2}\
     CPM_PCIE0_PF1_INTERFACE_VALUE {00}\
     CPM_PCIE0_PF1_INTERRUPT_PIN {NONE}\
     CPM_PCIE0_PF1_MSIX_CAP_PBA_BIR {BAR_1:0}\
     CPM_PCIE0_PF1_MSIX_CAP_PBA_OFFSET {54000}\
     CPM_PCIE0_PF1_MSIX_CAP_TABLE_BIR {BAR_1:0}\
     CPM_PCIE0_PF1_MSIX_CAP_TABLE_OFFSET {50000}\
     CPM_PCIE0_PF1_MSIX_CAP_TABLE_SIZE {7}\
     CPM_PCIE0_PF1_MSIX_ENABLED {1}\
     CPM_PCIE0_PF1_MSI_CAP_MULTIMSGCAP {1_vector}\
     CPM_PCIE0_PF1_MSI_CAP_PERVECMASKCAP {0}\
     CPM_PCIE0_PF1_MSI_ENABLED {0}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_AXIL_MASTER {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_AXIST_BYPASS {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_QDMA_0 {0x0000020804000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_QDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_QDMA_2 {0x0000020180000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_QDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_QDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_QDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_0 {0x000002084400000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_2 {0x0000020180000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_XDMA_0 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_XDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_XDMA_2 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_XDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_XDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF1_PCIEBAR2AXIBAR_XDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF1_PRI_CAP_ON {0}\
     CPM_PCIE0_PF1_SRIOV_ARI_CAPBL_HIER_PRESERVED {0}\
     CPM_PCIE0_PF1_SRIOV_BAR0_64BIT {1}\
     CPM_PCIE0_PF1_SRIOV_BAR0_ENABLED {1}\
     CPM_PCIE0_PF1_SRIOV_BAR0_PREFETCHABLE {1}\
     CPM_PCIE0_PF1_SRIOV_BAR0_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_SRIOV_BAR0_SIZE {32}\
     CPM_PCIE0_PF1_SRIOV_BAR0_TYPE {Memory}\
     CPM_PCIE0_PF1_SRIOV_BAR1_64BIT {0}\
     CPM_PCIE0_PF1_SRIOV_BAR1_ENABLED {0}\
     CPM_PCIE0_PF1_SRIOV_BAR1_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_SRIOV_BAR1_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_SRIOV_BAR1_SIZE {4}\
     CPM_PCIE0_PF1_SRIOV_BAR1_TYPE {Memory}\
     CPM_PCIE0_PF1_SRIOV_BAR2_64BIT {1}\
     CPM_PCIE0_PF1_SRIOV_BAR2_ENABLED {1}\
     CPM_PCIE0_PF1_SRIOV_BAR2_PREFETCHABLE {1}\
     CPM_PCIE0_PF1_SRIOV_BAR2_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_SRIOV_BAR2_SIZE {4}\
     CPM_PCIE0_PF1_SRIOV_BAR2_TYPE {Memory}\
     CPM_PCIE0_PF1_SRIOV_BAR3_64BIT {0}\
     CPM_PCIE0_PF1_SRIOV_BAR3_ENABLED {0}\
     CPM_PCIE0_PF1_SRIOV_BAR3_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_SRIOV_BAR3_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_SRIOV_BAR3_SIZE {4}\
     CPM_PCIE0_PF1_SRIOV_BAR3_TYPE {Memory}\
     CPM_PCIE0_PF1_SRIOV_BAR4_64BIT {0}\
     CPM_PCIE0_PF1_SRIOV_BAR4_ENABLED {0}\
     CPM_PCIE0_PF1_SRIOV_BAR4_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_SRIOV_BAR4_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_SRIOV_BAR4_SIZE {4}\
     CPM_PCIE0_PF1_SRIOV_BAR4_TYPE {Memory}\
     CPM_PCIE0_PF1_SRIOV_BAR5_64BIT {0}\
     CPM_PCIE0_PF1_SRIOV_BAR5_ENABLED {0}\
     CPM_PCIE0_PF1_SRIOV_BAR5_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_SRIOV_BAR5_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_SRIOV_BAR5_SIZE {4}\
     CPM_PCIE0_PF1_SRIOV_BAR5_TYPE {Memory}\
     CPM_PCIE0_PF1_SRIOV_CAP_ENABLE {0}\
     CPM_PCIE0_PF1_SRIOV_CAP_INITIAL_VF {64}\
     CPM_PCIE0_PF1_SRIOV_CAP_TOTAL_VF {0}\
     CPM_PCIE0_PF1_SRIOV_CAP_VER {1}\
     CPM_PCIE0_PF1_SRIOV_FIRST_VF_OFFSET {79}\
     CPM_PCIE0_PF1_SRIOV_FUNC_DEP_LINK {0}\
     CPM_PCIE0_PF1_SRIOV_SUPPORTED_PAGE_SIZE {0x00000553}\
     CPM_PCIE0_PF1_SRIOV_VF_DEVICE_ID {C13F}\
     CPM_PCIE0_PF1_SUB_CLASS_INTF_MENU {Other_memory_controller}\
     CPM_PCIE0_PF1_SUB_CLASS_VALUE {80}\
     CPM_PCIE0_PF1_USE_CLASS_CODE_LOOKUP_ASSISTANT {0}\
     CPM_PCIE0_PF1_VEND_ID {10EE}\
     CPM_PCIE0_PF1_XDMA_64BIT {0}\
     CPM_PCIE0_PF1_XDMA_ENABLED {0}\
     CPM_PCIE0_PF1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF1_XDMA_SIZE {128}\
     CPM_PCIE0_PF2_ARI_CAP_NEXT_FUNC {0}\
     CPM_PCIE0_PF2_ATS_CAP_ON {0}\
     CPM_PCIE0_PF2_AXILITE_MASTER_64BIT {0}\
     CPM_PCIE0_PF2_AXILITE_MASTER_ENABLED {0}\
     CPM_PCIE0_PF2_AXILITE_MASTER_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_AXILITE_MASTER_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_AXILITE_MASTER_SIZE {128}\
     CPM_PCIE0_PF2_AXIST_BYPASS_64BIT {0}\
     CPM_PCIE0_PF2_AXIST_BYPASS_ENABLED {0}\
     CPM_PCIE0_PF2_AXIST_BYPASS_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_AXIST_BYPASS_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_AXIST_BYPASS_SIZE {128}\
     CPM_PCIE0_PF2_BAR0_64BIT {1}\
     CPM_PCIE0_PF2_BAR0_ENABLED {1}\
     CPM_PCIE0_PF2_BAR0_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR0_QDMA_64BIT {1}\
     CPM_PCIE0_PF2_BAR0_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR0_QDMA_ENABLED {1}\
     CPM_PCIE0_PF2_BAR0_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR0_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR0_QDMA_SIZE {512}\
     CPM_PCIE0_PF2_BAR0_QDMA_TYPE {DMA}\
     CPM_PCIE0_PF2_BAR0_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR0_SIZE {512}\
     CPM_PCIE0_PF2_BAR0_SRIOV_QDMA_64BIT {1}\
     CPM_PCIE0_PF2_BAR0_SRIOV_QDMA_ENABLED {1}\
     CPM_PCIE0_PF2_BAR0_SRIOV_QDMA_PREFETCHABLE {1}\
     CPM_PCIE0_PF2_BAR0_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR0_SRIOV_QDMA_SIZE {32}\
     CPM_PCIE0_PF2_BAR0_SRIOV_QDMA_TYPE {DMA}\
     CPM_PCIE0_PF2_BAR0_TYPE {Memory}\
     CPM_PCIE0_PF2_BAR0_XDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR0_XDMA_AXCACHE {1}\
     CPM_PCIE0_PF2_BAR0_XDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR0_XDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR0_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR1_64BIT {0}\
     CPM_PCIE0_PF2_BAR1_ENABLED {0}\
     CPM_PCIE0_PF2_BAR1_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR1_QDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR1_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR1_QDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR1_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR1_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR1_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR1_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR1_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR1_SIZE {4}\
     CPM_PCIE0_PF2_BAR1_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR1_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR1_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR1_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR1_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR1_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR1_TYPE {Memory}\
     CPM_PCIE0_PF2_BAR1_XDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR1_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR1_XDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR1_XDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR1_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR2_64BIT {1}\
     CPM_PCIE0_PF2_BAR2_ENABLED {1}\
     CPM_PCIE0_PF2_BAR2_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR2_QDMA_64BIT {1}\
     CPM_PCIE0_PF2_BAR2_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR2_QDMA_ENABLED {1}\
     CPM_PCIE0_PF2_BAR2_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR2_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR2_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR2_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR2_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR2_SIZE {4}\
     CPM_PCIE0_PF2_BAR2_SRIOV_QDMA_64BIT {1}\
     CPM_PCIE0_PF2_BAR2_SRIOV_QDMA_ENABLED {1}\
     CPM_PCIE0_PF2_BAR2_SRIOV_QDMA_PREFETCHABLE {1}\
     CPM_PCIE0_PF2_BAR2_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR2_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR2_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR2_TYPE {Memory}\
     CPM_PCIE0_PF2_BAR2_XDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR2_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR2_XDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR2_XDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR2_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR3_64BIT {0}\
     CPM_PCIE0_PF2_BAR3_ENABLED {0}\
     CPM_PCIE0_PF2_BAR3_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR3_QDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR3_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR3_QDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR3_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR3_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR3_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR3_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR3_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR3_SIZE {4}\
     CPM_PCIE0_PF2_BAR3_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR3_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR3_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR3_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR3_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR3_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR3_TYPE {Memory}\
     CPM_PCIE0_PF2_BAR3_XDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR3_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR3_XDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR3_XDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR3_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR4_64BIT {0}\
     CPM_PCIE0_PF2_BAR4_ENABLED {0}\
     CPM_PCIE0_PF2_BAR4_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR4_QDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR4_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR4_QDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR4_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR4_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR4_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR4_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR4_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR4_SIZE {4}\
     CPM_PCIE0_PF2_BAR4_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR4_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR4_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR4_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR4_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR4_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR4_TYPE {Memory}\
     CPM_PCIE0_PF2_BAR4_XDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR4_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR4_XDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR4_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR4_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR4_XDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR4_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR5_64BIT {0}\
     CPM_PCIE0_PF2_BAR5_ENABLED {0}\
     CPM_PCIE0_PF2_BAR5_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR5_QDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR5_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR5_QDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR5_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR5_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR5_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR5_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR5_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR5_SIZE {4}\
     CPM_PCIE0_PF2_BAR5_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR5_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR5_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR5_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR5_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR5_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BAR5_TYPE {Memory}\
     CPM_PCIE0_PF2_BAR5_XDMA_64BIT {0}\
     CPM_PCIE0_PF2_BAR5_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF2_BAR5_XDMA_ENABLED {0}\
     CPM_PCIE0_PF2_BAR5_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_BAR5_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_BAR5_XDMA_SIZE {4}\
     CPM_PCIE0_PF2_BAR5_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF2_BASE_CLASS_MENU {Memory_controller}\
     CPM_PCIE0_PF2_BASE_CLASS_VALUE {05}\
     CPM_PCIE0_PF2_CAPABILITY_POINTER {80}\
     CPM_PCIE0_PF2_CFG_DEV_ID {B23F}\
     CPM_PCIE0_PF2_CFG_REV_ID {0}\
     CPM_PCIE0_PF2_CFG_SUBSYS_ID {7}\
     CPM_PCIE0_PF2_CFG_SUBSYS_VEND_ID {10EE}\
     CPM_PCIE0_PF2_CLASS_CODE {0x058000}\
     CPM_PCIE0_PF2_DSN_CAP_ENABLE {0}\
     CPM_PCIE0_PF2_EXPANSION_ROM_ENABLED {0}\
     CPM_PCIE0_PF2_EXPANSION_ROM_QDMA_ENABLED {0}\
     CPM_PCIE0_PF2_EXPANSION_ROM_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_EXPANSION_ROM_QDMA_SIZE {2}\
     CPM_PCIE0_PF2_EXPANSION_ROM_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_EXPANSION_ROM_SIZE {2}\
     CPM_PCIE0_PF2_INTERFACE_VALUE {00}\
     CPM_PCIE0_PF2_INTERRUPT_PIN {NONE}\
     CPM_PCIE0_PF2_MSIX_CAP_PBA_BIR {BAR_1:0}\
     CPM_PCIE0_PF2_MSIX_CAP_PBA_OFFSET {54000}\
     CPM_PCIE0_PF2_MSIX_CAP_TABLE_BIR {BAR_1:0}\
     CPM_PCIE0_PF2_MSIX_CAP_TABLE_OFFSET {50000}\
     CPM_PCIE0_PF2_MSIX_CAP_TABLE_SIZE {7}\
     CPM_PCIE0_PF2_MSIX_ENABLED {1}\
     CPM_PCIE0_PF2_MSI_CAP_MULTIMSGCAP {1_vector}\
     CPM_PCIE0_PF2_MSI_CAP_PERVECMASKCAP {0}\
     CPM_PCIE0_PF2_MSI_ENABLED {0}\
     CPM_PCIE0_PF2_PASID_CAP_MAX_PASID_WIDTH {1}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_AXIL_MASTER {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_AXIST_BYPASS {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_QDMA_0 {0x0000020808000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_QDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_QDMA_2 {0x0000020180000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_QDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_QDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_QDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_0 {0x0000020848000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_2 {0x0000020180000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_XDMA_0 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_XDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_XDMA_2 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_XDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_XDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF2_PCIEBAR2AXIBAR_XDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF2_PRI_CAP_ON {0}\
     CPM_PCIE0_PF2_SRIOV_ARI_CAPBL_HIER_PRESERVED {0}\
     CPM_PCIE0_PF2_SRIOV_BAR0_64BIT {1}\
     CPM_PCIE0_PF2_SRIOV_BAR0_ENABLED {1}\
     CPM_PCIE0_PF2_SRIOV_BAR0_PREFETCHABLE {1}\
     CPM_PCIE0_PF2_SRIOV_BAR0_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_SRIOV_BAR0_SIZE {32}\
     CPM_PCIE0_PF2_SRIOV_BAR0_TYPE {Memory}\
     CPM_PCIE0_PF2_SRIOV_BAR1_64BIT {0}\
     CPM_PCIE0_PF2_SRIOV_BAR1_ENABLED {0}\
     CPM_PCIE0_PF2_SRIOV_BAR1_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_SRIOV_BAR1_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_SRIOV_BAR1_SIZE {4}\
     CPM_PCIE0_PF2_SRIOV_BAR1_TYPE {Memory}\
     CPM_PCIE0_PF2_SRIOV_BAR2_64BIT {1}\
     CPM_PCIE0_PF2_SRIOV_BAR2_ENABLED {1}\
     CPM_PCIE0_PF2_SRIOV_BAR2_PREFETCHABLE {1}\
     CPM_PCIE0_PF2_SRIOV_BAR2_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_SRIOV_BAR2_SIZE {4}\
     CPM_PCIE0_PF2_SRIOV_BAR2_TYPE {Memory}\
     CPM_PCIE0_PF2_SRIOV_BAR3_64BIT {0}\
     CPM_PCIE0_PF2_SRIOV_BAR3_ENABLED {0}\
     CPM_PCIE0_PF2_SRIOV_BAR3_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_SRIOV_BAR3_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_SRIOV_BAR3_SIZE {4}\
     CPM_PCIE0_PF2_SRIOV_BAR3_TYPE {Memory}\
     CPM_PCIE0_PF2_SRIOV_BAR4_64BIT {0}\
     CPM_PCIE0_PF2_SRIOV_BAR4_ENABLED {0}\
     CPM_PCIE0_PF2_SRIOV_BAR4_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_SRIOV_BAR4_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_SRIOV_BAR4_SIZE {4}\
     CPM_PCIE0_PF2_SRIOV_BAR4_TYPE {Memory}\
     CPM_PCIE0_PF2_SRIOV_BAR5_64BIT {0}\
     CPM_PCIE0_PF2_SRIOV_BAR5_ENABLED {0}\
     CPM_PCIE0_PF2_SRIOV_BAR5_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_SRIOV_BAR5_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_SRIOV_BAR5_SIZE {4}\
     CPM_PCIE0_PF2_SRIOV_BAR5_TYPE {Memory}\
     CPM_PCIE0_PF2_SRIOV_CAP_ENABLE {0}\
     CPM_PCIE0_PF2_SRIOV_CAP_INITIAL_VF {64}\
     CPM_PCIE0_PF2_SRIOV_CAP_TOTAL_VF {0}\
     CPM_PCIE0_PF2_SRIOV_CAP_VER {1}\
     CPM_PCIE0_PF2_SRIOV_FIRST_VF_OFFSET {142}\
     CPM_PCIE0_PF2_SRIOV_FUNC_DEP_LINK {0}\
     CPM_PCIE0_PF2_SRIOV_SUPPORTED_PAGE_SIZE {0x00000553}\
     CPM_PCIE0_PF2_SRIOV_VF_DEVICE_ID {C23F}\
     CPM_PCIE0_PF2_SUB_CLASS_INTF_MENU {Other_memory_controller}\
     CPM_PCIE0_PF2_SUB_CLASS_VALUE {80}\
     CPM_PCIE0_PF2_USE_CLASS_CODE_LOOKUP_ASSISTANT {0}\
     CPM_PCIE0_PF2_VEND_ID {10EE}\
     CPM_PCIE0_PF2_XDMA_64BIT {0}\
     CPM_PCIE0_PF2_XDMA_ENABLED {0}\
     CPM_PCIE0_PF2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF2_XDMA_SIZE {128}\
     CPM_PCIE0_PF3_ARI_CAP_NEXT_FUNC {0}\
     CPM_PCIE0_PF3_ATS_CAP_ON {0}\
     CPM_PCIE0_PF3_AXILITE_MASTER_64BIT {0}\
     CPM_PCIE0_PF3_AXILITE_MASTER_ENABLED {0}\
     CPM_PCIE0_PF3_AXILITE_MASTER_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_AXILITE_MASTER_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_AXILITE_MASTER_SIZE {128}\
     CPM_PCIE0_PF3_AXIST_BYPASS_64BIT {0}\
     CPM_PCIE0_PF3_AXIST_BYPASS_ENABLED {0}\
     CPM_PCIE0_PF3_AXIST_BYPASS_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_AXIST_BYPASS_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_AXIST_BYPASS_SIZE {128}\
     CPM_PCIE0_PF3_BAR0_64BIT {1}\
     CPM_PCIE0_PF3_BAR0_ENABLED {1}\
     CPM_PCIE0_PF3_BAR0_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR0_QDMA_64BIT {1}\
     CPM_PCIE0_PF3_BAR0_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR0_QDMA_ENABLED {1}\
     CPM_PCIE0_PF3_BAR0_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR0_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR0_QDMA_SIZE {512}\
     CPM_PCIE0_PF3_BAR0_QDMA_TYPE {DMA}\
     CPM_PCIE0_PF3_BAR0_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR0_SIZE {512}\
     CPM_PCIE0_PF3_BAR0_SRIOV_QDMA_64BIT {1}\
     CPM_PCIE0_PF3_BAR0_SRIOV_QDMA_ENABLED {1}\
     CPM_PCIE0_PF3_BAR0_SRIOV_QDMA_PREFETCHABLE {1}\
     CPM_PCIE0_PF3_BAR0_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR0_SRIOV_QDMA_SIZE {32}\
     CPM_PCIE0_PF3_BAR0_SRIOV_QDMA_TYPE {DMA}\
     CPM_PCIE0_PF3_BAR0_TYPE {Memory}\
     CPM_PCIE0_PF3_BAR0_XDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR0_XDMA_AXCACHE {1}\
     CPM_PCIE0_PF3_BAR0_XDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR0_XDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR0_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR1_64BIT {0}\
     CPM_PCIE0_PF3_BAR1_ENABLED {0}\
     CPM_PCIE0_PF3_BAR1_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR1_QDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR1_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR1_QDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR1_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR1_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR1_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR1_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR1_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR1_SIZE {4}\
     CPM_PCIE0_PF3_BAR1_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR1_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR1_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR1_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR1_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR1_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR1_TYPE {Memory}\
     CPM_PCIE0_PF3_BAR1_XDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR1_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR1_XDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR1_XDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR1_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR2_64BIT {1}\
     CPM_PCIE0_PF3_BAR2_ENABLED {1}\
     CPM_PCIE0_PF3_BAR2_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR2_QDMA_64BIT {1}\
     CPM_PCIE0_PF3_BAR2_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR2_QDMA_ENABLED {1}\
     CPM_PCIE0_PF3_BAR2_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR2_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR2_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR2_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR2_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR2_SIZE {4}\
     CPM_PCIE0_PF3_BAR2_SRIOV_QDMA_64BIT {1}\
     CPM_PCIE0_PF3_BAR2_SRIOV_QDMA_ENABLED {1}\
     CPM_PCIE0_PF3_BAR2_SRIOV_QDMA_PREFETCHABLE {1}\
     CPM_PCIE0_PF3_BAR2_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR2_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR2_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR2_TYPE {Memory}\
     CPM_PCIE0_PF3_BAR2_XDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR2_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR2_XDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR2_XDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR2_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR3_64BIT {0}\
     CPM_PCIE0_PF3_BAR3_ENABLED {0}\
     CPM_PCIE0_PF3_BAR3_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR3_QDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR3_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR3_QDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR3_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR3_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR3_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR3_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR3_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR3_SIZE {4}\
     CPM_PCIE0_PF3_BAR3_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR3_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR3_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR3_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR3_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR3_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR3_TYPE {Memory}\
     CPM_PCIE0_PF3_BAR3_XDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR3_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR3_XDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR3_XDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR3_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR4_64BIT {0}\
     CPM_PCIE0_PF3_BAR4_ENABLED {0}\
     CPM_PCIE0_PF3_BAR4_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR4_QDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR4_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR4_QDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR4_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR4_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR4_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR4_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR4_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR4_SIZE {4}\
     CPM_PCIE0_PF3_BAR4_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR4_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR4_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR4_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR4_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR4_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR4_TYPE {Memory}\
     CPM_PCIE0_PF3_BAR4_XDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR4_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR4_XDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR4_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR4_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR4_XDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR4_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR5_64BIT {0}\
     CPM_PCIE0_PF3_BAR5_ENABLED {0}\
     CPM_PCIE0_PF3_BAR5_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR5_QDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR5_QDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR5_QDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR5_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR5_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR5_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR5_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR5_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR5_SIZE {4}\
     CPM_PCIE0_PF3_BAR5_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR5_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR5_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR5_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR5_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR5_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BAR5_TYPE {Memory}\
     CPM_PCIE0_PF3_BAR5_XDMA_64BIT {0}\
     CPM_PCIE0_PF3_BAR5_XDMA_AXCACHE {0}\
     CPM_PCIE0_PF3_BAR5_XDMA_ENABLED {0}\
     CPM_PCIE0_PF3_BAR5_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_BAR5_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_BAR5_XDMA_SIZE {4}\
     CPM_PCIE0_PF3_BAR5_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE0_PF3_BASE_CLASS_MENU {Memory_controller}\
     CPM_PCIE0_PF3_BASE_CLASS_VALUE {05}\
     CPM_PCIE0_PF3_CAPABILITY_POINTER {80}\
     CPM_PCIE0_PF3_CFG_DEV_ID {B33F}\
     CPM_PCIE0_PF3_CFG_REV_ID {0}\
     CPM_PCIE0_PF3_CFG_SUBSYS_ID {7}\
     CPM_PCIE0_PF3_CFG_SUBSYS_VEND_ID {10EE}\
     CPM_PCIE0_PF3_CLASS_CODE {0x058000}\
     CPM_PCIE0_PF3_DSN_CAP_ENABLE {0}\
     CPM_PCIE0_PF3_EXPANSION_ROM_ENABLED {0}\
     CPM_PCIE0_PF3_EXPANSION_ROM_QDMA_ENABLED {0}\
     CPM_PCIE0_PF3_EXPANSION_ROM_QDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_EXPANSION_ROM_QDMA_SIZE {2}\
     CPM_PCIE0_PF3_EXPANSION_ROM_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_EXPANSION_ROM_SIZE {2}\
     CPM_PCIE0_PF3_INTERFACE_VALUE {00}\
     CPM_PCIE0_PF3_INTERRUPT_PIN {NONE}\
     CPM_PCIE0_PF3_MSIX_CAP_PBA_BIR {BAR_1:0}\
     CPM_PCIE0_PF3_MSIX_CAP_PBA_OFFSET {54000}\
     CPM_PCIE0_PF3_MSIX_CAP_TABLE_BIR {BAR_1:0}\
     CPM_PCIE0_PF3_MSIX_CAP_TABLE_OFFSET {50000}\
     CPM_PCIE0_PF3_MSIX_CAP_TABLE_SIZE {7}\
     CPM_PCIE0_PF3_MSIX_ENABLED {1}\
     CPM_PCIE0_PF3_MSI_CAP_MULTIMSGCAP {1_vector}\
     CPM_PCIE0_PF3_MSI_CAP_PERVECMASKCAP {0}\
     CPM_PCIE0_PF3_MSI_ENABLED {0}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_AXIL_MASTER {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_AXIST_BYPASS {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_QDMA_0 {0x000002080C000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_QDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_QDMA_2 {0x0000020180000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_QDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_QDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_QDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_0 {0x000002084C000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_2 {0x0000020180000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_XDMA_0 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_XDMA_1 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_XDMA_2 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_XDMA_3 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_XDMA_4 {0x0000000000000000}\
     CPM_PCIE0_PF3_PCIEBAR2AXIBAR_XDMA_5 {0x0000000000000000}\
     CPM_PCIE0_PF3_PRI_CAP_ON {0}\
     CPM_PCIE0_PF3_SRIOV_ARI_CAPBL_HIER_PRESERVED {0}\
     CPM_PCIE0_PF3_SRIOV_BAR0_64BIT {1}\
     CPM_PCIE0_PF3_SRIOV_BAR0_ENABLED {1}\
     CPM_PCIE0_PF3_SRIOV_BAR0_PREFETCHABLE {1}\
     CPM_PCIE0_PF3_SRIOV_BAR0_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_SRIOV_BAR0_SIZE {32}\
     CPM_PCIE0_PF3_SRIOV_BAR0_TYPE {Memory}\
     CPM_PCIE0_PF3_SRIOV_BAR1_64BIT {0}\
     CPM_PCIE0_PF3_SRIOV_BAR1_ENABLED {0}\
     CPM_PCIE0_PF3_SRIOV_BAR1_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_SRIOV_BAR1_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_SRIOV_BAR1_SIZE {4}\
     CPM_PCIE0_PF3_SRIOV_BAR1_TYPE {Memory}\
     CPM_PCIE0_PF3_SRIOV_BAR2_64BIT {1}\
     CPM_PCIE0_PF3_SRIOV_BAR2_ENABLED {1}\
     CPM_PCIE0_PF3_SRIOV_BAR2_PREFETCHABLE {1}\
     CPM_PCIE0_PF3_SRIOV_BAR2_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_SRIOV_BAR2_SIZE {4}\
     CPM_PCIE0_PF3_SRIOV_BAR2_TYPE {Memory}\
     CPM_PCIE0_PF3_SRIOV_BAR3_64BIT {0}\
     CPM_PCIE0_PF3_SRIOV_BAR3_ENABLED {0}\
     CPM_PCIE0_PF3_SRIOV_BAR3_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_SRIOV_BAR3_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_SRIOV_BAR3_SIZE {4}\
     CPM_PCIE0_PF3_SRIOV_BAR3_TYPE {Memory}\
     CPM_PCIE0_PF3_SRIOV_BAR4_64BIT {0}\
     CPM_PCIE0_PF3_SRIOV_BAR4_ENABLED {0}\
     CPM_PCIE0_PF3_SRIOV_BAR4_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_SRIOV_BAR4_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_SRIOV_BAR4_SIZE {4}\
     CPM_PCIE0_PF3_SRIOV_BAR4_TYPE {Memory}\
     CPM_PCIE0_PF3_SRIOV_BAR5_64BIT {0}\
     CPM_PCIE0_PF3_SRIOV_BAR5_ENABLED {0}\
     CPM_PCIE0_PF3_SRIOV_BAR5_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_SRIOV_BAR5_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_SRIOV_BAR5_SIZE {4}\
     CPM_PCIE0_PF3_SRIOV_BAR5_TYPE {Memory}\
     CPM_PCIE0_PF3_SRIOV_CAP_ENABLE {0}\
     CPM_PCIE0_PF3_SRIOV_CAP_INITIAL_VF {48}\
     CPM_PCIE0_PF3_SRIOV_CAP_TOTAL_VF {0}\
     CPM_PCIE0_PF3_SRIOV_CAP_VER {1}\
     CPM_PCIE0_PF3_SRIOV_FIRST_VF_OFFSET {205}\
     CPM_PCIE0_PF3_SRIOV_FUNC_DEP_LINK {0}\
     CPM_PCIE0_PF3_SRIOV_SUPPORTED_PAGE_SIZE {0x00000553}\
     CPM_PCIE0_PF3_SRIOV_VF_DEVICE_ID {C33F}\
     CPM_PCIE0_PF3_SUB_CLASS_INTF_MENU {Other_memory_controller}\
     CPM_PCIE0_PF3_SUB_CLASS_VALUE {80}\
     CPM_PCIE0_PF3_USE_CLASS_CODE_LOOKUP_ASSISTANT {0}\
     CPM_PCIE0_PF3_VEND_ID {10EE}\
     CPM_PCIE0_PF3_XDMA_64BIT {0}\
     CPM_PCIE0_PF3_XDMA_ENABLED {0}\
     CPM_PCIE0_PF3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE0_PF3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE0_PF3_XDMA_SIZE {128}\
     CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED {Gen4}\
     CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH {X8}\
     CPM_PCIE0_PL_UPSTREAM_FACING {1}\
     CPM_PCIE0_PL_USER_SPARE {0}\
     CPM_PCIE0_PM_ASPML0S_TIMEOUT {0}\
     CPM_PCIE0_PM_ASPML1_ENTRY_DELAY {0}\
     CPM_PCIE0_PM_ENABLE_L23_ENTRY {0}\
     CPM_PCIE0_PM_ENABLE_SLOT_POWER_CAPTURE {1}\
     CPM_PCIE0_PM_L1_REENTRY_DELAY {0}\
     CPM_PCIE0_PM_PME_TURNOFF_ACK_DELAY {0}\
     CPM_PCIE0_PORT_TYPE {PCI_Express_Endpoint_device}\
     CPM_PCIE0_QDMA_MULTQ_MAX {2048}\
     CPM_PCIE0_QDMA_PARITY_SETTINGS {None}\
     CPM_PCIE0_REF_CLK_FREQ {100_MHz}\
     CPM_PCIE0_SRIOV_CAP_ENABLE {1}\
     CPM_PCIE0_SRIOV_FIRST_VF_OFFSET {16}\
     CPM_PCIE0_TL2CFG_IF_PARITY_CHK {0}\
     CPM_PCIE0_TL_NP_FIFO_NUM_TLPS {0}\
     CPM_PCIE0_TL_PF_ENABLE_REG {4}\
     CPM_PCIE0_TL_POSTED_RAM_SIZE {0}\
     CPM_PCIE0_TL_USER_SPARE {0}\
     CPM_PCIE0_TX_FC_IF {0}\
     CPM_PCIE0_TYPE1_MEMBASE_MEMLIMIT_BRIDGE_ENABLE {Disabled}\
     CPM_PCIE0_TYPE1_MEMBASE_MEMLIMIT_ENABLE {Disabled}\
     CPM_PCIE0_TYPE1_PREFETCHABLE_MEMBASE_BRIDGE_MEMLIMIT {Disabled}\
     CPM_PCIE0_TYPE1_PREFETCHABLE_MEMBASE_MEMLIMIT {Disabled}\
     CPM_PCIE0_USER_CLK2_FREQ {250_MHz}\
     CPM_PCIE0_USER_CLK_FREQ {250_MHz}\
     CPM_PCIE0_VC0_CAPABILITY_POINTER {80}\
     CPM_PCIE0_VC1_BASE_DISABLE {0}\
     CPM_PCIE0_VFG0_ATS_CAP_ON {0}\
     CPM_PCIE0_VFG0_MSIX_CAP_PBA_BIR {BAR_1:0}\
     CPM_PCIE0_VFG0_MSIX_CAP_PBA_OFFSET {4800}\
     CPM_PCIE0_VFG0_MSIX_CAP_TABLE_BIR {BAR_1:0}\
     CPM_PCIE0_VFG0_MSIX_CAP_TABLE_OFFSET {4000}\
     CPM_PCIE0_VFG0_MSIX_CAP_TABLE_SIZE {7}\
     CPM_PCIE0_VFG0_MSIX_ENABLED {1}\
     CPM_PCIE0_VFG0_PRI_CAP_ON {0}\
     CPM_PCIE0_VFG1_ATS_CAP_ON {0}\
     CPM_PCIE0_VFG1_MSIX_CAP_PBA_BIR {BAR_1:0}\
     CPM_PCIE0_VFG1_MSIX_CAP_PBA_OFFSET {4800}\
     CPM_PCIE0_VFG1_MSIX_CAP_TABLE_BIR {BAR_1:0}\
     CPM_PCIE0_VFG1_MSIX_CAP_TABLE_OFFSET {4000}\
     CPM_PCIE0_VFG1_MSIX_CAP_TABLE_SIZE {7}\
     CPM_PCIE0_VFG1_MSIX_ENABLED {1}\
     CPM_PCIE0_VFG1_PRI_CAP_ON {0}\
     CPM_PCIE0_VFG2_ATS_CAP_ON {0}\
     CPM_PCIE0_VFG2_MSIX_CAP_PBA_BIR {BAR_1:0}\
     CPM_PCIE0_VFG2_MSIX_CAP_PBA_OFFSET {4800}\
     CPM_PCIE0_VFG2_MSIX_CAP_TABLE_BIR {BAR_1:0}\
     CPM_PCIE0_VFG2_MSIX_CAP_TABLE_OFFSET {4000}\
     CPM_PCIE0_VFG2_MSIX_CAP_TABLE_SIZE {7}\
     CPM_PCIE0_VFG2_MSIX_ENABLED {1}\
     CPM_PCIE0_VFG2_PRI_CAP_ON {0}\
     CPM_PCIE0_VFG3_ATS_CAP_ON {0}\
     CPM_PCIE0_VFG3_MSIX_CAP_PBA_BIR {BAR_1:0}\
     CPM_PCIE0_VFG3_MSIX_CAP_PBA_OFFSET {4800}\
     CPM_PCIE0_VFG3_MSIX_CAP_TABLE_BIR {BAR_1:0}\
     CPM_PCIE0_VFG3_MSIX_CAP_TABLE_OFFSET {4000}\
     CPM_PCIE0_VFG3_MSIX_CAP_TABLE_SIZE {7}\
     CPM_PCIE0_VFG3_MSIX_ENABLED {1}\
     CPM_PCIE0_VFG3_PRI_CAP_ON {0}\
     CPM_PCIE0_XDMA_AXILITE_SLAVE_IF {0}\
     CPM_PCIE0_XDMA_AXI_ID_WIDTH {2}\
     CPM_PCIE0_XDMA_DSC_BYPASS_RD {0000}\
     CPM_PCIE0_XDMA_DSC_BYPASS_WR {0000}\
     CPM_PCIE0_XDMA_IRQ {1}\
     CPM_PCIE0_XDMA_PARITY_SETTINGS {None}\
     CPM_PCIE0_XDMA_RNUM_CHNL {1}\
     CPM_PCIE0_XDMA_RNUM_RIDS {2}\
     CPM_PCIE0_XDMA_STS_PORTS {0}\
     CPM_PCIE0_XDMA_WNUM_CHNL {1}\
     CPM_PCIE0_XDMA_WNUM_RIDS {2}\
     CPM_PCIE1_AER_CAP_ENABLED {1}\
     CPM_PCIE1_ARI_CAP_ENABLED {1}\
     CPM_PCIE1_ASYNC_MODE {SRNS}\
     CPM_PCIE1_ATS_PRI_CAP_ON {0}\
     CPM_PCIE1_AXIBAR_NUM {1}\
     CPM_PCIE1_AXISTEN_IF_CC_ALIGNMENT_MODE {DWORD_Aligned}\
     CPM_PCIE1_AXISTEN_IF_COMPL_TIMEOUT_REG0 {BEBC20}\
     CPM_PCIE1_AXISTEN_IF_COMPL_TIMEOUT_REG1 {2FAF080}\
     CPM_PCIE1_AXISTEN_IF_CQ_ALIGNMENT_MODE {DWORD_Aligned}\
     CPM_PCIE1_AXISTEN_IF_ENABLE_256_TAGS {0}\
     CPM_PCIE1_AXISTEN_IF_ENABLE_CLIENT_TAG {0}\
     CPM_PCIE1_AXISTEN_IF_ENABLE_INTERNAL_MSIX_TABLE {0}\
     CPM_PCIE1_AXISTEN_IF_ENABLE_MESSAGE_RID_CHECK {0}\
     CPM_PCIE1_AXISTEN_IF_ENABLE_MSG_ROUTE {0}\
     CPM_PCIE1_AXISTEN_IF_ENABLE_RX_MSG_INTFC {0}\
     CPM_PCIE1_AXISTEN_IF_ENABLE_RX_TAG_SCALING {0}\
     CPM_PCIE1_AXISTEN_IF_ENABLE_TX_TAG_SCALING {0}\
     CPM_PCIE1_AXISTEN_IF_EXTEND_CPL_TIMEOUT {16ms_to_1s}\
     CPM_PCIE1_AXISTEN_IF_EXT_512 {0}\
     CPM_PCIE1_AXISTEN_IF_EXT_512_CC_STRADDLE {0}\
     CPM_PCIE1_AXISTEN_IF_EXT_512_CQ_STRADDLE {0}\
     CPM_PCIE1_AXISTEN_IF_EXT_512_RC_4TLP_STRADDLE {0}\
     CPM_PCIE1_AXISTEN_IF_EXT_512_RC_STRADDLE {0}\
     CPM_PCIE1_AXISTEN_IF_EXT_512_RQ_STRADDLE {1}\
     CPM_PCIE1_AXISTEN_IF_RC_ALIGNMENT_MODE {DWORD_Aligned}\
     CPM_PCIE1_AXISTEN_IF_RC_STRADDLE {0}\
     CPM_PCIE1_AXISTEN_IF_RQ_ALIGNMENT_MODE {DWORD_Aligned}\
     CPM_PCIE1_AXISTEN_IF_RX_PARITY_EN {0}\
     CPM_PCIE1_AXISTEN_IF_SIM_SHORT_CPL_TIMEOUT {0}\
     CPM_PCIE1_AXISTEN_IF_TX_PARITY_EN {0}\
     CPM_PCIE1_AXISTEN_IF_WIDTH {512}\
     CPM_PCIE1_AXISTEN_MSIX_VECTORS_PER_FUNCTION {8}\
     CPM_PCIE1_AXISTEN_USER_SPARE {0}\
     CPM_PCIE1_BRIDGE_AXI_SLAVE_IF {0}\
     CPM_PCIE1_CCIX_EN {0}\
     CPM_PCIE1_CCIX_OPT_TLP_GEN_AND_RECEPT_EN_CONTROL_INTERNAL {0}\
     CPM_PCIE1_CCIX_VENDOR_ID {0}\
     CPM_PCIE1_CFG_CTL_IF {0}\
     CPM_PCIE1_CFG_EXT_IF {0}\
     CPM_PCIE1_CFG_FC_IF {0}\
     CPM_PCIE1_CFG_MGMT_IF {0}\
     CPM_PCIE1_CFG_SPEC_4_0 {0}\
     CPM_PCIE1_CFG_STS_IF {0}\
     CPM_PCIE1_CFG_VEND_ID {10EE}\
     CPM_PCIE1_CONTROLLER_ENABLE {0}\
     CPM_PCIE1_COPY_PF0_ENABLED {0}\
     CPM_PCIE1_COPY_PF0_QDMA_ENABLED {1}\
     CPM_PCIE1_COPY_PF0_SRIOV_QDMA_ENABLED {1}\
     CPM_PCIE1_COPY_SRIOV_PF0_ENABLED {1}\
     CPM_PCIE1_COPY_XDMA_PF0_ENABLED {0}\
     CPM_PCIE1_CORE_CLK_FREQ {500}\
     CPM_PCIE1_CORE_EDR_CLK_FREQ {625}\
     CPM_PCIE1_DMA_DATA_WIDTH {256bits}\
     CPM_PCIE1_DMA_ENABLE_SECURE {0}\
     CPM_PCIE1_DMA_INTF {AXI4}\
     CPM_PCIE1_DMA_MASK {256bits}\
     CPM_PCIE1_DMA_METERING_ENABLE {1}\
     CPM_PCIE1_DMA_MSI_RX_PIN_ENABLED {FALSE}\
     CPM_PCIE1_DMA_ROOT_PORT {0}\
     CPM_PCIE1_DSC_BYPASS_RD {0}\
     CPM_PCIE1_DSC_BYPASS_WR {0}\
     CPM_PCIE1_EDR_IF {0}\
     CPM_PCIE1_EDR_LINK_SPEED {None}\
     CPM_PCIE1_EN_PARITY {0}\
     CPM_PCIE1_EXT_CFG_SPACE_MODE {None}\
     CPM_PCIE1_EXT_PCIE_CFG_SPACE_ENABLED {None}\
     CPM_PCIE1_FUNCTIONAL_MODE {None}\
     CPM_PCIE1_LANE_REVERSAL_EN {0}\
     CPM_PCIE1_LEGACY_EXT_PCIE_CFG_SPACE_ENABLED {0}\
     CPM_PCIE1_LINK_DEBUG_AXIST_EN {0}\
     CPM_PCIE1_LINK_DEBUG_EN {0}\
     CPM_PCIE1_LINK_SPEED1_FOR_POWER {GEN2}\
     CPM_PCIE1_LINK_WIDTH1_FOR_POWER {2}\
     CPM_PCIE1_MAILBOX_ENABLE {0}\
     CPM_PCIE1_MCAP_ENABLE {0}\
     CPM_PCIE1_MESG_RSVD_IF {0}\
     CPM_PCIE1_MESG_TRANSMIT_IF {0}\
     CPM_PCIE1_MODE1_FOR_POWER {NONE}\
     CPM_PCIE1_MODES {None}\
     CPM_PCIE1_MODE_SELECTION {Basic}\
     CPM_PCIE1_MSIX_RP_ENABLED {1}\
     CPM_PCIE1_MSI_X_OPTIONS {MSI-X_External}\
     CPM_PCIE1_NUM_USR_IRQ {1}\
     CPM_PCIE1_PASID_IF {0}\
     CPM_PCIE1_PF0_AER_CAP_ECRC_GEN_AND_CHECK_CAPABLE {0}\
     CPM_PCIE1_PF0_ARI_CAP_NEXT_FUNC {0}\
     CPM_PCIE1_PF0_ARI_CAP_VER {1}\
     CPM_PCIE1_PF0_ATS_CAP_ON {0}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BASEADDR_0 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BASEADDR_1 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BASEADDR_2 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BASEADDR_3 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BASEADDR_4 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BASEADDR_5 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BRIDGE_0 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BRIDGE_1 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BRIDGE_2 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BRIDGE_3 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BRIDGE_4 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_BRIDGE_5 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_HIGHADDR_0 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_HIGHADDR_1 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_HIGHADDR_2 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_HIGHADDR_3 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_HIGHADDR_4 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXIBAR2PCIE_HIGHADDR_5 {0x0000000000000000}\
     CPM_PCIE1_PF0_AXILITE_MASTER_64BIT {0}\
     CPM_PCIE1_PF0_AXILITE_MASTER_ENABLED {0}\
     CPM_PCIE1_PF0_AXILITE_MASTER_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_AXILITE_MASTER_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_AXILITE_MASTER_SIZE {128}\
     CPM_PCIE1_PF0_AXIST_BYPASS_64BIT {0}\
     CPM_PCIE1_PF0_AXIST_BYPASS_ENABLED {0}\
     CPM_PCIE1_PF0_AXIST_BYPASS_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_AXIST_BYPASS_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_AXIST_BYPASS_SIZE {128}\
     CPM_PCIE1_PF0_BAR0_64BIT {0}\
     CPM_PCIE1_PF0_BAR0_BRIDGE_64BIT {0}\
     CPM_PCIE1_PF0_BAR0_BRIDGE_ENABLED {0}\
     CPM_PCIE1_PF0_BAR0_BRIDGE_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR0_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR0_BRIDGE_SIZE {4}\
     CPM_PCIE1_PF0_BAR0_BRIDGE_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR0_ENABLED {0}\
     CPM_PCIE1_PF0_BAR0_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR0_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR0_QDMA_AXCACHE {1}\
     CPM_PCIE1_PF0_BAR0_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR0_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR0_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR0_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR0_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR0_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR0_SIZE {4}\
     CPM_PCIE1_PF0_BAR0_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR0_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR0_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR0_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR0_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR0_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR0_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR0_XDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR0_XDMA_AXCACHE {1}\
     CPM_PCIE1_PF0_BAR0_XDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR0_XDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR0_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR1_64BIT {0}\
     CPM_PCIE1_PF0_BAR1_BRIDGE_ENABLED {0}\
     CPM_PCIE1_PF0_BAR1_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR1_BRIDGE_SIZE {4}\
     CPM_PCIE1_PF0_BAR1_BRIDGE_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR1_ENABLED {0}\
     CPM_PCIE1_PF0_BAR1_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR1_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR1_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR1_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR1_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR1_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR1_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR1_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR1_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR1_SIZE {4}\
     CPM_PCIE1_PF0_BAR1_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR1_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR1_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR1_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR1_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR1_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR1_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR1_XDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR1_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR1_XDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR1_XDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR1_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR2_64BIT {0}\
     CPM_PCIE1_PF0_BAR2_BRIDGE_64BIT {0}\
     CPM_PCIE1_PF0_BAR2_BRIDGE_ENABLED {0}\
     CPM_PCIE1_PF0_BAR2_BRIDGE_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR2_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR2_BRIDGE_SIZE {4}\
     CPM_PCIE1_PF0_BAR2_BRIDGE_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR2_ENABLED {0}\
     CPM_PCIE1_PF0_BAR2_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR2_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR2_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR2_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR2_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR2_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR2_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR2_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR2_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR2_SIZE {4}\
     CPM_PCIE1_PF0_BAR2_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR2_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR2_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR2_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR2_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR2_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR2_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR2_XDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR2_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR2_XDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR2_XDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR2_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR3_64BIT {0}\
     CPM_PCIE1_PF0_BAR3_BRIDGE_ENABLED {0}\
     CPM_PCIE1_PF0_BAR3_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR3_BRIDGE_SIZE {4}\
     CPM_PCIE1_PF0_BAR3_BRIDGE_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR3_ENABLED {0}\
     CPM_PCIE1_PF0_BAR3_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR3_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR3_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR3_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR3_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR3_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR3_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR3_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR3_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR3_SIZE {4}\
     CPM_PCIE1_PF0_BAR3_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR3_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR3_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR3_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR3_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR3_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR3_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR3_XDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR3_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR3_XDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR3_XDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR3_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR4_64BIT {0}\
     CPM_PCIE1_PF0_BAR4_BRIDGE_64BIT {0}\
     CPM_PCIE1_PF0_BAR4_BRIDGE_ENABLED {0}\
     CPM_PCIE1_PF0_BAR4_BRIDGE_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR4_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR4_BRIDGE_SIZE {4}\
     CPM_PCIE1_PF0_BAR4_BRIDGE_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR4_ENABLED {0}\
     CPM_PCIE1_PF0_BAR4_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR4_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR4_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR4_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR4_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR4_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR4_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR4_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR4_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR4_SIZE {4}\
     CPM_PCIE1_PF0_BAR4_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR4_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR4_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR4_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR4_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR4_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR4_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR4_XDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR4_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR4_XDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR4_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR4_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR4_XDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR4_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR5_64BIT {0}\
     CPM_PCIE1_PF0_BAR5_BRIDGE_ENABLED {0}\
     CPM_PCIE1_PF0_BAR5_BRIDGE_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR5_BRIDGE_SIZE {4}\
     CPM_PCIE1_PF0_BAR5_BRIDGE_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR5_ENABLED {0}\
     CPM_PCIE1_PF0_BAR5_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR5_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR5_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR5_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR5_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR5_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR5_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR5_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR5_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR5_SIZE {4}\
     CPM_PCIE1_PF0_BAR5_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR5_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR5_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR5_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR5_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR5_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BAR5_TYPE {Memory}\
     CPM_PCIE1_PF0_BAR5_XDMA_64BIT {0}\
     CPM_PCIE1_PF0_BAR5_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF0_BAR5_XDMA_ENABLED {0}\
     CPM_PCIE1_PF0_BAR5_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_BAR5_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_BAR5_XDMA_SIZE {4}\
     CPM_PCIE1_PF0_BAR5_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF0_BASE_CLASS_MENU {Memory_controller}\
     CPM_PCIE1_PF0_BASE_CLASS_VALUE {05}\
     CPM_PCIE1_PF0_CAPABILITY_POINTER {80}\
     CPM_PCIE1_PF0_CFG_DEV_ID {B03F}\
     CPM_PCIE1_PF0_CFG_REV_ID {0}\
     CPM_PCIE1_PF0_CFG_SUBSYS_ID {7}\
     CPM_PCIE1_PF0_CFG_SUBSYS_VEND_ID {10EE}\
     CPM_PCIE1_PF0_CLASS_CODE {0x058000}\
     CPM_PCIE1_PF0_DEV_CAP_10B_TAG_EN {0}\
     CPM_PCIE1_PF0_DEV_CAP_ENDPOINT_L0S_LATENCY {less_than_64ns}\
     CPM_PCIE1_PF0_DEV_CAP_ENDPOINT_L1S_LATENCY {less_than_1us}\
     CPM_PCIE1_PF0_DEV_CAP_EXT_TAG_EN {0}\
     CPM_PCIE1_PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE {0}\
     CPM_PCIE1_PF0_DEV_CAP_MAX_PAYLOAD {1024_bytes}\
     CPM_PCIE1_PF0_DLL_FEATURE_CAP_ID {0}\
     CPM_PCIE1_PF0_DLL_FEATURE_CAP_ON {0}\
     CPM_PCIE1_PF0_DLL_FEATURE_CAP_VER {1}\
     CPM_PCIE1_PF0_DSN_CAP_ENABLE {0}\
     CPM_PCIE1_PF0_EXPANSION_ROM_ENABLED {0}\
     CPM_PCIE1_PF0_EXPANSION_ROM_QDMA_ENABLED {0}\
     CPM_PCIE1_PF0_EXPANSION_ROM_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_EXPANSION_ROM_QDMA_SIZE {2}\
     CPM_PCIE1_PF0_EXPANSION_ROM_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_EXPANSION_ROM_SIZE {2}\
     CPM_PCIE1_PF0_INTERFACE_VALUE {00}\
     CPM_PCIE1_PF0_INTERRUPT_PIN {NONE}\
     CPM_PCIE1_PF0_LINK_CAP_ASPM_SUPPORT {No_ASPM}\
     CPM_PCIE1_PF0_LINK_STATUS_SLOT_CLOCK_CONFIG {1}\
     CPM_PCIE1_PF0_MARGINING_CAP_ID {0}\
     CPM_PCIE1_PF0_MARGINING_CAP_ON {0}\
     CPM_PCIE1_PF0_MARGINING_CAP_VER {1}\
     CPM_PCIE1_PF0_MSIX_CAP_PBA_BIR {BAR_0}\
     CPM_PCIE1_PF0_MSIX_CAP_PBA_OFFSET {50}\
     CPM_PCIE1_PF0_MSIX_CAP_TABLE_BIR {BAR_0}\
     CPM_PCIE1_PF0_MSIX_CAP_TABLE_OFFSET {40}\
     CPM_PCIE1_PF0_MSIX_CAP_TABLE_SIZE {007}\
     CPM_PCIE1_PF0_MSIX_ENABLED {1}\
     CPM_PCIE1_PF0_MSI_CAP_MULTIMSGCAP {1_vector}\
     CPM_PCIE1_PF0_MSI_CAP_PERVECMASKCAP {0}\
     CPM_PCIE1_PF0_MSI_ENABLED {1}\
     CPM_PCIE1_PF0_PASID_CAP_MAX_PASID_WIDTH {1}\
     CPM_PCIE1_PF0_PASID_CAP_ON {0}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_AXIL_MASTER {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_AXIST_BYPASS {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_BRIDGE_0 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_BRIDGE_1 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_BRIDGE_2 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_BRIDGE_3 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_BRIDGE_4 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_BRIDGE_5 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_QDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_QDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_QDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_QDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_QDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_QDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_SRIOV_QDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_XDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_XDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_XDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_XDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_XDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF0_PCIEBAR2AXIBAR_XDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF0_PL16_CAP_ID {0}\
     CPM_PCIE1_PF0_PL16_CAP_ON {0}\
     CPM_PCIE1_PF0_PL16_CAP_VER {1}\
     CPM_PCIE1_PF0_PM_CAP_ID {1}\
     CPM_PCIE1_PF0_PM_CAP_PMESUPPORT_D0 {1}\
     CPM_PCIE1_PF0_PM_CAP_PMESUPPORT_D1 {1}\
     CPM_PCIE1_PF0_PM_CAP_PMESUPPORT_D3COLD {1}\
     CPM_PCIE1_PF0_PM_CAP_PMESUPPORT_D3HOT {1}\
     CPM_PCIE1_PF0_PM_CAP_SUPP_D1_STATE {1}\
     CPM_PCIE1_PF0_PM_CAP_VER_ID {3}\
     CPM_PCIE1_PF0_PM_CSR_NOSOFTRESET {1}\
     CPM_PCIE1_PF0_PRI_CAP_ON {0}\
     CPM_PCIE1_PF0_SRIOV_ARI_CAPBL_HIER_PRESERVED {0}\
     CPM_PCIE1_PF0_SRIOV_BAR0_64BIT {0}\
     CPM_PCIE1_PF0_SRIOV_BAR0_ENABLED {1}\
     CPM_PCIE1_PF0_SRIOV_BAR0_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_SRIOV_BAR0_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_SRIOV_BAR0_SIZE {2}\
     CPM_PCIE1_PF0_SRIOV_BAR0_TYPE {Memory}\
     CPM_PCIE1_PF0_SRIOV_BAR1_64BIT {0}\
     CPM_PCIE1_PF0_SRIOV_BAR1_ENABLED {0}\
     CPM_PCIE1_PF0_SRIOV_BAR1_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_SRIOV_BAR1_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_SRIOV_BAR1_SIZE {128}\
     CPM_PCIE1_PF0_SRIOV_BAR1_TYPE {Memory}\
     CPM_PCIE1_PF0_SRIOV_BAR2_64BIT {0}\
     CPM_PCIE1_PF0_SRIOV_BAR2_ENABLED {0}\
     CPM_PCIE1_PF0_SRIOV_BAR2_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_SRIOV_BAR2_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_SRIOV_BAR2_SIZE {128}\
     CPM_PCIE1_PF0_SRIOV_BAR2_TYPE {Memory}\
     CPM_PCIE1_PF0_SRIOV_BAR3_64BIT {0}\
     CPM_PCIE1_PF0_SRIOV_BAR3_ENABLED {0}\
     CPM_PCIE1_PF0_SRIOV_BAR3_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_SRIOV_BAR3_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_SRIOV_BAR3_SIZE {128}\
     CPM_PCIE1_PF0_SRIOV_BAR3_TYPE {Memory}\
     CPM_PCIE1_PF0_SRIOV_BAR4_64BIT {0}\
     CPM_PCIE1_PF0_SRIOV_BAR4_ENABLED {0}\
     CPM_PCIE1_PF0_SRIOV_BAR4_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_SRIOV_BAR4_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_SRIOV_BAR4_SIZE {128}\
     CPM_PCIE1_PF0_SRIOV_BAR4_TYPE {Memory}\
     CPM_PCIE1_PF0_SRIOV_BAR5_64BIT {0}\
     CPM_PCIE1_PF0_SRIOV_BAR5_ENABLED {0}\
     CPM_PCIE1_PF0_SRIOV_BAR5_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_SRIOV_BAR5_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_SRIOV_BAR5_SIZE {128}\
     CPM_PCIE1_PF0_SRIOV_BAR5_TYPE {Memory}\
     CPM_PCIE1_PF0_SRIOV_CAP_ENABLE {0}\
     CPM_PCIE1_PF0_SRIOV_CAP_INITIAL_VF {4}\
     CPM_PCIE1_PF0_SRIOV_CAP_TOTAL_VF {0}\
     CPM_PCIE1_PF0_SRIOV_CAP_VER {1}\
     CPM_PCIE1_PF0_SRIOV_FIRST_VF_OFFSET {4}\
     CPM_PCIE1_PF0_SRIOV_FUNC_DEP_LINK {0}\
     CPM_PCIE1_PF0_SRIOV_SUPPORTED_PAGE_SIZE {553}\
     CPM_PCIE1_PF0_SRIOV_VF_DEVICE_ID {0}\
     CPM_PCIE1_PF0_SUB_CLASS_INTF_MENU {Other_memory_controller}\
     CPM_PCIE1_PF0_SUB_CLASS_VALUE {80}\
     CPM_PCIE1_PF0_TPHR_CAP_DEV_SPECIFIC_MODE {1}\
     CPM_PCIE1_PF0_TPHR_CAP_ENABLE {0}\
     CPM_PCIE1_PF0_TPHR_CAP_INT_VEC_MODE {1}\
     CPM_PCIE1_PF0_TPHR_CAP_ST_TABLE_LOC {ST_Table_not_present}\
     CPM_PCIE1_PF0_TPHR_CAP_ST_TABLE_SIZE {16}\
     CPM_PCIE1_PF0_TPHR_CAP_VER {1}\
     CPM_PCIE1_PF0_TPHR_ENABLE {0}\
     CPM_PCIE1_PF0_USE_CLASS_CODE_LOOKUP_ASSISTANT {0}\
     CPM_PCIE1_PF0_VC_ARB_CAPABILITY {0}\
     CPM_PCIE1_PF0_VC_ARB_TBL_OFFSET {0}\
     CPM_PCIE1_PF0_VC_CAP_ENABLED {0}\
     CPM_PCIE1_PF0_VC_CAP_VER {1}\
     CPM_PCIE1_PF0_VC_EXTENDED_COUNT {0}\
     CPM_PCIE1_PF0_VC_LOW_PRIORITY_EXTENDED_COUNT {0}\
     CPM_PCIE1_PF0_XDMA_64BIT {0}\
     CPM_PCIE1_PF0_XDMA_ENABLED {0}\
     CPM_PCIE1_PF0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF0_XDMA_SIZE {128}\
     CPM_PCIE1_PF1_ARI_CAP_NEXT_FUNC {0}\
     CPM_PCIE1_PF1_ATS_CAP_ON {0}\
     CPM_PCIE1_PF1_AXILITE_MASTER_64BIT {0}\
     CPM_PCIE1_PF1_AXILITE_MASTER_ENABLED {0}\
     CPM_PCIE1_PF1_AXILITE_MASTER_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_AXILITE_MASTER_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_AXILITE_MASTER_SIZE {128}\
     CPM_PCIE1_PF1_AXIST_BYPASS_64BIT {0}\
     CPM_PCIE1_PF1_AXIST_BYPASS_ENABLED {0}\
     CPM_PCIE1_PF1_AXIST_BYPASS_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_AXIST_BYPASS_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_AXIST_BYPASS_SIZE {128}\
     CPM_PCIE1_PF1_BAR0_64BIT {0}\
     CPM_PCIE1_PF1_BAR0_ENABLED {0}\
     CPM_PCIE1_PF1_BAR0_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR0_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR0_QDMA_AXCACHE {1}\
     CPM_PCIE1_PF1_BAR0_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR0_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR0_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR0_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR0_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR0_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR0_SIZE {4}\
     CPM_PCIE1_PF1_BAR0_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR0_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR0_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR0_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR0_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR0_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR0_TYPE {Memory}\
     CPM_PCIE1_PF1_BAR0_XDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR0_XDMA_AXCACHE {1}\
     CPM_PCIE1_PF1_BAR0_XDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR0_XDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR0_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR1_64BIT {0}\
     CPM_PCIE1_PF1_BAR1_ENABLED {0}\
     CPM_PCIE1_PF1_BAR1_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR1_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR1_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR1_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR1_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR1_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR1_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR1_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR1_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR1_SIZE {4}\
     CPM_PCIE1_PF1_BAR1_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR1_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR1_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR1_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR1_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR1_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR1_TYPE {Memory}\
     CPM_PCIE1_PF1_BAR1_XDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR1_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR1_XDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR1_XDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR1_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR2_64BIT {0}\
     CPM_PCIE1_PF1_BAR2_ENABLED {0}\
     CPM_PCIE1_PF1_BAR2_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR2_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR2_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR2_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR2_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR2_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR2_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR2_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR2_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR2_SIZE {4}\
     CPM_PCIE1_PF1_BAR2_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR2_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR2_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR2_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR2_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR2_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR2_TYPE {Memory}\
     CPM_PCIE1_PF1_BAR2_XDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR2_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR2_XDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR2_XDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR2_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR3_64BIT {0}\
     CPM_PCIE1_PF1_BAR3_ENABLED {0}\
     CPM_PCIE1_PF1_BAR3_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR3_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR3_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR3_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR3_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR3_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR3_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR3_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR3_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR3_SIZE {4}\
     CPM_PCIE1_PF1_BAR3_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR3_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR3_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR3_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR3_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR3_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR3_TYPE {Memory}\
     CPM_PCIE1_PF1_BAR3_XDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR3_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR3_XDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR3_XDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR3_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR4_64BIT {0}\
     CPM_PCIE1_PF1_BAR4_ENABLED {0}\
     CPM_PCIE1_PF1_BAR4_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR4_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR4_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR4_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR4_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR4_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR4_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR4_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR4_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR4_SIZE {4}\
     CPM_PCIE1_PF1_BAR4_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR4_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR4_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR4_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR4_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR4_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR4_TYPE {Memory}\
     CPM_PCIE1_PF1_BAR4_XDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR4_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR4_XDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR4_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR4_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR4_XDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR4_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR5_64BIT {0}\
     CPM_PCIE1_PF1_BAR5_ENABLED {0}\
     CPM_PCIE1_PF1_BAR5_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR5_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR5_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR5_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR5_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR5_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR5_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR5_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR5_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR5_SIZE {4}\
     CPM_PCIE1_PF1_BAR5_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR5_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR5_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR5_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR5_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR5_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BAR5_TYPE {Memory}\
     CPM_PCIE1_PF1_BAR5_XDMA_64BIT {0}\
     CPM_PCIE1_PF1_BAR5_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF1_BAR5_XDMA_ENABLED {0}\
     CPM_PCIE1_PF1_BAR5_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_BAR5_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_BAR5_XDMA_SIZE {4}\
     CPM_PCIE1_PF1_BAR5_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF1_BASE_CLASS_MENU {Memory_controller}\
     CPM_PCIE1_PF1_BASE_CLASS_VALUE {05}\
     CPM_PCIE1_PF1_CAPABILITY_POINTER {80}\
     CPM_PCIE1_PF1_CFG_DEV_ID {B03F}\
     CPM_PCIE1_PF1_CFG_REV_ID {0}\
     CPM_PCIE1_PF1_CFG_SUBSYS_ID {7}\
     CPM_PCIE1_PF1_CFG_SUBSYS_VEND_ID {10EE}\
     CPM_PCIE1_PF1_CLASS_CODE {0x000}\
     CPM_PCIE1_PF1_DSN_CAP_ENABLE {0}\
     CPM_PCIE1_PF1_EXPANSION_ROM_ENABLED {0}\
     CPM_PCIE1_PF1_EXPANSION_ROM_QDMA_ENABLED {0}\
     CPM_PCIE1_PF1_EXPANSION_ROM_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_EXPANSION_ROM_QDMA_SIZE {2}\
     CPM_PCIE1_PF1_EXPANSION_ROM_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_EXPANSION_ROM_SIZE {2}\
     CPM_PCIE1_PF1_INTERFACE_VALUE {00}\
     CPM_PCIE1_PF1_INTERRUPT_PIN {NONE}\
     CPM_PCIE1_PF1_MSIX_CAP_PBA_BIR {BAR_0}\
     CPM_PCIE1_PF1_MSIX_CAP_PBA_OFFSET {50}\
     CPM_PCIE1_PF1_MSIX_CAP_TABLE_BIR {BAR_0}\
     CPM_PCIE1_PF1_MSIX_CAP_TABLE_OFFSET {40}\
     CPM_PCIE1_PF1_MSIX_CAP_TABLE_SIZE {007}\
     CPM_PCIE1_PF1_MSIX_ENABLED {1}\
     CPM_PCIE1_PF1_MSI_CAP_MULTIMSGCAP {1_vector}\
     CPM_PCIE1_PF1_MSI_CAP_PERVECMASKCAP {0}\
     CPM_PCIE1_PF1_MSI_ENABLED {0}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_AXIL_MASTER {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_AXIST_BYPASS {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_QDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_QDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_QDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_QDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_QDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_QDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_SRIOV_QDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_XDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_XDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_XDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_XDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_XDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF1_PCIEBAR2AXIBAR_XDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF1_PRI_CAP_ON {0}\
     CPM_PCIE1_PF1_SRIOV_ARI_CAPBL_HIER_PRESERVED {0}\
     CPM_PCIE1_PF1_SRIOV_BAR0_64BIT {0}\
     CPM_PCIE1_PF1_SRIOV_BAR0_ENABLED {1}\
     CPM_PCIE1_PF1_SRIOV_BAR0_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_SRIOV_BAR0_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_SRIOV_BAR0_SIZE {2}\
     CPM_PCIE1_PF1_SRIOV_BAR0_TYPE {Memory}\
     CPM_PCIE1_PF1_SRIOV_BAR1_64BIT {0}\
     CPM_PCIE1_PF1_SRIOV_BAR1_ENABLED {0}\
     CPM_PCIE1_PF1_SRIOV_BAR1_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_SRIOV_BAR1_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_SRIOV_BAR1_SIZE {128}\
     CPM_PCIE1_PF1_SRIOV_BAR1_TYPE {Memory}\
     CPM_PCIE1_PF1_SRIOV_BAR2_64BIT {0}\
     CPM_PCIE1_PF1_SRIOV_BAR2_ENABLED {0}\
     CPM_PCIE1_PF1_SRIOV_BAR2_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_SRIOV_BAR2_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_SRIOV_BAR2_SIZE {128}\
     CPM_PCIE1_PF1_SRIOV_BAR2_TYPE {Memory}\
     CPM_PCIE1_PF1_SRIOV_BAR3_64BIT {0}\
     CPM_PCIE1_PF1_SRIOV_BAR3_ENABLED {0}\
     CPM_PCIE1_PF1_SRIOV_BAR3_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_SRIOV_BAR3_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_SRIOV_BAR3_SIZE {128}\
     CPM_PCIE1_PF1_SRIOV_BAR3_TYPE {Memory}\
     CPM_PCIE1_PF1_SRIOV_BAR4_64BIT {0}\
     CPM_PCIE1_PF1_SRIOV_BAR4_ENABLED {0}\
     CPM_PCIE1_PF1_SRIOV_BAR4_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_SRIOV_BAR4_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_SRIOV_BAR4_SIZE {128}\
     CPM_PCIE1_PF1_SRIOV_BAR4_TYPE {Memory}\
     CPM_PCIE1_PF1_SRIOV_BAR5_64BIT {0}\
     CPM_PCIE1_PF1_SRIOV_BAR5_ENABLED {0}\
     CPM_PCIE1_PF1_SRIOV_BAR5_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_SRIOV_BAR5_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_SRIOV_BAR5_SIZE {128}\
     CPM_PCIE1_PF1_SRIOV_BAR5_TYPE {Memory}\
     CPM_PCIE1_PF1_SRIOV_CAP_ENABLE {0}\
     CPM_PCIE1_PF1_SRIOV_CAP_INITIAL_VF {4}\
     CPM_PCIE1_PF1_SRIOV_CAP_TOTAL_VF {0}\
     CPM_PCIE1_PF1_SRIOV_CAP_VER {1}\
     CPM_PCIE1_PF1_SRIOV_FIRST_VF_OFFSET {7}\
     CPM_PCIE1_PF1_SRIOV_FUNC_DEP_LINK {0}\
     CPM_PCIE1_PF1_SRIOV_SUPPORTED_PAGE_SIZE {553}\
     CPM_PCIE1_PF1_SRIOV_VF_DEVICE_ID {0}\
     CPM_PCIE1_PF1_SUB_CLASS_INTF_MENU {Other_memory_controller}\
     CPM_PCIE1_PF1_SUB_CLASS_VALUE {80}\
     CPM_PCIE1_PF1_USE_CLASS_CODE_LOOKUP_ASSISTANT {1}\
     CPM_PCIE1_PF1_VEND_ID {10EE}\
     CPM_PCIE1_PF1_XDMA_64BIT {0}\
     CPM_PCIE1_PF1_XDMA_ENABLED {0}\
     CPM_PCIE1_PF1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF1_XDMA_SIZE {128}\
     CPM_PCIE1_PF2_ARI_CAP_NEXT_FUNC {0}\
     CPM_PCIE1_PF2_ATS_CAP_ON {0}\
     CPM_PCIE1_PF2_AXILITE_MASTER_64BIT {0}\
     CPM_PCIE1_PF2_AXILITE_MASTER_ENABLED {0}\
     CPM_PCIE1_PF2_AXILITE_MASTER_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_AXILITE_MASTER_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_AXILITE_MASTER_SIZE {128}\
     CPM_PCIE1_PF2_AXIST_BYPASS_64BIT {0}\
     CPM_PCIE1_PF2_AXIST_BYPASS_ENABLED {0}\
     CPM_PCIE1_PF2_AXIST_BYPASS_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_AXIST_BYPASS_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_AXIST_BYPASS_SIZE {128}\
     CPM_PCIE1_PF2_BAR0_64BIT {0}\
     CPM_PCIE1_PF2_BAR0_ENABLED {0}\
     CPM_PCIE1_PF2_BAR0_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR0_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR0_QDMA_AXCACHE {1}\
     CPM_PCIE1_PF2_BAR0_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR0_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR0_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR0_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR0_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR0_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR0_SIZE {4}\
     CPM_PCIE1_PF2_BAR0_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR0_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR0_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR0_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR0_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR0_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR0_TYPE {Memory}\
     CPM_PCIE1_PF2_BAR0_XDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR0_XDMA_AXCACHE {1}\
     CPM_PCIE1_PF2_BAR0_XDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR0_XDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR0_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR1_64BIT {0}\
     CPM_PCIE1_PF2_BAR1_ENABLED {0}\
     CPM_PCIE1_PF2_BAR1_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR1_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR1_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR1_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR1_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR1_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR1_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR1_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR1_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR1_SIZE {4}\
     CPM_PCIE1_PF2_BAR1_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR1_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR1_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR1_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR1_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR1_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR1_TYPE {Memory}\
     CPM_PCIE1_PF2_BAR1_XDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR1_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR1_XDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR1_XDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR1_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR2_64BIT {0}\
     CPM_PCIE1_PF2_BAR2_ENABLED {0}\
     CPM_PCIE1_PF2_BAR2_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR2_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR2_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR2_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR2_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR2_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR2_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR2_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR2_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR2_SIZE {4}\
     CPM_PCIE1_PF2_BAR2_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR2_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR2_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR2_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR2_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR2_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR2_TYPE {Memory}\
     CPM_PCIE1_PF2_BAR2_XDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR2_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR2_XDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR2_XDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR2_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR3_64BIT {0}\
     CPM_PCIE1_PF2_BAR3_ENABLED {0}\
     CPM_PCIE1_PF2_BAR3_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR3_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR3_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR3_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR3_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR3_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR3_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR3_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR3_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR3_SIZE {4}\
     CPM_PCIE1_PF2_BAR3_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR3_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR3_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR3_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR3_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR3_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR3_TYPE {Memory}\
     CPM_PCIE1_PF2_BAR3_XDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR3_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR3_XDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR3_XDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR3_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR4_64BIT {0}\
     CPM_PCIE1_PF2_BAR4_ENABLED {0}\
     CPM_PCIE1_PF2_BAR4_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR4_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR4_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR4_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR4_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR4_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR4_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR4_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR4_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR4_SIZE {4}\
     CPM_PCIE1_PF2_BAR4_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR4_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR4_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR4_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR4_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR4_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR4_TYPE {Memory}\
     CPM_PCIE1_PF2_BAR4_XDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR4_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR4_XDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR4_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR4_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR4_XDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR4_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR5_64BIT {0}\
     CPM_PCIE1_PF2_BAR5_ENABLED {0}\
     CPM_PCIE1_PF2_BAR5_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR5_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR5_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR5_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR5_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR5_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR5_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR5_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR5_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR5_SIZE {4}\
     CPM_PCIE1_PF2_BAR5_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR5_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR5_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR5_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR5_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR5_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BAR5_TYPE {Memory}\
     CPM_PCIE1_PF2_BAR5_XDMA_64BIT {0}\
     CPM_PCIE1_PF2_BAR5_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF2_BAR5_XDMA_ENABLED {0}\
     CPM_PCIE1_PF2_BAR5_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_BAR5_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_BAR5_XDMA_SIZE {4}\
     CPM_PCIE1_PF2_BAR5_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF2_BASE_CLASS_MENU {Memory_controller}\
     CPM_PCIE1_PF2_BASE_CLASS_VALUE {05}\
     CPM_PCIE1_PF2_CAPABILITY_POINTER {80}\
     CPM_PCIE1_PF2_CFG_DEV_ID {B03F}\
     CPM_PCIE1_PF2_CFG_REV_ID {0}\
     CPM_PCIE1_PF2_CFG_SUBSYS_ID {7}\
     CPM_PCIE1_PF2_CFG_SUBSYS_VEND_ID {10EE}\
     CPM_PCIE1_PF2_CLASS_CODE {0x000}\
     CPM_PCIE1_PF2_DSN_CAP_ENABLE {0}\
     CPM_PCIE1_PF2_EXPANSION_ROM_ENABLED {0}\
     CPM_PCIE1_PF2_EXPANSION_ROM_QDMA_ENABLED {0}\
     CPM_PCIE1_PF2_EXPANSION_ROM_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_EXPANSION_ROM_QDMA_SIZE {2}\
     CPM_PCIE1_PF2_EXPANSION_ROM_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_EXPANSION_ROM_SIZE {2}\
     CPM_PCIE1_PF2_INTERFACE_VALUE {00}\
     CPM_PCIE1_PF2_INTERRUPT_PIN {NONE}\
     CPM_PCIE1_PF2_MSIX_CAP_PBA_BIR {BAR_0}\
     CPM_PCIE1_PF2_MSIX_CAP_PBA_OFFSET {50}\
     CPM_PCIE1_PF2_MSIX_CAP_TABLE_BIR {BAR_0}\
     CPM_PCIE1_PF2_MSIX_CAP_TABLE_OFFSET {40}\
     CPM_PCIE1_PF2_MSIX_CAP_TABLE_SIZE {007}\
     CPM_PCIE1_PF2_MSIX_ENABLED {1}\
     CPM_PCIE1_PF2_MSI_CAP_MULTIMSGCAP {1_vector}\
     CPM_PCIE1_PF2_MSI_CAP_PERVECMASKCAP {0}\
     CPM_PCIE1_PF2_MSI_ENABLED {0}\
     CPM_PCIE1_PF2_PASID_CAP_MAX_PASID_WIDTH {1}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_AXIL_MASTER {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_AXIST_BYPASS {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_QDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_QDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_QDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_QDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_QDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_QDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_SRIOV_QDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_XDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_XDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_XDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_XDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_XDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF2_PCIEBAR2AXIBAR_XDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF2_PRI_CAP_ON {0}\
     CPM_PCIE1_PF2_SRIOV_ARI_CAPBL_HIER_PRESERVED {0}\
     CPM_PCIE1_PF2_SRIOV_BAR0_64BIT {0}\
     CPM_PCIE1_PF2_SRIOV_BAR0_ENABLED {1}\
     CPM_PCIE1_PF2_SRIOV_BAR0_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_SRIOV_BAR0_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_SRIOV_BAR0_SIZE {2}\
     CPM_PCIE1_PF2_SRIOV_BAR0_TYPE {Memory}\
     CPM_PCIE1_PF2_SRIOV_BAR1_64BIT {0}\
     CPM_PCIE1_PF2_SRIOV_BAR1_ENABLED {0}\
     CPM_PCIE1_PF2_SRIOV_BAR1_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_SRIOV_BAR1_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_SRIOV_BAR1_SIZE {128}\
     CPM_PCIE1_PF2_SRIOV_BAR1_TYPE {Memory}\
     CPM_PCIE1_PF2_SRIOV_BAR2_64BIT {0}\
     CPM_PCIE1_PF2_SRIOV_BAR2_ENABLED {0}\
     CPM_PCIE1_PF2_SRIOV_BAR2_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_SRIOV_BAR2_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_SRIOV_BAR2_SIZE {128}\
     CPM_PCIE1_PF2_SRIOV_BAR2_TYPE {Memory}\
     CPM_PCIE1_PF2_SRIOV_BAR3_64BIT {0}\
     CPM_PCIE1_PF2_SRIOV_BAR3_ENABLED {0}\
     CPM_PCIE1_PF2_SRIOV_BAR3_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_SRIOV_BAR3_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_SRIOV_BAR3_SIZE {128}\
     CPM_PCIE1_PF2_SRIOV_BAR3_TYPE {Memory}\
     CPM_PCIE1_PF2_SRIOV_BAR4_64BIT {0}\
     CPM_PCIE1_PF2_SRIOV_BAR4_ENABLED {0}\
     CPM_PCIE1_PF2_SRIOV_BAR4_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_SRIOV_BAR4_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_SRIOV_BAR4_SIZE {128}\
     CPM_PCIE1_PF2_SRIOV_BAR4_TYPE {Memory}\
     CPM_PCIE1_PF2_SRIOV_BAR5_64BIT {0}\
     CPM_PCIE1_PF2_SRIOV_BAR5_ENABLED {0}\
     CPM_PCIE1_PF2_SRIOV_BAR5_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_SRIOV_BAR5_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_SRIOV_BAR5_SIZE {128}\
     CPM_PCIE1_PF2_SRIOV_BAR5_TYPE {Memory}\
     CPM_PCIE1_PF2_SRIOV_CAP_ENABLE {0}\
     CPM_PCIE1_PF2_SRIOV_CAP_INITIAL_VF {4}\
     CPM_PCIE1_PF2_SRIOV_CAP_TOTAL_VF {0}\
     CPM_PCIE1_PF2_SRIOV_CAP_VER {1}\
     CPM_PCIE1_PF2_SRIOV_FIRST_VF_OFFSET {10}\
     CPM_PCIE1_PF2_SRIOV_FUNC_DEP_LINK {0}\
     CPM_PCIE1_PF2_SRIOV_SUPPORTED_PAGE_SIZE {553}\
     CPM_PCIE1_PF2_SRIOV_VF_DEVICE_ID {0}\
     CPM_PCIE1_PF2_SUB_CLASS_INTF_MENU {Other_memory_controller}\
     CPM_PCIE1_PF2_SUB_CLASS_VALUE {80}\
     CPM_PCIE1_PF2_USE_CLASS_CODE_LOOKUP_ASSISTANT {1}\
     CPM_PCIE1_PF2_VEND_ID {10EE}\
     CPM_PCIE1_PF2_XDMA_64BIT {0}\
     CPM_PCIE1_PF2_XDMA_ENABLED {0}\
     CPM_PCIE1_PF2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF2_XDMA_SIZE {128}\
     CPM_PCIE1_PF3_ARI_CAP_NEXT_FUNC {0}\
     CPM_PCIE1_PF3_ATS_CAP_ON {0}\
     CPM_PCIE1_PF3_AXILITE_MASTER_64BIT {0}\
     CPM_PCIE1_PF3_AXILITE_MASTER_ENABLED {0}\
     CPM_PCIE1_PF3_AXILITE_MASTER_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_AXILITE_MASTER_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_AXILITE_MASTER_SIZE {128}\
     CPM_PCIE1_PF3_AXIST_BYPASS_64BIT {0}\
     CPM_PCIE1_PF3_AXIST_BYPASS_ENABLED {0}\
     CPM_PCIE1_PF3_AXIST_BYPASS_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_AXIST_BYPASS_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_AXIST_BYPASS_SIZE {128}\
     CPM_PCIE1_PF3_BAR0_64BIT {0}\
     CPM_PCIE1_PF3_BAR0_ENABLED {0}\
     CPM_PCIE1_PF3_BAR0_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR0_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR0_QDMA_AXCACHE {1}\
     CPM_PCIE1_PF3_BAR0_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR0_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR0_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR0_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR0_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR0_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR0_SIZE {4}\
     CPM_PCIE1_PF3_BAR0_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR0_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR0_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR0_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR0_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR0_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR0_TYPE {Memory}\
     CPM_PCIE1_PF3_BAR0_XDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR0_XDMA_AXCACHE {1}\
     CPM_PCIE1_PF3_BAR0_XDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR0_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR0_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR0_XDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR0_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR1_64BIT {0}\
     CPM_PCIE1_PF3_BAR1_ENABLED {0}\
     CPM_PCIE1_PF3_BAR1_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR1_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR1_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR1_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR1_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR1_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR1_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR1_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR1_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR1_SIZE {4}\
     CPM_PCIE1_PF3_BAR1_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR1_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR1_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR1_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR1_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR1_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR1_TYPE {Memory}\
     CPM_PCIE1_PF3_BAR1_XDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR1_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR1_XDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR1_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR1_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR1_XDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR1_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR2_64BIT {0}\
     CPM_PCIE1_PF3_BAR2_ENABLED {0}\
     CPM_PCIE1_PF3_BAR2_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR2_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR2_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR2_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR2_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR2_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR2_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR2_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR2_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR2_SIZE {4}\
     CPM_PCIE1_PF3_BAR2_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR2_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR2_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR2_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR2_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR2_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR2_TYPE {Memory}\
     CPM_PCIE1_PF3_BAR2_XDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR2_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR2_XDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR2_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR2_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR2_XDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR2_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR3_64BIT {0}\
     CPM_PCIE1_PF3_BAR3_ENABLED {0}\
     CPM_PCIE1_PF3_BAR3_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR3_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR3_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR3_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR3_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR3_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR3_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR3_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR3_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR3_SIZE {4}\
     CPM_PCIE1_PF3_BAR3_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR3_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR3_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR3_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR3_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR3_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR3_TYPE {Memory}\
     CPM_PCIE1_PF3_BAR3_XDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR3_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR3_XDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR3_XDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR3_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR4_64BIT {0}\
     CPM_PCIE1_PF3_BAR4_ENABLED {0}\
     CPM_PCIE1_PF3_BAR4_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR4_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR4_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR4_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR4_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR4_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR4_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR4_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR4_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR4_SIZE {4}\
     CPM_PCIE1_PF3_BAR4_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR4_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR4_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR4_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR4_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR4_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR4_TYPE {Memory}\
     CPM_PCIE1_PF3_BAR4_XDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR4_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR4_XDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR4_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR4_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR4_XDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR4_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR5_64BIT {0}\
     CPM_PCIE1_PF3_BAR5_ENABLED {0}\
     CPM_PCIE1_PF3_BAR5_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR5_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR5_QDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR5_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR5_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR5_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR5_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR5_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR5_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR5_SIZE {4}\
     CPM_PCIE1_PF3_BAR5_SRIOV_QDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR5_SRIOV_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR5_SRIOV_QDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR5_SRIOV_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR5_SRIOV_QDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR5_SRIOV_QDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BAR5_TYPE {Memory}\
     CPM_PCIE1_PF3_BAR5_XDMA_64BIT {0}\
     CPM_PCIE1_PF3_BAR5_XDMA_AXCACHE {0}\
     CPM_PCIE1_PF3_BAR5_XDMA_ENABLED {0}\
     CPM_PCIE1_PF3_BAR5_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_BAR5_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_BAR5_XDMA_SIZE {4}\
     CPM_PCIE1_PF3_BAR5_XDMA_TYPE {AXI_Bridge_Master}\
     CPM_PCIE1_PF3_BASE_CLASS_MENU {Memory_controller}\
     CPM_PCIE1_PF3_BASE_CLASS_VALUE {05}\
     CPM_PCIE1_PF3_CAPABILITY_POINTER {80}\
     CPM_PCIE1_PF3_CFG_DEV_ID {B03F}\
     CPM_PCIE1_PF3_CFG_REV_ID {0}\
     CPM_PCIE1_PF3_CFG_SUBSYS_ID {7}\
     CPM_PCIE1_PF3_CFG_SUBSYS_VEND_ID {10EE}\
     CPM_PCIE1_PF3_CLASS_CODE {0x000}\
     CPM_PCIE1_PF3_DSN_CAP_ENABLE {0}\
     CPM_PCIE1_PF3_EXPANSION_ROM_ENABLED {0}\
     CPM_PCIE1_PF3_EXPANSION_ROM_QDMA_ENABLED {0}\
     CPM_PCIE1_PF3_EXPANSION_ROM_QDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_EXPANSION_ROM_QDMA_SIZE {2}\
     CPM_PCIE1_PF3_EXPANSION_ROM_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_EXPANSION_ROM_SIZE {2}\
     CPM_PCIE1_PF3_INTERFACE_VALUE {00}\
     CPM_PCIE1_PF3_INTERRUPT_PIN {NONE}\
     CPM_PCIE1_PF3_MSIX_CAP_PBA_BIR {BAR_0}\
     CPM_PCIE1_PF3_MSIX_CAP_PBA_OFFSET {50}\
     CPM_PCIE1_PF3_MSIX_CAP_TABLE_BIR {BAR_0}\
     CPM_PCIE1_PF3_MSIX_CAP_TABLE_OFFSET {40}\
     CPM_PCIE1_PF3_MSIX_CAP_TABLE_SIZE {007}\
     CPM_PCIE1_PF3_MSIX_ENABLED {1}\
     CPM_PCIE1_PF3_MSI_CAP_MULTIMSGCAP {1_vector}\
     CPM_PCIE1_PF3_MSI_CAP_PERVECMASKCAP {0}\
     CPM_PCIE1_PF3_MSI_ENABLED {0}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_AXIL_MASTER {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_AXIST_BYPASS {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_QDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_QDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_QDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_QDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_QDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_QDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_SRIOV_QDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_XDMA_0 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_XDMA_1 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_XDMA_2 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_XDMA_3 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_XDMA_4 {0x0000000000000000}\
     CPM_PCIE1_PF3_PCIEBAR2AXIBAR_XDMA_5 {0x0000000000000000}\
     CPM_PCIE1_PF3_PRI_CAP_ON {0}\
     CPM_PCIE1_PF3_SRIOV_ARI_CAPBL_HIER_PRESERVED {0}\
     CPM_PCIE1_PF3_SRIOV_BAR0_64BIT {0}\
     CPM_PCIE1_PF3_SRIOV_BAR0_ENABLED {1}\
     CPM_PCIE1_PF3_SRIOV_BAR0_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_SRIOV_BAR0_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_SRIOV_BAR0_SIZE {2}\
     CPM_PCIE1_PF3_SRIOV_BAR0_TYPE {Memory}\
     CPM_PCIE1_PF3_SRIOV_BAR1_64BIT {0}\
     CPM_PCIE1_PF3_SRIOV_BAR1_ENABLED {0}\
     CPM_PCIE1_PF3_SRIOV_BAR1_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_SRIOV_BAR1_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_SRIOV_BAR1_SIZE {128}\
     CPM_PCIE1_PF3_SRIOV_BAR1_TYPE {Memory}\
     CPM_PCIE1_PF3_SRIOV_BAR2_64BIT {0}\
     CPM_PCIE1_PF3_SRIOV_BAR2_ENABLED {0}\
     CPM_PCIE1_PF3_SRIOV_BAR2_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_SRIOV_BAR2_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_SRIOV_BAR2_SIZE {128}\
     CPM_PCIE1_PF3_SRIOV_BAR2_TYPE {Memory}\
     CPM_PCIE1_PF3_SRIOV_BAR3_64BIT {0}\
     CPM_PCIE1_PF3_SRIOV_BAR3_ENABLED {0}\
     CPM_PCIE1_PF3_SRIOV_BAR3_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_SRIOV_BAR3_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_SRIOV_BAR3_SIZE {128}\
     CPM_PCIE1_PF3_SRIOV_BAR3_TYPE {Memory}\
     CPM_PCIE1_PF3_SRIOV_BAR4_64BIT {0}\
     CPM_PCIE1_PF3_SRIOV_BAR4_ENABLED {0}\
     CPM_PCIE1_PF3_SRIOV_BAR4_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_SRIOV_BAR4_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_SRIOV_BAR4_SIZE {128}\
     CPM_PCIE1_PF3_SRIOV_BAR4_TYPE {Memory}\
     CPM_PCIE1_PF3_SRIOV_BAR5_64BIT {0}\
     CPM_PCIE1_PF3_SRIOV_BAR5_ENABLED {0}\
     CPM_PCIE1_PF3_SRIOV_BAR5_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_SRIOV_BAR5_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_SRIOV_BAR5_SIZE {128}\
     CPM_PCIE1_PF3_SRIOV_BAR5_TYPE {Memory}\
     CPM_PCIE1_PF3_SRIOV_CAP_ENABLE {0}\
     CPM_PCIE1_PF3_SRIOV_CAP_INITIAL_VF {4}\
     CPM_PCIE1_PF3_SRIOV_CAP_TOTAL_VF {0}\
     CPM_PCIE1_PF3_SRIOV_CAP_VER {1}\
     CPM_PCIE1_PF3_SRIOV_FIRST_VF_OFFSET {13}\
     CPM_PCIE1_PF3_SRIOV_FUNC_DEP_LINK {0}\
     CPM_PCIE1_PF3_SRIOV_SUPPORTED_PAGE_SIZE {553}\
     CPM_PCIE1_PF3_SRIOV_VF_DEVICE_ID {0}\
     CPM_PCIE1_PF3_SUB_CLASS_INTF_MENU {Other_memory_controller}\
     CPM_PCIE1_PF3_SUB_CLASS_VALUE {80}\
     CPM_PCIE1_PF3_USE_CLASS_CODE_LOOKUP_ASSISTANT {1}\
     CPM_PCIE1_PF3_VEND_ID {10EE}\
     CPM_PCIE1_PF3_XDMA_64BIT {0}\
     CPM_PCIE1_PF3_XDMA_ENABLED {0}\
     CPM_PCIE1_PF3_XDMA_PREFETCHABLE {0}\
     CPM_PCIE1_PF3_XDMA_SCALE {Kilobytes}\
     CPM_PCIE1_PF3_XDMA_SIZE {128}\
     CPM_PCIE1_PL_LINK_CAP_MAX_LINK_SPEED {Gen3}\
     CPM_PCIE1_PL_LINK_CAP_MAX_LINK_WIDTH {NONE}\
     CPM_PCIE1_PL_UPSTREAM_FACING {1}\
     CPM_PCIE1_PL_USER_SPARE {0}\
     CPM_PCIE1_PM_ASPML0S_TIMEOUT {0}\
     CPM_PCIE1_PM_ASPML1_ENTRY_DELAY {0}\
     CPM_PCIE1_PM_ENABLE_L23_ENTRY {0}\
     CPM_PCIE1_PM_ENABLE_SLOT_POWER_CAPTURE {1}\
     CPM_PCIE1_PM_L1_REENTRY_DELAY {0}\
     CPM_PCIE1_PM_PME_TURNOFF_ACK_DELAY {0}\
     CPM_PCIE1_PORT_TYPE {PCI_Express_Endpoint_device}\
     CPM_PCIE1_QDMA_MULTQ_MAX {2048}\
     CPM_PCIE1_QDMA_PARITY_SETTINGS {None}\
     CPM_PCIE1_REF_CLK_FREQ {100_MHz}\
     CPM_PCIE1_SRIOV_CAP_ENABLE {0}\
     CPM_PCIE1_SRIOV_FIRST_VF_OFFSET {4}\
     CPM_PCIE1_TL2CFG_IF_PARITY_CHK {0}\
     CPM_PCIE1_TL_NP_FIFO_NUM_TLPS {0}\
     CPM_PCIE1_TL_PF_ENABLE_REG {1}\
     CPM_PCIE1_TL_POSTED_RAM_SIZE {0}\
     CPM_PCIE1_TL_USER_SPARE {0}\
     CPM_PCIE1_TX_FC_IF {0}\
     CPM_PCIE1_TYPE1_MEMBASE_MEMLIMIT_BRIDGE_ENABLE {Enabled}\
     CPM_PCIE1_TYPE1_MEMBASE_MEMLIMIT_ENABLE {Disabled}\
     CPM_PCIE1_TYPE1_PREFETCHABLE_MEMBASE_BRIDGE_MEMLIMIT {64bit_Enabled}\
     CPM_PCIE1_TYPE1_PREFETCHABLE_MEMBASE_MEMLIMIT {Disabled}\
     CPM_PCIE1_USER_CLK2_FREQ {250_MHz}\
     CPM_PCIE1_USER_CLK_FREQ {500_MHz}\
     CPM_PCIE1_VC0_CAPABILITY_POINTER {80}\
     CPM_PCIE1_VC1_BASE_DISABLE {0}\
     CPM_PCIE1_VFG0_ATS_CAP_ON {0}\
     CPM_PCIE1_VFG0_MSIX_CAP_PBA_BIR {BAR_0}\
     CPM_PCIE1_VFG0_MSIX_CAP_PBA_OFFSET {50}\
     CPM_PCIE1_VFG0_MSIX_CAP_TABLE_BIR {BAR_0}\
     CPM_PCIE1_VFG0_MSIX_CAP_TABLE_OFFSET {40}\
     CPM_PCIE1_VFG0_MSIX_CAP_TABLE_SIZE {1}\
     CPM_PCIE1_VFG0_MSIX_ENABLED {0}\
     CPM_PCIE1_VFG0_PRI_CAP_ON {0}\
     CPM_PCIE1_VFG1_ATS_CAP_ON {0}\
     CPM_PCIE1_VFG1_MSIX_CAP_PBA_BIR {BAR_0}\
     CPM_PCIE1_VFG1_MSIX_CAP_PBA_OFFSET {50}\
     CPM_PCIE1_VFG1_MSIX_CAP_TABLE_BIR {BAR_0}\
     CPM_PCIE1_VFG1_MSIX_CAP_TABLE_OFFSET {40}\
     CPM_PCIE1_VFG1_MSIX_CAP_TABLE_SIZE {1}\
     CPM_PCIE1_VFG1_MSIX_ENABLED {0}\
     CPM_PCIE1_VFG1_PRI_CAP_ON {0}\
     CPM_PCIE1_VFG2_ATS_CAP_ON {0}\
     CPM_PCIE1_VFG2_MSIX_CAP_PBA_BIR {BAR_0}\
     CPM_PCIE1_VFG2_MSIX_CAP_PBA_OFFSET {50}\
     CPM_PCIE1_VFG2_MSIX_CAP_TABLE_BIR {BAR_0}\
     CPM_PCIE1_VFG2_MSIX_CAP_TABLE_OFFSET {40}\
     CPM_PCIE1_VFG2_MSIX_CAP_TABLE_SIZE {1}\
     CPM_PCIE1_VFG2_MSIX_ENABLED {0}\
     CPM_PCIE1_VFG2_PRI_CAP_ON {0}\
     CPM_PCIE1_VFG3_ATS_CAP_ON {0}\
     CPM_PCIE1_VFG3_MSIX_CAP_PBA_BIR {BAR_0}\
     CPM_PCIE1_VFG3_MSIX_CAP_PBA_OFFSET {50}\
     CPM_PCIE1_VFG3_MSIX_CAP_TABLE_BIR {BAR_0}\
     CPM_PCIE1_VFG3_MSIX_CAP_TABLE_OFFSET {40}\
     CPM_PCIE1_VFG3_MSIX_CAP_TABLE_SIZE {1}\
     CPM_PCIE1_VFG3_MSIX_ENABLED {0}\
     CPM_PCIE1_VFG3_PRI_CAP_ON {0}\
     CPM_PCIE1_XDMA_AXILITE_SLAVE_IF {0}\
     CPM_PCIE1_XDMA_AXI_ID_WIDTH {2}\
     CPM_PCIE1_XDMA_DSC_BYPASS_RD {0000}\
     CPM_PCIE1_XDMA_DSC_BYPASS_WR {0000}\
     CPM_PCIE1_XDMA_IRQ {1}\
     CPM_PCIE1_XDMA_PARITY_SETTINGS {None}\
     CPM_PCIE1_XDMA_RNUM_CHNL {1}\
     CPM_PCIE1_XDMA_RNUM_RIDS {2}\
     CPM_PCIE1_XDMA_STS_PORTS {0}\
     CPM_PCIE1_XDMA_WNUM_CHNL {1}\
     CPM_PCIE1_XDMA_WNUM_RIDS {2}\
     CPM_PCIE_CHANNELS_FOR_POWER {1}\
     CPM_PERIPHERAL_EN {1}\
     CPM_PERIPHERAL_TEST_EN {0}\
     CPM_PIPE_LOOPBACK_EN {0}\
     CPM_PL_AXI0_EN {0}\
     CPM_PL_AXI1_EN {0}\
     CPM_REQ_AGENTS_0_ENABLE {0}\
     CPM_REQ_AGENTS_0_L2_ENABLE {0}\
     CPM_REQ_AGENTS_1_ENABLE {0}\
     CPM_REQ_AGENTS_1_L2_ENABLE {0}\
     CPM_SELECT_GTOUTCLK {TXOUTCLK}\
     CPM_TYPE1_MEMBASE_MEMLIMIT_ENABLE {Disabled}\
     CPM_TYPE1_PREFETCHABLE_MEMBASE_MEMLIMIT {Disabled}\
     CPM_USE_MODES {None}\
     CPM_XDMA_2PF_INTERRUPT_ENABLE {0}\
     CPM_XDMA_TL_PF_VISIBLE {1}\
     CPM_XPIPE_0_CLKDLY_CFG {536870912}\
     CPM_XPIPE_0_CLK_CFG {0}\
     CPM_XPIPE_0_INSTANTIATED {1}\
     CPM_XPIPE_0_LINK0_CFG {X16}\
     CPM_XPIPE_0_LINK1_CFG {DISABLE}\
     CPM_XPIPE_0_LOC {QUAD0}\
     CPM_XPIPE_0_MODE {3}\
     CPM_XPIPE_0_REG_CFG {8164}\
     CPM_XPIPE_0_RSVD {16}\
     CPM_XPIPE_1_CLKDLY_CFG {570427392}\
     CPM_XPIPE_1_CLK_CFG {983040}\
     CPM_XPIPE_1_INSTANTIATED {1}\
     CPM_XPIPE_1_LINK0_CFG {X16}\
     CPM_XPIPE_1_LINK1_CFG {DISABLE}\
     CPM_XPIPE_1_LOC {QUAD1}\
     CPM_XPIPE_1_MODE {3}\
     CPM_XPIPE_1_REG_CFG {8155}\
     CPM_XPIPE_1_RSVD {16}\
     CPM_XPIPE_2_CLKDLY_CFG {50331778}\
     CPM_XPIPE_2_CLK_CFG {1044480}\
     CPM_XPIPE_2_INSTANTIATED {1}\
     CPM_XPIPE_2_LINK0_CFG {X16}\
     CPM_XPIPE_2_LINK1_CFG {DISABLE}\
     CPM_XPIPE_2_LOC {QUAD2}\
     CPM_XPIPE_2_MODE {3}\
     CPM_XPIPE_2_REG_CFG {8146}\
     CPM_XPIPE_2_RSVD {16}\
     CPM_XPIPE_3_CLKDLY_CFG {16777218}\
     CPM_XPIPE_3_CLK_CFG {1048320}\
     CPM_XPIPE_3_INSTANTIATED {1}\
     CPM_XPIPE_3_LINK0_CFG {X16}\
     CPM_XPIPE_3_LINK1_CFG {DISABLE}\
     CPM_XPIPE_3_LOC {QUAD3}\
     CPM_XPIPE_3_MODE {3}\
     CPM_XPIPE_3_REG_CFG {8137}\
     CPM_XPIPE_3_RSVD {16}\
     GT_REFCLK_MHZ {156.25}\
     PS_HSDP0_REFCLK {0}\
     PS_HSDP1_REFCLK {0}\
     PS_HSDP_EGRESS_TRAFFIC {JTAG}\
     PS_HSDP_INGRESS_TRAFFIC {JTAG}\
     PS_HSDP_MODE {NONE}\
     PS_USE_NOC_PS_PCI_0 {0}\
     PS_USE_PS_NOC_PCI_0 {1}\
     PS_USE_PS_NOC_PCI_1 {1}\
   } \
   CONFIG.DDR_MEMORY_MODE {Custom} \
   CONFIG.DEBUG_MODE {Custom} \
   CONFIG.DESIGN_MODE {1} \
   CONFIG.DEVICE_INTEGRITY_MODE {Custom} \
   CONFIG.IO_CONFIG_MODE {Custom} \
   CONFIG.PS_PL_CONNECTIVITY_MODE {Custom} \
   CONFIG.PS_PMC_CONFIG {\
     AURORA_LINE_RATE_GPBS {12.5}\
     BOOT_MODE {Custom}\
     BOOT_SECONDARY_PCIE_ENABLE {0}\
     CLOCK_MODE {Custom}\
     COHERENCY_MODE {Custom}\
     DDR_MEMORY_MODE {Custom}\
     DEBUG_MODE {Custom}\
     DESIGN_MODE {1}\
     DEVICE_INTEGRITY_MODE {Custom}\
     DIS_AUTO_POL_CHECK {0}\
     GT_REFCLK_MHZ {156.25}\
     INIT_CLK_MHZ {125}\
     INV_POLARITY {0}\
     IO_CONFIG_MODE {Custom}\
     PCIE_APERTURES_DUAL_ENABLE {0}\
     PCIE_APERTURES_SINGLE_ENABLE {1}\
     PERFORMANCE_MODE {Custom}\
     PL_SEM_GPIO_ENABLE {0}\
     PMC_ALT_REF_CLK_FREQMHZ {33.333}\
     PMC_BANK_0_IO_STANDARD {LVCMOS1.8}\
     PMC_BANK_1_IO_STANDARD {LVCMOS1.8}\
     PMC_CIPS_MODE {ADVANCE}\
     PMC_CORE_SUBSYSTEM_LOAD {0.0}\
     PMC_CRP_CFU_REF_CTRL_ACT_FREQMHZ {299.997009}\
     PMC_CRP_CFU_REF_CTRL_DIVISOR0 {4}\
     PMC_CRP_CFU_REF_CTRL_FREQMHZ {300}\
     PMC_CRP_CFU_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_DFT_OSC_REF_CTRL_ACT_FREQMHZ {400}\
     PMC_CRP_DFT_OSC_REF_CTRL_DIVISOR0 {3}\
     PMC_CRP_DFT_OSC_REF_CTRL_FREQMHZ {400}\
     PMC_CRP_DFT_OSC_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_EFUSE_REF_CTRL_ACT_FREQMHZ {100.000000}\
     PMC_CRP_EFUSE_REF_CTRL_FREQMHZ {100.000000}\
     PMC_CRP_EFUSE_REF_CTRL_SRCSEL {IRO_CLK/4}\
     PMC_CRP_HSM0_REF_CTRL_ACT_FREQMHZ {33.333000}\
     PMC_CRP_HSM0_REF_CTRL_DIVISOR0 {36}\
     PMC_CRP_HSM0_REF_CTRL_FREQMHZ {33.333}\
     PMC_CRP_HSM0_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_HSM1_REF_CTRL_ACT_FREQMHZ {133.332001}\
     PMC_CRP_HSM1_REF_CTRL_DIVISOR0 {9}\
     PMC_CRP_HSM1_REF_CTRL_FREQMHZ {133.333}\
     PMC_CRP_HSM1_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_I2C_REF_CTRL_ACT_FREQMHZ {100}\
     PMC_CRP_I2C_REF_CTRL_DIVISOR0 {12}\
     PMC_CRP_I2C_REF_CTRL_FREQMHZ {100}\
     PMC_CRP_I2C_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_LSBUS_REF_CTRL_ACT_FREQMHZ {149.998505}\
     PMC_CRP_LSBUS_REF_CTRL_DIVISOR0 {8}\
     PMC_CRP_LSBUS_REF_CTRL_FREQMHZ {150}\
     PMC_CRP_LSBUS_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_NOC_REF_CTRL_ACT_FREQMHZ {999.989990}\
     PMC_CRP_NOC_REF_CTRL_FREQMHZ {1000}\
     PMC_CRP_NOC_REF_CTRL_SRCSEL {NPLL}\
     PMC_CRP_NPI_REF_CTRL_ACT_FREQMHZ {299.997009}\
     PMC_CRP_NPI_REF_CTRL_DIVISOR0 {4}\
     PMC_CRP_NPI_REF_CTRL_FREQMHZ {300}\
     PMC_CRP_NPI_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_NPLL_CTRL_CLKOUTDIV {4}\
     PMC_CRP_NPLL_CTRL_FBDIV {120}\
     PMC_CRP_NPLL_CTRL_SRCSEL {REF_CLK}\
     PMC_CRP_NPLL_TO_XPD_CTRL_DIVISOR0 {4}\
     PMC_CRP_OSPI_REF_CTRL_ACT_FREQMHZ {200}\
     PMC_CRP_OSPI_REF_CTRL_DIVISOR0 {4}\
     PMC_CRP_OSPI_REF_CTRL_FREQMHZ {200}\
     PMC_CRP_OSPI_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_PL0_REF_CTRL_ACT_FREQMHZ {249.997498}\
     PMC_CRP_PL0_REF_CTRL_DIVISOR0 {4}\
     PMC_CRP_PL0_REF_CTRL_FREQMHZ {250}\
     PMC_CRP_PL0_REF_CTRL_SRCSEL {NPLL}\
     PMC_CRP_PL1_REF_CTRL_ACT_FREQMHZ {100}\
     PMC_CRP_PL1_REF_CTRL_DIVISOR0 {3}\
     PMC_CRP_PL1_REF_CTRL_FREQMHZ {334}\
     PMC_CRP_PL1_REF_CTRL_SRCSEL {NPLL}\
     PMC_CRP_PL2_REF_CTRL_ACT_FREQMHZ {100}\
     PMC_CRP_PL2_REF_CTRL_DIVISOR0 {3}\
     PMC_CRP_PL2_REF_CTRL_FREQMHZ {334}\
     PMC_CRP_PL2_REF_CTRL_SRCSEL {NPLL}\
     PMC_CRP_PL3_REF_CTRL_ACT_FREQMHZ {100}\
     PMC_CRP_PL3_REF_CTRL_DIVISOR0 {3}\
     PMC_CRP_PL3_REF_CTRL_FREQMHZ {334}\
     PMC_CRP_PL3_REF_CTRL_SRCSEL {NPLL}\
     PMC_CRP_PL5_REF_CTRL_FREQMHZ {400}\
     PMC_CRP_PPLL_CTRL_CLKOUTDIV {2}\
     PMC_CRP_PPLL_CTRL_FBDIV {72}\
     PMC_CRP_PPLL_CTRL_SRCSEL {REF_CLK}\
     PMC_CRP_PPLL_TO_XPD_CTRL_DIVISOR0 {1}\
     PMC_CRP_QSPI_REF_CTRL_ACT_FREQMHZ {299.997009}\
     PMC_CRP_QSPI_REF_CTRL_DIVISOR0 {4}\
     PMC_CRP_QSPI_REF_CTRL_FREQMHZ {300}\
     PMC_CRP_QSPI_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_SDIO0_REF_CTRL_ACT_FREQMHZ {200}\
     PMC_CRP_SDIO0_REF_CTRL_DIVISOR0 {6}\
     PMC_CRP_SDIO0_REF_CTRL_FREQMHZ {200}\
     PMC_CRP_SDIO0_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_SDIO1_REF_CTRL_ACT_FREQMHZ {200}\
     PMC_CRP_SDIO1_REF_CTRL_DIVISOR0 {6}\
     PMC_CRP_SDIO1_REF_CTRL_FREQMHZ {200}\
     PMC_CRP_SDIO1_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_SD_DLL_REF_CTRL_ACT_FREQMHZ {1200}\
     PMC_CRP_SD_DLL_REF_CTRL_DIVISOR0 {1}\
     PMC_CRP_SD_DLL_REF_CTRL_FREQMHZ {1200}\
     PMC_CRP_SD_DLL_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_SWITCH_TIMEOUT_CTRL_ACT_FREQMHZ {1.000000}\
     PMC_CRP_SWITCH_TIMEOUT_CTRL_DIVISOR0 {100}\
     PMC_CRP_SWITCH_TIMEOUT_CTRL_FREQMHZ {1}\
     PMC_CRP_SWITCH_TIMEOUT_CTRL_SRCSEL {IRO_CLK/4}\
     PMC_CRP_SYSMON_REF_CTRL_ACT_FREQMHZ {299.997009}\
     PMC_CRP_SYSMON_REF_CTRL_FREQMHZ {299.997009}\
     PMC_CRP_SYSMON_REF_CTRL_SRCSEL {NPI_REF_CLK}\
     PMC_CRP_TEST_PATTERN_REF_CTRL_ACT_FREQMHZ {200}\
     PMC_CRP_TEST_PATTERN_REF_CTRL_DIVISOR0 {6}\
     PMC_CRP_TEST_PATTERN_REF_CTRL_FREQMHZ {200}\
     PMC_CRP_TEST_PATTERN_REF_CTRL_SRCSEL {PPLL}\
     PMC_CRP_USB_SUSPEND_CTRL_ACT_FREQMHZ {0.200000}\
     PMC_CRP_USB_SUSPEND_CTRL_DIVISOR0 {500}\
     PMC_CRP_USB_SUSPEND_CTRL_FREQMHZ {0.2}\
     PMC_CRP_USB_SUSPEND_CTRL_SRCSEL {IRO_CLK/4}\
     PMC_EXTERNAL_TAMPER {{ENABLE 0} {IO None}}\
     PMC_GPIO0_MIO_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 0 .. 25}}}\
     PMC_GPIO1_MIO_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 26 .. 51}}}\
     PMC_GPIO_EMIO_PERIPHERAL_ENABLE {0}\
     PMC_GPIO_EMIO_WIDTH_HDL {64}\
     PMC_HSM0_CLK_ENABLE {1}\
     PMC_HSM1_CLK_ENABLE {1}\
     PMC_I2CPMC_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 2 .. 3}}}\
     PMC_MIO0 {{AUX_IO 0} {DIRECTION out} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO1 {{AUX_IO 0} {DIRECTION inout} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA\
default} {PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO10 {{AUX_IO 0} {DIRECTION inout} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA\
default} {PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO11 {{AUX_IO 0} {DIRECTION inout} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA\
default} {PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO12 {{AUX_IO 0} {DIRECTION out} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO13 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO14 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO15 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO16 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO17 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO18 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO19 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO2 {{AUX_IO 0} {DIRECTION inout} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA\
default} {PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO20 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO21 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO22 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO23 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO24 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO25 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO26 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO27 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO28 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO29 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO3 {{AUX_IO 0} {DIRECTION inout} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA\
default} {PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO30 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO31 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO32 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO33 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO34 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO35 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO36 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO37 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO38 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Reserved}}\
     PMC_MIO39 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO4 {{AUX_IO 0} {DIRECTION inout} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA\
default} {PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO40 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO41 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO42 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO43 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO44 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO45 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO46 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO47 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO48 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO49 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO5 {{AUX_IO 0} {DIRECTION out} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO50 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO51 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PMC_MIO6 {{AUX_IO 0} {DIRECTION out} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO7 {{AUX_IO 0} {DIRECTION out} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO8 {{AUX_IO 0} {DIRECTION inout} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA\
default} {PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO9 {{AUX_IO 0} {DIRECTION inout} {DRIVE_STRENGTH 12mA} {OUTPUT_DATA\
default} {PULL pullup} {SCHMITT 1} {SLEW fast} {USAGE Unassigned}}\
     PMC_MIO_EN_FOR_PL_PCIE {0}\
     PMC_MIO_TREE_PERIPHERALS {QSPI#QSPI#QSPI#QSPI#QSPI#QSPI##QSPI#QSPI#QSPI#QSPI#QSPI#QSPI##########################PCIE#######################################}\
     PMC_MIO_TREE_SIGNALS {qspi0_clk#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]#qspi0_io[0]#qspi0_cs_b##qspi1_cs_b#qspi1_io[0]#qspi1_io[1]#qspi1_io[2]#qspi1_io[3]#qspi1_clk##########################reset1_n#######################################}\
     PMC_NOC_PMC_ADDR_WIDTH {64}\
     PMC_NOC_PMC_DATA_WIDTH {128}\
     PMC_OSPI_COHERENCY {0}\
     PMC_OSPI_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 0 .. 11}} {MODE Single}}\
     PMC_OSPI_ROUTE_THROUGH_FPD {0}\
     PMC_PL_ALT_REF_CLK_FREQMHZ {33.333}\
     PMC_PMC_NOC_ADDR_WIDTH {64}\
     PMC_PMC_NOC_DATA_WIDTH {128}\
     PMC_QSPI_FBCLK {{ENABLE 0} {IO {PMC_MIO 6}}}\
     PMC_QSPI_PERIPHERAL_ENABLE {1}\
     PMC_QSPI_PERIPHERAL_MODE {Dual Parallel}\
     PMC_REF_CLK_FREQMHZ {33.333}\
     PMC_SD0 {{CD_ENABLE 0} {CD_IO {PMC_MIO 24}} {POW_ENABLE 0} {POW_IO {PMC_MIO 17}}\
{RESET_ENABLE 0} {RESET_IO {PMC_MIO 17}} {WP_ENABLE 0} {WP_IO {PMC_MIO\
25}}}\
     PMC_SD0_PERIPHERAL {{CLK_100_SDR_OTAP_DLY 0x00} {CLK_200_SDR_OTAP_DLY 0x00}\
{CLK_50_DDR_ITAP_DLY 0x00} {CLK_50_DDR_OTAP_DLY 0x00}\
{CLK_50_SDR_ITAP_DLY 0x00} {CLK_50_SDR_OTAP_DLY 0x00} {ENABLE\
0} {IO {PMC_MIO 13 .. 25}}}\
     PMC_SD1 {{CD_ENABLE 0} {CD_IO {PMC_MIO 2}} {POW_ENABLE 0} {POW_IO {PMC_MIO 12}}\
{RESET_ENABLE 0} {RESET_IO {PMC_MIO 12}} {WP_ENABLE 0} {WP_IO {PMC_MIO\
1}}}\
     PMC_SD1_PERIPHERAL {{CLK_100_SDR_OTAP_DLY 0x00} {CLK_200_SDR_OTAP_DLY 0x00}\
{CLK_50_DDR_ITAP_DLY 0x00} {CLK_50_DDR_OTAP_DLY 0x00}\
{CLK_50_SDR_ITAP_DLY 0x00} {CLK_50_SDR_OTAP_DLY 0x00} {ENABLE\
0} {IO {PMC_MIO 0 .. 11}}}\
     PMC_SHOW_CCI_SMMU_SETTINGS {0}\
     PMC_SMAP_PERIPHERAL {{ENABLE 0} {IO {32 Bit}}}\
     PMC_TAMPER_EXTMIO_ENABLE {0}\
     PMC_TAMPER_GLITCHDETECT_ENABLE {0}\
     PMC_TAMPER_JTAGDETECT_ENABLE {0}\
     PMC_TAMPER_TEMPERATURE_ENABLE {0}\
     PMC_TAMPER_TRIGGER_REGISTER {0}\
     PMC_USE_CFU_SEU {0}\
     PMC_USE_NOC_PMC_AXI0 {0}\
     PMC_USE_PL_PMC_AUX_REF_CLK {0}\
     PMC_USE_PMC_NOC_AXI0 {0}\
     POWER_REPORTING_MODE {Custom}\
     PSPMC_MANUAL_CLK_ENABLE {0}\
     PS_A72_ACTIVE_BLOCKS {0}\
     PS_A72_LOAD {0.0}\
     PS_BANK_2_IO_STANDARD {LVCMOS1.8}\
     PS_BANK_3_IO_STANDARD {LVCMOS1.8}\
     PS_BOARD_INTERFACE {Custom}\
     PS_CAN0_CLK {{ENABLE 0} {IO {PMC_MIO 0}}}\
     PS_CAN0_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 8 .. 9}}}\
     PS_CAN1_CLK {{ENABLE 0} {IO {PMC_MIO 0}}}\
     PS_CAN1_PERIPHERAL {{ENABLE 0} {IO {PS_MIO 16 .. 17}}}\
     PS_CRF_ACPU_CTRL_ACT_FREQMHZ {1349.986450}\
     PS_CRF_ACPU_CTRL_DIVISOR0 {1}\
     PS_CRF_ACPU_CTRL_FREQMHZ {1350}\
     PS_CRF_ACPU_CTRL_SRCSEL {APLL}\
     PS_CRF_APLL_CTRL_CLKOUTDIV {2}\
     PS_CRF_APLL_CTRL_FBDIV {81}\
     PS_CRF_APLL_CTRL_SRCSEL {REF_CLK}\
     PS_CRF_APLL_TO_XPD_CTRL_DIVISOR0 {4}\
     PS_CRF_DBG_FPD_CTRL_ACT_FREQMHZ {399.996002}\
     PS_CRF_DBG_FPD_CTRL_DIVISOR0 {3}\
     PS_CRF_DBG_FPD_CTRL_FREQMHZ {400}\
     PS_CRF_DBG_FPD_CTRL_SRCSEL {PPLL}\
     PS_CRF_DBG_TRACE_CTRL_ACT_FREQMHZ {300}\
     PS_CRF_DBG_TRACE_CTRL_DIVISOR0 {3}\
     PS_CRF_DBG_TRACE_CTRL_FREQMHZ {300}\
     PS_CRF_DBG_TRACE_CTRL_SRCSEL {PPLL}\
     PS_CRF_FPD_LSBUS_CTRL_ACT_FREQMHZ {149.998505}\
     PS_CRF_FPD_LSBUS_CTRL_DIVISOR0 {8}\
     PS_CRF_FPD_LSBUS_CTRL_FREQMHZ {150}\
     PS_CRF_FPD_LSBUS_CTRL_SRCSEL {PPLL}\
     PS_CRF_FPD_TOP_SWITCH_CTRL_ACT_FREQMHZ {824.991760}\
     PS_CRF_FPD_TOP_SWITCH_CTRL_DIVISOR0 {1}\
     PS_CRF_FPD_TOP_SWITCH_CTRL_FREQMHZ {825}\
     PS_CRF_FPD_TOP_SWITCH_CTRL_SRCSEL {RPLL}\
     PS_CRL_CAN0_REF_CTRL_ACT_FREQMHZ {100}\
     PS_CRL_CAN0_REF_CTRL_DIVISOR0 {12}\
     PS_CRL_CAN0_REF_CTRL_FREQMHZ {100}\
     PS_CRL_CAN0_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_CAN1_REF_CTRL_ACT_FREQMHZ {100}\
     PS_CRL_CAN1_REF_CTRL_DIVISOR0 {12}\
     PS_CRL_CAN1_REF_CTRL_FREQMHZ {100}\
     PS_CRL_CAN1_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_CPM_TOPSW_REF_CTRL_ACT_FREQMHZ {599.994019}\
     PS_CRL_CPM_TOPSW_REF_CTRL_DIVISOR0 {2}\
     PS_CRL_CPM_TOPSW_REF_CTRL_FREQMHZ {600}\
     PS_CRL_CPM_TOPSW_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_CPU_R5_CTRL_ACT_FREQMHZ {599.994019}\
     PS_CRL_CPU_R5_CTRL_DIVISOR0 {2}\
     PS_CRL_CPU_R5_CTRL_FREQMHZ {600}\
     PS_CRL_CPU_R5_CTRL_SRCSEL {PPLL}\
     PS_CRL_DBG_LPD_CTRL_ACT_FREQMHZ {399.996002}\
     PS_CRL_DBG_LPD_CTRL_DIVISOR0 {3}\
     PS_CRL_DBG_LPD_CTRL_FREQMHZ {400}\
     PS_CRL_DBG_LPD_CTRL_SRCSEL {PPLL}\
     PS_CRL_DBG_TSTMP_CTRL_ACT_FREQMHZ {399.996002}\
     PS_CRL_DBG_TSTMP_CTRL_DIVISOR0 {3}\
     PS_CRL_DBG_TSTMP_CTRL_FREQMHZ {400}\
     PS_CRL_DBG_TSTMP_CTRL_SRCSEL {PPLL}\
     PS_CRL_GEM0_REF_CTRL_ACT_FREQMHZ {125}\
     PS_CRL_GEM0_REF_CTRL_DIVISOR0 {4}\
     PS_CRL_GEM0_REF_CTRL_FREQMHZ {125}\
     PS_CRL_GEM0_REF_CTRL_SRCSEL {NPLL}\
     PS_CRL_GEM1_REF_CTRL_ACT_FREQMHZ {125}\
     PS_CRL_GEM1_REF_CTRL_DIVISOR0 {4}\
     PS_CRL_GEM1_REF_CTRL_FREQMHZ {125}\
     PS_CRL_GEM1_REF_CTRL_SRCSEL {NPLL}\
     PS_CRL_GEM_TSU_REF_CTRL_ACT_FREQMHZ {250}\
     PS_CRL_GEM_TSU_REF_CTRL_DIVISOR0 {2}\
     PS_CRL_GEM_TSU_REF_CTRL_FREQMHZ {250}\
     PS_CRL_GEM_TSU_REF_CTRL_SRCSEL {NPLL}\
     PS_CRL_I2C0_REF_CTRL_ACT_FREQMHZ {100}\
     PS_CRL_I2C0_REF_CTRL_DIVISOR0 {12}\
     PS_CRL_I2C0_REF_CTRL_FREQMHZ {100}\
     PS_CRL_I2C0_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_I2C1_REF_CTRL_ACT_FREQMHZ {100}\
     PS_CRL_I2C1_REF_CTRL_DIVISOR0 {12}\
     PS_CRL_I2C1_REF_CTRL_FREQMHZ {100}\
     PS_CRL_I2C1_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_IOU_SWITCH_CTRL_ACT_FREQMHZ {249.997498}\
     PS_CRL_IOU_SWITCH_CTRL_DIVISOR0 {1}\
     PS_CRL_IOU_SWITCH_CTRL_FREQMHZ {250}\
     PS_CRL_IOU_SWITCH_CTRL_SRCSEL {NPLL}\
     PS_CRL_LPD_LSBUS_CTRL_ACT_FREQMHZ {149.998505}\
     PS_CRL_LPD_LSBUS_CTRL_DIVISOR0 {8}\
     PS_CRL_LPD_LSBUS_CTRL_FREQMHZ {150}\
     PS_CRL_LPD_LSBUS_CTRL_SRCSEL {PPLL}\
     PS_CRL_LPD_TOP_SWITCH_CTRL_ACT_FREQMHZ {599.994019}\
     PS_CRL_LPD_TOP_SWITCH_CTRL_DIVISOR0 {2}\
     PS_CRL_LPD_TOP_SWITCH_CTRL_FREQMHZ {600}\
     PS_CRL_LPD_TOP_SWITCH_CTRL_SRCSEL {PPLL}\
     PS_CRL_PSM_REF_CTRL_ACT_FREQMHZ {399.996002}\
     PS_CRL_PSM_REF_CTRL_DIVISOR0 {3}\
     PS_CRL_PSM_REF_CTRL_FREQMHZ {400}\
     PS_CRL_PSM_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_RPLL_CTRL_CLKOUTDIV {4}\
     PS_CRL_RPLL_CTRL_FBDIV {99}\
     PS_CRL_RPLL_CTRL_SRCSEL {REF_CLK}\
     PS_CRL_RPLL_TO_XPD_CTRL_DIVISOR0 {1}\
     PS_CRL_SPI0_REF_CTRL_ACT_FREQMHZ {200}\
     PS_CRL_SPI0_REF_CTRL_DIVISOR0 {6}\
     PS_CRL_SPI0_REF_CTRL_FREQMHZ {200}\
     PS_CRL_SPI0_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_SPI1_REF_CTRL_ACT_FREQMHZ {200}\
     PS_CRL_SPI1_REF_CTRL_DIVISOR0 {6}\
     PS_CRL_SPI1_REF_CTRL_FREQMHZ {200}\
     PS_CRL_SPI1_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_TIMESTAMP_REF_CTRL_ACT_FREQMHZ {99.999001}\
     PS_CRL_TIMESTAMP_REF_CTRL_DIVISOR0 {12}\
     PS_CRL_TIMESTAMP_REF_CTRL_FREQMHZ {100}\
     PS_CRL_TIMESTAMP_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_UART0_REF_CTRL_ACT_FREQMHZ {100}\
     PS_CRL_UART0_REF_CTRL_DIVISOR0 {12}\
     PS_CRL_UART0_REF_CTRL_FREQMHZ {100}\
     PS_CRL_UART0_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_UART1_REF_CTRL_ACT_FREQMHZ {100}\
     PS_CRL_UART1_REF_CTRL_DIVISOR0 {12}\
     PS_CRL_UART1_REF_CTRL_FREQMHZ {100}\
     PS_CRL_UART1_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_USB0_BUS_REF_CTRL_ACT_FREQMHZ {20}\
     PS_CRL_USB0_BUS_REF_CTRL_DIVISOR0 {60}\
     PS_CRL_USB0_BUS_REF_CTRL_FREQMHZ {20}\
     PS_CRL_USB0_BUS_REF_CTRL_SRCSEL {PPLL}\
     PS_CRL_USB3_DUAL_REF_CTRL_ACT_FREQMHZ {20}\
     PS_CRL_USB3_DUAL_REF_CTRL_DIVISOR0 {60}\
     PS_CRL_USB3_DUAL_REF_CTRL_FREQMHZ {10}\
     PS_CRL_USB3_DUAL_REF_CTRL_SRCSEL {PPLL}\
     PS_DDRC_ENABLE {1}\
     PS_DDR_RAM_HIGHADDR_OFFSET {0x800000000}\
     PS_DDR_RAM_LOWADDR_OFFSET {0x80000000}\
     PS_ENET0_MDIO {{ENABLE 0} {IO {PMC_MIO 50 .. 51}}}\
     PS_ENET0_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 26 .. 37}}}\
     PS_ENET1_MDIO {{ENABLE 0} {IO {PMC_MIO 50 .. 51}}}\
     PS_ENET1_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 38 .. 49}}}\
     PS_EN_AXI_STATUS_PORTS {0}\
     PS_EN_PORTS_CONTROLLER_BASED {0}\
     PS_EXPAND_CORESIGHT {0}\
     PS_EXPAND_FPD_SLAVES {0}\
     PS_EXPAND_GIC {0}\
     PS_EXPAND_LPD_SLAVES {0}\
     PS_FPD_INTERCONNECT_LOAD {0.0}\
     PS_FTM_CTI_IN0 {0}\
     PS_FTM_CTI_IN1 {0}\
     PS_FTM_CTI_IN2 {0}\
     PS_FTM_CTI_IN3 {0}\
     PS_FTM_CTI_OUT0 {0}\
     PS_FTM_CTI_OUT1 {0}\
     PS_FTM_CTI_OUT2 {0}\
     PS_FTM_CTI_OUT3 {0}\
     PS_GEM_TSU {{ENABLE 0} {IO {PS_MIO 24}}}\
     PS_GEN_IPI0_ENABLE {0}\
     PS_GEN_IPI1_ENABLE {0}\
     PS_GEN_IPI2_ENABLE {0}\
     PS_GEN_IPI3_ENABLE {0}\
     PS_GEN_IPI4_ENABLE {0}\
     PS_GEN_IPI5_ENABLE {0}\
     PS_GEN_IPI6_ENABLE {0}\
     PS_GEN_IPI_PMCNOBUF_ENABLE {1}\
     PS_GEN_IPI_PMCNOBUF_MASTER {PMC}\
     PS_GEN_IPI_PMC_ENABLE {1}\
     PS_GEN_IPI_PMC_MASTER {PMC}\
     PS_GEN_IPI_PSM_ENABLE {1}\
     PS_GEN_IPI_PSM_MASTER {PSM}\
     PS_GPIO2_MIO_PERIPHERAL {{ENABLE 0} {IO {PS_MIO 0 .. 25}}}\
     PS_GPIO_EMIO_PERIPHERAL_ENABLE {0}\
     PS_HSDP0_REFCLK {0}\
     PS_HSDP1_REFCLK {0}\
     PS_HSDP_EGRESS_TRAFFIC {JTAG}\
     PS_HSDP_INGRESS_TRAFFIC {JTAG}\
     PS_HSDP_MODE {NONE}\
     PS_HSDP_SAME_EGRESS_AS_INGRESS_TRAFFIC {1}\
     PS_I2C0_PERIPHERAL {{ENABLE 0} {IO {PS_MIO 2 .. 3}}}\
     PS_I2C1_PERIPHERAL {{ENABLE 0} {IO {PS_MIO 0 .. 1}}}\
     PS_I2CSYSMON_PERIPHERAL {{ENABLE 0} {IO {PS_MIO 23 .. 24}}}\
     PS_IRQ_USAGE {{CH0 0} {CH1 0} {CH10 0} {CH11 0} {CH12 0} {CH13 0} {CH14 0} {CH15\
0} {CH2 0} {CH3 0} {CH4 0} {CH5 0} {CH6 0} {CH7 0} {CH8 0} {CH9 0}}\
     PS_LPDMA0_COHERENCY {0}\
     PS_LPDMA0_ROUTE_THROUGH_FPD {0}\
     PS_LPDMA1_COHERENCY {0}\
     PS_LPDMA1_ROUTE_THROUGH_FPD {0}\
     PS_LPDMA2_COHERENCY {0}\
     PS_LPDMA2_ROUTE_THROUGH_FPD {0}\
     PS_LPDMA3_COHERENCY {0}\
     PS_LPDMA3_ROUTE_THROUGH_FPD {0}\
     PS_LPDMA4_COHERENCY {0}\
     PS_LPDMA4_ROUTE_THROUGH_FPD {0}\
     PS_LPDMA5_COHERENCY {0}\
     PS_LPDMA5_ROUTE_THROUGH_FPD {0}\
     PS_LPDMA6_COHERENCY {0}\
     PS_LPDMA6_ROUTE_THROUGH_FPD {0}\
     PS_LPDMA7_COHERENCY {0}\
     PS_LPDMA7_ROUTE_THROUGH_FPD {0}\
     PS_LPD_DMA_CHANNEL_ENABLE {{CH0 0} {CH1 0} {CH2 0} {CH3 0} {CH4 0} {CH5 0} {CH6\
0} {CH7 0}}\
     PS_LPD_DMA_CH_TZ {{CH0 NonSecure} {CH1 NonSecure} {CH2 NonSecure} {CH3 NonSecure}\
{CH4 NonSecure} {CH5 NonSecure} {CH6 NonSecure} {CH7 NonSecure}}\
     PS_LPD_DMA_ENABLE {0}\
     PS_LPD_INTERCONNECT_LOAD {0.0}\
     PS_MIO0 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO1 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO10 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO11 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO12 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO13 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO14 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO15 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO16 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO17 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO18 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO19 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO2 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO20 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO21 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO22 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO23 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO24 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO25 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO3 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO4 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO5 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO6 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO7 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO8 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_MIO9 {{AUX_IO 0} {DIRECTION in} {DRIVE_STRENGTH 8mA} {OUTPUT_DATA default}\
{PULL pullup} {SCHMITT 0} {SLEW slow} {USAGE Unassigned}}\
     PS_M_AXI_GP4_DATA_WIDTH {128}\
     PS_NOC_PS_CCI_DATA_WIDTH {128}\
     PS_NOC_PS_NCI_DATA_WIDTH {128}\
     PS_NOC_PS_PCI_DATA_WIDTH {128}\
     PS_NOC_PS_PMC_DATA_WIDTH {128}\
     PS_NUM_F2P0_INTR_INPUTS {1}\
     PS_NUM_F2P1_INTR_INPUTS {1}\
     PS_NUM_FABRIC_RESETS {1}\
     PS_OCM_ACTIVE_BLOCKS {0}\
     PS_PCIE1_PERIPHERAL_ENABLE {1}\
     PS_PCIE2_PERIPHERAL_ENABLE {0}\
     PS_PCIE_EP_RESET1_IO {PMC_MIO 38}\
     PS_PCIE_EP_RESET2_IO {None}\
     PS_PCIE_PERIPHERAL_ENABLE {0}\
     PS_PCIE_RESET {{ENABLE 1}}\
     PS_PCIE_ROOT_RESET1_IO {None}\
     PS_PCIE_ROOT_RESET1_POLARITY {Active Low}\
     PS_PCIE_ROOT_RESET2_IO {None}\
     PS_PCIE_ROOT_RESET2_POLARITY {Active Low}\
     PS_PL_CONNECTIVITY_MODE {Custom}\
     PS_PL_DONE {0}\
     PS_PMCPL_CLK0_BUF {1}\
     PS_PMCPL_CLK1_BUF {1}\
     PS_PMCPL_CLK2_BUF {1}\
     PS_PMCPL_CLK3_BUF {1}\
     PS_PMCPL_IRO_CLK_BUF {1}\
     PS_PMU_PERIPHERAL_ENABLE {0}\
     PS_PS_ENABLE {0}\
     PS_PS_NOC_CCI_DATA_WIDTH {128}\
     PS_PS_NOC_NCI_DATA_WIDTH {128}\
     PS_PS_NOC_PCI_DATA_WIDTH {128}\
     PS_PS_NOC_PMC_DATA_WIDTH {128}\
     PS_PS_NOC_RPU_DATA_WIDTH {128}\
     PS_R5_ACTIVE_BLOCKS {0}\
     PS_R5_LOAD {0.0}\
     PS_RPU_COHERENCY {0}\
     PS_SLR_TYPE {master}\
     PS_SMON_PL_PORTS_ENABLE {0}\
     PS_SPI0 {{GRP_SS0_ENABLE 0} {GRP_SS0_IO {PMC_MIO 15}} {GRP_SS1_ENABLE 0}\
{GRP_SS1_IO {PMC_MIO 14}} {GRP_SS2_ENABLE 0} {GRP_SS2_IO {PMC_MIO 13}}\
{PERIPHERAL_ENABLE 0} {PERIPHERAL_IO {PMC_MIO 12 .. 17}}}\
     PS_SPI1 {{GRP_SS0_ENABLE 0} {GRP_SS0_IO {PS_MIO 9}} {GRP_SS1_ENABLE 0}\
{GRP_SS1_IO {PS_MIO 8}} {GRP_SS2_ENABLE 0} {GRP_SS2_IO {PS_MIO 7}}\
{PERIPHERAL_ENABLE 0} {PERIPHERAL_IO {PS_MIO 6 .. 11}}}\
     PS_S_AXI_ACE_DATA_WIDTH {128}\
     PS_S_AXI_ACP_DATA_WIDTH {128}\
     PS_TCM_ACTIVE_BLOCKS {0}\
     PS_TRACE_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 30 .. 47}}}\
     PS_TRISTATE_INVERTED {0}\
     PS_TTC0_CLK {{ENABLE 0} {IO {PS_MIO 6}}}\
     PS_TTC0_PERIPHERAL_ENABLE {0}\
     PS_TTC0_REF_CTRL_ACT_FREQMHZ {100}\
     PS_TTC0_REF_CTRL_FREQMHZ {100}\
     PS_TTC0_WAVEOUT {{ENABLE 0} {IO {PS_MIO 7}}}\
     PS_TTC1_CLK {{ENABLE 0} {IO {PS_MIO 12}}}\
     PS_TTC1_PERIPHERAL_ENABLE {0}\
     PS_TTC1_REF_CTRL_ACT_FREQMHZ {100}\
     PS_TTC1_REF_CTRL_FREQMHZ {100}\
     PS_TTC1_WAVEOUT {{ENABLE 0} {IO {PS_MIO 13}}}\
     PS_TTC2_CLK {{ENABLE 0} {IO {PS_MIO 2}}}\
     PS_TTC2_PERIPHERAL_ENABLE {0}\
     PS_TTC2_REF_CTRL_ACT_FREQMHZ {100}\
     PS_TTC2_REF_CTRL_FREQMHZ {100}\
     PS_TTC2_WAVEOUT {{ENABLE 0} {IO {PS_MIO 3}}}\
     PS_TTC3_CLK {{ENABLE 0} {IO {PS_MIO 16}}}\
     PS_TTC3_PERIPHERAL_ENABLE {0}\
     PS_TTC3_REF_CTRL_ACT_FREQMHZ {100}\
     PS_TTC3_REF_CTRL_FREQMHZ {100}\
     PS_TTC3_WAVEOUT {{ENABLE 0} {IO {PS_MIO 17}}}\
     PS_TTC_APB_CLK_TTC0_SEL {APB}\
     PS_TTC_APB_CLK_TTC1_SEL {APB}\
     PS_TTC_APB_CLK_TTC2_SEL {APB}\
     PS_TTC_APB_CLK_TTC3_SEL {APB}\
     PS_UART0_PERIPHERAL {{ENABLE 0} {IO {PS_MIO 0 .. 1}}}\
     PS_UART0_RTS_CTS {{ENABLE 0} {IO {PS_MIO 2 .. 3}}}\
     PS_UART1_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 4 .. 5}}}\
     PS_UART1_RTS_CTS {{ENABLE 0} {IO {PMC_MIO 6 .. 7}}}\
     PS_UNITS_MODE {Custom}\
     PS_USB3_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 13 .. 25}}}\
     PS_USE_ACE_LITE {0}\
     PS_USE_APU_EVENT_BUS {0}\
     PS_USE_APU_INTERRUPT {0}\
     PS_USE_AXI4_EXT_USER_BITS {0}\
     PS_USE_BSCAN_USER1 {0}\
     PS_USE_BSCAN_USER2 {0}\
     PS_USE_BSCAN_USER3 {0}\
     PS_USE_BSCAN_USER4 {0}\
     PS_USE_CAPTURE {0}\
     PS_USE_CLK {0}\
     PS_USE_DEBUG_TEST {0}\
     PS_USE_DIFF_RW_CLK_S_AXI_FPD {0}\
     PS_USE_DIFF_RW_CLK_S_AXI_GP2 {0}\
     PS_USE_DIFF_RW_CLK_S_AXI_LPD {0}\
     PS_USE_ENET0_PTP {0}\
     PS_USE_ENET1_PTP {0}\
     PS_USE_FIFO_ENET0 {0}\
     PS_USE_FIFO_ENET1 {0}\
     PS_USE_FIXED_IO {0}\
     PS_USE_FPD_AXI_NOC0 {0}\
     PS_USE_FPD_AXI_NOC1 {0}\
     PS_USE_FPD_CCI_NOC {0}\
     PS_USE_FPD_CCI_NOC0 {0}\
     PS_USE_FPD_CCI_NOC1 {0}\
     PS_USE_FPD_CCI_NOC2 {0}\
     PS_USE_FPD_CCI_NOC3 {0}\
     PS_USE_FTM_GPI {0}\
     PS_USE_FTM_GPO {0}\
     PS_USE_HSDP_PL {0}\
     PS_USE_M_AXI_FPD {1}\
     PS_USE_M_AXI_LPD {0}\
     PS_USE_NOC_FPD_AXI0 {0}\
     PS_USE_NOC_FPD_AXI1 {0}\
     PS_USE_NOC_FPD_CCI0 {0}\
     PS_USE_NOC_FPD_CCI1 {0}\
     PS_USE_NOC_LPD_AXI0 {0}\
     PS_USE_NOC_PS_PCI_0 {0}\
     PS_USE_NOC_PS_PMC_0 {0}\
     PS_USE_NPI_CLK {0}\
     PS_USE_NPI_RST {0}\
     PS_USE_PL_FPD_AUX_REF_CLK {0}\
     PS_USE_PL_LPD_AUX_REF_CLK {0}\
     PS_USE_PMC {0}\
     PS_USE_PMCPL_CLK0 {1}\
     PS_USE_PMCPL_CLK1 {0}\
     PS_USE_PMCPL_CLK2 {0}\
     PS_USE_PMCPL_CLK3 {0}\
     PS_USE_PMCPL_IRO_CLK {0}\
     PS_USE_PSPL_IRQ_FPD {0}\
     PS_USE_PSPL_IRQ_LPD {0}\
     PS_USE_PSPL_IRQ_PMC {0}\
     PS_USE_PS_NOC_PCI_0 {0}\
     PS_USE_PS_NOC_PCI_1 {0}\
     PS_USE_PS_NOC_PMC_0 {0}\
     PS_USE_PS_NOC_PMC_1 {0}\
     PS_USE_RPU_EVENT {0}\
     PS_USE_RPU_INTERRUPT {0}\
     PS_USE_RTC {0}\
     PS_USE_SMMU {0}\
     PS_USE_STARTUP {0}\
     PS_USE_STM {0}\
     PS_USE_S_ACP_FPD {0}\
     PS_USE_S_AXI_ACE {0}\
     PS_USE_S_AXI_FPD {0}\
     PS_USE_S_AXI_GP2 {0}\
     PS_USE_S_AXI_LPD {0}\
     PS_USE_TRACE_ATB {0}\
     PS_WDT0_REF_CTRL_ACT_FREQMHZ {100}\
     PS_WDT0_REF_CTRL_FREQMHZ {100}\
     PS_WDT0_REF_CTRL_SEL {NONE}\
     PS_WDT1_REF_CTRL_ACT_FREQMHZ {100}\
     PS_WDT1_REF_CTRL_FREQMHZ {100}\
     PS_WDT1_REF_CTRL_SEL {NONE}\
     PS_WWDT0_CLK {{ENABLE 0} {IO {PMC_MIO 0}}}\
     PS_WWDT0_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 0 .. 5}}}\
     PS_WWDT1_CLK {{ENABLE 0} {IO {PMC_MIO 6}}}\
     PS_WWDT1_PERIPHERAL {{ENABLE 0} {IO {PMC_MIO 6 .. 11}}}\
     SEM_ERROR_HANDLE_OPTIONS {Detect & Correct}\
     SEM_MEM_GOLDEN_ECC {0}\
     SEM_MEM_GOLDEN_ECC_SW {0}\
     SEM_MEM_SCAN {0}\
     SEM_NPI_SCAN {0}\
     SEM_TIME_INTERVAL_BETWEEN_SCANS {0}\
     SMON_ALARMS {Set_Alarms_On}\
     SMON_ENABLE_INT_VOLTAGE_MONITORING {0}\
     SMON_ENABLE_TEMP_AVERAGING {0}\
     SMON_INTERFACE_TO_USE {None}\
     SMON_MEAS0 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCCAUX_202} {SUPPLY_NUM 0}}\
     SMON_MEAS1 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCCAUX_203} {SUPPLY_NUM 0}}\
     SMON_MEAS10 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVTT_202} {SUPPLY_NUM\
0}}\
     SMON_MEAS100 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS101 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS102 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS103 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS104 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS105 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS106 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS107 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS108 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS109 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS11 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVTT_203} {SUPPLY_NUM\
0}}\
     SMON_MEAS110 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS111 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS112 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS113 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS114 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS115 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS116 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS117 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS118 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS119 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS12 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVTT_204} {SUPPLY_NUM\
0}}\
     SMON_MEAS120 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS121 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS122 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS123 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS124 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS125 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS126 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS127 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS128 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS129 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS13 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVTT_205} {SUPPLY_NUM\
0}}\
     SMON_MEAS130 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS131 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS132 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS133 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS134 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS135 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS136 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS137 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS138 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS139 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS14 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVTT_206} {SUPPLY_NUM\
0}}\
     SMON_MEAS140 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS141 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS142 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS143 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS144 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS145 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS146 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS147 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS148 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS149 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS15 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCCAUX_102}\
{SUPPLY_NUM 0}}\
     SMON_MEAS150 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS151 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS152 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS153 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS154 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS155 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS156 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS157 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS158 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS159 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS16 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCCAUX_103}\
{SUPPLY_NUM 0}}\
     SMON_MEAS160 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103}}\
     SMON_MEAS161 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103}}\
     SMON_MEAS162 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCINT}}\
     SMON_MEAS163 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCAUX}}\
     SMON_MEAS164 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_RAM}}\
     SMON_MEAS165 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_SOC}}\
     SMON_MEAS166 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_PSFP}}\
     SMON_MEAS167 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_PSLP}}\
     SMON_MEAS168 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCAUX_PMC}}\
     SMON_MEAS169 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_PMC}}\
     SMON_MEAS17 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCCAUX_104}\
{SUPPLY_NUM 0}}\
     SMON_MEAS170 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103}}\
     SMON_MEAS171 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103}}\
     SMON_MEAS172 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103}}\
     SMON_MEAS173 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103}}\
     SMON_MEAS174 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103}}\
     SMON_MEAS175 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103}}\
     SMON_MEAS18 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCCAUX_105}\
{SUPPLY_NUM 0}}\
     SMON_MEAS19 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCCAUX_106}\
{SUPPLY_NUM 0}}\
     SMON_MEAS2 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCCAUX_204} {SUPPLY_NUM 0}}\
     SMON_MEAS20 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCCAUX_200}\
{SUPPLY_NUM 0}}\
     SMON_MEAS21 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCCAUX_201}\
{SUPPLY_NUM 0}}\
     SMON_MEAS22 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCC_102} {SUPPLY_NUM\
0}}\
     SMON_MEAS23 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCC_103} {SUPPLY_NUM\
0}}\
     SMON_MEAS24 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCC_104} {SUPPLY_NUM\
0}}\
     SMON_MEAS25 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCC_105} {SUPPLY_NUM\
0}}\
     SMON_MEAS26 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCC_106} {SUPPLY_NUM\
0}}\
     SMON_MEAS27 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCC_200} {SUPPLY_NUM\
0}}\
     SMON_MEAS28 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVCC_201} {SUPPLY_NUM\
0}}\
     SMON_MEAS29 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVTT_102} {SUPPLY_NUM\
0}}\
     SMON_MEAS3 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCCAUX_205} {SUPPLY_NUM 0}}\
     SMON_MEAS30 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVTT_103} {SUPPLY_NUM\
0}}\
     SMON_MEAS31 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVTT_104} {SUPPLY_NUM\
0}}\
     SMON_MEAS32 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVTT_105} {SUPPLY_NUM\
0}}\
     SMON_MEAS33 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVTT_106} {SUPPLY_NUM\
0}}\
     SMON_MEAS34 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVTT_200} {SUPPLY_NUM\
0}}\
     SMON_MEAS35 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME GTYP_AVTT_201} {SUPPLY_NUM\
0}}\
     SMON_MEAS36 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCAUX} {SUPPLY_NUM 0}}\
     SMON_MEAS37 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCAUX_PMC} {SUPPLY_NUM 0}}\
     SMON_MEAS38 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCAUX_SMON} {SUPPLY_NUM 0}}\
     SMON_MEAS39 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCINT} {SUPPLY_NUM 0}}\
     SMON_MEAS4 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCCAUX_206} {SUPPLY_NUM 0}}\
     SMON_MEAS40 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {4 V unipolar}} {NAME VCCO_500} {SUPPLY_NUM 0}}\
     SMON_MEAS41 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {4 V unipolar}} {NAME VCCO_501} {SUPPLY_NUM 0}}\
     SMON_MEAS42 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {4 V unipolar}} {NAME VCCO_502} {SUPPLY_NUM 0}}\
     SMON_MEAS43 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {4 V unipolar}} {NAME VCCO_503} {SUPPLY_NUM 0}}\
     SMON_MEAS44 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_700} {SUPPLY_NUM 0}}\
     SMON_MEAS45 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_701} {SUPPLY_NUM 0}}\
     SMON_MEAS46 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_702} {SUPPLY_NUM 0}}\
     SMON_MEAS47 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_703} {SUPPLY_NUM 0}}\
     SMON_MEAS48 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_704} {SUPPLY_NUM 0}}\
     SMON_MEAS49 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_705} {SUPPLY_NUM 0}}\
     SMON_MEAS5 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCC_202} {SUPPLY_NUM 0}}\
     SMON_MEAS50 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_706} {SUPPLY_NUM 0}}\
     SMON_MEAS51 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_707} {SUPPLY_NUM 0}}\
     SMON_MEAS52 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_708} {SUPPLY_NUM 0}}\
     SMON_MEAS53 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_709} {SUPPLY_NUM 0}}\
     SMON_MEAS54 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_710} {SUPPLY_NUM 0}}\
     SMON_MEAS55 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_711} {SUPPLY_NUM 0}}\
     SMON_MEAS56 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCCO_712} {SUPPLY_NUM 0}}\
     SMON_MEAS57 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_BATT} {SUPPLY_NUM 0}}\
     SMON_MEAS58 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_PMC} {SUPPLY_NUM 0}}\
     SMON_MEAS59 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_PSFP} {SUPPLY_NUM 0}}\
     SMON_MEAS6 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCC_203} {SUPPLY_NUM 0}}\
     SMON_MEAS60 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_PSLP} {SUPPLY_NUM 0}}\
     SMON_MEAS61 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_RAM} {SUPPLY_NUM 0}}\
     SMON_MEAS62 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VCC_SOC} {SUPPLY_NUM 0}}\
     SMON_MEAS63 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE {2 V unipolar}} {NAME VP_VN} {SUPPLY_NUM 0}}\
     SMON_MEAS64 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS65 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS66 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS67 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS68 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS69 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS7 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCC_204} {SUPPLY_NUM 0}}\
     SMON_MEAS70 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS71 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS72 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS73 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS74 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS75 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS76 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS77 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS78 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS79 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS8 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCC_205} {SUPPLY_NUM 0}}\
     SMON_MEAS80 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS81 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS82 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS83 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS84 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS85 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS86 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS87 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS88 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS89 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS9 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN 0}\
{ENABLE 0} {MODE {2 V unipolar}} {NAME GTM_AVCC_206} {SUPPLY_NUM 0}}\
     SMON_MEAS90 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS91 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS92 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS93 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS94 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS95 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS96 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS97 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS98 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEAS99 {{ALARM_ENABLE 0} {ALARM_LOWER 0.00} {ALARM_UPPER 2.00} {AVERAGE_EN\
0} {ENABLE 0} {MODE None} {NAME GT_AVAUX_PKG_103} {SUPPLY_NUM 0}}\
     SMON_MEASUREMENT_COUNT {64}\
     SMON_MEASUREMENT_LIST {BANK_VOLTAGE:GTM_AVTT-GTM_AVTT_202,GTM_AVTT_203,GTM_AVTT_204,GTM_AVTT_205,GTM_AVTT_206#GTYP_AVTT-GTYP_AVTT_102,GTYP_AVTT_103,GTYP_AVTT_104,GTYP_AVTT_105,GTYP_AVTT_106,GTYP_AVTT_200,GTYP_AVTT_201#VCC-GTM_AVCC_202,GTM_AVCC_203,GTM_AVCC_204,GTM_AVCC_205,GTM_AVCC_206,GTYP_AVCC_102,GTYP_AVCC_103,GTYP_AVCC_104,GTYP_AVCC_105,GTYP_AVCC_106,GTYP_AVCC_200,GTYP_AVCC_201#VCCAUX-GTM_AVCCAUX_202,GTM_AVCCAUX_203,GTM_AVCCAUX_204,GTM_AVCCAUX_205,GTM_AVCCAUX_206,GTYP_AVCCAUX_102,GTYP_AVCCAUX_103,GTYP_AVCCAUX_104,GTYP_AVCCAUX_105,GTYP_AVCCAUX_106,GTYP_AVCCAUX_200,GTYP_AVCCAUX_201#VCCO-VCCO_500,VCCO_501,VCCO_502,VCCO_503,VCCO_700,VCCO_701,VCCO_702,VCCO_703,VCCO_704,VCCO_705,VCCO_706,VCCO_707,VCCO_708,VCCO_709,VCCO_710,VCCO_711,VCCO_712|DEDICATED_PAD:VP-VP_VN|SUPPLY_VOLTAGE:VCC-VCC_BATT,VCC_PMC,VCC_PSFP,VCC_PSLP,VCC_RAM,VCC_SOC#VCCAUX-VCCAUX,VCCAUX_PMC,VCCAUX_SMON#VCCINT-VCCINT}\
     SMON_OT {{THRESHOLD_LOWER -55} {THRESHOLD_UPPER 125}}\
     SMON_REFERENCE_SOURCE {Internal}\
     SMON_TEMP_AVERAGING_SAMPLES {0}\
     SMON_TEMP_THRESHOLD {0}\
     SMON_USER_TEMP {{THRESHOLD_LOWER 0} {THRESHOLD_UPPER 125} {USER_ALARM_TYPE\
window}}\
     SMON_VAUX_CH0 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH0} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH1 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH1} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH10 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH10} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH11 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH11} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH12 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH12} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH13 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH13} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH14 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH14} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH15 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH15} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH2 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH2} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH3 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH3} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH4 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH4} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH5 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH5} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH6 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH6} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH7 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH7} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH8 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH8} {SUPPLY_NUM 0}}\
     SMON_VAUX_CH9 {{ALARM_ENABLE 0} {ALARM_LOWER 0} {ALARM_UPPER 0} {AVERAGE_EN 0}\
{ENABLE 0} {IO_N PMC_MIO1_500} {IO_P PMC_MIO0_500} {MODE {1 V\
unipolar}} {NAME VAUX_CH9} {SUPPLY_NUM 0}}\
     SMON_VAUX_IO_BANK {MIO_BANK0}\
     SMON_VOLTAGE_AVERAGING_SAMPLES {None}\
     SPP_PSPMC_FROM_CORE_WIDTH {12000}\
     SPP_PSPMC_TO_CORE_WIDTH {12000}\
     SUBPRESET1 {Custom}\
     USE_UART0_IN_DEVICE_BOOT {0}\
   } \
   CONFIG.PS_PMC_CONFIG_APPLIED {1} \
 ] $versal_cips_0

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_0_1 [get_bd_intf_ports S_AXIL] [get_bd_intf_pins axi_bram_ctrl_1/S_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0_bram1/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_1/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_noc_0_CH0_LPDDR4_0 [get_bd_intf_ports ch0_lpddr4_trip1] [get_bd_intf_pins axi_noc_0/CH0_LPDDR4_0]
  connect_bd_intf_net -intf_net axi_noc_0_CH0_LPDDR4_1 [get_bd_intf_ports ch0_lpddr4_trip2] [get_bd_intf_pins axi_noc_0/CH0_LPDDR4_1]
  connect_bd_intf_net -intf_net axi_noc_0_CH1_LPDDR4_0 [get_bd_intf_ports ch1_lpddr4_trip1] [get_bd_intf_pins axi_noc_0/CH1_LPDDR4_0]
  connect_bd_intf_net -intf_net axi_noc_0_CH1_LPDDR4_1 [get_bd_intf_ports ch1_lpddr4_trip2] [get_bd_intf_pins axi_noc_0/CH1_LPDDR4_1]
  connect_bd_intf_net -intf_net axi_noc_0_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_noc_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_noc_0_M01_AXI [get_bd_intf_pins axi_noc_0/M01_AXI] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_noc_0_M02_AXI [get_bd_intf_pins axi_noc_0/M02_AXI] [get_bd_intf_pins smartconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net dma0_c2h_byp_in_mm_0_0_1 [get_bd_intf_ports dma0_c2h_byp_in_mm_0_0] [get_bd_intf_pins versal_cips_0/dma0_c2h_byp_in_mm_0]
  connect_bd_intf_net -intf_net dma0_c2h_byp_in_mm_1_0_1 [get_bd_intf_ports dma0_c2h_byp_in_mm_1_0] [get_bd_intf_pins versal_cips_0/dma0_c2h_byp_in_mm_1]
  connect_bd_intf_net -intf_net dma0_c2h_byp_in_st_csh_0_1 [get_bd_intf_ports dma0_c2h_byp_in_st_csh_0] [get_bd_intf_pins versal_cips_0/dma0_c2h_byp_in_st_csh]
  connect_bd_intf_net -intf_net dma0_dsc_crdt_in_0_1 [get_bd_intf_ports dma0_dsc_crdt_in_0] [get_bd_intf_pins versal_cips_0/dma0_dsc_crdt_in]
  connect_bd_intf_net -intf_net dma0_h2c_byp_in_mm_0_0_1 [get_bd_intf_ports dma0_h2c_byp_in_mm_0_0] [get_bd_intf_pins versal_cips_0/dma0_h2c_byp_in_mm_0]
  connect_bd_intf_net -intf_net dma0_h2c_byp_in_mm_1_0_1 [get_bd_intf_ports dma0_h2c_byp_in_mm_1_0] [get_bd_intf_pins versal_cips_0/dma0_h2c_byp_in_mm_1]
  connect_bd_intf_net -intf_net dma0_h2c_byp_in_st_0_1 [get_bd_intf_ports dma0_h2c_byp_in_st_0] [get_bd_intf_pins versal_cips_0/dma0_h2c_byp_in_st]
  connect_bd_intf_net -intf_net dma0_s_axis_c2h_0_1 [get_bd_intf_ports dma0_s_axis_c2h_0] [get_bd_intf_pins versal_cips_0/dma0_s_axis_c2h]
  connect_bd_intf_net -intf_net dma0_s_axis_c2h_cmpt_0_1 [get_bd_intf_ports dma0_s_axis_c2h_cmpt_0] [get_bd_intf_pins versal_cips_0/dma0_s_axis_c2h_cmpt]
  connect_bd_intf_net -intf_net gt_refclk0_0_1 [get_bd_intf_ports gt_refclk0_0] [get_bd_intf_pins versal_cips_0/gt_refclk0]
  connect_bd_intf_net -intf_net lpddr4_clk2_1 [get_bd_intf_ports lpddr4_clk2] [get_bd_intf_pins axi_noc_0/sys_clk1]
  connect_bd_intf_net -intf_net pcie_qdma_mailbox_0_dma_flr [get_bd_intf_pins pcie_qdma_mailbox_0/dma_flr] [get_bd_intf_pins versal_cips_0/dma0_usr_flr]
  connect_bd_intf_net -intf_net pcie_qdma_mailbox_0_dma_usr_irq [get_bd_intf_pins pcie_qdma_mailbox_0/dma_usr_irq] [get_bd_intf_pins versal_cips_0/dma0_usr_irq]
  connect_bd_intf_net -intf_net pcie_qdma_mailbox_0_pcie_mgmt [get_bd_intf_pins pcie_qdma_mailbox_0/pcie_mgmt] [get_bd_intf_pins versal_cips_0/dma0_mgmt]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_ports M_AXIL] [get_bd_intf_pins smartconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_1_M00_AXI [get_bd_intf_pins pcie_qdma_mailbox_0/S_AXI_LITE] [get_bd_intf_pins smartconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net sys_clk0_0_1 [get_bd_intf_ports sys_clk0_0] [get_bd_intf_pins axi_noc_0/sys_clk0]
  connect_bd_intf_net -intf_net usr_flr_0_1 [get_bd_intf_ports usr_flr_0] [get_bd_intf_pins pcie_qdma_mailbox_0/usr_flr]
  connect_bd_intf_net -intf_net usr_irq_0_1 [get_bd_intf_ports usr_irq_0] [get_bd_intf_pins pcie_qdma_mailbox_0/usr_irq]
  connect_bd_intf_net -intf_net versal_cips_0_CPM_PCIE_NOC_0 [get_bd_intf_pins axi_noc_0/S00_AXI] [get_bd_intf_pins versal_cips_0/CPM_PCIE_NOC_0]
  connect_bd_intf_net -intf_net versal_cips_0_CPM_PCIE_NOC_1 [get_bd_intf_pins axi_noc_0/S01_AXI] [get_bd_intf_pins versal_cips_0/CPM_PCIE_NOC_1]
  connect_bd_intf_net -intf_net versal_cips_0_M_AXI_FPD [get_bd_intf_pins axi_dbg_hub_0/S_AXI] [get_bd_intf_pins versal_cips_0/M_AXI_FPD]
  connect_bd_intf_net -intf_net versal_cips_0_PCIE0_GT [get_bd_intf_ports PCIE0_GT_0] [get_bd_intf_pins versal_cips_0/PCIE0_GT]
  connect_bd_intf_net -intf_net versal_cips_0_dma0_axis_c2h_dmawr [get_bd_intf_ports dma0_axis_c2h_dmawr_0] [get_bd_intf_pins versal_cips_0/dma0_axis_c2h_dmawr]
  connect_bd_intf_net -intf_net versal_cips_0_dma0_axis_c2h_status [get_bd_intf_ports dma0_axis_c2h_status_0] [get_bd_intf_pins versal_cips_0/dma0_axis_c2h_status]
  connect_bd_intf_net -intf_net versal_cips_0_dma0_c2h_byp_out [get_bd_intf_ports dma0_c2h_byp_out_0] [get_bd_intf_pins versal_cips_0/dma0_c2h_byp_out]
  connect_bd_intf_net -intf_net versal_cips_0_dma0_h2c_byp_out [get_bd_intf_ports dma0_h2c_byp_out_0] [get_bd_intf_pins versal_cips_0/dma0_h2c_byp_out]
  connect_bd_intf_net -intf_net versal_cips_0_dma0_m_axis_h2c [get_bd_intf_ports dma0_m_axis_h2c_0] [get_bd_intf_pins versal_cips_0/dma0_m_axis_h2c]
  connect_bd_intf_net -intf_net versal_cips_0_dma0_qsts_out [get_bd_intf_ports dma0_qsts_out_0] [get_bd_intf_pins versal_cips_0/dma0_qsts_out]
  connect_bd_intf_net -intf_net versal_cips_0_dma0_st_rx_msg [get_bd_intf_ports dma0_st_rx_msg_0] [get_bd_intf_pins versal_cips_0/dma0_st_rx_msg]
  connect_bd_intf_net -intf_net versal_cips_0_dma0_tm_dsc_sts [get_bd_intf_ports dma0_tm_dsc_sts_0] [get_bd_intf_pins versal_cips_0/dma0_tm_dsc_sts]

  # Create port connections
  connect_bd_net -net cpm_irq0_0_1 [get_bd_ports cpm_irq0_0] [get_bd_pins versal_cips_0/cpm_irq0]
  connect_bd_net -net cpm_irq1_0_1 [get_bd_ports cpm_irq1_0] [get_bd_pins versal_cips_0/cpm_irq1]
  connect_bd_net -net dma0_intrfc_resetn_0_1 [get_bd_ports dma0_intrfc_resetn_0] [get_bd_pins versal_cips_0/dma0_intrfc_resetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_dbg_hub_0/aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net versal_cips_0_cpm_cor_irq [get_bd_ports cpm_cor_irq_0] [get_bd_pins versal_cips_0/cpm_cor_irq]
  connect_bd_net -net versal_cips_0_cpm_misc_irq [get_bd_ports cpm_misc_irq_0] [get_bd_pins versal_cips_0/cpm_misc_irq]
  connect_bd_net -net versal_cips_0_cpm_pcie_noc_axi0_clk [get_bd_pins axi_noc_0/aclk0] [get_bd_pins versal_cips_0/cpm_pcie_noc_axi0_clk]
  connect_bd_net -net versal_cips_0_cpm_pcie_noc_axi1_clk [get_bd_pins axi_noc_0/aclk1] [get_bd_pins versal_cips_0/cpm_pcie_noc_axi1_clk]
  connect_bd_net -net versal_cips_0_cpm_uncor_irq [get_bd_ports cpm_uncor_irq_0] [get_bd_pins versal_cips_0/cpm_uncor_irq]
  connect_bd_net -net versal_cips_0_dma0_axi_aresetn [get_bd_ports dma0_axi_aresetn_0] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_1/s_axi_aresetn] [get_bd_pins pcie_qdma_mailbox_0/axi_aresetn] [get_bd_pins smartconnect_0/aresetn] [get_bd_pins smartconnect_1/aresetn] [get_bd_pins versal_cips_0/dma0_axi_aresetn]
  connect_bd_net -net versal_cips_0_pl0_resetn [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins versal_cips_0/pl0_resetn]
  connect_bd_net -net versal_cips_0_pl0_user_clk [get_bd_ports dma0_intrfc_clk_0] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_bram_ctrl_1/s_axi_aclk] [get_bd_pins axi_dbg_hub_0/aclk] [get_bd_pins axi_noc_0/aclk2] [get_bd_pins pcie_qdma_mailbox_0/axi_aclk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk] [get_bd_pins smartconnect_1/aclk] [get_bd_pins versal_cips_0/dma0_intrfc_clk] [get_bd_pins versal_cips_0/m_axi_fpd_aclk] [get_bd_pins versal_cips_0/pl0_ref_clk]

  # Create address segments
  assign_bd_address -offset 0x020180000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_0] [get_bd_addr_segs M_AXIL/Reg] -force
  assign_bd_address -offset 0x020180000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_1] [get_bd_addr_segs M_AXIL/Reg] -force
  assign_bd_address -offset 0x020100000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_0] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x020100000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_1] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0xA4000000 -range 0x00200000 -target_address_space [get_bd_addr_spaces versal_cips_0/M_AXI_FPD] [get_bd_addr_segs axi_dbg_hub_0/S_AXI_DBG_HUB/Mem0] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_0] [get_bd_addr_segs axi_noc_0/S00_AXI/C0_DDR_LOW0x2] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_1] [get_bd_addr_segs axi_noc_0/S01_AXI/C0_DDR_LOW0x2] -force
  assign_bd_address -offset 0x000800000000 -range 0x000180000000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_0] [get_bd_addr_segs axi_noc_0/S00_AXI/C0_DDR_LOW1x2] -force
  assign_bd_address -offset 0x000800000000 -range 0x000180000000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_1] [get_bd_addr_segs axi_noc_0/S01_AXI/C0_DDR_LOW1x2] -force
  assign_bd_address -offset 0x020800000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_0] [get_bd_addr_segs pcie_qdma_mailbox_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x020800000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces versal_cips_0/CPM_PCIE_NOC_1] [get_bd_addr_segs pcie_qdma_mailbox_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces S_AXIL] [get_bd_addr_segs axi_bram_ctrl_1/S_AXI/Mem0] -force


  validate_bd_design
  save_bd_design

