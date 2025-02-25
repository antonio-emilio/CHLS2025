/* fichier source.h */
#ifndef SOURCE_H
#define SOURCE_H

#include "systemc.h"

SC_MODULE(SOURCE)
    {
        sc_in_clk    clk;
        sc_fifo_out<float> out;
        sc_out<bool>   data_valid;
        sc_in<bool>   data_req;

        void COMPORTEMENT();

          SC_CTOR(SOURCE)
                {
                  SC_THREAD(COMPORTEMENT);
                  sensitive << clk.pos();
                 }
};
#endif
