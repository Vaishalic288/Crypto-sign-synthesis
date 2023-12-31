-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    sm_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    sm_ce0 : OUT STD_LOGIC;
    sm_we0 : OUT STD_LOGIC;
    sm_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    z_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    z_ce0 : OUT STD_LOGIC;
    z_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    z_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    z_ce1 : OUT STD_LOGIC;
    z_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    h_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    h_ce0 : OUT STD_LOGIC;
    h_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_start : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_done : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_idle : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_ready : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_ce0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_ce1 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_ce0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_we0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_start : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_done : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_idle : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_ready : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_ce0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_we0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_start : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_idle : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_ready : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_h_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_h_ce0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_ce0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_we0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        z_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        z_ce0 : OUT STD_LOGIC;
        z_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        z_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        z_ce1 : OUT STD_LOGIC;
        z_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        sm_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        sm_ce0 : OUT STD_LOGIC;
        sm_we0 : OUT STD_LOGIC;
        sm_d0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        sm_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        sm_ce0 : OUT STD_LOGIC;
        sm_we0 : OUT STD_LOGIC;
        sm_d0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        h_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        h_ce0 : OUT STD_LOGIC;
        h_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        sm_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        sm_ce0 : OUT STD_LOGIC;
        sm_we0 : OUT STD_LOGIC;
        sm_d0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22 : component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_start,
        ap_done => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_done,
        ap_idle => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_idle,
        ap_ready => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_ready,
        z_address0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_address0,
        z_ce0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_ce0,
        z_q0 => z_q0,
        z_address1 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_address1,
        z_ce1 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_ce1,
        z_q1 => z_q1,
        sm_address0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_address0,
        sm_ce0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_ce0,
        sm_we0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_we0,
        sm_d0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_d0);

    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30 : component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_start,
        ap_done => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_done,
        ap_idle => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_idle,
        ap_ready => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_ready,
        sm_address0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_address0,
        sm_ce0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_ce0,
        sm_we0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_we0,
        sm_d0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_d0);

    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36 : component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_start,
        ap_done => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done,
        ap_idle => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_idle,
        ap_ready => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_ready,
        h_address0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_h_address0,
        h_ce0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_h_ce0,
        h_q0 => h_q0,
        sm_address0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_address0,
        sm_ce0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_ce0,
        sm_we0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_we0,
        sm_d0 => grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_d0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_ready = ap_const_logic_1)) then 
                    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_ready = ap_const_logic_1)) then 
                    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_ready = ap_const_logic_1)) then 
                    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_done, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_done, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_done)
    begin
        if ((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_ST_fsm_state4_blk_assign_proc : process(grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_done)
    begin
        if ((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done)
    begin
        if ((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done, ap_CS_fsm_state6)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)) or ((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done, ap_CS_fsm_state6)
    begin
        if (((grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_start <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_ap_start_reg;
    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_start <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_ap_start_reg;
    grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_start <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_ap_start_reg;
    h_address0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_h_address0;
    h_ce0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_h_ce0;

    sm_address0_assign_proc : process(grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_address0, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_address0, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_address0, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_address0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sm_address0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            sm_address0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_address0;
        else 
            sm_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    sm_ce0_assign_proc : process(grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_ce0, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_ce0, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_ce0, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_ce0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sm_ce0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            sm_ce0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_ce0;
        else 
            sm_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    sm_d0_assign_proc : process(grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_d0, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_d0, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_d0, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_d0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_d0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sm_d0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_d0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            sm_d0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_d0;
        else 
            sm_d0 <= "XXXXXXXX";
        end if; 
    end process;


    sm_we0_assign_proc : process(grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_we0, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_we0, grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_we0, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_we0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_176_4_VITIS_LOOP_177_5_fu_36_sm_we0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sm_we0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_172_3_fu_30_sm_we0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            sm_we0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_sm_we0;
        else 
            sm_we0 <= ap_const_logic_0;
        end if; 
    end process;

    z_address0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_address0;
    z_address1 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_address1;
    z_ce0 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_ce0;
    z_ce1 <= grp_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1_fu_22_z_ce1;
end behav;
