#ifndef FFT_H
#define FFT_H
#include <systemc.h>
#include <ac_sc.h>
#include <ac_fixed.h>

#define W { \
    {32, 0}, \
    {22, -22}, \
    {0, -32}, \
    {-22, -22} \
}

struct complex_s {
    ac_fixed<23, 18, true, AC_RND_CONV, AC_SAT> real;
    ac_fixed<23, 18, true, AC_RND_CONV, AC_SAT> imag;
};


typedef struct complex_s complex_t;

#pragma hls_design top
SC_MODULE(FFT) {
    sc_in<bool> clk;
    sc_in<bool> rst;
    sc_in<ac_fixed<23, 18, true>> in_real;
    sc_in<ac_fixed<23, 18, true>> in_imag;
    sc_out<ac_fixed<23, 18, true>> out_real;
    sc_out<ac_fixed<23, 18, true>> out_imag;

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
        async_reset_signal_is(rst, false);
    }

    void COMPORTEMENT();
    void RESET();
    void but(complex_t *weight, complex_t *in0, complex_t *in1, complex_t *out0, complex_t *out1);
};

#endif