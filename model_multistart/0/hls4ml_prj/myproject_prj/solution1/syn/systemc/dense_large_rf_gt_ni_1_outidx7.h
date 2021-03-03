// ==============================================================
// File generated on Tue Mar 02 23:01:38 -03 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dense_large_rf_gt_ni_1_outidx7_H__
#define __dense_large_rf_gt_ni_1_outidx7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dense_large_rf_gt_ni_1_outidx7_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 2;
  static const unsigned AddressRange = 64;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dense_large_rf_gt_ni_1_outidx7_ram) {
        for (unsigned i = 0; i < 16 ; i = i + 1) {
            ram[i] = "0b00";
        }
        for (unsigned i = 16; i < 32 ; i = i + 1) {
            ram[i] = "0b01";
        }
        for (unsigned i = 32; i < 48 ; i = i + 1) {
            ram[i] = "0b10";
        }
        for (unsigned i = 48; i < 64 ; i = i + 1) {
            ram[i] = "0b11";
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


SC_MODULE(dense_large_rf_gt_ni_1_outidx7) {


static const unsigned DataWidth = 2;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dense_large_rf_gt_ni_1_outidx7_ram* meminst;


SC_CTOR(dense_large_rf_gt_ni_1_outidx7) {
meminst = new dense_large_rf_gt_ni_1_outidx7_ram("dense_large_rf_gt_ni_1_outidx7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dense_large_rf_gt_ni_1_outidx7() {
    delete meminst;
}


};//endmodule
#endif
