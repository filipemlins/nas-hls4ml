#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_int.h"
#include "ap_fixed.h"

//hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 32
#define N_INPUT_2_1 32
#define N_INPUT_3_1 1
#define N_INPUT_1_2 32
#define N_INPUT_2_2 32
#define N_INPUT_3_2 1
#define OUT_HEIGHT_3 29
#define OUT_WIDTH_3 29
#define N_FILT_3 8
#define OUT_HEIGHT_6 14
#define OUT_WIDTH_6 14
#define N_FILT_6 8
#define OUT_HEIGHT_7 13
#define OUT_WIDTH_7 13
#define N_FILT_7 16
#define OUT_HEIGHT_10 6
#define OUT_WIDTH_10 6
#define N_FILT_10 16
#define N_LAYER_11 120
#define N_LAYER_14 84
#define N_LAYER_17 10

//hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<17,7,AP_RND,AP_SAT> model_default_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> input_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> input2_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer3_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer5_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer6_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer7_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer9_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer10_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer11_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer13_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer14_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer16_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> layer17_t;
typedef ap_fixed<17,7,AP_RND,AP_SAT> result_t;

#endif
