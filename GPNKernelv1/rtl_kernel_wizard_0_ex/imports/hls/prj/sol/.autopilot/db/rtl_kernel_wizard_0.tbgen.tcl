set moduleName rtl_kernel_wizard_0
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {rtl_kernel_wizard_0}
set C_modelType { void 0 }
set C_modelArgList {
	{ Message int 64 unused {axi_slave 0}  }
	{ PEControl int 32 unused {axi_slave 0}  }
	{ axisHBMin_V_data_V int 256 regular {axi_s 0 volatile  { axisHBMin Data } }  }
	{ axisHBMin_V_keep_V int 32 regular {axi_s 0 volatile  { axisHBMin Keep } }  }
	{ axisHBMin_V_strb_V int 32 regular {axi_s 0 volatile  { axisHBMin Strb } }  }
	{ axisHBMin_V_last_V int 1 regular {axi_s 0 volatile  { axisHBMin Last } }  }
	{ axisDDRin_V_data_V int 512 regular {axi_s 0 volatile  { axisDDRin Data } }  }
	{ axisDDRin_V_keep_V int 64 regular {axi_s 0 volatile  { axisDDRin Keep } }  }
	{ axisDDRin_V_strb_V int 64 regular {axi_s 0 volatile  { axisDDRin Strb } }  }
	{ axisDDRin_V_last_V int 1 regular {axi_s 0 volatile  { axisDDRin Last } }  }
	{ axisHBMout_V_data_V int 256 regular {axi_s 1 volatile  { axisHBMout Data } }  }
	{ axisHBMout_V_keep_V int 32 regular {axi_s 1 volatile  { axisHBMout Keep } }  }
	{ axisHBMout_V_strb_V int 32 regular {axi_s 1 volatile  { axisHBMout Strb } }  }
	{ axisHBMout_V_last_V int 1 regular {axi_s 1 volatile  { axisHBMout Last } }  }
	{ axisDDRout_V_data_V int 512 regular {axi_s 1 volatile  { axisDDRout Data } }  }
	{ axisDDRout_V_keep_V int 64 regular {axi_s 1 volatile  { axisDDRout Keep } }  }
	{ axisDDRout_V_strb_V int 64 regular {axi_s 1 volatile  { axisDDRout Strb } }  }
	{ axisDDRout_V_last_V int 1 regular {axi_s 1 volatile  { axisDDRout Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Message", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "PEControl", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":35}} , 
 	{ "Name" : "axisHBMin_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "axisHBMin_V_keep_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "axisHBMin_V_strb_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "axisHBMin_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axisDDRin_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "axisDDRin_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "axisDDRin_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "axisDDRin_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axisHBMout_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisHBMout_V_keep_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisHBMout_V_strb_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisHBMout_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisDDRout_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisDDRout_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisDDRout_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisDDRout_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ axisHBMin_TDATA sc_in sc_lv 256 signal 2 } 
	{ axisHBMin_TVALID sc_in sc_logic 1 invld 5 } 
	{ axisHBMin_TREADY sc_out sc_logic 1 inacc 5 } 
	{ axisHBMin_TKEEP sc_in sc_lv 32 signal 3 } 
	{ axisHBMin_TSTRB sc_in sc_lv 32 signal 4 } 
	{ axisHBMin_TLAST sc_in sc_lv 1 signal 5 } 
	{ axisDDRin_TDATA sc_in sc_lv 512 signal 6 } 
	{ axisDDRin_TVALID sc_in sc_logic 1 invld 9 } 
	{ axisDDRin_TREADY sc_out sc_logic 1 inacc 9 } 
	{ axisDDRin_TKEEP sc_in sc_lv 64 signal 7 } 
	{ axisDDRin_TSTRB sc_in sc_lv 64 signal 8 } 
	{ axisDDRin_TLAST sc_in sc_lv 1 signal 9 } 
	{ axisHBMout_TDATA sc_out sc_lv 256 signal 10 } 
	{ axisHBMout_TVALID sc_out sc_logic 1 outvld 13 } 
	{ axisHBMout_TREADY sc_in sc_logic 1 outacc 13 } 
	{ axisHBMout_TKEEP sc_out sc_lv 32 signal 11 } 
	{ axisHBMout_TSTRB sc_out sc_lv 32 signal 12 } 
	{ axisHBMout_TLAST sc_out sc_lv 1 signal 13 } 
	{ axisDDRout_TDATA sc_out sc_lv 512 signal 14 } 
	{ axisDDRout_TVALID sc_out sc_logic 1 outvld 17 } 
	{ axisDDRout_TREADY sc_in sc_logic 1 outacc 17 } 
	{ axisDDRout_TKEEP sc_out sc_lv 64 signal 15 } 
	{ axisDDRout_TSTRB sc_out sc_lv 64 signal 16 } 
	{ axisDDRout_TLAST sc_out sc_lv 1 signal 17 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"rtl_kernel_wizard_0","role":"start","value":"0","valid_bit":"0"},{"name":"rtl_kernel_wizard_0","role":"continue","value":"0","valid_bit":"4"},{"name":"rtl_kernel_wizard_0","role":"auto_start","value":"0","valid_bit":"7"},{"name":"Message","role":"data","value":"16"},{"name":"PEControl","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"rtl_kernel_wizard_0","role":"start","value":"0","valid_bit":"0"},{"name":"rtl_kernel_wizard_0","role":"done","value":"0","valid_bit":"1"},{"name":"rtl_kernel_wizard_0","role":"idle","value":"0","valid_bit":"2"},{"name":"rtl_kernel_wizard_0","role":"ready","value":"0","valid_bit":"3"},{"name":"rtl_kernel_wizard_0","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "axisHBMin_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "axisHBMin_V_data_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axisHBMin_V_last_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axisHBMin_V_last_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axisHBMin_V_keep_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axisHBMin_V_strb_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axisHBMin_V_last_V", "role": "default" }} , 
 	{ "name": "axisDDRin_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "axisDDRin_V_data_V", "role": "default" }} , 
 	{ "name": "axisDDRin_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axisDDRin_V_last_V", "role": "default" }} , 
 	{ "name": "axisDDRin_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axisDDRin_V_last_V", "role": "default" }} , 
 	{ "name": "axisDDRin_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "axisDDRin_V_keep_V", "role": "default" }} , 
 	{ "name": "axisDDRin_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "axisDDRin_V_strb_V", "role": "default" }} , 
 	{ "name": "axisDDRin_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axisDDRin_V_last_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "axisHBMout_V_data_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "axisHBMout_V_last_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "axisHBMout_V_last_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axisHBMout_V_keep_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axisHBMout_V_strb_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axisHBMout_V_last_V", "role": "default" }} , 
 	{ "name": "axisDDRout_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "axisDDRout_V_data_V", "role": "default" }} , 
 	{ "name": "axisDDRout_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "axisDDRout_V_last_V", "role": "default" }} , 
 	{ "name": "axisDDRout_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "axisDDRout_V_last_V", "role": "default" }} , 
 	{ "name": "axisDDRout_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "axisDDRout_V_keep_V", "role": "default" }} , 
 	{ "name": "axisDDRout_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "axisDDRout_V_strb_V", "role": "default" }} , 
 	{ "name": "axisDDRout_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axisDDRout_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "rtl_kernel_wizard_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Message", "Type" : "None", "Direction" : "I"},
			{"Name" : "PEControl", "Type" : "None", "Direction" : "I"},
			{"Name" : "axisHBMin_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74", "Port" : "axisHBMin_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "axisHBMin_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74", "Port" : "axisHBMin_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "axisHBMin_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74", "Port" : "axisHBMin_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "axisHBMin_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74", "Port" : "axisHBMin_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "axisDDRin_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94", "Port" : "axisDDRin_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "axisDDRin_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94", "Port" : "axisDDRin_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "axisDDRin_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94", "Port" : "axisDDRin_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "axisDDRin_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94", "Port" : "axisDDRin_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "axisHBMout_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74", "Port" : "axisHBMout_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "axisHBMout_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74", "Port" : "axisHBMout_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "axisHBMout_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74", "Port" : "axisHBMout_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "axisHBMout_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74", "Port" : "axisHBMout_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "axisDDRout_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94", "Port" : "axisDDRout_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "axisDDRout_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94", "Port" : "axisDDRout_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "axisDDRout_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94", "Port" : "axisDDRout_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "axisDDRout_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94", "Port" : "axisDDRout_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "axisHBMin_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "axisHBMin_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axisHBMin_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axisHBMin_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axisHBMin_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axisHBMout_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "axisHBMout_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axisHBMout_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "axisHBMout_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "axisHBMout_V_last_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_96_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "axisDDRin_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "axisDDRin_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axisDDRin_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axisDDRin_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axisDDRin_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axisDDRout_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "axisDDRout_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axisDDRout_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "axisDDRout_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "axisDDRout_V_last_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_96_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisHBMin_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisHBMin_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisHBMin_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisHBMin_V_last_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisDDRin_V_data_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisDDRin_V_keep_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisDDRin_V_strb_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisDDRin_V_last_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisHBMout_V_data_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisHBMout_V_keep_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisHBMout_V_strb_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisHBMout_V_last_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisDDRout_V_data_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisDDRout_V_keep_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisDDRout_V_strb_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_axisDDRout_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rtl_kernel_wizard_0 {
		Message {Type I LastRead -1 FirstWrite -1}
		PEControl {Type I LastRead -1 FirstWrite -1}
		axisHBMin_V_data_V {Type I LastRead 0 FirstWrite -1}
		axisHBMin_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axisHBMin_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axisHBMin_V_last_V {Type I LastRead 0 FirstWrite -1}
		axisDDRin_V_data_V {Type I LastRead 0 FirstWrite -1}
		axisDDRin_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axisDDRin_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axisDDRin_V_last_V {Type I LastRead 0 FirstWrite -1}
		axisHBMout_V_data_V {Type O LastRead -1 FirstWrite 0}
		axisHBMout_V_keep_V {Type O LastRead -1 FirstWrite 0}
		axisHBMout_V_strb_V {Type O LastRead -1 FirstWrite 0}
		axisHBMout_V_last_V {Type O LastRead -1 FirstWrite 0}
		axisDDRout_V_data_V {Type O LastRead -1 FirstWrite 0}
		axisDDRout_V_keep_V {Type O LastRead -1 FirstWrite 0}
		axisDDRout_V_strb_V {Type O LastRead -1 FirstWrite 0}
		axisDDRout_V_last_V {Type O LastRead -1 FirstWrite 0}}
	rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1 {
		axisHBMin_V_data_V {Type I LastRead 0 FirstWrite -1}
		axisHBMin_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axisHBMin_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axisHBMin_V_last_V {Type I LastRead 0 FirstWrite -1}
		axisHBMout_V_data_V {Type O LastRead -1 FirstWrite 0}
		axisHBMout_V_keep_V {Type O LastRead -1 FirstWrite 0}
		axisHBMout_V_strb_V {Type O LastRead -1 FirstWrite 0}
		axisHBMout_V_last_V {Type O LastRead -1 FirstWrite 0}}
	rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_11 {
		axisDDRin_V_data_V {Type I LastRead 0 FirstWrite -1}
		axisDDRin_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axisDDRin_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axisDDRin_V_last_V {Type I LastRead 0 FirstWrite -1}
		axisDDRout_V_data_V {Type O LastRead -1 FirstWrite 0}
		axisDDRout_V_keep_V {Type O LastRead -1 FirstWrite 0}
		axisDDRout_V_strb_V {Type O LastRead -1 FirstWrite 0}
		axisDDRout_V_last_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	axisHBMin_V_data_V { axis {  { axisHBMin_TDATA in_data 0 256 } } }
	axisHBMin_V_keep_V { axis {  { axisHBMin_TKEEP in_data 0 32 } } }
	axisHBMin_V_strb_V { axis {  { axisHBMin_TSTRB in_data 0 32 } } }
	axisHBMin_V_last_V { axis {  { axisHBMin_TVALID in_vld 0 1 }  { axisHBMin_TREADY in_acc 1 1 }  { axisHBMin_TLAST in_data 0 1 } } }
	axisDDRin_V_data_V { axis {  { axisDDRin_TDATA in_data 0 512 } } }
	axisDDRin_V_keep_V { axis {  { axisDDRin_TKEEP in_data 0 64 } } }
	axisDDRin_V_strb_V { axis {  { axisDDRin_TSTRB in_data 0 64 } } }
	axisDDRin_V_last_V { axis {  { axisDDRin_TVALID in_vld 0 1 }  { axisDDRin_TREADY in_acc 1 1 }  { axisDDRin_TLAST in_data 0 1 } } }
	axisHBMout_V_data_V { axis {  { axisHBMout_TDATA out_data 1 256 } } }
	axisHBMout_V_keep_V { axis {  { axisHBMout_TKEEP out_data 1 32 } } }
	axisHBMout_V_strb_V { axis {  { axisHBMout_TSTRB out_data 1 32 } } }
	axisHBMout_V_last_V { axis {  { axisHBMout_TVALID out_vld 1 1 }  { axisHBMout_TREADY out_acc 0 1 }  { axisHBMout_TLAST out_data 1 1 } } }
	axisDDRout_V_data_V { axis {  { axisDDRout_TDATA out_data 1 512 } } }
	axisDDRout_V_keep_V { axis {  { axisDDRout_TKEEP out_data 1 64 } } }
	axisDDRout_V_strb_V { axis {  { axisDDRout_TSTRB out_data 1 64 } } }
	axisDDRout_V_last_V { axis {  { axisDDRout_TVALID out_vld 1 1 }  { axisDDRout_TREADY out_acc 0 1 }  { axisDDRout_TLAST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
