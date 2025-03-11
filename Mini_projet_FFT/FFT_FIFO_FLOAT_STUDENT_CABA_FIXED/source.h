/* fichier source.h */
#ifndef SOURCE_H
#define SOURCE_H

#include "systemc.h"
#include <ac_sc.h>
#include <ac_fixed.h>

SC_MODULE(SOURCE) {
  sc_in_clk clk;
  sc_out<ac_fixed<23, 18, true>> out_real;
  sc_out<ac_fixed<23, 18, true>> out_imag;
  sc_out<bool> data_valid;
  sc_in<bool> data_req;

  ac_fixed<23, 18, true> real, imag;
  bool sent = false;

  void COMPORTEMENT();

  SC_CTOR(SOURCE) {
    SC_THREAD(COMPORTEMENT);
    sensitive << clk.pos();
  }
};

#endif
