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
  sc_signal<float> data_in;
  sc_signal<float> data_out;


  sc_signal<bool> data_valid_source;
  sc_signal<bool> data_req_source;
  sc_signal<bool> data_valid_sink;
  sc_signal<bool> data_req_sink;

  sc_signal<float> source_fft;
  sc_signal<float> fft_sink;

  // instanciate
  SOURCE SOURCE1;
  FFT FFT1;
  SINK SINK1;

  SC_CTOR(TOP)
      : clk("clk", 10, SC_NS, 0.5),
        source_fft("source_fft", 16),
        fft_sink("fft_sink", 16),
        FFT1("FFT_PROCESS"),
        SOURCE1("SOURCE_PROCESS"),
        SINK1("SINK_PROCESS")
  {
    SOURCE1.clk(clk);
    SOURCE1.out(source_fft);
    SOURCE1.data_valid(data_valid_source);
    SOURCE1.data_req(data_req_source);

    FFT1.clk(clk);
    FFT1.in(source_fft);
    FFT1.out(fft_sink);
    FFT1.data_valid_source(data_valid_source);
    FFT1.data_req_source(data_req_source);
    FFT1.data_valid_sink(data_valid_sink);
    FFT1.data_req_sink(data_req_sink);

    SINK1.clk(clk);
    SINK1.in(fft_sink);
    SINK1.data_valid(data_valid_sink);
    SINK1.data_req(data_req_sink);
  }
};
