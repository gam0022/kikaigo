.text
.globl foo
foo:
  push %ebp
  movl %esp, %ebp

  # x: 第1引数
  # y: 第2引数

  # a = x + y
  mov 8(%ebp), %eax
  add 12(%ebp), %eax

  # b = x - y
  mov 8(%ebp), %ebx
  sub 12(%ebp), %ebx

  # %eax = c = a * b
  imul %ebx, %eax

  leave
  ret
