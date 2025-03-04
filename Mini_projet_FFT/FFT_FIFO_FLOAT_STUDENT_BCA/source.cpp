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

  if (!realStream | !imagStream | realStream.eof() | imagStream.eof())
    cout << "[SOURCE] " << "Un des fichiers d'entree n'est pas ouvert" << endl;

  while (true)
  {
    if (realStream.eof() && imagStream.eof())
    {
      data_valid.write(false);
      cout << "[SOURCE] " << "Fin de lecture des fichiers d'entree" << endl;
    }
    else if (data_req.read() && !data_valid.read())
    {
      realStream >> real;
      imagStream >> imag;

      out.write(real);
      out.write(imag);

      cout << "[SOURCE] " << "Sample wrote." << endl;
      data_valid.write(true);
    }

    wait();
  }
}