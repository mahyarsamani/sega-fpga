#ifndef _axi_stream_vip_
#define _axi_stream_vip_
#include <xtlm.h>
#include <utils/xtlm_axis_passthru_module.h>
#include "utils/xtlm_axis_target_stub.h"
#include "utils/xtlm_axis_initiator_stub.h"
#include "sim_ipc_axis_multi_intf.h"
#include <systemc>

class axi_stream_vip:public sc_module{
	public:
		axi_stream_vip(sc_core::sc_module_name module_name,xsc::common_cpp::properties model_param_props);
		virtual ~axi_stream_vip();
		SC_HAS_PROCESS(axi_stream_vip);
	xtlm::xtlm_axis_target_socket* S_TARGET_socket;
	xtlm::xtlm_axis_initiator_socket*  M_INITIATOR_socket;
  void trans_handler();
  sc_in<bool> aclk;
	sc_in<bool> aresetn;
	private:
  xtlm::xtlm_axis_initiator_socket_util* initiator_util_0;
  xtlm::xtlm_axis_target_socket_util* target_util_0;
  xtlm::xtlm_axis_initiator_socket_util* initiator_util_1;
  xtlm::xtlm_axis_target_socket_util* target_util_1;
  sim_ipc_axis_multi_intf *sim_ipc_multi_intf;

};

#endif

