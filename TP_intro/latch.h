#include <systemc.h>
#ifndef LATCH_H
#define LATCH_H

SC_MODULE(Latch)
{
  sc_in<bool> D, E;
  sc_out<bool> Q, QB;
  void COMPORTEMENT();
  SC_CTOR(Latch)
  {
    SC_METHOD(COMPORTEMENT);
    sensitive << E << D;
  }
};

#endif
