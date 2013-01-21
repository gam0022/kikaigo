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
  mul %eax
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

  mov $XX, %esi
  mov $YY, %edi

  # edx:ecx = XX + YY

  mov XX, %ecx
  add YY, %ecx

  mov 4(%esi), %edx
  adc 4(%esi), %edx

  mov $ZZ, %ebx

  cmp ZZ, %ecx
  je L1
  mov $0, %eax
  call stop

L1:
  cmp 4(%ebx), %edx
  je L2
  mov $0, %eax
  call stop

L2:
  mov $1, %eax
  call stop
