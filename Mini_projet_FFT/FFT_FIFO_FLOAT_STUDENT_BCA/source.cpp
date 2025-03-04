/* fichier source.cpp */
#include "source.h"
#include <fstream>
#include <iostream>

using std::cout;
using std::endl;

void SOURCE::COMPORTEMENT()
{
    std::ifstream realStream("in_real.txt");
    std::ifstream imagStream("in_imag.txt");

    if (!realStream || !imagStream) {
        cout << "[SOURCE] Erro ao abrir os arquivos de entrada!" << endl;
        return;
    }

    while (true)    
    {
        if (realStream.eof() || imagStream.eof()) {
            data_valid.write(false);
            cout << "[SOURCE] Fim do arquivo alcançado." << endl;
        }
        else if (data_req.read() && !sent) {
            cout << "[SOURCE] Enviando dados." << endl;
            float real, imag;
            realStream >> real;
            imagStream >> imag;

            out_real.write(real);
            out_imag.write(imag);
            data_valid.write(true);
            sent = true;
        } else {
            sent = false;
            data_valid.write(false);
        }

        wait();
    }
}
