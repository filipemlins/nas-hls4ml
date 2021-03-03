// ==============================================================
// File generated on Tue Mar 02 23:01:38 -03 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dense_large_rf_gt_ni_w7_V_H__
#define __dense_large_rf_gt_ni_w7_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dense_large_rf_gt_ni_w7_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 25;
  static const unsigned AddressRange = 256;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dense_large_rf_gt_ni_w7_V_ram) {
        ram[0] = "0b1111111100111111110001000";
        ram[1] = "0b0010001100011111001100000";
        ram[2] = "0b1101110010000001100100010";
        ram[3] = "0b0100011001111111100100111";
        ram[4] = "0b1001000001100001111110001";
        ram[5] = "0b1111010101100000001010100";
        ram[6] = "0b0010010000100001010100101";
        ram[7] = "0b0001001001000001011111010";
        ram[8] = "0b1110111111100001111010101";
        ram[9] = "0b0010010111111110000011100";
        ram[10] = "0b1111110011011111100001011";
        ram[11] = "0b0011000010111111000110001";
        ram[12] = "0b1010000111111111000011111";
        ram[13] = "0b0011101011111110111101001";
        ram[14] = "0b0101111010111110101001010";
        ram[15] = "0b0011100000011111100101101";
        ram[16] = "0b1000100110100000110110000";
        ram[17] = "0b0111000110011111101111011";
        ram[18] = "0b1011101000011111100101101";
        ram[19] = "0b1100001010000000011101010";
        ram[20] = "0b0000010001100001111010001";
        ram[21] = "0b0000000010000000101110001";
        ram[22] = "0b1001111000000001110011010";
        ram[23] = "0b1011001100100001101011100";
        ram[24] = "0b1010100111011110110110100";
        ram[25] = "0b0001110101011110111010010";
        ram[26] = "0b0001001101100000000101001";
        ram[27] = "0b1000011011000001110100110";
        ram[28] = "0b1000011001011111101000100";
        ram[29] = "0b1110100000011110000001010";
        ram[30] = "0b1011101111011111000001111";
        ram[31] = "0b0000010110000000000110011";
        ram[32] = "0b0010000110000000111100100";
        ram[33] = "0b0000100010111110011100011";
        ram[34] = "0b1001110000111110100111010";
        ram[35] = "0b1010100001000000111110110";
        ram[36] = "0b0000100100011111111100000";
        ram[37] = "0b0111000110011110011111001";
        ram[38] = "0b1101100000011110110110000";
        ram[39] = "0b1110100111000001011000001";
        ram[40] = "0b1010001001100000110001110";
        ram[41] = "0b1001111101011111110001100";
        ram[42] = "0b1100000010100001011010110";
        ram[43] = "0b1111100100011110101111111";
        ram[44] = "0b0100111010111111010110000";
        ram[45] = "0b1111010011111110100111000";
        ram[46] = "0b0100101100111110000100011";
        ram[47] = "0b0101001000000001100001110";
        ram[48] = "0b1111101110111110000100101";
        ram[49] = "0b1010001010011111000000101";
        ram[50] = "0b0011001001011110011000010";
        ram[51] = "0b0100110101111111101101100";
        ram[52] = "0b1110001000000000010101110";
        ram[53] = "0b0011000011111111110110100";
        ram[54] = "0b1101010101011111000111000";
        ram[55] = "0b0000001111000001101111010";
        ram[56] = "0b0000111110011110011101101";
        ram[57] = "0b1101000001011110001100010";
        ram[58] = "0b1011101010000001111001110";
        ram[59] = "0b0000011110000000011010000";
        ram[60] = "0b0100100000011110011000011";
        ram[61] = "0b1000110111111111101010111";
        ram[62] = "0b1010000110011111000001100";
        ram[63] = "0b0010101101111110111001110";
        ram[64] = "0b1010101001011110010000000";
        ram[65] = "0b1100011010111110111011111";
        ram[66] = "0b1100010001111110110100101";
        ram[67] = "0b1010010100000000110110110";
        ram[68] = "0b1001100100111110100110001";
        ram[69] = "0b0110011000100001000110101";
        ram[70] = "0b1010000110100001111101000";
        ram[71] = "0b1001001001111110100011001";
        ram[72] = "0b0101100001100000110000111";
        ram[73] = "0b1100000100011110011111111";
        ram[74] = "0b1101100011100001101111011";
        ram[75] = "0b1001000010100001000011101";
        ram[76] = "0b0100111011111111011001110";
        ram[77] = "0b1001100101011110011011100";
        ram[78] = "0b1101111111000000010010101";
        ram[79] = "0b1000001111000001011001000";
        ram[80] = "0b0101100110011110101010111";
        ram[81] = "0b1011011100000000111011001";
        ram[82] = "0b1100001011111111011010110";
        ram[83] = "0b0001011000000000111110000";
        ram[84] = "0b1110000001100000000111011";
        ram[85] = "0b1101110110100000000000001";
        ram[86] = "0b1010111011011111111101100";
        ram[87] = "0b1010110111100000101110100";
        ram[88] = "0b0110000111111110101001100";
        ram[89] = "0b1101011110011110111101110";
        ram[90] = "0b1100010000111111101001000";
        ram[91] = "0b0010000100000001110100010";
        ram[92] = "0b1110111010111110110101110";
        ram[93] = "0b0110110011000001101111000";
        ram[94] = "0b0000000111111111110111111";
        ram[95] = "0b1000111000100001101101101";
        ram[96] = "0b0011011110111110010100000";
        ram[97] = "0b1010100100100000011011011";
        ram[98] = "0b1011011001100001100000100";
        ram[99] = "0b1001110100000001100101001";
        ram[100] = "0b0011010010111110111000100";
        ram[101] = "0b1100110001100001011100110";
        ram[102] = "0b1100100111100001001000000";
        ram[103] = "0b1001110001100000000000011";
        ram[104] = "0b0111000101111110111111000";
        ram[105] = "0b0010000011111110010000111";
        ram[106] = "0b0000100110111111100111111";
        ram[107] = "0b0111010111100000011101100";
        ram[108] = "0b0110011110011111011000110";
        ram[109] = "0b1101001001100001000000111";
        ram[110] = "0b0101010100000001011110001";
        ram[111] = "0b0000010111111111100111010";
        ram[112] = "0b1110101110000000011011111";
        ram[113] = "0b0001111010100001001100001";
        ram[114] = "0b1010010000111110111100111";
        ram[115] = "0b0010100100000000110101110";
        ram[116] = "0b0110111001000001111011100";
        ram[117] = "0b0011010111011111000011100";
        ram[118] = "0b1001100110111110011010010";
        ram[119] = "0b0010100110000001000001001";
        ram[120] = "0b1101011010111111000010000";
        ram[121] = "0b0001001101011110001000110";
        ram[122] = "0b0011001110111110111000111";
        ram[123] = "0b0110010010100001111000110";
        ram[124] = "0b0010010110000000011011100";
        ram[125] = "0b1101010110011111100111110";
        ram[126] = "0b0011111010011111000011100";
        ram[127] = "0b1000111101111110101111100";
        ram[128] = "0b0111000110100000000111100";
        ram[129] = "0b0110001000000001100111001";
        ram[130] = "0b0011001110100001110110011";
        ram[131] = "0b1001010001100001101011000";
        ram[132] = "0b0011000100111111011010000";
        ram[133] = "0b1111101101000001011010010";
        ram[134] = "0b1011101100100000000001011";
        ram[135] = "0b0100110111100001111111011";
        ram[136] = "0b1000000101011110001101001";
        ram[137] = "0b1101000100111110110110000";
        ram[138] = "0b0101100010100000011000001";
        ram[139] = "0b1110101111000000111010111";
        ram[140] = "0b0110101001100001110011001";
        ram[141] = "0b0111010001000000110001000";
        ram[142] = "0b1100000100111111100001100";
        ram[143] = "0b0010100010000001100001111";
        ram[144] = "0b1001100000100000000000111";
        ram[145] = "0b0110111111000001000100100";
        ram[146] = "0b1000001000111111010011100";
        ram[147] = "0b1100010001000000001000010";
        ram[148] = "0b1101010111011110001000100";
        ram[149] = "0b0100000000111111100010001";
        ram[150] = "0b0011101010000001100101000";
        ram[151] = "0b0111000101000001111000010";
        ram[152] = "0b1100010011111110110111101";
        ram[153] = "0b0011011001111111100111111";
        ram[154] = "0b1110000000000001011100101";
        ram[155] = "0b0001100011100001101001011";
        ram[156] = "0b0101011111111110111100100";
        ram[157] = "0b1010010011111111001110010";
        ram[158] = "0b0110110000100000100011011";
        ram[159] = "0b0000101111011111111101011";
        ram[160] = "0b0010110111011110000011011";
        ram[161] = "0b1110010101100000101101110";
        ram[162] = "0b0011000000000000110010111";
        ram[163] = "0b1100011100000001101010100";
        ram[164] = "0b1010100010000001000111010";
        ram[165] = "0b1101101000000000011010001";
        ram[166] = "0b0001111111100001110100000";
        ram[167] = "0b0011011011011110110001001";
        ram[168] = "0b0101000001100001111000111";
        ram[169] = "0b0010101111011110011000011";
        ram[170] = "0b1001000110111110000011101";
        ram[171] = "0b1011101110000001110110101";
        ram[172] = "0b1111001100100000011101011";
        ram[173] = "0b1011100111100000011001110";
        ram[174] = "0b1110101010100000110000111";
        ram[175] = "0b0001110100000001000010111";
        ram[176] = "0b1001011100011111011110001";
        ram[177] = "0b0001001011000000111011001";
        ram[178] = "0b0011110101000000010100111";
        ram[179] = "0b0110000010011111101101110";
        ram[180] = "0b1011001101000000011010110";
        ram[181] = "0b1100101001000000100010101";
        ram[182] = "0b1111101111000000001100110";
        ram[183] = "0b0010110010100001001000011";
        ram[184] = "0b1100110011011111000010101";
        ram[185] = "0b0001110110100001010011100";
        ram[186] = "0b0011001010000000101000100";
        ram[187] = "0b0111110001111111111111111";
        ram[188] = "0b0101111100011110011010111";
        ram[189] = "0b0000010001100000011010001";
        ram[190] = "0b1010010000100000101001110";
        ram[191] = "0b0001011000111110101111010";
        ram[192] = "0b1110100100011110011001001";
        ram[193] = "0b1000011110000001000110100";
        ram[194] = "0b1100110000100001011011001";
        ram[195] = "0b1000001000111110001100000";
        ram[196] = "0b0101001010100001101111110";
        ram[197] = "0b1101100011111110011000110";
        ram[198] = "0b0101100001000001010011001";
        ram[199] = "0b0110101111000001010111100";
        ram[200] = "0b1011100101111111010111110";
        ram[201] = "0b0001011111100000110011110";
        ram[202] = "0b0100001010100001011011011";
        ram[203] = "0b0010000100111111111001000";
        ram[204] = "0b1001001110100001100011010";
        ram[205] = "0b0000110100100001011110001";
        ram[206] = "0b1000101001111110101000010";
        ram[207] = "0b0100101010100000011100001";
        ram[208] = "0b1011111110100001101011111";
        ram[209] = "0b1110011111011110100010011";
        ram[210] = "0b0001010101000000000011110";
        ram[211] = "0b1011101110111110001110000";
        ram[212] = "0b0001000110011111010100111";
        ram[213] = "0b0010000010000000001111000";
        ram[214] = "0b1010010101011111011000100";
        ram[215] = "0b1001000000000001101010010";
        ram[216] = "0b0100100110100001101110011";
        ram[217] = "0b1111011000011111001011010";
        ram[218] = "0b0100101010011111011110110";
        ram[219] = "0b0001001010111111011111100";
        ram[220] = "0b1001010110011110101011110";
        ram[221] = "0b1101100100111111001101100";
        ram[222] = "0b1011101000111111001000011";
        ram[223] = "0b0001110000000000111000010";
        ram[224] = "0b0111010101100001111110100";
        ram[225] = "0b1100100111100000000110101";
        ram[226] = "0b0011110111100001101101111";
        ram[227] = "0b1000101010100001011000000";
        ram[228] = "0b0001110001111110110010111";
        ram[229] = "0b1010110000100001110100100";
        ram[230] = "0b1010011001000000100010100";
        ram[231] = "0b0001101001011111110100011";
        ram[232] = "0b1001110101011111000010001";
        ram[233] = "0b1110111110011111000000000";
        ram[234] = "0b0100001111011111011100000";
        ram[235] = "0b0110111111100001110101001";
        ram[236] = "0b0110110101100000100000000";
        ram[237] = "0b1101110100111111000000110";
        ram[238] = "0b1000110111111110110100011";
        ram[239] = "0b1100111001111111010010111";
        ram[240] = "0b0111011000000000010011100";
        ram[241] = "0b0111100001000001100000100";
        ram[242] = "0b0001001111000000010001010";
        ram[243] = "0b0011111111111110011111010";
        ram[244] = "0b1011110000111111010000110";
        ram[245] = "0b1010111011011111000100001";
        ram[246] = "0b1111101110100000000100111";
        ram[247] = "0b1011011111100000111100100";
        ram[248] = "0b1010110100100001011001010";
        ram[249] = "0b1000110110100001100011111";
        ram[250] = "0b0110011110011111000101011";
        ram[251] = "0b1001000110011110010111010";
        ram[252] = "0b0000110100111110101011101";
        ram[253] = "0b0100000010000001010110000";
        ram[254] = "0b0100010101100000110101110";
        ram[255] = "0b0010001101000000100010011";


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


SC_MODULE(dense_large_rf_gt_ni_w7_V) {


static const unsigned DataWidth = 25;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dense_large_rf_gt_ni_w7_V_ram* meminst;


SC_CTOR(dense_large_rf_gt_ni_w7_V) {
meminst = new dense_large_rf_gt_ni_w7_V_ram("dense_large_rf_gt_ni_w7_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dense_large_rf_gt_ni_w7_V() {
    delete meminst;
}


};//endmodule
#endif