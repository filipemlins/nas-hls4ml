set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 16 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ res_V_address0 sc_out sc_lv 13 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 16 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "599692", "EstimateLatencyMax" : "1299404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_143"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_143", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "599692", "Max" : "1299404"}
	, {"Name" : "Interval", "Min" : "599692", "Max" : "1299404"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 16 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ res_V_address0 sc_out sc_lv 13 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 16 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "599692", "EstimateLatencyMax" : "1299404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_143"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_143", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "599692", "Max" : "1299404"}
	, {"Name" : "Interval", "Min" : "599692", "Max" : "1299404"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 16 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ res_V_address0 sc_out sc_lv 13 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 16 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "599692", "EstimateLatencyMax" : "1299404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_143"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_143", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "599692", "Max" : "1299404"}
	, {"Name" : "Interval", "Min" : "599692", "Max" : "1299404"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 16 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ res_V_address0 sc_out sc_lv 13 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 16 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "599692", "EstimateLatencyMax" : "1299404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_143"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_143", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "599692", "Max" : "1299404"}
	, {"Name" : "Interval", "Min" : "599692", "Max" : "1299404"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_V int 16 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ res_V_address0 sc_out sc_lv 13 signal 0 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_V_we0 sc_out sc_logic 1 signal 0 } 
	{ res_V_d0 sc_out sc_lv 16 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "599692", "EstimateLatencyMax" : "1299404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_143"}],
		"Port" : [
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_133", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_133.grp_product_fu_270.myproject_mul_mul_16s_16s_32_1_1_U6", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_143", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "599692", "Max" : "1299404"}
	, {"Name" : "Interval", "Min" : "599692", "Max" : "1299404"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619876", "EstimateLatencyMax" : "1319588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "675", "EstimateLatencyMax" : "1507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx7_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619876", "Max" : "1319588"}
	, {"Name" : "Interval", "Min" : "619876", "Max" : "1319588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 13 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 13 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 13 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258.myproject_mul_mul_13s_13s_26_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 13 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 13 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 10 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "566052", "EstimateLatencyMax" : "1158116",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "611", "EstimateLatencyMax" : "1315",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_272"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx7_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_272", "Parent" : "3",
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
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "566052", "Max" : "1158116"}
	, {"Name" : "Interval", "Min" : "566052", "Max" : "1158116"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 10 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619876", "EstimateLatencyMax" : "1319588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "675", "EstimateLatencyMax" : "1507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx7_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619876", "Max" : "1319588"}
	, {"Name" : "Interval", "Min" : "619876", "Max" : "1319588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 18 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 18 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 18 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619876", "EstimateLatencyMax" : "1319588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "675", "EstimateLatencyMax" : "1507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_272"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx7_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_272", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_272.myproject_mul_mul_18s_18s_36_1_1_U7", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619876", "Max" : "1319588"}
	, {"Name" : "Interval", "Min" : "619876", "Max" : "1319588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 18 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 18 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 1 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50519", "EstimateLatencyMax" : "50519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_128"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_im2col_2d_cl_1_fu_128", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "res_V_assign", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_128", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		res_V_assign {Type I LastRead -1 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50519", "Max" : "50519"}
	, {"Name" : "Interval", "Min" : "50519", "Max" : "50519"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 16 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619876", "EstimateLatencyMax" : "1319588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "675", "EstimateLatencyMax" : "1507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_272"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx7_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_272", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_272.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619876", "Max" : "1319588"}
	, {"Name" : "Interval", "Min" : "619876", "Max" : "1319588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619876", "EstimateLatencyMax" : "1319588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx6"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "675", "EstimateLatencyMax" : "1507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_272"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx6_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_272", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_272.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx6 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx6 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619876", "Max" : "1319588"}
	, {"Name" : "Interval", "Min" : "619876", "Max" : "1319588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 15 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619876", "EstimateLatencyMax" : "1319588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "675", "EstimateLatencyMax" : "1507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx7_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270.myproject_mul_mul_15s_15s_30_1_1_U7", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619876", "Max" : "1319588"}
	, {"Name" : "Interval", "Min" : "619876", "Max" : "1319588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 15 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 13 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 13 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 13 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619876", "EstimateLatencyMax" : "1319588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx6"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "675", "EstimateLatencyMax" : "1507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx6_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270.myproject_mul_mul_13s_13s_26_1_1_U7", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx6 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx6 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619876", "Max" : "1319588"}
	, {"Name" : "Interval", "Min" : "619876", "Max" : "1319588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 13 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 13 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619876", "EstimateLatencyMax" : "1319588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "675", "EstimateLatencyMax" : "1507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx7_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_270.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619876", "Max" : "1319588"}
	, {"Name" : "Interval", "Min" : "619876", "Max" : "1319588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619876", "EstimateLatencyMax" : "1319588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_149"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_149", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "b3_V"}]},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_137", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "675", "EstimateLatencyMax" : "1507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_272"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.b3_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.outidx7_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.w3_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.acc_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_272", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_137.grp_product_fu_272.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_149", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		b3_V {Type I LastRead -1 FirstWrite -1}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619876", "Max" : "1319588"}
	, {"Name" : "Interval", "Min" : "619876", "Max" : "1319588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 1 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50519", "EstimateLatencyMax" : "50519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_128"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_im2col_2d_cl_1_fu_128", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "res_V_assign", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_128", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		res_V_assign {Type I LastRead -1 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50519", "Max" : "50519"}
	, {"Name" : "Interval", "Min" : "50519", "Max" : "50519"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 1 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50519", "EstimateLatencyMax" : "50519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_128"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_im2col_2d_cl_1_fu_128", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "res_V_assign", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_128", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		res_V_assign {Type I LastRead -1 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50519", "Max" : "50519"}
	, {"Name" : "Interval", "Min" : "50519", "Max" : "50519"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 18 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 18 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 18 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_260"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_260", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_260.myproject_mul_mul_18s_18s_36_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 18 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 18 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 1 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50519", "EstimateLatencyMax" : "50519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_128"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_im2col_2d_cl_1_fu_128", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "res_V_assign", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_128", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		res_V_assign {Type I LastRead -1 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50519", "Max" : "50519"}
	, {"Name" : "Interval", "Min" : "50519", "Max" : "50519"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 16 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx6"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_270"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx6_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_270", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_270.myproject_mul_mul_16s_16s_32_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx6 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx6 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 16 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx6"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_260"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx6_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_260", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_260.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx6 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx6 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_260"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_260", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_260.myproject_mul_mul_12s_12s_24_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 15 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258.myproject_mul_mul_15s_15s_30_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 15 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 1 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50519", "EstimateLatencyMax" : "50519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_128"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_im2col_2d_cl_1_fu_128", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "res_V_assign", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_128", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		res_V_assign {Type I LastRead -1 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50519", "Max" : "50519"}
	, {"Name" : "Interval", "Min" : "50519", "Max" : "50519"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 15 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258.myproject_mul_mul_15s_15s_30_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 15 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 17 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 1 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 17 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50519", "EstimateLatencyMax" : "50519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_128"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_im2col_2d_cl_1_fu_128", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "res_V_assign", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_128", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		res_V_assign {Type I LastRead -1 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50519", "Max" : "50519"}
	, {"Name" : "Interval", "Min" : "50519", "Max" : "50519"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 17 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 15 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258.myproject_mul_mul_15s_15s_30_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 15 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 14 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_262"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_262", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_262.myproject_mul_mul_14s_14s_28_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 14 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 18 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 18 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 18 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_260"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_260", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_260.myproject_mul_mul_18s_18s_36_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 18 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 18 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 10 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "8"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "559324", "EstimateLatencyMax" : "1151388",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "603", "EstimateLatencyMax" : "1307",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_260"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_260", "Parent" : "3",
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
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "559324", "Max" : "1151388"}
	, {"Name" : "Interval", "Min" : "559324", "Max" : "1151388"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 10 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 11 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "613148", "EstimateLatencyMax" : "1312860",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_145"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_145", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_135", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_258"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_135.grp_product_fu_258.myproject_mul_mul_11s_11s_22_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_145", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 7}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 4}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "613148", "Max" : "1312860"}
	, {"Name" : "Interval", "Min" : "613148", "Max" : "1312860"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 11 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 1 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50519", "EstimateLatencyMax" : "50519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_128"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_im2col_2d_cl_1_fu_128", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "res_V_assign", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_128", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		res_V_assign {Type I LastRead -1 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50519", "Max" : "50519"}
	, {"Name" : "Interval", "Min" : "50519", "Max" : "50519"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 1 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 12 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "949548", "EstimateLatencyMax" : "1945292",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_144"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_144", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1059", "EstimateLatencyMax" : "2211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_259"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_259", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_259.myproject_mul_mul_12s_12s_24_3_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_144", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 8}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "949548", "Max" : "1945292"}
	, {"Name" : "Interval", "Min" : "949548", "Max" : "1945292"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 12 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 18 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 18 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 18 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1003372", "EstimateLatencyMax" : "2106764",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_144"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_144", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1123", "EstimateLatencyMax" : "2403",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_259"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_259", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_259.myproject_mul_mul_18s_18s_36_3_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_144", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 8}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1003372", "Max" : "2106764"}
	, {"Name" : "Interval", "Min" : "1003372", "Max" : "2106764"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 18 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 18 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 14 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "949548", "EstimateLatencyMax" : "1945292",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_144"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_144", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1059", "EstimateLatencyMax" : "2211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_261"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_261", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_261.myproject_mul_mul_14s_14s_28_3_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_144", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 8}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "949548", "Max" : "1945292"}
	, {"Name" : "Interval", "Min" : "949548", "Max" : "1945292"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 14 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 16 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1111020", "EstimateLatencyMax" : "2429708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_144"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_im2col_2d_cl_1_fu_144", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134", "Parent" : "0", "Child" : ["4", "5", "6", "7", "9"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1251", "EstimateLatencyMax" : "2787",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_269"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_269", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_269.myproject_mul_mul_16s_16s_32_3_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.myproject_lshr_32ns_6ns_32_2_1_U11", "Parent" : "3"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_144", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 8}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1111020", "Max" : "2429708"}
	, {"Name" : "Interval", "Min" : "1111020", "Max" : "2429708"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 16 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 16 } } }
}
set moduleName conv_2d_large_cl_1
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
set C_modelName {conv_2d_large_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 1024 { 1 3 } 1 1 }  }
	{ res_V int 14 regular {array 6728 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
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
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ res_V_address0 sc_out sc_lv 13 signal 1 } 
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
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "conv_2d_large_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "949548", "EstimateLatencyMax" : "1945292",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_im2col_2d_cl_1_fu_144"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_im2col_2d_cl_1_fu_144", "Port" : "data_V"}]},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "outidx7"}]},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_large_rf_gt_ni_1_fu_134", "Port" : "w3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_col_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "dense_large_rf_gt_ni_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1059", "EstimateLatencyMax" : "2211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_product_fu_261"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outidx7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.outidx7_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.w3_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.acc_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_261", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dense_large_rf_gt_ni_1_fu_134.grp_product_fu_261.myproject_mul_mul_14s_14s_28_3_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_im2col_2d_cl_1_fu_144", "Parent" : "0",
		"CDFG" : "im2col_2d_cl_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_col_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_large_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 8}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	dense_large_rf_gt_ni_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 5}
		outidx7 {Type I LastRead -1 FirstWrite -1}
		w3_V {Type I LastRead -1 FirstWrite -1}}
	product {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "949548", "Max" : "1945292"}
	, {"Name" : "Interval", "Min" : "949548", "Max" : "1945292"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 13 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 14 } } }
}
