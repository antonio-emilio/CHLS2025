/* fichier CPT8b.cpp */
#include <systemc.h>
#include "CPT8b.h"
void CPT8b::COMPORTEMENT()
{
    if (RESET == 1)
    {
        TEMP = 0;
    }
    else if (LOAD == 1)
    {
        TEMP = IN_DATA.read();
    }
    else if (CE == 0)
    {
        TEMP++;
    }
    OUT_DATA = TEMP;
}