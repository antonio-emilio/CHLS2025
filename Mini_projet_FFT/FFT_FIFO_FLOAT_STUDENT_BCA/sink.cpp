/* fichier sink.cpp */
#include "sink.h"
#include <fstream>
#include <iostream>

using std::cout;
using std::endl;

void SINK::COMPORTEMENT()
{
    std::ofstream realStream("out_real.txt");
    std::ofstream imagStream("out_imag.txt");

    if (!realStream || !imagStream) {
        cout << "[SINK] Erreur d'ouverture des fichiers de sortie!" << endl;
        return;
    }

    while (true)
    {
        if (data_valid.read()) {
            float real = in_real.read();
            float imag = in_imag.read();

            cout << "[SINK] Écriture de données dans des fichiers." << endl;

            realStream << real << std::endl;
            imagStream << imag << std::endl;

            data_req.write(true);
        } else {
            data_req.write(false);
        }

        wait();
    }
}
