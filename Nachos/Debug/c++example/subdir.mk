################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../c++example/inheritstack.cc \
../c++example/list.cc \
../c++example/stack.cc \
../c++example/templatestack.cc 

CC_DEPS += \
./c++example/inheritstack.d \
./c++example/list.d \
./c++example/stack.d \
./c++example/templatestack.d 

OBJS += \
./c++example/inheritstack.o \
./c++example/list.o \
./c++example/stack.o \
./c++example/templatestack.o 


# Each subdirectory must supply rules for building sources it contributes
c++example/%.o: ../c++example/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


