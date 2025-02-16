/* fichier fsm.h */
#include <systemc.h>
enum ETAT
{
    ala,
    tamb,
    ouille
};
SC_MODULE(FSM)
{
    sc_in<bool> CLK;
    sc_in<bool> RESET;
    sc_out<sc_uint<2>> T;
    sc_signal<ETAT> ETAT_COURANT, ETAT_FUTUR;
    void COMBINATOIRE();
    void SEQUENTIEL();
    SC_CTOR(FSM)
    {
        SC_METHOD(COMBINATOIRE);
        sensitive << ETAT_COURANT;
        SC_METHOD(SEQUENTIEL);
        sensitive << RESET;
        sensitive_pos << CLK;
    }
};