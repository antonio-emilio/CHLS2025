#ifndef ADD1B_STIMULI_H
#define ADD1B_STIMULI_H

#include <systemc.h>

SC_MODULE(ADD1b_stimuli)
{
 public:
  sc_in_clk clk;
  sc_out<bool> A, B, Cin;

  SC_CTOR(ADD1b_stimuli)
  {
    SC_THREAD(stim);
    sensitive << clk.pos();
  }

 private:
  void stim()
  {
    wait();
    A.write(0); B.write(0); Cin.write(0);
    wait();
    A.write(0); B.write(0); Cin.write(1);
    wait();
    A.write(0); B.write(1); Cin.write(0);
    wait();
    A.write(0); B.write(1); Cin.write(1);
    wait();
    A.write(1); B.write(0); Cin.write(0);
    wait();
    A.write(1); B.write(0); Cin.write(1);
    wait();
    A.write(1); B.write(1); Cin.write(0);
    wait();
    A.write(1); B.write(1); Cin.write(1);
    wait();
    sc_stop();
  }
};

#endif
