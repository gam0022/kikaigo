.data
x: .long 0x12345678
y: .long 0x87654321
.text
.globl main
main:
  mov x, %eax
  mov $0, %ebx
  mov $1, %ecx
  mov y(,%ebx), %al
  mov y(,%ecx), %ah
  mov $-1, %bx
  call stop
