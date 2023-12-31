-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_305_1_VITIS_LOOP_180_1_1_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s2_vec_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    s2_vec_coeffs_ce0 : OUT STD_LOGIC;
    s2_vec_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    h_vec_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    h_vec_coeffs_ce0 : OUT STD_LOGIC;
    h_vec_coeffs_we0 : OUT STD_LOGIC;
    h_vec_coeffs_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    cp_coeffs_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    cp_coeffs_ce0 : OUT STD_LOGIC;
    cp_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_305_1_VITIS_LOOP_180_1_1_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
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
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv32_3802001 : STD_LOGIC_VECTOR (31 downto 0) := "00000011100000000010000000000001";
    constant ap_const_lv55_7FFFFFFF801FFF : STD_LOGIC_VECTOR (54 downto 0) := "1111111111111111111111111111111100000000001111111111111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln305_fu_127_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal zext_ln181_1_fu_200_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln181_1_reg_305 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal i_43_cast_fu_185_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_58 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln180_fu_205_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (8 downto 0);
    signal i_15_fu_62 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln305_1_fu_165_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_allocacmp_i_15_load : STD_LOGIC_VECTOR (2 downto 0);
    signal indvar_flatten83_fu_66 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln305_1_fu_133_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_allocacmp_indvar_flatten83_load : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln180_fu_151_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln305_fu_145_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln181_fu_173_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln305_fu_157_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_s_fu_177_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln181_fu_190_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln181_fu_194_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal mul_ln181_fu_234_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal t_fu_244_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_fu_244_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal t_fu_244_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_fu_254_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal mul_ln19_fu_254_p2 : STD_LOGIC_VECTOR (54 downto 0);
    signal sext_ln19_10_fu_260_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln19_fu_264_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component pqcrystals_dilithium2_ref_mul_32s_32s_64_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
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
    mul_32s_32s_64_1_1_U289 : component pqcrystals_dilithium2_ref_mul_32s_32s_64_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        din0 => s2_vec_coeffs_q0,
        din1 => cp_coeffs_q0,
        dout => mul_ln181_fu_234_p2);

    mul_32s_27ns_32_1_1_U290 : component pqcrystals_dilithium2_ref_mul_32s_27ns_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 27,
        dout_WIDTH => 32)
    port map (
        din0 => t_fu_244_p0,
        din1 => t_fu_244_p1,
        dout => t_fu_244_p2);

    mul_32s_24s_55_1_1_U291 : component pqcrystals_dilithium2_ref_mul_32s_24s_55_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 24,
        dout_WIDTH => 55)
    port map (
        din0 => t_fu_244_p2,
        din1 => mul_ln19_fu_254_p1,
        dout => mul_ln19_fu_254_p2);

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
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_15_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln305_fu_127_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_15_fu_62 <= select_ln305_1_fu_165_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_15_fu_62 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    i_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln305_fu_127_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_58 <= add_ln180_fu_205_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_58 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten83_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln305_fu_127_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten83_fu_66 <= add_ln305_1_fu_133_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten83_fu_66 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln305_fu_127_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    zext_ln181_1_reg_305(9 downto 0) <= zext_ln181_1_fu_200_p1(9 downto 0);
            end if;
        end if;
    end process;
    zext_ln181_1_reg_305(63 downto 10) <= "000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln180_fu_205_p2 <= std_logic_vector(unsigned(select_ln305_fu_157_p3) + unsigned(ap_const_lv9_1));
    add_ln181_fu_194_p2 <= std_logic_vector(unsigned(tmp_s_fu_177_p3) + unsigned(zext_ln181_fu_190_p1));
    add_ln19_fu_264_p2 <= std_logic_vector(signed(sext_ln19_10_fu_260_p1) + signed(mul_ln181_fu_234_p2));
    add_ln305_1_fu_133_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten83_load) + unsigned(ap_const_lv11_1));
    add_ln305_fu_145_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_15_load) + unsigned(ap_const_lv3_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln305_fu_127_p2)
    begin
        if (((icmp_ln305_fu_127_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_15_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_15_fu_62)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i_15_load <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_15_load <= i_15_fu_62;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_58, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_58;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten83_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten83_fu_66)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten83_load <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_indvar_flatten83_load <= indvar_flatten83_fu_66;
        end if; 
    end process;

    cp_coeffs_address0 <= i_43_cast_fu_185_p1(8 - 1 downto 0);

    cp_coeffs_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            cp_coeffs_ce0 <= ap_const_logic_1;
        else 
            cp_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    h_vec_coeffs_address0 <= zext_ln181_1_reg_305(10 - 1 downto 0);

    h_vec_coeffs_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            h_vec_coeffs_ce0 <= ap_const_logic_1;
        else 
            h_vec_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    h_vec_coeffs_d0 <= add_ln19_fu_264_p2(63 downto 32);

    h_vec_coeffs_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            h_vec_coeffs_we0 <= ap_const_logic_1;
        else 
            h_vec_coeffs_we0 <= ap_const_logic_0;
        end if; 
    end process;

    i_43_cast_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln305_fu_157_p3),64));
    icmp_ln180_fu_151_p2 <= "1" when (ap_sig_allocacmp_i_load = ap_const_lv9_100) else "0";
    icmp_ln305_fu_127_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten83_load = ap_const_lv11_400) else "0";
    mul_ln19_fu_254_p1 <= ap_const_lv55_7FFFFFFF801FFF(24 - 1 downto 0);
    s2_vec_coeffs_address0 <= zext_ln181_1_fu_200_p1(10 - 1 downto 0);

    s2_vec_coeffs_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s2_vec_coeffs_ce0 <= ap_const_logic_1;
        else 
            s2_vec_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln305_1_fu_165_p3 <= 
        add_ln305_fu_145_p2 when (icmp_ln180_fu_151_p2(0) = '1') else 
        ap_sig_allocacmp_i_15_load;
    select_ln305_fu_157_p3 <= 
        ap_const_lv9_0 when (icmp_ln180_fu_151_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
        sext_ln19_10_fu_260_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln19_fu_254_p2),64));

    t_fu_244_p0 <= mul_ln181_fu_234_p2(32 - 1 downto 0);
    t_fu_244_p1 <= ap_const_lv32_3802001(27 - 1 downto 0);
    tmp_s_fu_177_p3 <= (trunc_ln181_fu_173_p1 & ap_const_lv8_0);
    trunc_ln181_fu_173_p1 <= select_ln305_1_fu_165_p3(2 - 1 downto 0);
    zext_ln181_1_fu_200_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln181_fu_194_p2),64));
    zext_ln181_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln305_fu_157_p3),10));
end behav;
