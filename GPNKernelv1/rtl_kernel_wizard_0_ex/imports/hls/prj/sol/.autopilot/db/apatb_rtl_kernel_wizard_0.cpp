#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_Message "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_Message.dat"
#define AUTOTB_TVOUT_Message "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_Message.dat"
#define AUTOTB_TVIN_PEControl "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_PEControl.dat"
#define AUTOTB_TVOUT_PEControl "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_PEControl.dat"
#define AUTOTB_TVIN_axisHBMin_V_data_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisHBMin_V_data_V.dat"
#define AUTOTB_TVOUT_axisHBMin_V_data_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisHBMin_V_data_V.dat"
#define AUTOTB_TVIN_axisHBMin_V_keep_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisHBMin_V_keep_V.dat"
#define AUTOTB_TVOUT_axisHBMin_V_keep_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisHBMin_V_keep_V.dat"
#define AUTOTB_TVIN_axisHBMin_V_strb_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisHBMin_V_strb_V.dat"
#define AUTOTB_TVOUT_axisHBMin_V_strb_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisHBMin_V_strb_V.dat"
#define AUTOTB_TVIN_axisHBMin_V_last_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisHBMin_V_last_V.dat"
#define AUTOTB_TVOUT_axisHBMin_V_last_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisHBMin_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_axisHBMin_V_data_V "../tv/stream_size/stream_size_in_axisHBMin_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_data_V "../tv/stream_size/stream_ingress_status_axisHBMin_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_axisHBMin_V_keep_V "../tv/stream_size/stream_size_in_axisHBMin_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_keep_V "../tv/stream_size/stream_ingress_status_axisHBMin_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_axisHBMin_V_strb_V "../tv/stream_size/stream_size_in_axisHBMin_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_strb_V "../tv/stream_size/stream_ingress_status_axisHBMin_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_axisHBMin_V_last_V "../tv/stream_size/stream_size_in_axisHBMin_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_last_V "../tv/stream_size/stream_ingress_status_axisHBMin_V_last_V.dat"
#define AUTOTB_TVIN_axisDDRin_V_data_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisDDRin_V_data_V.dat"
#define AUTOTB_TVOUT_axisDDRin_V_data_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisDDRin_V_data_V.dat"
#define AUTOTB_TVIN_axisDDRin_V_keep_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisDDRin_V_keep_V.dat"
#define AUTOTB_TVOUT_axisDDRin_V_keep_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisDDRin_V_keep_V.dat"
#define AUTOTB_TVIN_axisDDRin_V_strb_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisDDRin_V_strb_V.dat"
#define AUTOTB_TVOUT_axisDDRin_V_strb_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisDDRin_V_strb_V.dat"
#define AUTOTB_TVIN_axisDDRin_V_last_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisDDRin_V_last_V.dat"
#define AUTOTB_TVOUT_axisDDRin_V_last_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisDDRin_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_axisDDRin_V_data_V "../tv/stream_size/stream_size_in_axisDDRin_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_data_V "../tv/stream_size/stream_ingress_status_axisDDRin_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_axisDDRin_V_keep_V "../tv/stream_size/stream_size_in_axisDDRin_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_keep_V "../tv/stream_size/stream_ingress_status_axisDDRin_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_axisDDRin_V_strb_V "../tv/stream_size/stream_size_in_axisDDRin_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_strb_V "../tv/stream_size/stream_ingress_status_axisDDRin_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_axisDDRin_V_last_V "../tv/stream_size/stream_size_in_axisDDRin_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_last_V "../tv/stream_size/stream_ingress_status_axisDDRin_V_last_V.dat"
#define AUTOTB_TVIN_axisHBMout_V_data_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisHBMout_V_data_V.dat"
#define AUTOTB_TVOUT_axisHBMout_V_data_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisHBMout_V_data_V.dat"
#define AUTOTB_TVIN_axisHBMout_V_keep_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisHBMout_V_keep_V.dat"
#define AUTOTB_TVOUT_axisHBMout_V_keep_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisHBMout_V_keep_V.dat"
#define AUTOTB_TVIN_axisHBMout_V_strb_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisHBMout_V_strb_V.dat"
#define AUTOTB_TVOUT_axisHBMout_V_strb_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisHBMout_V_strb_V.dat"
#define AUTOTB_TVIN_axisHBMout_V_last_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisHBMout_V_last_V.dat"
#define AUTOTB_TVOUT_axisHBMout_V_last_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisHBMout_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_axisHBMout_V_data_V "../tv/stream_size/stream_size_out_axisHBMout_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_axisHBMout_V_data_V "../tv/stream_size/stream_egress_status_axisHBMout_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_axisHBMout_V_keep_V "../tv/stream_size/stream_size_out_axisHBMout_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_axisHBMout_V_keep_V "../tv/stream_size/stream_egress_status_axisHBMout_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_axisHBMout_V_strb_V "../tv/stream_size/stream_size_out_axisHBMout_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_axisHBMout_V_strb_V "../tv/stream_size/stream_egress_status_axisHBMout_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_axisHBMout_V_last_V "../tv/stream_size/stream_size_out_axisHBMout_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_axisHBMout_V_last_V "../tv/stream_size/stream_egress_status_axisHBMout_V_last_V.dat"
#define AUTOTB_TVIN_axisDDRout_V_data_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisDDRout_V_data_V.dat"
#define AUTOTB_TVOUT_axisDDRout_V_data_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisDDRout_V_data_V.dat"
#define AUTOTB_TVIN_axisDDRout_V_keep_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisDDRout_V_keep_V.dat"
#define AUTOTB_TVOUT_axisDDRout_V_keep_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisDDRout_V_keep_V.dat"
#define AUTOTB_TVIN_axisDDRout_V_strb_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisDDRout_V_strb_V.dat"
#define AUTOTB_TVOUT_axisDDRout_V_strb_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisDDRout_V_strb_V.dat"
#define AUTOTB_TVIN_axisDDRout_V_last_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvin_axisDDRout_V_last_V.dat"
#define AUTOTB_TVOUT_axisDDRout_V_last_V "../tv/cdatafile/c.rtl_kernel_wizard_0.autotvout_axisDDRout_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_axisDDRout_V_data_V "../tv/stream_size/stream_size_out_axisDDRout_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_axisDDRout_V_data_V "../tv/stream_size/stream_egress_status_axisDDRout_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_axisDDRout_V_keep_V "../tv/stream_size/stream_size_out_axisDDRout_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_axisDDRout_V_keep_V "../tv/stream_size/stream_egress_status_axisDDRout_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_axisDDRout_V_strb_V "../tv/stream_size/stream_size_out_axisDDRout_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_axisDDRout_V_strb_V "../tv/stream_size/stream_egress_status_axisDDRout_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_axisDDRout_V_last_V "../tv/stream_size/stream_size_out_axisDDRout_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_axisDDRout_V_last_V "../tv/stream_size/stream_egress_status_axisDDRout_V_last_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_Message "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_Message.dat"
#define AUTOTB_TVOUT_PC_PEControl "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_PEControl.dat"
#define AUTOTB_TVOUT_PC_axisHBMin_V_data_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisHBMin_V_data_V.dat"
#define AUTOTB_TVOUT_PC_axisHBMin_V_keep_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisHBMin_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_axisHBMin_V_strb_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisHBMin_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_axisHBMin_V_last_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisHBMin_V_last_V.dat"
#define AUTOTB_TVOUT_PC_axisDDRin_V_data_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisDDRin_V_data_V.dat"
#define AUTOTB_TVOUT_PC_axisDDRin_V_keep_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisDDRin_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_axisDDRin_V_strb_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisDDRin_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_axisDDRin_V_last_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisDDRin_V_last_V.dat"
#define AUTOTB_TVOUT_PC_axisHBMout_V_data_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisHBMout_V_data_V.dat"
#define AUTOTB_TVOUT_PC_axisHBMout_V_keep_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisHBMout_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_axisHBMout_V_strb_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisHBMout_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_axisHBMout_V_last_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisHBMout_V_last_V.dat"
#define AUTOTB_TVOUT_PC_axisDDRout_V_data_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisDDRout_V_data_V.dat"
#define AUTOTB_TVOUT_PC_axisDDRout_V_keep_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisDDRout_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_axisDDRout_V_strb_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisDDRout_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_axisDDRout_V_last_V "../tv/rtldatafile/rtl.rtl_kernel_wizard_0.autotvout_axisDDRout_V_last_V.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  Message_depth = 0;
  PEControl_depth = 0;
  axisHBMin_V_data_V_depth = 0;
  axisHBMin_V_keep_V_depth = 0;
  axisHBMin_V_strb_V_depth = 0;
  axisHBMin_V_last_V_depth = 0;
  axisDDRin_V_data_V_depth = 0;
  axisDDRin_V_keep_V_depth = 0;
  axisDDRin_V_strb_V_depth = 0;
  axisDDRin_V_last_V_depth = 0;
  axisHBMout_V_data_V_depth = 0;
  axisHBMout_V_keep_V_depth = 0;
  axisHBMout_V_strb_V_depth = 0;
  axisHBMout_V_last_V_depth = 0;
  axisDDRout_V_data_V_depth = 0;
  axisDDRout_V_keep_V_depth = 0;
  axisDDRout_V_strb_V_depth = 0;
  axisDDRout_V_last_V_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{Message " << Message_depth << "}\n";
  total_list << "{PEControl " << PEControl_depth << "}\n";
  total_list << "{axisHBMin_V_data_V " << axisHBMin_V_data_V_depth << "}\n";
  total_list << "{axisHBMin_V_keep_V " << axisHBMin_V_keep_V_depth << "}\n";
  total_list << "{axisHBMin_V_strb_V " << axisHBMin_V_strb_V_depth << "}\n";
  total_list << "{axisHBMin_V_last_V " << axisHBMin_V_last_V_depth << "}\n";
  total_list << "{axisDDRin_V_data_V " << axisDDRin_V_data_V_depth << "}\n";
  total_list << "{axisDDRin_V_keep_V " << axisDDRin_V_keep_V_depth << "}\n";
  total_list << "{axisDDRin_V_strb_V " << axisDDRin_V_strb_V_depth << "}\n";
  total_list << "{axisDDRin_V_last_V " << axisDDRin_V_last_V_depth << "}\n";
  total_list << "{axisHBMout_V_data_V " << axisHBMout_V_data_V_depth << "}\n";
  total_list << "{axisHBMout_V_keep_V " << axisHBMout_V_keep_V_depth << "}\n";
  total_list << "{axisHBMout_V_strb_V " << axisHBMout_V_strb_V_depth << "}\n";
  total_list << "{axisHBMout_V_last_V " << axisHBMout_V_last_V_depth << "}\n";
  total_list << "{axisDDRout_V_data_V " << axisDDRout_V_data_V_depth << "}\n";
  total_list << "{axisDDRout_V_keep_V " << axisDDRout_V_keep_V_depth << "}\n";
  total_list << "{axisDDRout_V_strb_V " << axisDDRout_V_strb_V_depth << "}\n";
  total_list << "{axisDDRout_V_last_V " << axisDDRout_V_last_V_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int Message_depth;
    int PEControl_depth;
    int axisHBMin_V_data_V_depth;
    int axisHBMin_V_keep_V_depth;
    int axisHBMin_V_strb_V_depth;
    int axisHBMin_V_last_V_depth;
    int axisDDRin_V_data_V_depth;
    int axisDDRin_V_keep_V_depth;
    int axisDDRin_V_strb_V_depth;
    int axisDDRin_V_last_V_depth;
    int axisHBMout_V_data_V_depth;
    int axisHBMout_V_keep_V_depth;
    int axisHBMout_V_strb_V_depth;
    int axisHBMout_V_last_V_depth;
    int axisDDRout_V_data_V_depth;
    int axisDDRout_V_keep_V_depth;
    int axisDDRout_V_strb_V_depth;
    int axisDDRout_V_last_V_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s32__ { char data[32]; };
struct __cosim_s64__ { char data[64]; };
extern "C" void rtl_kernel_wizard_0_hw_stub_wrapper(long long, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_rtl_kernel_wizard_0_hw(long long __xlx_apatb_param_Message, int __xlx_apatb_param_PEControl, volatile void * __xlx_apatb_param_axisHBMin_V_data_V, volatile void * __xlx_apatb_param_axisHBMin_V_keep_V, volatile void * __xlx_apatb_param_axisHBMin_V_strb_V, volatile void * __xlx_apatb_param_axisHBMin_V_last_V, volatile void * __xlx_apatb_param_axisDDRin_V_data_V, volatile void * __xlx_apatb_param_axisDDRin_V_keep_V, volatile void * __xlx_apatb_param_axisDDRin_V_strb_V, volatile void * __xlx_apatb_param_axisDDRin_V_last_V, volatile void * __xlx_apatb_param_axisHBMout_V_data_V, volatile void * __xlx_apatb_param_axisHBMout_V_keep_V, volatile void * __xlx_apatb_param_axisHBMout_V_strb_V, volatile void * __xlx_apatb_param_axisHBMout_V_last_V, volatile void * __xlx_apatb_param_axisDDRout_V_data_V, volatile void * __xlx_apatb_param_axisDDRout_V_keep_V, volatile void * __xlx_apatb_param_axisDDRout_V_strb_V, volatile void * __xlx_apatb_param_axisDDRout_V_last_V) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_axisHBMin_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_axisHBMin_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_axisHBMin_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_axisHBMin_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMin_V_data_V)->read();
((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_keep_V)->read();
((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_axisHBMin_V_last_V)->read();
}
long __xlx_apatb_param_axisDDRin_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_axisDDRin_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_axisDDRin_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_axisDDRin_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRin_V_data_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_keep_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_axisDDRin_V_last_V)->read();
}
{unsigned xlx_stream_axisHBMout_size = 0;

          std::vector<sc_bv<256> > axisHBMout_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_axisHBMout_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > axisHBMout_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              axisHBMout_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "axisHBMout" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_axisHBMout_size=axisHBMout_V_data_V_pc_buffer.size();
axisHBMout_V_data_V_pc_buffer_Copy=axisHBMout_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<256> > axisHBMout_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_axisHBMout_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > axisHBMout_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              axisHBMout_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "axisHBMout" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_axisHBMout_size=axisHBMout_V_keep_V_pc_buffer.size();
axisHBMout_V_keep_V_pc_buffer_Copy=axisHBMout_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<256> > axisHBMout_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_axisHBMout_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > axisHBMout_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              axisHBMout_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "axisHBMout" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_axisHBMout_size=axisHBMout_V_strb_V_pc_buffer.size();
axisHBMout_V_strb_V_pc_buffer_Copy=axisHBMout_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<256> > axisHBMout_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_axisHBMout_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > axisHBMout_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              axisHBMout_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "axisHBMout" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_axisHBMout_size=axisHBMout_V_last_V_pc_buffer.size();
axisHBMout_V_last_V_pc_buffer_Copy=axisHBMout_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_axisHBMout_size; j != e; ++j) {
__cosim_s32__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*4+0] = axisHBMout_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*4+1] = axisHBMout_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*4+2] = axisHBMout_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*4+3] = axisHBMout_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMout_V_data_V)->write(xlx_stream_elt_data);
int xlx_stream_elt_keep;
((int*)&xlx_stream_elt_keep)[0] = axisHBMout_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_keep_V)->write(xlx_stream_elt_keep);
int xlx_stream_elt_strb;
((int*)&xlx_stream_elt_strb)[0] = axisHBMout_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = axisHBMout_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_axisHBMout_V_last_V)->write(xlx_stream_elt_last);
}}
{unsigned xlx_stream_axisDDRout_size = 0;

          std::vector<sc_bv<512> > axisDDRout_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_axisDDRout_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > axisDDRout_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              axisDDRout_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "axisDDRout" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_axisDDRout_size=axisDDRout_V_data_V_pc_buffer.size();
axisDDRout_V_data_V_pc_buffer_Copy=axisDDRout_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > axisDDRout_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_axisDDRout_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > axisDDRout_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              axisDDRout_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "axisDDRout" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_axisDDRout_size=axisDDRout_V_keep_V_pc_buffer.size();
axisDDRout_V_keep_V_pc_buffer_Copy=axisDDRout_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > axisDDRout_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_axisDDRout_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > axisDDRout_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              axisDDRout_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "axisDDRout" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_axisDDRout_size=axisDDRout_V_strb_V_pc_buffer.size();
axisDDRout_V_strb_V_pc_buffer_Copy=axisDDRout_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > axisDDRout_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_axisDDRout_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > axisDDRout_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              axisDDRout_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "axisDDRout" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_axisDDRout_size=axisDDRout_V_last_V_pc_buffer.size();
axisDDRout_V_last_V_pc_buffer_Copy=axisDDRout_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_axisDDRout_size; j != e; ++j) {
__cosim_s64__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*8+0] = axisDDRout_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+1] = axisDDRout_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+2] = axisDDRout_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+3] = axisDDRout_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+4] = axisDDRout_V_data_V_pc_buffer_Copy[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+5] = axisDDRout_V_data_V_pc_buffer_Copy[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+6] = axisDDRout_V_data_V_pc_buffer_Copy[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+7] = axisDDRout_V_data_V_pc_buffer_Copy[j].range(511,448).to_int64();
((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRout_V_data_V)->write(xlx_stream_elt_data);
long long xlx_stream_elt_keep;
((long long*)&xlx_stream_elt_keep)[0] = axisDDRout_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_keep_V)->write(xlx_stream_elt_keep);
long long xlx_stream_elt_strb;
((long long*)&xlx_stream_elt_strb)[0] = axisDDRout_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = axisDDRout_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_axisDDRout_V_last_V)->write(xlx_stream_elt_last);
}}

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_axisHBMin_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_axisHBMin_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_axisHBMin_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_axisHBMin_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_axisDDRin_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_axisDDRin_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_axisDDRin_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_axisDDRin_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_axisHBMout_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_axisHBMout_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_axisHBMout_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_axisHBMout_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_axisDDRout_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_axisDDRout_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_axisDDRout_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_axisDDRout_V_last_V);
CodeState = DUMP_INPUTS;
// data
std::vector<__cosim_s32__> __xlx_apatb_param_axisHBMin_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMin_V_data_V)->empty())
    __xlx_apatb_param_axisHBMin_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMin_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisHBMin_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMin_V_data_V)->write(__xlx_apatb_param_axisHBMin_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_axisHBMin_stream_buf_size = ((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMin_V_data_V)->size();
// keep
std::vector<int> __xlx_apatb_param_axisHBMin_V_keep_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_keep_V)->empty())
    __xlx_apatb_param_axisHBMin_V_keep_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisHBMin_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_keep_V)->write(__xlx_apatb_param_axisHBMin_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<int> __xlx_apatb_param_axisHBMin_V_strb_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_strb_V)->empty())
    __xlx_apatb_param_axisHBMin_V_strb_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisHBMin_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_strb_V)->write(__xlx_apatb_param_axisHBMin_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_axisHBMin_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_axisHBMin_V_last_V)->empty())
    __xlx_apatb_param_axisHBMin_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_axisHBMin_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisHBMin_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_axisHBMin_V_last_V)->write(__xlx_apatb_param_axisHBMin_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<__cosim_s64__> __xlx_apatb_param_axisDDRin_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRin_V_data_V)->empty())
    __xlx_apatb_param_axisDDRin_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRin_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisDDRin_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRin_V_data_V)->write(__xlx_apatb_param_axisDDRin_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_axisDDRin_stream_buf_size = ((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRin_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_axisDDRin_V_keep_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_keep_V)->empty())
    __xlx_apatb_param_axisDDRin_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisDDRin_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_keep_V)->write(__xlx_apatb_param_axisDDRin_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<long long> __xlx_apatb_param_axisDDRin_V_strb_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_strb_V)->empty())
    __xlx_apatb_param_axisDDRin_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisDDRin_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_strb_V)->write(__xlx_apatb_param_axisDDRin_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_axisDDRin_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_axisDDRin_V_last_V)->empty())
    __xlx_apatb_param_axisDDRin_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_axisDDRin_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisDDRin_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_axisDDRin_V_last_V)->write(__xlx_apatb_param_axisDDRin_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<__cosim_s32__> __xlx_apatb_param_axisHBMout_V_data_V_stream_buf;
long __xlx_apatb_param_axisHBMout_stream_buf_size = ((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMout_V_data_V)->size();
// keep
std::vector<int> __xlx_apatb_param_axisHBMout_V_keep_V_stream_buf;
// strb
std::vector<int> __xlx_apatb_param_axisHBMout_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_axisHBMout_V_last_V_stream_buf;
// id
// dest
// data
std::vector<__cosim_s64__> __xlx_apatb_param_axisDDRout_V_data_V_stream_buf;
long __xlx_apatb_param_axisDDRout_stream_buf_size = ((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRout_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_axisDDRout_V_keep_V_stream_buf;
// strb
std::vector<long long> __xlx_apatb_param_axisDDRout_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_axisDDRout_V_last_V_stream_buf;
// id
// dest
// print Message Transactions
{
aesl_fh.write(AUTOTB_TVIN_Message, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_Message;
aesl_fh.write(AUTOTB_TVIN_Message, formatData(pos, 64));
}
  tcl_file.set_num(1, &tcl_file.Message_depth);
aesl_fh.write(AUTOTB_TVIN_Message, end_str());
}

// print PEControl Transactions
{
aesl_fh.write(AUTOTB_TVIN_PEControl, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_PEControl;
aesl_fh.write(AUTOTB_TVIN_PEControl, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.PEControl_depth);
aesl_fh.write(AUTOTB_TVIN_PEControl, end_str());
}

CodeState = CALL_C_DUT;
rtl_kernel_wizard_0_hw_stub_wrapper(__xlx_apatb_param_Message, __xlx_apatb_param_PEControl, __xlx_apatb_param_axisHBMin_V_data_V, __xlx_apatb_param_axisHBMin_V_keep_V, __xlx_apatb_param_axisHBMin_V_strb_V, __xlx_apatb_param_axisHBMin_V_last_V, __xlx_apatb_param_axisDDRin_V_data_V, __xlx_apatb_param_axisDDRin_V_keep_V, __xlx_apatb_param_axisDDRin_V_strb_V, __xlx_apatb_param_axisDDRin_V_last_V, __xlx_apatb_param_axisHBMout_V_data_V, __xlx_apatb_param_axisHBMout_V_keep_V, __xlx_apatb_param_axisHBMout_V_strb_V, __xlx_apatb_param_axisHBMout_V_last_V, __xlx_apatb_param_axisDDRout_V_data_V, __xlx_apatb_param_axisDDRout_V_keep_V, __xlx_apatb_param_axisDDRout_V_strb_V, __xlx_apatb_param_axisDDRout_V_last_V);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_axisHBMin_stream_buf_final_size = __xlx_apatb_param_axisHBMin_stream_buf_size - ((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMin_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_last_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_axisHBMin_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_axisHBMin_V_data_V_stream_buf.data()+i), 256);
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisHBMin_V_keep_V_stream_buf.data()+i), 32);
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisHBMin_V_strb_V_stream_buf.data()+i), 32);
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisHBMin_V_last_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_last_V, s);
}
tcl_file.set_num(__xlx_apatb_param_axisHBMin_stream_buf_final_size, &tcl_file.axisHBMin_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisHBMin_stream_buf_final_size, &tcl_file.axisHBMin_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisHBMin_stream_buf_final_size, &tcl_file.axisHBMin_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisHBMin_stream_buf_final_size, &tcl_file.axisHBMin_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_axisHBMin_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_axisHBMin_stream_buf_final_size > 0) {
  long axisHBMin_V_data_V_stream_ingress_size = __xlx_apatb_param_axisHBMin_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_axisHBMin_stream_buf_final_size; j != e; j++) {
    axisHBMin_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long axisHBMin_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_axisHBMin_stream_buf_final_size > 0) {
  long axisHBMin_V_keep_V_stream_ingress_size = __xlx_apatb_param_axisHBMin_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_axisHBMin_stream_buf_final_size; j != e; j++) {
    axisHBMin_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long axisHBMin_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_axisHBMin_stream_buf_final_size > 0) {
  long axisHBMin_V_strb_V_stream_ingress_size = __xlx_apatb_param_axisHBMin_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_axisHBMin_stream_buf_final_size; j != e; j++) {
    axisHBMin_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long axisHBMin_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_axisHBMin_stream_buf_final_size > 0) {
  long axisHBMin_V_last_V_stream_ingress_size = __xlx_apatb_param_axisHBMin_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_axisHBMin_stream_buf_final_size; j != e; j++) {
    axisHBMin_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long axisHBMin_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisHBMin_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisHBMin_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisHBMin_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisHBMin_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisHBMin_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisHBMin_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisHBMin_V_last_V, end_str());
}
long __xlx_apatb_param_axisDDRin_stream_buf_final_size = __xlx_apatb_param_axisDDRin_stream_buf_size - ((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRin_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_last_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_axisDDRin_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_axisDDRin_V_data_V_stream_buf.data()+i), 512);
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisDDRin_V_keep_V_stream_buf.data()+i), 64);
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisDDRin_V_strb_V_stream_buf.data()+i), 64);
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisDDRin_V_last_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_last_V, s);
}
tcl_file.set_num(__xlx_apatb_param_axisDDRin_stream_buf_final_size, &tcl_file.axisDDRin_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisDDRin_stream_buf_final_size, &tcl_file.axisDDRin_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisDDRin_stream_buf_final_size, &tcl_file.axisDDRin_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisDDRin_stream_buf_final_size, &tcl_file.axisDDRin_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_axisDDRin_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_axisDDRin_stream_buf_final_size > 0) {
  long axisDDRin_V_data_V_stream_ingress_size = __xlx_apatb_param_axisDDRin_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_axisDDRin_stream_buf_final_size; j != e; j++) {
    axisDDRin_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long axisDDRin_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_axisDDRin_stream_buf_final_size > 0) {
  long axisDDRin_V_keep_V_stream_ingress_size = __xlx_apatb_param_axisDDRin_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_axisDDRin_stream_buf_final_size; j != e; j++) {
    axisDDRin_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long axisDDRin_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_axisDDRin_stream_buf_final_size > 0) {
  long axisDDRin_V_strb_V_stream_ingress_size = __xlx_apatb_param_axisDDRin_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_axisDDRin_stream_buf_final_size; j != e; j++) {
    axisDDRin_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long axisDDRin_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_axisDDRin_stream_buf_final_size > 0) {
  long axisDDRin_V_last_V_stream_ingress_size = __xlx_apatb_param_axisDDRin_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_axisDDRin_stream_buf_final_size; j != e; j++) {
    axisDDRin_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long axisDDRin_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", axisDDRin_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_axisDDRin_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisDDRin_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisDDRin_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisDDRin_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisDDRin_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_axisDDRin_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_axisHBMout_stream_buf_final_size = ((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMout_V_data_V)->size() - __xlx_apatb_param_axisHBMout_stream_buf_size;
{
  while (!((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMout_V_data_V)->empty())
    __xlx_apatb_param_axisHBMout_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMout_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisHBMout_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMout_V_data_V)->write(__xlx_apatb_param_axisHBMout_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_keep_V)->empty())
    __xlx_apatb_param_axisHBMout_V_keep_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisHBMout_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_keep_V)->write(__xlx_apatb_param_axisHBMout_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_strb_V)->empty())
    __xlx_apatb_param_axisHBMout_V_strb_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisHBMout_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_strb_V)->write(__xlx_apatb_param_axisHBMout_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_axisHBMout_V_last_V)->empty())
    __xlx_apatb_param_axisHBMout_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_axisHBMout_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisHBMout_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_axisHBMout_V_last_V)->write(__xlx_apatb_param_axisHBMout_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_last_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_axisHBMout_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_axisHBMout_V_data_V_stream_buf.data()+__xlx_apatb_param_axisHBMout_stream_buf_size+i), 256);
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisHBMout_V_keep_V_stream_buf.data()+__xlx_apatb_param_axisHBMout_stream_buf_size+i), 32);
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisHBMout_V_strb_V_stream_buf.data()+__xlx_apatb_param_axisHBMout_stream_buf_size+i), 32);
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisHBMout_V_last_V_stream_buf.data()+__xlx_apatb_param_axisHBMout_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_last_V, s);
}
tcl_file.set_num(__xlx_apatb_param_axisHBMout_stream_buf_final_size, &tcl_file.axisHBMout_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisHBMout_stream_buf_final_size, &tcl_file.axisHBMout_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisHBMout_stream_buf_final_size, &tcl_file.axisHBMout_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisHBMout_stream_buf_final_size, &tcl_file.axisHBMout_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_axisHBMout_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisHBMout_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisHBMout_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisHBMout_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisHBMout_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisHBMout_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_axisDDRout_stream_buf_final_size = ((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRout_V_data_V)->size() - __xlx_apatb_param_axisDDRout_stream_buf_size;
{
  while (!((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRout_V_data_V)->empty())
    __xlx_apatb_param_axisDDRout_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRout_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisDDRout_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRout_V_data_V)->write(__xlx_apatb_param_axisDDRout_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_keep_V)->empty())
    __xlx_apatb_param_axisDDRout_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisDDRout_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_keep_V)->write(__xlx_apatb_param_axisDDRout_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_strb_V)->empty())
    __xlx_apatb_param_axisDDRout_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisDDRout_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_strb_V)->write(__xlx_apatb_param_axisDDRout_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_axisDDRout_V_last_V)->empty())
    __xlx_apatb_param_axisDDRout_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_axisDDRout_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_axisDDRout_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_axisDDRout_V_last_V)->write(__xlx_apatb_param_axisDDRout_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_last_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_axisDDRout_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_axisDDRout_V_data_V_stream_buf.data()+__xlx_apatb_param_axisDDRout_stream_buf_size+i), 512);
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisDDRout_V_keep_V_stream_buf.data()+__xlx_apatb_param_axisDDRout_stream_buf_size+i), 64);
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisDDRout_V_strb_V_stream_buf.data()+__xlx_apatb_param_axisDDRout_stream_buf_size+i), 64);
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_axisDDRout_V_last_V_stream_buf.data()+__xlx_apatb_param_axisDDRout_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_last_V, s);
}
tcl_file.set_num(__xlx_apatb_param_axisDDRout_stream_buf_final_size, &tcl_file.axisDDRout_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisDDRout_stream_buf_final_size, &tcl_file.axisDDRout_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisDDRout_stream_buf_final_size, &tcl_file.axisDDRout_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_axisDDRout_stream_buf_final_size, &tcl_file.axisDDRout_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_axisDDRout_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisDDRout_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisDDRout_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisDDRout_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_axisDDRout_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_axisDDRout_V_last_V, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
