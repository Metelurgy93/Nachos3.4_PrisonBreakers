################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../code/machine/console.cc \
../code/machine/disk.cc \
../code/machine/interrupt.cc \
../code/machine/machine.cc \
../code/machine/mipssim.cc \
../code/machine/network.cc \
../code/machine/stats.cc \
../code/machine/sysdep.cc \
../code/machine/timer.cc \
../code/machine/translate.cc 

CC_DEPS += \
./code/machine/console.d \
./code/machine/disk.d \
./code/machine/interrupt.d \
./code/machine/machine.d \
./code/machine/mipssim.d \
./code/machine/network.d \
./code/machine/stats.d \
./code/machine/sysdep.d \
./code/machine/timer.d \
./code/machine/translate.d 

OBJS += \
./code/machine/console.o \
./code/machine/disk.o \
./code/machine/interrupt.o \
./code/machine/machine.o \
./code/machine/mipssim.o \
./code/machine/network.o \
./code/machine/stats.o \
./code/machine/sysdep.o \
./code/machine/timer.o \
./code/machine/translate.o 


# Each subdirectory must supply rules for building sources it contributes
code/machine/%.o: ../code/machine/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


