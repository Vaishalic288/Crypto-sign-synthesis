-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_poly_uniform_Pipeline_VITIS_LOOP_337_122 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    sub_ln384 : IN STD_LOGIC_VECTOR (8 downto 0);
    zext_ln368 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf_r_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf_r_ce0 : OUT STD_LOGIC;
    buf_r_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf_r_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf_r_ce1 : OUT STD_LOGIC;
    buf_r_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    zext_ln384 : IN STD_LOGIC_VECTOR (7 downto 0);
    zext_ln344_3 : IN STD_LOGIC_VECTOR (11 downto 0);
    a_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_we0 : OUT STD_LOGIC;
    a_d0 : OUT STD_LOGIC_VECTOR (22 downto 0);
    ctr_4_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    ctr_4_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_poly_uniform_Pipeline_VITIS_LOOP_337_122 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv10_2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_const_lv23_7FE001 : STD_LOGIC_VECTOR (22 downto 0) := "11111111110000000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal and_ln337_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln384_cast_fu_135_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln384_cast_reg_300 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln368_cast_fu_139_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln368_cast_reg_305 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln384_cast_fu_143_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln384_cast_reg_310 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctr_1_reg_315 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal pos_4_fu_169_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal pos_4_reg_321 : STD_LOGIC_VECTOR (31 downto 0);
    signal empty_fu_192_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal empty_reg_329 : STD_LOGIC_VECTOR (9 downto 0);
    signal buf_load_reg_344 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal buf_load_9_reg_349 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal zext_ln338_fu_202_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln339_fu_207_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln340_fu_217_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal zext_ln344_2_fu_267_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln343_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal pos_fu_50 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ctr_fu_54 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctr_2_fu_241_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage1_01001 : BOOLEAN;
    signal t_fu_226_p4 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln337_1_fu_175_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln337_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln337_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal pos_2_fu_196_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal pos_3_fu_212_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal trunc_ln341_fu_222_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln344_fu_246_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln344_fu_249_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln344_fu_253_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln344_1_fu_258_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln344_2_fu_262_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then 
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage2_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ctr_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    ctr_fu_54 <= ap_const_lv32_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln343_fu_235_p2 = ap_const_lv1_1))) then 
                    ctr_fu_54 <= ctr_2_fu_241_p2;
                end if;
            end if; 
        end if;
    end process;

    pos_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    pos_fu_50 <= ap_const_lv32_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    pos_fu_50 <= pos_4_reg_321;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                buf_load_9_reg_349 <= buf_r_q0;
                buf_load_reg_344 <= buf_r_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                ctr_1_reg_315 <= ctr_fu_54;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_lv1_1 = and_ln337_fu_186_p2))) then
                empty_reg_329 <= empty_fu_192_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                pos_4_reg_321 <= pos_4_fu_169_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    sub_ln384_cast_reg_310(8 downto 0) <= sub_ln384_cast_fu_143_p1(8 downto 0);
                    zext_ln368_cast_reg_305(7 downto 0) <= zext_ln368_cast_fu_139_p1(7 downto 0);
                    zext_ln384_cast_reg_300(7 downto 0) <= zext_ln384_cast_fu_135_p1(7 downto 0);
            end if;
        end if;
    end process;
    zext_ln384_cast_reg_300(8) <= '0';
    zext_ln368_cast_reg_305(31 downto 8) <= "000000000000000000000000";
    sub_ln384_cast_reg_310(31 downto 9) <= "00000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_condition_exit_pp0_iter0_stage1, ap_block_pp0_stage2_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    a_address0 <= zext_ln344_2_fu_267_p1(12 - 1 downto 0);

    a_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    a_d0 <= t_fu_226_p4;

    a_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, icmp_ln343_fu_235_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln343_fu_235_p2 = ap_const_lv1_1))) then 
            a_we0 <= ap_const_logic_1;
        else 
            a_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln344_2_fu_262_p2 <= std_logic_vector(unsigned(zext_ln344_3) + unsigned(zext_ln344_1_fu_258_p1));
    add_ln344_fu_253_p2 <= std_logic_vector(unsigned(zext_ln344_fu_249_p1) + unsigned(zext_ln384_cast_reg_300));
    and_ln337_fu_186_p2 <= (xor_ln337_fu_180_p2 and icmp_ln337_fu_164_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, and_ln337_fu_186_p2)
    begin
        if (((ap_const_lv1_0 = and_ln337_fu_186_p2) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage2_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    buf_r_address0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage1, zext_ln339_fu_207_p1, zext_ln340_fu_217_p1, ap_block_pp0_stage2)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                buf_r_address0 <= zext_ln340_fu_217_p1(10 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                buf_r_address0 <= zext_ln339_fu_207_p1(10 - 1 downto 0);
            else 
                buf_r_address0 <= "XXXXXXXXXX";
            end if;
        else 
            buf_r_address0 <= "XXXXXXXXXX";
        end if; 
    end process;

    buf_r_address1 <= zext_ln338_fu_202_p1(10 - 1 downto 0);

    buf_r_ce0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage1_11001, ap_block_pp0_stage2_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            buf_r_ce0 <= ap_const_logic_1;
        else 
            buf_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_r_ce1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            buf_r_ce1 <= ap_const_logic_1;
        else 
            buf_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    ctr_2_fu_241_p2 <= std_logic_vector(unsigned(ctr_1_reg_315) + unsigned(ap_const_lv32_1));
    ctr_4_out <= ctr_fu_54;

    ctr_4_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage1, and_ln337_fu_186_p2, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_lv1_0 = and_ln337_fu_186_p2) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ctr_4_out_ap_vld <= ap_const_logic_1;
        else 
            ctr_4_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    empty_fu_192_p1 <= pos_fu_50(10 - 1 downto 0);
    icmp_ln337_1_fu_175_p2 <= "1" when (unsigned(zext_ln368_cast_reg_305) < unsigned(pos_4_fu_169_p2)) else "0";
    icmp_ln337_fu_164_p2 <= "1" when (unsigned(ctr_fu_54) < unsigned(sub_ln384_cast_reg_310)) else "0";
    icmp_ln343_fu_235_p2 <= "1" when (unsigned(t_fu_226_p4) < unsigned(ap_const_lv23_7FE001)) else "0";
    pos_2_fu_196_p2 <= std_logic_vector(unsigned(empty_fu_192_p1) + unsigned(ap_const_lv10_1));
    pos_3_fu_212_p2 <= std_logic_vector(unsigned(empty_reg_329) + unsigned(ap_const_lv10_2));
    pos_4_fu_169_p2 <= std_logic_vector(unsigned(pos_fu_50) + unsigned(ap_const_lv32_3));
    sub_ln384_cast_fu_143_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln384),32));
    t_fu_226_p4 <= ((trunc_ln341_fu_222_p1 & buf_load_9_reg_349) & buf_load_reg_344);
    trunc_ln341_fu_222_p1 <= buf_r_q0(7 - 1 downto 0);
    trunc_ln344_fu_246_p1 <= ctr_1_reg_315(8 - 1 downto 0);
    xor_ln337_fu_180_p2 <= (icmp_ln337_1_fu_175_p2 xor ap_const_lv1_1);
    zext_ln338_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pos_fu_50),64));
    zext_ln339_fu_207_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pos_2_fu_196_p2),64));
    zext_ln340_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pos_3_fu_212_p2),64));
    zext_ln344_1_fu_258_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln344_fu_253_p2),12));
    zext_ln344_2_fu_267_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln344_2_fu_262_p2),64));
    zext_ln344_fu_249_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln344_fu_246_p1),9));
    zext_ln368_cast_fu_139_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln368),32));
    zext_ln384_cast_fu_135_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln384),9));
end behav;
