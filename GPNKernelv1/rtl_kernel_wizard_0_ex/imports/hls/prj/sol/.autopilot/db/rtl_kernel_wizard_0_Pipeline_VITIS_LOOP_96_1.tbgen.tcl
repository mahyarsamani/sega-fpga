set moduleName rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ axisHBMin_V_data_V int 256 regular {axi_s 0 volatile  { axisHBMin Data } }  }
	{ axisHBMin_V_keep_V int 32 regular {axi_s 0 volatile  { axisHBMin Keep } }  }
	{ axisHBMin_V_strb_V int 32 regular {axi_s 0 volatile  { axisHBMin Strb } }  }
	{ axisHBMin_V_last_V int 1 regular {axi_s 0 volatile  { axisHBMin Last } }  }
	{ axisHBMout_V_data_V int 256 regular {axi_s 1 volatile  { axisHBMout Data } }  }
	{ axisHBMout_V_keep_V int 32 regular {axi_s 1 volatile  { axisHBMout Keep } }  }
	{ axisHBMout_V_strb_V int 32 regular {axi_s 1 volatile  { axisHBMout Strb } }  }
	{ axisHBMout_V_last_V int 1 regular {axi_s 1 volatile  { axisHBMout Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "axisHBMin_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "axisHBMin_V_keep_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "axisHBMin_V_strb_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "axisHBMin_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axisHBMout_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisHBMout_V_keep_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisHBMout_V_strb_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axisHBMout_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ axisHBMin_TVALID sc_in sc_logic 1 invld 0 } 
	{ axisHBMout_TREADY sc_in sc_logic 1 outacc 4 } 
	{ axisHBMin_TDATA sc_in sc_lv 256 signal 0 } 
	{ axisHBMin_TREADY sc_out sc_logic 1 inacc 3 } 
	{ axisHBMin_TKEEP sc_in sc_lv 32 signal 1 } 
	{ axisHBMin_TSTRB sc_in sc_lv 32 signal 2 } 
	{ axisHBMin_TLAST sc_in sc_lv 1 signal 3 } 
	{ axisHBMout_TDATA sc_out sc_lv 256 signal 4 } 
	{ axisHBMout_TVALID sc_out sc_logic 1 outvld 7 } 
	{ axisHBMout_TKEEP sc_out sc_lv 32 signal 5 } 
	{ axisHBMout_TSTRB sc_out sc_lv 32 signal 6 } 
	{ axisHBMout_TLAST sc_out sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "axisHBMin_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axisHBMin_V_data_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "axisHBMout_V_data_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "axisHBMin_V_data_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axisHBMin_V_last_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axisHBMin_V_keep_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axisHBMin_V_strb_V", "role": "default" }} , 
 	{ "name": "axisHBMin_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axisHBMin_V_last_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "axisHBMout_V_data_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "axisHBMout_V_last_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axisHBMout_V_keep_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axisHBMout_V_strb_V", "role": "default" }} , 
 	{ "name": "axisHBMout_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axisHBMout_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rtl_kernel_wizard_0_Pipeline_VITIS_LOOP_96_1 {
		axisHBMin_V_data_V {Type I LastRead 0 FirstWrite -1}
		axisHBMin_V_keep_V {Type I LastRead 0 FirstWrite -1}
		axisHBMin_V_strb_V {Type I LastRead 0 FirstWrite -1}
		axisHBMin_V_last_V {Type I LastRead 0 FirstWrite -1}
		axisHBMout_V_data_V {Type O LastRead -1 FirstWrite 0}
		axisHBMout_V_keep_V {Type O LastRead -1 FirstWrite 0}
		axisHBMout_V_strb_V {Type O LastRead -1 FirstWrite 0}
		axisHBMout_V_last_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	axisHBMin_V_data_V { axis {  { axisHBMin_TVALID in_vld 0 1 }  { axisHBMin_TDATA in_data 0 256 } } }
	axisHBMin_V_keep_V { axis {  { axisHBMin_TKEEP in_data 0 32 } } }
	axisHBMin_V_strb_V { axis {  { axisHBMin_TSTRB in_data 0 32 } } }
	axisHBMin_V_last_V { axis {  { axisHBMin_TREADY in_acc 1 1 }  { axisHBMin_TLAST in_data 0 1 } } }
	axisHBMout_V_data_V { axis {  { axisHBMout_TREADY out_acc 0 1 }  { axisHBMout_TDATA out_data 1 256 } } }
	axisHBMout_V_keep_V { axis {  { axisHBMout_TKEEP out_data 1 32 } } }
	axisHBMout_V_strb_V { axis {  { axisHBMout_TSTRB out_data 1 32 } } }
	axisHBMout_V_last_V { axis {  { axisHBMout_TVALID out_vld 1 1 }  { axisHBMout_TLAST out_data 1 1 } } }
}
