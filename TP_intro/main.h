#ifndef MAIN_H
#define MAIN_H

#include <systemc.h>
#include "ADD8b.h"
#include "ADD8b_stimuli.h"

SC_MODULE(Top)
{
  sc_clock clk;
  sc_signal<sc_lv<8>> A_8b, B_8b, S_8b;
  sc_signal<bool> Cin, Cout;

  ADD8b adder;
  ADD8b_stimuli stimuli;

  void INIT();

  SC_CTOR(Top)
    : clk("clk", 10, SC_NS, 0.5),
      A_8b("A_8b"), B_8b("B_8b"), S_8b("S_8b"),
      Cin("Cin"), Cout("Cout"),
      adder("adder"), stimuli("stimuli")
  {
    adder.A_8b(A_8b);
    adder.B_8b(B_8b);
    adder.Cin(Cin);
    adder.S_8b(S_8b);
    adder.Cout(Cout);

    stimuli.clk(clk);
    stimuli.A_8b(A_8b);
    stimuli.B_8b(B_8b);
    stimuli.Cin(Cin);
  }
};

#endif
