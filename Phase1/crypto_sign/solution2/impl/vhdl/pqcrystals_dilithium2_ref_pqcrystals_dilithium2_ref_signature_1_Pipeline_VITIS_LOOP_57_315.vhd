-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_57_315 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    zext_ln57_4 : IN STD_LOGIC_VECTOR (7 downto 0);
    add_ln57_9 : IN STD_LOGIC_VECTOR (8 downto 0);
    len_8 : IN STD_LOGIC_VECTOR (7 downto 0);
    cp_coeffs_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    cp_coeffs_ce0 : OUT STD_LOGIC;
    cp_coeffs_we0 : OUT STD_LOGIC;
    cp_coeffs_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    cp_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    cp_coeffs_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    cp_coeffs_ce1 : OUT STD_LOGIC;
    cp_coeffs_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    sext_ln57_4 : IN STD_LOGIC_VECTOR (22 downto 0) );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_57_315 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv32_3802001 : STD_LOGIC_VECTOR (31 downto 0) := "00000011100000000010000000000001";
    constant ap_const_lv55_7FFFFFFF801FFF : STD_LOGIC_VECTOR (54 downto 0) := "1111111111111111111111111111111100000000001111111111111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln57_fu_113_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal sext_ln57_4_cast_fu_97_p1 : STD_LOGIC_VECTOR (53 downto 0);
    signal sext_ln57_4_cast_reg_227 : STD_LOGIC_VECTOR (53 downto 0);
    signal cp_coeffs_addr_reg_235 : STD_LOGIC_VECTOR (7 downto 0);
    signal cp_coeffs_addr_1_reg_241 : STD_LOGIC_VECTOR (7 downto 0);
    signal sext_ln19_6_fu_203_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln19_6_reg_247 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal zext_ln58_fu_134_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_11_cast40_fu_119_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_44 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln57_4_cast_fu_101_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln57_fu_139_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_3 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln59_fu_207_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal add_ln60_fu_214_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln58_fu_124_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln58_fu_128_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln58_fu_154_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal mul_ln58_fu_154_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal t_fu_167_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_fu_167_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal t_fu_167_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_fu_177_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal mul_ln19_fu_177_p2 : STD_LOGIC_VECTOR (54 downto 0);
    signal sext_ln19_5_fu_183_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal sext_ln15_fu_159_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal add_ln19_fu_187_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal t_4_fu_193_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component pqcrystals_dilithium2_ref_mul_32s_23s_54_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (22 downto 0);
        dout : OUT STD_LOGIC_VECTOR (53 downto 0) );
    end component;


    component pqcrystals_dilithium2_ref_mul_32s_27ns_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (26 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component pqcrystals_dilithium2_ref_mul_32s_24s_55_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (23 downto 0);
        dout : OUT STD_LOGIC_VECTOR (54 downto 0) );
    end component;


    component pqcrystals_dilithium2_ref_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mul_32s_23s_54_1_1_U255 : component pqcrystals_dilithium2_ref_mul_32s_23s_54_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 23,
        dout_WIDTH => 54)
    port map (
        din0 => cp_coeffs_q1,
        din1 => mul_ln58_fu_154_p1,
        dout => mul_ln58_fu_154_p2);

    mul_32s_27ns_32_1_1_U256 : component pqcrystals_dilithium2_ref_mul_32s_27ns_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 27,
        dout_WIDTH => 32)
    port map (
        din0 => t_fu_167_p0,
        din1 => t_fu_167_p1,
        dout => t_fu_167_p2);

    mul_32s_24s_55_1_1_U257 : component pqcrystals_dilithium2_ref_mul_32s_24s_55_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 24,
        dout_WIDTH => 55)
    port map (
        din0 => t_fu_167_p2,
        din1 => mul_ln19_fu_177_p1,
        dout => mul_ln19_fu_177_p2);

    flow_control_loop_pipe_sequential_init_U : component pqcrystals_dilithium2_ref_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    j_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln57_fu_113_p2 = ap_const_lv1_0)) then 
                    j_fu_44 <= add_ln57_fu_139_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_44 <= zext_ln57_4_cast_fu_101_p1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln57_fu_113_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                cp_coeffs_addr_1_reg_241 <= j_11_cast40_fu_119_p1(8 - 1 downto 0);
                cp_coeffs_addr_reg_235 <= zext_ln58_fu_134_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                sext_ln19_6_reg_247 <= sext_ln19_6_fu_203_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                sext_ln57_4_cast_reg_227 <= sext_ln57_4_cast_fu_97_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, icmp_ln57_fu_113_p2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((icmp_ln57_fu_113_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln19_fu_187_p2 <= std_logic_vector(signed(sext_ln19_5_fu_183_p1) + signed(sext_ln15_fu_159_p1));
    add_ln57_fu_139_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_3) + unsigned(ap_const_lv9_1));
    add_ln58_fu_128_p2 <= std_logic_vector(unsigned(trunc_ln58_fu_124_p1) + unsigned(len_8));
    add_ln60_fu_214_p2 <= std_logic_vector(unsigned(cp_coeffs_q1) + unsigned(sext_ln19_6_reg_247));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln57_fu_113_p2, ap_start_int)
    begin
        if (((icmp_ln57_fu_113_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_3_assign_proc : process(ap_CS_fsm_state1, j_fu_44, zext_ln57_4_cast_fu_101_p1, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_j_3 <= zext_ln57_4_cast_fu_101_p1;
        else 
            ap_sig_allocacmp_j_3 <= j_fu_44;
        end if; 
    end process;


    cp_coeffs_address0_assign_proc : process(ap_CS_fsm_state1, icmp_ln57_fu_113_p2, ap_CS_fsm_state4, cp_coeffs_addr_reg_235, cp_coeffs_addr_1_reg_241, ap_CS_fsm_state2, j_11_cast40_fu_119_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            cp_coeffs_address0 <= cp_coeffs_addr_1_reg_241;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            cp_coeffs_address0 <= cp_coeffs_addr_reg_235;
        elsif (((icmp_ln57_fu_113_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            cp_coeffs_address0 <= j_11_cast40_fu_119_p1(8 - 1 downto 0);
        else 
            cp_coeffs_address0 <= "XXXXXXXX";
        end if; 
    end process;


    cp_coeffs_address1_assign_proc : process(ap_CS_fsm_state1, icmp_ln57_fu_113_p2, cp_coeffs_addr_1_reg_241, zext_ln58_fu_134_p1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            cp_coeffs_address1 <= cp_coeffs_addr_1_reg_241;
        elsif (((icmp_ln57_fu_113_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            cp_coeffs_address1 <= zext_ln58_fu_134_p1(8 - 1 downto 0);
        else 
            cp_coeffs_address1 <= "XXXXXXXX";
        end if; 
    end process;


    cp_coeffs_ce0_assign_proc : process(ap_CS_fsm_state1, icmp_ln57_fu_113_p2, ap_CS_fsm_state4, ap_CS_fsm_state2, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state4) or ((icmp_ln57_fu_113_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1)))) then 
            cp_coeffs_ce0 <= ap_const_logic_1;
        else 
            cp_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    cp_coeffs_ce1_assign_proc : process(ap_CS_fsm_state1, icmp_ln57_fu_113_p2, ap_CS_fsm_state3, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or ((icmp_ln57_fu_113_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1)))) then 
            cp_coeffs_ce1 <= ap_const_logic_1;
        else 
            cp_coeffs_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    cp_coeffs_d0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state2, sub_ln59_fu_207_p2, add_ln60_fu_214_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            cp_coeffs_d0 <= add_ln60_fu_214_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            cp_coeffs_d0 <= sub_ln59_fu_207_p2;
        else 
            cp_coeffs_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    cp_coeffs_we0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            cp_coeffs_we0 <= ap_const_logic_1;
        else 
            cp_coeffs_we0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln57_fu_113_p2 <= "1" when (ap_sig_allocacmp_j_3 = add_ln57_9) else "0";
    j_11_cast40_fu_119_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_j_3),64));
    mul_ln19_fu_177_p1 <= ap_const_lv55_7FFFFFFF801FFF(24 - 1 downto 0);
    mul_ln58_fu_154_p1 <= sext_ln57_4_cast_reg_227(23 - 1 downto 0);
        sext_ln15_fu_159_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln58_fu_154_p2),56));

        sext_ln19_5_fu_183_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln19_fu_177_p2),56));

        sext_ln19_6_fu_203_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(t_4_fu_193_p4),32));

        sext_ln57_4_cast_fu_97_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln57_4),54));

    sub_ln59_fu_207_p2 <= std_logic_vector(unsigned(cp_coeffs_q0) - unsigned(sext_ln19_6_fu_203_p1));
    t_4_fu_193_p4 <= add_ln19_fu_187_p2(55 downto 32);
    t_fu_167_p0 <= mul_ln58_fu_154_p2(32 - 1 downto 0);
    t_fu_167_p1 <= ap_const_lv32_3802001(27 - 1 downto 0);
    trunc_ln58_fu_124_p1 <= ap_sig_allocacmp_j_3(8 - 1 downto 0);
    zext_ln57_4_cast_fu_101_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln57_4),9));
    zext_ln58_fu_134_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln58_fu_128_p2),64));
end behav;
