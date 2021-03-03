-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dense_large_rf_gt_ni is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    data_V_ce0 : OUT STD_LOGIC;
    data_V_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    res_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    res_V_ce0 : OUT STD_LOGIC;
    res_V_we0 : OUT STD_LOGIC;
    res_V_d0 : OUT STD_LOGIC_VECTOR (13 downto 0) );
end;


architecture behav of dense_large_rf_gt_ni is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (15 downto 0) := "0000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (15 downto 0) := "0000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (15 downto 0) := "0000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (15 downto 0) := "0000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (15 downto 0) := "0000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (15 downto 0) := "0000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (15 downto 0) := "0001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (15 downto 0) := "0010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (15 downto 0) := "0100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (15 downto 0) := "1000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv14_2000 : STD_LOGIC_VECTOR (13 downto 0) := "10000000000000";
    constant ap_const_lv14_1FFF : STD_LOGIC_VECTOR (13 downto 0) := "01111111111111";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv10_100 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_const_lv5_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv27_0 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal outidx6_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal outidx6_ce0 : STD_LOGIC;
    signal outidx6_q0 : STD_LOGIC_VECTOR (2 downto 0);
    signal w7_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal w7_V_ce0 : STD_LOGIC;
    signal w7_V_q0 : STD_LOGIC_VECTOR (24 downto 0);
    signal acc_V_q0 : STD_LOGIC_VECTOR (13 downto 0);
    signal reg_269 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_product_fu_263_ap_ready : STD_LOGIC;
    signal grp_product_fu_263_ap_done : STD_LOGIC;
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal iacc_1_fu_280_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal w_index_cast_fu_291_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal w_index_cast_reg_546 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ir_fu_301_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ir_reg_554 : STD_LOGIC_VECTOR (8 downto 0);
    signal exitcond_fu_295_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_index_reg_564 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal out_index_cast_fu_317_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal data_V_load_reg_579 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_91_fu_320_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_91_reg_584 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal im_1_fu_328_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal im_1_reg_588 : STD_LOGIC_VECTOR (1 downto 0);
    signal w7_V_load_reg_598 : STD_LOGIC_VECTOR (24 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_96_fu_381_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_96_reg_603 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_99_fu_399_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_99_reg_608 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal acc_V_addr_2_reg_613 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal grp_product_fu_263_ap_return : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Val2_5_reg_618 : STD_LOGIC_VECTOR (13 downto 0);
    signal overflow_fu_449_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal overflow_reg_624 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal underflow_fu_461_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_reg_628 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge6_fu_467_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge6_reg_632 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_index_1_fu_473_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal out_index_1_fu_487_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_102_fu_479_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal in_index_1_fu_493_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal in_index_1_reg_649 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_103_reg_654 : STD_LOGIC_VECTOR (26 downto 0);
    signal p_s_fu_514_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ires_1_fu_527_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ires_1_reg_667 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal tmp_70_fu_533_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_70_reg_672 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_68_fu_521_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal acc_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal acc_V_ce0 : STD_LOGIC;
    signal acc_V_we0 : STD_LOGIC;
    signal acc_V_d0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_product_fu_263_ap_start : STD_LOGIC;
    signal grp_product_fu_263_ap_idle : STD_LOGIC;
    signal iacc_reg_187 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond4_fu_274_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_index_reg_198 : STD_LOGIC_VECTOR (8 downto 0);
    signal in_index_reg_209 : STD_LOGIC_VECTOR (31 downto 0);
    signal im_reg_221 : STD_LOGIC_VECTOR (1 downto 0);
    signal out_index1_reg_232 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_index1_reg_242 : STD_LOGIC_VECTOR (9 downto 0);
    signal ires_reg_252 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal grp_product_fu_263_ap_start_reg : STD_LOGIC := '0';
    signal tmp_fu_286_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_307_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_67_fu_312_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_338_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_71_fu_403_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_7_fu_429_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_92_fu_334_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_13_fu_343_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_93_fu_353_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_shl8_fu_361_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_94_fu_369_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_95_fu_377_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal w7_V_load_cast_fu_387_p1 : STD_LOGIC_VECTOR (27 downto 0);
    signal tmp_97_fu_390_p1 : STD_LOGIC_VECTOR (27 downto 0);
    signal tmp_98_fu_393_p2 : STD_LOGIC_VECTOR (27 downto 0);
    signal lhs_V_fu_408_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal rhs_V_fu_412_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal ret_V_fu_415_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_s_fu_421_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_13_fu_435_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_15_fu_443_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_72_fu_455_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_fu_509_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (15 downto 0);

    component product IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        a_V : IN STD_LOGIC_VECTOR (13 downto 0);
        w_V : IN STD_LOGIC_VECTOR (13 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (13 downto 0) );
    end component;


    component dense_large_rf_gt_ni_outidx6 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (2 downto 0) );
    end component;


    component dense_large_rf_gt_ni_w7_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (24 downto 0) );
    end component;


    component dense_large_rf_gt_ni_acc_V IS
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



begin
    outidx6_U : component dense_large_rf_gt_ni_outidx6
    generic map (
        DataWidth => 3,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => outidx6_address0,
        ce0 => outidx6_ce0,
        q0 => outidx6_q0);

    w7_V_U : component dense_large_rf_gt_ni_w7_V
    generic map (
        DataWidth => 25,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => w7_V_address0,
        ce0 => w7_V_ce0,
        q0 => w7_V_q0);

    acc_V_U : component dense_large_rf_gt_ni_acc_V
    generic map (
        DataWidth => 14,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => acc_V_address0,
        ce0 => acc_V_ce0,
        we0 => acc_V_we0,
        d0 => acc_V_d0,
        q0 => acc_V_q0);

    grp_product_fu_263 : component product
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_product_fu_263_ap_start,
        ap_done => grp_product_fu_263_ap_done,
        ap_idle => grp_product_fu_263_ap_idle,
        ap_ready => grp_product_fu_263_ap_ready,
        a_V => data_V_load_reg_579,
        w_V => tmp_99_reg_608,
        ap_return => grp_product_fu_263_ap_return);





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


    grp_product_fu_263_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_product_fu_263_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                    grp_product_fu_263_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_product_fu_263_ap_ready = ap_const_logic_1)) then 
                    grp_product_fu_263_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    iacc_reg_187_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                iacc_reg_187 <= ap_const_lv5_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_274_p2 = ap_const_lv1_0))) then 
                iacc_reg_187 <= iacc_1_fu_280_p2;
            end if; 
        end if;
    end process;

    im_reg_221_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state12) and (tmp_102_fu_479_p3 = ap_const_lv1_0) and (tmp_91_reg_584 = ap_const_lv1_0))) then 
                im_reg_221 <= im_1_reg_588;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                im_reg_221 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    in_index_reg_209_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_274_p2 = ap_const_lv1_1))) then 
                in_index_reg_209 <= ap_const_lv32_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                in_index_reg_209 <= p_s_fu_514_p3;
            end if; 
        end if;
    end process;

    ires_reg_252_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_295_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                ires_reg_252 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
                ires_reg_252 <= ires_1_reg_667;
            end if; 
        end if;
    end process;

    out_index1_reg_232_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state12) and (tmp_102_fu_479_p3 = ap_const_lv1_0) and (tmp_91_reg_584 = ap_const_lv1_0))) then 
                out_index1_reg_232 <= out_index_1_fu_487_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                out_index1_reg_232 <= out_index_cast_fu_317_p1;
            end if; 
        end if;
    end process;

    w_index1_reg_242_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state12) and (tmp_102_fu_479_p3 = ap_const_lv1_0) and (tmp_91_reg_584 = ap_const_lv1_0))) then 
                w_index1_reg_242 <= w_index_1_fu_473_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                w_index1_reg_242 <= w_index_cast_reg_546;
            end if; 
        end if;
    end process;

    w_index_reg_198_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_274_p2 = ap_const_lv1_1))) then 
                w_index_reg_198 <= ap_const_lv9_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                w_index_reg_198 <= ir_reg_554;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                acc_V_addr_2_reg_613 <= tmp_71_fu_403_p1(4 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                brmerge6_reg_632 <= brmerge6_fu_467_p2;
                overflow_reg_624 <= overflow_fu_449_p2;
                underflow_reg_628 <= underflow_fu_461_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                data_V_load_reg_579 <= data_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                im_1_reg_588 <= im_1_fu_328_p2;
                tmp_91_reg_584 <= im_reg_221(1 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state12) and ((tmp_102_fu_479_p3 = ap_const_lv1_1) or (tmp_91_reg_584 = ap_const_lv1_1)))) then
                in_index_1_reg_649 <= in_index_1_fu_493_p2;
                tmp_103_reg_654 <= in_index_1_fu_493_p2(31 downto 5);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                ir_reg_554 <= ir_fu_301_p2;
                    w_index_cast_reg_546(8 downto 0) <= w_index_cast_fu_291_p1(8 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state14)) then
                ires_1_reg_667 <= ires_1_fu_527_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                out_index_reg_564 <= outidx6_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_product_fu_263_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                p_Val2_5_reg_618 <= grp_product_fu_263_ap_return;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state15) or ((grp_product_fu_263_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10)))) then
                reg_269 <= acc_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state14) and (tmp_68_fu_521_p2 = ap_const_lv1_0))) then
                    tmp_70_reg_672(4 downto 0) <= tmp_70_fu_533_p1(4 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                    tmp_96_reg_603(4 downto 1) <= tmp_96_fu_381_p2(4 downto 1);
                w7_V_load_reg_598 <= w7_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                tmp_99_reg_608 <= tmp_99_fu_399_p1;
            end if;
        end if;
    end process;
    w_index_cast_reg_546(9) <= '0';
    tmp_96_reg_603(0) <= '0';
    tmp_70_reg_672(63 downto 5) <= "00000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state10, grp_product_fu_263_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state3, exitcond_fu_295_p2, tmp_91_fu_320_p3, tmp_91_reg_584, ap_CS_fsm_state6, ap_CS_fsm_state12, tmp_102_fu_479_p3, ap_CS_fsm_state14, tmp_68_fu_521_p2, exitcond4_fu_274_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_274_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((exitcond_fu_295_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state14;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (tmp_91_fu_320_p3 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((grp_product_fu_263_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state12) and (tmp_102_fu_479_p3 = ap_const_lv1_0) and (tmp_91_reg_584 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state13;
                end if;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state14 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state14) and (tmp_68_fu_521_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state15;
                end if;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXX";
        end case;
    end process;

    acc_V_address0_assign_proc : process(ap_CS_fsm_state2, tmp_91_reg_584, acc_V_addr_2_reg_613, ap_CS_fsm_state9, overflow_reg_624, ap_CS_fsm_state11, underflow_reg_628, brmerge6_reg_632, ap_CS_fsm_state12, ap_CS_fsm_state14, tmp_70_fu_533_p1, tmp_fu_286_p1, tmp_71_fu_403_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            acc_V_address0 <= tmp_70_fu_533_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state11) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge6_reg_632 = ap_const_lv1_1) and (overflow_reg_624 = ap_const_lv1_1) and (tmp_91_reg_584 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge6_reg_632 = ap_const_lv1_1) and (underflow_reg_628 = ap_const_lv1_1) and (overflow_reg_624 = ap_const_lv1_0) and (tmp_91_reg_584 = ap_const_lv1_0)))) then 
            acc_V_address0 <= acc_V_addr_2_reg_613;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            acc_V_address0 <= tmp_71_fu_403_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            acc_V_address0 <= tmp_fu_286_p1(4 - 1 downto 0);
        else 
            acc_V_address0 <= "XXXX";
        end if; 
    end process;


    acc_V_ce0_assign_proc : process(ap_CS_fsm_state2, tmp_91_reg_584, ap_CS_fsm_state9, overflow_reg_624, ap_CS_fsm_state11, underflow_reg_628, brmerge6_reg_632, ap_CS_fsm_state12, ap_CS_fsm_state14)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state9) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge6_reg_632 = ap_const_lv1_1) and (overflow_reg_624 = ap_const_lv1_1) and (tmp_91_reg_584 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge6_reg_632 = ap_const_lv1_1) and (underflow_reg_628 = ap_const_lv1_1) and (overflow_reg_624 = ap_const_lv1_0) and (tmp_91_reg_584 = ap_const_lv1_0)))) then 
            acc_V_ce0 <= ap_const_logic_1;
        else 
            acc_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    acc_V_d0_assign_proc : process(ap_CS_fsm_state2, tmp_91_reg_584, overflow_reg_624, ap_CS_fsm_state11, underflow_reg_628, brmerge6_reg_632, ap_CS_fsm_state12, p_Val2_7_fu_429_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge6_reg_632 = ap_const_lv1_1) and (overflow_reg_624 = ap_const_lv1_1) and (tmp_91_reg_584 = ap_const_lv1_0))) then 
            acc_V_d0 <= ap_const_lv14_1FFF;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge6_reg_632 = ap_const_lv1_1) and (underflow_reg_628 = ap_const_lv1_1) and (overflow_reg_624 = ap_const_lv1_0) and (tmp_91_reg_584 = ap_const_lv1_0))) then 
            acc_V_d0 <= ap_const_lv14_2000;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            acc_V_d0 <= p_Val2_7_fu_429_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            acc_V_d0 <= ap_const_lv14_0;
        else 
            acc_V_d0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    acc_V_we0_assign_proc : process(ap_CS_fsm_state2, tmp_91_reg_584, overflow_reg_624, ap_CS_fsm_state11, underflow_reg_628, brmerge6_reg_632, ap_CS_fsm_state12, exitcond4_fu_274_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_274_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge6_reg_632 = ap_const_lv1_1) and (overflow_reg_624 = ap_const_lv1_1) and (tmp_91_reg_584 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge6_reg_632 = ap_const_lv1_1) and (underflow_reg_628 = ap_const_lv1_1) and (overflow_reg_624 = ap_const_lv1_0) and (tmp_91_reg_584 = ap_const_lv1_0)))) then 
            acc_V_we0 <= ap_const_logic_1;
        else 
            acc_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state14, tmp_68_fu_521_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state14) and (tmp_68_fu_521_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state14, tmp_68_fu_521_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state14) and (tmp_68_fu_521_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    brmerge6_fu_467_p2 <= (p_Result_s_fu_421_p3 xor p_Result_13_fu_435_p3);
    data_V_address0 <= tmp_67_fu_312_p1(5 - 1 downto 0);

    data_V_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            data_V_ce0 <= ap_const_logic_1;
        else 
            data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond4_fu_274_p2 <= "1" when (iacc_reg_187 = ap_const_lv5_10) else "0";
    exitcond_fu_295_p2 <= "1" when (w_index_reg_198 = ap_const_lv9_100) else "0";
    grp_product_fu_263_ap_start <= grp_product_fu_263_ap_start_reg;
    iacc_1_fu_280_p2 <= std_logic_vector(unsigned(iacc_reg_187) + unsigned(ap_const_lv5_1));
    icmp_fu_509_p2 <= "1" when (signed(tmp_103_reg_654) > signed(ap_const_lv27_0)) else "0";
    im_1_fu_328_p2 <= std_logic_vector(unsigned(im_reg_221) + unsigned(ap_const_lv2_1));
    in_index_1_fu_493_p2 <= std_logic_vector(signed(in_index_reg_209) + signed(ap_const_lv32_1));
    ir_fu_301_p2 <= std_logic_vector(unsigned(w_index_reg_198) + unsigned(ap_const_lv9_1));
    ires_1_fu_527_p2 <= std_logic_vector(unsigned(ires_reg_252) + unsigned(ap_const_lv5_1));
        lhs_V_fu_408_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(reg_269),15));

    out_index_1_fu_487_p2 <= std_logic_vector(unsigned(out_index1_reg_232) + unsigned(ap_const_lv5_8));
    out_index_cast_fu_317_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(out_index_reg_564),5));
    outidx6_address0 <= tmp_s_fu_307_p1(8 - 1 downto 0);

    outidx6_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            outidx6_ce0 <= ap_const_logic_1;
        else 
            outidx6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    overflow_fu_449_p2 <= (tmp_15_fu_443_p2 and p_Result_13_fu_435_p3);
    p_Result_13_fu_435_p3 <= p_Val2_7_fu_429_p2(13 downto 13);
    p_Result_s_fu_421_p3 <= ret_V_fu_415_p2(14 downto 14);
    p_Val2_7_fu_429_p2 <= std_logic_vector(signed(reg_269) + signed(p_Val2_5_reg_618));
    p_s_fu_514_p3 <= 
        ap_const_lv32_0 when (icmp_fu_509_p2(0) = '1') else 
        in_index_1_reg_649;
    p_shl8_fu_361_p3 <= (tmp_13_fu_343_p4 & ap_const_lv1_0);
    res_V_address0 <= tmp_70_reg_672(4 - 1 downto 0);

    res_V_ce0_assign_proc : process(ap_CS_fsm_state16)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            res_V_ce0 <= ap_const_logic_1;
        else 
            res_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    res_V_d0 <= reg_269;

    res_V_we0_assign_proc : process(ap_CS_fsm_state16)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            res_V_we0 <= ap_const_logic_1;
        else 
            res_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ret_V_fu_415_p2 <= std_logic_vector(signed(lhs_V_fu_408_p1) + signed(rhs_V_fu_412_p1));
        rhs_V_fu_412_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_5_reg_618),15));

    tmp_102_fu_479_p3 <= w_index_1_fu_473_p2(9 downto 9);
    tmp_13_fu_343_p4 <= w_index1_reg_242(9 downto 8);
    tmp_15_fu_443_p2 <= (p_Result_s_fu_421_p3 xor ap_const_lv1_1);
    tmp_5_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_92_fu_334_p1),64));
        tmp_67_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(in_index_reg_209),64));

    tmp_68_fu_521_p2 <= "1" when (ires_reg_252 = ap_const_lv5_10) else "0";
    tmp_70_fu_533_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ires_reg_252),64));
    tmp_71_fu_403_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(out_index1_reg_232),64));
    tmp_72_fu_455_p2 <= (p_Result_13_fu_435_p3 xor ap_const_lv1_1);
    tmp_91_fu_320_p3 <= im_reg_221(1 downto 1);
    tmp_92_fu_334_p1 <= w_index1_reg_242(8 - 1 downto 0);
    tmp_93_fu_353_p3 <= w_index1_reg_242(8 downto 8);
    tmp_94_fu_369_p3 <= (tmp_93_fu_353_p3 & ap_const_lv4_0);
    tmp_95_fu_377_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl8_fu_361_p3),5));
    tmp_96_fu_381_p2 <= std_logic_vector(unsigned(tmp_94_fu_369_p3) - unsigned(tmp_95_fu_377_p1));
    tmp_97_fu_390_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_96_reg_603),28));
    tmp_98_fu_393_p2 <= std_logic_vector(shift_right(unsigned(w7_V_load_cast_fu_387_p1),to_integer(unsigned('0' & tmp_97_fu_390_p1(28-1 downto 0)))));
    tmp_99_fu_399_p1 <= tmp_98_fu_393_p2(14 - 1 downto 0);
    tmp_fu_286_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(iacc_reg_187),64));
    tmp_s_fu_307_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_index_reg_198),64));
    underflow_fu_461_p2 <= (tmp_72_fu_455_p2 and p_Result_s_fu_421_p3);
    w7_V_address0 <= tmp_5_fu_338_p1(8 - 1 downto 0);

    w7_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            w7_V_ce0 <= ap_const_logic_1;
        else 
            w7_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

        w7_V_load_cast_fu_387_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(w7_V_load_reg_598),28));

    w_index_1_fu_473_p2 <= std_logic_vector(unsigned(w_index1_reg_242) + unsigned(ap_const_lv10_100));
    w_index_cast_fu_291_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_index_reg_198),10));
end behav;
