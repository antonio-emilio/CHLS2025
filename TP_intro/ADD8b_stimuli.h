#ifndef ADD8B_STIMULI_H
#define ADD8B_STIMULI_H

#include <systemc.h>

SC_MODULE(ADD8b_stimuli)
{
 public:
  sc_in_clk clk;
  sc_out<sc_lv<8>> A_8b, B_8b;
  sc_out<bool> Cin;

  SC_CTOR(ADD8b_stimuli)
  {
    SC_THREAD(stim);
    sensitive << clk.pos();
  }

 private:
  void stim()
  {
    wait();
    A_8b.write("00000000"); B_8b.write("00000000"); Cin.write(0);
    wait();
    A_8b.write("00000001"); B_8b.write("00000001"); Cin.write(0);
    wait();
    A_8b.write("00001111"); B_8b.write("00000001"); Cin.write(0);
    wait();
    A_8b.write("11111111"); B_8b.write("00000001"); Cin.write(0);
    wait();
    A_8b.write("11111111"); B_8b.write("00000001"); Cin.write(1);
    wait();
    A_8b.write("10101010"); B_8b.write("01010101"); Cin.write(0);
    wait();
    A_8b.write("11001100"); B_8b.write("00110011"); Cin.write(1);
    wait();
    sc_stop();
  }
};

#endif
