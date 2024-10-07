//Write an ARMv7 assembly program that computes the sum of an array of integers using a function call. 
//The program should execute in a bare-metal environment and output the result (for example, via a memory-mapped I/O register like a UART).
.section .text
	array: .word 10,20,30,40,50; 

.global _start
_start:
	LDR r0, =array
	MOV r3,#0
	MOV r2,#0
	
sum_array:
	LDR r1,[r0,r3]
	ADD r2,r2,r1
	
	ADD r3,r3,#4
	
	CMP r3,#20
	BNE sum_array
	B   exit
	
exit: