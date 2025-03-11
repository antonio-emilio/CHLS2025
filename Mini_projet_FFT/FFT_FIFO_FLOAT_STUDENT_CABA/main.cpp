//  main.cpp 
// Testbench pour FFT avec donn�es en flottant

#include <systemc.h>
#include "main.h"


int sc_main(int argc, char *argv[])
{

  // Instanciation du TOP
  TOP mainTop("top");

  // Creation des traces
  sc_trace_file *tf = sc_create_vcd_trace_file("trace");
  tf->set_time_unit(1, SC_NS);
  // ATTENTION:
  // on peut pas faire ceci:
  //sc_trace(tf, mainTop.source_fft, "fifo1");
  // MAIS il faut faire appel a la methode
  // trace() du canal que l'on veut suivre
  
  mainTop.data_valid_source.trace(tf);
  mainTop.data_req_source.trace(tf);
  mainTop.data_valid_sink.trace(tf);
  mainTop.data_req_sink.trace(tf);
  mainTop.fft_source_real.trace(tf);
  mainTop.fft_source_imag.trace(tf);
  mainTop.fft_sink_real.trace(tf);
  mainTop.fft_sink_imag.trace(tf);

  //Lancement de la simulation
  sc_start(2000, SC_NS);

  //Fin
  cout << "Finished at " << sc_time_stamp() << "\n";
  //Fermeture du fichier de traces
  sc_close_vcd_trace_file(tf);

  return 0;

}
