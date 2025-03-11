//  main.h

#include <systemc.h>
#include "source.h"
#include "fft.h"
#include "sink.h"
#define L 16

SC_MODULE(TOP)
{
  // signals
  sc_clock clk;

  sc_signal<bool> data_valid_source;
  sc_signal<bool> data_req_source;
  sc_signal<bool> data_valid_sink;
  sc_signal<bool> data_req_sink;

  sc_signal<float> fft_source_real;
  sc_signal<float> fft_source_imag;
  sc_signal<float> fft_sink_real;
  sc_signal<float> fft_sink_imag;

  // instanciate
  SOURCE SOURCE1;
  FFT FFT1;
  SINK SINK1;

  SC_CTOR(TOP)
      : clk("clk", 10, SC_NS, 0.5),
        fft_sink_real("fft_sink_real", 16),
        fft_sink_imag("fft_sink_imag", 16),
        fft_source_real("fft_source_real", 16),
        fft_source_imag("fft_source_imag", 16),
        data_valid_source("data_valid_source"),
        data_req_source("data_req_source"),
        data_valid_sink("data_valid_sink"),
        data_req_sink("data_req_sink"),
        FFT1("FFT_PROCESS"),
        SOURCE1("SOURCE_PROCESS"),
        SINK1("SINK_PROCESS")
  {
    SOURCE1.clk(clk);
    SOURCE1.out_real(fft_source_real);
    SOURCE1.out_imag(fft_source_imag);
    SOURCE1.data_valid(data_valid_source);
    SOURCE1.data_req(data_req_source);

    FFT1.clk(clk);
    FFT1.in_real(fft_source_real);
    FFT1.in_imag(fft_source_imag);
    FFT1.out_real(fft_sink_real);
    FFT1.out_imag(fft_sink_imag);
    FFT1.data_valid_source(data_valid_source);
    FFT1.data_req_source(data_req_source);
    FFT1.data_valid_sink(data_valid_sink);
    FFT1.data_req_sink(data_req_sink);

    SINK1.clk(clk);
    SINK1.in_real(fft_sink_real);
    SINK1.in_imag(fft_sink_imag);
    SINK1.data_valid(data_valid_sink);
    SINK1.data_req(data_req_sink);
  }
};
