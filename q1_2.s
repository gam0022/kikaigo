.text
.align 4
.global main
main:

mov $1, %eax
mov $0, %ebx

L1: 
  add %eax, %ebx
  cmp $10, %eax
  je L2
  add $1, %eax
  jmp L1

L2:
  call stop
