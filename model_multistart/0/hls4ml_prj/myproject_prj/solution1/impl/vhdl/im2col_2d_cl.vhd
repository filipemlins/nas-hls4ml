-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity im2col_2d_cl is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    data_V_ce0 : OUT STD_LOGIC;
    data_V_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    data_col_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    data_col_V_ce0 : OUT STD_LOGIC;
    data_col_V_we0 : OUT STD_LOGIC;
    data_col_V_d0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    row : IN STD_LOGIC_VECTOR (3 downto 0);
    col : IN STD_LOGIC_VECTOR (3 downto 0) );
end;


architecture behav of im2col_2d_cl is 
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
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv5_D : STD_LOGIC_VECTOR (4 downto 0) := "01101";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv5_E : STD_LOGIC_VECTOR (4 downto 0) := "01110";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal row_cast_fu_189_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal row_cast_reg_360 : STD_LOGIC_VECTOR (4 downto 0);
    signal col_cast_fu_193_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal col_cast_reg_365 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_0106_rec_cast_cast_fu_197_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_0106_rec_cast_cast_reg_370 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal channel_1_fu_201_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal channel_1_reg_375 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_rec_fu_213_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_rec_reg_383 : STD_LOGIC_VECTOR (3 downto 0);
    signal index_3_fu_219_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal index_3_reg_388 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal kernel_row_1_fu_235_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal kernel_row_1_reg_396 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_39_fu_246_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_39_reg_401 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_s_fu_229_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_40_fu_252_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_40_reg_406 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_41_fu_278_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_41_reg_410 : STD_LOGIC_VECTOR (11 downto 0);
    signal kernel_col_1_fu_294_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal kernel_col_1_reg_418 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_44_fu_305_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_44_reg_423 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_42_fu_288_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_45_fu_311_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_45_reg_427 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp1_fu_332_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp1_reg_432 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_fu_345_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sum_reg_437 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal data_V_load_reg_447 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal index_4_fu_354_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal p_0106_rec_reg_111 : STD_LOGIC_VECTOR (3 downto 0);
    signal index_reg_122 : STD_LOGIC_VECTOR (5 downto 0);
    signal channel_reg_134 : STD_LOGIC_VECTOR (3 downto 0);
    signal index_1_reg_145 : STD_LOGIC_VECTOR (5 downto 0);
    signal kernel_row_reg_156 : STD_LOGIC_VECTOR (1 downto 0);
    signal index_2_reg_167 : STD_LOGIC_VECTOR (5 downto 0);
    signal kernel_col_reg_178 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_43_fu_337_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sum_cast_fu_350_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal kernel_row_cast_fu_225_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal input_row_fu_241_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_shl9_fu_266_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl_fu_258_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl9_cast_fu_274_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal kernel_col_cast_fu_284_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal input_col_fu_300_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_36_fu_316_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_46_fu_320_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_79_cast_cast_cas_fu_328_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp1_cast_fu_342_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);


begin




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


    channel_reg_134_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_s_fu_229_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                channel_reg_134 <= channel_1_reg_375;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                channel_reg_134 <= ap_const_lv4_8;
            end if; 
        end if;
    end process;

    index_1_reg_145_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_42_fu_288_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                index_1_reg_145 <= tmp_39_reg_401;
            elsif (((tmp_fu_207_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                index_1_reg_145 <= index_reg_122;
            end if; 
        end if;
    end process;

    index_2_reg_167_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                index_2_reg_167 <= index_4_fu_354_p2;
            elsif (((tmp_s_fu_229_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                index_2_reg_167 <= index_1_reg_145;
            end if; 
        end if;
    end process;

    index_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_s_fu_229_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                index_reg_122 <= index_3_reg_388;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                index_reg_122 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    kernel_col_reg_178_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                kernel_col_reg_178 <= kernel_col_1_reg_418;
            elsif (((tmp_s_fu_229_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                kernel_col_reg_178 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    kernel_row_reg_156_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_42_fu_288_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                kernel_row_reg_156 <= kernel_row_1_reg_396;
            elsif (((tmp_fu_207_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                kernel_row_reg_156 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    p_0106_rec_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_s_fu_229_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_0106_rec_reg_111 <= p_rec_reg_383;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_0106_rec_reg_111 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                channel_1_reg_375 <= channel_1_fu_201_p2;
                    p_0106_rec_cast_cast_reg_370(3 downto 0) <= p_0106_rec_cast_cast_fu_197_p1(3 downto 0);
                p_rec_reg_383 <= p_rec_fu_213_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    col_cast_reg_365(3 downto 0) <= col_cast_fu_193_p1(3 downto 0);
                    row_cast_reg_360(3 downto 0) <= row_cast_fu_189_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                data_V_load_reg_447 <= data_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_207_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                index_3_reg_388 <= index_3_fu_219_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                kernel_col_1_reg_418 <= kernel_col_1_fu_294_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                kernel_row_1_reg_396 <= kernel_row_1_fu_235_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                sum_reg_437 <= sum_fu_345_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_44_fu_305_p2 = ap_const_lv1_1) and (tmp_42_fu_288_p2 = ap_const_lv1_0) and (tmp_40_reg_406 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                tmp1_reg_432 <= tmp1_fu_332_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_s_fu_229_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_39_reg_401 <= tmp_39_fu_246_p2;
                tmp_40_reg_406 <= tmp_40_fu_252_p2;
                    tmp_41_reg_410(11 downto 4) <= tmp_41_fu_278_p2(11 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_42_fu_288_p2 = ap_const_lv1_0) and (tmp_40_reg_406 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                tmp_44_reg_423 <= tmp_44_fu_305_p2;
                    tmp_45_reg_427(5 downto 0) <= tmp_45_fu_311_p1(5 downto 0);
            end if;
        end if;
    end process;
    row_cast_reg_360(4) <= '0';
    col_cast_reg_365(4) <= '0';
    p_0106_rec_cast_cast_reg_370(7 downto 4) <= "0000";
    tmp_41_reg_410(3 downto 0) <= "0000";
    tmp_45_reg_427(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_207_p2, ap_CS_fsm_state3, tmp_s_fu_229_p2, tmp_40_reg_406, ap_CS_fsm_state4, tmp_44_fu_305_p2, tmp_42_fu_288_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_fu_207_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((tmp_s_fu_229_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((tmp_42_fu_288_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (((tmp_40_reg_406 = ap_const_lv1_1) and (tmp_42_fu_288_p2 = ap_const_lv1_0)) or ((tmp_42_fu_288_p2 = ap_const_lv1_0) and (tmp_44_fu_305_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_207_p2)
    begin
        if ((((tmp_fu_207_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_207_p2)
    begin
        if (((tmp_fu_207_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    channel_1_fu_201_p2 <= std_logic_vector(unsigned(channel_reg_134) + unsigned(ap_const_lv4_F));
    col_cast_fu_193_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col),5));
    data_V_address0 <= sum_cast_fu_350_p1(11 - 1 downto 0);

    data_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            data_V_ce0 <= ap_const_logic_1;
        else 
            data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_col_V_address0_assign_proc : process(tmp_40_reg_406, ap_CS_fsm_state4, tmp_44_fu_305_p2, tmp_42_fu_288_p2, tmp_45_fu_311_p1, tmp_45_reg_427, ap_CS_fsm_state8, tmp_43_fu_337_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            data_col_V_address0 <= tmp_45_reg_427(5 - 1 downto 0);
        elsif (((tmp_40_reg_406 = ap_const_lv1_1) and (tmp_42_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            data_col_V_address0 <= tmp_43_fu_337_p1(5 - 1 downto 0);
        elsif (((tmp_42_fu_288_p2 = ap_const_lv1_0) and (tmp_44_fu_305_p2 = ap_const_lv1_0) and (tmp_40_reg_406 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            data_col_V_address0 <= tmp_45_fu_311_p1(5 - 1 downto 0);
        else 
            data_col_V_address0 <= "XXXXX";
        end if; 
    end process;


    data_col_V_ce0_assign_proc : process(tmp_40_reg_406, ap_CS_fsm_state4, tmp_44_fu_305_p2, tmp_42_fu_288_p2, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or ((tmp_42_fu_288_p2 = ap_const_lv1_0) and (tmp_44_fu_305_p2 = ap_const_lv1_0) and (tmp_40_reg_406 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((tmp_40_reg_406 = ap_const_lv1_1) and (tmp_42_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            data_col_V_ce0 <= ap_const_logic_1;
        else 
            data_col_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_col_V_d0_assign_proc : process(tmp_40_reg_406, ap_CS_fsm_state4, tmp_44_fu_305_p2, tmp_42_fu_288_p2, data_V_load_reg_447, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            data_col_V_d0 <= data_V_load_reg_447;
        elsif ((((tmp_42_fu_288_p2 = ap_const_lv1_0) and (tmp_44_fu_305_p2 = ap_const_lv1_0) and (tmp_40_reg_406 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((tmp_40_reg_406 = ap_const_lv1_1) and (tmp_42_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            data_col_V_d0 <= ap_const_lv14_0;
        else 
            data_col_V_d0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    data_col_V_we0_assign_proc : process(tmp_40_reg_406, ap_CS_fsm_state4, tmp_44_fu_305_p2, tmp_44_reg_423, tmp_42_fu_288_p2, ap_CS_fsm_state8)
    begin
        if ((((tmp_44_reg_423 = ap_const_lv1_1) and (tmp_40_reg_406 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)) or ((tmp_42_fu_288_p2 = ap_const_lv1_0) and (tmp_44_fu_305_p2 = ap_const_lv1_0) and (tmp_40_reg_406 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((tmp_40_reg_406 = ap_const_lv1_1) and (tmp_42_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            data_col_V_we0 <= ap_const_logic_1;
        else 
            data_col_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    index_3_fu_219_p2 <= std_logic_vector(unsigned(index_reg_122) + unsigned(ap_const_lv6_4));
    index_4_fu_354_p2 <= std_logic_vector(unsigned(index_2_reg_167) + unsigned(ap_const_lv6_1));
    input_col_fu_300_p2 <= std_logic_vector(unsigned(col_cast_reg_365) + unsigned(kernel_col_cast_fu_284_p1));
    input_row_fu_241_p2 <= std_logic_vector(unsigned(kernel_row_cast_fu_225_p1) + unsigned(row_cast_reg_360));
    kernel_col_1_fu_294_p2 <= std_logic_vector(unsigned(kernel_col_reg_178) + unsigned(ap_const_lv2_1));
    kernel_col_cast_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(kernel_col_reg_178),5));
    kernel_row_1_fu_235_p2 <= std_logic_vector(unsigned(kernel_row_reg_156) + unsigned(ap_const_lv2_1));
    kernel_row_cast_fu_225_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(kernel_row_reg_156),5));
    p_0106_rec_cast_cast_fu_197_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_0106_rec_reg_111),8));
    p_rec_fu_213_p2 <= std_logic_vector(unsigned(p_0106_rec_reg_111) + unsigned(ap_const_lv4_1));
    p_shl9_cast_fu_274_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl9_fu_266_p3),12));
    p_shl9_fu_266_p3 <= (input_row_fu_241_p2 & ap_const_lv4_0);
    p_shl_fu_258_p3 <= (input_row_fu_241_p2 & ap_const_lv7_0);
    row_cast_fu_189_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(row),5));
    sum_cast_fu_350_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sum_reg_437),64));
    sum_fu_345_p2 <= std_logic_vector(unsigned(tmp_41_reg_410) + unsigned(tmp1_cast_fu_342_p1));
    tmp1_cast_fu_342_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp1_reg_432),12));
    tmp1_fu_332_p2 <= std_logic_vector(unsigned(p_0106_rec_cast_cast_reg_370) + unsigned(tmp_79_cast_cast_cas_fu_328_p1));
    tmp_36_fu_316_p1 <= input_col_fu_300_p2(4 - 1 downto 0);
    tmp_39_fu_246_p2 <= std_logic_vector(unsigned(index_1_reg_145) + unsigned(ap_const_lv6_2));
    tmp_40_fu_252_p2 <= "1" when (unsigned(input_row_fu_241_p2) > unsigned(ap_const_lv5_D)) else "0";
    tmp_41_fu_278_p2 <= std_logic_vector(unsigned(p_shl_fu_258_p3) - unsigned(p_shl9_cast_fu_274_p1));
    tmp_42_fu_288_p2 <= "1" when (kernel_col_reg_178 = ap_const_lv2_2) else "0";
    tmp_43_fu_337_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(index_2_reg_167),64));
    tmp_44_fu_305_p2 <= "1" when (unsigned(input_col_fu_300_p2) < unsigned(ap_const_lv5_E)) else "0";
    tmp_45_fu_311_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(index_2_reg_167),64));
    tmp_46_fu_320_p3 <= (tmp_36_fu_316_p1 & ap_const_lv3_0);
    tmp_79_cast_cast_cas_fu_328_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_46_fu_320_p3),8));
    tmp_fu_207_p2 <= "1" when (channel_reg_134 = ap_const_lv4_0) else "0";
    tmp_s_fu_229_p2 <= "1" when (kernel_row_reg_156 = ap_const_lv2_2) else "0";
end behav;
