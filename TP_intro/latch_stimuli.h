#include <systemc.h>
#ifndef LATCH_STIMULI_H
#define LATCH_STIMULI_H

SC_MODULE(Latch_stimuli)
{
 public :
  sc_in_clk clk;
  sc_out<bool> s1,s2;
      
  SC_CTOR(Latch_stimuli)
    {
      SC_THREAD (stim);
      sensitive << clk.pos();
    }
 private : 
  void stim ();
  
};

#endif
