.text
.globl main
main:
  pushl $30
  pushl $20
  pushl $10
  call func
  addl $12, %esp
  call stop

func:
  pushl %ebp
  movl %esp, %ebp

  movl $0, %eax
  addl 8(%ebp), %eax
  addl 12(%ebp), %eax
  addl 16(%ebp), %eax

  leave
  ret
