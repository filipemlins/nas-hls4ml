-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity im2col_2d_cl_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    data_V_ce0 : OUT STD_LOGIC;
    data_V_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    data_col_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_col_V_ce0 : OUT STD_LOGIC;
    data_col_V_we0 : OUT STD_LOGIC;
    data_col_V_d0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    row : IN STD_LOGIC_VECTOR (4 downto 0);
    col : IN STD_LOGIC_VECTOR (4 downto 0) );
end;


architecture behav of im2col_2d_cl_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal row_cast_fu_136_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal row_cast_reg_245 : STD_LOGIC_VECTOR (5 downto 0);
    signal col_cast_fu_140_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal col_cast_reg_250 : STD_LOGIC_VECTOR (5 downto 0);
    signal kernel_row_2_fu_154_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal kernel_row_2_reg_258 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_30_fu_165_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_30_reg_263 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_268 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_31_fu_179_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_31_reg_272 : STD_LOGIC_VECTOR (10 downto 0);
    signal kernel_col_2_fu_197_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal kernel_col_2_reg_280 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_34_fu_212_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_34_reg_285 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_32_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_35_fu_220_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_35_reg_289 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_36_fu_225_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_36_reg_294 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal data_V_load_reg_304 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal index_4_fu_239_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal index_1_reg_91 : STD_LOGIC_VECTOR (4 downto 0);
    signal kernel_row_reg_103 : STD_LOGIC_VECTOR (2 downto 0);
    signal index_2_reg_114 : STD_LOGIC_VECTOR (4 downto 0);
    signal kernel_col_reg_125 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_33_fu_230_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_37_fu_235_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal kernel_row_cast_fu_144_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal input_row_fu_160_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal kernel_col_cast_fu_187_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal input_col_fu_203_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal input_col_cast_cast_fu_208_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);


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


    index_1_reg_91_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_32_fu_191_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                index_1_reg_91 <= tmp_30_reg_263;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                index_1_reg_91 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    index_2_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                index_2_reg_114 <= index_4_fu_239_p2;
            elsif (((tmp_s_fu_148_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                index_2_reg_114 <= index_1_reg_91;
            end if; 
        end if;
    end process;

    kernel_col_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                kernel_col_reg_125 <= kernel_col_2_reg_280;
            elsif (((tmp_s_fu_148_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                kernel_col_reg_125 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    kernel_row_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_32_fu_191_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                kernel_row_reg_103 <= kernel_row_2_reg_258;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                kernel_row_reg_103 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    col_cast_reg_250(4 downto 0) <= col_cast_fu_140_p1(4 downto 0);
                    row_cast_reg_245(4 downto 0) <= row_cast_fu_136_p1(4 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                data_V_load_reg_304 <= data_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                kernel_col_2_reg_280 <= kernel_col_2_fu_197_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                kernel_row_2_reg_258 <= kernel_row_2_fu_154_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_s_fu_148_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_30_reg_263 <= tmp_30_fu_165_p2;
                    tmp_31_reg_272(10 downto 5) <= tmp_31_fu_179_p3(10 downto 5);
                tmp_reg_268 <= input_row_fu_160_p2(5 downto 5);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_32_fu_191_p2 = ap_const_lv1_0) and (tmp_reg_268 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_34_reg_285 <= input_col_fu_203_p2(5 downto 5);
                    tmp_35_reg_289(4 downto 0) <= tmp_35_fu_220_p1(4 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_32_fu_191_p2 = ap_const_lv1_0) and (tmp_34_fu_212_p3 = ap_const_lv1_0) and (tmp_reg_268 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_36_reg_294 <= tmp_36_fu_225_p2;
            end if;
        end if;
    end process;
    row_cast_reg_245(5) <= '0';
    col_cast_reg_250(5) <= '0';
    tmp_31_reg_272(4 downto 0) <= "00000";
    tmp_35_reg_289(63 downto 5) <= "00000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_s_fu_148_p2, tmp_reg_268, ap_CS_fsm_state3, tmp_34_fu_212_p3, tmp_32_fu_191_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_s_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((tmp_32_fu_191_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (((tmp_reg_268 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0)) or ((tmp_34_fu_212_p3 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_s_fu_148_p2)
    begin
        if ((((tmp_s_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_s_fu_148_p2)
    begin
        if (((tmp_s_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    col_cast_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col),6));
    data_V_address0 <= tmp_37_fu_235_p1(10 - 1 downto 0);

    data_V_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            data_V_ce0 <= ap_const_logic_1;
        else 
            data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_col_V_address0_assign_proc : process(tmp_reg_268, ap_CS_fsm_state3, tmp_34_fu_212_p3, tmp_32_fu_191_p2, tmp_35_fu_220_p1, tmp_35_reg_289, ap_CS_fsm_state6, tmp_33_fu_230_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            data_col_V_address0 <= tmp_35_reg_289(4 - 1 downto 0);
        elsif (((tmp_reg_268 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            data_col_V_address0 <= tmp_33_fu_230_p1(4 - 1 downto 0);
        elsif (((tmp_34_fu_212_p3 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0) and (tmp_reg_268 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            data_col_V_address0 <= tmp_35_fu_220_p1(4 - 1 downto 0);
        else 
            data_col_V_address0 <= "XXXX";
        end if; 
    end process;


    data_col_V_ce0_assign_proc : process(tmp_reg_268, ap_CS_fsm_state3, tmp_34_fu_212_p3, tmp_32_fu_191_p2, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or ((tmp_34_fu_212_p3 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0) and (tmp_reg_268 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((tmp_reg_268 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            data_col_V_ce0 <= ap_const_logic_1;
        else 
            data_col_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_col_V_d0_assign_proc : process(tmp_reg_268, ap_CS_fsm_state3, tmp_34_fu_212_p3, tmp_32_fu_191_p2, data_V_load_reg_304, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            data_col_V_d0 <= data_V_load_reg_304;
        elsif ((((tmp_34_fu_212_p3 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0) and (tmp_reg_268 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((tmp_reg_268 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            data_col_V_d0 <= ap_const_lv14_0;
        else 
            data_col_V_d0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    data_col_V_we0_assign_proc : process(tmp_reg_268, ap_CS_fsm_state3, tmp_34_fu_212_p3, tmp_34_reg_285, tmp_32_fu_191_p2, ap_CS_fsm_state6)
    begin
        if ((((tmp_34_reg_285 = ap_const_lv1_0) and (tmp_reg_268 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((tmp_34_fu_212_p3 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0) and (tmp_reg_268 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((tmp_reg_268 = ap_const_lv1_1) and (tmp_32_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            data_col_V_we0 <= ap_const_logic_1;
        else 
            data_col_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    index_4_fu_239_p2 <= std_logic_vector(unsigned(index_2_reg_114) + unsigned(ap_const_lv5_1));
    input_col_cast_cast_fu_208_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_col_fu_203_p2),11));
    input_col_fu_203_p2 <= std_logic_vector(unsigned(col_cast_reg_250) + unsigned(kernel_col_cast_fu_187_p1));
    input_row_fu_160_p2 <= std_logic_vector(unsigned(kernel_row_cast_fu_144_p1) + unsigned(row_cast_reg_245));
    kernel_col_2_fu_197_p2 <= std_logic_vector(unsigned(kernel_col_reg_125) + unsigned(ap_const_lv3_1));
    kernel_col_cast_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(kernel_col_reg_125),6));
    kernel_row_2_fu_154_p2 <= std_logic_vector(unsigned(kernel_row_reg_103) + unsigned(ap_const_lv3_1));
    kernel_row_cast_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(kernel_row_reg_103),6));
    row_cast_fu_136_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(row),6));
    tmp_30_fu_165_p2 <= std_logic_vector(unsigned(index_1_reg_91) + unsigned(ap_const_lv5_4));
    tmp_31_fu_179_p3 <= (input_row_fu_160_p2 & ap_const_lv5_0);
    tmp_32_fu_191_p2 <= "1" when (kernel_col_reg_125 = ap_const_lv3_4) else "0";
    tmp_33_fu_230_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(index_2_reg_114),64));
    tmp_34_fu_212_p3 <= input_col_fu_203_p2(5 downto 5);
    tmp_35_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(index_2_reg_114),64));
    tmp_36_fu_225_p2 <= std_logic_vector(unsigned(tmp_31_reg_272) + unsigned(input_col_cast_cast_fu_208_p1));
    tmp_37_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_36_reg_294),64));
    tmp_s_fu_148_p2 <= "1" when (kernel_row_reg_103 = ap_const_lv3_4) else "0";
end behav;
