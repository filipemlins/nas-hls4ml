set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_col_V int 1 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 0 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_d0 sc_out sc_lv 1 signal 0 } 
	{ row sc_in sc_lv 5 signal 1 } 
	{ col sc_in sc_lv 5 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 1 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_col_V int 1 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 0 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_d0 sc_out sc_lv 1 signal 0 } 
	{ row sc_in sc_lv 5 signal 1 } 
	{ col sc_in sc_lv 5 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 1 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_col_V int 1 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 0 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_d0 sc_out sc_lv 1 signal 0 } 
	{ row sc_in sc_lv 5 signal 1 } 
	{ col sc_in sc_lv 5 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 1 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_col_V int 1 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 0 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_d0 sc_out sc_lv 1 signal 0 } 
	{ row sc_in sc_lv 5 signal 1 } 
	{ col sc_in sc_lv 5 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 1 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_col_V int 1 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 0 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 0 } 
	{ data_col_V_d0 sc_out sc_lv 1 signal 0 } 
	{ row sc_in sc_lv 5 signal 1 } 
	{ col sc_in sc_lv 5 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 1 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 11 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 11 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 11 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 13 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 13 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 13 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 13 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 13 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 13 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 10 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 10 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 10 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 11 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 11 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 11 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 11 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 11 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 11 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 18 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 18 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 18 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 18 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 18 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 18 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 16 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 16 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 16 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 12 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 12 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 12 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 12 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 15 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 15 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 15 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 13 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 13 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 13 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 13 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 13 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 13 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 11 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 11 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 11 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 12 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 12 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 11 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 11 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 11 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 12 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 12 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 18 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 18 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 18 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 18 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 18 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 18 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 15 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 15 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 15 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 16 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 16 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 16 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 12 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 12 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 12 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 12 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 15 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 15 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 15 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 10 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 10 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 10 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 15 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 15 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 15 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 17 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 17 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 17, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 17 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 17 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 17 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 17 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 15 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 15 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 15 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 15 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 15 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 15 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 14 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 14 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 14 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 18 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 18 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 18 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 18 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 18 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 18 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 10 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 10 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 10 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 10 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 10 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 10 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 11 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 11 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 11 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 11 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 11 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 11 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 11 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 2 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 11 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 11 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 12 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 12 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "73"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 12 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 12 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 18 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 18 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 18 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 18 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "73"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 18 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 18 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 14 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 14 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "73"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 14 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 16 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "73"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 16 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 16 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
set moduleName im2col_2d_cl_1
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
set C_modelName {im2col_2d_cl.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 14 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_col_V int 14 regular {array 16 { 0 3 } 0 1 }  }
	{ row int 5 regular  }
	{ col int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "data_col_V", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 14 signal 0 } 
	{ data_col_V_address0 sc_out sc_lv 4 signal 1 } 
	{ data_col_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_col_V_d0 sc_out sc_lv 14 signal 1 } 
	{ row sc_in sc_lv 5 signal 2 } 
	{ col sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "data_col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_col_V", "role": "address0" }} , 
 	{ "name": "data_col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "ce0" }} , 
 	{ "name": "data_col_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_col_V", "role": "we0" }} , 
 	{ "name": "data_col_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_col_V", "role": "d0" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	im2col_2d_cl_1 {
		data_V {Type I LastRead 3 FirstWrite -1}
		data_col_V {Type O LastRead -1 FirstWrite 2}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "73"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 10 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 14 } } }
	data_col_V { ap_memory {  { data_col_V_address0 mem_address 1 4 }  { data_col_V_ce0 mem_ce 1 1 }  { data_col_V_we0 mem_we 1 1 }  { data_col_V_d0 mem_din 1 14 } } }
	row { ap_none {  { row in_data 0 5 } } }
	col { ap_none {  { col in_data 0 5 } } }
}
