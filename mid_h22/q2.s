.data
.align 4
  A: .long 2,1,1,2,2,2,1,1,1,1
.text
.globl main
main:
  mov $1, %eax
  mov $0, %ebx
  mov $0, %ecx
L1:
  cmp $10, %ecx
  je L3
  cmp A(,%ecx,4), %eax
  jne L2
  inc %ebx
L2:
  inc %ecx
  jmp L1
L3:
  call stop
