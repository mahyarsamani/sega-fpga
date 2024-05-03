// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
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
// 
// DO NOT MODIFY THIS FILE.


#include "axishbmout_vip_sc.h"

#include "axishbmout_vip.h"

#include "axi_stream_vip.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
axishbmout_vip::axishbmout_vip(const sc_core::sc_module_name& nm) : axishbmout_vip_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), s_axis_tlast("s_axis_tlast")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S_AXIS_transactor = NULL;
  mp_s_axis_tlast_converter = NULL;
  mp_s_axis_tready_converter = NULL;
  mp_s_axis_tvalid_converter = NULL;

  // initialize socket stubs

}

void axishbmout_vip::before_end_of_elaboration()
{
  // configure 'S_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("axishbmout_vip", "S_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIS' transactor parameters
    xsc::common_cpp::properties S_AXIS_transactor_param_props;
    S_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "32");
    S_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S_AXIS_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIS_transactor_param_props.addString("CLK_DOMAIN", "");
    S_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<32,1,1,1,1,1>("S_AXIS_transactor", S_AXIS_transactor_param_props);

    // S_AXIS' transactor ports

    mp_S_AXIS_transactor->TDATA(s_axis_tdata);
    mp_S_AXIS_transactor->TKEEP(s_axis_tkeep);
    mp_s_axis_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tlast_converter");
    mp_s_axis_tlast_converter->vector_in(s_axis_tlast);
    mp_s_axis_tlast_converter->scalar_out(m_s_axis_tlast_converter_signal);
    mp_S_AXIS_transactor->TLAST(m_s_axis_tlast_converter_signal);
    mp_s_axis_tready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axis_tready_converter");
    mp_s_axis_tready_converter->scalar_in(m_s_axis_tready_converter_signal);
    mp_s_axis_tready_converter->vector_out(s_axis_tready);
    mp_S_AXIS_transactor->TREADY(m_s_axis_tready_converter_signal);
    mp_s_axis_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tvalid_converter");
    mp_s_axis_tvalid_converter->vector_in(s_axis_tvalid);
    mp_s_axis_tvalid_converter->scalar_out(m_s_axis_tvalid_converter_signal);
    mp_S_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_signal);
    mp_S_AXIS_transactor->CLK(aclk);
    mp_S_AXIS_transactor->RST(aresetn);

    // S_AXIS' transactor sockets

    mp_impl->S_TARGET_socket->bind(*(mp_S_AXIS_transactor->socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
axishbmout_vip::axishbmout_vip(const sc_core::sc_module_name& nm) : axishbmout_vip_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), s_axis_tlast("s_axis_tlast")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S_AXIS_transactor = NULL;
  mp_s_axis_tlast_converter = NULL;
  mp_s_axis_tready_converter = NULL;
  mp_s_axis_tvalid_converter = NULL;

  // initialize socket stubs

}

void axishbmout_vip::before_end_of_elaboration()
{
  // configure 'S_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("axishbmout_vip", "S_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIS' transactor parameters
    xsc::common_cpp::properties S_AXIS_transactor_param_props;
    S_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "32");
    S_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S_AXIS_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIS_transactor_param_props.addString("CLK_DOMAIN", "");
    S_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<32,1,1,1,1,1>("S_AXIS_transactor", S_AXIS_transactor_param_props);

    // S_AXIS' transactor ports

    mp_S_AXIS_transactor->TDATA(s_axis_tdata);
    mp_S_AXIS_transactor->TKEEP(s_axis_tkeep);
    mp_s_axis_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tlast_converter");
    mp_s_axis_tlast_converter->vector_in(s_axis_tlast);
    mp_s_axis_tlast_converter->scalar_out(m_s_axis_tlast_converter_signal);
    mp_S_AXIS_transactor->TLAST(m_s_axis_tlast_converter_signal);
    mp_s_axis_tready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axis_tready_converter");
    mp_s_axis_tready_converter->scalar_in(m_s_axis_tready_converter_signal);
    mp_s_axis_tready_converter->vector_out(s_axis_tready);
    mp_S_AXIS_transactor->TREADY(m_s_axis_tready_converter_signal);
    mp_s_axis_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tvalid_converter");
    mp_s_axis_tvalid_converter->vector_in(s_axis_tvalid);
    mp_s_axis_tvalid_converter->scalar_out(m_s_axis_tvalid_converter_signal);
    mp_S_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_signal);
    mp_S_AXIS_transactor->CLK(aclk);
    mp_S_AXIS_transactor->RST(aresetn);

    // S_AXIS' transactor sockets

    mp_impl->S_TARGET_socket->bind(*(mp_S_AXIS_transactor->socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
axishbmout_vip::axishbmout_vip(const sc_core::sc_module_name& nm) : axishbmout_vip_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), s_axis_tlast("s_axis_tlast")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S_AXIS_transactor = NULL;
  mp_s_axis_tlast_converter = NULL;
  mp_s_axis_tready_converter = NULL;
  mp_s_axis_tvalid_converter = NULL;

  // initialize socket stubs

}

void axishbmout_vip::before_end_of_elaboration()
{
  // configure 'S_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("axishbmout_vip", "S_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIS' transactor parameters
    xsc::common_cpp::properties S_AXIS_transactor_param_props;
    S_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "32");
    S_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S_AXIS_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIS_transactor_param_props.addString("CLK_DOMAIN", "");
    S_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<32,1,1,1,1,1>("S_AXIS_transactor", S_AXIS_transactor_param_props);

    // S_AXIS' transactor ports

    mp_S_AXIS_transactor->TDATA(s_axis_tdata);
    mp_S_AXIS_transactor->TKEEP(s_axis_tkeep);
    mp_s_axis_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tlast_converter");
    mp_s_axis_tlast_converter->vector_in(s_axis_tlast);
    mp_s_axis_tlast_converter->scalar_out(m_s_axis_tlast_converter_signal);
    mp_S_AXIS_transactor->TLAST(m_s_axis_tlast_converter_signal);
    mp_s_axis_tready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axis_tready_converter");
    mp_s_axis_tready_converter->scalar_in(m_s_axis_tready_converter_signal);
    mp_s_axis_tready_converter->vector_out(s_axis_tready);
    mp_S_AXIS_transactor->TREADY(m_s_axis_tready_converter_signal);
    mp_s_axis_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tvalid_converter");
    mp_s_axis_tvalid_converter->vector_in(s_axis_tvalid);
    mp_s_axis_tvalid_converter->scalar_out(m_s_axis_tvalid_converter_signal);
    mp_S_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_signal);
    mp_S_AXIS_transactor->CLK(aclk);
    mp_S_AXIS_transactor->RST(aresetn);

    // S_AXIS' transactor sockets

    mp_impl->S_TARGET_socket->bind(*(mp_S_AXIS_transactor->socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
axishbmout_vip::axishbmout_vip(const sc_core::sc_module_name& nm) : axishbmout_vip_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), s_axis_tlast("s_axis_tlast")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S_AXIS_transactor = NULL;
  mp_s_axis_tlast_converter = NULL;
  mp_s_axis_tready_converter = NULL;
  mp_s_axis_tvalid_converter = NULL;

  // Instantiate Socket Stubs

  // configure S_AXIS_transactor
    xsc::common_cpp::properties S_AXIS_transactor_param_props;
    S_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "32");
    S_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S_AXIS_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIS_transactor_param_props.addString("CLK_DOMAIN", "");
    S_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<32,1,1,1,1,1>("S_AXIS_transactor", S_AXIS_transactor_param_props);
  mp_S_AXIS_transactor->TDATA(s_axis_tdata);
  mp_S_AXIS_transactor->TKEEP(s_axis_tkeep);
  mp_s_axis_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tlast_converter");
  mp_s_axis_tlast_converter->vector_in(s_axis_tlast);
  mp_s_axis_tlast_converter->scalar_out(m_s_axis_tlast_converter_signal);
  mp_S_AXIS_transactor->TLAST(m_s_axis_tlast_converter_signal);
  mp_s_axis_tready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axis_tready_converter");
  mp_s_axis_tready_converter->scalar_in(m_s_axis_tready_converter_signal);
  mp_s_axis_tready_converter->vector_out(s_axis_tready);
  mp_S_AXIS_transactor->TREADY(m_s_axis_tready_converter_signal);
  mp_s_axis_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tvalid_converter");
  mp_s_axis_tvalid_converter->vector_in(s_axis_tvalid);
  mp_s_axis_tvalid_converter->scalar_out(m_s_axis_tvalid_converter_signal);
  mp_S_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_signal);
  mp_S_AXIS_transactor->CLK(aclk);
  mp_S_AXIS_transactor->RST(aresetn);

  // initialize transactors stubs
  S_AXIS_transactor_target_socket_stub = nullptr;

}

void axishbmout_vip::before_end_of_elaboration()
{
  // configure 'S_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("axishbmout_vip", "S_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S_TARGET_socket->bind(*(mp_S_AXIS_transactor->socket));
  
  }
  else
  {
    S_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S_AXIS_transactor_target_socket_stub->bind(*(mp_S_AXIS_transactor->socket));
    mp_S_AXIS_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
axishbmout_vip::axishbmout_vip(const sc_core::sc_module_name& nm) : axishbmout_vip_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), s_axis_tlast("s_axis_tlast")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S_AXIS_transactor = NULL;
  mp_s_axis_tlast_converter = NULL;
  mp_s_axis_tready_converter = NULL;
  mp_s_axis_tvalid_converter = NULL;

  // Instantiate Socket Stubs

  // configure S_AXIS_transactor
    xsc::common_cpp::properties S_AXIS_transactor_param_props;
    S_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "32");
    S_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S_AXIS_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIS_transactor_param_props.addString("CLK_DOMAIN", "");
    S_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<32,1,1,1,1,1>("S_AXIS_transactor", S_AXIS_transactor_param_props);
  mp_S_AXIS_transactor->TDATA(s_axis_tdata);
  mp_S_AXIS_transactor->TKEEP(s_axis_tkeep);
  mp_s_axis_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tlast_converter");
  mp_s_axis_tlast_converter->vector_in(s_axis_tlast);
  mp_s_axis_tlast_converter->scalar_out(m_s_axis_tlast_converter_signal);
  mp_S_AXIS_transactor->TLAST(m_s_axis_tlast_converter_signal);
  mp_s_axis_tready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axis_tready_converter");
  mp_s_axis_tready_converter->scalar_in(m_s_axis_tready_converter_signal);
  mp_s_axis_tready_converter->vector_out(s_axis_tready);
  mp_S_AXIS_transactor->TREADY(m_s_axis_tready_converter_signal);
  mp_s_axis_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axis_tvalid_converter");
  mp_s_axis_tvalid_converter->vector_in(s_axis_tvalid);
  mp_s_axis_tvalid_converter->scalar_out(m_s_axis_tvalid_converter_signal);
  mp_S_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_signal);
  mp_S_AXIS_transactor->CLK(aclk);
  mp_S_AXIS_transactor->RST(aresetn);

  // initialize transactors stubs
  S_AXIS_transactor_target_socket_stub = nullptr;

}

void axishbmout_vip::before_end_of_elaboration()
{
  // configure 'S_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("axishbmout_vip", "S_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S_TARGET_socket->bind(*(mp_S_AXIS_transactor->socket));
  
  }
  else
  {
    S_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S_AXIS_transactor_target_socket_stub->bind(*(mp_S_AXIS_transactor->socket));
    mp_S_AXIS_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




axishbmout_vip::~axishbmout_vip()
{
  delete mp_S_AXIS_transactor;
  delete mp_s_axis_tlast_converter;
  delete mp_s_axis_tready_converter;
  delete mp_s_axis_tvalid_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(axishbmout_vip);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(axishbmout_vip);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(axishbmout_vip);
SC_REGISTER_BV(256);
#endif

