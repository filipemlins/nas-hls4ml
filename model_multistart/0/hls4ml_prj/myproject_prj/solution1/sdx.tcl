# ==============================================================
# File generated on Tue Mar 02 23:01:42 -03 2021
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../tb_data -cflags { -Wno-unknown-pragmas}
add_files -tb ../../firmware/weights -cflags { -Wno-unknown-pragmas}
add_files -tb ../../myproject_test.cpp -cflags { -std=c++0x -Wno-unknown-pragmas}
add_files firmware/myproject.cpp -cflags -std=c++0x
set_part xc7z007sclg225-1
create_clock -name default -period 5
config_array_partition -maximum_size=4096
