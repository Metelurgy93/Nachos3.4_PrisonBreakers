################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../code/threads/list.cc \
../code/threads/main.cc \
../code/threads/scheduler.cc \
../code/threads/synch.cc \
../code/threads/synchlist.cc \
../code/threads/system.cc \
../code/threads/test.0.cc \
../code/threads/test.1.cc \
../code/threads/test.2.cc \
../code/threads/test.3.cc \
../code/threads/test.4.cc \
../code/threads/thread.cc \
../code/threads/threadtest.cc \
../code/threads/utility.cc 

C_SRCS += \
../code/threads/switch.c 

O_SRCS += \
../code/threads/interrupt.o \
../code/threads/list.o \
../code/threads/main.o \
../code/threads/scheduler.o \
../code/threads/stats.o \
../code/threads/switch.o \
../code/threads/synch.o \
../code/threads/synchlist.o \
../code/threads/sysdep.o \
../code/threads/system.o \
../code/threads/test.0.o \
../code/threads/test.1.o \
../code/threads/test.2.o \
../code/threads/test.3.o \
../code/threads/test.4.o \
../code/threads/thread.o \
../code/threads/threadtest.o \
../code/threads/timer.o \
../code/threads/utility.o 

CC_DEPS += \
./code/threads/list.d \
./code/threads/main.d \
./code/threads/scheduler.d \
./code/threads/synch.d \
./code/threads/synchlist.d \
./code/threads/system.d \
./code/threads/test.0.d \
./code/threads/test.1.d \
./code/threads/test.2.d \
./code/threads/test.3.d \
./code/threads/test.4.d \
./code/threads/thread.d \
./code/threads/threadtest.d \
./code/threads/utility.d 

OBJS += \
./code/threads/list.o \
./code/threads/main.o \
./code/threads/scheduler.o \
./code/threads/switch.o \
./code/threads/synch.o \
./code/threads/synchlist.o \
./code/threads/system.o \
./code/threads/test.0.o \
./code/threads/test.1.o \
./code/threads/test.2.o \
./code/threads/test.3.o \
./code/threads/test.4.o \
./code/threads/thread.o \
./code/threads/threadtest.o \
./code/threads/utility.o 

C_DEPS += \
./code/threads/switch.d 


# Each subdirectory must supply rules for building sources it contributes
code/threads/%.o: ../code/threads/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

code/threads/%.o: ../code/threads/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


