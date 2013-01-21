.data 
.align 4 
  x:  .long 0x00124011,0x3130FFFF 
  y:  .long 0x07001245,0x12f01348 
  a:  .long 0,0,0,0 # 乗算結果を入れる

.text 
.global main
main:
  mov $a, %esi # aの先頭ポインタ
  # %ediはx,yの先頭ポインタを入れる

  # edx:eax = x[0] * y[0]
  mov x, %eax
  mull y

  ## a[1]:a[0] = edx:eax
  mov %edx, 4(%esi)
  mov %eax, 0(%esi)
  
  # edx:eax = x[1] * y[0]
  mov $x, %edi
  mov 4(%edi), %eax
  mull y

  ## a[2]:a[1] += edx:eax
  add %eax, 4(%esi) 
  adc %edx, 8(%esi)

  # edx:eax = x[0] * y[1]
  mov x, %eax
  mov $y, %edi
  mull 4(%edi)

  ## a[2]:a[1] += edx:eax
  add %eax, 4(%esi) 
  adc %edx, 8(%esi)

  # edx:eax = x[1] * y[1]
  mov $x, %edi
  mov 4(%edi), %eax
  mov $y, %edi
  mull 4(%edi)

  ## a[2]:a[1] += edx:eax
  add %eax, 8(%esi) 
  adc %edx, 12(%esi)

  # adx:ecx:ebx:eax = a[3]:a[2]:a[1]:a[0]
  mov 0(%esi), %eax
  mov 4(%esi), %ebx
  mov 8(%esi), %ecx
  mov 12(%esi), %edx

  call stop
