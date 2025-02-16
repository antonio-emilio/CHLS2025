#include "latch.h"

void LATCH::COMPORTEMENT()
    if (E)
    {
        Q = D;
        QB = !(D);
    }
}
