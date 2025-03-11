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
  sc_trace(tf, mainTop.data_valid_source, "data_valid_source");
  sc_trace(tf, mainTop.data_req_source, "data_req_source");
  sc_trace(tf, mainTop.data_valid_sink, "data_valid_sink");
  sc_trace(tf, mainTop.data_req_sink, "data_req_sink");

  sc_trace(tf, mainTop.fft_source_real, "fft_source_real");
  sc_trace(tf, mainTop.fft_source_imag, "fft_source_imag");
  sc_trace(tf, mainTop.fft_sink_real, "fft_sink_real");
  sc_trace(tf, mainTop.fft_sink_imag, "fft_sink_imag");

  //Lancement de la simulation
  sc_start(2000, SC_NS);

  //Fin
  cout << "Finished at " << sc_time_stamp() << "\n";
  //Fermeture du fichier de traces
  sc_close_vcd_trace_file(tf);

  return 0;

}
