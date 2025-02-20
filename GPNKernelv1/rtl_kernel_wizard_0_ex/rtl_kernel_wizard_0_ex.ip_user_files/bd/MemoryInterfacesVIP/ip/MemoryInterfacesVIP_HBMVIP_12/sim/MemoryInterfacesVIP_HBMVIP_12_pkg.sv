///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package MemoryInterfacesVIP_HBMVIP_12_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_PROTOCOL           = 0;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_READ_WRITE_MODE    = "READ_WRITE";
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_INTERFACE_MODE     = 2;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_ADDR_WIDTH         = 33;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_DATA_WIDTH         = 256;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_ID_WIDTH           = 6;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_AWUSER_WIDTH       = 0;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_ARUSER_WIDTH       = 0;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_RUSER_WIDTH        = 0;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_WUSER_WIDTH        = 0;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_BUSER_WIDTH        = 0;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_SUPPORTS_NARROW    = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_BURST          = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_LOCK           = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_CACHE          = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_REGION         = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_QOS            = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_PROT           = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_WSTRB          = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_BRESP          = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_RRESP          = 1;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_ACLKEN         = 0;
      parameter MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_ARESETN        = 1;
///////////////////////////////////////////////////////////////////////////


typedef axi_slv_agent #(MemoryInterfacesVIP_HBMVIP_12_VIP_PROTOCOL, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_ADDR_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_DATA_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_DATA_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_ID_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_ID_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_AWUSER_WIDTH, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_WUSER_WIDTH, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_BUSER_WIDTH, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_ARUSER_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_RUSER_WIDTH, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_SUPPORTS_NARROW, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_BURST,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_LOCK,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_CACHE,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_REGION,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_PROT,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_QOS,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_WSTRB,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_BRESP,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_RRESP,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_ARESETN) MemoryInterfacesVIP_HBMVIP_12_slv_t;

typedef axi_slv_mem_agent #(MemoryInterfacesVIP_HBMVIP_12_VIP_PROTOCOL, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_ADDR_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_DATA_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_DATA_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_ID_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_ID_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_AWUSER_WIDTH, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_WUSER_WIDTH, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_BUSER_WIDTH, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_ARUSER_WIDTH,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_RUSER_WIDTH, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_SUPPORTS_NARROW, 
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_BURST,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_LOCK,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_CACHE,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_REGION,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_PROT,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_QOS,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_WSTRB,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_BRESP,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_RRESP,
                        MemoryInterfacesVIP_HBMVIP_12_VIP_HAS_ARESETN) MemoryInterfacesVIP_HBMVIP_12_slv_mem_t;
                        
      
///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      MemoryInterfacesVIP_HBMVIP_12_slv_t  MemoryInterfacesVIP_HBMVIP_12_slv;
//      initial begin : START_MemoryInterfacesVIP_HBMVIP_12_SLAVE
//        MemoryInterfacesVIP_HBMVIP_12_slv = new("MemoryInterfacesVIP_HBMVIP_12_slv", `MemoryInterfacesVIP_HBMVIP_12_PATH_TO_INTERFACE);
//        MemoryInterfacesVIP_HBMVIP_12_slv.start_slave();
//      end

endpackage : MemoryInterfacesVIP_HBMVIP_12_pkg
