//Numpy array shape [10]
//Min 0.000000000000
//Max 0.000000000000
//Number of zeros 10

#ifndef B16_H_
#define B16_H_

#ifndef __SYNTHESIS__
bias16_t b16[10];
#else
bias16_t b16[10] = {0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000};
#endif

#endif
