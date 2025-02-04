#include <systemc.h>
#ifndef DFF_STIMULI_H
#define DFF_STIMULI_H

SC_MODULE(DFF_stimuli)
{
 public :
  sc_in_clk clk;
  sc_out<bool> D; // Entrada D do Flip-Flop
      
  SC_CTOR(DFF_stimuli)
  {
    SC_THREAD(stim);
    sensitive << clk.pos();
  }

 private: 
  void stim();
};

#endif
