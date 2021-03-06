// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dense_large_rf_gt_ni_4_HH_
#define _dense_large_rf_gt_ni_4_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "product.h"
#include "myproject_urem_17ns_15ns_17_21_seq_1.h"
#include "myproject_lshr_70s_7ns_70_2_1.h"
#include "myproject_mul_mul_19ns_17ns_36_3_1.h"
#include "dense_large_rf_gt_ni_4_outidx5.h"
#include "dense_large_rf_gt_ni_4_w11_V.h"
#include "dense_large_rf_gt_ni_4_acc_V.h"

namespace ap_rtl {

struct dense_large_rf_gt_ni_4 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > data_V_address0;
    sc_out< sc_logic > data_V_ce0;
    sc_in< sc_lv<14> > data_V_q0;
    sc_out< sc_lv<7> > res_V_address0;
    sc_out< sc_logic > res_V_ce0;
    sc_out< sc_logic > res_V_we0;
    sc_out< sc_lv<14> > res_V_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    dense_large_rf_gt_ni_4(sc_module_name name);
    SC_HAS_PROCESS(dense_large_rf_gt_ni_4);

    ~dense_large_rf_gt_ni_4();

    sc_trace_file* mVcdFile;

    dense_large_rf_gt_ni_4_outidx5* outidx5_U;
    dense_large_rf_gt_ni_4_w11_V* w11_V_U;
    dense_large_rf_gt_ni_4_acc_V* acc_V_U;
    product* grp_product_fu_259;
    myproject_urem_17ns_15ns_17_21_seq_1<1,21,17,15,17>* myproject_urem_17ns_15ns_17_21_seq_1_U40;
    myproject_lshr_70s_7ns_70_2_1<1,2,1,70,7,70>* myproject_lshr_70s_7ns_70_2_1_U41;
    myproject_mul_mul_19ns_17ns_36_3_1<1,3,19,17,36>* myproject_mul_mul_19ns_17ns_36_3_1_U42;
    sc_signal< sc_lv<40> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<14> > outidx5_address0;
    sc_signal< sc_logic > outidx5_ce0;
    sc_signal< sc_lv<5> > outidx5_q0;
    sc_signal< sc_lv<14> > w11_V_address0;
    sc_signal< sc_logic > w11_V_ce0;
    sc_signal< sc_lv<66> > w11_V_q0;
    sc_signal< sc_lv<14> > acc_V_q0;
    sc_signal< sc_lv<14> > reg_265;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > grp_product_fu_259_ap_ready;
    sc_signal< sc_logic > grp_product_fu_259_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_lv<7> > iacc_1_fu_276_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<17> > w_index_cast_fu_287_p1;
    sc_signal< sc_lv<17> > w_index_cast_reg_522;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<14> > ir_fu_297_p2;
    sc_signal< sc_lv<14> > ir_reg_530;
    sc_signal< sc_lv<1> > exitcond_fu_291_p2;
    sc_signal< sc_lv<5> > out_index_reg_540;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > out_index_cast_fu_313_p1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<14> > data_V_load_reg_555;
    sc_signal< sc_lv<1> > tmp_48_fu_316_p2;
    sc_signal< sc_lv<1> > tmp_48_reg_560;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > im_1_fu_322_p2;
    sc_signal< sc_lv<3> > im_1_reg_564;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<17> > grp_fu_328_p2;
    sc_signal< sc_lv<17> > tmp_39_reg_574;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<36> > grp_fu_508_p2;
    sc_signal< sc_lv<36> > mul_reg_579;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<66> > w11_V_load_reg_589;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<7> > tmp_43_fu_371_p2;
    sc_signal< sc_lv<7> > tmp_43_reg_594;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_lv<14> > tmp_40_fu_389_p1;
    sc_signal< sc_lv<14> > tmp_40_reg_609;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_lv<7> > acc_V_addr_2_reg_614;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<14> > grp_product_fu_259_ap_return;
    sc_signal< sc_lv<14> > p_Val2_11_reg_619;
    sc_signal< sc_lv<1> > p_Result_s_reg_625;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_lv<14> > p_Val2_13_fu_419_p2;
    sc_signal< sc_lv<14> > p_Val2_13_reg_632;
    sc_signal< sc_lv<1> > p_Result_9_reg_637;
    sc_signal< sc_lv<1> > overflow_fu_437_p2;
    sc_signal< sc_lv<1> > overflow_reg_644;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_lv<1> > underflow_fu_447_p2;
    sc_signal< sc_lv<1> > underflow_reg_648;
    sc_signal< sc_lv<1> > brmerge1_fu_452_p2;
    sc_signal< sc_lv<1> > brmerge1_reg_652;
    sc_signal< sc_lv<17> > w_index_1_fu_456_p2;
    sc_signal< sc_lv<17> > w_index_1_reg_656;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_lv<8> > out_index_1_fu_467_p2;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_lv<1> > tmp_52_fu_462_p2;
    sc_signal< sc_lv<32> > in_index_1_fu_473_p2;
    sc_signal< sc_lv<32> > in_index_1_reg_670;
    sc_signal< sc_lv<32> > p_s_fu_484_p3;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_lv<7> > ires_1_fu_497_p2;
    sc_signal< sc_lv<7> > ires_1_reg_684;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_lv<64> > tmp_49_fu_503_p1;
    sc_signal< sc_lv<64> > tmp_49_reg_689;
    sc_signal< sc_lv<1> > tmp_47_fu_491_p2;
    sc_signal< sc_lv<7> > acc_V_address0;
    sc_signal< sc_logic > acc_V_ce0;
    sc_signal< sc_logic > acc_V_we0;
    sc_signal< sc_lv<14> > acc_V_d0;
    sc_signal< sc_logic > grp_product_fu_259_ap_start;
    sc_signal< sc_logic > grp_product_fu_259_ap_idle;
    sc_signal< sc_lv<7> > iacc_reg_183;
    sc_signal< sc_lv<1> > exitcond8_fu_270_p2;
    sc_signal< sc_lv<14> > w_index_reg_194;
    sc_signal< sc_lv<32> > in_index_reg_205;
    sc_signal< sc_lv<3> > im_reg_217;
    sc_signal< sc_lv<8> > out_index9_reg_228;
    sc_signal< sc_lv<17> > w_index9_reg_238;
    sc_signal< sc_lv<7> > ires_reg_248;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_logic > grp_product_fu_259_ap_start_reg;
    sc_signal< sc_lv<64> > tmp_fu_282_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_303_p1;
    sc_signal< sc_lv<64> > tmp_46_fu_308_p1;
    sc_signal< sc_lv<64> > tmp_41_fu_338_p1;
    sc_signal< sc_lv<64> > tmp_50_fu_393_p1;
    sc_signal< sc_lv<15> > grp_fu_328_p1;
    sc_signal< sc_lv<3> > tmp_4_fu_342_p4;
    sc_signal< sc_lv<4> > p_shl8_fu_359_p3;
    sc_signal< sc_lv<7> > p_shl_fu_351_p3;
    sc_signal< sc_lv<7> > p_shl8_cast_fu_367_p1;
    sc_signal< sc_lv<70> > grp_fu_383_p0;
    sc_signal< sc_lv<70> > grp_fu_383_p1;
    sc_signal< sc_lv<70> > grp_fu_383_p2;
    sc_signal< sc_lv<15> > rhs_V_fu_402_p1;
    sc_signal< sc_lv<15> > lhs_V_fu_398_p1;
    sc_signal< sc_lv<15> > ret_V_fu_405_p2;
    sc_signal< sc_lv<1> > tmp_22_fu_432_p2;
    sc_signal< sc_lv<1> > tmp_51_fu_442_p2;
    sc_signal< sc_lv<1> > tmp_53_fu_479_p2;
    sc_signal< sc_lv<19> > grp_fu_508_p0;
    sc_signal< sc_lv<17> > grp_fu_508_p1;
    sc_signal< sc_logic > grp_fu_328_ap_start;
    sc_signal< sc_logic > grp_fu_328_ap_done;
    sc_signal< sc_lv<40> > ap_NS_fsm;
    sc_signal< sc_lv<36> > grp_fu_508_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<40> ap_ST_fsm_state1;
    static const sc_lv<40> ap_ST_fsm_state2;
    static const sc_lv<40> ap_ST_fsm_state3;
    static const sc_lv<40> ap_ST_fsm_state4;
    static const sc_lv<40> ap_ST_fsm_state5;
    static const sc_lv<40> ap_ST_fsm_state6;
    static const sc_lv<40> ap_ST_fsm_state7;
    static const sc_lv<40> ap_ST_fsm_state8;
    static const sc_lv<40> ap_ST_fsm_state9;
    static const sc_lv<40> ap_ST_fsm_state10;
    static const sc_lv<40> ap_ST_fsm_state11;
    static const sc_lv<40> ap_ST_fsm_state12;
    static const sc_lv<40> ap_ST_fsm_state13;
    static const sc_lv<40> ap_ST_fsm_state14;
    static const sc_lv<40> ap_ST_fsm_state15;
    static const sc_lv<40> ap_ST_fsm_state16;
    static const sc_lv<40> ap_ST_fsm_state17;
    static const sc_lv<40> ap_ST_fsm_state18;
    static const sc_lv<40> ap_ST_fsm_state19;
    static const sc_lv<40> ap_ST_fsm_state20;
    static const sc_lv<40> ap_ST_fsm_state21;
    static const sc_lv<40> ap_ST_fsm_state22;
    static const sc_lv<40> ap_ST_fsm_state23;
    static const sc_lv<40> ap_ST_fsm_state24;
    static const sc_lv<40> ap_ST_fsm_state25;
    static const sc_lv<40> ap_ST_fsm_state26;
    static const sc_lv<40> ap_ST_fsm_state27;
    static const sc_lv<40> ap_ST_fsm_state28;
    static const sc_lv<40> ap_ST_fsm_state29;
    static const sc_lv<40> ap_ST_fsm_state30;
    static const sc_lv<40> ap_ST_fsm_state31;
    static const sc_lv<40> ap_ST_fsm_state32;
    static const sc_lv<40> ap_ST_fsm_state33;
    static const sc_lv<40> ap_ST_fsm_state34;
    static const sc_lv<40> ap_ST_fsm_state35;
    static const sc_lv<40> ap_ST_fsm_state36;
    static const sc_lv<40> ap_ST_fsm_state37;
    static const sc_lv<40> ap_ST_fsm_state38;
    static const sc_lv<40> ap_ST_fsm_state39;
    static const sc_lv<40> ap_ST_fsm_state40;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<14> ap_const_lv14_2000;
    static const sc_lv<14> ap_const_lv14_1FFF;
    static const sc_lv<7> ap_const_lv7_78;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<14> ap_const_lv14_3600;
    static const sc_lv<14> ap_const_lv14_1;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<17> ap_const_lv17_3600;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<17> ap_const_lv17_10DFF;
    static const sc_lv<8> ap_const_lv8_18;
    static const sc_lv<32> ap_const_lv32_23F;
    static const sc_lv<36> ap_const_lv36_25ED1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_acc_V_address0();
    void thread_acc_V_ce0();
    void thread_acc_V_d0();
    void thread_acc_V_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_CS_fsm_state38();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_brmerge1_fu_452_p2();
    void thread_data_V_address0();
    void thread_data_V_ce0();
    void thread_exitcond8_fu_270_p2();
    void thread_exitcond_fu_291_p2();
    void thread_grp_fu_328_ap_start();
    void thread_grp_fu_328_p1();
    void thread_grp_fu_383_p0();
    void thread_grp_fu_383_p1();
    void thread_grp_fu_508_p0();
    void thread_grp_fu_508_p1();
    void thread_grp_fu_508_p10();
    void thread_grp_product_fu_259_ap_start();
    void thread_iacc_1_fu_276_p2();
    void thread_im_1_fu_322_p2();
    void thread_in_index_1_fu_473_p2();
    void thread_ir_fu_297_p2();
    void thread_ires_1_fu_497_p2();
    void thread_lhs_V_fu_398_p1();
    void thread_out_index_1_fu_467_p2();
    void thread_out_index_cast_fu_313_p1();
    void thread_outidx5_address0();
    void thread_outidx5_ce0();
    void thread_overflow_fu_437_p2();
    void thread_p_Val2_13_fu_419_p2();
    void thread_p_s_fu_484_p3();
    void thread_p_shl8_cast_fu_367_p1();
    void thread_p_shl8_fu_359_p3();
    void thread_p_shl_fu_351_p3();
    void thread_res_V_address0();
    void thread_res_V_ce0();
    void thread_res_V_d0();
    void thread_res_V_we0();
    void thread_ret_V_fu_405_p2();
    void thread_rhs_V_fu_402_p1();
    void thread_tmp_22_fu_432_p2();
    void thread_tmp_40_fu_389_p1();
    void thread_tmp_41_fu_338_p1();
    void thread_tmp_43_fu_371_p2();
    void thread_tmp_46_fu_308_p1();
    void thread_tmp_47_fu_491_p2();
    void thread_tmp_48_fu_316_p2();
    void thread_tmp_49_fu_503_p1();
    void thread_tmp_4_fu_342_p4();
    void thread_tmp_50_fu_393_p1();
    void thread_tmp_51_fu_442_p2();
    void thread_tmp_52_fu_462_p2();
    void thread_tmp_53_fu_479_p2();
    void thread_tmp_fu_282_p1();
    void thread_tmp_s_fu_303_p1();
    void thread_underflow_fu_447_p2();
    void thread_w11_V_address0();
    void thread_w11_V_ce0();
    void thread_w_index_1_fu_456_p2();
    void thread_w_index_cast_fu_287_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
