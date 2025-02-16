/* fichier fsm.cpp */
#include <systemc.h>
#include "fsm.h"
void FSM::SEQUENTIEL()
{
    if (RESET == 1)
    {
        ETAT_COURANT = ala;
    }
    else
    {
        ETAT_COURANT = ETAT_FUTUR;
    }
}
void FSM::COMBINATOIRE()
{
    switch (ETAT_COURANT)
    {
    case ala:
    {
        ETAT_FUTUR = tamb;
        T = 0;
    }
    break;

    case tamb:
    {
        ETAT_FUTUR = ouille;
        T = 1;
    }
    break;

    case ouille:
    {
        ETAT_FUTUR = ala;
        T = 2;
    }
    break;
    }
}