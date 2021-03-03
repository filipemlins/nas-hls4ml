// ==============================================================
// File generated on Tue Mar 02 23:01:39 -03 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dense_large_rf_gt_ni_3_outidx4_H__
#define __dense_large_rf_gt_ni_3_outidx4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dense_large_rf_gt_ni_3_outidx4_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 6;
  static const unsigned AddressRange = 5040;
  static const unsigned AddressWidth = 13;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dense_large_rf_gt_ni_3_outidx4_ram) {
        for (unsigned i = 0; i < 120 ; i = i + 1) {
            ram[i] = "0b000000";
        }
        for (unsigned i = 120; i < 240 ; i = i + 1) {
            ram[i] = "0b000001";
        }
        for (unsigned i = 240; i < 360 ; i = i + 1) {
            ram[i] = "0b000010";
        }
        for (unsigned i = 360; i < 480 ; i = i + 1) {
            ram[i] = "0b000011";
        }
        for (unsigned i = 480; i < 600 ; i = i + 1) {
            ram[i] = "0b000100";
        }
        for (unsigned i = 600; i < 720 ; i = i + 1) {
            ram[i] = "0b000101";
        }
        for (unsigned i = 720; i < 840 ; i = i + 1) {
            ram[i] = "0b000110";
        }
        for (unsigned i = 840; i < 960 ; i = i + 1) {
            ram[i] = "0b000111";
        }
        for (unsigned i = 960; i < 1080 ; i = i + 1) {
            ram[i] = "0b001000";
        }
        for (unsigned i = 1080; i < 1200 ; i = i + 1) {
            ram[i] = "0b001001";
        }
        for (unsigned i = 1200; i < 1320 ; i = i + 1) {
            ram[i] = "0b001010";
        }
        for (unsigned i = 1320; i < 1440 ; i = i + 1) {
            ram[i] = "0b001011";
        }
        for (unsigned i = 1440; i < 1560 ; i = i + 1) {
            ram[i] = "0b001100";
        }
        for (unsigned i = 1560; i < 1680 ; i = i + 1) {
            ram[i] = "0b001101";
        }
        for (unsigned i = 1680; i < 1800 ; i = i + 1) {
            ram[i] = "0b001110";
        }
        for (unsigned i = 1800; i < 1920 ; i = i + 1) {
            ram[i] = "0b001111";
        }
        for (unsigned i = 1920; i < 2040 ; i = i + 1) {
            ram[i] = "0b010000";
        }
        for (unsigned i = 2040; i < 2160 ; i = i + 1) {
            ram[i] = "0b010001";
        }
        for (unsigned i = 2160; i < 2280 ; i = i + 1) {
            ram[i] = "0b010010";
        }
        for (unsigned i = 2280; i < 2400 ; i = i + 1) {
            ram[i] = "0b010011";
        }
        for (unsigned i = 2400; i < 2520 ; i = i + 1) {
            ram[i] = "0b010100";
        }
        for (unsigned i = 2520; i < 2640 ; i = i + 1) {
            ram[i] = "0b010101";
        }
        for (unsigned i = 2640; i < 2760 ; i = i + 1) {
            ram[i] = "0b010110";
        }
        for (unsigned i = 2760; i < 2880 ; i = i + 1) {
            ram[i] = "0b010111";
        }
        for (unsigned i = 2880; i < 3000 ; i = i + 1) {
            ram[i] = "0b011000";
        }
        for (unsigned i = 3000; i < 3120 ; i = i + 1) {
            ram[i] = "0b011001";
        }
        for (unsigned i = 3120; i < 3240 ; i = i + 1) {
            ram[i] = "0b011010";
        }
        for (unsigned i = 3240; i < 3360 ; i = i + 1) {
            ram[i] = "0b011011";
        }
        for (unsigned i = 3360; i < 3480 ; i = i + 1) {
            ram[i] = "0b011100";
        }
        for (unsigned i = 3480; i < 3600 ; i = i + 1) {
            ram[i] = "0b011101";
        }
        for (unsigned i = 3600; i < 3720 ; i = i + 1) {
            ram[i] = "0b011110";
        }
        for (unsigned i = 3720; i < 3840 ; i = i + 1) {
            ram[i] = "0b011111";
        }
        for (unsigned i = 3840; i < 3960 ; i = i + 1) {
            ram[i] = "0b100000";
        }
        for (unsigned i = 3960; i < 4080 ; i = i + 1) {
            ram[i] = "0b100001";
        }
        for (unsigned i = 4080; i < 4200 ; i = i + 1) {
            ram[i] = "0b100010";
        }
        for (unsigned i = 4200; i < 4320 ; i = i + 1) {
            ram[i] = "0b100011";
        }
        for (unsigned i = 4320; i < 4440 ; i = i + 1) {
            ram[i] = "0b100100";
        }
        for (unsigned i = 4440; i < 4560 ; i = i + 1) {
            ram[i] = "0b100101";
        }
        for (unsigned i = 4560; i < 4680 ; i = i + 1) {
            ram[i] = "0b100110";
        }
        for (unsigned i = 4680; i < 4800 ; i = i + 1) {
            ram[i] = "0b100111";
        }
        for (unsigned i = 4800; i < 4920 ; i = i + 1) {
            ram[i] = "0b101000";
        }
        for (unsigned i = 4920; i < 5040 ; i = i + 1) {
            ram[i] = "0b101001";
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


SC_MODULE(dense_large_rf_gt_ni_3_outidx4) {


static const unsigned DataWidth = 6;
static const unsigned AddressRange = 5040;
static const unsigned AddressWidth = 13;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dense_large_rf_gt_ni_3_outidx4_ram* meminst;


SC_CTOR(dense_large_rf_gt_ni_3_outidx4) {
meminst = new dense_large_rf_gt_ni_3_outidx4_ram("dense_large_rf_gt_ni_3_outidx4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dense_large_rf_gt_ni_3_outidx4() {
    delete meminst;
}


};//endmodule
#endif
