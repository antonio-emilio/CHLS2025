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

  float real[8], imag[8];
  int i = 0;

  if (!realStream || !imagStream)
    cout << "[SOURCE] " << "Un des fichiers d'entree n'est pas ouvert" << endl;

  wait();

  while (true)
  {
    while
      !(!realStream.eof() && !imagStream.eof() && i < 8) wait();

    realStream >> real[i];
    wait();
    imagStream >> imag[i];
    wait();

    i++;

    if (i == 7)
    {
      cout << "[SOURCE] " << "8 echantillons sont disponible sur le bloc SOURCE..." << endl;
      data_valid.write(true);
      wait();
    }

    if (data_req.read() == true && data_valid.read() == true)
    {
      for (i = 0; i < 8; i++)
      {
        // TODO DIVISER LES VALEURS EN DEUX SIGNAL DE SORTIE
        out.write(real[i]);
        wait();
        out.write(imag[i]);
        wait();
      }
      cout << "[SOURCE] " << "Ecriture de 8 echantillons par le bloc SOURCE..." << endl;
      i = 0;
    }

    wait();
  }
}
