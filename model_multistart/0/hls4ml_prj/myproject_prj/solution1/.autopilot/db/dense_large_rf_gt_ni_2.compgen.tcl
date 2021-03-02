# This script segment is generated automatically by AutoPilot

set id 70
set name myproject_urem_11ns_10ns_11_15_seq_1
set corename simcore_urem_seq
set op urem
set stage_num 15
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set start_width 1
set start_signed 0
set done_width 1
set in0_width 11
set in0_signed 0
set in1_width 10
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 11
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


set id 71
set name myproject_mul_mul_11ns_13ns_24_3_1
set corename simcore_mul
set op mul
set stage_num 3
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 11
set in0_signed 0
set in1_width 13
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 24
set exp i0*i1
set arg_lists {i0 {11 0 +} i1 {13 0 +} p {24 0 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 74
set hasByteEnable 0
set MemName dense_large_rf_gt_ni_2_outidx
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 3
set AddrRange 420
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 5
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 75
set hasByteEnable 0
set MemName dense_large_rf_gt_ni_2_w17_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 18
set AddrRange 420
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "111100000000000011" "111011111111111011" "010000000000000000" "110011111111111100" "111100000000000110" "111100000000000011" "001011111111111100" "000111111111111011" "111111111111111110" "111100000000000100" "010100000000000100" "000000000000000000" "001011111111111010" "001100000000000010" "101100000000000101" "001100000000000101" "001111111111111100" "111111111111111110" "101011111111111100" "111000000000000011" "101100000000000110" "001100000000000011" "111100000000000010" "111000000000000000" "010100000000000000" "111100000000000110" "110011111111111011" "000111111111111101" "111111111111111101" "111100000000000011" "111100000000000101" "110111111111111110" "000011111111111011" "000000000000000001" "010100000000000110" "111100000000000010" "101011111111111111" "001100000000000010" "010000000000000000" "001100000000000000" "001000000000000000" "010111111111111010" "110011111111111110" "101011111111111011" "001111111111111110" "001111111111111110" "101000000000000000" "110000000000000100" "001100000000000100" "111000000000000000" "110000000000000000" "110011111111111110" "111011111111111011" "001100000000000010" "001100000000000011" "101100000000000001" "101100000000000010" "101011111111111100" "001111111111111100" "010111111111111101" "011000000000000001" "110111111111111111" "110100000000000001" "010100000000000110" "000011111111111100" "101000000000000100" "000100000000000001" "000000000000000100" "101000000000000001" "111011111111111010" "101100000000000101" "001000000000000011" "010100000000000011" "111011111111111110" "111011111111111011" "000100000000000010" "000111111111111101" "001100000000000011" "010011111111111100" "110111111111111101" "101000000000000010" "111100000000000100" "001111111111111010" "001000000000000011" "111111111111111100" "110000000000000001" "000111111111111011" "110111111111111010" "111000000000000100" "001100000000000011" "110111111111111111" "110000000000000010" "110100000000000100" "001111111111111010" "110111111111111101" "101111111111111101" "110000000000000101" "101111111111111101" "010100000000000001" "111000000000000010" "101111111111111111" "110011111111111101" "101011111111111110" "110000000000000011" "111100000000000000" "010000000000000010" "111111111111111101" "110000000000000001" "110111111111111010" "101111111111111010" "000100000000000100" "101111111111111101" "111100000000000101" "111011111111111101" "111000000000000110" "010011111111111101" "101111111111111100" "101111111111111111" "110000000000000001" "001100000000000100" "110111111111111011" "111000000000000010" "000100000000000101" "000000000000000010" "111000000000000001" "110000000000000100" "001000000000000001" "010111111111111111" "000000000000000011" "011000000000000001" "010111111111111110" "111100000000000100" "110000000000000110" "111111111111111110" "110000000000000101" "110000000000000100" "111011111111111101" "110100000000000011" "111100000000000010" "101100000000000011" "101100000000000000" "000000000000000100" "001011111111111110" "000011111111111010" "000111111111111110" "001000000000000010" "111000000000000101" "110000000000000001" "101100000000000000" "001000000000000101" "010100000000000100" "001100000000000001" "010111111111111101" "110000000000000101" "001111111111111101" "101100000000000000" "111011111111111011" "110100000000000001" "101000000000000001" "101011111111111110" "001011111111111100" "001011111111111011" "101111111111111011" "011000000000000010" "000000000000000010" "000011111111111111" "000011111111111101" "111011111111111011" "101000000000000110" "101100000000000100" "000100000000000000" "001111111111111111" "001100000000000000" "001011111111111111" "010000000000000001" "110011111111111011" "111000000000000101" "000111111111111101" "010011111111111110" "101100000000000010" "010000000000000101" "111000000000000001" "001000000000000110" "010111111111111011" "010100000000000101" "111100000000000011" "001100000000000100" "001100000000000100" "010100000000000001" "001000000000000101" "001111111111111111" "101100000000000010" "110100000000000000" "110000000000000010" "111011111111111010" "110000000000000101" "001100000000000010" "110100000000000101" "101111111111111110" "111000000000000001" "010100000000000100" "000111111111111111" "110000000000000000" "110000000000000000" "010011111111111101" "110100000000000101" "110111111111111110" "001011111111111110" "111000000000000100" "011000000000000011" "101100000000000100" "101111111111111011" "011011111111111100" "001011111111111101" "111000000000000010" "111000000000000101" "010000000000000101" "010000000000000110" "000111111111111101" "111000000000000100" "111000000000000101" "111000000000000011" "101011111111111110" "000000000000000011" "110111111111111011" "001011111111111011" "000000000000000110" "101100000000000001" "111011111111111110" "001000000000000011" "001100000000000010" "101000000000000101" "000011111111111011" "010100000000000011" "010000000000000110" "110011111111111110" "101100000000000001" "010000000000000000" "000011111111111011" "111000000000000010" "000100000000000100" "110011111111111101" "000100000000000011" "110111111111111111" "001111111111111101" "000100000000000001" "101100000000000110" "101111111111111011" "101100000000000000" "110000000000000000" "000111111111111100" "101100000000000100" "010100000000000010" "001011111111111101" "000000000000000100" "111000000000000011" "001111111111111111" "010111111111111100" "111011111111111011" "000111111111111111" "101011111111111010" "001100000000000101" "010000000000000010" "000000000000000001" "000000000000000011" "110111111111111110" "001100000000000010" "011011111111111011" "010000000000000100" "111000000000000101" "111000000000000001" "111111111111111011" "111111111111111011" "001011111111111110" "010000000000000100" "101011111111111011" "000000000000000110" "101011111111111101" "101111111111111111" "010000000000000110" "001111111111111011" "110000000000000001" "101100000000000001" "111000000000000100" "111011111111111111" "111000000000000010" "110000000000000110" "111100000000000101" "010011111111111110" "001111111111111011" "010111111111111101" "010011111111111100" "001000000000000010" "101011111111111100" "111111111111111110" "110000000000000000" "110011111111111010" "110111111111111011" "111100000000000011" "001100000000000100" "000011111111111100" "110000000000000001" "000011111111111111" "001011111111111011" "010011111111111101" "110111111111111101" "101000000000000100" "011011111111111110" "111100000000000101" "001000000000000001" "111111111111111010" "110011111111111011" "111100000000000001" "010100000000000001" "001000000000000010" "010111111111111010" "110111111111111100" "001111111111111101" "101111111111111100" "111000000000000101" "001111111111111111" "101100000000000010" "000100000000000000" "110111111111111110" "110011111111111110" "101100000000000011" "010000000000000011" "111100000000000100" "111000000000000011" "010100000000000010" "000000000000000010" "001111111111111011" "110011111111111110" "000000000000000100" "111011111111111100" "000111111111111100" "111111111111111111" "010011111111111101" "001011111111111100" "110011111111111110" "101100000000000101" "111011111111111010" "110111111111111100" "110011111111111110" "000011111111111011" "010111111111111010" "110100000000000000" "010100000000000011" "010100000000000101" "110111111111111111" "000011111111111011" "110000000000000001" "010111111111111011" "110111111111111011" "110111111111111010" "111011111111111010" "000000000000000000" "001100000000000011" "101111111111111100" "111111111111111011" "000100000000000000" "010100000000000011" "000000000000000001" "001000000000000010" "001000000000000010" "010000000000000101" "110000000000000001" "111011111111111111" "001100000000000100" "111100000000000010" "110000000000000101" "101111111111111010" "110000000000000001" "000111111111111110" "101111111111111110" "101100000000000011" "001011111111111110" "001000000000000101" "111000000000000110" "010000000000000001" "001111111111111011" "000011111111111011" "111000000000000001" "111111111111111010" "110011111111111110" "110100000000000110" "101011111111111011" "001000000000000011" "001000000000000001" "010000000000000011" "010000000000000001" "001100000000000000" "001111111111111111" "000000000000000100" "111111111111111011" "111011111111111100" "111000000000000010" "010000000000000001" "101111111111111011" "101111111111111101" "000000000000000000" "010111111111111101" "010011111111111101" "001100000000000110" "101111111111111010" "110111111111111100" "001100000000000100" "000100000000000000" "001011111111111011" "101000000000000011" "000100000000000011" "010011111111111011" "000100000000000011" "110000000000000000" "010100000000000010" "010111111111111100" "000000000000000101" "111000000000000010" "110000000000000001" "011000000000000011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 5
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 76
set hasByteEnable 0
set MemName dense_large_rf_gt_ni_2_acc_V
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 14
set AddrRange 10
set AddrWd 4
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
set ClkPeriod 5
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name data_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_V \
    op interface \
    ports { data_V_address0 { O 7 vector } data_V_ce0 { O 1 bit } data_V_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name res_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename res_V \
    op interface \
    ports { res_V_address0 { O 4 vector } res_V_ce0 { O 1 bit } res_V_we0 { O 1 bit } res_V_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'res_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


