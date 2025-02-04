#ifndef ADD8B_H
#define ADD8B_H

#include <systemc.h>
#include "ADD1b.h"

SC_MODULE(ADD8b)
{
 public:
  sc_in<sc_lv<8>> A_8b, B_8b; // Entradas de 8 bits
  sc_in<bool> Cin;            // Carry de entrada
  sc_out<sc_lv<8>> S_8b;      // Saída da soma de 8 bits
  sc_out<bool> Cout;          // Carry de saída

  sc_signal<bool> A_bits[8], B_bits[8], S_bits[8]; // Sinais individuais para cada bit
  sc_signal<bool> carry[8];   // Vetor de sinais para os carrys intermediários
  sc_signal<bool> carry_out_signal; // Novo sinal intermediário para Cout

  ADD1b *adder[8];            // Array de 8 instâncias do somador de 1 bit

  SC_CTOR(ADD8b)
  {
    for (int i = 0; i < 8; i++)
    {
      std::string name = "adder_" + std::to_string(i);
      adder[i] = new ADD1b(name.c_str());

      adder[i]->A(A_bits[i]);
      adder[i]->B(B_bits[i]);

      if (i == 0)
        adder[i]->Cin(Cin); // O primeiro somador recebe Cin como entrada
      else
        adder[i]->Cin(carry[i - 1]); // Os outros recebem carry do anterior

      adder[i]->S(S_bits[i]);
      adder[i]->Cout(carry[i]); // Passa o carry para o próximo estágio
    }

    // Usar carry_out_signal como intermediário
    carry_out_signal = carry[7];

    // Método para atualizar Cout sem conflito de drivers
    SC_METHOD(update_Cout);
    sensitive << carry_out_signal;

    SC_METHOD(update_signals);
    sensitive << A_8b << B_8b << S_bits[0] << S_bits[1] << S_bits[2] << S_bits[3]
              << S_bits[4] << S_bits[5] << S_bits[6] << S_bits[7];
  }

  ~ADD8b()
  {
    for (int i = 0; i < 8; i++)
      delete adder[i];
  }

 private:
  void update_signals()
  {
    sc_lv<8> A_tmp, B_tmp, S_tmp;

    for (int i = 0; i < 8; i++)
    {
      A_tmp[i] = A_8b.read()[i].to_bool();
      B_tmp[i] = B_8b.read()[i].to_bool();
      S_tmp[i] = S_bits[i].read();
    }

    S_8b.write(S_tmp);
  }

  void update_Cout()
  {
    Cout.write(carry_out_signal.read());
  }
};

#endif
