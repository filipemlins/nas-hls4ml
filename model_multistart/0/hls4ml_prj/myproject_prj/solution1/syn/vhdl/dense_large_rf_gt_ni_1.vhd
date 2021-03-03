-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dense_large_rf_gt_ni_1 is
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
end;


architecture behav of dense_large_rf_gt_ni_1 is 
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
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv14_2000 : STD_LOGIC_VECTOR (13 downto 0) := "10000000000000";
    constant ap_const_lv14_1FFF : STD_LOGIC_VECTOR (13 downto 0) := "01111111111111";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv8_40 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv28_0 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal outidx7_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal outidx7_ce0 : STD_LOGIC;
    signal outidx7_q0 : STD_LOGIC_VECTOR (1 downto 0);
    signal w3_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal w3_V_ce0 : STD_LOGIC;
    signal w3_V_q0 : STD_LOGIC_VECTOR (24 downto 0);
    signal acc_V_q0 : STD_LOGIC_VECTOR (13 downto 0);
    signal reg_267 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_product_fu_261_ap_ready : STD_LOGIC;
    signal grp_product_fu_261_ap_done : STD_LOGIC;
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal iacc_2_fu_278_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal w_index_cast_fu_289_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal w_index_cast_reg_544 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ir_fu_299_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ir_reg_552 : STD_LOGIC_VECTOR (6 downto 0);
    signal exitcond_fu_293_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_index_reg_562 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal out_index_cast_fu_315_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal data_V_load_reg_577 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_78_fu_318_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_78_reg_582 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal im_2_fu_326_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal im_2_reg_586 : STD_LOGIC_VECTOR (1 downto 0);
    signal w3_V_load_reg_596 : STD_LOGIC_VECTOR (24 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_83_fu_379_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_83_reg_601 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_86_fu_397_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_86_reg_606 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal acc_V_addr_4_reg_611 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal grp_product_fu_261_ap_return : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Val2_8_reg_616 : STD_LOGIC_VECTOR (13 downto 0);
    signal overflow_fu_447_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal overflow_reg_622 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal underflow_fu_459_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_reg_626 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge7_fu_465_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge7_reg_630 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_index_2_fu_471_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal out_index_2_fu_485_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_89_fu_477_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal in_index_2_fu_491_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal in_index_2_reg_647 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_90_reg_652 : STD_LOGIC_VECTOR (27 downto 0);
    signal p_s_fu_512_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ires_2_fu_525_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ires_2_reg_665 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal tmp_74_fu_531_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_74_reg_670 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_73_fu_519_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal acc_V_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal acc_V_ce0 : STD_LOGIC;
    signal acc_V_we0 : STD_LOGIC;
    signal acc_V_d0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_product_fu_261_ap_start : STD_LOGIC;
    signal grp_product_fu_261_ap_idle : STD_LOGIC;
    signal iacc_reg_185 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond5_fu_272_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_index_reg_196 : STD_LOGIC_VECTOR (6 downto 0);
    signal in_index_reg_207 : STD_LOGIC_VECTOR (31 downto 0);
    signal im_reg_219 : STD_LOGIC_VECTOR (1 downto 0);
    signal out_index3_reg_230 : STD_LOGIC_VECTOR (3 downto 0);
    signal w_index3_reg_240 : STD_LOGIC_VECTOR (7 downto 0);
    signal ires_reg_250 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal grp_product_fu_261_ap_start_reg : STD_LOGIC := '0';
    signal tmp_fu_284_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_305_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_72_fu_310_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_14_fu_336_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_75_fu_401_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_21_fu_427_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_79_fu_332_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_11_fu_341_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_80_fu_351_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_shl8_fu_359_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_81_fu_367_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_82_fu_375_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal w3_V_load_cast_fu_385_p1 : STD_LOGIC_VECTOR (27 downto 0);
    signal tmp_84_fu_388_p1 : STD_LOGIC_VECTOR (27 downto 0);
    signal tmp_85_fu_391_p2 : STD_LOGIC_VECTOR (27 downto 0);
    signal lhs_V_fu_406_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal rhs_V_fu_410_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal ret_V_fu_413_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_s_fu_419_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_12_fu_433_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_19_fu_441_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_76_fu_453_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_fu_507_p2 : STD_LOGIC_VECTOR (0 downto 0);
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


    component dense_large_rf_gt_ni_1_outidx7 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (1 downto 0) );
    end component;


    component dense_large_rf_gt_ni_1_w3_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (24 downto 0) );
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
    outidx7_U : component dense_large_rf_gt_ni_1_outidx7
    generic map (
        DataWidth => 2,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => outidx7_address0,
        ce0 => outidx7_ce0,
        q0 => outidx7_q0);

    w3_V_U : component dense_large_rf_gt_ni_1_w3_V
    generic map (
        DataWidth => 25,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => w3_V_address0,
        ce0 => w3_V_ce0,
        q0 => w3_V_q0);

    acc_V_U : component dense_large_rf_gt_ni_1_acc_V
    generic map (
        DataWidth => 14,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => acc_V_address0,
        ce0 => acc_V_ce0,
        we0 => acc_V_we0,
        d0 => acc_V_d0,
        q0 => acc_V_q0);

    grp_product_fu_261 : component product
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_product_fu_261_ap_start,
        ap_done => grp_product_fu_261_ap_done,
        ap_idle => grp_product_fu_261_ap_idle,
        ap_ready => grp_product_fu_261_ap_ready,
        a_V => data_V_load_reg_577,
        w_V => tmp_86_reg_606,
        ap_return => grp_product_fu_261_ap_return);





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


    grp_product_fu_261_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_product_fu_261_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                    grp_product_fu_261_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_product_fu_261_ap_ready = ap_const_logic_1)) then 
                    grp_product_fu_261_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    iacc_reg_185_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                iacc_reg_185 <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_272_p2 = ap_const_lv1_0))) then 
                iacc_reg_185 <= iacc_2_fu_278_p2;
            end if; 
        end if;
    end process;

    im_reg_219_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state12) and (tmp_89_fu_477_p3 = ap_const_lv1_0) and (tmp_78_reg_582 = ap_const_lv1_0))) then 
                im_reg_219 <= im_2_reg_586;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                im_reg_219 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    in_index_reg_207_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_272_p2 = ap_const_lv1_1))) then 
                in_index_reg_207 <= ap_const_lv32_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                in_index_reg_207 <= p_s_fu_512_p3;
            end if; 
        end if;
    end process;

    ires_reg_250_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_293_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                ires_reg_250 <= ap_const_lv4_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
                ires_reg_250 <= ires_2_reg_665;
            end if; 
        end if;
    end process;

    out_index3_reg_230_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state12) and (tmp_89_fu_477_p3 = ap_const_lv1_0) and (tmp_78_reg_582 = ap_const_lv1_0))) then 
                out_index3_reg_230 <= out_index_2_fu_485_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                out_index3_reg_230 <= out_index_cast_fu_315_p1;
            end if; 
        end if;
    end process;

    w_index3_reg_240_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state12) and (tmp_89_fu_477_p3 = ap_const_lv1_0) and (tmp_78_reg_582 = ap_const_lv1_0))) then 
                w_index3_reg_240 <= w_index_2_fu_471_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                w_index3_reg_240 <= w_index_cast_reg_544;
            end if; 
        end if;
    end process;

    w_index_reg_196_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_272_p2 = ap_const_lv1_1))) then 
                w_index_reg_196 <= ap_const_lv7_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                w_index_reg_196 <= ir_reg_552;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                acc_V_addr_4_reg_611 <= tmp_75_fu_401_p1(3 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                brmerge7_reg_630 <= brmerge7_fu_465_p2;
                overflow_reg_622 <= overflow_fu_447_p2;
                underflow_reg_626 <= underflow_fu_459_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                data_V_load_reg_577 <= data_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                im_2_reg_586 <= im_2_fu_326_p2;
                tmp_78_reg_582 <= im_reg_219(1 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state12) and ((tmp_89_fu_477_p3 = ap_const_lv1_1) or (tmp_78_reg_582 = ap_const_lv1_1)))) then
                in_index_2_reg_647 <= in_index_2_fu_491_p2;
                tmp_90_reg_652 <= in_index_2_fu_491_p2(31 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                ir_reg_552 <= ir_fu_299_p2;
                    w_index_cast_reg_544(6 downto 0) <= w_index_cast_fu_289_p1(6 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state14)) then
                ires_2_reg_665 <= ires_2_fu_525_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                out_index_reg_562 <= outidx7_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_product_fu_261_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                p_Val2_8_reg_616 <= grp_product_fu_261_ap_return;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state15) or ((grp_product_fu_261_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10)))) then
                reg_267 <= acc_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state14) and (tmp_73_fu_519_p2 = ap_const_lv1_0))) then
                    tmp_74_reg_670(3 downto 0) <= tmp_74_fu_531_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                    tmp_83_reg_601(4 downto 1) <= tmp_83_fu_379_p2(4 downto 1);
                w3_V_load_reg_596 <= w3_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                tmp_86_reg_606 <= tmp_86_fu_397_p1;
            end if;
        end if;
    end process;
    w_index_cast_reg_544(7) <= '0';
    tmp_83_reg_601(0) <= '0';
    tmp_74_reg_670(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state10, grp_product_fu_261_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state3, exitcond_fu_293_p2, tmp_78_fu_318_p3, tmp_78_reg_582, ap_CS_fsm_state6, ap_CS_fsm_state12, tmp_89_fu_477_p3, ap_CS_fsm_state14, tmp_73_fu_519_p2, exitcond5_fu_272_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_272_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((exitcond_fu_293_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state14;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (tmp_78_fu_318_p3 = ap_const_lv1_1))) then
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
                if (((grp_product_fu_261_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state12) and (tmp_89_fu_477_p3 = ap_const_lv1_0) and (tmp_78_reg_582 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state13;
                end if;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state14 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state14) and (tmp_73_fu_519_p2 = ap_const_lv1_1))) then
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

    acc_V_address0_assign_proc : process(ap_CS_fsm_state2, tmp_78_reg_582, acc_V_addr_4_reg_611, ap_CS_fsm_state9, overflow_reg_622, ap_CS_fsm_state11, underflow_reg_626, brmerge7_reg_630, ap_CS_fsm_state12, ap_CS_fsm_state14, tmp_74_fu_531_p1, tmp_fu_284_p1, tmp_75_fu_401_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            acc_V_address0 <= tmp_74_fu_531_p1(3 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state11) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge7_reg_630 = ap_const_lv1_1) and (overflow_reg_622 = ap_const_lv1_1) and (tmp_78_reg_582 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge7_reg_630 = ap_const_lv1_1) and (underflow_reg_626 = ap_const_lv1_1) and (overflow_reg_622 = ap_const_lv1_0) and (tmp_78_reg_582 = ap_const_lv1_0)))) then 
            acc_V_address0 <= acc_V_addr_4_reg_611;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            acc_V_address0 <= tmp_75_fu_401_p1(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            acc_V_address0 <= tmp_fu_284_p1(3 - 1 downto 0);
        else 
            acc_V_address0 <= "XXX";
        end if; 
    end process;


    acc_V_ce0_assign_proc : process(ap_CS_fsm_state2, tmp_78_reg_582, ap_CS_fsm_state9, overflow_reg_622, ap_CS_fsm_state11, underflow_reg_626, brmerge7_reg_630, ap_CS_fsm_state12, ap_CS_fsm_state14)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state9) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge7_reg_630 = ap_const_lv1_1) and (overflow_reg_622 = ap_const_lv1_1) and (tmp_78_reg_582 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge7_reg_630 = ap_const_lv1_1) and (underflow_reg_626 = ap_const_lv1_1) and (overflow_reg_622 = ap_const_lv1_0) and (tmp_78_reg_582 = ap_const_lv1_0)))) then 
            acc_V_ce0 <= ap_const_logic_1;
        else 
            acc_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    acc_V_d0_assign_proc : process(ap_CS_fsm_state2, tmp_78_reg_582, overflow_reg_622, ap_CS_fsm_state11, underflow_reg_626, brmerge7_reg_630, ap_CS_fsm_state12, p_Val2_21_fu_427_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge7_reg_630 = ap_const_lv1_1) and (overflow_reg_622 = ap_const_lv1_1) and (tmp_78_reg_582 = ap_const_lv1_0))) then 
            acc_V_d0 <= ap_const_lv14_1FFF;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge7_reg_630 = ap_const_lv1_1) and (underflow_reg_626 = ap_const_lv1_1) and (overflow_reg_622 = ap_const_lv1_0) and (tmp_78_reg_582 = ap_const_lv1_0))) then 
            acc_V_d0 <= ap_const_lv14_2000;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            acc_V_d0 <= p_Val2_21_fu_427_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            acc_V_d0 <= ap_const_lv14_0;
        else 
            acc_V_d0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    acc_V_we0_assign_proc : process(ap_CS_fsm_state2, tmp_78_reg_582, overflow_reg_622, ap_CS_fsm_state11, underflow_reg_626, brmerge7_reg_630, ap_CS_fsm_state12, exitcond5_fu_272_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond5_fu_272_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge7_reg_630 = ap_const_lv1_1) and (overflow_reg_622 = ap_const_lv1_1) and (tmp_78_reg_582 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (brmerge7_reg_630 = ap_const_lv1_1) and (underflow_reg_626 = ap_const_lv1_1) and (overflow_reg_622 = ap_const_lv1_0) and (tmp_78_reg_582 = ap_const_lv1_0)))) then 
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state14, tmp_73_fu_519_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state14) and (tmp_73_fu_519_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state14, tmp_73_fu_519_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state14) and (tmp_73_fu_519_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    brmerge7_fu_465_p2 <= (p_Result_s_fu_419_p3 xor p_Result_12_fu_433_p3);
    data_V_address0 <= tmp_72_fu_310_p1(4 - 1 downto 0);

    data_V_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            data_V_ce0 <= ap_const_logic_1;
        else 
            data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond5_fu_272_p2 <= "1" when (iacc_reg_185 = ap_const_lv4_8) else "0";
    exitcond_fu_293_p2 <= "1" when (w_index_reg_196 = ap_const_lv7_40) else "0";
    grp_product_fu_261_ap_start <= grp_product_fu_261_ap_start_reg;
    iacc_2_fu_278_p2 <= std_logic_vector(unsigned(iacc_reg_185) + unsigned(ap_const_lv4_1));
    icmp_fu_507_p2 <= "1" when (signed(tmp_90_reg_652) > signed(ap_const_lv28_0)) else "0";
    im_2_fu_326_p2 <= std_logic_vector(unsigned(im_reg_219) + unsigned(ap_const_lv2_1));
    in_index_2_fu_491_p2 <= std_logic_vector(signed(in_index_reg_207) + signed(ap_const_lv32_1));
    ir_fu_299_p2 <= std_logic_vector(unsigned(w_index_reg_196) + unsigned(ap_const_lv7_1));
    ires_2_fu_525_p2 <= std_logic_vector(unsigned(ires_reg_250) + unsigned(ap_const_lv4_1));
        lhs_V_fu_406_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(reg_267),15));

    out_index_2_fu_485_p2 <= std_logic_vector(unsigned(out_index3_reg_230) + unsigned(ap_const_lv4_4));
    out_index_cast_fu_315_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(out_index_reg_562),4));
    outidx7_address0 <= tmp_s_fu_305_p1(6 - 1 downto 0);

    outidx7_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            outidx7_ce0 <= ap_const_logic_1;
        else 
            outidx7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    overflow_fu_447_p2 <= (tmp_19_fu_441_p2 and p_Result_12_fu_433_p3);
    p_Result_12_fu_433_p3 <= p_Val2_21_fu_427_p2(13 downto 13);
    p_Result_s_fu_419_p3 <= ret_V_fu_413_p2(14 downto 14);
    p_Val2_21_fu_427_p2 <= std_logic_vector(signed(reg_267) + signed(p_Val2_8_reg_616));
    p_s_fu_512_p3 <= 
        ap_const_lv32_0 when (icmp_fu_507_p2(0) = '1') else 
        in_index_2_reg_647;
    p_shl8_fu_359_p3 <= (tmp_11_fu_341_p4 & ap_const_lv1_0);
    res_V_address0 <= tmp_74_reg_670(3 - 1 downto 0);

    res_V_ce0_assign_proc : process(ap_CS_fsm_state16)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            res_V_ce0 <= ap_const_logic_1;
        else 
            res_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    res_V_d0 <= reg_267;

    res_V_we0_assign_proc : process(ap_CS_fsm_state16)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            res_V_we0 <= ap_const_logic_1;
        else 
            res_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ret_V_fu_413_p2 <= std_logic_vector(signed(lhs_V_fu_406_p1) + signed(rhs_V_fu_410_p1));
        rhs_V_fu_410_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_8_reg_616),15));

    tmp_11_fu_341_p4 <= w_index3_reg_240(7 downto 6);
    tmp_14_fu_336_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_79_fu_332_p1),64));
    tmp_19_fu_441_p2 <= (p_Result_s_fu_419_p3 xor ap_const_lv1_1);
        tmp_72_fu_310_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(in_index_reg_207),64));

    tmp_73_fu_519_p2 <= "1" when (ires_reg_250 = ap_const_lv4_8) else "0";
    tmp_74_fu_531_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ires_reg_250),64));
    tmp_75_fu_401_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(out_index3_reg_230),64));
    tmp_76_fu_453_p2 <= (p_Result_12_fu_433_p3 xor ap_const_lv1_1);
    tmp_78_fu_318_p3 <= im_reg_219(1 downto 1);
    tmp_79_fu_332_p1 <= w_index3_reg_240(6 - 1 downto 0);
    tmp_80_fu_351_p3 <= w_index3_reg_240(6 downto 6);
    tmp_81_fu_367_p3 <= (tmp_80_fu_351_p3 & ap_const_lv4_0);
    tmp_82_fu_375_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl8_fu_359_p3),5));
    tmp_83_fu_379_p2 <= std_logic_vector(unsigned(tmp_81_fu_367_p3) - unsigned(tmp_82_fu_375_p1));
    tmp_84_fu_388_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_83_reg_601),28));
    tmp_85_fu_391_p2 <= std_logic_vector(shift_right(unsigned(w3_V_load_cast_fu_385_p1),to_integer(unsigned('0' & tmp_84_fu_388_p1(28-1 downto 0)))));
    tmp_86_fu_397_p1 <= tmp_85_fu_391_p2(14 - 1 downto 0);
    tmp_89_fu_477_p3 <= w_index_2_fu_471_p2(7 downto 7);
    tmp_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(iacc_reg_185),64));
    tmp_s_fu_305_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_index_reg_196),64));
    underflow_fu_459_p2 <= (tmp_76_fu_453_p2 and p_Result_s_fu_419_p3);
    w3_V_address0 <= tmp_14_fu_336_p1(6 - 1 downto 0);

    w3_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            w3_V_ce0 <= ap_const_logic_1;
        else 
            w3_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

        w3_V_load_cast_fu_385_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(w3_V_load_reg_596),28));

    w_index_2_fu_471_p2 <= std_logic_vector(unsigned(w_index3_reg_240) + unsigned(ap_const_lv8_40));
    w_index_cast_fu_289_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_index_reg_196),8));
end behav;
