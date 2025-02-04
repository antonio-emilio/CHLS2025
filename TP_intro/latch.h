#include <systemc.h>
#ifndef LATCH_H
#define LATCH_H

SC_MODULE(Latch)
{
 public:
  sc_in<bool> E, D; // E = Enable (ou Clock para Flip-Flop), D = Entrada
  sc_out<bool> Q, QB; // Saídas Q e Qn

  SC_CTOR(Latch)
  {
    SC_METHOD(comportement);
    sensitive << E << D;
  }

 private:
  void comportement()
  {
    if (E.read() == 1) // Quando habilitado, Q recebe D
    {
      Q.write(D.read());
      QB.write(!D.read());
    }
  }
};

#endif
