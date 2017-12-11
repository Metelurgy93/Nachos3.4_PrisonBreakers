################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/bin/coff2flat.c \
../code/bin/coff2noff.c \
../code/bin/d.c \
../code/bin/disasm.c \
../code/bin/execute.c \
../code/bin/main.c \
../code/bin/opstrings.c \
../code/bin/out.c \
../code/bin/system.c 

O_SRCS += \
../code/bin/coff2noff.o 

OBJS += \
./code/bin/coff2flat.o \
./code/bin/coff2noff.o \
./code/bin/d.o \
./code/bin/disasm.o \
./code/bin/execute.o \
./code/bin/main.o \
./code/bin/opstrings.o \
./code/bin/out.o \
./code/bin/system.o 

C_DEPS += \
./code/bin/coff2flat.d \
./code/bin/coff2noff.d \
./code/bin/d.d \
./code/bin/disasm.d \
./code/bin/execute.d \
./code/bin/main.d \
./code/bin/opstrings.d \
./code/bin/out.d \
./code/bin/system.d 


# Each subdirectory must supply rules for building sources it contributes
code/bin/%.o: ../code/bin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


