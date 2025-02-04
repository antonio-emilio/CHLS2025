#include <systemc.h>
#include "nand.h"
#ifndef XOR_H
#define XOR_H

SC_MODULE(Xor)
{

 public : 
  sc_in<bool> C,D; // bool peut etre remplace par sc_bit
  sc_out<bool> O;

  // Sinais intermediários
  sc_signal<bool> nand1_out, nand2_out, nand3_out, nand4_out;
  SC_CTOR(Xor)
    {
      SC_METHOD (comportement);
      sensitive << C << D;
      
      // Instanciando portas NAND usando ponteiros
      Nand* nand1 = new Nand("nand1");
      Nand* nand2 = new Nand("nand2");
      Nand* nand3 = new Nand("nand3");
      Nand* nand4 = new Nand("nand4");

      // Conectando sinais
      nand1->A(C);
      nand1->B(D);
      nand1->S(nand1_out);

      nand2->A(C);
      nand2->B(nand1_out);
      nand2->S(nand2_out);

      nand3->A(D);
      nand3->B(nand1_out);
      nand3->S(nand3_out);

      nand4->A(nand2_out);
      nand4->B(nand3_out);
      nand4->S(O);
      
    }
 private :
  void comportement();
    
};
#endif
