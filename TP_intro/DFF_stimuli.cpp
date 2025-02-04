#include "DFF_stimuli.h"

void DFF_stimuli::stim()
{
  // Sinal inicial
  D.write(0);
  wait();

  // Testando diferentes valores de D
  D.write(1);
  wait();

  D.write(0);
  wait();

  D.write(1);
  wait();

  D.write(1);
  wait();

  D.write(0);
  wait();

  D.write(1);
  wait();

  D.write(0);
  wait();

  // Finaliza simulação após algumas iterações
  sc_stop();
}
