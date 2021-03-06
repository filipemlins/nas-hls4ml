// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dense_large_rf_gt_ni_1_HH_
#define _dense_large_rf_gt_ni_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "product.h"
#include "dense_large_rf_gt_ni_1_outidx7.h"
#include "dense_large_rf_gt_ni_1_w3_V.h"
#include "dense_large_rf_gt_ni_1_acc_V.h"

namespace ap_rtl {

struct dense_large_rf_gt_ni_1 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > data_V_address0;
    sc_out< sc_logic > data_V_ce0;
    sc_in< sc_lv<14> > data_V_q0;
    sc_out< sc_lv<3> > res_V_address0;
    sc_out< sc_logic > res_V_ce0;
    sc_out< sc_logic > res_V_we0;
    sc_out< sc_lv<14> > res_V_d0;


    // Module declarations
    dense_large_rf_gt_ni_1(sc_module_name name);
    SC_HAS_PROCESS(dense_large_rf_gt_ni_1);

    ~dense_large_rf_gt_ni_1();

    sc_trace_file* mVcdFile;

    dense_large_rf_gt_ni_1_outidx7* outidx7_U;
    dense_large_rf_gt_ni_1_w3_V* w3_V_U;
    dense_large_rf_gt_ni_1_acc_V* acc_V_U;
    product* grp_product_fu_261;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > outidx7_address0;
    sc_signal< sc_logic > outidx7_ce0;
    sc_signal< sc_lv<2> > outidx7_q0;
    sc_signal< sc_lv<6> > w3_V_address0;
    sc_signal< sc_logic > w3_V_ce0;
    sc_signal< sc_lv<25> > w3_V_q0;
    sc_signal< sc_lv<14> > acc_V_q0;
    sc_signal< sc_lv<14> > reg_267;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > grp_product_fu_261_ap_ready;
    sc_signal< sc_logic > grp_product_fu_261_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<4> > iacc_2_fu_278_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > w_index_cast_fu_289_p1;
    sc_signal< sc_lv<8> > w_index_cast_reg_544;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<7> > ir_fu_299_p2;
    sc_signal< sc_lv<7> > ir_reg_552;
    sc_signal< sc_lv<1> > exitcond_fu_293_p2;
    sc_signal< sc_lv<2> > out_index_reg_562;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > out_index_cast_fu_315_p1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<14> > data_V_load_reg_577;
    sc_signal< sc_lv<1> > tmp_78_fu_318_p3;
    sc_signal< sc_lv<1> > tmp_78_reg_582;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > im_2_fu_326_p2;
    sc_signal< sc_lv<2> > im_2_reg_586;
    sc_signal< sc_lv<25> > w3_V_load_reg_596;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<5> > tmp_83_fu_379_p2;
    sc_signal< sc_lv<5> > tmp_83_reg_601;
    sc_signal< sc_lv<14> > tmp_86_fu_397_p1;
    sc_signal< sc_lv<14> > tmp_86_reg_606;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<3> > acc_V_addr_4_reg_611;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<14> > grp_product_fu_261_ap_return;
    sc_signal< sc_lv<14> > p_Val2_8_reg_616;
    sc_signal< sc_lv<1> > overflow_fu_447_p2;
    sc_signal< sc_lv<1> > overflow_reg_622;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > underflow_fu_459_p2;
    sc_signal< sc_lv<1> > underflow_reg_626;
    sc_signal< sc_lv<1> > brmerge7_fu_465_p2;
    sc_signal< sc_lv<1> > brmerge7_reg_630;
    sc_signal< sc_lv<8> > w_index_2_fu_471_p2;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<4> > out_index_2_fu_485_p2;
    sc_signal< sc_lv<1> > tmp_89_fu_477_p3;
    sc_signal< sc_lv<32> > in_index_2_fu_491_p2;
    sc_signal< sc_lv<32> > in_index_2_reg_647;
    sc_signal< sc_lv<28> > tmp_90_reg_652;
    sc_signal< sc_lv<32> > p_s_fu_512_p3;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<4> > ires_2_fu_525_p2;
    sc_signal< sc_lv<4> > ires_2_reg_665;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<64> > tmp_74_fu_531_p1;
    sc_signal< sc_lv<64> > tmp_74_reg_670;
    sc_signal< sc_lv<1> > tmp_73_fu_519_p2;
    sc_signal< sc_lv<3> > acc_V_address0;
    sc_signal< sc_logic > acc_V_ce0;
    sc_signal< sc_logic > acc_V_we0;
    sc_signal< sc_lv<14> > acc_V_d0;
    sc_signal< sc_logic > grp_product_fu_261_ap_start;
    sc_signal< sc_logic > grp_product_fu_261_ap_idle;
    sc_signal< sc_lv<4> > iacc_reg_185;
    sc_signal< sc_lv<1> > exitcond5_fu_272_p2;
    sc_signal< sc_lv<7> > w_index_reg_196;
    sc_signal< sc_lv<32> > in_index_reg_207;
    sc_signal< sc_lv<2> > im_reg_219;
    sc_signal< sc_lv<4> > out_index3_reg_230;
    sc_signal< sc_lv<8> > w_index3_reg_240;
    sc_signal< sc_lv<4> > ires_reg_250;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > grp_product_fu_261_ap_start_reg;
    sc_signal< sc_lv<64> > tmp_fu_284_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_305_p1;
    sc_signal< sc_lv<64> > tmp_72_fu_310_p1;
    sc_signal< sc_lv<64> > tmp_14_fu_336_p1;
    sc_signal< sc_lv<64> > tmp_75_fu_401_p1;
    sc_signal< sc_lv<14> > p_Val2_21_fu_427_p2;
    sc_signal< sc_lv<6> > tmp_79_fu_332_p1;
    sc_signal< sc_lv<2> > tmp_11_fu_341_p4;
    sc_signal< sc_lv<1> > tmp_80_fu_351_p3;
    sc_signal< sc_lv<3> > p_shl8_fu_359_p3;
    sc_signal< sc_lv<5> > tmp_81_fu_367_p3;
    sc_signal< sc_lv<5> > tmp_82_fu_375_p1;
    sc_signal< sc_lv<28> > w3_V_load_cast_fu_385_p1;
    sc_signal< sc_lv<28> > tmp_84_fu_388_p1;
    sc_signal< sc_lv<28> > tmp_85_fu_391_p2;
    sc_signal< sc_lv<15> > lhs_V_fu_406_p1;
    sc_signal< sc_lv<15> > rhs_V_fu_410_p1;
    sc_signal< sc_lv<15> > ret_V_fu_413_p2;
    sc_signal< sc_lv<1> > p_Result_s_fu_419_p3;
    sc_signal< sc_lv<1> > p_Result_12_fu_433_p3;
    sc_signal< sc_lv<1> > tmp_19_fu_441_p2;
    sc_signal< sc_lv<1> > tmp_76_fu_453_p2;
    sc_signal< sc_lv<1> > icmp_fu_507_p2;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_fsm_state1;
    static const sc_lv<16> ap_ST_fsm_state2;
    static const sc_lv<16> ap_ST_fsm_state3;
    static const sc_lv<16> ap_ST_fsm_state4;
    static const sc_lv<16> ap_ST_fsm_state5;
    static const sc_lv<16> ap_ST_fsm_state6;
    static const sc_lv<16> ap_ST_fsm_state7;
    static const sc_lv<16> ap_ST_fsm_state8;
    static const sc_lv<16> ap_ST_fsm_state9;
    static const sc_lv<16> ap_ST_fsm_state10;
    static const sc_lv<16> ap_ST_fsm_state11;
    static const sc_lv<16> ap_ST_fsm_state12;
    static const sc_lv<16> ap_ST_fsm_state13;
    static const sc_lv<16> ap_ST_fsm_state14;
    static const sc_lv<16> ap_ST_fsm_state15;
    static const sc_lv<16> ap_ST_fsm_state16;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<14> ap_const_lv14_2000;
    static const sc_lv<14> ap_const_lv14_1FFF;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<8> ap_const_lv8_40;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<28> ap_const_lv28_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_acc_V_address0();
    void thread_acc_V_ce0();
    void thread_acc_V_d0();
    void thread_acc_V_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_brmerge7_fu_465_p2();
    void thread_data_V_address0();
    void thread_data_V_ce0();
    void thread_exitcond5_fu_272_p2();
    void thread_exitcond_fu_293_p2();
    void thread_grp_product_fu_261_ap_start();
    void thread_iacc_2_fu_278_p2();
    void thread_icmp_fu_507_p2();
    void thread_im_2_fu_326_p2();
    void thread_in_index_2_fu_491_p2();
    void thread_ir_fu_299_p2();
    void thread_ires_2_fu_525_p2();
    void thread_lhs_V_fu_406_p1();
    void thread_out_index_2_fu_485_p2();
    void thread_out_index_cast_fu_315_p1();
    void thread_outidx7_address0();
    void thread_outidx7_ce0();
    void thread_overflow_fu_447_p2();
    void thread_p_Result_12_fu_433_p3();
    void thread_p_Result_s_fu_419_p3();
    void thread_p_Val2_21_fu_427_p2();
    void thread_p_s_fu_512_p3();
    void thread_p_shl8_fu_359_p3();
    void thread_res_V_address0();
    void thread_res_V_ce0();
    void thread_res_V_d0();
    void thread_res_V_we0();
    void thread_ret_V_fu_413_p2();
    void thread_rhs_V_fu_410_p1();
    void thread_tmp_11_fu_341_p4();
    void thread_tmp_14_fu_336_p1();
    void thread_tmp_19_fu_441_p2();
    void thread_tmp_72_fu_310_p1();
    void thread_tmp_73_fu_519_p2();
    void thread_tmp_74_fu_531_p1();
    void thread_tmp_75_fu_401_p1();
    void thread_tmp_76_fu_453_p2();
    void thread_tmp_78_fu_318_p3();
    void thread_tmp_79_fu_332_p1();
    void thread_tmp_80_fu_351_p3();
    void thread_tmp_81_fu_367_p3();
    void thread_tmp_82_fu_375_p1();
    void thread_tmp_83_fu_379_p2();
    void thread_tmp_84_fu_388_p1();
    void thread_tmp_85_fu_391_p2();
    void thread_tmp_86_fu_397_p1();
    void thread_tmp_89_fu_477_p3();
    void thread_tmp_fu_284_p1();
    void thread_tmp_s_fu_305_p1();
    void thread_underflow_fu_459_p2();
    void thread_w3_V_address0();
    void thread_w3_V_ce0();
    void thread_w3_V_load_cast_fu_385_p1();
    void thread_w_index_2_fu_471_p2();
    void thread_w_index_cast_fu_289_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
