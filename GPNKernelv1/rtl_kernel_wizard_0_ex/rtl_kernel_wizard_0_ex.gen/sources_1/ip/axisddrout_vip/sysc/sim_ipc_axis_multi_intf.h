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

#pragma once

#include <systemc>
#include "xtlm.h"
#include <vector>


#define si_socket(idx) \
        xtlm::xtlm_axis_target_socket* S##idx##_AXIS_target_socket;

#define mi_socket(idx) \
        xtlm::xtlm_axis_initiator_socket* M##idx##_AXIS_initiator_socket;

//Forward declaration of implementation
namespace xtlm {
class sim_ipc_axis_multi_intf_impl;
}

class sim_ipc_axis_multi_intf  : public sc_core::sc_module
{

public:
	SC_HAS_PROCESS(sim_ipc_axis_multi_intf);

	sim_ipc_axis_multi_intf(sc_core::sc_module_name name,
			xsc::common_cpp::properties &properties);

    si_socket(00)
    si_socket(01)
    si_socket(02)
    si_socket(03)
    si_socket(04)
    si_socket(05)
    si_socket(06)
    si_socket(07)
    si_socket(08)
    si_socket(09)
    si_socket(10)
    si_socket(11)
    si_socket(12)
    si_socket(13)
    si_socket(14)
    si_socket(15)

    mi_socket(00)
    mi_socket(01)
    mi_socket(02)
    mi_socket(03)
    mi_socket(04)
    mi_socket(05)
    mi_socket(06)
    mi_socket(07)
    mi_socket(08)
    mi_socket(09)
    mi_socket(10)
    mi_socket(11)
    mi_socket(12)
    mi_socket(13)
    mi_socket(14)
    mi_socket(15)

	sc_core::sc_in<bool> clk;
    sc_core::sc_in<bool> aresetn;

	//!< Function to check if external proc is connected or not
	bool is_external_proc_connected() const;
    std::vector<xtlm::xtlm_axis_target_socket*  > m_target_sockets;
    std::vector<xtlm::xtlm_axis_initiator_socket* > m_initiator_sockets;
private:

    xtlm::sim_ipc_axis_multi_intf_impl* m_sim_ipc_multi_intf_impl;

};

