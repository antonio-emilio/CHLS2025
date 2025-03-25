#include <systemc.h>
#include "main.h"


int sc_main(int argc, char *argv[])
{

  TOP mainTop("top");

  sc_trace_file *tf = sc_create_vcd_trace_file("trace");
  tf->set_time_unit(1, SC_NS);
  // ATTENTION:
  // on peut pas faire ceci:
  //sc_trace(tf, mainTop.source_fft, "fifo1");
  // MAIS il faut faire appel a la methode
  // trace() du canal que l'on veut suivre

  sc_start(2000, SC_NS);

  cout << "Finished at " << sc_time_stamp() << "\n";

  sc_close_vcd_trace_file(tf);

  return 0;

}
