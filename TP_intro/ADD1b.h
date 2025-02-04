#ifndef ADD1B_H
#define ADD1B_H

#include <systemc.h>
#include "Nand.h"
#include "Xor.h"

SC_MODULE(ADD1b)
{
 public:
  sc_in<bool> A, B, Cin;
  sc_out<bool> S, Cout;

  sc_signal<bool> Xor1_out, Xor2_out;
  sc_signal<bool> Nand1_out, Nand2_out, Nand3_out;
  sc_signal<bool> OR1_out;

  Xor *xor1, *xor2;
  Nand *nand1, *nand2, *nand3;
  Nand *nand_or1;

  SC_CTOR(ADD1b)
  {
    // Criando os módulos lógicos
    xor1 = new Xor("Xor1");
    xor1->C(A);
    xor1->D(B);
    xor1->O(Xor1_out);

    xor2 = new Xor("Xor2");
    xor2->C(Xor1_out);
    xor2->D(Cin);
    xor2->O(S);

    nand1 = new Nand("Nand1");
    nand1->A(A);
    nand1->B(B);
    nand1->S(Nand1_out);

    nand2 = new Nand("Nand2");
    nand2->A(A);
    nand2->B(Cin);
    nand2->S(Nand2_out);

    nand3 = new Nand("Nand3");
    nand3->A(B);
    nand3->B(Cin);
    nand3->S(Nand3_out);

    nand_or1 = new Nand("Nand_OR1");
    nand_or1->A(Nand1_out);
    nand_or1->B(Nand2_out);
    nand_or1->S(OR1_out);

    nand_or1 = new Nand("Nand_OR2");
    nand_or1->A(OR1_out);
    nand_or1->B(Nand3_out);
    nand_or1->S(Cout);
  }

  ~ADD1b()
  {
    delete xor1;
    delete xor2;
    delete nand1;
    delete nand2;
    delete nand3;
    delete nand_or1;
  }
};

#endif
