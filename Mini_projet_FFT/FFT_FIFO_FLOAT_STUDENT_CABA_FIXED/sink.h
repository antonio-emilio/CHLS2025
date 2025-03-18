#ifndef SINK_H
#define SINK_H

#include "systemc.h"
#include <ac_sc.h>
#include <ac_fixed.h>

SC_MODULE(SINK) {
     sc_in_clk clk;
     sc_in<ac_fixed<23, 18, true>> in_real;
     sc_in<ac_fixed<23, 18, true>> in_imag;
     sc_in<bool> data_valid;
     sc_out<bool> data_req;

     void COMPORTEMENT();

     SC_CTOR(SINK) {
          SC_THREAD(COMPORTEMENT);
          sensitive << clk.pos();
     }
};

#endif
