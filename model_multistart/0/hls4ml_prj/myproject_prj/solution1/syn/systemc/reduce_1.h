// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _reduce_1_HH_
#define _reduce_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct reduce_1 : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<18> > x_0_V_read;
    sc_in< sc_lv<18> > x_1_V_read;
    sc_in< sc_lv<18> > x_2_V_read;
    sc_in< sc_lv<18> > x_3_V_read;
    sc_out< sc_lv<18> > ap_return;


    // Module declarations
    reduce_1(sc_module_name name);
    SC_HAS_PROCESS(reduce_1);

    ~reduce_1();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<2> > i_5_fu_122_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<18> > left_0_V_fu_144_p3;
    sc_signal< sc_lv<1> > exitcond2_fu_116_p2;
    sc_signal< sc_lv<18> > left_0_V_1_fu_152_p3;
    sc_signal< sc_lv<2> > i_6_fu_166_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<18> > right_0_V_fu_188_p3;
    sc_signal< sc_lv<1> > exitcond_fu_160_p2;
    sc_signal< sc_lv<18> > right_0_V_1_fu_196_p3;
    sc_signal< sc_lv<18> > tmp1_fu_204_p2;
    sc_signal< sc_lv<18> > tmp1_reg_277;
    sc_signal< sc_lv<18> > p_Val2_9_reg_46;
    sc_signal< sc_lv<18> > p_Val2_s_reg_58;
    sc_signal< sc_lv<2> > i_reg_70;
    sc_signal< sc_lv<18> > p_Val2_10_reg_81;
    sc_signal< sc_lv<18> > p_Val2_1_reg_93;
    sc_signal< sc_lv<2> > i2_reg_105;
    sc_signal< sc_lv<1> > cond_fu_128_p2;
    sc_signal< sc_lv<1> > tmp_20_fu_140_p1;
    sc_signal< sc_lv<18> > left_1_V_fu_134_p3;
    sc_signal< sc_lv<1> > cond1_fu_172_p2;
    sc_signal< sc_lv<1> > tmp_21_fu_184_p1;
    sc_signal< sc_lv<18> > right_1_V_fu_178_p3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<18> > tmp_fu_210_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_cond1_fu_172_p2();
    void thread_cond_fu_128_p2();
    void thread_exitcond2_fu_116_p2();
    void thread_exitcond_fu_160_p2();
    void thread_i_5_fu_122_p2();
    void thread_i_6_fu_166_p2();
    void thread_left_0_V_1_fu_152_p3();
    void thread_left_0_V_fu_144_p3();
    void thread_left_1_V_fu_134_p3();
    void thread_right_0_V_1_fu_196_p3();
    void thread_right_0_V_fu_188_p3();
    void thread_right_1_V_fu_178_p3();
    void thread_tmp1_fu_204_p2();
    void thread_tmp_20_fu_140_p1();
    void thread_tmp_21_fu_184_p1();
    void thread_tmp_fu_210_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif