.data 
.align 4 
  x:  .long 0x87001240,0x00124011,0x8130FFFF,0x1234 
  y:  .long 0x07001245,0x12f01348,0x8230FFFF,0x12 

.text
.global main
main:
  mov $x, %esi # xの先頭アドレス
  mov $y, %edi # yの先頭アドレス

  mov $0, %eax
  add x, %eax
  add y, %eax

  mov $0, %ebx
  adc 4(%esi), %ebx
  adc 4(%edi), %ebx

  mov $0, %ecx
  adc 8(%esi), %ecx
  adc 8(%edi), %ecx

  mov $0, %edx
  adc 12(%esi), %edx
  adc 12(%edi), %edx

  call stop
