/* fichier CPT8b.h */
#include <systemc.h>
SC_MODULE(CPT8b)
{
    sc_in<bool> CLK;
    sc_in<bool> RESET;
    sc_in<bool> CE;
    sc_in<bool> LOAD;
    sc_in<sc_uint<8>> IN_DATA;
    sc_out<sc_uint<8>> OUT_DATA;
    sc_uint<8> TEMP;
    void COMPORTEMENT();
    SC_CTOR(CPT8b)
    {
        SC_METHOD(COMPORTEMENT);
        sensitive << RESET;
        sensitive_pos << CLK;
    }
};