// (c) Copyright(C) 2013 - 2021 by Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

#include "sim_ipc_axis_multi_intf.h"
#include "sim_ipc_axis_multi_intf_impl.h"

#define MAX_NUM_INTF 16

#define __socket_inst(var, role, idx, i) \
  if (var > i) { \
	  m_##role##_sockets[i] = new xtlm::xtlm_axis_##role##_socket(#idx "_AXIS_socket", 32); \
	  idx##_AXIS_##role##_socket = m_##role##_sockets[i];\
  } \
  else \
  	  idx##_AXIS_##role##_socket= nullptr;


sim_ipc_axis_multi_intf::sim_ipc_axis_multi_intf(
		sc_core::sc_module_name name, xsc::common_cpp::properties &properties) :
		sc_module(name)
{
	auto num_si = properties.getLongLong("C_NUM_SI");
	auto num_mi = properties.getLongLong("C_NUM_MI");

	m_target_sockets.resize(num_si, nullptr);
	m_initiator_sockets.resize(num_mi, nullptr);

	__socket_inst(num_si, target, S00, 0);
	__socket_inst(num_si, target, S01, 1)
	__socket_inst(num_si, target, S02, 2)
	__socket_inst(num_si, target, S03, 3)
	__socket_inst(num_si, target, S04, 4)
	__socket_inst(num_si, target, S05, 5)
	__socket_inst(num_si, target, S06, 6)
	__socket_inst(num_si, target, S07, 7)
	__socket_inst(num_si, target, S08, 8)
	__socket_inst(num_si, target, S09, 9)
	__socket_inst(num_si, target, S10, 10)
	__socket_inst(num_si, target, S11, 11)
	__socket_inst(num_si, target, S12, 12)
	__socket_inst(num_si, target, S13, 13)
	__socket_inst(num_si, target, S14, 14)
	__socket_inst(num_si, target, S15, 15)

	__socket_inst(num_mi, initiator, M00, 0)
	__socket_inst(num_mi, initiator, M01, 1)
	__socket_inst(num_mi, initiator, M02, 2)
	__socket_inst(num_mi, initiator, M03, 3)
	__socket_inst(num_mi, initiator, M04, 4)
	__socket_inst(num_mi, initiator, M05, 5)
	__socket_inst(num_mi, initiator, M06, 6)
	__socket_inst(num_mi, initiator, M07, 7)
	__socket_inst(num_mi, initiator, M08, 8)
	__socket_inst(num_mi, initiator, M09, 9)
	__socket_inst(num_mi, initiator, M10, 10)
	__socket_inst(num_mi, initiator, M11, 11)
	__socket_inst(num_mi, initiator, M12, 12)
	__socket_inst(num_mi, initiator, M13, 13)
	__socket_inst(num_mi, initiator, M14, 14)
	__socket_inst(num_mi, initiator, M15, 15)

	m_sim_ipc_multi_intf_impl = new xtlm::sim_ipc_axis_multi_intf_impl( "impl", properties);

	for(auto i = 0; i < num_mi ; i++)
		m_sim_ipc_multi_intf_impl->m_initiator_sockets.at(i).bind(*m_initiator_sockets[i]);
	for (auto i = 0; i < num_si; i++)
		m_target_sockets.at(i)->bind(m_sim_ipc_multi_intf_impl->m_target_sockets.at(i));
}

bool sim_ipc_axis_multi_intf::is_external_proc_connected() const
{
	return m_sim_ipc_multi_intf_impl->is_external_proc_connected();
}
