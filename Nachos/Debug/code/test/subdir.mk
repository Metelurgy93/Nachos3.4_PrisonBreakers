################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/test/halt.c \
../code/test/matmult.c \
../code/test/shell.c \
../code/test/sort.c \
../code/test/start.c 

O_SRCS += \
../code/test/halt.o \
../code/test/matmult.o \
../code/test/shell.o \
../code/test/sort.o \
../code/test/start.o 

OBJS += \
./code/test/halt.o \
./code/test/matmult.o \
./code/test/shell.o \
./code/test/sort.o \
./code/test/start.o 

C_DEPS += \
./code/test/halt.d \
./code/test/matmult.d \
./code/test/shell.d \
./code/test/sort.d \
./code/test/start.d 


# Each subdirectory must supply rules for building sources it contributes
code/test/%.o: ../code/test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


