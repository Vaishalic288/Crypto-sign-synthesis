-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_poly_uniform_Pipeline_VITIS_LOOP_476_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    state_s_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    state_s_ce0 : OUT STD_LOGIC;
    state_s_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    idx : IN STD_LOGIC_VECTOR (9 downto 0);
    buf_r_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf_r_ce0 : OUT STD_LOGIC;
    buf_r_we0 : OUT STD_LOGIC;
    buf_r_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    buf_r_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf_r_ce1 : OUT STD_LOGIC;
    buf_r_we1 : OUT STD_LOGIC;
    buf_r_d1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_poly_uniform_Pipeline_VITIS_LOOP_476_2 is 
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
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_15 : STD_LOGIC_VECTOR (4 downto 0) := "10101";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_lv32_38 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv10_2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_const_lv10_3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000011";
    constant ap_const_lv10_4 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_const_lv10_5 : STD_LOGIC_VECTOR (9 downto 0) := "0000000101";
    constant ap_const_lv10_6 : STD_LOGIC_VECTOR (9 downto 0) := "0000000110";
    constant ap_const_lv10_7 : STD_LOGIC_VECTOR (9 downto 0) := "0000000111";

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
    signal icmp_ln476_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal icmp_ln476_reg_383 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln48_fu_215_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln48_reg_392 : STD_LOGIC_VECTOR (9 downto 0);
    signal trunc_ln48_2_reg_404 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal trunc_ln48_3_reg_409 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln48_4_reg_414 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln48_5_reg_419 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln48_6_reg_424 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln48_7_reg_429 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal i_65_cast14_fu_198_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln48_fu_231_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln48_8_fu_251_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln48_9_fu_321_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal zext_ln48_10_fu_331_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln48_11_fu_341_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal zext_ln48_12_fu_351_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln48_13_fu_361_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln48_14_fu_371_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_82 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln476_fu_192_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_37 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln48_fu_226_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal shl_ln_fu_203_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln477_fu_211_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_ln48_fu_246_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_ln48_7_fu_316_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_ln48_8_fu_326_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_ln48_9_fu_336_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_ln48_10_fu_346_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_ln48_11_fu_356_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_ln48_12_fu_366_p2 : STD_LOGIC_VECTOR (9 downto 0);
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


    i_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln476_fu_186_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_82 <= add_ln476_fu_192_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_82 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln476_fu_186_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln48_reg_392 <= add_ln48_fu_215_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln476_reg_383 <= icmp_ln476_fu_186_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln476_reg_383 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                trunc_ln48_2_reg_404 <= state_s_q0(23 downto 16);
                trunc_ln48_3_reg_409 <= state_s_q0(31 downto 24);
                trunc_ln48_4_reg_414 <= state_s_q0(39 downto 32);
                trunc_ln48_5_reg_419 <= state_s_q0(47 downto 40);
                trunc_ln48_6_reg_424 <= state_s_q0(55 downto 48);
                trunc_ln48_7_reg_429 <= state_s_q0(63 downto 56);
            end if;
        end if;
    end process;

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
    add_ln476_fu_192_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_37) + unsigned(ap_const_lv5_1));
    add_ln48_fu_215_p2 <= std_logic_vector(unsigned(zext_ln477_fu_211_p1) + unsigned(idx));
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

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln476_fu_186_p2)
    begin
        if (((icmp_ln476_fu_186_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_sig_allocacmp_i_37_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_82, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_37 <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_i_37 <= i_fu_82;
        end if; 
    end process;


    buf_r_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, ap_block_pp0_stage1, zext_ln48_8_fu_251_p1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, zext_ln48_10_fu_331_p1, ap_block_pp0_stage3, zext_ln48_12_fu_351_p1, zext_ln48_14_fu_371_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf_r_address0 <= zext_ln48_14_fu_371_p1(10 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            buf_r_address0 <= zext_ln48_12_fu_351_p1(10 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            buf_r_address0 <= zext_ln48_10_fu_331_p1(10 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            buf_r_address0 <= zext_ln48_8_fu_251_p1(10 - 1 downto 0);
        else 
            buf_r_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    buf_r_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln48_fu_231_p1, ap_block_pp0_stage1, zext_ln48_9_fu_321_p1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, zext_ln48_11_fu_341_p1, ap_block_pp0_stage3, zext_ln48_13_fu_361_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf_r_address1 <= zext_ln48_13_fu_361_p1(10 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            buf_r_address1 <= zext_ln48_11_fu_341_p1(10 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            buf_r_address1 <= zext_ln48_9_fu_321_p1(10 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            buf_r_address1 <= zext_ln48_fu_231_p1(10 - 1 downto 0);
        else 
            buf_r_address1 <= "XXXXXXXXXX";
        end if; 
    end process;


    buf_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            buf_r_ce0 <= ap_const_logic_1;
        else 
            buf_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_r_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            buf_r_ce1 <= ap_const_logic_1;
        else 
            buf_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    buf_r_d0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, state_s_q0, ap_CS_fsm_pp0_stage1, trunc_ln48_3_reg_409, trunc_ln48_5_reg_419, trunc_ln48_7_reg_429, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, ap_block_pp0_stage3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf_r_d0 <= trunc_ln48_7_reg_429;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            buf_r_d0 <= trunc_ln48_5_reg_419;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            buf_r_d0 <= trunc_ln48_3_reg_409;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            buf_r_d0 <= state_s_q0(15 downto 8);
        else 
            buf_r_d0 <= "XXXXXXXX";
        end if; 
    end process;


    buf_r_d1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, trunc_ln48_2_reg_404, ap_CS_fsm_pp0_stage1, trunc_ln48_4_reg_414, trunc_ln48_6_reg_424, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, ap_block_pp0_stage3, trunc_ln48_fu_226_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf_r_d1 <= trunc_ln48_6_reg_424;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            buf_r_d1 <= trunc_ln48_4_reg_414;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            buf_r_d1 <= trunc_ln48_2_reg_404;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            buf_r_d1 <= trunc_ln48_fu_226_p1;
        else 
            buf_r_d1 <= "XXXXXXXX";
        end if; 
    end process;


    buf_r_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, icmp_ln476_reg_383, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln476_reg_383 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((icmp_ln476_reg_383 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((icmp_ln476_reg_383 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            buf_r_we0 <= ap_const_logic_1;
        else 
            buf_r_we0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_r_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, icmp_ln476_reg_383, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln476_reg_383 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((icmp_ln476_reg_383 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((icmp_ln476_reg_383 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            buf_r_we1 <= ap_const_logic_1;
        else 
            buf_r_we1 <= ap_const_logic_0;
        end if; 
    end process;

    i_65_cast14_fu_198_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_37),64));
    icmp_ln476_fu_186_p2 <= "1" when (ap_sig_allocacmp_i_37 = ap_const_lv5_15) else "0";
    or_ln48_10_fu_346_p2 <= (ap_const_lv10_5 or add_ln48_reg_392);
    or_ln48_11_fu_356_p2 <= (ap_const_lv10_6 or add_ln48_reg_392);
    or_ln48_12_fu_366_p2 <= (ap_const_lv10_7 or add_ln48_reg_392);
    or_ln48_7_fu_316_p2 <= (ap_const_lv10_2 or add_ln48_reg_392);
    or_ln48_8_fu_326_p2 <= (ap_const_lv10_3 or add_ln48_reg_392);
    or_ln48_9_fu_336_p2 <= (ap_const_lv10_4 or add_ln48_reg_392);
    or_ln48_fu_246_p2 <= (ap_const_lv10_1 or add_ln48_reg_392);
    shl_ln_fu_203_p3 <= (ap_sig_allocacmp_i_37 & ap_const_lv3_0);
    state_s_address0 <= i_65_cast14_fu_198_p1(5 - 1 downto 0);

    state_s_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            state_s_ce0 <= ap_const_logic_1;
        else 
            state_s_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln48_fu_226_p1 <= state_s_q0(8 - 1 downto 0);
    zext_ln477_fu_211_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_203_p3),10));
    zext_ln48_10_fu_331_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln48_8_fu_326_p2),64));
    zext_ln48_11_fu_341_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln48_9_fu_336_p2),64));
    zext_ln48_12_fu_351_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln48_10_fu_346_p2),64));
    zext_ln48_13_fu_361_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln48_11_fu_356_p2),64));
    zext_ln48_14_fu_371_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln48_12_fu_366_p2),64));
    zext_ln48_8_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln48_fu_246_p2),64));
    zext_ln48_9_fu_321_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln48_7_fu_316_p2),64));
    zext_ln48_fu_231_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln48_reg_392),64));
end behav;
