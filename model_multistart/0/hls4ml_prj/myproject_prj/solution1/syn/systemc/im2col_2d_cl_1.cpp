// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "im2col_2d_cl_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic im2col_2d_cl_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic im2col_2d_cl_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> im2col_2d_cl_1::ap_ST_fsm_state1 = "1";
const sc_lv<6> im2col_2d_cl_1::ap_ST_fsm_state2 = "10";
const sc_lv<6> im2col_2d_cl_1::ap_ST_fsm_state3 = "100";
const sc_lv<6> im2col_2d_cl_1::ap_ST_fsm_state4 = "1000";
const sc_lv<6> im2col_2d_cl_1::ap_ST_fsm_state5 = "10000";
const sc_lv<6> im2col_2d_cl_1::ap_ST_fsm_state6 = "100000";
const sc_lv<32> im2col_2d_cl_1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> im2col_2d_cl_1::ap_const_lv32_1 = "1";
const sc_lv<1> im2col_2d_cl_1::ap_const_lv1_0 = "0";
const sc_lv<32> im2col_2d_cl_1::ap_const_lv32_2 = "10";
const sc_lv<32> im2col_2d_cl_1::ap_const_lv32_3 = "11";
const sc_lv<32> im2col_2d_cl_1::ap_const_lv32_4 = "100";
const sc_lv<32> im2col_2d_cl_1::ap_const_lv32_5 = "101";
const sc_lv<5> im2col_2d_cl_1::ap_const_lv5_0 = "00000";
const sc_lv<1> im2col_2d_cl_1::ap_const_lv1_1 = "1";
const sc_lv<3> im2col_2d_cl_1::ap_const_lv3_0 = "000";
const sc_lv<14> im2col_2d_cl_1::ap_const_lv14_0 = "00000000000000";
const sc_lv<3> im2col_2d_cl_1::ap_const_lv3_4 = "100";
const sc_lv<3> im2col_2d_cl_1::ap_const_lv3_1 = "1";
const sc_lv<5> im2col_2d_cl_1::ap_const_lv5_4 = "100";
const sc_lv<5> im2col_2d_cl_1::ap_const_lv5_1 = "1";
const bool im2col_2d_cl_1::ap_const_boolean_1 = true;

im2col_2d_cl_1::im2col_2d_cl_1(sc_module_name name) : sc_module(name), mVcdFile(0) {

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

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_s_fu_148_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_s_fu_148_p2 );

    SC_METHOD(thread_col_cast_fu_140_p1);
    sensitive << ( col );

    SC_METHOD(thread_data_V_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_37_fu_235_p1 );

    SC_METHOD(thread_data_V_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_data_col_V_address0);
    sensitive << ( tmp_reg_268 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_34_fu_212_p3 );
    sensitive << ( tmp_32_fu_191_p2 );
    sensitive << ( tmp_35_fu_220_p1 );
    sensitive << ( tmp_35_reg_289 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_33_fu_230_p1 );

    SC_METHOD(thread_data_col_V_ce0);
    sensitive << ( tmp_reg_268 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_34_fu_212_p3 );
    sensitive << ( tmp_32_fu_191_p2 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_data_col_V_d0);
    sensitive << ( tmp_reg_268 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_34_fu_212_p3 );
    sensitive << ( tmp_32_fu_191_p2 );
    sensitive << ( data_V_load_reg_304 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_data_col_V_we0);
    sensitive << ( tmp_reg_268 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_34_fu_212_p3 );
    sensitive << ( tmp_34_reg_285 );
    sensitive << ( tmp_32_fu_191_p2 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_index_4_fu_239_p2);
    sensitive << ( index_2_reg_114 );

    SC_METHOD(thread_input_col_cast_cast_fu_208_p1);
    sensitive << ( input_col_fu_203_p2 );

    SC_METHOD(thread_input_col_fu_203_p2);
    sensitive << ( col_cast_reg_250 );
    sensitive << ( kernel_col_cast_fu_187_p1 );

    SC_METHOD(thread_input_row_fu_160_p2);
    sensitive << ( row_cast_reg_245 );
    sensitive << ( kernel_row_cast_fu_144_p1 );

    SC_METHOD(thread_kernel_col_2_fu_197_p2);
    sensitive << ( kernel_col_reg_125 );

    SC_METHOD(thread_kernel_col_cast_fu_187_p1);
    sensitive << ( kernel_col_reg_125 );

    SC_METHOD(thread_kernel_row_2_fu_154_p2);
    sensitive << ( kernel_row_reg_103 );

    SC_METHOD(thread_kernel_row_cast_fu_144_p1);
    sensitive << ( kernel_row_reg_103 );

    SC_METHOD(thread_row_cast_fu_136_p1);
    sensitive << ( row );

    SC_METHOD(thread_tmp_30_fu_165_p2);
    sensitive << ( index_1_reg_91 );

    SC_METHOD(thread_tmp_31_fu_179_p3);
    sensitive << ( input_row_fu_160_p2 );

    SC_METHOD(thread_tmp_32_fu_191_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( kernel_col_reg_125 );

    SC_METHOD(thread_tmp_33_fu_230_p1);
    sensitive << ( index_2_reg_114 );

    SC_METHOD(thread_tmp_34_fu_212_p3);
    sensitive << ( input_col_fu_203_p2 );

    SC_METHOD(thread_tmp_35_fu_220_p1);
    sensitive << ( index_2_reg_114 );

    SC_METHOD(thread_tmp_36_fu_225_p2);
    sensitive << ( tmp_31_reg_272 );
    sensitive << ( input_col_cast_cast_fu_208_p1 );

    SC_METHOD(thread_tmp_37_fu_235_p1);
    sensitive << ( tmp_36_reg_294 );

    SC_METHOD(thread_tmp_s_fu_148_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( kernel_row_reg_103 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_s_fu_148_p2 );
    sensitive << ( tmp_reg_268 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_34_fu_212_p3 );
    sensitive << ( tmp_32_fu_191_p2 );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "im2col_2d_cl_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, data_V_address0, "(port)data_V_address0");
    sc_trace(mVcdFile, data_V_ce0, "(port)data_V_ce0");
    sc_trace(mVcdFile, data_V_q0, "(port)data_V_q0");
    sc_trace(mVcdFile, data_col_V_address0, "(port)data_col_V_address0");
    sc_trace(mVcdFile, data_col_V_ce0, "(port)data_col_V_ce0");
    sc_trace(mVcdFile, data_col_V_we0, "(port)data_col_V_we0");
    sc_trace(mVcdFile, data_col_V_d0, "(port)data_col_V_d0");
    sc_trace(mVcdFile, row, "(port)row");
    sc_trace(mVcdFile, col, "(port)col");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, row_cast_fu_136_p1, "row_cast_fu_136_p1");
    sc_trace(mVcdFile, row_cast_reg_245, "row_cast_reg_245");
    sc_trace(mVcdFile, col_cast_fu_140_p1, "col_cast_fu_140_p1");
    sc_trace(mVcdFile, col_cast_reg_250, "col_cast_reg_250");
    sc_trace(mVcdFile, kernel_row_2_fu_154_p2, "kernel_row_2_fu_154_p2");
    sc_trace(mVcdFile, kernel_row_2_reg_258, "kernel_row_2_reg_258");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_30_fu_165_p2, "tmp_30_fu_165_p2");
    sc_trace(mVcdFile, tmp_30_reg_263, "tmp_30_reg_263");
    sc_trace(mVcdFile, tmp_s_fu_148_p2, "tmp_s_fu_148_p2");
    sc_trace(mVcdFile, tmp_reg_268, "tmp_reg_268");
    sc_trace(mVcdFile, tmp_31_fu_179_p3, "tmp_31_fu_179_p3");
    sc_trace(mVcdFile, tmp_31_reg_272, "tmp_31_reg_272");
    sc_trace(mVcdFile, kernel_col_2_fu_197_p2, "kernel_col_2_fu_197_p2");
    sc_trace(mVcdFile, kernel_col_2_reg_280, "kernel_col_2_reg_280");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_34_fu_212_p3, "tmp_34_fu_212_p3");
    sc_trace(mVcdFile, tmp_34_reg_285, "tmp_34_reg_285");
    sc_trace(mVcdFile, tmp_32_fu_191_p2, "tmp_32_fu_191_p2");
    sc_trace(mVcdFile, tmp_35_fu_220_p1, "tmp_35_fu_220_p1");
    sc_trace(mVcdFile, tmp_35_reg_289, "tmp_35_reg_289");
    sc_trace(mVcdFile, tmp_36_fu_225_p2, "tmp_36_fu_225_p2");
    sc_trace(mVcdFile, tmp_36_reg_294, "tmp_36_reg_294");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, data_V_load_reg_304, "data_V_load_reg_304");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, index_4_fu_239_p2, "index_4_fu_239_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, index_1_reg_91, "index_1_reg_91");
    sc_trace(mVcdFile, kernel_row_reg_103, "kernel_row_reg_103");
    sc_trace(mVcdFile, index_2_reg_114, "index_2_reg_114");
    sc_trace(mVcdFile, kernel_col_reg_125, "kernel_col_reg_125");
    sc_trace(mVcdFile, tmp_33_fu_230_p1, "tmp_33_fu_230_p1");
    sc_trace(mVcdFile, tmp_37_fu_235_p1, "tmp_37_fu_235_p1");
    sc_trace(mVcdFile, kernel_row_cast_fu_144_p1, "kernel_row_cast_fu_144_p1");
    sc_trace(mVcdFile, input_row_fu_160_p2, "input_row_fu_160_p2");
    sc_trace(mVcdFile, kernel_col_cast_fu_187_p1, "kernel_col_cast_fu_187_p1");
    sc_trace(mVcdFile, input_col_fu_203_p2, "input_col_fu_203_p2");
    sc_trace(mVcdFile, input_col_cast_cast_fu_208_p1, "input_col_cast_cast_fu_208_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

im2col_2d_cl_1::~im2col_2d_cl_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void im2col_2d_cl_1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(tmp_32_fu_191_p2.read(), ap_const_lv1_1))) {
        index_1_reg_91 = tmp_30_reg_263.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        index_1_reg_91 = ap_const_lv5_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        index_2_reg_114 = index_4_fu_239_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_s_fu_148_p2.read(), ap_const_lv1_0))) {
        index_2_reg_114 = index_1_reg_91.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        kernel_col_reg_125 = kernel_col_2_reg_280.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_s_fu_148_p2.read(), ap_const_lv1_0))) {
        kernel_col_reg_125 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(tmp_32_fu_191_p2.read(), ap_const_lv1_1))) {
        kernel_row_reg_103 = kernel_row_2_reg_258.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        kernel_row_reg_103 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        col_cast_reg_250 = col_cast_fu_140_p1.read();
        row_cast_reg_245 = row_cast_fu_136_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        data_V_load_reg_304 = data_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        kernel_col_2_reg_280 = kernel_col_2_fu_197_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        kernel_row_2_reg_258 = kernel_row_2_fu_154_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_s_fu_148_p2.read(), ap_const_lv1_0))) {
        tmp_30_reg_263 = tmp_30_fu_165_p2.read();
        tmp_31_reg_272 = tmp_31_fu_179_p3.read();
        tmp_reg_268 = input_row_fu_160_p2.read().range(5, 5);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_268.read()))) {
        tmp_34_reg_285 = input_col_fu_203_p2.read().range(5, 5);
        tmp_35_reg_289 = tmp_35_fu_220_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_268.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_34_fu_212_p3.read()))) {
        tmp_36_reg_294 = tmp_36_fu_225_p2.read();
    }
}

void im2col_2d_cl_1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void im2col_2d_cl_1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void im2col_2d_cl_1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void im2col_2d_cl_1::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void im2col_2d_cl_1::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void im2col_2d_cl_1::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void im2col_2d_cl_1::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_s_fu_148_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void im2col_2d_cl_1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void im2col_2d_cl_1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_s_fu_148_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void im2col_2d_cl_1::thread_col_cast_fu_140_p1() {
    col_cast_fu_140_p1 = esl_zext<6,5>(col.read());
}

void im2col_2d_cl_1::thread_data_V_address0() {
    data_V_address0 =  (sc_lv<10>) (tmp_37_fu_235_p1.read());
}

void im2col_2d_cl_1::thread_data_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        data_V_ce0 = ap_const_logic_1;
    } else {
        data_V_ce0 = ap_const_logic_0;
    }
}

void im2col_2d_cl_1::thread_data_col_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        data_col_V_address0 =  (sc_lv<4>) (tmp_35_reg_289.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
                esl_seteq<1,1,1>(tmp_reg_268.read(), ap_const_lv1_1))) {
        data_col_V_address0 =  (sc_lv<4>) (tmp_33_fu_230_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_268.read()) && 
                esl_seteq<1,1,1>(tmp_34_fu_212_p3.read(), ap_const_lv1_1))) {
        data_col_V_address0 =  (sc_lv<4>) (tmp_35_fu_220_p1.read());
    } else {
        data_col_V_address0 = "XXXX";
    }
}

void im2col_2d_cl_1::thread_data_col_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_268.read()) && 
          esl_seteq<1,1,1>(tmp_34_fu_212_p3.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_268.read(), ap_const_lv1_1)))) {
        data_col_V_ce0 = ap_const_logic_1;
    } else {
        data_col_V_ce0 = ap_const_logic_0;
    }
}

void im2col_2d_cl_1::thread_data_col_V_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        data_col_V_d0 = data_V_load_reg_304.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_268.read()) && 
                 esl_seteq<1,1,1>(tmp_34_fu_212_p3.read(), ap_const_lv1_1)) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
                 esl_seteq<1,1,1>(tmp_reg_268.read(), ap_const_lv1_1)))) {
        data_col_V_d0 = ap_const_lv14_0;
    } else {
        data_col_V_d0 =  (sc_lv<14>) ("XXXXXXXXXXXXXX");
    }
}

void im2col_2d_cl_1::thread_data_col_V_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_268.read()) && 
          esl_seteq<1,1,1>(tmp_34_fu_212_p3.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_268.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_268.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_34_reg_285.read())))) {
        data_col_V_we0 = ap_const_logic_1;
    } else {
        data_col_V_we0 = ap_const_logic_0;
    }
}

void im2col_2d_cl_1::thread_index_4_fu_239_p2() {
    index_4_fu_239_p2 = (!index_2_reg_114.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(index_2_reg_114.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void im2col_2d_cl_1::thread_input_col_cast_cast_fu_208_p1() {
    input_col_cast_cast_fu_208_p1 = esl_zext<11,6>(input_col_fu_203_p2.read());
}

void im2col_2d_cl_1::thread_input_col_fu_203_p2() {
    input_col_fu_203_p2 = (!col_cast_reg_250.read().is_01() || !kernel_col_cast_fu_187_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(col_cast_reg_250.read()) + sc_biguint<6>(kernel_col_cast_fu_187_p1.read()));
}

void im2col_2d_cl_1::thread_input_row_fu_160_p2() {
    input_row_fu_160_p2 = (!kernel_row_cast_fu_144_p1.read().is_01() || !row_cast_reg_245.read().is_01())? sc_lv<6>(): (sc_biguint<6>(kernel_row_cast_fu_144_p1.read()) + sc_biguint<6>(row_cast_reg_245.read()));
}

void im2col_2d_cl_1::thread_kernel_col_2_fu_197_p2() {
    kernel_col_2_fu_197_p2 = (!kernel_col_reg_125.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(kernel_col_reg_125.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void im2col_2d_cl_1::thread_kernel_col_cast_fu_187_p1() {
    kernel_col_cast_fu_187_p1 = esl_zext<6,3>(kernel_col_reg_125.read());
}

void im2col_2d_cl_1::thread_kernel_row_2_fu_154_p2() {
    kernel_row_2_fu_154_p2 = (!kernel_row_reg_103.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(kernel_row_reg_103.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void im2col_2d_cl_1::thread_kernel_row_cast_fu_144_p1() {
    kernel_row_cast_fu_144_p1 = esl_zext<6,3>(kernel_row_reg_103.read());
}

void im2col_2d_cl_1::thread_row_cast_fu_136_p1() {
    row_cast_fu_136_p1 = esl_zext<6,5>(row.read());
}

void im2col_2d_cl_1::thread_tmp_30_fu_165_p2() {
    tmp_30_fu_165_p2 = (!index_1_reg_91.read().is_01() || !ap_const_lv5_4.is_01())? sc_lv<5>(): (sc_biguint<5>(index_1_reg_91.read()) + sc_biguint<5>(ap_const_lv5_4));
}

void im2col_2d_cl_1::thread_tmp_31_fu_179_p3() {
    tmp_31_fu_179_p3 = esl_concat<6,5>(input_row_fu_160_p2.read(), ap_const_lv5_0);
}

void im2col_2d_cl_1::thread_tmp_32_fu_191_p2() {
    tmp_32_fu_191_p2 = (!kernel_col_reg_125.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(kernel_col_reg_125.read() == ap_const_lv3_4);
}

void im2col_2d_cl_1::thread_tmp_33_fu_230_p1() {
    tmp_33_fu_230_p1 = esl_zext<64,5>(index_2_reg_114.read());
}

void im2col_2d_cl_1::thread_tmp_34_fu_212_p3() {
    tmp_34_fu_212_p3 = input_col_fu_203_p2.read().range(5, 5);
}

void im2col_2d_cl_1::thread_tmp_35_fu_220_p1() {
    tmp_35_fu_220_p1 = esl_zext<64,5>(index_2_reg_114.read());
}

void im2col_2d_cl_1::thread_tmp_36_fu_225_p2() {
    tmp_36_fu_225_p2 = (!tmp_31_reg_272.read().is_01() || !input_col_cast_cast_fu_208_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(tmp_31_reg_272.read()) + sc_biguint<11>(input_col_cast_cast_fu_208_p1.read()));
}

void im2col_2d_cl_1::thread_tmp_37_fu_235_p1() {
    tmp_37_fu_235_p1 = esl_zext<64,11>(tmp_36_reg_294.read());
}

void im2col_2d_cl_1::thread_tmp_s_fu_148_p2() {
    tmp_s_fu_148_p2 = (!kernel_row_reg_103.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(kernel_row_reg_103.read() == ap_const_lv3_4);
}

void im2col_2d_cl_1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_s_fu_148_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_32_fu_191_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && ((esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
   esl_seteq<1,1,1>(tmp_34_fu_212_p3.read(), ap_const_lv1_1)) || 
  (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_32_fu_191_p2.read()) && 
   esl_seteq<1,1,1>(tmp_reg_268.read(), ap_const_lv1_1))))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

}

