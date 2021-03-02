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
set DataWd 19
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "0011000000000000101" "1110111111111111111" "0001100000000000100" "1101011111111111011" "0001000000000000101" "0100000000000000110" "1101000000000000101" "0000100000000000100" "0010000000000000111" "0010100000000000100" "0100011111111111101" "0011011111111111111" "1101000000000000011" "1101100000000001000" "1111111111111111011" "1101111111111111100" "1111100000000000011" "0011011111111111010" "0010100000000000010" "1100011111111111011" "1101111111111111110" "1111011111111111111" "0000011111111111010" "0011000000000000100" "0001100000000000111" "0010100000000000100" "1100000000000000111" "0100000000000000011" "0001100000000000110" "0000000000000000101" "1110100000000000000" "1100111111111111011" "1111000000000000000" "1101000000000000100" "0001100000000000011" "0001011111111111100" "1101000000000000110" "0001011111111111001" "1111100000000000011" "1100100000000000011" "1110111111111111111" "0000000000000000011" "1101011111111111100" "0001000000000000110" "1110011111111111111" "1101011111111111111" "1111000000000000000" "0010100000000000110" "1111000000000000001" "0001111111111111111" "1110000000000000011" "1100100000000000101" "1111111111111111110" "1100000000000000010" "1101100000000000101" "0011011111111111011" "1100100000000000010" "1110100000000000111" "1100011111111111101" "0001011111111111101" "1100100000000000110" "1100111111111111101" "1110000000000000010" "0010011111111111101" "1111011111111111100" "0010111111111111101" "1101100000000001000" "1111000000000000011" "0010011111111111001" "0000000000000000101" "1101000000000000110" "1110100000000000000" "1110000000000000001" "1101100000000000001" "1110000000000000000" "1111011111111111111" "1101111111111111110" "1111111111111111011" "1110111111111111101" "0011100000000000101" "1101100000000000011" "1100000000000000010" "0001011111111111010" "1110111111111111000" "1101111111111111101" "1111011111111111111" "1110000000000000110" "0000100000000001000" "1111100000000000001" "1111000000000001000" "0000111111111111001" "1111000000000000111" "0010000000000000001" "0010100000000000110" "0011011111111111000" "0010000000000000110" "0011000000000000011" "1110011111111111110" "1100011111111111111" "1110111111111111001" "1110111111111111111" "1100100000000000011" "1101100000000000101" "0010111111111111011" "0000111111111111010" "0100000000000001000" "1111000000000000000" "0011100000000000100" "0010000000000000000" "1110000000000000111" "1111111111111111100" "0010100000000000000" "0000000000000000111" "1100011111111111010" "0010011111111111011" "1110000000000000101" "0011111111111111110" "1111100000000000011" "1110000000000000000" "0010011111111111001" "1111011111111111000" "1101111111111111011" "1101011111111111111" "0000011111111111111" "0011100000000000001" "1101000000000000111" "1110111111111111011" "0000000000000000001" "1111100000000000011" "1101011111111111100" "0100000000000000111" "0100011111111111011" "1101100000000000001" "1111000000000000101" "1110111111111111100" "0000000000000000110" "1111011111111111001" "1111000000000000110" "1111100000000000111" "1110111111111111011" "0000100000000000100" "1101100000000000111" "1101000000000000010" "0010111111111111101" "0000111111111111111" "0010100000000000011" "1101100000000000000" "0010000000000000101" "1111011111111111100" "1100111111111111000" "0100011111111111010" "0010100000000000010" "1110100000000000110" "1101100000000000101" "1111111111111111101" "0001100000000000111" "0010100000000000001" "0001000000000000100" "1111011111111111111" "0010111111111111010" "1101011111111111011" "0000011111111111011" "0000100000000000100" "1110011111111111001" "1101011111111111101" "0000000000000000000" "0000100000000000010" "1101000000000000010" "0011100000000000001" "0000000000000000110" "1111000000000000111" "1110011111111111111" "1100011111111111111" "0001100000000000000" "1110011111111111011" "0011111111111111100" "0000000000000000001" "1110011111111111010" "0011100000000000111" "1111111111111111101" "0011000000000000100" "1110000000000000011" "0011100000000000100" "0001000000000000010" "1111111111111111101" "1111000000000000010" "0000100000000000101" "1111000000000000000" "0001100000000000011" "1111011111111111110" "1110100000000000110" "0011100000000000110" "1110000000000000100" "1101000000000000110" "0011111111111111000" "1110000000000000110" "1110100000000000110" "1100100000000000110" "0011011111111111011" "0010011111111111101" "0011000000000000001" "0010011111111111101" "0001011111111111001" "1111111111111111100" "0011111111111111111" "1100011111111111010" "0011000000000000010" "0000100000000000100" "1110011111111111001" "0001000000000000010" "1100111111111111011" "1111000000000000011" "1111111111111111110" "0000111111111111100" "0010011111111111011" "1111000000000000111" "0001111111111111100" "0010011111111111100" "1100111111111111011" "1101011111111111000" "0001000000000000010" "1110000000000000111" "1100111111111111001" "0000000000000001000" "0011000000000000011" "0001011111111111011" "0011111111111111100" "0011000000000000100" "1110000000000000110" "0001100000000000010" "0010100000000000010" "1111111111111111100" "1101000000000000010" "0000100000000000000" "0000000000000000001" "0000011111111111000" "0001011111111111110" "1111011111111111001" "1110011111111111001" "0010011111111111010" "1100111111111111000" "1111000000000000010" "0000111111111111100" "0001100000000000001" "0000100000000001000" "0000000000000000100" "0000011111111111001" "0100011111111111110" "0001111111111111111" "0011100000000000000" "1110011111111111001" "1100111111111111001" "0001011111111111011" "0011111111111111110" "1111011111111111011" "0011111111111111001" }
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


