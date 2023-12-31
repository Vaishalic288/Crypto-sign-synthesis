-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_540_59 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    state_s_0_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    state_s_0_ce0 : OUT STD_LOGIC;
    state_s_0_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    seedbuf_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    seedbuf_ce0 : OUT STD_LOGIC;
    seedbuf_we0 : OUT STD_LOGIC;
    seedbuf_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    seedbuf_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    seedbuf_ce1 : OUT STD_LOGIC;
    seedbuf_we1 : OUT STD_LOGIC;
    seedbuf_d1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_540_59 is 
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
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
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
    signal icmp_ln540_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal i_3_reg_444 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln540_reg_449 : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln541_1_fu_203_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal shl_ln541_1_reg_458 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal trunc_ln543_1_reg_468 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln544_1_reg_473 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln545_1_reg_478 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln546_1_reg_483 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln547_1_reg_488 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln548_1_reg_493 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal i_63_cast27_fu_188_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln541_1_fu_220_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln542_1_fu_252_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln543_1_fu_332_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal zext_ln544_1_fu_352_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln545_1_fu_372_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal zext_ln546_1_fu_392_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln547_1_fu_412_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln548_1_fu_432_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_78 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln540_fu_182_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_3 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln541_fu_198_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal zext_ln541_fu_210_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln541_fu_214_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln542_fu_236_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln542_fu_242_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln542_fu_246_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln543_fu_317_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln543_fu_322_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln543_fu_326_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln544_fu_337_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln544_fu_342_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln544_fu_346_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln545_fu_357_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln545_fu_362_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln545_fu_366_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln546_fu_377_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln546_fu_382_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln546_fu_386_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln547_fu_397_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln547_fu_402_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln547_fu_406_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln548_fu_417_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln548_fu_422_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln548_fu_426_p2 : STD_LOGIC_VECTOR (7 downto 0);
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


    i_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln540_fu_176_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_78 <= add_ln540_fu_182_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_78 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_3_reg_444 <= ap_sig_allocacmp_i_3;
                icmp_ln540_reg_449 <= icmp_ln540_fu_176_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln540_reg_449 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                    shl_ln541_1_reg_458(5 downto 3) <= shl_ln541_1_fu_203_p3(5 downto 3);
                trunc_ln543_1_reg_468 <= state_s_0_q0(23 downto 16);
                trunc_ln544_1_reg_473 <= state_s_0_q0(31 downto 24);
                trunc_ln545_1_reg_478 <= state_s_0_q0(39 downto 32);
                trunc_ln546_1_reg_483 <= state_s_0_q0(47 downto 40);
                trunc_ln547_1_reg_488 <= state_s_0_q0(55 downto 48);
                trunc_ln548_1_reg_493 <= state_s_0_q0(63 downto 56);
            end if;
        end if;
    end process;
    shl_ln541_1_reg_458(2 downto 0) <= "000";

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
    add_ln540_fu_182_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_3) + unsigned(ap_const_lv3_1));
    add_ln541_fu_214_p2 <= std_logic_vector(unsigned(zext_ln541_fu_210_p1) + unsigned(ap_const_lv8_A0));
    add_ln542_fu_246_p2 <= std_logic_vector(unsigned(zext_ln542_fu_242_p1) + unsigned(ap_const_lv8_A0));
    add_ln543_fu_326_p2 <= std_logic_vector(unsigned(zext_ln543_fu_322_p1) + unsigned(ap_const_lv8_A0));
    add_ln544_fu_346_p2 <= std_logic_vector(unsigned(zext_ln544_fu_342_p1) + unsigned(ap_const_lv8_A0));
    add_ln545_fu_366_p2 <= std_logic_vector(unsigned(zext_ln545_fu_362_p1) + unsigned(ap_const_lv8_A0));
    add_ln546_fu_386_p2 <= std_logic_vector(unsigned(zext_ln546_fu_382_p1) + unsigned(ap_const_lv8_A0));
    add_ln547_fu_406_p2 <= std_logic_vector(unsigned(zext_ln547_fu_402_p1) + unsigned(ap_const_lv8_A0));
    add_ln548_fu_426_p2 <= std_logic_vector(unsigned(zext_ln548_fu_422_p1) + unsigned(ap_const_lv8_A0));
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

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln540_fu_176_p2)
    begin
        if (((icmp_ln540_fu_176_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_sig_allocacmp_i_3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_78, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_3 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_3 <= i_fu_78;
        end if; 
    end process;

    i_63_cast27_fu_188_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_3),64));
    icmp_ln540_fu_176_p2 <= "1" when (ap_sig_allocacmp_i_3 = ap_const_lv3_6) else "0";
    or_ln542_fu_236_p2 <= (shl_ln541_1_fu_203_p3 or ap_const_lv6_1);
    or_ln543_fu_317_p2 <= (shl_ln541_1_reg_458 or ap_const_lv6_2);
    or_ln544_fu_337_p2 <= (shl_ln541_1_reg_458 or ap_const_lv6_3);
    or_ln545_fu_357_p2 <= (shl_ln541_1_reg_458 or ap_const_lv6_4);
    or_ln546_fu_377_p2 <= (shl_ln541_1_reg_458 or ap_const_lv6_5);
    or_ln547_fu_397_p2 <= (shl_ln541_1_reg_458 or ap_const_lv6_6);
    or_ln548_fu_417_p2 <= (shl_ln541_1_reg_458 or ap_const_lv6_7);

    seedbuf_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, ap_block_pp0_stage1, zext_ln542_1_fu_252_p1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, zext_ln544_1_fu_352_p1, ap_block_pp0_stage3, zext_ln546_1_fu_392_p1, zext_ln548_1_fu_432_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            seedbuf_address0 <= zext_ln548_1_fu_432_p1(8 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            seedbuf_address0 <= zext_ln546_1_fu_392_p1(8 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            seedbuf_address0 <= zext_ln544_1_fu_352_p1(8 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            seedbuf_address0 <= zext_ln542_1_fu_252_p1(8 - 1 downto 0);
        else 
            seedbuf_address0 <= "XXXXXXXX";
        end if; 
    end process;


    seedbuf_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln541_1_fu_220_p1, ap_block_pp0_stage1, zext_ln543_1_fu_332_p1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, zext_ln545_1_fu_372_p1, ap_block_pp0_stage3, zext_ln547_1_fu_412_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            seedbuf_address1 <= zext_ln547_1_fu_412_p1(8 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            seedbuf_address1 <= zext_ln545_1_fu_372_p1(8 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            seedbuf_address1 <= zext_ln543_1_fu_332_p1(8 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            seedbuf_address1 <= zext_ln541_1_fu_220_p1(8 - 1 downto 0);
        else 
            seedbuf_address1 <= "XXXXXXXX";
        end if; 
    end process;


    seedbuf_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            seedbuf_ce0 <= ap_const_logic_1;
        else 
            seedbuf_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    seedbuf_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            seedbuf_ce1 <= ap_const_logic_1;
        else 
            seedbuf_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    seedbuf_d0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, state_s_0_q0, ap_CS_fsm_pp0_stage1, trunc_ln544_1_reg_473, trunc_ln546_1_reg_483, trunc_ln548_1_reg_493, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, ap_block_pp0_stage3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            seedbuf_d0 <= trunc_ln548_1_reg_493;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            seedbuf_d0 <= trunc_ln546_1_reg_483;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            seedbuf_d0 <= trunc_ln544_1_reg_473;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            seedbuf_d0 <= state_s_0_q0(15 downto 8);
        else 
            seedbuf_d0 <= "XXXXXXXX";
        end if; 
    end process;


    seedbuf_d1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage1, trunc_ln543_1_reg_468, trunc_ln545_1_reg_478, trunc_ln547_1_reg_488, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, ap_block_pp0_stage3, trunc_ln541_fu_198_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            seedbuf_d1 <= trunc_ln547_1_reg_488;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            seedbuf_d1 <= trunc_ln545_1_reg_478;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            seedbuf_d1 <= trunc_ln543_1_reg_468;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            seedbuf_d1 <= trunc_ln541_fu_198_p1;
        else 
            seedbuf_d1 <= "XXXXXXXX";
        end if; 
    end process;


    seedbuf_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0_11001, icmp_ln540_reg_449, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln540_reg_449 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((icmp_ln540_reg_449 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((icmp_ln540_reg_449 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            seedbuf_we0 <= ap_const_logic_1;
        else 
            seedbuf_we0 <= ap_const_logic_0;
        end if; 
    end process;


    seedbuf_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0_11001, icmp_ln540_reg_449, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln540_reg_449 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((icmp_ln540_reg_449 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((icmp_ln540_reg_449 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            seedbuf_we1 <= ap_const_logic_1;
        else 
            seedbuf_we1 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln541_1_fu_203_p3 <= (i_3_reg_444 & ap_const_lv3_0);
    state_s_0_address0 <= i_63_cast27_fu_188_p1(5 - 1 downto 0);

    state_s_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            state_s_0_ce0 <= ap_const_logic_1;
        else 
            state_s_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln541_fu_198_p1 <= state_s_0_q0(8 - 1 downto 0);
    zext_ln541_1_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln541_fu_214_p2),64));
    zext_ln541_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln541_1_fu_203_p3),8));
    zext_ln542_1_fu_252_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln542_fu_246_p2),64));
    zext_ln542_fu_242_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln542_fu_236_p2),8));
    zext_ln543_1_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln543_fu_326_p2),64));
    zext_ln543_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln543_fu_317_p2),8));
    zext_ln544_1_fu_352_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln544_fu_346_p2),64));
    zext_ln544_fu_342_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln544_fu_337_p2),8));
    zext_ln545_1_fu_372_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln545_fu_366_p2),64));
    zext_ln545_fu_362_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln545_fu_357_p2),8));
    zext_ln546_1_fu_392_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln546_fu_386_p2),64));
    zext_ln546_fu_382_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln546_fu_377_p2),8));
    zext_ln547_1_fu_412_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln547_fu_406_p2),64));
    zext_ln547_fu_402_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln547_fu_397_p2),8));
    zext_ln548_1_fu_432_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln548_fu_426_p2),64));
    zext_ln548_fu_422_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln548_fu_417_p2),8));
end behav;
