#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "ap_int.h"
#include "ap_fixed.h"

#include "nnet_utils/nnet_helpers.h"
//hls-fpga-machine-learning insert includes
#include "nnet_utils/nnet_activation.h"
#include "nnet_utils/nnet_conv2d.h"
#include "nnet_utils/nnet_conv2d_large.h"
#include "nnet_utils/nnet_dense.h"
#include "nnet_utils/nnet_dense_compressed.h"
#include "nnet_utils/nnet_dense_large.h"
#include "nnet_utils/nnet_pooling.h"
 
//hls-fpga-machine-learning insert weights
#include "weights/w3.h"
#include "weights/b3.h"
#include "weights/w7.h"
#include "weights/b7.h"
#include "weights/w11.h"
#include "weights/b11.h"
#include "weights/w14.h"
#include "weights/b14.h"
#include "weights/w17.h"
#include "weights/b17.h"

//hls-fpga-machine-learning insert layer-config
struct config3_mult : nnet::dense_config {
    static const unsigned n_in = 16;
    static const unsigned n_out = 8;
    static const unsigned reuse_factor = 64;
    typedef ap_fixed<17,7,AP_RND,AP_SAT> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
};

struct config3 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = N_INPUT_1_2;
    static const unsigned in_width = N_INPUT_2_2;
    static const unsigned n_chan = N_INPUT_3_2;
    static const unsigned filt_height = 4;
    static const unsigned filt_width = 4;
    static const unsigned n_filt = N_FILT_3;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_3;
    static const unsigned out_width = OUT_WIDTH_3;
    static const unsigned reuse_factor = 64;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<17,7,AP_RND,AP_SAT> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef config3_mult mult_config;
};

struct relu_config5 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_3*OUT_WIDTH_3*N_FILT_3;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_parallel;
    static const unsigned reuse_factor = 4500;
    typedef ap_fixed<18,8> table_t;
};

struct config6 : nnet::pooling2d_config {
    static const unsigned in_height = 29;
    static const unsigned in_width = OUT_WIDTH_3;
    static const unsigned n_filt = N_FILT_6;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;
    static const unsigned out_height = OUT_HEIGHT_6;
    static const unsigned out_width = OUT_WIDTH_6;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const unsigned reuse = 4500;
};

struct config7_mult : nnet::dense_config {
    static const unsigned n_in = 32;
    static const unsigned n_out = 16;
    static const unsigned reuse_factor = 256;
    typedef ap_fixed<17,7,AP_RND,AP_SAT> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
};

struct config7 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = OUT_HEIGHT_6;
    static const unsigned in_width = OUT_WIDTH_6;
    static const unsigned n_chan = N_FILT_6;
    static const unsigned filt_height = 2;
    static const unsigned filt_width = 2;
    static const unsigned n_filt = N_FILT_7;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_7;
    static const unsigned out_width = OUT_WIDTH_7;
    static const unsigned reuse_factor = 256;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<17,7,AP_RND,AP_SAT> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef config7_mult mult_config;
};

struct relu_config9 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_7*OUT_WIDTH_7*N_FILT_7;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_parallel;
    static const unsigned reuse_factor = 4500;
    typedef ap_fixed<18,8> table_t;
};

struct config10 : nnet::pooling2d_config {
    static const unsigned in_height = 13;
    static const unsigned in_width = OUT_WIDTH_7;
    static const unsigned n_filt = N_FILT_10;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;
    static const unsigned out_height = OUT_HEIGHT_10;
    static const unsigned out_width = OUT_WIDTH_10;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const unsigned reuse = 4500;
};

struct config11 : nnet::dense_config {
    static const unsigned n_in = OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10;
    static const unsigned n_out = N_LAYER_11;
    static const unsigned io_type = nnet::io_parallel;
    static const unsigned reuse_factor = 4608;
    static const unsigned n_zeros = 0;
    static const unsigned n_nonzeros = 69120;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<17,7,AP_RND,AP_SAT> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef ap_uint<1> index_t;
};

struct relu_config13 : nnet::activ_config {
    static const unsigned n_in = N_LAYER_11;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_parallel;
    static const unsigned reuse_factor = 4500;
    typedef ap_fixed<18,8> table_t;
};

struct config14 : nnet::dense_config {
    static const unsigned n_in = N_LAYER_11;
    static const unsigned n_out = N_LAYER_14;
    static const unsigned io_type = nnet::io_parallel;
    static const unsigned reuse_factor = 5040;
    static const unsigned n_zeros = 0;
    static const unsigned n_nonzeros = 10080;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<17,7,AP_RND,AP_SAT> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef ap_uint<1> index_t;
};

struct relu_config16 : nnet::activ_config {
    static const unsigned n_in = N_LAYER_14;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_parallel;
    static const unsigned reuse_factor = 4500;
    typedef ap_fixed<18,8> table_t;
};

struct config17 : nnet::dense_config {
    static const unsigned n_in = N_LAYER_14;
    static const unsigned n_out = N_LAYER_17;
    static const unsigned io_type = nnet::io_parallel;
    static const unsigned reuse_factor = 420;
    static const unsigned n_zeros = 0;
    static const unsigned n_nonzeros = 840;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<17,7,AP_RND,AP_SAT> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
    typedef ap_uint<1> index_t;
};

struct softmax_config19 : nnet::activ_config {
    static const unsigned n_in = N_LAYER_17;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_parallel;
    static const unsigned reuse_factor = 4500;
    typedef ap_fixed<18,8> exp_table_t;
    typedef ap_fixed<18,8> inv_table_t;
};


#endif
