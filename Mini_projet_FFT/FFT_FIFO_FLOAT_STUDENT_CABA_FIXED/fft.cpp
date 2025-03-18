/* fichier fft.cpp */
#include "fft.h"

complex_t weights[4] = W;

void FFT::but(complex_t *weight, complex_t *in0, complex_t *in1, complex_t *out0, complex_t *out1)
{
    ac_fixed<46, 36, true, AC_RND_CONV, AC_SAT> temp_real, temp_imag;

    temp_real = (in1->real * weight->real - in1->imag * weight->imag) >> 5;
    temp_imag = (in1->real * weight->imag + in1->imag * weight->real) >> 5;

    out0->real = in0->real + temp_real;
    out0->imag = in0->imag + temp_imag;
    out1->real = in0->real - temp_real;
    out1->imag = in0->imag - temp_imag;
}

void FFT::RESET()
{
    i = 0;
    j = 0;
    processing = false;
    data_req_source.write(false);
    data_valid_sink.write(false);
    out_real.write(0);
    out_imag.write(0);
}

void FFT::COMPORTEMENT()
{
    complex_t input_fft[8], output_fft[8];
    complex_t stage1[8], stage2[8];
    processing = false;

    while (true)
    {
        if (!rst.read())
        {
            RESET();
        }
        else
        {

            if (i < 8 && !processing)
            {
                if (!data_valid_source.read() && !data_req_source.read())
                {
                    cout << "[FFT] Demande de données..." << endl;
                    data_req_source.write(true);
                }

                if (data_valid_source.read())
                {
                    cout << "[FFT] Réception des données... " << endl;
                    input_fft[i].real = in_real.read();
                    input_fft[i].imag = in_imag.read();
                    i++;

                    if (i < 8)
                    {
                        data_req_source.write(true);
                    }
                    else
                    {
                        data_req_source.write(false);
                    }
                }
            }

            if (i == 8 && !processing)
            {
                cout << "[FFT] Exécution de la FFT..." << endl;

                but(&weights[0], &input_fft[0], &input_fft[4], &stage1[0], &stage1[1]);
                but(&weights[0], &input_fft[2], &input_fft[6], &stage1[2], &stage1[3]);
                but(&weights[0], &input_fft[1], &input_fft[5], &stage1[4], &stage1[5]);
                but(&weights[0], &input_fft[3], &input_fft[7], &stage1[6], &stage1[7]);

                but(&weights[0], &stage1[0], &stage1[2], &stage2[0], &stage2[2]);
                but(&weights[2], &stage1[1], &stage1[3], &stage2[1], &stage2[3]);
                but(&weights[0], &stage1[4], &stage1[6], &stage2[4], &stage2[6]);
                but(&weights[2], &stage1[5], &stage1[7], &stage2[5], &stage2[7]);

                but(&weights[0], &stage2[0], &stage2[4], &output_fft[0], &output_fft[4]);
                but(&weights[1], &stage2[1], &stage2[5], &output_fft[1], &output_fft[5]);
                but(&weights[2], &stage2[2], &stage2[6], &output_fft[2], &output_fft[6]);
                but(&weights[3], &stage2[3], &stage2[7], &output_fft[3], &output_fft[7]);

                processing = true;
                i = 0;
            }

            if (j == 8)
            {
                data_valid_sink.write(false);
                processing = false;
                j = 0;
                cout << "[FFT] Finalisé." << endl;
            }

            if (processing && j < 8 && !data_valid_sink.read())
            {
                cout << "[FFT] Envoi des données traitées..." << endl;
                out_real.write(output_fft[j].real);
                out_imag.write(output_fft[j].imag);
                data_valid_sink.write(true);
                j++;
            }
            else if (processing)
            {
                data_valid_sink.write(false);
            }
        }

        wait();
    }
}
