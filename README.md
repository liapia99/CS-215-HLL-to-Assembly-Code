# CS-215-HLL-to-Assembly-Code

Remember to add this to the code file before executing in the simulator:

	AREA RESET, DATA, READONLY
		EXPORT  __Vectors

__Vectors
    DCD 0x20001000 ;stack pointer value when stack is empty
    DCD Reset_Handler  ;reset vector
    ALIGN
    AREA MYCODE, CODE, READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler

    NOP           ; entry point must be an instruction

DATA              ; DATA is ignored anyway
// give starting values for the variables ex: A DCB 4


CODE32
// code from the question files
