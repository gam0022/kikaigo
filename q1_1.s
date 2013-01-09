.text
.align 4
.global main
main:
  mov $1, %eax
  mov $2, %ebx
  mov $3, %ecx
  mov $4, %edx
  
  mov $0, %esi
  add %eax, %esi
  add %ebx, %esi
  add %ecx, %esi
  add %edx, %esi

  call stop
