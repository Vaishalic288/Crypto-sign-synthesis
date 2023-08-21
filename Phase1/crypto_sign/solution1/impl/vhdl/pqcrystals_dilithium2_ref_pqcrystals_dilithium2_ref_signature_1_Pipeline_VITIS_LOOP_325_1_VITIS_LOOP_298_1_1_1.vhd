-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_298_1_1_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    w0_vec_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    w0_vec_coeffs_ce0 : OUT STD_LOGIC;
    w0_vec_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_298_1_1_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv32_173B1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010111001110110001";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal icmp_ln303_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln325_reg_265 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal merge_reg_83 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln325_fu_113_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal add_ln325_1_fu_119_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln325_1_reg_269 : STD_LOGIC_VECTOR (10 downto 0);
    signal select_ln325_fu_143_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln325_reg_274 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln325_1_fu_151_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln325_1_reg_279 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_phi_mux_merge_phi_fu_87_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln300_1_fu_181_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_58 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln298_fu_226_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (8 downto 0);
    signal i_13_fu_62 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_allocacmp_i_13_load : STD_LOGIC_VECTOR (2 downto 0);
    signal indvar_flatten104_fu_66 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_allocacmp_indvar_flatten104_load : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln298_fu_137_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln325_fu_131_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln300_fu_159_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_s_fu_163_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln300_fu_171_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln300_fu_175_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal t_fu_186_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln301_fu_202_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln300_fu_194_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal and_ln301_fu_208_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_10_fu_214_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv1_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln325_reg_265 = ap_const_lv1_1) or (icmp_ln303_fu_220_p2 = ap_const_lv1_1)))) then 
                    ap_return_preg <= ap_phi_mux_merge_phi_fu_87_p4;
                end if; 
            end if;
        end if;
    end process;


    i_13_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                i_13_fu_62 <= ap_const_lv3_0;
            elsif (((icmp_ln325_reg_265 = ap_const_lv1_0) and (icmp_ln303_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_13_fu_62 <= select_ln325_1_reg_279;
            end if; 
        end if;
    end process;

    i_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                i_fu_58 <= ap_const_lv9_0;
            elsif (((icmp_ln325_reg_265 = ap_const_lv1_0) and (icmp_ln303_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_fu_58 <= add_ln298_fu_226_p2;
            end if; 
        end if;
    end process;

    indvar_flatten104_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                indvar_flatten104_fu_66 <= ap_const_lv11_0;
            elsif (((icmp_ln325_reg_265 = ap_const_lv1_0) and (icmp_ln303_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                indvar_flatten104_fu_66 <= add_ln325_1_reg_269;
            end if; 
        end if;
    end process;

    merge_reg_83_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln325_reg_265 = ap_const_lv1_0) and (icmp_ln303_fu_220_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                merge_reg_83 <= ap_const_lv1_0;
            elsif (((icmp_ln325_fu_113_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                merge_reg_83 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                add_ln325_1_reg_269 <= add_ln325_1_fu_119_p2;
                icmp_ln325_reg_265 <= icmp_ln325_fu_113_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln325_fu_113_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                select_ln325_1_reg_279 <= select_ln325_1_fu_151_p3;
                select_ln325_reg_274 <= select_ln325_fu_143_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln298_fu_226_p2 <= std_logic_vector(unsigned(select_ln325_reg_274) + unsigned(ap_const_lv9_1));
    add_ln300_fu_175_p2 <= std_logic_vector(unsigned(tmp_s_fu_163_p3) + unsigned(zext_ln300_fu_171_p1));
    add_ln325_1_fu_119_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten104_load) + unsigned(ap_const_lv11_1));
    add_ln325_fu_131_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_13_load) + unsigned(ap_const_lv3_1));
    and_ln301_fu_208_p2 <= (shl_ln301_fu_202_p2 and select_ln300_fu_194_p3);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_CS_fsm_state2, icmp_ln303_fu_220_p2, icmp_ln325_reg_265)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln325_reg_265 = ap_const_lv1_1) or (icmp_ln303_fu_220_p2 = ap_const_lv1_1)))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state2, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_phi_mux_merge_phi_fu_87_p4_assign_proc : process(ap_CS_fsm_state2, icmp_ln303_fu_220_p2, icmp_ln325_reg_265, merge_reg_83)
    begin
        if (((icmp_ln325_reg_265 = ap_const_lv1_0) and (icmp_ln303_fu_220_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_phi_mux_merge_phi_fu_87_p4 <= ap_const_lv1_0;
        else 
            ap_phi_mux_merge_phi_fu_87_p4 <= merge_reg_83;
        end if; 
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_state2, icmp_ln303_fu_220_p2, icmp_ln325_reg_265, ap_phi_mux_merge_phi_fu_87_p4, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln325_reg_265 = ap_const_lv1_1) or (icmp_ln303_fu_220_p2 = ap_const_lv1_1)))) then 
            ap_return <= ap_phi_mux_merge_phi_fu_87_p4;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ap_sig_allocacmp_i_13_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, i_13_fu_62)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_13_load <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_13_load <= i_13_fu_62;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_state1, i_fu_58, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_58;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten104_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, indvar_flatten104_fu_66)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_indvar_flatten104_load <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_indvar_flatten104_load <= indvar_flatten104_fu_66;
        end if; 
    end process;

    icmp_ln298_fu_137_p2 <= "1" when (ap_sig_allocacmp_i_load = ap_const_lv9_100) else "0";
    icmp_ln303_fu_220_p2 <= "1" when (signed(t_10_fu_214_p2) > signed(ap_const_lv32_173B1)) else "0";
    icmp_ln325_fu_113_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten104_load = ap_const_lv11_400) else "0";
    select_ln300_fu_194_p3 <= 
        ap_const_lv32_FFFFFFFF when (t_fu_186_p3(0) = '1') else 
        ap_const_lv32_0;
    select_ln325_1_fu_151_p3 <= 
        add_ln325_fu_131_p2 when (icmp_ln298_fu_137_p2(0) = '1') else 
        ap_sig_allocacmp_i_13_load;
    select_ln325_fu_143_p3 <= 
        ap_const_lv9_0 when (icmp_ln298_fu_137_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    shl_ln301_fu_202_p2 <= std_logic_vector(shift_left(unsigned(w0_vec_coeffs_q0),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    t_10_fu_214_p2 <= std_logic_vector(unsigned(w0_vec_coeffs_q0) - unsigned(and_ln301_fu_208_p2));
    t_fu_186_p3 <= w0_vec_coeffs_q0(31 downto 31);
    tmp_s_fu_163_p3 <= (trunc_ln300_fu_159_p1 & ap_const_lv8_0);
    trunc_ln300_fu_159_p1 <= select_ln325_1_fu_151_p3(2 - 1 downto 0);
    w0_vec_coeffs_address0 <= zext_ln300_1_fu_181_p1(10 - 1 downto 0);

    w0_vec_coeffs_ce0_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            w0_vec_coeffs_ce0 <= ap_const_logic_1;
        else 
            w0_vec_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln300_1_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln300_fu_175_p2),64));
    zext_ln300_fu_171_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln325_fu_143_p3),10));
end behav;