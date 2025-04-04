#include "fft.h"

const complex_t weights[4] = W;

void FFT::but(const complex_t *weight, complex_t *in0, complex_t *in1, complex_t *out0, complex_t *out1) {
    ac_fixed<26, 19, true, AC_RND_CONV, AC_SAT> temp_real, temp_imag;

    temp_real = (in1->real * weight->real - in1->imag * weight->imag);
    temp_imag = (in1->real * weight->imag + in1->imag * weight->real);

    cout << "temp_real: " << temp_real << endl;
    cout << "temp_imag: " << temp_imag << endl;

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

void FFT::FFT8S(
    complex_t input_fft[8],
    complex_t output_fft[8],
    const complex_t weights[4])
{
    complex_t stage1[8], stage2[8];

    cout << "[FFT] Exécution de la FFT..." << endl;
    int index1[4][4] = {{0, 4, 0, 1}, {2, 6, 2, 3}, {1, 5, 4, 5}, {3, 7, 6, 7}};
    BUT_S1:for (int k = 0; k < 4; k++)
    {
        but(&weights[0], &input_fft[index1[k][0]], &input_fft[index1[k][1]], &stage1[index1[k][2]], &stage1[index1[k][3]]);
    }

    int index2[4][4] = {{0, 2, 0, 2}, {1, 3, 1, 3}, {4, 6, 4, 6}, {5, 7, 5, 7}};
    BUT_S2:for (int k = 0; k < 4; k++)
    {
        but(&weights[index2[0][k]], &stage1[index2[k][0]], &stage1[index2[k][1]], &stage2[index2[k][2]], &stage2[index2[k][3]]);
    }

    int index3[4][4] = {{0, 4, 0, 4}, {1, 5, 1, 5}, {2, 6, 2, 6}, {3, 7, 3, 7}};
    BUT_S3:for (int k = 0; k < 4; k++)
    {
        but(&weights[k], &stage2[index3[k][0]], &stage2[index3[k][1]], &output_fft[index3[k][2]], &output_fft[index3[k][3]]);
    }
}

#pragma HLS INLINE
void FFT::COMPORTEMENT()
{
    static complex_t input_fft[8], output_fft[8];
    processing = false;

    while (true)
    {
        if (rst.read())
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
                FFT8S(input_fft, output_fft, weights);
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
    }//WHILE 
}
