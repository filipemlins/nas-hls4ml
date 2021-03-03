// ==============================================================
// File generated on Tue Mar 02 23:01:40 -03 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dense_large_rf_gt_ni_2_outidx_H__
#define __dense_large_rf_gt_ni_2_outidx_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dense_large_rf_gt_ni_2_outidx_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 3;
  static const unsigned AddressRange = 420;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dense_large_rf_gt_ni_2_outidx_ram) {
        for (unsigned i = 0; i < 84 ; i = i + 1) {
            ram[i] = "0b000";
        }
        for (unsigned i = 84; i < 168 ; i = i + 1) {
            ram[i] = "0b001";
        }
        for (unsigned i = 168; i < 252 ; i = i + 1) {
            ram[i] = "0b010";
        }
        for (unsigned i = 252; i < 336 ; i = i + 1) {
            ram[i] = "0b011";
        }
        for (unsigned i = 336; i < 420 ; i = i + 1) {
            ram[i] = "0b100";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(dense_large_rf_gt_ni_2_outidx) {


static const unsigned DataWidth = 3;
static const unsigned AddressRange = 420;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dense_large_rf_gt_ni_2_outidx_ram* meminst;


SC_CTOR(dense_large_rf_gt_ni_2_outidx) {
meminst = new dense_large_rf_gt_ni_2_outidx_ram("dense_large_rf_gt_ni_2_outidx_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dense_large_rf_gt_ni_2_outidx() {
    delete meminst;
}


};//endmodule
#endif
