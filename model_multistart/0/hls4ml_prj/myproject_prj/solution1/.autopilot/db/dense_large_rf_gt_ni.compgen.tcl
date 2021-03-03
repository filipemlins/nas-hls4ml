# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 28
set hasByteEnable 0
set MemName dense_large_rf_gt_ni_outidx6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 3
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "000" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "001" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "010" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "011" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "100" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "101" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "110" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" "111" }
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
set ID 29
set hasByteEnable 0
set MemName dense_large_rf_gt_ni_w7_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 25
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "1111111100111111110001000" "0010001100011111001100000" "1101110010000001100100010" "0100011001111111100100111" "1001000001100001111110001" "1111010101100000001010100" "0010010000100001010100101" "0001001001000001011111010" "1110111111100001111010101" "0010010111111110000011100" "1111110011011111100001011" "0011000010111111000110001" "1010000111111111000011111" "0011101011111110111101001" "0101111010111110101001010" "0011100000011111100101101" "1000100110100000110110000" "0111000110011111101111011" "1011101000011111100101101" "1100001010000000011101010" "0000010001100001111010001" "0000000010000000101110001" "1001111000000001110011010" "1011001100100001101011100" "1010100111011110110110100" "0001110101011110111010010" "0001001101100000000101001" "1000011011000001110100110" "1000011001011111101000100" "1110100000011110000001010" "1011101111011111000001111" "0000010110000000000110011" "0010000110000000111100100" "0000100010111110011100011" "1001110000111110100111010" "1010100001000000111110110" "0000100100011111111100000" "0111000110011110011111001" "1101100000011110110110000" "1110100111000001011000001" "1010001001100000110001110" "1001111101011111110001100" "1100000010100001011010110" "1111100100011110101111111" "0100111010111111010110000" "1111010011111110100111000" "0100101100111110000100011" "0101001000000001100001110" "1111101110111110000100101" "1010001010011111000000101" "0011001001011110011000010" "0100110101111111101101100" "1110001000000000010101110" "0011000011111111110110100" "1101010101011111000111000" "0000001111000001101111010" "0000111110011110011101101" "1101000001011110001100010" "1011101010000001111001110" "0000011110000000011010000" "0100100000011110011000011" "1000110111111111101010111" "1010000110011111000001100" "0010101101111110111001110" "1010101001011110010000000" "1100011010111110111011111" "1100010001111110110100101" "1010010100000000110110110" "1001100100111110100110001" "0110011000100001000110101" "1010000110100001111101000" "1001001001111110100011001" "0101100001100000110000111" "1100000100011110011111111" "1101100011100001101111011" "1001000010100001000011101" "0100111011111111011001110" "1001100101011110011011100" "1101111111000000010010101" "1000001111000001011001000" "0101100110011110101010111" "1011011100000000111011001" "1100001011111111011010110" "0001011000000000111110000" "1110000001100000000111011" "1101110110100000000000001" "1010111011011111111101100" "1010110111100000101110100" "0110000111111110101001100" "1101011110011110111101110" "1100010000111111101001000" "0010000100000001110100010" "1110111010111110110101110" "0110110011000001101111000" "0000000111111111110111111" "1000111000100001101101101" "0011011110111110010100000" "1010100100100000011011011" "1011011001100001100000100" "1001110100000001100101001" "0011010010111110111000100" "1100110001100001011100110" "1100100111100001001000000" "1001110001100000000000011" "0111000101111110111111000" "0010000011111110010000111" "0000100110111111100111111" "0111010111100000011101100" "0110011110011111011000110" "1101001001100001000000111" "0101010100000001011110001" "0000010111111111100111010" "1110101110000000011011111" "0001111010100001001100001" "1010010000111110111100111" "0010100100000000110101110" "0110111001000001111011100" "0011010111011111000011100" "1001100110111110011010010" "0010100110000001000001001" "1101011010111111000010000" "0001001101011110001000110" "0011001110111110111000111" "0110010010100001111000110" "0010010110000000011011100" "1101010110011111100111110" "0011111010011111000011100" "1000111101111110101111100" "0111000110100000000111100" "0110001000000001100111001" "0011001110100001110110011" "1001010001100001101011000" "0011000100111111011010000" "1111101101000001011010010" "1011101100100000000001011" "0100110111100001111111011" "1000000101011110001101001" "1101000100111110110110000" "0101100010100000011000001" "1110101111000000111010111" "0110101001100001110011001" "0111010001000000110001000" "1100000100111111100001100" "0010100010000001100001111" "1001100000100000000000111" "0110111111000001000100100" "1000001000111111010011100" "1100010001000000001000010" "1101010111011110001000100" "0100000000111111100010001" "0011101010000001100101000" "0111000101000001111000010" "1100010011111110110111101" "0011011001111111100111111" "1110000000000001011100101" "0001100011100001101001011" "0101011111111110111100100" "1010010011111111001110010" "0110110000100000100011011" "0000101111011111111101011" "0010110111011110000011011" "1110010101100000101101110" "0011000000000000110010111" "1100011100000001101010100" "1010100010000001000111010" "1101101000000000011010001" "0001111111100001110100000" "0011011011011110110001001" "0101000001100001111000111" "0010101111011110011000011" "1001000110111110000011101" "1011101110000001110110101" "1111001100100000011101011" "1011100111100000011001110" "1110101010100000110000111" "0001110100000001000010111" "1001011100011111011110001" "0001001011000000111011001" "0011110101000000010100111" "0110000010011111101101110" "1011001101000000011010110" "1100101001000000100010101" "1111101111000000001100110" "0010110010100001001000011" "1100110011011111000010101" "0001110110100001010011100" "0011001010000000101000100" "0111110001111111111111111" "0101111100011110011010111" "0000010001100000011010001" "1010010000100000101001110" "0001011000111110101111010" "1110100100011110011001001" "1000011110000001000110100" "1100110000100001011011001" "1000001000111110001100000" "0101001010100001101111110" "1101100011111110011000110" "0101100001000001010011001" "0110101111000001010111100" "1011100101111111010111110" "0001011111100000110011110" "0100001010100001011011011" "0010000100111111111001000" "1001001110100001100011010" "0000110100100001011110001" "1000101001111110101000010" "0100101010100000011100001" "1011111110100001101011111" "1110011111011110100010011" "0001010101000000000011110" "1011101110111110001110000" "0001000110011111010100111" "0010000010000000001111000" "1010010101011111011000100" "1001000000000001101010010" "0100100110100001101110011" "1111011000011111001011010" "0100101010011111011110110" "0001001010111111011111100" "1001010110011110101011110" "1101100100111111001101100" "1011101000111111001000011" "0001110000000000111000010" "0111010101100001111110100" "1100100111100000000110101" "0011110111100001101101111" "1000101010100001011000000" "0001110001111110110010111" "1010110000100001110100100" "1010011001000000100010100" "0001101001011111110100011" "1001110101011111000010001" "1110111110011111000000000" "0100001111011111011100000" "0110111111100001110101001" "0110110101100000100000000" "1101110100111111000000110" "1000110111111110110100011" "1100111001111111010010111" "0111011000000000010011100" "0111100001000001100000100" "0001001111000000010001010" "0011111111111110011111010" "1011110000111111010000110" "1010111011011111000100001" "1111101110100000000100111" "1011011111100000111100100" "1010110100100001011001010" "1000110110100001100011111" "0110011110011111000101011" "1001000110011110010111010" "0000110100111110101011101" "0100000010000001010110000" "0100010101100000110101110" "0010001101000000100010011" }
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
set ID 30
set hasByteEnable 0
set MemName dense_large_rf_gt_ni_acc_V
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 14
set AddrRange 16
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
    id 31 \
    name data_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_V \
    op interface \
    ports { data_V_address0 { O 5 vector } data_V_ce0 { O 1 bit } data_V_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
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


