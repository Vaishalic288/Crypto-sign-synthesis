-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium_17 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_we0 : OUT STD_LOGIC;
    a_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    a_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    a_offset : IN STD_LOGIC_VECTOR (2 downto 0) );
end;


architecture behav of pqcrystals_dilithium_17 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv29_80 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000010000000";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv29_0 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000000000000";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv32_3802001 : STD_LOGIC_VECTOR (31 downto 0) := "00000011100000000010000000000001";
    constant ap_const_lv55_7FFFFFFF801FFF : STD_LOGIC_VECTOR (54 downto 0) := "1111111111111111111111111111111100000000001111111111111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal zetas_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal zetas_ce0 : STD_LOGIC;
    signal zetas_q0 : STD_LOGIC_VECTOR (22 downto 0);
    signal zext_ln49_fu_134_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln49_reg_369 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln54_fu_143_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal zext_ln54_reg_375 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln55_fu_153_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln55_reg_384 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal k_fu_176_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_reg_392 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln55_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln54_1_fu_197_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal zext_ln57_fu_206_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln57_reg_407 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln55_1_fu_232_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal zext_ln55_1_reg_412 : STD_LOGIC_VECTOR (30 downto 0);
    signal sext_ln57_fu_236_p1 : STD_LOGIC_VECTOR (53 downto 0);
    signal sext_ln57_reg_417 : STD_LOGIC_VECTOR (53 downto 0);
    signal a_addr11_reg_425 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln57_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal a_addr_reg_430 : STD_LOGIC_VECTOR (9 downto 0);
    signal j_4_fu_283_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_4_reg_435 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln55_fu_289_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal a_load_reg_445 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal mul_ln58_fu_300_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal mul_ln58_reg_450 : STD_LOGIC_VECTOR (53 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal trunc_ln18_fu_305_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln18_reg_455 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_fu_309_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_reg_460 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal mul_ln19_fu_317_p2 : STD_LOGIC_VECTOR (54 downto 0);
    signal mul_ln19_reg_465 : STD_LOGIC_VECTOR (54 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal t_15_fu_345_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_15_reg_470 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal len_0_reg_93 : STD_LOGIC_VECTOR (28 downto 0);
    signal j_reg_105 : STD_LOGIC_VECTOR (30 downto 0);
    signal icmp_ln54_fu_147_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_0_reg_117 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal zext_ln56_fu_182_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln58_fu_264_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln59_fu_278_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal k_2_fu_50 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln59_fu_349_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal add_ln60_fu_356_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_126_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_23_fu_157_p4 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_24_fu_187_p4 : STD_LOGIC_VECTOR (27 downto 0);
    signal add_ln57_fu_201_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal empty_86_fu_210_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln55_fu_216_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal trunc_ln55_1_fu_220_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal start_fu_224_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal trunc_ln58_1_fu_249_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln58_fu_245_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_fu_253_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_1_fu_259_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln59_fu_269_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln59_fu_273_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal mul_ln58_fu_300_p0 : STD_LOGIC_VECTOR (22 downto 0);
    signal mul_ln58_fu_300_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_fu_317_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln58_1_fu_323_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal sext_ln19_8_fu_326_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal add_ln19_fu_329_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal trunc_ln_fu_335_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);

    component pqcrystals_dilithg8j IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (22 downto 0) );
    end component;



begin
    zetas_U : component pqcrystals_dilithg8j
    generic map (
        DataWidth => 23,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => zetas_address0,
        ce0 => zetas_ce0,
        q0 => zetas_q0);





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


    j_0_reg_117_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                j_0_reg_117 <= j_4_reg_435;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                j_0_reg_117 <= zext_ln55_reg_384;
            end if; 
        end if;
    end process;

    j_reg_105_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln54_fu_147_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_105 <= ap_const_lv31_0;
            elsif (((icmp_ln57_fu_240_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                j_reg_105 <= add_ln55_fu_289_p2;
            end if; 
        end if;
    end process;

    k_2_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln57_fu_240_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                k_2_fu_50 <= k_reg_392;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                k_2_fu_50 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    len_0_reg_93_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln55_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                                len_0_reg_93(7 downto 0) <= zext_ln54_1_fu_197_p1(7 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                len_0_reg_93(0) <= '0';
                len_0_reg_93(1) <= '0';
                len_0_reg_93(2) <= '0';
                len_0_reg_93(3) <= '0';
                len_0_reg_93(4) <= '0';
                len_0_reg_93(5) <= '0';
                len_0_reg_93(6) <= '0';
                len_0_reg_93(7) <= '1';
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln57_fu_240_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                a_addr11_reg_425 <= zext_ln58_fu_264_p1(10 - 1 downto 0);
                a_addr_reg_430 <= zext_ln59_fu_278_p1(10 - 1 downto 0);
                j_4_reg_435 <= j_4_fu_283_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                a_load_reg_445 <= a_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln55_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                k_reg_392 <= k_fu_176_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                mul_ln19_reg_465 <= mul_ln19_fu_317_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                mul_ln58_reg_450 <= mul_ln58_fu_300_p2;
                trunc_ln18_reg_455 <= trunc_ln18_fu_305_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                sext_ln57_reg_417 <= sext_ln57_fu_236_p1;
                    zext_ln55_1_reg_412(29 downto 0) <= zext_ln55_1_fu_232_p1(29 downto 0);
                    zext_ln57_reg_407(30 downto 0) <= zext_ln57_fu_206_p1(30 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                t_15_reg_470 <= t_15_fu_345_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                t_reg_460 <= t_fu_309_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    zext_ln49_reg_369(10 downto 8) <= zext_ln49_fu_134_p1(10 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                    zext_ln54_reg_375(7 downto 0) <= zext_ln54_fu_143_p1(7 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    zext_ln55_reg_384(30 downto 0) <= zext_ln55_fu_153_p1(30 downto 0);
            end if;
        end if;
    end process;
    zext_ln49_reg_369(7 downto 0) <= "00000000";
    zext_ln49_reg_369(11) <= '0';
    zext_ln54_reg_375(30 downto 8) <= "00000000000000000000000";
    zext_ln55_reg_384(31) <= '0';
    zext_ln57_reg_407(31) <= '0';
    zext_ln55_1_reg_412(30) <= '0';
    len_0_reg_93(28 downto 8) <= "000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln55_fu_167_p2, ap_CS_fsm_state5, icmp_ln57_fu_240_p2, icmp_ln54_fu_147_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln54_fu_147_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln55_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((icmp_ln57_fu_240_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;

    a_address0_assign_proc : process(a_addr11_reg_425, ap_CS_fsm_state5, a_addr_reg_430, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state12, zext_ln58_fu_264_p1, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            a_address0 <= a_addr11_reg_425;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            a_address0 <= a_addr_reg_430;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            a_address0 <= zext_ln58_fu_264_p1(10 - 1 downto 0);
        else 
            a_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    a_ce0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state12, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    a_d0_assign_proc : process(ap_CS_fsm_state10, ap_CS_fsm_state12, sub_ln59_fu_349_p2, add_ln60_fu_356_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            a_d0 <= add_ln60_fu_356_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            a_d0 <= sub_ln59_fu_349_p2;
        else 
            a_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    a_we0_assign_proc : process(ap_CS_fsm_state10, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            a_we0 <= ap_const_logic_1;
        else 
            a_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln19_fu_329_p2 <= std_logic_vector(signed(sext_ln58_1_fu_323_p1) + signed(sext_ln19_8_fu_326_p1));
    add_ln55_fu_289_p2 <= std_logic_vector(unsigned(zext_ln54_reg_375) + unsigned(zext_ln55_1_reg_412));
    add_ln57_fu_201_p2 <= std_logic_vector(unsigned(zext_ln54_reg_375) + unsigned(j_reg_105));
    add_ln58_1_fu_259_p2 <= std_logic_vector(unsigned(zext_ln49_reg_369) + unsigned(add_ln58_fu_253_p2));
    add_ln58_fu_253_p2 <= std_logic_vector(unsigned(trunc_ln58_1_fu_249_p1) + unsigned(trunc_ln58_fu_245_p1));
    add_ln59_fu_273_p2 <= std_logic_vector(unsigned(zext_ln49_reg_369) + unsigned(trunc_ln59_fu_269_p1));
    add_ln60_fu_356_p2 <= std_logic_vector(signed(t_15_reg_470) + signed(a_q0));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln54_fu_147_p2)
    begin
        if ((((icmp_ln54_fu_147_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln54_fu_147_p2)
    begin
        if (((icmp_ln54_fu_147_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    empty_86_fu_210_p2 <= "1" when (unsigned(j_reg_105) > unsigned(add_ln57_fu_201_p2)) else "0";
    icmp_ln54_fu_147_p2 <= "1" when (len_0_reg_93 = ap_const_lv29_0) else "0";
    icmp_ln55_fu_167_p2 <= "1" when (tmp_23_fu_157_p4 = ap_const_lv23_0) else "0";
    icmp_ln57_fu_240_p2 <= "1" when (unsigned(j_0_reg_117) < unsigned(zext_ln57_reg_407)) else "0";
    j_4_fu_283_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(j_0_reg_117));
    k_fu_176_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(k_2_fu_50));
    mul_ln19_fu_317_p1 <= t_reg_460;
    mul_ln19_fu_317_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(ap_const_lv55_7FFFFFFF801FFF) * signed(mul_ln19_fu_317_p1))), 55));
    mul_ln58_fu_300_p0 <= sext_ln57_reg_417(23 - 1 downto 0);
    mul_ln58_fu_300_p1 <= a_load_reg_445;
    mul_ln58_fu_300_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mul_ln58_fu_300_p0) * signed(mul_ln58_fu_300_p1))), 54));
        sext_ln19_8_fu_326_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln19_reg_465),56));

        sext_ln57_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(zetas_q0),54));

        sext_ln58_1_fu_323_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln58_reg_450),56));

    start_fu_224_p3 <= 
        trunc_ln55_fu_216_p1 when (empty_86_fu_210_p2(0) = '1') else 
        trunc_ln55_1_fu_220_p1;
    sub_ln59_fu_349_p2 <= std_logic_vector(unsigned(a_q0) - unsigned(t_15_fu_345_p1));
        t_15_fu_345_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_fu_335_p4),32));

    t_fu_309_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed('0' &ap_const_lv32_3802001) * signed(trunc_ln18_reg_455))), 32));
    tmp_23_fu_157_p4 <= j_reg_105(30 downto 8);
    tmp_24_fu_187_p4 <= len_0_reg_93(28 downto 1);
    tmp_fu_126_p3 <= (a_offset & ap_const_lv8_0);
    trunc_ln18_fu_305_p1 <= mul_ln58_fu_300_p2(32 - 1 downto 0);
    trunc_ln55_1_fu_220_p1 <= add_ln57_fu_201_p2(30 - 1 downto 0);
    trunc_ln55_fu_216_p1 <= j_reg_105(30 - 1 downto 0);
    trunc_ln58_1_fu_249_p1 <= len_0_reg_93(12 - 1 downto 0);
    trunc_ln58_fu_245_p1 <= j_0_reg_117(12 - 1 downto 0);
    trunc_ln59_fu_269_p1 <= j_0_reg_117(12 - 1 downto 0);
    trunc_ln_fu_335_p4 <= add_ln19_fu_329_p2(55 downto 32);
    zetas_address0 <= zext_ln56_fu_182_p1(8 - 1 downto 0);

    zetas_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            zetas_ce0 <= ap_const_logic_1;
        else 
            zetas_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln49_fu_134_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_126_p3),12));
    zext_ln54_1_fu_197_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_24_fu_187_p4),29));
    zext_ln54_fu_143_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(len_0_reg_93),31));
    zext_ln55_1_fu_232_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(start_fu_224_p3),31));
    zext_ln55_fu_153_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_105),32));
    zext_ln56_fu_182_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_fu_176_p2),64));
    zext_ln57_fu_206_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln57_fu_201_p2),32));
    zext_ln58_fu_264_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln58_1_fu_259_p2),64));
    zext_ln59_fu_278_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln59_fu_273_p2),64));
end behav;