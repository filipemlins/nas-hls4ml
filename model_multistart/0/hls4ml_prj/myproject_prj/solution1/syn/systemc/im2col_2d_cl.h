// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _im2col_2d_cl_HH_
#define _im2col_2d_cl_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct im2col_2d_cl : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<11> > data_V_address0;
    sc_out< sc_logic > data_V_ce0;
    sc_in< sc_lv<14> > data_V_q0;
    sc_out< sc_lv<5> > data_col_V_address0;
    sc_out< sc_logic > data_col_V_ce0;
    sc_out< sc_logic > data_col_V_we0;
    sc_out< sc_lv<14> > data_col_V_d0;
    sc_in< sc_lv<4> > row;
    sc_in< sc_lv<4> > col;


    // Module declarations
    im2col_2d_cl(sc_module_name name);
    SC_HAS_PROCESS(im2col_2d_cl);

    ~im2col_2d_cl();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > row_cast_fu_189_p1;
    sc_signal< sc_lv<5> > row_cast_reg_360;
    sc_signal< sc_lv<5> > col_cast_fu_193_p1;
    sc_signal< sc_lv<5> > col_cast_reg_365;
    sc_signal< sc_lv<8> > p_0106_rec_cast_cast_fu_197_p1;
    sc_signal< sc_lv<8> > p_0106_rec_cast_cast_reg_370;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > channel_1_fu_201_p2;
    sc_signal< sc_lv<4> > channel_1_reg_375;
    sc_signal< sc_lv<4> > p_rec_fu_213_p2;
    sc_signal< sc_lv<4> > p_rec_reg_383;
    sc_signal< sc_lv<6> > index_3_fu_219_p2;
    sc_signal< sc_lv<6> > index_3_reg_388;
    sc_signal< sc_lv<1> > tmp_fu_207_p2;
    sc_signal< sc_lv<2> > kernel_row_1_fu_235_p2;
    sc_signal< sc_lv<2> > kernel_row_1_reg_396;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > tmp_38_fu_246_p2;
    sc_signal< sc_lv<6> > tmp_38_reg_401;
    sc_signal< sc_lv<1> > tmp_s_fu_229_p2;
    sc_signal< sc_lv<1> > tmp_39_fu_252_p2;
    sc_signal< sc_lv<1> > tmp_39_reg_406;
    sc_signal< sc_lv<12> > tmp_40_fu_278_p2;
    sc_signal< sc_lv<12> > tmp_40_reg_410;
    sc_signal< sc_lv<2> > kernel_col_1_fu_294_p2;
    sc_signal< sc_lv<2> > kernel_col_1_reg_418;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_43_fu_305_p2;
    sc_signal< sc_lv<1> > tmp_43_reg_423;
    sc_signal< sc_lv<1> > tmp_41_fu_288_p2;
    sc_signal< sc_lv<64> > tmp_44_fu_311_p1;
    sc_signal< sc_lv<64> > tmp_44_reg_427;
    sc_signal< sc_lv<8> > tmp1_fu_332_p2;
    sc_signal< sc_lv<8> > tmp1_reg_432;
    sc_signal< sc_lv<12> > sum_fu_345_p2;
    sc_signal< sc_lv<12> > sum_reg_437;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<14> > data_V_load_reg_447;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<6> > index_4_fu_354_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > p_0106_rec_reg_111;
    sc_signal< sc_lv<6> > index_reg_122;
    sc_signal< sc_lv<4> > channel_reg_134;
    sc_signal< sc_lv<6> > index_1_reg_145;
    sc_signal< sc_lv<2> > kernel_row_reg_156;
    sc_signal< sc_lv<6> > index_2_reg_167;
    sc_signal< sc_lv<2> > kernel_col_reg_178;
    sc_signal< sc_lv<64> > tmp_42_fu_337_p1;
    sc_signal< sc_lv<64> > sum_cast_fu_350_p1;
    sc_signal< sc_lv<5> > kernel_row_cast_fu_225_p1;
    sc_signal< sc_lv<5> > input_row_fu_241_p2;
    sc_signal< sc_lv<9> > p_shl9_fu_266_p3;
    sc_signal< sc_lv<12> > p_shl_fu_258_p3;
    sc_signal< sc_lv<12> > p_shl9_cast_fu_274_p1;
    sc_signal< sc_lv<5> > kernel_col_cast_fu_284_p1;
    sc_signal< sc_lv<5> > input_col_fu_300_p2;
    sc_signal< sc_lv<4> > tmp_35_fu_316_p1;
    sc_signal< sc_lv<7> > tmp_45_fu_320_p3;
    sc_signal< sc_lv<8> > tmp_79_cast_cast_cas_fu_328_p1;
    sc_signal< sc_lv<12> > tmp1_cast_fu_342_p1;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<5> ap_const_lv5_D;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<5> ap_const_lv5_E;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<6> ap_const_lv6_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_channel_1_fu_201_p2();
    void thread_col_cast_fu_193_p1();
    void thread_data_V_address0();
    void thread_data_V_ce0();
    void thread_data_col_V_address0();
    void thread_data_col_V_ce0();
    void thread_data_col_V_d0();
    void thread_data_col_V_we0();
    void thread_index_3_fu_219_p2();
    void thread_index_4_fu_354_p2();
    void thread_input_col_fu_300_p2();
    void thread_input_row_fu_241_p2();
    void thread_kernel_col_1_fu_294_p2();
    void thread_kernel_col_cast_fu_284_p1();
    void thread_kernel_row_1_fu_235_p2();
    void thread_kernel_row_cast_fu_225_p1();
    void thread_p_0106_rec_cast_cast_fu_197_p1();
    void thread_p_rec_fu_213_p2();
    void thread_p_shl9_cast_fu_274_p1();
    void thread_p_shl9_fu_266_p3();
    void thread_p_shl_fu_258_p3();
    void thread_row_cast_fu_189_p1();
    void thread_sum_cast_fu_350_p1();
    void thread_sum_fu_345_p2();
    void thread_tmp1_cast_fu_342_p1();
    void thread_tmp1_fu_332_p2();
    void thread_tmp_35_fu_316_p1();
    void thread_tmp_38_fu_246_p2();
    void thread_tmp_39_fu_252_p2();
    void thread_tmp_40_fu_278_p2();
    void thread_tmp_41_fu_288_p2();
    void thread_tmp_42_fu_337_p1();
    void thread_tmp_43_fu_305_p2();
    void thread_tmp_44_fu_311_p1();
    void thread_tmp_45_fu_320_p3();
    void thread_tmp_79_cast_cast_cas_fu_328_p1();
    void thread_tmp_fu_207_p2();
    void thread_tmp_s_fu_229_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
