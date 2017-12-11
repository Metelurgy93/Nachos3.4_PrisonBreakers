################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../code/userprog/addrspace.cc \
../code/userprog/bitmap.cc \
../code/userprog/exception.cc \
../code/userprog/progtest.cc 

O_SRCS += \
../code/userprog/addrspace.o \
../code/userprog/bitmap.o \
../code/userprog/console.o \
../code/userprog/exception.o \
../code/userprog/interrupt.o \
../code/userprog/list.o \
../code/userprog/machine.o \
../code/userprog/main.o \
../code/userprog/mipssim.o \
../code/userprog/progtest.o \
../code/userprog/scheduler.o \
../code/userprog/stats.o \
../code/userprog/switch.o \
../code/userprog/synch.o \
../code/userprog/synchlist.o \
../code/userprog/sysdep.o \
../code/userprog/system.o \
../code/userprog/thread.o \
../code/userprog/threadtest.o \
../code/userprog/timer.o \
../code/userprog/translate.o \
../code/userprog/utility.o 

CC_DEPS += \
./code/userprog/addrspace.d \
./code/userprog/bitmap.d \
./code/userprog/exception.d \
./code/userprog/progtest.d 

OBJS += \
./code/userprog/addrspace.o \
./code/userprog/bitmap.o \
./code/userprog/exception.o \
./code/userprog/progtest.o 


# Each subdirectory must supply rules for building sources it contributes
code/userprog/%.o: ../code/userprog/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


