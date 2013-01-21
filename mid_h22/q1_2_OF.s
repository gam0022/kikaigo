.text
.globl main
main:
  # (a)
  #mov $0x87654321, %ebx
  #addl $0x12345678, %ebx

  # (b)
  mov $0x77777777, %ebx
  addl $0x55555555, %ebx

  # (c)
  mov $0x70000001, %ebx
  add $0x90000002, %ebx

  jo OF
  mov $0, %eax
  call stop

OF:
  mov $1, %eax
  call stop
