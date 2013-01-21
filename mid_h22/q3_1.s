.data
.align 4
  X: .long 3
  Y: .long 4
  Z: .long 5
  XX: .long 0,0
  YY: .long 0,0
  ZZ: .long 0,0

.text
.global main
main:
  mov X,%eax
  #mul %eax
  mull X
  mov $XX, %ebx
  mov %eax, XX
  mov %edx, 4(%ebx)

  mov Y,%eax
  mul %eax
  mov $YY, %ebx
  mov %eax, YY
  mov %edx, 4(%ebx)

  mov Z,%eax
  mul %eax
  mov $ZZ, %ebx
  mov %eax, ZZ
  mov %edx, 4(%ebx)

  call stop
