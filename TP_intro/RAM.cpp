/* fichier RAM.cpp */
#include <systemc.h>
#include "ram.h"
void RAM::COMPORTEMENT()
{
    if (RESET == 1)
    {
        DATA = 0;
    }
    else if (DATA_ENABLE == 1)
    {
        DATA = "ZZZZZZZZZZZZZZZZ";
    }
    else if (WRITE_ENABLE == 0)
    {
        DATA = RAM_DATA[ADRESS.read()];
    }
    else
    {
        RAM_DATA[ADRESS.read()] = DATA;
    }
}