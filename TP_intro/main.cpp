#include <systemc.h>
#include "ADD8b.h"
#include "ADD8b_stimuli.h"

int sc_main(int argc, char* argv[])
{
  sc_trace_file *tf;

  sc_signal<sc_lv<8>> A_8b, B_8b, S_8b;
  sc_signal<bool> Cin, Cout;
  sc_clock clk("clk", 10, SC_NS, 0.5, 10, SC_NS, true);

  ADD8b adder("adder");
  ADD8b_stimuli stimuli("stimuli");

  adder.A_8b(A_8b);
  adder.B_8b(B_8b);
  adder.Cin(Cin);
  adder.S_8b(S_8b);
  adder.Cout(Cout);

  stimuli.clk(clk);
  stimuli.A_8b(A_8b);
  stimuli.B_8b(B_8b);
  stimuli.Cin(Cin);

  tf = sc_create_vcd_trace_file("waves");
  tf->set_time_unit(1, SC_NS);
  
  sc_trace(tf, clk, "clk");
  sc_trace(tf, A_8b, "A_8b");
  sc_trace(tf, B_8b, "B_8b");
  sc_trace(tf, Cin, "Cin");
  sc_trace(tf, S_8b, "S_8b");
  sc_trace(tf, Cout, "Cout");

  sc_start(100, SC_NS);
  sc_close_vcd_trace_file(tf);

  return 0;
}
