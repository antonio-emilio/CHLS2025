#ifndef FFT_H
#define FFT_H
#include <systemc.h>

#define W {\
	{1, 0}, \
	{0.7071067812, -0.7071067812}, \
	{0, -1}, \
	{-0.7071067812, -0.7071067812}\
}

struct complex_s {
	double real;
	double imag;
};

typedef struct complex_s complex_t;

SC_MODULE(FFT)
    {
        sc_in<bool> clk;
        sc_fifo_in<float> in;
        sc_fifo_out<float> out;

        SC_CTOR(FFT)
        {
            SC_THREAD(COMPORTEMENT);
            sensitive << clk.pos();
        }

        void COMPORTEMENT();
        void but(complex_t *weight,
                    complex_t *in0,
                    complex_t *in1,
                    complex_t *out0,
                    complex_t *out1);
    };      
#endif

