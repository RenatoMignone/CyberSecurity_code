.global _start
_start:
	
	MOV R0,#8
	MOV R1,#1
	MOV R2,#0
	MOV R3,#1
	
fibonacci_loop:
	CMP R0,R3
	BEQ exit
	AND r4,r3,#1
	CMP r4,#0
	BEQ fibonacci_dispari
	B 	fibonacci_pari
	
fibonacci_pari:
	ADD	r1,r1,r2
	ADD	R3,R3,#1
	MOV	R5,R1
	B fibonacci_loop

fibonacci_dispari:
	ADD	r2,r1,r2
	ADD	R3,R3,#1
	MOV R5,R2
	B fibonacci_loop
	
exit:
	