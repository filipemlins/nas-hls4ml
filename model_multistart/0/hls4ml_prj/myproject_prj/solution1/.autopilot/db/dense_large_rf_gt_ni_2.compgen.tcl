# This script segment is generated automatically by AutoPilot

set id 68
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


set id 69
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
set ID 72
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
set ID 73
set hasByteEnable 0
set MemName dense_large_rf_gt_ni_2_w17_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 25
set AddrRange 420
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "1010000111100001000101011" "1011001001000000110000101" "1110001011100001011111010" "1100000010000001011110000" "1100000110000000111010011" "0010011101100000011100110" "1100001111100001011100100" "0000011101011111101110111" "1010100111011111101010011" "1111011011000001100000011" "1101010100011110111100111" "0100101101111111111101110" "1111001001111111111110111" "0011101111111111100110001" "0100001000011111000111110" "0011101100000001001000101" "0001101010000000100011100" "1100000010000001001001111" "0010000000111110111001110" "0101001111111111001100000" "0001101001000001010000101" "0101001111100001001111010" "0000110011011110110100000" "0010100100011111110010001" "1101010010011110110010010" "1010010010000001011011101" "1111001111100000001111100" "0100001000111110101110010" "0010011111000000001101001" "1111110000111111110010110" "1010000101100001000101010" "1110000011011110101011010" "0100100011100001000111111" "1010010110011111111001000" "1010000011000000110100011" "0011100000111111010010101" "1110110110011110100110100" "0101111111111111010000001" "0010010111011111110011110" "0010001111000001000101011" "0010101100011110100001000" "0100110001011111010011100" "0010000100011111001010000" "1010111000100001010110101" "1011110000111111010001000" "0010000010100000110011000" "1110110100011111111100010" "0010001110011111010100001" "0000100000011111011010001" "1011001110011110110101001" "1111110000011111101110010" "0011010110100001010100100" "0011011101100000001111111" "1100010000100001010100110" "1100100010000000000011001" "1100100111111110101010100" "0011111111000001100000101" "0101100110000000100011110" "1100100111111111111000000" "1101011000111111111000011" "1111110000111110100101101" "1110000000000000010101110" "0101111010111110101100010" "0101110010100000010101101" "0011011001111111001010010" "1010010001011110111001110" "1110011000111110110001110" "1010100011111110101011111" "0010001011111111101001010" "0010011010100001010001100" "1011110001111110101100011" "0100010111111111011110110" "1011011001000001000001110" "1110110101100000100010010" "1101000010000001011111011" "1100011000000000110000011" "0101101110000000000101110" "1010001111011111010000010" "0001000000100000100000111" "1011000110111111001000110" "1111111100011111100101100" "1110010000100000010111011" "0100111101111110110011111" "0000001111111111111011100" "0101010010111111001101010" "0001000110100000110100101" "1100000110111111001010100" "0001010111111110110010010" "0100010101111111111101001" "1111010000100000101100010" "1010010001100001001010110" "1011101100100000011111011" "0100110001011110111011011" "0010000101100001011101100" "1100000101111111100001100" "1110001001000001010001111" "0011111001111111001111101" "1010101110011111100010010" "0101011100011111100110100" "1011011011111111010100000" "1111001100000000011101001" "1100001111111111011111110" "1110111101011110110010000" "1111110100011111100011000" "0101001001111111100010000" "1010000011000001001110011" "0001111100100001001100001" "0101000101000000010001001" "0001010001000000110001111" "0011111010100000010101111" "0101011100000000101110101" "0001101001000001001110101" "1011110011111110101010011" "1100101111111110111010111" "0000001011000000001101111" "1100001111011111111000110" "0001100000000000111010010" "0100011100000000011010000" "0001001010000000110100011" "1101110001100000000110100" "0101011011100000101001011" "1011111011011110110011111" "0101010110011110101001101" "0100101100000000111101100" "1110011110011110110111110" "1101011010111111111000100" "1101001110111110111001010" "0010101101111111111000011" "1011001101000000001000111" "1100100110011111011101000" "1101010100000000101001110" "1111100001011111000010111" "1101000011111110111101011" "1100010110011110101101010" "1101101101100000111110101" "1110111011000001001111010" "0000111101000000101100001" "0000010101111111110111001" "0001110110100000001000000" "1101010010000000010101010" "0000010000100000110011000" "0001001100111110110100100" "0101110100011110101011101" "1110000101111110100111110" "1110110100100000101110011" "1011010111111110110001010" "0011110111111111100010101" "1110100111111111110110000" "0100111011000001010010011" "0001000010000000001001111" "0011010011100000110001010" "1110110001100000110010010" "1100011100011110100001110" "1011010100000000110100111" "0010011111011111110010000" "0010100000111111101110010" "0101011001011111011101111" "0010001011000001001010111" "1100000010111111011110110" "0001100110111111000010010" "0011101100100001000100010" "1111111011000001100000011" "0010101110011111011001110" "0100010001000001000110010" "0101111111000000110110100" "1011000110011111101110000" "0000110001111110101100111" "1010001011000000011101001" "0011010001100000110111110" "0000111111000000110111100" "0100011000111110110000010" "1011110011000001011101000" "0011010100000000000101011" "0000011101011111110011111" "0001011010000000000000110" "0010011011000000010000110" "1011011000100001011001011" "1111100111111110100010101" "1110101111000000101011110" "1010100011111111101101000" "0010001010011111001100110" "1101111110011111100110101" "1010010011111111001011010" "0000111111100000100101010" "0101001010011111101000001" "0010011011100000111010111" "1011000100011111001011001" "1111101110111111100000111" "1101001110011110100000010" "1111110000111111101001100" "1111011111011111010100100" "0010010100111110101000010" "0000110110111111101100000" "0100110010000001000010011" "1110101100000000111100110" "0011100110100000001100110" "1100001000011110111000111" "0011001011100001011101001" "1101101000100001010000110" "0100100100011110101000000" "1111000001011110101110100" "0000100100111110110001101" "1110001001111111110011110" "0000000100011111000100111" "1110110000011110111011110" "0100111101000000111111100" "1010001110111111111000000" "0000000001111111010111100" "1110000000000000100010111" "1010111000000000111011000" "1100100000100000000000000" "0100001111100000100110000" "0100110100100001011100101" "0011001100111111100000010" "0010100000000001000011010" "0101000100011111110010101" "1101011101111111010101101" "1101101001111111111101001" "1011001101100000110110011" "0101100101100000110010111" "1011000000000000001110111" "0101110011000000100101001" "1101101101000000100001000" "0101110100011111010100110" "0100100100000000100110101" "0011101000000000111001000" "1010000000100000110100110" "0010011011111110101110111" "1101110010111110101001010" "1111001111000000111001011" "1010111010000000001100011" "0010110111000000010001100" "1010111001011110111010100" "1111010111011110110001000" "1110110110011110111111011" "0100101001100000000000010" "1110100000011110110110111" "1011110000000000110011010" "1110001000100000000000000" "0000000000111111010111111" "1111101110111111101100011" "1100101101011111111111110" "1111111011011110101111010" "1111010010011111010000001" "0101100101011111101000100" "1110011001011110111011100" "1110101000011111011110010" "1111101100111111101100000" "0100101111111111100110011" "0000010001100001001011110" "0101010011111110101000001" "1110101001000000100110100" "1110110011100000010001010" "0010111011100000110100101" "1111100110111111001110010" "0011111101111111011111010" "0101010011011111101100100" "1110011011100000010001001" "1101001110111111000100111" "0101010011100000101100110" "0011110101100000101100111" "0100110110100001000100011" "0000000111100000010001111" "1111000100000000001001110" "1100011110000000111110100" "1100010000000000011010110" "1111010001000001011110100" "0100011010000000100100100" "1111110101000000001111010" "0011100011111111010100110" "0000100100011111111101101" "0010101011011110111000101" "0101110001100000100110010" "0010100110100000110110101" "1110000000100001001101111" "0011111111000000011000011" "1100100111011111111101010" "1110011010000001011111000" "1110101010011111101101011" "1110011010111111110110100" "1011010010000000111111111" "0010000011111110100111011" "0100110011100001010001101" "1111011100011110111100111" "0101010011000000011100001" "1010111010000000101011110" "0011001011111111110000001" "1100111000111111111001000" "1110000010000000011011000" "1100101000111110111011110" "0011000111100001001111011" "0001111111100000110010100" "0010011100011111010111100" "1100000110100000000000011" "1101010000100000001110110" "1111111000011111110110101" "1110010111000000011111101" "0011110101011110111000011" "0000001110011110100000010" "0011101010111111100001011" "0101000110100001001100100" "0001010110100000010101000" "0000011001000000000001000" "0011111000100001011100101" "1100001000111111111001111" "1101011011000000000010000" "1101111011011111110100010" "1100000011100001001101011" "1100011011100000110100010" "0010110100100000000011111" "1011101111111110111110010" "0000111000111111000011001" "0000110111011110101100001" "0100010011100000010010011" "1011010110100001001010101" "1101001011000000001011000" "0100110000111111100100001" "0101000111100001011001010" "0001101001011110111001011" "0001011101000001001110111" "0100011110000000110100101" "0011011011011110110110010" "0011100011011110101101001" "0000110110000000010010100" "1011010101111111001000110" "0010101110011110110010111" "1011111011111110100100111" "1110101001000000000100011" "0011000100000000000111111" "0101011011111111110100110" "0100101101111110101011001" "0100110011111111000000011" "0101101011000000010111111" "0010110111111111001100001" "0101100010000000100101001" "1011010101000000011110100" "0100011100111111110101100" "1011101111100000111010000" "1110111110111111011000110" "1010010000100000011001110" "1010010001011111100011101" "1011000111100000110011110" "0010110001000001010111001" "0001101110111110110000001" "0100011111100001001100101" "1100111111100000001110100" "1101100111111111011010100" "0100010101011110110011100" "0001000111100000011101011" "0101011110111111110111110" "0011001100000000010100001" "0011101000011110111011011" "1111101001000001011110011" "0011010001000000100001010" "1111000111100001010011101" "1100111001011111010100011" "0001000011111110111010100" "0100001001111111110101101" "1111101010111110101101111" "0100101001011111101110101" "0101110010111111101010011" "1001111111111111010000011" "0100001100011110100100000" "0100001110100000011000111" "1111111000000000001010110" "0001111110100000010100000" "1111000110111111101000000" "0100110100100000001000101" "0101000110111110111100000" "0010100100100000000111101" "0001110000011111001110000" "0101000110100000010000000" "1100110101000000110111100" "0011010001100000101010010" "0001011001011111000010110" "0011110000000000110000110" "0001010000011111101101001" "1110011000011111101100000" "1111000101100000110100100" "1011101010100001011101101" "1110110001000001011111000" "0001000001111110011111011" "1111101011111111111101011" "0011010010000000111010011" "1101000000100000011001110" "0011111110111111001000010" "0001101010011111110011110" "1110011110000000010110100" "0001111110100000101000001" "1011010111000000000001101" "0100010001000000011001001" "1101100010011111011001101" "1101011011000001000100110" "1110000010100000001001111" "1101111100111110101101100" "0000011010111111011001000" "1100100101100000001100001" "1111110110000000011100100" "0011011100111111001111000" "1110101110000001010101111" "0101000001100000111000111" "0010000100011111101001101" "1011100000011111101001010" "1101011111000000101001000" "1010001001111110100010001" "0001100000000001010110011" "1010011101011111011001100" "0001101110100001000101100" "1111101110100000110010001" "1111000111111111010000011" "1110000010011111110010010" "0100101010011110101100000" "1010110110000000000000011" "1010101111111111010100100" "0010110011011111010000010" "1111011001000001011110110" "1110100101000000100010000" "1100001101011111100000110" "1011010100011110110111100" "0101110101000000110100000" }
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
set ID 74
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
    id 75 \
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
    id 76 \
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


