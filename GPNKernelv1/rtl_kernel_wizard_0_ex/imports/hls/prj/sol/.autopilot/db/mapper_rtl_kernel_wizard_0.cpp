#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_axisHBMin_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisHBMin_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_axisHBMin_V_data_V.dat");
unsigned int ap_apatb_axisHBMin_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisHBMin_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_axisHBMin_V_keep_V.dat");
unsigned int ap_apatb_axisHBMin_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisHBMin_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_axisHBMin_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axisHBMin_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisHBMin_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_axisHBMin_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axisDDRin_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisDDRin_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_axisDDRin_V_data_V.dat");
unsigned int ap_apatb_axisDDRin_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisDDRin_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_axisDDRin_V_keep_V.dat");
unsigned int ap_apatb_axisDDRin_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisDDRin_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_axisDDRin_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axisDDRin_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisDDRin_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_axisDDRin_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axisHBMout_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisHBMout_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_axisHBMout_V_data_V.dat");
unsigned int ap_apatb_axisHBMout_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisHBMout_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_axisHBMout_V_keep_V.dat");
unsigned int ap_apatb_axisHBMout_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisHBMout_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_axisHBMout_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_axisHBMout_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisHBMout_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_axisHBMout_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_axisDDRout_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisDDRout_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_axisDDRout_V_data_V.dat");
unsigned int ap_apatb_axisDDRout_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisDDRout_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_axisDDRout_V_keep_V.dat");
unsigned int ap_apatb_axisDDRout_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisDDRout_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_axisDDRout_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_axisDDRout_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axisDDRout_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_axisDDRout_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
struct __cosim_s32__ { char data[32]; };
struct __cosim_s64__ { char data[64]; };
extern "C" void rtl_kernel_wizard_0(long long, int, volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , );
extern "C" void apatb_rtl_kernel_wizard_0_hw(long long __xlx_apatb_param_Message, int __xlx_apatb_param_PEControl, volatile void * __xlx_apatb_param_axisHBMin_V_data_V, volatile void * __xlx_apatb_param_axisHBMin_V_keep_V, volatile void * __xlx_apatb_param_axisHBMin_V_strb_V, volatile void * __xlx_apatb_param_axisHBMin_V_last_V, volatile void * __xlx_apatb_param_axisDDRin_V_data_V, volatile void * __xlx_apatb_param_axisDDRin_V_keep_V, volatile void * __xlx_apatb_param_axisDDRin_V_strb_V, volatile void * __xlx_apatb_param_axisDDRin_V_last_V, volatile void * __xlx_apatb_param_axisHBMout_V_data_V, volatile void * __xlx_apatb_param_axisHBMout_V_keep_V, volatile void * __xlx_apatb_param_axisHBMout_V_strb_V, volatile void * __xlx_apatb_param_axisHBMout_V_last_V, volatile void * __xlx_apatb_param_axisDDRout_V_data_V, volatile void * __xlx_apatb_param_axisDDRout_V_keep_V, volatile void * __xlx_apatb_param_axisDDRout_V_strb_V, volatile void * __xlx_apatb_param_axisDDRout_V_last_V) {
auto* saxisHBMin_V_data_V = bcsim::createStream((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMin_V_data_V);
auto* saxisHBMin_V_keep_V = bcsim::createStream((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_keep_V);
auto* saxisHBMin_V_strb_V = bcsim::createStream((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_strb_V);
auto* saxisHBMin_V_last_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_axisHBMin_V_last_V);
auto* saxisDDRin_V_data_V = bcsim::createStream((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRin_V_data_V);
auto* saxisDDRin_V_keep_V = bcsim::createStream((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_keep_V);
auto* saxisDDRin_V_strb_V = bcsim::createStream((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_strb_V);
auto* saxisDDRin_V_last_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_axisDDRin_V_last_V);
  //Create input buffer for axisHBMout_V_data_V
  ap_apatb_axisHBMout_V_data_V_cap_bc = __xlx_axisHBMout_V_data_V_V_size_Reader.read_size();
  __cosim_s32__* __xlx_axisHBMout_V_data_V_input_buffer= new __cosim_s32__[ap_apatb_axisHBMout_V_data_V_cap_bc];
auto* saxisHBMout_V_data_V = bcsim::createStream((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMout_V_data_V);
  //Create input buffer for axisHBMout_V_keep_V
  ap_apatb_axisHBMout_V_keep_V_cap_bc = __xlx_axisHBMout_V_keep_V_V_size_Reader.read_size();
  int* __xlx_axisHBMout_V_keep_V_input_buffer= new int[ap_apatb_axisHBMout_V_keep_V_cap_bc];
auto* saxisHBMout_V_keep_V = bcsim::createStream((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_keep_V);
  //Create input buffer for axisHBMout_V_strb_V
  ap_apatb_axisHBMout_V_strb_V_cap_bc = __xlx_axisHBMout_V_strb_V_V_size_Reader.read_size();
  int* __xlx_axisHBMout_V_strb_V_input_buffer= new int[ap_apatb_axisHBMout_V_strb_V_cap_bc];
auto* saxisHBMout_V_strb_V = bcsim::createStream((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_strb_V);
  //Create input buffer for axisHBMout_V_last_V
  ap_apatb_axisHBMout_V_last_V_cap_bc = __xlx_axisHBMout_V_last_V_V_size_Reader.read_size();
  char* __xlx_axisHBMout_V_last_V_input_buffer= new char[ap_apatb_axisHBMout_V_last_V_cap_bc];
auto* saxisHBMout_V_last_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_axisHBMout_V_last_V);
  //Create input buffer for axisDDRout_V_data_V
  ap_apatb_axisDDRout_V_data_V_cap_bc = __xlx_axisDDRout_V_data_V_V_size_Reader.read_size();
  __cosim_s64__* __xlx_axisDDRout_V_data_V_input_buffer= new __cosim_s64__[ap_apatb_axisDDRout_V_data_V_cap_bc];
auto* saxisDDRout_V_data_V = bcsim::createStream((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRout_V_data_V);
  //Create input buffer for axisDDRout_V_keep_V
  ap_apatb_axisDDRout_V_keep_V_cap_bc = __xlx_axisDDRout_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_axisDDRout_V_keep_V_input_buffer= new long long[ap_apatb_axisDDRout_V_keep_V_cap_bc];
auto* saxisDDRout_V_keep_V = bcsim::createStream((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_keep_V);
  //Create input buffer for axisDDRout_V_strb_V
  ap_apatb_axisDDRout_V_strb_V_cap_bc = __xlx_axisDDRout_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_axisDDRout_V_strb_V_input_buffer= new long long[ap_apatb_axisDDRout_V_strb_V_cap_bc];
auto* saxisDDRout_V_strb_V = bcsim::createStream((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_strb_V);
  //Create input buffer for axisDDRout_V_last_V
  ap_apatb_axisDDRout_V_last_V_cap_bc = __xlx_axisDDRout_V_last_V_V_size_Reader.read_size();
  char* __xlx_axisDDRout_V_last_V_input_buffer= new char[ap_apatb_axisDDRout_V_last_V_cap_bc];
auto* saxisDDRout_V_last_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_axisDDRout_V_last_V);
  // DUT call
  rtl_kernel_wizard_0(__xlx_apatb_param_Message, __xlx_apatb_param_PEControl, saxisHBMin_V_data_V->data<__cosim_s32__>(), saxisHBMin_V_keep_V->data<int>(), saxisHBMin_V_strb_V->data<int>(), saxisHBMin_V_last_V->data<char>(), saxisDDRin_V_data_V->data<__cosim_s64__>(), saxisDDRin_V_keep_V->data<long long>(), saxisDDRin_V_strb_V->data<long long>(), saxisDDRin_V_last_V->data<char>(), saxisHBMout_V_data_V->data<__cosim_s32__>(), saxisHBMout_V_keep_V->data<int>(), saxisHBMout_V_strb_V->data<int>(), saxisHBMout_V_last_V->data<char>(), saxisDDRout_V_data_V->data<__cosim_s64__>(), saxisDDRout_V_keep_V->data<long long>(), saxisDDRout_V_strb_V->data<long long>(), saxisDDRout_V_last_V->data<char>());
saxisHBMin_V_data_V->transfer((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMin_V_data_V);
saxisHBMin_V_keep_V->transfer((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_keep_V);
saxisHBMin_V_strb_V->transfer((hls::stream<int>*)__xlx_apatb_param_axisHBMin_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxisHBMin_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axisHBMin_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxisDDRin_V_data_V->transfer((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRin_V_data_V);
saxisDDRin_V_keep_V->transfer((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_keep_V);
saxisDDRin_V_strb_V->transfer((hls::stream<long long>*)__xlx_apatb_param_axisDDRin_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxisDDRin_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axisDDRin_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxisHBMout_V_data_V->transfer((hls::stream<__cosim_s32__>*)__xlx_apatb_param_axisHBMout_V_data_V);
saxisHBMout_V_keep_V->transfer((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_keep_V);
saxisHBMout_V_strb_V->transfer((hls::stream<int>*)__xlx_apatb_param_axisHBMout_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxisHBMout_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axisHBMout_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxisDDRout_V_data_V->transfer((hls::stream<__cosim_s64__>*)__xlx_apatb_param_axisDDRout_V_data_V);
saxisDDRout_V_keep_V->transfer((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_keep_V);
saxisDDRout_V_strb_V->transfer((hls::stream<long long>*)__xlx_apatb_param_axisDDRout_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxisDDRout_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axisDDRout_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
}
