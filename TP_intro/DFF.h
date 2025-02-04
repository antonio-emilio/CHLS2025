#include <systemc.h>
#include "latch.h"

#ifndef DFF_H
#define DFF_H

SC_MODULE(DFF)
{
 public:
  sc_in<bool> CK, D;
  sc_out<bool> Q, QB;

  sc_signal<bool> CK_neg; // Sinal auxiliar para o clock invertido
  sc_signal<bool> Qm, QBm; // Sinais intermediários entre os latches

  Latch *master, *slave;

  SC_CTOR(DFF)
  {
    // Criando os latches
    master = new Latch("Master");
    master->E(CK_neg); // Master ativado quando CK = 0 (nível baixo)
    master->D(D);
    master->Q(Qm);
    master->QB(QBm);

    slave = new Latch("Slave");
    slave->E(CK); // Slave ativado quando CK = 1 (nível alto)
    slave->D(Qm);
    slave->Q(Q);
    slave->QB(QB);

    // Processo para inverter o clock
    SC_METHOD(inverter_clock);
    sensitive << CK;
  }

  ~DFF()
  {
    delete master;
    delete slave;
  }

 private:
  void inverter_clock()
  {
    CK_neg.write(!CK.read());
  }
};

#endif
