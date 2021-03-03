-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity conv_2d_large_cl_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    data_V_ce0 : OUT STD_LOGIC;
    data_V_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    res_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    res_V_ce0 : OUT STD_LOGIC;
    res_V_we0 : OUT STD_LOGIC;
    res_V_d0 : OUT STD_LOGIC_VECTOR (13 downto 0) );
end;


architecture behav of conv_2d_large_cl_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv13_E8 : STD_LOGIC_VECTOR (12 downto 0) := "0000011101000";
    constant ap_const_lv5_1D : STD_LOGIC_VECTOR (4 downto 0) := "11101";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal next_mul_fu_155_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal next_mul_reg_237 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_7_fu_167_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_7_reg_245 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_1_fu_179_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_1_reg_253 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_135_cast_cast_fu_193_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_135_cast_cast_reg_258 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_dense_large_rf_gt_ni_1_fu_134_ap_ready : STD_LOGIC;
    signal grp_dense_large_rf_gt_ni_1_fu_134_ap_done : STD_LOGIC;
    signal k_1_fu_207_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal k_1_reg_266 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_79_fu_222_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_79_reg_271 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_78_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_V_assign_q0 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_V_assign_load_reg_281 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal data_col_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal data_col_V_ce0 : STD_LOGIC;
    signal data_col_V_we0 : STD_LOGIC;
    signal data_col_V_q0 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_V_assign_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal res_V_assign_ce0 : STD_LOGIC;
    signal res_V_assign_we0 : STD_LOGIC;
    signal grp_dense_large_rf_gt_ni_1_fu_134_ap_start : STD_LOGIC;
    signal grp_dense_large_rf_gt_ni_1_fu_134_ap_idle : STD_LOGIC;
    signal grp_dense_large_rf_gt_ni_1_fu_134_data_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_dense_large_rf_gt_ni_1_fu_134_data_V_ce0 : STD_LOGIC;
    signal grp_dense_large_rf_gt_ni_1_fu_134_res_V_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_dense_large_rf_gt_ni_1_fu_134_res_V_ce0 : STD_LOGIC;
    signal grp_dense_large_rf_gt_ni_1_fu_134_res_V_we0 : STD_LOGIC;
    signal grp_dense_large_rf_gt_ni_1_fu_134_res_V_d0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_im2col_2d_cl_1_fu_144_ap_start : STD_LOGIC;
    signal grp_im2col_2d_cl_1_fu_144_ap_done : STD_LOGIC;
    signal grp_im2col_2d_cl_1_fu_144_ap_idle : STD_LOGIC;
    signal grp_im2col_2d_cl_1_fu_144_ap_ready : STD_LOGIC;
    signal grp_im2col_2d_cl_1_fu_144_data_V_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_im2col_2d_cl_1_fu_144_data_V_ce0 : STD_LOGIC;
    signal grp_im2col_2d_cl_1_fu_144_data_col_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_im2col_2d_cl_1_fu_144_data_col_V_ce0 : STD_LOGIC;
    signal grp_im2col_2d_cl_1_fu_144_data_col_V_we0 : STD_LOGIC;
    signal grp_im2col_2d_cl_1_fu_144_data_col_V_d0 : STD_LOGIC_VECTOR (13 downto 0);
    signal i_reg_87 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_173_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal phi_mul_reg_99 : STD_LOGIC_VECTOR (12 downto 0);
    signal j_reg_111 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_fu_161_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_reg_123 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal grp_dense_large_rf_gt_ni_1_fu_134_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_im2col_2d_cl_1_fu_144_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_81_fu_228_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_80_fu_233_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_77_fu_185_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal k_cast4_cast_fu_197_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp1_fu_213_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp1_cast_fu_218_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);

    component dense_large_rf_gt_ni_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        data_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        data_V_ce0 : OUT STD_LOGIC;
        data_V_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
        res_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
        res_V_ce0 : OUT STD_LOGIC;
        res_V_we0 : OUT STD_LOGIC;
        res_V_d0 : OUT STD_LOGIC_VECTOR (13 downto 0) );
    end component;


    component im2col_2d_cl_1 IS
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
    end component;


    component conv_2d_large_cl_1_data_col_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (13 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (13 downto 0) );
    end component;


    component dense_large_rf_gt_ni_1_acc_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (13 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (13 downto 0) );
    end component;



begin
    data_col_V_U : component conv_2d_large_cl_1_data_col_V
    generic map (
        DataWidth => 14,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => data_col_V_address0,
        ce0 => data_col_V_ce0,
        we0 => data_col_V_we0,
        d0 => grp_im2col_2d_cl_1_fu_144_data_col_V_d0,
        q0 => data_col_V_q0);

    res_V_assign_U : component dense_large_rf_gt_ni_1_acc_V
    generic map (
        DataWidth => 14,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => res_V_assign_address0,
        ce0 => res_V_assign_ce0,
        we0 => res_V_assign_we0,
        d0 => grp_dense_large_rf_gt_ni_1_fu_134_res_V_d0,
        q0 => res_V_assign_q0);

    grp_dense_large_rf_gt_ni_1_fu_134 : component dense_large_rf_gt_ni_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_dense_large_rf_gt_ni_1_fu_134_ap_start,
        ap_done => grp_dense_large_rf_gt_ni_1_fu_134_ap_done,
        ap_idle => grp_dense_large_rf_gt_ni_1_fu_134_ap_idle,
        ap_ready => grp_dense_large_rf_gt_ni_1_fu_134_ap_ready,
        data_V_address0 => grp_dense_large_rf_gt_ni_1_fu_134_data_V_address0,
        data_V_ce0 => grp_dense_large_rf_gt_ni_1_fu_134_data_V_ce0,
        data_V_q0 => data_col_V_q0,
        res_V_address0 => grp_dense_large_rf_gt_ni_1_fu_134_res_V_address0,
        res_V_ce0 => grp_dense_large_rf_gt_ni_1_fu_134_res_V_ce0,
        res_V_we0 => grp_dense_large_rf_gt_ni_1_fu_134_res_V_we0,
        res_V_d0 => grp_dense_large_rf_gt_ni_1_fu_134_res_V_d0);

    grp_im2col_2d_cl_1_fu_144 : component im2col_2d_cl_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_im2col_2d_cl_1_fu_144_ap_start,
        ap_done => grp_im2col_2d_cl_1_fu_144_ap_done,
        ap_idle => grp_im2col_2d_cl_1_fu_144_ap_idle,
        ap_ready => grp_im2col_2d_cl_1_fu_144_ap_ready,
        data_V_address0 => grp_im2col_2d_cl_1_fu_144_data_V_address0,
        data_V_ce0 => grp_im2col_2d_cl_1_fu_144_data_V_ce0,
        data_V_q0 => data_V_q0,
        data_col_V_address0 => grp_im2col_2d_cl_1_fu_144_data_col_V_address0,
        data_col_V_ce0 => grp_im2col_2d_cl_1_fu_144_data_col_V_ce0,
        data_col_V_we0 => grp_im2col_2d_cl_1_fu_144_data_col_V_we0,
        data_col_V_d0 => grp_im2col_2d_cl_1_fu_144_data_col_V_d0,
        row => i_reg_87,
        col => j_reg_111);





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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_161_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_dense_large_rf_gt_ni_1_fu_134_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_dense_large_rf_gt_ni_1_fu_134_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    grp_dense_large_rf_gt_ni_1_fu_134_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_dense_large_rf_gt_ni_1_fu_134_ap_ready = ap_const_logic_1)) then 
                    grp_dense_large_rf_gt_ni_1_fu_134_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_im2col_2d_cl_1_fu_144_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_im2col_2d_cl_1_fu_144_ap_start_reg <= ap_const_logic_0;
            else
                if (((tmp_s_fu_173_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                    grp_im2col_2d_cl_1_fu_144_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_im2col_2d_cl_1_fu_144_ap_ready = ap_const_logic_1)) then 
                    grp_im2col_2d_cl_1_fu_144_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_87_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_87 <= ap_const_lv5_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_s_fu_173_p2 = ap_const_lv1_1))) then 
                i_reg_87 <= i_7_reg_245;
            end if; 
        end if;
    end process;

    j_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_78_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                j_reg_111 <= j_1_reg_253;
            elsif (((tmp_fu_161_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_111 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    k_reg_123_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                k_reg_123 <= k_1_reg_266;
            elsif (((grp_dense_large_rf_gt_ni_1_fu_134_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                k_reg_123 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                phi_mul_reg_99 <= ap_const_lv13_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_s_fu_173_p2 = ap_const_lv1_1))) then 
                phi_mul_reg_99 <= next_mul_reg_237;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_7_reg_245 <= i_7_fu_167_p2;
                next_mul_reg_237 <= next_mul_fu_155_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_1_reg_253 <= j_1_fu_179_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                k_1_reg_266 <= k_1_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                res_V_assign_load_reg_281 <= res_V_assign_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_dense_large_rf_gt_ni_1_fu_134_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    tmp_135_cast_cast_reg_258(7 downto 3) <= tmp_135_cast_cast_fu_193_p1(7 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_78_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                tmp_79_reg_271 <= tmp_79_fu_222_p2;
            end if;
        end if;
    end process;
    tmp_135_cast_cast_reg_258(2 downto 0) <= "000";
    tmp_135_cast_cast_reg_258(8) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state6, grp_dense_large_rf_gt_ni_1_fu_134_ap_done, ap_CS_fsm_state7, tmp_78_fu_201_p2, grp_im2col_2d_cl_1_fu_144_ap_done, tmp_s_fu_173_p2, tmp_fu_161_p2, ap_CS_fsm_state4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_161_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_s_fu_173_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_im2col_2d_cl_1_fu_144_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((grp_dense_large_rf_gt_ni_1_fu_134_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                if (((tmp_78_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
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
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, tmp_fu_161_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_161_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_161_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_161_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    data_V_address0 <= grp_im2col_2d_cl_1_fu_144_data_V_address0;
    data_V_ce0 <= grp_im2col_2d_cl_1_fu_144_data_V_ce0;

    data_col_V_address0_assign_proc : process(ap_CS_fsm_state6, grp_dense_large_rf_gt_ni_1_fu_134_data_V_address0, grp_im2col_2d_cl_1_fu_144_data_col_V_address0, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            data_col_V_address0 <= grp_im2col_2d_cl_1_fu_144_data_col_V_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            data_col_V_address0 <= grp_dense_large_rf_gt_ni_1_fu_134_data_V_address0;
        else 
            data_col_V_address0 <= "XXXX";
        end if; 
    end process;


    data_col_V_ce0_assign_proc : process(ap_CS_fsm_state6, grp_dense_large_rf_gt_ni_1_fu_134_data_V_ce0, grp_im2col_2d_cl_1_fu_144_data_col_V_ce0, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            data_col_V_ce0 <= grp_im2col_2d_cl_1_fu_144_data_col_V_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            data_col_V_ce0 <= grp_dense_large_rf_gt_ni_1_fu_134_data_V_ce0;
        else 
            data_col_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_col_V_we0_assign_proc : process(grp_im2col_2d_cl_1_fu_144_data_col_V_we0, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            data_col_V_we0 <= grp_im2col_2d_cl_1_fu_144_data_col_V_we0;
        else 
            data_col_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_dense_large_rf_gt_ni_1_fu_134_ap_start <= grp_dense_large_rf_gt_ni_1_fu_134_ap_start_reg;
    grp_im2col_2d_cl_1_fu_144_ap_start <= grp_im2col_2d_cl_1_fu_144_ap_start_reg;
    i_7_fu_167_p2 <= std_logic_vector(unsigned(i_reg_87) + unsigned(ap_const_lv5_1));
    j_1_fu_179_p2 <= std_logic_vector(unsigned(j_reg_111) + unsigned(ap_const_lv5_1));
    k_1_fu_207_p2 <= std_logic_vector(unsigned(k_reg_123) + unsigned(ap_const_lv4_1));
    k_cast4_cast_fu_197_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_123),9));
    next_mul_fu_155_p2 <= std_logic_vector(unsigned(phi_mul_reg_99) + unsigned(ap_const_lv13_E8));
    res_V_address0 <= tmp_80_fu_233_p1(13 - 1 downto 0);

    res_V_assign_address0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state7, grp_dense_large_rf_gt_ni_1_fu_134_res_V_address0, tmp_81_fu_228_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            res_V_assign_address0 <= tmp_81_fu_228_p1(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            res_V_assign_address0 <= grp_dense_large_rf_gt_ni_1_fu_134_res_V_address0;
        else 
            res_V_assign_address0 <= "XXX";
        end if; 
    end process;


    res_V_assign_ce0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state7, grp_dense_large_rf_gt_ni_1_fu_134_res_V_ce0)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            res_V_assign_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            res_V_assign_ce0 <= grp_dense_large_rf_gt_ni_1_fu_134_res_V_ce0;
        else 
            res_V_assign_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    res_V_assign_we0_assign_proc : process(ap_CS_fsm_state6, grp_dense_large_rf_gt_ni_1_fu_134_res_V_we0)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            res_V_assign_we0 <= grp_dense_large_rf_gt_ni_1_fu_134_res_V_we0;
        else 
            res_V_assign_we0 <= ap_const_logic_0;
        end if; 
    end process;


    res_V_ce0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            res_V_ce0 <= ap_const_logic_1;
        else 
            res_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    res_V_d0 <= res_V_assign_load_reg_281;

    res_V_we0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            res_V_we0 <= ap_const_logic_1;
        else 
            res_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp1_cast_fu_218_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp1_fu_213_p2),13));
    tmp1_fu_213_p2 <= std_logic_vector(unsigned(tmp_135_cast_cast_reg_258) + unsigned(k_cast4_cast_fu_197_p1));
    tmp_135_cast_cast_fu_193_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_77_fu_185_p3),9));
    tmp_77_fu_185_p3 <= (j_reg_111 & ap_const_lv3_0);
    tmp_78_fu_201_p2 <= "1" when (k_reg_123 = ap_const_lv4_8) else "0";
    tmp_79_fu_222_p2 <= std_logic_vector(unsigned(tmp1_cast_fu_218_p1) + unsigned(phi_mul_reg_99));
    tmp_80_fu_233_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_79_reg_271),64));
    tmp_81_fu_228_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_123),64));
    tmp_fu_161_p2 <= "1" when (i_reg_87 = ap_const_lv5_1D) else "0";
    tmp_s_fu_173_p2 <= "1" when (j_reg_111 = ap_const_lv5_1D) else "0";
end behav;
