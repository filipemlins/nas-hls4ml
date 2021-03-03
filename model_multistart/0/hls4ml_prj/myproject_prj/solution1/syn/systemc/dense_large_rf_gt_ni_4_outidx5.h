// ==============================================================
// File generated on Tue Mar 02 23:01:38 -03 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dense_large_rf_gt_ni_4_outidx5_H__
#define __dense_large_rf_gt_ni_4_outidx5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dense_large_rf_gt_ni_4_outidx5_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 5;
  static const unsigned AddressRange = 13824;
  static const unsigned AddressWidth = 14;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dense_large_rf_gt_ni_4_outidx5_ram) {
        for (unsigned i = 0; i < 576 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        for (unsigned i = 576; i < 1152 ; i = i + 1) {
            ram[i] = "0b00001";
        }
        for (unsigned i = 1152; i < 1728 ; i = i + 1) {
            ram[i] = "0b00010";
        }
        for (unsigned i = 1728; i < 2304 ; i = i + 1) {
            ram[i] = "0b00011";
        }
        for (unsigned i = 2304; i < 2880 ; i = i + 1) {
            ram[i] = "0b00100";
        }
        for (unsigned i = 2880; i < 3456 ; i = i + 1) {
            ram[i] = "0b00101";
        }
        for (unsigned i = 3456; i < 4032 ; i = i + 1) {
            ram[i] = "0b00110";
        }
        for (unsigned i = 4032; i < 4608 ; i = i + 1) {
            ram[i] = "0b00111";
        }
        for (unsigned i = 4608; i < 5184 ; i = i + 1) {
            ram[i] = "0b01000";
        }
        for (unsigned i = 5184; i < 5760 ; i = i + 1) {
            ram[i] = "0b01001";
        }
        for (unsigned i = 5760; i < 6336 ; i = i + 1) {
            ram[i] = "0b01010";
        }
        for (unsigned i = 6336; i < 6912 ; i = i + 1) {
            ram[i] = "0b01011";
        }
        for (unsigned i = 6912; i < 7488 ; i = i + 1) {
            ram[i] = "0b01100";
        }
        for (unsigned i = 7488; i < 8064 ; i = i + 1) {
            ram[i] = "0b01101";
        }
        for (unsigned i = 8064; i < 8640 ; i = i + 1) {
            ram[i] = "0b01110";
        }
        for (unsigned i = 8640; i < 9216 ; i = i + 1) {
            ram[i] = "0b01111";
        }
        for (unsigned i = 9216; i < 9792 ; i = i + 1) {
            ram[i] = "0b10000";
        }
        for (unsigned i = 9792; i < 10368 ; i = i + 1) {
            ram[i] = "0b10001";
        }
        for (unsigned i = 10368; i < 10944 ; i = i + 1) {
            ram[i] = "0b10010";
        }
        for (unsigned i = 10944; i < 11520 ; i = i + 1) {
            ram[i] = "0b10011";
        }
        for (unsigned i = 11520; i < 12096 ; i = i + 1) {
            ram[i] = "0b10100";
        }
        for (unsigned i = 12096; i < 12672 ; i = i + 1) {
            ram[i] = "0b10101";
        }
        for (unsigned i = 12672; i < 13248 ; i = i + 1) {
            ram[i] = "0b10110";
        }
        for (unsigned i = 13248; i < 13824 ; i = i + 1) {
            ram[i] = "0b10111";
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


SC_MODULE(dense_large_rf_gt_ni_4_outidx5) {


static const unsigned DataWidth = 5;
static const unsigned AddressRange = 13824;
static const unsigned AddressWidth = 14;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dense_large_rf_gt_ni_4_outidx5_ram* meminst;


SC_CTOR(dense_large_rf_gt_ni_4_outidx5) {
meminst = new dense_large_rf_gt_ni_4_outidx5_ram("dense_large_rf_gt_ni_4_outidx5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dense_large_rf_gt_ni_4_outidx5() {
    delete meminst;
}


};//endmodule
#endif
