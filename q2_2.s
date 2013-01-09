.data
.align 4
x: .long 2147483647
y: .long 1

.text
.global main

main:
  mov x, %ebx
  add y, %ebx
  jo OF
  mov $0, %eax
  call stop

OF:  
  mov $1, %eax
  call stop
