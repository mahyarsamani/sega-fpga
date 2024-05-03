// This is a generated file. Use and modify at your own risk.
////////////////////////////////////////////////////////////////////////////////

//-----------------------------------------------------------------------------
// kernel: rtl_kernel_wizard_0
//
// Purpose: This is a C-model for generaating stimulus to the k2k example
//
//-----------------------------------------------------------------------------
#define WORD_SIZE 32
#define SHORT_WORD_SIZE 16
#define CHAR_WORD_SIZE 8
// Transfer size and buffer size are in words.
#define TRANSFER_SIZE_BITS WORD_SIZE*4096*8
#define BUFFER_WORD_SIZE 8192
#include <string.h>
#include <stdbool.h>
#include "hls_half.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"


// Write out stream of incrementing numbers
template <int BITS, int WUSER, int WID, int WDEST>
void number_generator (
   hls::stream< ap_axiu <BITS,WUSER,WID,WDEST> >& m_axis
) {
  unsigned int _data_,x;
  _data_ = 0;
 x = 0;
 if (BITS == 8) {
  x = 8;
 } else if (BITS == 16) {
 x = 16;
 } else {
 x = 32;
 }

  for (unsigned int word = 0;word < 4096*WORD_SIZE/x; word+=BITS/x) {
    ap_uint <BITS> tmp_out;
    ap_axiu <BITS,WUSER,WID,WDEST> interm;
    for (unsigned int i=0; i < BITS/x; i++) {
      tmp_out(x*(i+1)-1,x*i) = ++_data_;
    }
    interm.data = tmp_out;
    interm.keep = -1;
    interm.last = ((_data_ >= 4096*WORD_SIZE/32) ? 1 : 0);
    m_axis.write(interm);
  }
}
// Read stream and complete when last is read.
template <int BITS, int WUSER, int WID, int WDEST>
void read_sink (
  hls::stream< ap_axiu <BITS,WUSER,WID,WDEST> >& s_axis
) {
 ap_uint<1> last;
 do {
  ap_uint<BITS> tmp_out;
  ap_axiu <BITS,WUSER,WID,WDEST> interm = s_axis.read();
   last = interm.last;
 } while (last == 0);
}


// Function declaration/Interface pragmas to match RTL Kernel
extern "C" void k2k_example  (
    hls::stream< ap_axiu<256,0,0,0> >& axisHBMin,
    hls::stream< ap_axiu<512,0,0,0> >& axisDDRin,
    hls::stream< ap_axiu<256,0,0,0> >& axisHBMout,
    hls::stream< ap_axiu<512,0,0,0> >& axisDDRout
) {


    #pragma HLS INTERFACE s_axilite port=return bundle=control
    #pragma HLS INTERFACE ap_ctrl_hs port=return
    #pragma HLS INTERFACE axis port=axisHBMin
    #pragma HLS dataflow
    #pragma HLS INTERFACE axis port=axisDDRin
    #pragma HLS dataflow
    #pragma HLS INTERFACE axis port=axisHBMout
    #pragma HLS dataflow
    #pragma HLS INTERFACE axis port=axisDDRout
    #pragma HLS dataflow

// Modify contents below to match the function of the RTL Kernel

  //write_only example
  number_generator<256,0,0,0> (axisHBMin);


  //Read_only example
  read_sink<256,0,0,0> (axisHBMout);


  //write_only example
  number_generator<512,0,0,0> (axisDDRin);


  //Read_only example
  read_sink<512,0,0,0> (axisDDRout);


}

