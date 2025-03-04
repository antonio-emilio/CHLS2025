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

	std::ifstream realStream_ref("out_real_ref_valid.txt");
	std::ifstream imagStream_ref("out_imag_ref_valid.txt");

	float real, imag, real_ref, imag_ref, diff, max_error = 0.;

	if (!realStream || !imagStream || !realStream_ref || !imagStream_ref)
		cout << "[SINK] " << "Un des fichiers d'entree n'est pas ouvert" << endl;
	
	data_req.write(true);

	while (true)
	{
		if (data_valid.read())
		{
			cout << "[SINK] " << "Ecriture des fichiers de sortie." << endl;
			data_req.write(false);

			real = in.read();
			imag = in.read();

			realStream << real << std::endl;
			imagStream << imag << std::endl;

			realStream_ref >> real_ref;
			imagStream_ref >> imag_ref;

			diff = std::abs(real - real_ref) + std::abs(imag - imag_ref);
			if (diff > max_error)
			{
				max_error = diff;
				cout << "[SINK] " << "Erreur maximale actuelle: " << max_error << endl;
			}

			data_req.write(true);
		}

		wait();
	}

}
