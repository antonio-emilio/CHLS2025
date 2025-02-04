#include <systemc.h>
#include "DFF.h"
#include "DFF_stimuli.h"

int sc_main(int argc, char *argv[])
{
  sc_trace_file *tf;

  // Sinais
  sc_signal<bool> D;
  sc_signal<bool> Q;
  sc_signal<bool> QB;
  
  sc_clock clk("clk", 10, SC_NS, 0.5, 10, SC_NS, true); // Clock de 10ns período

  // Instanciando o Flip-Flop D e os estímulos
  DFF dff1("dff1");
  DFF_stimuli stimuli1("stimuli1");

  // Conectando os sinais
  dff1.CK(clk);
  dff1.D(D);
  dff1.Q(Q);
  dff1.QB(QB);

  stimuli1.clk(clk);
  stimuli1.D(D);

  // Criando o arquivo de ondas
  tf = sc_create_vcd_trace_file("waves");
  tf->set_time_unit(1, SC_NS);
  
  sc_trace(tf, clk, "clk");
  sc_trace(tf, D, "D");
  sc_trace(tf, Q, "Q");
  sc_trace(tf, QB, "QB");

  // Iniciando a simulação
  sc_start(500, SC_NS);
  
  // Fechando o arquivo de ondas
  sc_close_vcd_trace_file(tf);
  
  return 0;
}
