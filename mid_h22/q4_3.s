.text
.globl main
main:
  pushl $30
  pushl $20
  pushl $2
  call func2
  addl $12, %esp
  call stop

func2:
  pushl %ebp
  movl %esp, %ebp

  movl $0, %eax
  movl $0, %ebx

L1:
  cmp 8(%ebp), %ebx
  je L2

  addl 12(%ebp, %ebx, 4), %eax
  incl %ebx
  jmp L1
L2:
  leave
  ret
