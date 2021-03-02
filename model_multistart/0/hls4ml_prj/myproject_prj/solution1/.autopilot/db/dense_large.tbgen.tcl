set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 16 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_264"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U64", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U65", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 16 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_264"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U64", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U65", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 16 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_264"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U64", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U65", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 16 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_264"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U64", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U65", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 16 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_264"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U64", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U65", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 11 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10124", "EstimateLatencyMax" : "27344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "res_V"}]},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "b17_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "8", "9"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10123", "EstimateLatencyMax" : "27343",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_266"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.b17_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.outidx_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.w17_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.acc_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_266", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_266.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_mul_mul_13ns_11ns_24_1_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10124", "Max" : "27344"}
	, {"Name" : "Interval", "Min" : "10124", "Max" : "27344"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 13 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 13, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 13 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_254"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_254", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_254.myproject_mul_mul_13s_13s_26_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U66", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U67", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 13 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 9 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 10 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 9 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 10 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9704", "EstimateLatencyMax" : "26084",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "res_V"}]},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "b17_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9703", "EstimateLatencyMax" : "26083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_268"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.b17_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.outidx_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.w17_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.acc_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_268", "Parent" : "1",
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_urem_11ns_10ns_11_15_seq_1_U68", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_mul_mul_13ns_11ns_24_1_1_U69", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9704", "Max" : "26084"}
	, {"Name" : "Interval", "Min" : "9704", "Max" : "26084"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 9 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 10 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 11 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10124", "EstimateLatencyMax" : "27344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "res_V"}]},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "b17_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "8", "9"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10123", "EstimateLatencyMax" : "27343",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_266"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.b17_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.outidx_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.w17_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.acc_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_266", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_266.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_mul_mul_13ns_11ns_24_1_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10124", "Max" : "27344"}
	, {"Name" : "Interval", "Min" : "10124", "Max" : "27344"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 11 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_254"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_254", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_254.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U66", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U67", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 17 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 18 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 17 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 18 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10124", "EstimateLatencyMax" : "27344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "res_V"}]},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "b17_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "8", "9"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10123", "EstimateLatencyMax" : "27343",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.b17_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.outidx_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.w17_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.acc_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_270", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_270.myproject_mul_mul_18s_18s_36_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_mul_mul_11ns_13ns_24_1_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10124", "Max" : "27344"}
	, {"Name" : "Interval", "Min" : "10124", "Max" : "27344"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 17 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 18 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 1 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ res_V_address0 sc_out sc_lv 4 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4", "Port" : "res_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_4", "Parent" : "0",
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		res_V {Type O LastRead -1 FirstWrite 2}}
	dense_large_rf_gt_ni_2 {
		res_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "23", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 12 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10124", "EstimateLatencyMax" : "27344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "res_V"}]},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "b17_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "8", "9"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10123", "EstimateLatencyMax" : "27343",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.b17_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.outidx_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.w17_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.acc_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_270", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_270.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_mul_mul_11ns_13ns_24_1_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10124", "Max" : "27344"}
	, {"Name" : "Interval", "Min" : "10124", "Max" : "27344"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 12 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_1_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 15 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 15 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10124", "EstimateLatencyMax" : "27344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "res_V"}]},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "b17_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "8", "9"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10123", "EstimateLatencyMax" : "27343",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_268"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.b17_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.outidx_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.w17_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.acc_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_268", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_268.myproject_mul_mul_15s_15s_30_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_mul_mul_11ns_13ns_24_1_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10124", "Max" : "27344"}
	, {"Name" : "Interval", "Min" : "10124", "Max" : "27344"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 15 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 13 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 13, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 13 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10124", "EstimateLatencyMax" : "27344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "res_V"}]},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "b17_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "8", "9"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10123", "EstimateLatencyMax" : "27343",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_266"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.b17_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.outidx_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.w17_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.acc_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_266", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_266.myproject_mul_mul_13s_13s_26_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_urem_11ns_10ns_11_15_seq_1_U72", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_mul_mul_13ns_11ns_24_1_1_U73", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10124", "Max" : "27344"}
	, {"Name" : "Interval", "Min" : "10124", "Max" : "27344"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 13 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 11 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10124", "EstimateLatencyMax" : "27344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "res_V"}]},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "b17_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "8", "9"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10123", "EstimateLatencyMax" : "27343",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_266"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.b17_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.outidx_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.w17_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.acc_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_266", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_266.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_mul_mul_13ns_11ns_24_1_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10124", "Max" : "27344"}
	, {"Name" : "Interval", "Min" : "10124", "Max" : "27344"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 12 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10124", "EstimateLatencyMax" : "27344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "res_V"}]},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "b17_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_12", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "8", "9"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10123", "EstimateLatencyMax" : "27343",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.b17_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.outidx_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.w17_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.acc_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_270", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.grp_product_fu_270.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_12.myproject_mul_mul_11ns_13ns_24_1_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b17_V {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10124", "Max" : "27344"}
	, {"Name" : "Interval", "Min" : "10124", "Max" : "27344"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 1 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ res_V_address0 sc_out sc_lv 4 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4", "Port" : "res_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_4", "Parent" : "0",
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		res_V {Type O LastRead -1 FirstWrite 2}}
	dense_large_rf_gt_ni_2 {
		res_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "23", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 1 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ res_V_address0 sc_out sc_lv 4 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4", "Port" : "res_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_4", "Parent" : "0",
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		res_V {Type O LastRead -1 FirstWrite 2}}
	dense_large_rf_gt_ni_2 {
		res_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "23", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 17 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 18 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 17 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 18 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258.myproject_mul_mul_18s_18s_36_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U66", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_1_1_U67", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 17 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 18 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 1 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ res_V_address0 sc_out sc_lv 4 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4", "Port" : "res_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_4", "Parent" : "0",
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		res_V {Type O LastRead -1 FirstWrite 2}}
	dense_large_rf_gt_ni_2 {
		res_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "23", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 16 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_264"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_264.myproject_mul_mul_16s_16s_32_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U68", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U69", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 12 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U68", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_1_1_U69", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 12 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U66", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_1_1_U67", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 15 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 15 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_256"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_256", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_256.myproject_mul_mul_15s_15s_30_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U66", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_1_1_U67", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 15 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 1 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ res_V_address0 sc_out sc_lv 4 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4", "Port" : "res_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_4", "Parent" : "0",
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		res_V {Type O LastRead -1 FirstWrite 2}}
	dense_large_rf_gt_ni_2 {
		res_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "23", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 15 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 15 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_256"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_256", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_256.myproject_mul_mul_15s_15s_30_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U66", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_1_1_U67", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 15 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 1 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ res_V_address0 sc_out sc_lv 4 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4", "Port" : "res_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_4", "Parent" : "0",
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		res_V {Type O LastRead -1 FirstWrite 2}}
	dense_large_rf_gt_ni_2 {
		res_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "23", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 15 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 15 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_256"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_256", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_256.myproject_mul_mul_15s_15s_30_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U61", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_1_1_U62", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 15 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 13 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 14 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 13 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 14 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_260"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_260", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_260.myproject_mul_mul_14s_14s_28_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U66", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_1_1_U67", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 13 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 14 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 17 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 18 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 17 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 18 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_258.myproject_mul_mul_18s_18s_36_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U66", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_1_1_U67", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 17 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 18 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 9 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 10 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 9 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 10 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9694", "EstimateLatencyMax" : "26074",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9693", "EstimateLatencyMax" : "26073",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_256"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_256", "Parent" : "1",
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U64", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U65", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9694", "Max" : "26074"}
	, {"Name" : "Interval", "Min" : "9694", "Max" : "26074"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 9 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 10 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 11 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10114", "EstimateLatencyMax" : "27334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10113", "EstimateLatencyMax" : "27333",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_254"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_254", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_254.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U66", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_1_1_U67", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10114", "Max" : "27334"}
	, {"Name" : "Interval", "Min" : "10114", "Max" : "27334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 1 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ res_V_address0 sc_out sc_lv 4 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_4", "Port" : "res_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_4", "Parent" : "0",
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		res_V {Type O LastRead -1 FirstWrite 2}}
	dense_large_rf_gt_ni_2 {
		res_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "23", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 12 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13064", "EstimateLatencyMax" : "33224",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13063", "EstimateLatencyMax" : "33223",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_257"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_257", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_257.myproject_mul_mul_12s_12s_24_3_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U68", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_3_1_U69", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13064", "Max" : "33224"}
	, {"Name" : "Interval", "Min" : "13064", "Max" : "33224"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 17 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 18 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 17 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 18 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13484", "EstimateLatencyMax" : "34484",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13483", "EstimateLatencyMax" : "34483",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_257"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_257", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_257.myproject_mul_mul_18s_18s_36_3_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_3_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13484", "Max" : "34484"}
	, {"Name" : "Interval", "Min" : "13484", "Max" : "34484"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 17 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 18 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 13 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 14 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 13 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 14 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13064", "EstimateLatencyMax" : "33224",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13063", "EstimateLatencyMax" : "33223",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_259"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_259", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_259.myproject_mul_mul_14s_14s_28_3_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U61", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_3_1_U62", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13064", "Max" : "33224"}
	, {"Name" : "Interval", "Min" : "13064", "Max" : "33224"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 13 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 14 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 16 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14324", "EstimateLatencyMax" : "37004",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8", "9"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14323", "EstimateLatencyMax" : "37003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_263"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_263", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_263.myproject_mul_mul_16s_16s_32_3_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U73", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_lshr_32ns_6ns_32_2_1_U74", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_13ns_11ns_24_3_1_U75", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14324", "Max" : "37004"}
	, {"Name" : "Interval", "Min" : "14324", "Max" : "37004"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName dense_large
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dense_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 13 regular {array 84 { 1 3 } 1 1 }  }
	{ res_V int 14 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 7 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 13 signal 0 } 
	{ res_V_address0 sc_out sc_lv 4 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 14 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13064", "EstimateLatencyMax" : "33224",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "res_V"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "outidx"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_large_rf_gt_ni_2_fu_10", "Port" : "w17_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13063", "EstimateLatencyMax" : "33223",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_259"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.outidx_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.w17_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.acc_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_259", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.grp_product_fu_259.myproject_mul_mul_14s_14s_28_3_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_urem_11ns_10ns_11_15_seq_1_U70", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_2_fu_10.myproject_mul_mul_11ns_13ns_24_3_1_U71", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dense_large {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_2 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx {Type I LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13064", "Max" : "33224"}
	, {"Name" : "Interval", "Min" : "13064", "Max" : "33224"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 7 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 13 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 4 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 14 } } }
}
