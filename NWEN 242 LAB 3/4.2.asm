.data 0x10000480
Array_A:
 .word 1,1,1,1,2,2,2,2
Array_B:
 .word 3,3,3,3,4,4,4,4
 .text
 .globl __start
__start:
 li $6, 0 #sum=0
 li $11, 10000 #N
loop1:
 li $4, 8 #number of elements
 la $2, Array_A
 la $8, Array_B
loop2: lw $5, 0($2)
       lw $7, 0($8)
 add $6, $6, $5 #sum=sum+Array_A[i]
 add $6, $6, $7 #sum=sum+Array_B[i]
 addi $2, $2, 4
 addi $8 ,$8, 4
 addi $4, $4, -1
 bgt $4, $0, loop2
 addi $11,$11, -1
 bgt $11, $0, loop1
 .end