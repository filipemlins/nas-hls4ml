-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity reduce_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    x_V_ce0 : OUT STD_LOGIC;
    x_V_q0 : IN STD_LOGIC_VECTOR (12 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (17 downto 0) );
end;


architecture behav of reduce_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_4_fu_161_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_4_reg_361 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal exitcond3_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_18_fu_172_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_18_reg_371 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_3_fu_226_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_3_reg_378 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal exitcond_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_19_fu_245_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_19_reg_388 : STD_LOGIC_VECTOR (0 downto 0);
    signal right_1_V_1_fu_285_p3 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal right_1_V_2_fu_292_p3 : STD_LOGIC_VECTOR (17 downto 0);
    signal grp_reduce_fu_143_ap_return : STD_LOGIC_VECTOR (17 downto 0);
    signal p_Val2_8_reg_444 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_reduce_fu_143_ap_ready : STD_LOGIC;
    signal grp_reduce_fu_143_ap_done : STD_LOGIC;
    signal grp_reduce_fu_143_ap_start : STD_LOGIC;
    signal grp_reduce_fu_143_ap_idle : STD_LOGIC;
    signal i_reg_97 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal p_Val2_7_reg_108 : STD_LOGIC_VECTOR (17 downto 0);
    signal p_Val2_s_reg_120 : STD_LOGIC_VECTOR (17 downto 0);
    signal i2_reg_132 : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_reduce_fu_143_ap_start_reg : STD_LOGIC := '0';
    signal tmp_fu_167_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_240_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal left_7_V_fu_44 : STD_LOGIC_VECTOR (17 downto 0);
    signal left_0_V_fu_176_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal left_7_V_1_fu_48 : STD_LOGIC_VECTOR (17 downto 0);
    signal left_7_V_2_fu_52 : STD_LOGIC_VECTOR (17 downto 0);
    signal left_7_V_3_fu_56 : STD_LOGIC_VECTOR (17 downto 0);
    signal left_7_V_4_fu_60 : STD_LOGIC_VECTOR (17 downto 0);
    signal left_7_V_5_fu_64 : STD_LOGIC_VECTOR (17 downto 0);
    signal left_7_V_6_fu_68 : STD_LOGIC_VECTOR (17 downto 0);
    signal left_7_V_7_fu_72 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_1_fu_232_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal right_0_V_fu_281_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal tmp1_fu_299_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);

    component reduce IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        x_0_V_read : IN STD_LOGIC_VECTOR (17 downto 0);
        x_1_V_read : IN STD_LOGIC_VECTOR (17 downto 0);
        x_2_V_read : IN STD_LOGIC_VECTOR (17 downto 0);
        x_3_V_read : IN STD_LOGIC_VECTOR (17 downto 0);
        x_4_V_read : IN STD_LOGIC_VECTOR (17 downto 0);
        x_5_V_read : IN STD_LOGIC_VECTOR (17 downto 0);
        x_6_V_read : IN STD_LOGIC_VECTOR (17 downto 0);
        x_7_V_read : IN STD_LOGIC_VECTOR (17 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (17 downto 0) );
    end component;



begin
    grp_reduce_fu_143 : component reduce
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_reduce_fu_143_ap_start,
        ap_done => grp_reduce_fu_143_ap_done,
        ap_idle => grp_reduce_fu_143_ap_idle,
        ap_ready => grp_reduce_fu_143_ap_ready,
        x_0_V_read => left_7_V_fu_44,
        x_1_V_read => left_7_V_1_fu_48,
        x_2_V_read => left_7_V_2_fu_52,
        x_3_V_read => left_7_V_3_fu_56,
        x_4_V_read => left_7_V_4_fu_60,
        x_5_V_read => left_7_V_5_fu_64,
        x_6_V_read => left_7_V_6_fu_68,
        x_7_V_read => left_7_V_7_fu_72,
        ap_return => grp_reduce_fu_143_ap_return);





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


    grp_reduce_fu_143_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_reduce_fu_143_ap_start_reg <= ap_const_logic_0;
            else
                if (((exitcond_fu_220_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                    grp_reduce_fu_143_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_reduce_fu_143_ap_ready = ap_const_logic_1)) then 
                    grp_reduce_fu_143_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i2_reg_132_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond3_fu_155_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i2_reg_132 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i2_reg_132 <= i_3_reg_378;
            end if; 
        end if;
    end process;

    i_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_reg_97 <= i_4_reg_361;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_97 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                i_3_reg_378 <= i_3_fu_226_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_4_reg_361 <= i_4_fu_161_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_18_reg_371 = ap_const_lv3_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    left_7_V_1_fu_48(12 downto 0) <= left_0_V_fu_176_p1(12 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_18_reg_371 = ap_const_lv3_2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    left_7_V_2_fu_52(12 downto 0) <= left_0_V_fu_176_p1(12 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_18_reg_371 = ap_const_lv3_3) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    left_7_V_3_fu_56(12 downto 0) <= left_0_V_fu_176_p1(12 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_18_reg_371 = ap_const_lv3_4) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    left_7_V_4_fu_60(12 downto 0) <= left_0_V_fu_176_p1(12 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_18_reg_371 = ap_const_lv3_5) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    left_7_V_5_fu_64(12 downto 0) <= left_0_V_fu_176_p1(12 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_18_reg_371 = ap_const_lv3_6) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    left_7_V_6_fu_68(12 downto 0) <= left_0_V_fu_176_p1(12 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_18_reg_371 = ap_const_lv3_7) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    left_7_V_7_fu_72(12 downto 0) <= left_0_V_fu_176_p1(12 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_18_reg_371 = ap_const_lv3_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    left_7_V_fu_44(12 downto 0) <= left_0_V_fu_176_p1(12 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                p_Val2_7_reg_108 <= right_1_V_1_fu_285_p3;
                p_Val2_s_reg_120 <= right_1_V_2_fu_292_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_reduce_fu_143_ap_done = ap_const_logic_1))) then
                p_Val2_8_reg_444 <= grp_reduce_fu_143_ap_return;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond3_fu_155_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_18_reg_371 <= tmp_18_fu_172_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                tmp_19_reg_388 <= tmp_19_fu_245_p1;
            end if;
        end if;
    end process;
    left_7_V_fu_44(17 downto 13) <= "00000";
    left_7_V_1_fu_48(17 downto 13) <= "00000";
    left_7_V_2_fu_52(17 downto 13) <= "00000";
    left_7_V_3_fu_56(17 downto 13) <= "00000";
    left_7_V_4_fu_60(17 downto 13) <= "00000";
    left_7_V_5_fu_64(17 downto 13) <= "00000";
    left_7_V_6_fu_68(17 downto 13) <= "00000";
    left_7_V_7_fu_72(17 downto 13) <= "00000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond3_fu_155_p2, ap_CS_fsm_state5, exitcond_fu_220_p2, ap_CS_fsm_state7, grp_reduce_fu_143_ap_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond3_fu_155_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state5 => 
                if (((exitcond_fu_220_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_reduce_fu_143_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= std_logic_vector(unsigned(tmp1_fu_299_p2) + unsigned(p_Val2_7_reg_108));
    exitcond3_fu_155_p2 <= "1" when (i_reg_97 = ap_const_lv4_8) else "0";
    exitcond_fu_220_p2 <= "1" when (i2_reg_132 = ap_const_lv2_2) else "0";
    grp_reduce_fu_143_ap_start <= grp_reduce_fu_143_ap_start_reg;
    i_3_fu_226_p2 <= std_logic_vector(unsigned(i2_reg_132) + unsigned(ap_const_lv2_1));
    i_4_fu_161_p2 <= std_logic_vector(unsigned(i_reg_97) + unsigned(ap_const_lv4_1));
    left_0_V_fu_176_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_V_q0),18));
    right_0_V_fu_281_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_V_q0),18));
    right_1_V_1_fu_285_p3 <= 
        right_0_V_fu_281_p1 when (tmp_19_reg_388(0) = '1') else 
        p_Val2_7_reg_108;
    right_1_V_2_fu_292_p3 <= 
        p_Val2_s_reg_120 when (tmp_19_reg_388(0) = '1') else 
        right_0_V_fu_281_p1;
    tmp1_fu_299_p2 <= std_logic_vector(unsigned(p_Val2_s_reg_120) + unsigned(p_Val2_8_reg_444));
    tmp_18_fu_172_p1 <= i_reg_97(3 - 1 downto 0);
    tmp_19_fu_245_p1 <= i2_reg_132(1 - 1 downto 0);
    tmp_1_fu_232_p3 <= (ap_const_lv2_2 & i2_reg_132);
    tmp_fu_167_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_97),64));
    tmp_s_fu_240_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_232_p3),64));

    x_V_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5, tmp_fu_167_p1, tmp_s_fu_240_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            x_V_address0 <= tmp_s_fu_240_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            x_V_address0 <= tmp_fu_167_p1(4 - 1 downto 0);
        else 
            x_V_address0 <= "XXXX";
        end if; 
    end process;


    x_V_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            x_V_ce0 <= ap_const_logic_1;
        else 
            x_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
