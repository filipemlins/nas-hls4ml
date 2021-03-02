//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    input_t input1[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    result_t layer19_out[N_LAYER_17],
    unsigned short &const_size_in_1,
    unsigned short &const_size_out_1
) {

    //hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE ap_vld port=input1,layer19_out 
    #pragma HLS DATAFLOW 

    const_size_in_1 = N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1;
    const_size_out_1 = N_LAYER_17;

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        //hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<model_default_t, 128>(w3, "w3.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(b3, "b3.txt");
        nnet::load_weights_from_txt<model_default_t, 512>(w7, "w7.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(b7, "b7.txt");
        nnet::load_weights_from_txt<model_default_t, 69120>(w11, "w11.txt");
        nnet::load_weights_from_txt<model_default_t, 120>(b11, "b11.txt");
        nnet::load_weights_from_txt<model_default_t, 10080>(w14, "w14.txt");
        nnet::load_weights_from_txt<model_default_t, 84>(b14, "b14.txt");
        nnet::load_weights_from_txt<model_default_t, 840>(w17, "w17.txt");
        nnet::load_weights_from_txt<model_default_t, 10>(b17, "b17.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    //hls-fpga-machine-learning insert layers

    input2_t conv2d_0_m_input[N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2];
    
    layer3_t layer3_out[OUT_HEIGHT_3*OUT_WIDTH_3*N_FILT_3];
    
    nnet::conv_2d_large_cl<input_t, layer3_t, config3>(input1, layer3_out, w3, b3);

    layer5_t layer5_out[OUT_HEIGHT_3*OUT_WIDTH_3*N_FILT_3];
    
    nnet::relu<layer3_t, layer5_t, relu_config5>(layer3_out, layer5_out);

    layer6_t layer6_out[OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6];
    
    nnet::pooling2d_cl<layer5_t, config6>(layer5_out, layer6_out);

    layer7_t layer7_out[OUT_HEIGHT_7*OUT_WIDTH_7*N_FILT_7];
    
    nnet::conv_2d_large_cl<layer6_t, layer7_t, config7>(layer6_out, layer7_out, w7, b7);

    layer9_t layer9_out[OUT_HEIGHT_7*OUT_WIDTH_7*N_FILT_7];
    
    nnet::relu<layer7_t, layer9_t, relu_config9>(layer7_out, layer9_out);

    layer10_t layer10_out[OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10];
    
    nnet::pooling2d_cl<layer9_t, config10>(layer9_out, layer10_out);

    layer11_t layer11_out[N_LAYER_11];
    
    nnet::dense_large<layer10_t, layer11_t, config11>(layer10_out, layer11_out, w11, b11);

    layer13_t layer13_out[N_LAYER_11];
    
    nnet::relu<layer11_t, layer13_t, relu_config13>(layer11_out, layer13_out);

    layer14_t layer14_out[N_LAYER_14];
    
    nnet::dense_large<layer13_t, layer14_t, config14>(layer13_out, layer14_out, w14, b14);

    layer16_t layer16_out[N_LAYER_14];
    
    nnet::relu<layer14_t, layer16_t, relu_config16>(layer14_out, layer16_out);

    layer17_t layer17_out[N_LAYER_17];
    
    nnet::dense_large<layer16_t, layer17_t, config17>(layer16_out, layer17_out, w17, b17);

    nnet::softmax<layer17_t, result_t, softmax_config19>(layer17_out, layer19_out);

}
