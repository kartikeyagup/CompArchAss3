.main:
0	mov r0, 10
1	call .factorial
2	----

.factorial:
3	cmp r0, 1
4	bgt .continue
	
5	mov r1, 1
6	ret
	
	.continue:
7		sub sp, sp, 8
8		st r0, [sp]
9		st ra, 4[sp]
a		sub r0, r0 , 1 
b		call .factorial
c		ld ra, 4[sp]
d		ld r0 ,  [sp]
e		add sp,sp, 8
f		mul r1, r0,r1
10		ret
