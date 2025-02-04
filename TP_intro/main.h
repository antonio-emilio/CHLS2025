#ifndef MAIN_H
#define MAIN_H

#include <systemc.h>
#include "DFF.h"
#include "DFF_stimuli.h"

SC_MODULE(Top)
{
  // Sinais
  sc_clock clk;
  sc_signal<bool> D;
  sc_signal<bool> Q;
  sc_signal<bool> QB;

  // Instâncias do Flip-Flop e do módulo de estímulos
  DFF dff1;
  DFF_stimuli stimuli1;

  void INIT();

  SC_CTOR(Top)
    : clk("clk", 10, SC_NS, 0.5), // Clock com período de 10ns
      D("D"), Q("Q"), QB("QB"),
      dff1("dff1"), stimuli1("stimuli1")
  {
    // Conectar Flip-Flop D
    dff1.CK(clk);
    dff1.D(D);
    dff1.Q(Q);
    dff1.QB(QB);

    // Conectar o módulo de estímulos
    stimuli1.clk(clk);
    stimuli1.D(D);
  }
};

#endif
