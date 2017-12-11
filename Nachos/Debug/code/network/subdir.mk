################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../code/network/nettest.cc \
../code/network/post.cc 

O_SRCS += \
../code/network/addrspace.o \
../code/network/bitmap.o \
../code/network/console.o \
../code/network/directory.o \
../code/network/disk.o \
../code/network/exception.o \
../code/network/filehdr.o \
../code/network/filesys.o \
../code/network/fstest.o \
../code/network/interrupt.o \
../code/network/list.o \
../code/network/machine.o \
../code/network/main.o \
../code/network/mipssim.o \
../code/network/nettest.o \
../code/network/network.o \
../code/network/openfile.o \
../code/network/post.o \
../code/network/progtest.o \
../code/network/scheduler.o \
../code/network/stats.o \
../code/network/switch.o \
../code/network/synch.o \
../code/network/synchdisk.o \
../code/network/synchlist.o \
../code/network/sysdep.o \
../code/network/system.o \
../code/network/thread.o \
../code/network/threadtest.o \
../code/network/timer.o \
../code/network/translate.o \
../code/network/utility.o 

CC_DEPS += \
./code/network/nettest.d \
./code/network/post.d 

OBJS += \
./code/network/nettest.o \
./code/network/post.o 


# Each subdirectory must supply rules for building sources it contributes
code/network/%.o: ../code/network/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


