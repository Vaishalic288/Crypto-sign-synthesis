-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_poly_uniform_gamma1_Pipeline_VITIS_LOOP_416_5 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    seed_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    seed_ce0 : OUT STD_LOGIC;
    seed_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    seed_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    seed_ce1 : OUT STD_LOGIC;
    seed_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    state_s_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    state_s_ce0 : OUT STD_LOGIC;
    state_s_we0 : OUT STD_LOGIC;
    state_s_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    state_s_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    state_s_ce1 : OUT STD_LOGIC;
    state_s_q1 : IN STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_poly_uniform_gamma1_Pipeline_VITIS_LOOP_416_5 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv8_A0 : STD_LOGIC_VECTOR (7 downto 0) := "10100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv6_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv6_5 : STD_LOGIC_VECTOR (5 downto 0) := "000101";
    constant ap_const_lv6_6 : STD_LOGIC_VECTOR (5 downto 0) := "000110";
    constant ap_const_lv6_7 : STD_LOGIC_VECTOR (5 downto 0) := "000111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln416_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal icmp_ln416_reg_365 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal shl_ln_fu_169_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal shl_ln_reg_369 : STD_LOGIC_VECTOR (5 downto 0);
    signal state_s_addr_reg_389 : STD_LOGIC_VECTOR (4 downto 0);
    signal seed_load_reg_395 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal seed_load_1_reg_400 : STD_LOGIC_VECTOR (7 downto 0);
    signal state_s_load_reg_415 : STD_LOGIC_VECTOR (63 downto 0);
    signal seed_load_2_reg_420 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal seed_load_3_reg_425 : STD_LOGIC_VECTOR (7 downto 0);
    signal seed_load_4_reg_440 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal seed_load_5_reg_445 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal zext_ln31_16_fu_187_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln31_18_fu_208_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln416_fu_164_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_20_fu_233_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln31_22_fu_253_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_24_fu_273_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal zext_ln31_26_fu_293_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_28_fu_313_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal zext_ln31_30_fu_333_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_50 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_33_fu_158_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_32 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln31_fu_177_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln31_fu_181_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln31_fu_192_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln31_17_fu_198_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln31_8_fu_202_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln31_7_fu_218_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln31_19_fu_223_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln31_9_fu_227_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln31_8_fu_238_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln31_21_fu_243_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln31_10_fu_247_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln31_9_fu_258_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln31_23_fu_263_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln31_11_fu_267_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln31_10_fu_278_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln31_25_fu_283_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln31_12_fu_287_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln31_11_fu_298_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln31_27_fu_303_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln31_13_fu_307_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln31_12_fu_318_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln31_29_fu_323_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln31_14_fu_327_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal r_15_7_i_fu_338_p9 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;
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


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage3_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln416_fu_152_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_50 <= i_33_fu_158_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_50 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln416_reg_365 <= icmp_ln416_fu_152_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln416_reg_365 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                seed_load_1_reg_400 <= seed_q0;
                seed_load_reg_395 <= seed_q1;
                state_s_load_reg_415 <= state_s_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln416_reg_365 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                seed_load_2_reg_420 <= seed_q1;
                seed_load_3_reg_425 <= seed_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln416_reg_365 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then
                seed_load_4_reg_440 <= seed_q1;
                seed_load_5_reg_445 <= seed_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln416_fu_152_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    shl_ln_reg_369(5 downto 3) <= shl_ln_fu_169_p3(5 downto 3);
                    state_s_addr_reg_389(2 downto 0) <= zext_ln416_fu_164_p1(5 - 1 downto 0)(2 downto 0);
            end if;
        end if;
    end process;
    shl_ln_reg_369(2 downto 0) <= "000";
    state_s_addr_reg_389(4 downto 3) <= "00";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter0_stage0, ap_block_pp0_stage3_subdone, ap_idle_pp0_1to1, ap_block_pp0_stage1_subdone, ap_block_pp0_stage2_subdone, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln31_10_fu_247_p2 <= std_logic_vector(unsigned(zext_ln31_21_fu_243_p1) + unsigned(ap_const_lv8_A0));
    add_ln31_11_fu_267_p2 <= std_logic_vector(unsigned(zext_ln31_23_fu_263_p1) + unsigned(ap_const_lv8_A0));
    add_ln31_12_fu_287_p2 <= std_logic_vector(unsigned(zext_ln31_25_fu_283_p1) + unsigned(ap_const_lv8_A0));
    add_ln31_13_fu_307_p2 <= std_logic_vector(unsigned(zext_ln31_27_fu_303_p1) + unsigned(ap_const_lv8_A0));
    add_ln31_14_fu_327_p2 <= std_logic_vector(unsigned(zext_ln31_29_fu_323_p1) + unsigned(ap_const_lv8_A0));
    add_ln31_8_fu_202_p2 <= std_logic_vector(unsigned(zext_ln31_17_fu_198_p1) + unsigned(ap_const_lv8_A0));
    add_ln31_9_fu_227_p2 <= std_logic_vector(unsigned(zext_ln31_19_fu_223_p1) + unsigned(ap_const_lv8_A0));
    add_ln31_fu_181_p2 <= std_logic_vector(unsigned(zext_ln31_fu_177_p1) + unsigned(ap_const_lv8_A0));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln416_fu_152_p2)
    begin
        if (((icmp_ln416_fu_152_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage3_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_32_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_50, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_32 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_32 <= i_fu_50;
        end if; 
    end process;

    i_33_fu_158_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_32) + unsigned(ap_const_lv3_1));
    icmp_ln416_fu_152_p2 <= "1" when (ap_sig_allocacmp_i_32 = ap_const_lv3_6) else "0";
    or_ln31_10_fu_278_p2 <= (shl_ln_reg_369 or ap_const_lv6_5);
    or_ln31_11_fu_298_p2 <= (shl_ln_reg_369 or ap_const_lv6_6);
    or_ln31_12_fu_318_p2 <= (shl_ln_reg_369 or ap_const_lv6_7);
    or_ln31_7_fu_218_p2 <= (shl_ln_reg_369 or ap_const_lv6_2);
    or_ln31_8_fu_238_p2 <= (shl_ln_reg_369 or ap_const_lv6_3);
    or_ln31_9_fu_258_p2 <= (shl_ln_reg_369 or ap_const_lv6_4);
    or_ln31_fu_192_p2 <= (shl_ln_fu_169_p3 or ap_const_lv6_1);
    r_15_7_i_fu_338_p9 <= (((((((seed_q0 & seed_q1) & seed_load_5_reg_445) & seed_load_4_reg_440) & seed_load_3_reg_425) & seed_load_2_reg_420) & seed_load_1_reg_400) & seed_load_reg_395);

    seed_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage0, zext_ln31_18_fu_208_p1, ap_block_pp0_stage1, zext_ln31_22_fu_253_p1, ap_block_pp0_stage2, zext_ln31_26_fu_293_p1, ap_block_pp0_stage3, zext_ln31_30_fu_333_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                seed_address0 <= zext_ln31_30_fu_333_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                seed_address0 <= zext_ln31_26_fu_293_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                seed_address0 <= zext_ln31_22_fu_253_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                seed_address0 <= zext_ln31_18_fu_208_p1(8 - 1 downto 0);
            else 
                seed_address0 <= "XXXXXXXX";
            end if;
        else 
            seed_address0 <= "XXXXXXXX";
        end if; 
    end process;


    seed_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, zext_ln31_16_fu_187_p1, ap_block_pp0_stage0, zext_ln31_20_fu_233_p1, ap_block_pp0_stage1, zext_ln31_24_fu_273_p1, ap_block_pp0_stage2, zext_ln31_28_fu_313_p1, ap_block_pp0_stage3)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                seed_address1 <= zext_ln31_28_fu_313_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                seed_address1 <= zext_ln31_24_fu_273_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                seed_address1 <= zext_ln31_20_fu_233_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                seed_address1 <= zext_ln31_16_fu_187_p1(8 - 1 downto 0);
            else 
                seed_address1 <= "XXXXXXXX";
            end if;
        else 
            seed_address1 <= "XXXXXXXX";
        end if; 
    end process;


    seed_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            seed_ce0 <= ap_const_logic_1;
        else 
            seed_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    seed_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            seed_ce1 <= ap_const_logic_1;
        else 
            seed_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln_fu_169_p3 <= (ap_sig_allocacmp_i_32 & ap_const_lv3_0);
    state_s_address0 <= state_s_addr_reg_389;
    state_s_address1 <= zext_ln416_fu_164_p1(5 - 1 downto 0);

    state_s_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            state_s_ce0 <= ap_const_logic_1;
        else 
            state_s_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    state_s_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            state_s_ce1 <= ap_const_logic_1;
        else 
            state_s_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    state_s_d0 <= (state_s_load_reg_415 xor r_15_7_i_fu_338_p9);

    state_s_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            state_s_we0 <= ap_const_logic_1;
        else 
            state_s_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln31_16_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_fu_181_p2),64));
    zext_ln31_17_fu_198_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln31_fu_192_p2),8));
    zext_ln31_18_fu_208_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_8_fu_202_p2),64));
    zext_ln31_19_fu_223_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln31_7_fu_218_p2),8));
    zext_ln31_20_fu_233_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_9_fu_227_p2),64));
    zext_ln31_21_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln31_8_fu_238_p2),8));
    zext_ln31_22_fu_253_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_10_fu_247_p2),64));
    zext_ln31_23_fu_263_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln31_9_fu_258_p2),8));
    zext_ln31_24_fu_273_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_11_fu_267_p2),64));
    zext_ln31_25_fu_283_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln31_10_fu_278_p2),8));
    zext_ln31_26_fu_293_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_12_fu_287_p2),64));
    zext_ln31_27_fu_303_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln31_11_fu_298_p2),8));
    zext_ln31_28_fu_313_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_13_fu_307_p2),64));
    zext_ln31_29_fu_323_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln31_12_fu_318_p2),8));
    zext_ln31_30_fu_333_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_14_fu_327_p2),64));
    zext_ln31_fu_177_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_169_p3),8));
    zext_ln416_fu_164_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_32),64));
end behav;
