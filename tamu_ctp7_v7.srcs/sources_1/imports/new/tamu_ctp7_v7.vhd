-------------------------------------------------------------------------------
--                                                                            
--       Unit Name: tamu_ctp7_v7                                            
--                                                                            
--     Description: 
--
--                                                                            
-------------------------------------------------------------------------------
--                                                                            
--           Notes:                                                           
--                                                                            
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library UNISIM;
use UNISIM.VCOMPONENTS.all;

library work;
use work.gth_pkg.all;

use work.ctp7_utils_pkg.all;
use work.ttc_pkg.all;
use work.capture_playback_pkg.all;
use work.tamu_ctp7_v7_build_cfg.all;
use work.gem_pkg.all;

--============================================================================
--                                                          Entity declaration
--============================================================================
entity tamu_ctp7_v7 is
  generic (
    C_DATE_CODE      : std_logic_vector (31 downto 0) := x"00000000";
    C_GITHASH_CODE   : std_logic_vector (31 downto 0) := x"00000000";
    C_GIT_REPO_DIRTY : std_logic                      := '0'
    );
  port (
    clk_200_diff_in_clk_p : in std_logic;
    clk_200_diff_in_clk_n : in std_logic;

    clk_40_ttc_p_i : in std_logic;      -- TTC backplane clock signals
    clk_40_ttc_n_i : in std_logic;
    ttc_data_p_i   : in std_logic;
    ttc_data_n_i   : in std_logic;

    LEDs : out std_logic_vector (1 downto 0);

    axi_c2c_v7_to_zynq_data        : out std_logic_vector (14 downto 0);
    axi_c2c_v7_to_zynq_clk         : out std_logic;
    axi_c2c_zynq_to_v7_clk         : in  std_logic;
    axi_c2c_zynq_to_v7_data        : in  std_logic_vector (14 downto 0);
    axi_c2c_v7_to_zynq_link_status : out std_logic;
    axi_c2c_zynq_to_v7_reset       : in  std_logic;

    refclk_F_0_p_i : in std_logic_vector (3 downto 0);
    refclk_F_0_n_i : in std_logic_vector (3 downto 0);
    refclk_F_1_p_i : in std_logic_vector (3 downto 0);
    refclk_F_1_n_i : in std_logic_vector (3 downto 0);

    refclk_B_0_p_i : in std_logic_vector (3 downto 1);
    refclk_B_0_n_i : in std_logic_vector (3 downto 1);
    refclk_B_1_p_i : in std_logic_vector (3 downto 1);
    refclk_B_1_n_i : in std_logic_vector (3 downto 1)

    );
end tamu_ctp7_v7;

--============================================================================
--                                                        Architecture section
--============================================================================
architecture tamu_ctp7_v7_arch of tamu_ctp7_v7 is

--============================================================================
--                                                      Component declarations
--===========================================================================

  component io_link_3p2g_demo_ctrl
    port (
      clk_160_bc_i : in std_logic;
      ttc_cmds_i   : in t_ttc_cmds;

      clk_gth_tx_usrclk_i : in std_logic_vector(11 downto 0);
      clk_gth_rx_usrclk_i : in std_logic_vector(11 downto 0);

      gth_tx_data_o : out t_gth_tx_data_arr(11 downto 0);
      gth_rx_data_i : in  t_gth_rx_data_arr(11 downto 0);

      enable_tx_cdc_fifo_i : std_logic_vector(11 downto 0);
      enable_rx_cdc_fifo_i : std_logic_vector(11 downto 0);

      rx_capture_ctrl_i   : in  t_capture_ctrl_arr(11 downto 0);
      rx_capture_status_o : out t_capture_status_arr(11 downto 0);

      BRAM_CTRL_RX_RAM_addr : in  std_logic_vector (16 downto 0);
      BRAM_CTRL_RX_RAM_clk  : in  std_logic;
      BRAM_CTRL_RX_RAM_din  : in  std_logic_vector (31 downto 0);
      BRAM_CTRL_RX_RAM_dout : out std_logic_vector (31 downto 0);
      BRAM_CTRL_RX_RAM_en   : in  std_logic;
      BRAM_CTRL_RX_RAM_rst  : in  std_logic;
      BRAM_CTRL_RX_RAM_we   : in  std_logic_vector (3 downto 0);

      BRAM_CTRL_TX_RAM_addr : in  std_logic_vector (16 downto 0);
      BRAM_CTRL_TX_RAM_clk  : in  std_logic;
      BRAM_CTRL_TX_RAM_din  : in  std_logic_vector (31 downto 0);
      BRAM_CTRL_TX_RAM_dout : out std_logic_vector (31 downto 0);
      BRAM_CTRL_TX_RAM_en   : in  std_logic;
      BRAM_CTRL_TX_RAM_rst  : in  std_logic;
      BRAM_CTRL_TX_RAM_we   : in  std_logic_vector (3 downto 0)
      );
  end component io_link_3p2g_demo_ctrl;

  component io_link_4p8g_demo_ctrl
    port (
      clk_gth_tx_usrclk_i : in std_logic_vector(23 downto 0);
      clk_gth_rx_usrclk_i : in std_logic_vector(23 downto 0);

      gth_tx_data_o       : out t_gth_tx_data_arr(23 downto 0);
      gth_rx_data_i       : in  t_gth_rx_data_arr(23 downto 0);
      gth_rx_ctrl_2_arr_i : out t_gth_rx_ctrl_2_arr(23 downto 0)

      );
  end component io_link_4p8g_demo_ctrl;

  component v7_bd is
    port (
      BRAM_CTRL_RX_RAM_addr : out std_logic_vector (16 downto 0);
      BRAM_CTRL_RX_RAM_clk  : out std_logic;
      BRAM_CTRL_RX_RAM_din  : out std_logic_vector (31 downto 0);
      BRAM_CTRL_RX_RAM_dout : in  std_logic_vector (31 downto 0);
      BRAM_CTRL_RX_RAM_en   : out std_logic;
      BRAM_CTRL_RX_RAM_rst  : out std_logic;
      BRAM_CTRL_RX_RAM_we   : out std_logic_vector (3 downto 0);

      BRAM_CTRL_TX_RAM_addr : out std_logic_vector (16 downto 0);
      BRAM_CTRL_TX_RAM_clk  : out std_logic;
      BRAM_CTRL_TX_RAM_din  : out std_logic_vector (31 downto 0);
      BRAM_CTRL_TX_RAM_dout : in  std_logic_vector (31 downto 0);
      BRAM_CTRL_TX_RAM_en   : out std_logic;
      BRAM_CTRL_TX_RAM_rst  : out std_logic;
      BRAM_CTRL_TX_RAM_we   : out std_logic_vector (3 downto 0);

      BRAM_CTRL_DRP_addr : out std_logic_vector (15 downto 0);
      BRAM_CTRL_DRP_clk  : out std_logic;
      BRAM_CTRL_DRP_din  : out std_logic_vector (31 downto 0);
      BRAM_CTRL_DRP_dout : in  std_logic_vector (31 downto 0);
      BRAM_CTRL_DRP_en   : out std_logic;
      BRAM_CTRL_DRP_rst  : out std_logic;
      BRAM_CTRL_DRP_we   : out std_logic_vector (3 downto 0);

      BRAM_CTRL_REG_FILE_addr : out std_logic_vector (16 downto 0);
      BRAM_CTRL_REG_FILE_clk  : out std_logic;
      BRAM_CTRL_REG_FILE_din  : out std_logic_vector (31 downto 0);
      BRAM_CTRL_REG_FILE_dout : in  std_logic_vector (31 downto 0);
      BRAM_CTRL_REG_FILE_en   : out std_logic;
      BRAM_CTRL_REG_FILE_rst  : out std_logic;
      BRAM_CTRL_REG_FILE_we   : out std_logic_vector (3 downto 0);

      BRAM_CTRL_GTH_REG_FILE_addr : out std_logic_vector (16 downto 0);
      BRAM_CTRL_GTH_REG_FILE_clk  : out std_logic;
      BRAM_CTRL_GTH_REG_FILE_din  : out std_logic_vector (31 downto 0);
      BRAM_CTRL_GTH_REG_FILE_dout : in  std_logic_vector (31 downto 0);
      BRAM_CTRL_GTH_REG_FILE_en   : out std_logic;
      BRAM_CTRL_GTH_REG_FILE_rst  : out std_logic;
      BRAM_CTRL_GTH_REG_FILE_we   : out std_logic_vector (3 downto 0);

      axi_c2c_zynq_to_v7_clk         : in  std_logic;
      axi_c2c_zynq_to_v7_data        : in  std_logic_vector (14 downto 0);
      axi_c2c_v7_to_zynq_link_status : out std_logic;
      axi_c2c_v7_to_zynq_clk         : out std_logic;
      axi_c2c_v7_to_zynq_data        : out std_logic_vector (14 downto 0);
      axi_c2c_zynq_to_v7_reset       : in  std_logic;

      clk_200_diff_in_clk_n : in std_logic;
      clk_200_diff_in_clk_p : in std_logic;

      clk_out1_200mhz : out std_logic;
      clk_out2_50mhz  : out std_logic
      );
  end component v7_bd;

--============================================================================
--                                                         Signal declarations
--============================================================================
  signal s_pg_bx0_ext_en : std_logic;

  signal s_clk_200 : std_logic;
  signal s_clk_50  : std_logic;

  signal s_ttc_clks : t_ttc_clks;

  signal BRAM_CTRL_REG_FILE_en   : std_logic;
  signal BRAM_CTRL_REG_FILE_dout : std_logic_vector (31 downto 0) := x"00000000";
  signal BRAM_CTRL_REG_FILE_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_REG_FILE_we   : std_logic_vector (3 downto 0);
  signal BRAM_CTRL_REG_FILE_addr : std_logic_vector (16 downto 0);
  signal BRAM_CTRL_REG_FILE_clk  : std_logic;
  signal BRAM_CTRL_REG_FILE_rst  : std_logic;

  signal BRAM_CTRL_GTH_REG_FILE_en   : std_logic;
  signal BRAM_CTRL_GTH_REG_FILE_dout : std_logic_vector (31 downto 0) := x"00000000";
  signal BRAM_CTRL_GTH_REG_FILE_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_GTH_REG_FILE_we   : std_logic_vector (3 downto 0);
  signal BRAM_CTRL_GTH_REG_FILE_addr : std_logic_vector (16 downto 0);
  signal BRAM_CTRL_GTH_REG_FILE_clk  : std_logic;
  signal BRAM_CTRL_GTH_REG_FILE_rst  : std_logic;

  signal BRAM_CTRL_DRP_addr : std_logic_vector (15 downto 0);
  signal BRAM_CTRL_DRP_clk  : std_logic;
  signal BRAM_CTRL_DRP_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_DRP_dout : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_DRP_en   : std_logic;
  signal BRAM_CTRL_DRP_rst  : std_logic;
  signal BRAM_CTRL_DRP_we   : std_logic_vector (3 downto 0);

----
  signal BRAM_CTRL_RX_RAM_addr : std_logic_vector (16 downto 0);
  signal BRAM_CTRL_RX_RAM_clk  : std_logic;
  signal BRAM_CTRL_RX_RAM_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_RX_RAM_dout : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_RX_RAM_en   : std_logic;
  signal BRAM_CTRL_RX_RAM_rst  : std_logic;
  signal BRAM_CTRL_RX_RAM_we   : std_logic_vector (3 downto 0);

  signal BRAM_CTRL_TX_RAM_addr : std_logic_vector (16 downto 0);
  signal BRAM_CTRL_TX_RAM_clk  : std_logic;
  signal BRAM_CTRL_TX_RAM_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_TX_RAM_dout : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_TX_RAM_en   : std_logic;
  signal BRAM_CTRL_TX_RAM_rst  : std_logic;
  signal BRAM_CTRL_TX_RAM_we   : std_logic_vector (3 downto 0);

------

  signal s_BD_GPIO_float : std_logic_vector (15 downto 0);

  signal clk_stable_i : std_logic := '0';

  signal s_gth_common_reset : std_logic_vector(g_NUM_OF_GTH_COMMONs-1 downto 0);
  signal s_gth_gt_txreset   : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_gt_rxreset   : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);

  signal s_gth_common_status_arr  : t_gth_common_status_arr(g_NUM_OF_GTH_COMMONs-1 downto 0);
  signal s_gth_common_drp_in_arr  : t_gth_common_drp_in_arr(g_NUM_OF_GTH_COMMONs-1 downto 0);
  signal s_gth_common_drp_out_arr : t_gth_common_drp_out_arr(g_NUM_OF_GTH_COMMONs-1 downto 0);

  signal s_gth_gt_txreset_done : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_gt_rxreset_done : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_rx_serial_arr   : t_gth_rx_serial_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_tx_serial_arr   : t_gth_tx_serial_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_gt_drp_in_arr   : t_gth_gt_drp_in_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_gt_drp_out_arr  : t_gth_gt_drp_out_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_tx_ctrl_arr     : t_gth_tx_ctrl_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_tx_status_arr   : t_gth_tx_status_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_rx_ctrl_arr     : t_gth_rx_ctrl_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_rx_ctrl_2_arr   : t_gth_rx_ctrl_2_arr(g_NUM_OF_GTH_GTs-1 downto 0);

  signal s_gth_rx_status_arr   : t_gth_rx_status_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_misc_ctrl_arr   : t_gth_misc_ctrl_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_misc_status_arr : t_gth_misc_status_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_tx_data_arr     : t_gth_tx_data_arr(g_NUM_OF_GTH_GTs-1 downto 0);

  signal s_gth_rx_data_arr    : t_gth_rx_data_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_rx_data_arr_d1 : t_gth_rx_data_arr(g_NUM_OF_GTH_GTs-1 downto 0);


  signal s_clk_gth_tx_usrclk_arr : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_clk_gth_rx_usrclk_arr : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
  signal s_gth_cpll_status_arr   : t_gth_cpll_status_arr(g_NUM_OF_GTH_GTs-1 downto 0);

  signal s_ttc_mmcm_ps_clk_en : std_logic;
  signal s_ttc_mmcm_ps_clk    : std_logic;

  signal s_ttc_cmd        : std_logic_vector(3 downto 0);  -- TTC b command output
  signal s_ttc_l1a        : std_logic;  -- L1A output
----
  signal s_DRP_MMCM_clk   : std_logic;
  signal s_DRP_MMCM_daddr : std_logic_vector (6 downto 0);
  signal s_DRP_MMCM_den   : std_logic;
  signal s_DRP_MMCM_di    : std_logic_vector (15 downto 0);
  signal s_DRP_MMCM_do    : std_logic_vector (15 downto 0);
  signal s_DRP_MMCM_drdy  : std_logic;
  signal s_DRP_MMCM_dwe   : std_logic;

  signal s_ttc_mmcm_ctrl : t_ttc_mmcm_ctrl;
  signal s_ttc_mmcm_stat : t_ttc_mmcm_stat;

  signal s_ttc_ctrl : t_ttc_ctrl;
  signal s_ttc_stat : t_ttc_stat;

  signal s_ttc_diag_cntrs_o : t_ttc_diag_cntrs;
  signal s_ttc_daq_cntrs    : t_ttc_daq_cntrs;
  signal s_ttc_cmds         : t_ttc_cmds;

  signal s_rx_capture_ctrl   : t_capture_ctrl_arr(11 downto 0);
  signal s_rx_capture_status : t_capture_status_arr(11 downto 0);
  
  -------------------------- GEM ----------------------------------
  signal oh_reg_request_arr  : t_reg_request_arr(11 downto 0);
  signal oh_reg_response_arr : t_reg_response_arr(11 downto 0);

  -------------------------- DEBUG ----------------------------------
  attribute mark_debug : string;
  attribute mark_debug of oh_reg_request_arr: signal is "true";
  attribute mark_debug of oh_reg_response_arr: signal is "true";
--  attribute mark_debug of s_clk_gth_rx_usrclk_arr: signal is "true";
--  attribute mark_debug of s_clk_gth_tx_usrclk_arr: signal is "true";
  attribute mark_debug of s_gth_rx_data_arr: signal is "true";
  attribute mark_debug of s_gth_tx_data_arr: signal is "true";

--============================================================================
--                                                          Architecture begin
--============================================================================

begin

  LEDs(1) <= '1';
  LEDs(0) <= '1';

  i_v7_bd : v7_bd
    port map (

      BRAM_CTRL_DRP_addr(15 downto 0) => BRAM_CTRL_DRP_addr(15 downto 0),
      BRAM_CTRL_DRP_clk               => BRAM_CTRL_DRP_clk,
      BRAM_CTRL_DRP_din(31 downto 0)  => BRAM_CTRL_DRP_din(31 downto 0),
      BRAM_CTRL_DRP_dout(31 downto 0) => BRAM_CTRL_DRP_dout(31 downto 0),
      BRAM_CTRL_DRP_en                => BRAM_CTRL_DRP_en,
      BRAM_CTRL_DRP_rst               => BRAM_CTRL_DRP_rst,
      BRAM_CTRL_DRP_we(3 downto 0)    => BRAM_CTRL_DRP_we(3 downto 0),

      BRAM_CTRL_GTH_REG_FILE_addr(16 downto 0) => BRAM_CTRL_GTH_REG_FILE_addr(16 downto 0),
      BRAM_CTRL_GTH_REG_FILE_clk               => BRAM_CTRL_GTH_REG_FILE_clk,
      BRAM_CTRL_GTH_REG_FILE_din(31 downto 0)  => BRAM_CTRL_GTH_REG_FILE_din(31 downto 0),
      BRAM_CTRL_GTH_REG_FILE_dout(31 downto 0) => BRAM_CTRL_GTH_REG_FILE_dout(31 downto 0),
      BRAM_CTRL_GTH_REG_FILE_en                => BRAM_CTRL_GTH_REG_FILE_en,
      BRAM_CTRL_GTH_REG_FILE_rst               => BRAM_CTRL_GTH_REG_FILE_rst,
      BRAM_CTRL_GTH_REG_FILE_we(3 downto 0)    => BRAM_CTRL_GTH_REG_FILE_we(3 downto 0),

      BRAM_CTRL_TX_RAM_addr(16 downto 0) => BRAM_CTRL_TX_RAM_addr(16 downto 0),
      BRAM_CTRL_TX_RAM_clk               => BRAM_CTRL_TX_RAM_clk,
      BRAM_CTRL_TX_RAM_din(31 downto 0)  => BRAM_CTRL_TX_RAM_din(31 downto 0),
      BRAM_CTRL_TX_RAM_dout(31 downto 0) => BRAM_CTRL_TX_RAM_dout(31 downto 0),
      BRAM_CTRL_TX_RAM_en                => BRAM_CTRL_TX_RAM_en,
      BRAM_CTRL_TX_RAM_rst               => BRAM_CTRL_TX_RAM_rst,
      BRAM_CTRL_TX_RAM_we(3 downto 0)    => BRAM_CTRL_TX_RAM_we(3 downto 0),

      BRAM_CTRL_RX_RAM_addr(16 downto 0) => BRAM_CTRL_RX_RAM_addr(16 downto 0),
      BRAM_CTRL_RX_RAM_clk               => BRAM_CTRL_RX_RAM_clk,
      BRAM_CTRL_RX_RAM_din(31 downto 0)  => BRAM_CTRL_RX_RAM_din(31 downto 0),
      BRAM_CTRL_RX_RAM_dout(31 downto 0) => BRAM_CTRL_RX_RAM_dout(31 downto 0),
      BRAM_CTRL_RX_RAM_en                => BRAM_CTRL_RX_RAM_en,
      BRAM_CTRL_RX_RAM_rst               => BRAM_CTRL_RX_RAM_rst,
      BRAM_CTRL_RX_RAM_we(3 downto 0)    => BRAM_CTRL_RX_RAM_we(3 downto 0),

      BRAM_CTRL_REG_FILE_addr(16 downto 0) => BRAM_CTRL_REG_FILE_addr(16 downto 0),
      BRAM_CTRL_REG_FILE_clk               => BRAM_CTRL_REG_FILE_clk,
      BRAM_CTRL_REG_FILE_din(31 downto 0)  => BRAM_CTRL_REG_FILE_din(31 downto 0),
      BRAM_CTRL_REG_FILE_dout(31 downto 0) => BRAM_CTRL_REG_FILE_dout(31 downto 0),
      BRAM_CTRL_REG_FILE_en                => BRAM_CTRL_REG_FILE_en,
      BRAM_CTRL_REG_FILE_rst               => BRAM_CTRL_REG_FILE_rst,
      BRAM_CTRL_REG_FILE_we(3 downto 0)    => BRAM_CTRL_REG_FILE_we(3 downto 0),

      axi_c2c_v7_to_zynq_clk               => axi_c2c_v7_to_zynq_clk,
      axi_c2c_v7_to_zynq_data(14 downto 0) => axi_c2c_v7_to_zynq_data(14 downto 0),
      axi_c2c_v7_to_zynq_link_status       => axi_c2c_v7_to_zynq_link_status,
      axi_c2c_zynq_to_v7_clk               => axi_c2c_zynq_to_v7_clk,
      axi_c2c_zynq_to_v7_data(14 downto 0) => axi_c2c_zynq_to_v7_data(14 downto 0),
      axi_c2c_zynq_to_v7_reset             => axi_c2c_zynq_to_v7_reset,

      clk_200_diff_in_clk_n => clk_200_diff_in_clk_n,
      clk_200_diff_in_clk_p => clk_200_diff_in_clk_p,

      clk_out1_200mhz => s_clk_200,
      clk_out2_50mhz  => s_clk_50
      );
      
  i_ctp7_ttc : entity work.ctp7_ttc
        port map(
    
          clk_40_ttc_p_i => clk_40_ttc_p_i,
          clk_40_ttc_n_i => clk_40_ttc_n_i,
    
          ttc_data_p_i => ttc_data_p_i,
          ttc_data_n_i => ttc_data_n_i,
    
          ttc_clks_o => s_ttc_clks,
   
          ttc_cmds_o => s_ttc_cmds,
    
          ttc_mmcm_ps_clk_i => s_ttc_mmcm_ps_clk,
    
          ttc_mmcm_ctrl_i => s_ttc_mmcm_ctrl,
          ttc_mmcm_stat_o => s_ttc_mmcm_stat,
    
          ttc_ctrl_i => s_ttc_ctrl,
          ttc_stat_o => s_ttc_stat,
    
          ttc_diag_cntrs_o => s_ttc_diag_cntrs_o,
          ttc_daq_cntrs_o  => s_ttc_daq_cntrs
          );

  i_gth_register_file : entity work.gth_register_file
    generic map
    (
      g_NUM_OF_GTH_GTs     => g_NUM_OF_GTH_GTs,
      g_NUM_OF_GTH_COMMONs => g_NUM_OF_GTH_COMMONs
      )
    port map (
      BRAM_CTRL_GTH_REG_FILE_addr(16 downto 0) => BRAM_CTRL_GTH_REG_FILE_addr(16 downto 0),
      BRAM_CTRL_GTH_REG_FILE_clk               => BRAM_CTRL_GTH_REG_FILE_clk,
      BRAM_CTRL_GTH_REG_FILE_din(31 downto 0)  => BRAM_CTRL_GTH_REG_FILE_din(31 downto 0),
      BRAM_CTRL_GTH_REG_FILE_dout(31 downto 0) => BRAM_CTRL_GTH_REG_FILE_dout(31 downto 0),
      BRAM_CTRL_GTH_REG_FILE_en                => BRAM_CTRL_GTH_REG_FILE_en,
      BRAM_CTRL_GTH_REG_FILE_rst               => BRAM_CTRL_GTH_REG_FILE_rst,
      BRAM_CTRL_GTH_REG_FILE_we(3 downto 0)    => BRAM_CTRL_GTH_REG_FILE_we(3 downto 0),

      gth_common_reset_o      => s_gth_common_reset,
      gth_common_status_arr_i => s_gth_common_status_arr,
      gth_cpll_status_arr_i   => s_gth_cpll_status_arr,
      gth_gt_txreset_o        => s_gth_gt_txreset,
      gth_gt_rxreset_o        => s_gth_gt_rxreset,
      gth_gt_txreset_done_i   => s_gth_gt_txreset_done,
      gth_gt_rxreset_done_i   => s_gth_gt_rxreset_done,
      gth_tx_ctrl_arr_o       => s_gth_tx_ctrl_arr,
      gth_tx_status_arr_i     => s_gth_tx_status_arr,
      gth_rx_ctrl_arr_o       => s_gth_rx_ctrl_arr,
      gth_rx_status_arr_i     => s_gth_rx_status_arr,
      gth_misc_ctrl_arr_o     => s_gth_misc_ctrl_arr,
      gth_misc_status_arr_i   => s_gth_misc_status_arr,

      clk_gth_tx_usrclk_arr_i => s_clk_gth_tx_usrclk_arr,
      clk_gth_rx_usrclk_arr_i => s_clk_gth_rx_usrclk_arr,
      
      oh_reg_request_arr_o    => oh_reg_request_arr,
      oh_reg_response_arr_i   => oh_reg_response_arr
      );

  i_register_file : entity work.register_file
    generic map(
      C_DATE_CODE      => C_DATE_CODE,
      C_GITHASH_CODE   => C_GITHASH_CODE,
      C_GIT_REPO_DIRTY => C_GIT_REPO_DIRTY
      )
    port map (
      clk240_i => s_ttc_clks.clk_240,
      clk40_i  => s_ttc_clks.clk_40,

      ttc_mmcm_ctrl_o => s_ttc_mmcm_ctrl,
      ttc_mmcm_stat_i => s_ttc_mmcm_stat,

      ttc_ctrl_o => s_ttc_ctrl,
      ttc_stat_i => s_ttc_stat,

      ttc_diag_cntrs_i => s_ttc_diag_cntrs_o,
      ttc_daq_cntrs_i  => s_ttc_daq_cntrs,

      rx_capture_ctrl_o   => s_rx_capture_ctrl,
      rx_capture_status_i => s_rx_capture_status,

      BRAM_CTRL_REG_FILE_addr(16 downto 0) => BRAM_CTRL_REG_FILE_addr(16 downto 0),
      BRAM_CTRL_REG_FILE_clk               => BRAM_CTRL_REG_FILE_clk,
      BRAM_CTRL_REG_FILE_din(31 downto 0)  => BRAM_CTRL_REG_FILE_din(31 downto 0),
      BRAM_CTRL_REG_FILE_dout(31 downto 0) => BRAM_CTRL_REG_FILE_dout(31 downto 0),
      BRAM_CTRL_REG_FILE_en                => BRAM_CTRL_REG_FILE_en,
      BRAM_CTRL_REG_FILE_rst               => BRAM_CTRL_REG_FILE_rst,
      BRAM_CTRL_REG_FILE_we(3 downto 0)    => BRAM_CTRL_REG_FILE_we(3 downto 0)
      );

  s_ttc_mmcm_ps_clk <= s_clk_50;

  i_drp_controller : entity work.drp_controller

    generic map
    (
      g_NUM_OF_GTH_GTs     => g_NUM_OF_GTH_GTs,
      g_NUM_OF_GTH_COMMONs => g_NUM_OF_GTH_COMMONs
      )
    port map (
      BRAM_CTRL_DRP_en     => BRAM_CTRL_DRP_en,
      BRAM_CTRL_DRP_dout   => BRAM_CTRL_DRP_dout,
      BRAM_CTRL_DRP_din    => BRAM_CTRL_DRP_din,
      BRAM_CTRL_DRP_we     => BRAM_CTRL_DRP_we,
      BRAM_CTRL_DRP_addr   => BRAM_CTRL_DRP_addr,
      BRAM_CTRL_DRP_clk    => BRAM_CTRL_DRP_clk,
      BRAM_CTRL_DRP_rst    => BRAM_CTRL_DRP_rst,
      gth_common_drp_arr_o => s_gth_common_drp_in_arr,
      gth_common_drp_arr_i => s_gth_common_drp_out_arr,
      gth_gt_drp_arr_o     => s_gth_gt_drp_in_arr,
      gth_gt_drp_arr_i     => s_gth_gt_drp_out_arr
      );

--  i_io_link_3p2g_demo_ctrl : io_link_3p2g_demo_ctrl
--    port map(
--      clk_160_bc_i => s_ttc_clks.clk_160,
--      ttc_cmds_i   => s_ttc_cmds,

--      clk_gth_tx_usrclk_i => s_clk_gth_tx_usrclk_arr(11 downto 0),
--      clk_gth_rx_usrclk_i => s_clk_gth_rx_usrclk_arr(11 downto 0),

--      gth_tx_data_o => s_gth_tx_data_arr(11 downto 0),
--      gth_rx_data_i => s_gth_rx_data_arr(11 downto 0),

--      enable_tx_cdc_fifo_i => s_gth_gt_txreset_done(11 downto 0),
--      enable_rx_cdc_fifo_i => s_gth_gt_rxreset_done(11 downto 0),

--      rx_capture_ctrl_i   => s_rx_capture_ctrl,
--      rx_capture_status_o => s_rx_capture_status,

--      BRAM_CTRL_RX_RAM_addr => BRAM_CTRL_RX_RAM_addr,
--      BRAM_CTRL_RX_RAM_clk  => BRAM_CTRL_RX_RAM_clk,
--      BRAM_CTRL_RX_RAM_din  => BRAM_CTRL_RX_RAM_din,
--      BRAM_CTRL_RX_RAM_dout => BRAM_CTRL_RX_RAM_dout,
--      BRAM_CTRL_RX_RAM_en   => BRAM_CTRL_RX_RAM_en,
--      BRAM_CTRL_RX_RAM_rst  => BRAM_CTRL_RX_RAM_rst,
--      BRAM_CTRL_RX_RAM_we   => BRAM_CTRL_RX_RAM_we,

--      BRAM_CTRL_TX_RAM_addr => BRAM_CTRL_TX_RAM_addr,
--      BRAM_CTRL_TX_RAM_clk  => BRAM_CTRL_TX_RAM_clk,
--      BRAM_CTRL_TX_RAM_din  => BRAM_CTRL_TX_RAM_din,
--      BRAM_CTRL_TX_RAM_dout => BRAM_CTRL_TX_RAM_dout,
--      BRAM_CTRL_TX_RAM_en   => BRAM_CTRL_TX_RAM_en,
--      BRAM_CTRL_TX_RAM_rst  => BRAM_CTRL_TX_RAM_rst,
--      BRAM_CTRL_TX_RAM_we   => BRAM_CTRL_TX_RAM_we
--      );

  i_io_link_4p8g_demo_ctrl : io_link_4p8g_demo_ctrl
    port map(

      clk_gth_tx_usrclk_i => s_clk_gth_tx_usrclk_arr(35 downto 12),
      clk_gth_rx_usrclk_i => s_clk_gth_rx_usrclk_arr(35 downto 12),

      gth_tx_data_o       => s_gth_tx_data_arr(35 downto 12),
      gth_rx_data_i       => s_gth_rx_data_arr(35 downto 12),
      gth_rx_ctrl_2_arr_i => s_gth_rx_ctrl_2_arr(35 downto 12)

      );

  i_gth_wrapper : entity work.gth_wrapper
    generic map
    (
      g_EXAMPLE_SIMULATION     => 0,
      g_STABLE_CLOCK_PERIOD    => 20,
      g_NUM_OF_GTH_GTs         => g_NUM_OF_GTH_GTs,
      g_NUM_OF_GTH_COMMONs     => g_NUM_OF_GTH_COMMONs,
      g_GT_SIM_GTRESET_SPEEDUP => "FALSE"

      )
    port map (
      clk_stable_i => s_clk_50,

      clk_gth_tx_usrclk_arr_o => s_clk_gth_tx_usrclk_arr,
      clk_gth_rx_usrclk_arr_o => s_clk_gth_rx_usrclk_arr,
      gth_cpll_status_arr_o   => s_gth_cpll_status_arr,

      refclk_F_0_p_i          => refclk_F_0_p_i,
      refclk_F_0_n_i          => refclk_F_0_n_i,
      refclk_F_1_p_i          => refclk_F_1_p_i,
      refclk_F_1_n_i          => refclk_F_1_n_i,
      refclk_B_0_p_i          => refclk_B_0_p_i,
      refclk_B_0_n_i          => refclk_B_0_n_i,
      refclk_B_1_p_i          => refclk_B_1_p_i,
      refclk_B_1_n_i          => refclk_B_1_n_i,
      gth_common_reset_i      => s_gth_common_reset,
      gth_common_status_arr_o => s_gth_common_status_arr,
      gth_common_drp_arr_i    => s_gth_common_drp_in_arr,
      gth_common_drp_arr_o    => s_gth_common_drp_out_arr,
      gth_gt_txreset_i        => s_gth_gt_txreset,
      gth_gt_rxreset_i        => s_gth_gt_rxreset,
      gth_gt_txreset_done_o   => s_gth_gt_txreset_done,
      gth_gt_rxreset_done_o   => s_gth_gt_rxreset_done,
      gth_gt_drp_arr_i        => s_gth_gt_drp_in_arr,
      gth_gt_drp_arr_o        => s_gth_gt_drp_out_arr,
      gth_tx_ctrl_arr_i       => s_gth_tx_ctrl_arr,
      gth_tx_status_arr_o     => s_gth_tx_status_arr,
      gth_rx_ctrl_arr_i       => s_gth_rx_ctrl_arr,
      gth_rx_ctrl_2_arr_i     => s_gth_rx_ctrl_2_arr,

      gth_rx_status_arr_o   => s_gth_rx_status_arr,
      gth_misc_ctrl_arr_i   => s_gth_misc_ctrl_arr,
      gth_misc_status_arr_o => s_gth_misc_status_arr,
      gth_tx_data_arr_i     => s_gth_tx_data_arr,
      gth_rx_data_arr_o     => s_gth_rx_data_arr,
      gth_tx_serial_arr_o   => s_gth_tx_serial_arr,
      gth_rx_serial_arr_i   => s_gth_rx_serial_arr
      );

  gen_gth_serial : for i in 0 to g_NUM_OF_GTH_GTs-1 generate
    s_gth_rx_serial_arr(i).gthrxn <= '0';
    s_gth_rx_serial_arr(i).gthrxp <= '1';
  end generate;

  ------------------------------- GEM ------------------------------
  
  gen_optohybrids : for i in 0 to 11 generate

    optohybrid_single_inst : entity work.optohybrid_single
      port map(
        reset_i                 => s_gth_gt_rxreset(i),
        ttc_clk_i               => s_ttc_clks,
        ttc_cmds_i              => s_ttc_cmds,
        gth_rx_usrclk_i         => s_clk_gth_rx_usrclk_arr(i),
        gth_tx_usrclk_i         => s_clk_gth_tx_usrclk_arr(i),
        gth_rx_data_i           => s_gth_rx_data_arr(i),
        gth_tx_data_o           => s_gth_tx_data_arr(i),
        reg_request_i           => oh_reg_request_arr(i),
        reg_response_o          => oh_reg_response_arr(i)
      );
      
  end generate;

end tamu_ctp7_v7_arch;

--============================================================================
--                                                            Architecture end
--============================================================================

