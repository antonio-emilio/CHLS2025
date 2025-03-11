/* fichier sink.cpp */
#include "sink.h"
#include <fstream>
#include <iostream>

using std::cout;
using std::endl;

void SINK::COMPORTEMENT() {
    std::ofstream realStream("out_real.txt");
    std::ofstream imagStream("out_imag.txt");

    if (!realStream || !imagStream) {
        cout << "[SINK] Erreur d'ouverture des fichiers de sortie!" << endl;
        return;
    }

    while (true) {
        if (data_valid.read()) {
            ac_fixed<23, 18, true> real = in_real.read();
            ac_fixed<23, 18, true> imag = in_imag.read();

            cout << "[SINK] Écriture de données dans des fichiers." << endl;

            realStream << (real / 32) << std::endl; // Ajuste para ponto fixo
            imagStream << (imag / 32) << std::endl;

            data_req.write(true);
        } else {
            data_req.write(false);
        }

        wait();
    }
}