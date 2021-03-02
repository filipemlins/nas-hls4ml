################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/filipe/MEGA/GitHub/hls4ml-tutorial-master/model_multistart/0/hls4ml_prj/myproject_test.cpp 

OBJS += \
./testbench/myproject_test.o 

CPP_DEPS += \
./testbench/myproject_test.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/myproject_test.o: /home/filipe/MEGA/GitHub/hls4ml-tutorial-master/model_multistart/0/hls4ml_prj/myproject_test.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/filipe/Xilinx/Vivado/2018.3/include/etc -I/home/filipe/Xilinx/Vivado/2018.3/lnx64/tools/systemc/include -I/home/filipe/MEGA/GitHub/hls4ml-tutorial-master/model_multistart/0/hls4ml_prj -I/home/filipe/Xilinx/Vivado/2018.3/include -I/home/filipe/Xilinx/Vivado/2018.3/include/ap_sysc -I/home/filipe/Xilinx/Vivado/2018.3/lnx64/tools/auto_cc/include -O0 -g3 -Wall -std=c++0x -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/myproject_test.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


