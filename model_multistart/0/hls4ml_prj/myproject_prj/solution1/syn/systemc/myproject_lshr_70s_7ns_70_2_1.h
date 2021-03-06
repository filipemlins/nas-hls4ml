// ==============================================================
// File generated on Tue Mar 02 23:01:38 -03 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __myproject_lshr_70s_7ns_70_2_1__HH__
#define __myproject_lshr_70s_7ns_70_2_1__HH__
#include "ACMP_lshr.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int OPCODE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(myproject_lshr_70s_7ns_70_2_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_lshr<ID, 2, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_lshr_U;

    SC_CTOR(myproject_lshr_70s_7ns_70_2_1):  ACMP_lshr_U ("ACMP_lshr_U") {
        ACMP_lshr_U.clk(clk);
        ACMP_lshr_U.reset(reset);
        ACMP_lshr_U.ce(ce);
        ACMP_lshr_U.din0(din0);
        ACMP_lshr_U.din1(din1);
        ACMP_lshr_U.dout(dout);

    }

};

#endif //
