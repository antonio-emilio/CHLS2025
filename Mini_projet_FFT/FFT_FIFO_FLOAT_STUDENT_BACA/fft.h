#ifndef FFT_H
#define FFT_H
#include <systemc.h>

#define W { \
    {32, 0}, \
    {22, -22}, \
    {0, -32}, \
    {-22, -22} \
}

struct complex_s {
    sc_int<23> real;
    sc_int<23> imag;
};

typedef struct complex_s complex_t;

SC_MODULE(FFT) {
    sc_in<bool> clk;
    sc_in<sc_int<23>> in_real;
    sc_in<sc_int<23>> in_imag;
    sc_out<sc_int<23>> out_real;
    sc_out<sc_int<23>> out_imag;

    sc_in<bool> data_valid_source;
    sc_out<bool> data_req_source;

    sc_out<bool> data_valid_sink;
    sc_in<bool> data_req_sink;

    int i = 0;
    int j = 0;
    bool processing;

    SC_CTOR(FFT) {
        SC_THREAD(COMPORTEMENT);
        sensitive << clk.pos();
    }

    void COMPORTEMENT();
    void but(complex_t *weight, complex_t *in0, complex_t *in1, complex_t *out0, complex_t *out1);
};

#endif