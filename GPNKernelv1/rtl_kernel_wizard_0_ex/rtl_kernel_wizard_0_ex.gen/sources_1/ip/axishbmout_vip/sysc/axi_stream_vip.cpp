#include "axi_stream_vip.h"
#include <sstream>

axi_stream_vip::axi_stream_vip(sc_core::sc_module_name module_name,xsc::common_cpp::properties model_param_props) :
	sc_module(module_name), S_TARGET_socket(nullptr), M_INITIATOR_socket(nullptr), sim_ipc_multi_intf(nullptr) {
    
    int int_type=model_param_props.getLongLong("C_AXI4STREAM_INTERFACE_MODE");
    int data_width=model_param_props.getLongLong("C_AXI4STREAM_DATA_WIDTH");
    if(int_type==1) {
       int NUM_MI=1;
       int NUM_SI=1;
       model_param_props.addLong("C_NUM_MI", std::to_string(NUM_MI));
       model_param_props.addLong("C_NUM_SI", std::to_string(NUM_SI));
       model_param_props.addLong("C_M00_AXIS_TDATA_WIDTH", std::to_string(data_width/8));
       model_param_props.addLong("C_S00_AXIS_TDATA_WIDTH", std::to_string(data_width/8));

		   M_INITIATOR_socket = new xtlm::xtlm_axis_initiator_socket("initiator_rd_socket",32);
	 	   S_TARGET_socket = new xtlm::xtlm_axis_target_socket("target_rd_socket",32);
       initiator_util_0 = new xtlm::xtlm_axis_initiator_socket_util("initiator_util_0",
			 xtlm::axis::TRANSACTION, 32);
       target_util_0 = new xtlm::xtlm_axis_target_socket_util("target_util_0",
			 xtlm::axis::TRANSACTION, 32);
	     //binding of sockets
	     S_TARGET_socket->bind(target_util_0->stream_socket);
       initiator_util_0->stream_socket.bind(*M_INITIATOR_socket);

       sim_ipc_multi_intf = new sim_ipc_axis_multi_intf(this->name(),
					model_param_props);
       sim_ipc_multi_intf->clk(aclk);
			 sim_ipc_multi_intf->aresetn(aresetn);


       initiator_util_1 = new xtlm::xtlm_axis_initiator_socket_util("initiator_util_1",
			 xtlm::axis::TRANSACTION, 32);
       target_util_1 = new xtlm::xtlm_axis_target_socket_util("target_util_1",
			 xtlm::axis::TRANSACTION, 32);
       sim_ipc_multi_intf->m_initiator_sockets[0]->bind(target_util_1->stream_socket);
       initiator_util_1->stream_socket.bind(*sim_ipc_multi_intf->m_target_sockets[0]);
       SC_METHOD(trans_handler);
	     sensitive << target_util_0->transaction_available;
       sensitive << initiator_util_1->transfer_done;
       sensitive << initiator_util_0->transfer_done;
       sensitive << target_util_1->transaction_available;
       dont_initialize();
 
    }
    if(int_type==0) {
       int NUM_MI=1;
       int NUM_SI=0;
       model_param_props.addLong("C_NUM_MI", std::to_string(NUM_MI));
       model_param_props.addLong("C_NUM_SI", std::to_string(NUM_SI));
       model_param_props.addLong("C_M00_AXIS_TDATA_WIDTH", std::to_string(data_width/8));
       model_param_props.addLong("C_S00_AXIS_TDATA_WIDTH", std::to_string(NUM_SI));

       M_INITIATOR_socket = new xtlm::xtlm_axis_initiator_socket("initiator_rd_socket",32);
       sim_ipc_multi_intf = new sim_ipc_axis_multi_intf(this->name(),
					model_param_props);
       sim_ipc_multi_intf->clk(aclk);
			 sim_ipc_multi_intf->aresetn(aresetn);
       sim_ipc_multi_intf->m_initiator_sockets[0]->bind(*M_INITIATOR_socket);

    }
    if(int_type==2) {
       int NUM_MI=0;
       int NUM_SI=1;
       model_param_props.addLong("C_NUM_MI", std::to_string(NUM_MI));
       model_param_props.addLong("C_NUM_SI", std::to_string(NUM_SI));
       model_param_props.addLong("C_M00_AXIS_TDATA_WIDTH", std::to_string(NUM_MI));
       model_param_props.addLong("C_S00_AXIS_TDATA_WIDTH", std::to_string(data_width/8));
       S_TARGET_socket = new xtlm::xtlm_axis_target_socket("target_rd_socket",32);
       sim_ipc_multi_intf = new sim_ipc_axis_multi_intf(this->name(),
					model_param_props);
       sim_ipc_multi_intf->clk(aclk);
			 sim_ipc_multi_intf->aresetn(aresetn);
       S_TARGET_socket->bind(*sim_ipc_multi_intf->m_target_sockets[0]);
    }
}

axi_stream_vip::~axi_stream_vip() {
	delete M_INITIATOR_socket;
	delete S_TARGET_socket;

}

void axi_stream_vip::trans_handler() {
    // Checking to see the ipc_connection is there
    bool ipc_connected = (sim_ipc_multi_intf->is_external_proc_connected());
    if(!ipc_connected) {
       // For no IPC connection Direct transfer from slave to master in passthrough mode
        if(initiator_util_0->is_transfer_done() && 
            target_util_0->is_transaction_available() )
      {
          auto m_trans = target_util_0->sample_transaction();
          sc_core::sc_time zero_delay = SC_ZERO_TIME;
          initiator_util_0->transport(m_trans,
				  zero_delay);
      } 
    } else {
       // For IPC connection Direct transfer from slave to IPC slave and then IPC master to master in passthrough mode
        if(initiator_util_1->is_transfer_done() && 
            target_util_0->is_transaction_available() )
       {
          auto m_trans = target_util_0->sample_transaction();
          sc_core::sc_time zero_delay = SC_ZERO_TIME;
          initiator_util_1->transport(m_trans,
	  		  zero_delay);

       }
       // For IPC connection Direct transfer from slave to IPC slave and then IPC master to master in passthrough mode
        if(initiator_util_0->is_transfer_done() && 
            target_util_1->is_transaction_available() )
        {
          auto m_trans = target_util_1->sample_transaction();
          sc_core::sc_time zero_delay = SC_ZERO_TIME;
          initiator_util_0->transport(m_trans,
	  		  zero_delay);
       }
    }
}
