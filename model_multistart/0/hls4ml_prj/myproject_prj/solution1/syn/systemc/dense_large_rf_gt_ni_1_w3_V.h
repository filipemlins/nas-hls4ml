// ==============================================================
// File generated on Tue Mar 02 23:01:38 -03 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dense_large_rf_gt_ni_1_w3_V_H__
#define __dense_large_rf_gt_ni_1_w3_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dense_large_rf_gt_ni_1_w3_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 25;
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


   SC_CTOR(dense_large_rf_gt_ni_1_w3_V_ram) {
        ram[0] = "0b0110010111111111011000010";
        ram[1] = "0b1001101110100001000100100";
        ram[2] = "0b1111100101111110110001011";
        ram[3] = "0b0110011100011110110000110";
        ram[4] = "0b0101000110011111000000011";
        ram[5] = "0b0100001101000000110001110";
        ram[6] = "0b0000111111100000110100001";
        ram[7] = "0b0001101111011111000110110";
        ram[8] = "0b1111010111100001001010111";
        ram[9] = "0b1101001011111110011111010";
        ram[10] = "0b1011010101100000010001111";
        ram[11] = "0b1111110101111110110011011";
        ram[12] = "0b1111110101111111000000001";
        ram[13] = "0b1010001010000001000011000";
        ram[14] = "0b0011101010000001001111000";
        ram[15] = "0b0101000011011111111100101";
        ram[16] = "0b0000111000011110100111100";
        ram[17] = "0b0101100000011111000111001";
        ram[18] = "0b0110001111100000100010000";
        ram[19] = "0b1001110001100000110110000";
        ram[20] = "0b1001111111000000111101110";
        ram[21] = "0b1110111010111110100100111";
        ram[22] = "0b0010110101011111000101111";
        ram[23] = "0b0011100001111110100111001";
        ram[24] = "0b1010010101000001011001011";
        ram[25] = "0b1111110110111111101000001";
        ram[26] = "0b0011010010000001011010001";
        ram[27] = "0b0010011100100000001110010";
        ram[28] = "0b1101111011011111010101011";
        ram[29] = "0b0010110000011111111100101";
        ram[30] = "0b0000010011100001100000011";
        ram[31] = "0b0110010101011110111010101";
        ram[32] = "0b0001010010100000001100011";
        ram[33] = "0b0001010111000000000111011";
        ram[34] = "0b1001100011011110100011011";
        ram[35] = "0b1100101100000000001111010";
        ram[36] = "0b1110011011011111011111110";
        ram[37] = "0b1101101110011111011011011";
        ram[38] = "0b1111110000111110011101010";
        ram[39] = "0b1101101001111110011101001";
        ram[40] = "0b1011011101011111111010110";
        ram[41] = "0b0000001101011110101001100";
        ram[42] = "0b1001100101000000100011110";
        ram[43] = "0b0010101001111110101100000";
        ram[44] = "0b1010011001100000010010101";
        ram[45] = "0b1011001011011110111010101";
        ram[46] = "0b1101011100100000101111101";
        ram[47] = "0b1110100011000000000001101";
        ram[48] = "0b1111101101011111000111111";
        ram[49] = "0b1001011111100000101010010";
        ram[50] = "0b0101001011111110110110000";
        ram[51] = "0b0000101100111111100110011";
        ram[52] = "0b1010001010000000111011000";
        ram[53] = "0b0100111001111111011000001";
        ram[54] = "0b1010110110000000110001011";
        ram[55] = "0b1110010111011110101011000";
        ram[56] = "0b1010010110011110011111011";
        ram[57] = "0b0101001010100000110100111";
        ram[58] = "0b1101101101000000011100010";
        ram[59] = "0b1010110101100001010001000";
        ram[60] = "0b1010101101011111100011101";
        ram[61] = "0b0011100100100000011001010";
        ram[62] = "0b0101100000111111001101110";
        ram[63] = "0b1101011111000000101011110";


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


SC_MODULE(dense_large_rf_gt_ni_1_w3_V) {


static const unsigned DataWidth = 25;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dense_large_rf_gt_ni_1_w3_V_ram* meminst;


SC_CTOR(dense_large_rf_gt_ni_1_w3_V) {
meminst = new dense_large_rf_gt_ni_1_w3_V_ram("dense_large_rf_gt_ni_1_w3_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dense_large_rf_gt_ni_1_w3_V() {
    delete meminst;
}


};//endmodule
#endif
