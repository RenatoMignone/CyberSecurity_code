@Write an ARMv7 assembly program that sums the first 30 numbers and stores the result into register r1. 
@The program should run bare metal and use a single function to perform the reversal.

.global _start
_start:
	MOV r1,#0
	MOV r0,#1
	
sum_loop:
	ADD r1,r0,r1
	ADD r0,r0,#1
	
	CMP r0,#30
	BLE sum_loop
	
exit:
	B	exit
	