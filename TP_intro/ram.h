/* fichier ram.h */
#include <systemc.h>
SC_MODULE(RAM)
{
sc_in<bool> CLK;
sc_in<bool> RESET;
sc_in<bool> DATA_ENABLE;
sc_in<bool> WRITE_ENABLE;
sc_in<sc_uint<8> > ADRESS;
sc_inout_rv<16> DATA;
sc_lv<16> RAM_DATA[256];
void COMPORTEMENT();
SC_CTOR(RAM)
{
SC_METHOD(COMPORTEMENT);
sensitive << RESET;
sensitive_pos << CLK;
}
};