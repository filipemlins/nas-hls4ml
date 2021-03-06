// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "conv_2d_large_cl.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic conv_2d_large_cl::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic conv_2d_large_cl::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<9> conv_2d_large_cl::ap_ST_fsm_state1 = "1";
const sc_lv<9> conv_2d_large_cl::ap_ST_fsm_state2 = "10";
const sc_lv<9> conv_2d_large_cl::ap_ST_fsm_state3 = "100";
const sc_lv<9> conv_2d_large_cl::ap_ST_fsm_state4 = "1000";
const sc_lv<9> conv_2d_large_cl::ap_ST_fsm_state5 = "10000";
const sc_lv<9> conv_2d_large_cl::ap_ST_fsm_state6 = "100000";
const sc_lv<9> conv_2d_large_cl::ap_ST_fsm_state7 = "1000000";
const sc_lv<9> conv_2d_large_cl::ap_ST_fsm_state8 = "10000000";
const sc_lv<9> conv_2d_large_cl::ap_ST_fsm_state9 = "100000000";
const sc_lv<32> conv_2d_large_cl::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> conv_2d_large_cl::ap_const_lv32_1 = "1";
const sc_lv<32> conv_2d_large_cl::ap_const_lv32_2 = "10";
const sc_lv<32> conv_2d_large_cl::ap_const_lv32_5 = "101";
const sc_lv<32> conv_2d_large_cl::ap_const_lv32_6 = "110";
const sc_lv<1> conv_2d_large_cl::ap_const_lv1_0 = "0";
const sc_lv<32> conv_2d_large_cl::ap_const_lv32_7 = "111";
const sc_lv<1> conv_2d_large_cl::ap_const_lv1_1 = "1";
const sc_lv<4> conv_2d_large_cl::ap_const_lv4_0 = "0000";
const sc_lv<12> conv_2d_large_cl::ap_const_lv12_0 = "000000000000";
const sc_lv<5> conv_2d_large_cl::ap_const_lv5_0 = "00000";
const sc_lv<32> conv_2d_large_cl::ap_const_lv32_8 = "1000";
const sc_lv<32> conv_2d_large_cl::ap_const_lv32_4 = "100";
const sc_lv<32> conv_2d_large_cl::ap_const_lv32_3 = "11";
const sc_lv<12> conv_2d_large_cl::ap_const_lv12_D0 = "11010000";
const sc_lv<4> conv_2d_large_cl::ap_const_lv4_D = "1101";
const sc_lv<4> conv_2d_large_cl::ap_const_lv4_1 = "1";
const sc_lv<5> conv_2d_large_cl::ap_const_lv5_10 = "10000";
const sc_lv<5> conv_2d_large_cl::ap_const_lv5_1 = "1";
const bool conv_2d_large_cl::ap_const_boolean_1 = true;

conv_2d_large_cl::conv_2d_large_cl(sc_module_name name) : sc_module(name), mVcdFile(0) {
    data_col_V_U = new conv_2d_large_cl_data_col_V("data_col_V_U");
    data_col_V_U->clk(ap_clk);
    data_col_V_U->reset(ap_rst);
    data_col_V_U->address0(data_col_V_address0);
    data_col_V_U->ce0(data_col_V_ce0);
    data_col_V_U->we0(data_col_V_we0);
    data_col_V_U->d0(grp_im2col_2d_cl_fu_142_data_col_V_d0);
    data_col_V_U->q0(data_col_V_q0);
    res_V_assign_U = new dense_large_rf_gt_ni_acc_V("res_V_assign_U");
    res_V_assign_U->clk(ap_clk);
    res_V_assign_U->reset(ap_rst);
    res_V_assign_U->address0(res_V_assign_address0);
    res_V_assign_U->ce0(res_V_assign_ce0);
    res_V_assign_U->we0(res_V_assign_we0);
    res_V_assign_U->d0(grp_dense_large_rf_gt_ni_fu_132_res_V_d0);
    res_V_assign_U->q0(res_V_assign_q0);
    grp_dense_large_rf_gt_ni_fu_132 = new dense_large_rf_gt_ni("grp_dense_large_rf_gt_ni_fu_132");
    grp_dense_large_rf_gt_ni_fu_132->ap_clk(ap_clk);
    grp_dense_large_rf_gt_ni_fu_132->ap_rst(ap_rst);
    grp_dense_large_rf_gt_ni_fu_132->ap_start(grp_dense_large_rf_gt_ni_fu_132_ap_start);
    grp_dense_large_rf_gt_ni_fu_132->ap_done(grp_dense_large_rf_gt_ni_fu_132_ap_done);
    grp_dense_large_rf_gt_ni_fu_132->ap_idle(grp_dense_large_rf_gt_ni_fu_132_ap_idle);
    grp_dense_large_rf_gt_ni_fu_132->ap_ready(grp_dense_large_rf_gt_ni_fu_132_ap_ready);
    grp_dense_large_rf_gt_ni_fu_132->data_V_address0(grp_dense_large_rf_gt_ni_fu_132_data_V_address0);
    grp_dense_large_rf_gt_ni_fu_132->data_V_ce0(grp_dense_large_rf_gt_ni_fu_132_data_V_ce0);
    grp_dense_large_rf_gt_ni_fu_132->data_V_q0(data_col_V_q0);
    grp_dense_large_rf_gt_ni_fu_132->res_V_address0(grp_dense_large_rf_gt_ni_fu_132_res_V_address0);
    grp_dense_large_rf_gt_ni_fu_132->res_V_ce0(grp_dense_large_rf_gt_ni_fu_132_res_V_ce0);
    grp_dense_large_rf_gt_ni_fu_132->res_V_we0(grp_dense_large_rf_gt_ni_fu_132_res_V_we0);
    grp_dense_large_rf_gt_ni_fu_132->res_V_d0(grp_dense_large_rf_gt_ni_fu_132_res_V_d0);
    grp_im2col_2d_cl_fu_142 = new im2col_2d_cl("grp_im2col_2d_cl_fu_142");
    grp_im2col_2d_cl_fu_142->ap_clk(ap_clk);
    grp_im2col_2d_cl_fu_142->ap_rst(ap_rst);
    grp_im2col_2d_cl_fu_142->ap_start(grp_im2col_2d_cl_fu_142_ap_start);
    grp_im2col_2d_cl_fu_142->ap_done(grp_im2col_2d_cl_fu_142_ap_done);
    grp_im2col_2d_cl_fu_142->ap_idle(grp_im2col_2d_cl_fu_142_ap_idle);
    grp_im2col_2d_cl_fu_142->ap_ready(grp_im2col_2d_cl_fu_142_ap_ready);
    grp_im2col_2d_cl_fu_142->data_V_address0(grp_im2col_2d_cl_fu_142_data_V_address0);
    grp_im2col_2d_cl_fu_142->data_V_ce0(grp_im2col_2d_cl_fu_142_data_V_ce0);
    grp_im2col_2d_cl_fu_142->data_V_q0(data_V_q0);
    grp_im2col_2d_cl_fu_142->data_col_V_address0(grp_im2col_2d_cl_fu_142_data_col_V_address0);
    grp_im2col_2d_cl_fu_142->data_col_V_ce0(grp_im2col_2d_cl_fu_142_data_col_V_ce0);
    grp_im2col_2d_cl_fu_142->data_col_V_we0(grp_im2col_2d_cl_fu_142_data_col_V_we0);
    grp_im2col_2d_cl_fu_142->data_col_V_d0(grp_im2col_2d_cl_fu_142_data_col_V_d0);
    grp_im2col_2d_cl_fu_142->row(i_reg_85);
    grp_im2col_2d_cl_fu_142->col(j_reg_109);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_159_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_159_p2 );

    SC_METHOD(thread_data_V_address0);
    sensitive << ( grp_im2col_2d_cl_fu_142_data_V_address0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_data_V_ce0);
    sensitive << ( grp_im2col_2d_cl_fu_142_data_V_ce0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_data_col_V_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( grp_dense_large_rf_gt_ni_fu_132_data_V_address0 );
    sensitive << ( grp_im2col_2d_cl_fu_142_data_col_V_address0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_data_col_V_ce0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( grp_dense_large_rf_gt_ni_fu_132_data_V_ce0 );
    sensitive << ( grp_im2col_2d_cl_fu_142_data_col_V_ce0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_data_col_V_we0);
    sensitive << ( grp_im2col_2d_cl_fu_142_data_col_V_we0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_grp_dense_large_rf_gt_ni_fu_132_ap_start);
    sensitive << ( grp_dense_large_rf_gt_ni_fu_132_ap_start_reg );

    SC_METHOD(thread_grp_im2col_2d_cl_fu_142_ap_start);
    sensitive << ( grp_im2col_2d_cl_fu_142_ap_start_reg );

    SC_METHOD(thread_i_8_fu_165_p2);
    sensitive << ( i_reg_85 );

    SC_METHOD(thread_j_1_fu_177_p2);
    sensitive << ( j_reg_109 );

    SC_METHOD(thread_k_1_fu_205_p2);
    sensitive << ( k_reg_121 );

    SC_METHOD(thread_k_cast4_cast_fu_195_p1);
    sensitive << ( k_reg_121 );

    SC_METHOD(thread_next_mul_fu_153_p2);
    sensitive << ( phi_mul_reg_97 );

    SC_METHOD(thread_res_V_address0);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( tmp_85_fu_231_p1 );

    SC_METHOD(thread_res_V_assign_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( grp_dense_large_rf_gt_ni_fu_132_res_V_address0 );
    sensitive << ( tmp_86_fu_226_p1 );

    SC_METHOD(thread_res_V_assign_ce0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( grp_dense_large_rf_gt_ni_fu_132_res_V_ce0 );

    SC_METHOD(thread_res_V_assign_we0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( grp_dense_large_rf_gt_ni_fu_132_res_V_we0 );

    SC_METHOD(thread_res_V_ce0);
    sensitive << ( ap_CS_fsm_state9 );

    SC_METHOD(thread_res_V_d0);
    sensitive << ( res_V_assign_load_reg_279 );
    sensitive << ( ap_CS_fsm_state9 );

    SC_METHOD(thread_res_V_we0);
    sensitive << ( ap_CS_fsm_state9 );

    SC_METHOD(thread_tmp1_cast_fu_216_p1);
    sensitive << ( tmp1_fu_211_p2 );

    SC_METHOD(thread_tmp1_fu_211_p2);
    sensitive << ( tmp_128_cast_cast_reg_256 );
    sensitive << ( k_cast4_cast_fu_195_p1 );

    SC_METHOD(thread_tmp_128_cast_cast_fu_191_p1);
    sensitive << ( tmp_82_fu_183_p3 );

    SC_METHOD(thread_tmp_82_fu_183_p3);
    sensitive << ( j_reg_109 );

    SC_METHOD(thread_tmp_83_fu_199_p2);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( k_reg_121 );

    SC_METHOD(thread_tmp_84_fu_220_p2);
    sensitive << ( phi_mul_reg_97 );
    sensitive << ( tmp1_cast_fu_216_p1 );

    SC_METHOD(thread_tmp_85_fu_231_p1);
    sensitive << ( tmp_84_reg_269 );

    SC_METHOD(thread_tmp_86_fu_226_p1);
    sensitive << ( k_reg_121 );

    SC_METHOD(thread_tmp_fu_159_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_85 );

    SC_METHOD(thread_tmp_s_fu_171_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_reg_109 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( grp_dense_large_rf_gt_ni_fu_132_ap_done );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_83_fu_199_p2 );
    sensitive << ( grp_im2col_2d_cl_fu_142_ap_done );
    sensitive << ( tmp_s_fu_171_p2 );
    sensitive << ( tmp_fu_159_p2 );
    sensitive << ( ap_CS_fsm_state4 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "000000001";
    grp_dense_large_rf_gt_ni_fu_132_ap_start_reg = SC_LOGIC_0;
    grp_im2col_2d_cl_fu_142_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "conv_2d_large_cl_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, data_V_address0, "(port)data_V_address0");
    sc_trace(mVcdFile, data_V_ce0, "(port)data_V_ce0");
    sc_trace(mVcdFile, data_V_q0, "(port)data_V_q0");
    sc_trace(mVcdFile, res_V_address0, "(port)res_V_address0");
    sc_trace(mVcdFile, res_V_ce0, "(port)res_V_ce0");
    sc_trace(mVcdFile, res_V_we0, "(port)res_V_we0");
    sc_trace(mVcdFile, res_V_d0, "(port)res_V_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, next_mul_fu_153_p2, "next_mul_fu_153_p2");
    sc_trace(mVcdFile, next_mul_reg_235, "next_mul_reg_235");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_8_fu_165_p2, "i_8_fu_165_p2");
    sc_trace(mVcdFile, i_8_reg_243, "i_8_reg_243");
    sc_trace(mVcdFile, j_1_fu_177_p2, "j_1_fu_177_p2");
    sc_trace(mVcdFile, j_1_reg_251, "j_1_reg_251");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_128_cast_cast_fu_191_p1, "tmp_128_cast_cast_fu_191_p1");
    sc_trace(mVcdFile, tmp_128_cast_cast_reg_256, "tmp_128_cast_cast_reg_256");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_ap_ready, "grp_dense_large_rf_gt_ni_fu_132_ap_ready");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_ap_done, "grp_dense_large_rf_gt_ni_fu_132_ap_done");
    sc_trace(mVcdFile, k_1_fu_205_p2, "k_1_fu_205_p2");
    sc_trace(mVcdFile, k_1_reg_264, "k_1_reg_264");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, tmp_84_fu_220_p2, "tmp_84_fu_220_p2");
    sc_trace(mVcdFile, tmp_84_reg_269, "tmp_84_reg_269");
    sc_trace(mVcdFile, tmp_83_fu_199_p2, "tmp_83_fu_199_p2");
    sc_trace(mVcdFile, res_V_assign_q0, "res_V_assign_q0");
    sc_trace(mVcdFile, res_V_assign_load_reg_279, "res_V_assign_load_reg_279");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, data_col_V_address0, "data_col_V_address0");
    sc_trace(mVcdFile, data_col_V_ce0, "data_col_V_ce0");
    sc_trace(mVcdFile, data_col_V_we0, "data_col_V_we0");
    sc_trace(mVcdFile, data_col_V_q0, "data_col_V_q0");
    sc_trace(mVcdFile, res_V_assign_address0, "res_V_assign_address0");
    sc_trace(mVcdFile, res_V_assign_ce0, "res_V_assign_ce0");
    sc_trace(mVcdFile, res_V_assign_we0, "res_V_assign_we0");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_ap_start, "grp_dense_large_rf_gt_ni_fu_132_ap_start");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_ap_idle, "grp_dense_large_rf_gt_ni_fu_132_ap_idle");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_data_V_address0, "grp_dense_large_rf_gt_ni_fu_132_data_V_address0");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_data_V_ce0, "grp_dense_large_rf_gt_ni_fu_132_data_V_ce0");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_res_V_address0, "grp_dense_large_rf_gt_ni_fu_132_res_V_address0");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_res_V_ce0, "grp_dense_large_rf_gt_ni_fu_132_res_V_ce0");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_res_V_we0, "grp_dense_large_rf_gt_ni_fu_132_res_V_we0");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_res_V_d0, "grp_dense_large_rf_gt_ni_fu_132_res_V_d0");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_ap_start, "grp_im2col_2d_cl_fu_142_ap_start");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_ap_done, "grp_im2col_2d_cl_fu_142_ap_done");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_ap_idle, "grp_im2col_2d_cl_fu_142_ap_idle");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_ap_ready, "grp_im2col_2d_cl_fu_142_ap_ready");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_data_V_address0, "grp_im2col_2d_cl_fu_142_data_V_address0");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_data_V_ce0, "grp_im2col_2d_cl_fu_142_data_V_ce0");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_data_col_V_address0, "grp_im2col_2d_cl_fu_142_data_col_V_address0");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_data_col_V_ce0, "grp_im2col_2d_cl_fu_142_data_col_V_ce0");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_data_col_V_we0, "grp_im2col_2d_cl_fu_142_data_col_V_we0");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_data_col_V_d0, "grp_im2col_2d_cl_fu_142_data_col_V_d0");
    sc_trace(mVcdFile, i_reg_85, "i_reg_85");
    sc_trace(mVcdFile, tmp_s_fu_171_p2, "tmp_s_fu_171_p2");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, phi_mul_reg_97, "phi_mul_reg_97");
    sc_trace(mVcdFile, j_reg_109, "j_reg_109");
    sc_trace(mVcdFile, tmp_fu_159_p2, "tmp_fu_159_p2");
    sc_trace(mVcdFile, k_reg_121, "k_reg_121");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, grp_dense_large_rf_gt_ni_fu_132_ap_start_reg, "grp_dense_large_rf_gt_ni_fu_132_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, grp_im2col_2d_cl_fu_142_ap_start_reg, "grp_im2col_2d_cl_fu_142_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_86_fu_226_p1, "tmp_86_fu_226_p1");
    sc_trace(mVcdFile, tmp_85_fu_231_p1, "tmp_85_fu_231_p1");
    sc_trace(mVcdFile, tmp_82_fu_183_p3, "tmp_82_fu_183_p3");
    sc_trace(mVcdFile, k_cast4_cast_fu_195_p1, "k_cast4_cast_fu_195_p1");
    sc_trace(mVcdFile, tmp1_fu_211_p2, "tmp1_fu_211_p2");
    sc_trace(mVcdFile, tmp1_cast_fu_216_p1, "tmp1_cast_fu_216_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

conv_2d_large_cl::~conv_2d_large_cl() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete data_col_V_U;
    delete res_V_assign_U;
    delete grp_dense_large_rf_gt_ni_fu_132;
    delete grp_im2col_2d_cl_fu_142;
}

void conv_2d_large_cl::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_fu_159_p2.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_dense_large_rf_gt_ni_fu_132_ap_start_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
            grp_dense_large_rf_gt_ni_fu_132_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_dense_large_rf_gt_ni_fu_132_ap_ready.read())) {
            grp_dense_large_rf_gt_ni_fu_132_ap_start_reg = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_im2col_2d_cl_fu_142_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
             esl_seteq<1,1,1>(ap_const_lv1_0, tmp_s_fu_171_p2.read()))) {
            grp_im2col_2d_cl_fu_142_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_im2col_2d_cl_fu_142_ap_ready.read())) {
            grp_im2col_2d_cl_fu_142_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        i_reg_85 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(tmp_s_fu_171_p2.read(), ap_const_lv1_1))) {
        i_reg_85 = i_8_reg_243.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(tmp_83_fu_199_p2.read(), ap_const_lv1_1))) {
        j_reg_109 = j_1_reg_251.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_159_p2.read()))) {
        j_reg_109 = ap_const_lv4_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        k_reg_121 = k_1_reg_264.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
                esl_seteq<1,1,1>(grp_dense_large_rf_gt_ni_fu_132_ap_done.read(), ap_const_logic_1))) {
        k_reg_121 = ap_const_lv5_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        phi_mul_reg_97 = ap_const_lv12_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(tmp_s_fu_171_p2.read(), ap_const_lv1_1))) {
        phi_mul_reg_97 = next_mul_reg_235.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_8_reg_243 = i_8_fu_165_p2.read();
        next_mul_reg_235 = next_mul_fu_153_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_1_reg_251 = j_1_fu_177_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        k_1_reg_264 = k_1_fu_205_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        res_V_assign_load_reg_279 = res_V_assign_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(grp_dense_large_rf_gt_ni_fu_132_ap_done.read(), ap_const_logic_1))) {
        tmp_128_cast_cast_reg_256 = tmp_128_cast_cast_fu_191_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(tmp_83_fu_199_p2.read(), ap_const_lv1_0))) {
        tmp_84_reg_269 = tmp_84_fu_220_p2.read();
    }
}

void conv_2d_large_cl::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void conv_2d_large_cl::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void conv_2d_large_cl::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void conv_2d_large_cl::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void conv_2d_large_cl::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void conv_2d_large_cl::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void conv_2d_large_cl::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void conv_2d_large_cl::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void conv_2d_large_cl::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void conv_2d_large_cl::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void conv_2d_large_cl::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_fu_159_p2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void conv_2d_large_cl::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void conv_2d_large_cl::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_fu_159_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void conv_2d_large_cl::thread_data_V_address0() {
    data_V_address0 = grp_im2col_2d_cl_fu_142_data_V_address0.read();
}

void conv_2d_large_cl::thread_data_V_ce0() {
    data_V_ce0 = grp_im2col_2d_cl_fu_142_data_V_ce0.read();
}

void conv_2d_large_cl::thread_data_col_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        data_col_V_address0 = grp_im2col_2d_cl_fu_142_data_col_V_address0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        data_col_V_address0 = grp_dense_large_rf_gt_ni_fu_132_data_V_address0.read();
    } else {
        data_col_V_address0 = "XXXXX";
    }
}

void conv_2d_large_cl::thread_data_col_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        data_col_V_ce0 = grp_im2col_2d_cl_fu_142_data_col_V_ce0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        data_col_V_ce0 = grp_dense_large_rf_gt_ni_fu_132_data_V_ce0.read();
    } else {
        data_col_V_ce0 = ap_const_logic_0;
    }
}

void conv_2d_large_cl::thread_data_col_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        data_col_V_we0 = grp_im2col_2d_cl_fu_142_data_col_V_we0.read();
    } else {
        data_col_V_we0 = ap_const_logic_0;
    }
}

void conv_2d_large_cl::thread_grp_dense_large_rf_gt_ni_fu_132_ap_start() {
    grp_dense_large_rf_gt_ni_fu_132_ap_start = grp_dense_large_rf_gt_ni_fu_132_ap_start_reg.read();
}

void conv_2d_large_cl::thread_grp_im2col_2d_cl_fu_142_ap_start() {
    grp_im2col_2d_cl_fu_142_ap_start = grp_im2col_2d_cl_fu_142_ap_start_reg.read();
}

void conv_2d_large_cl::thread_i_8_fu_165_p2() {
    i_8_fu_165_p2 = (!i_reg_85.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_reg_85.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void conv_2d_large_cl::thread_j_1_fu_177_p2() {
    j_1_fu_177_p2 = (!j_reg_109.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(j_reg_109.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void conv_2d_large_cl::thread_k_1_fu_205_p2() {
    k_1_fu_205_p2 = (!k_reg_121.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(k_reg_121.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void conv_2d_large_cl::thread_k_cast4_cast_fu_195_p1() {
    k_cast4_cast_fu_195_p1 = esl_zext<9,5>(k_reg_121.read());
}

void conv_2d_large_cl::thread_next_mul_fu_153_p2() {
    next_mul_fu_153_p2 = (!phi_mul_reg_97.read().is_01() || !ap_const_lv12_D0.is_01())? sc_lv<12>(): (sc_biguint<12>(phi_mul_reg_97.read()) + sc_biguint<12>(ap_const_lv12_D0));
}

void conv_2d_large_cl::thread_res_V_address0() {
    res_V_address0 =  (sc_lv<12>) (tmp_85_fu_231_p1.read());
}

void conv_2d_large_cl::thread_res_V_assign_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        res_V_assign_address0 =  (sc_lv<4>) (tmp_86_fu_226_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        res_V_assign_address0 = grp_dense_large_rf_gt_ni_fu_132_res_V_address0.read();
    } else {
        res_V_assign_address0 =  (sc_lv<4>) ("XXXX");
    }
}

void conv_2d_large_cl::thread_res_V_assign_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        res_V_assign_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        res_V_assign_ce0 = grp_dense_large_rf_gt_ni_fu_132_res_V_ce0.read();
    } else {
        res_V_assign_ce0 = ap_const_logic_0;
    }
}

void conv_2d_large_cl::thread_res_V_assign_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        res_V_assign_we0 = grp_dense_large_rf_gt_ni_fu_132_res_V_we0.read();
    } else {
        res_V_assign_we0 = ap_const_logic_0;
    }
}

void conv_2d_large_cl::thread_res_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        res_V_ce0 = ap_const_logic_1;
    } else {
        res_V_ce0 = ap_const_logic_0;
    }
}

void conv_2d_large_cl::thread_res_V_d0() {
    res_V_d0 = res_V_assign_load_reg_279.read();
}

void conv_2d_large_cl::thread_res_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        res_V_we0 = ap_const_logic_1;
    } else {
        res_V_we0 = ap_const_logic_0;
    }
}

void conv_2d_large_cl::thread_tmp1_cast_fu_216_p1() {
    tmp1_cast_fu_216_p1 = esl_zext<12,9>(tmp1_fu_211_p2.read());
}

void conv_2d_large_cl::thread_tmp1_fu_211_p2() {
    tmp1_fu_211_p2 = (!tmp_128_cast_cast_reg_256.read().is_01() || !k_cast4_cast_fu_195_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_128_cast_cast_reg_256.read()) + sc_biguint<9>(k_cast4_cast_fu_195_p1.read()));
}

void conv_2d_large_cl::thread_tmp_128_cast_cast_fu_191_p1() {
    tmp_128_cast_cast_fu_191_p1 = esl_zext<9,8>(tmp_82_fu_183_p3.read());
}

void conv_2d_large_cl::thread_tmp_82_fu_183_p3() {
    tmp_82_fu_183_p3 = esl_concat<4,4>(j_reg_109.read(), ap_const_lv4_0);
}

void conv_2d_large_cl::thread_tmp_83_fu_199_p2() {
    tmp_83_fu_199_p2 = (!k_reg_121.read().is_01() || !ap_const_lv5_10.is_01())? sc_lv<1>(): sc_lv<1>(k_reg_121.read() == ap_const_lv5_10);
}

void conv_2d_large_cl::thread_tmp_84_fu_220_p2() {
    tmp_84_fu_220_p2 = (!tmp1_cast_fu_216_p1.read().is_01() || !phi_mul_reg_97.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp1_cast_fu_216_p1.read()) + sc_biguint<12>(phi_mul_reg_97.read()));
}

void conv_2d_large_cl::thread_tmp_85_fu_231_p1() {
    tmp_85_fu_231_p1 = esl_zext<64,12>(tmp_84_reg_269.read());
}

void conv_2d_large_cl::thread_tmp_86_fu_226_p1() {
    tmp_86_fu_226_p1 = esl_zext<64,5>(k_reg_121.read());
}

void conv_2d_large_cl::thread_tmp_fu_159_p2() {
    tmp_fu_159_p2 = (!i_reg_85.read().is_01() || !ap_const_lv4_D.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_85.read() == ap_const_lv4_D);
}

void conv_2d_large_cl::thread_tmp_s_fu_171_p2() {
    tmp_s_fu_171_p2 = (!j_reg_109.read().is_01() || !ap_const_lv4_D.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_109.read() == ap_const_lv4_D);
}

void conv_2d_large_cl::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_fu_159_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_s_fu_171_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(grp_im2col_2d_cl_fu_142_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(grp_dense_large_rf_gt_ni_fu_132_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state7;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(tmp_83_fu_199_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<9>) ("XXXXXXXXX");
            break;
    }
}

}

