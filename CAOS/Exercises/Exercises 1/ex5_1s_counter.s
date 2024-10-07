.section .data
	intero: .word 1073741823

.section .text
.global _start
_start:
	LDR	r0,=intero
	LDR	r0,[r0]
	MOV R1,#32
	MOV R2,#0
	MOV	R3,#0
	
loop:
	CMP r1,r2
	BEQ	exit
	ADD	r2,r2,#1
	
	AND r4,r0,#1
	LSR	r0,r0,#1
	CMP	R4,#1
	
	BEQ	incrementa
	
	b	loop
	
incrementa:
	ADD	r3,r3,#1
	
	B	loop
	
exit:
