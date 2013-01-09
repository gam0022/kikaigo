.data
.align 4
x: .long 2
y: .long 2

.text
.global main
main:
  mov $0, %eax # 乗算結果
  mov $0, %ecx # カウンター

L1:
  cmp $32, %ecx
  je STOP

  # ebx = 1<<ecx
  mov $1, %ebx
  shl %cl, %ebx

  # yの下位からecx番目のbitが0であればスキップ
  and y, %ebx  # ebx = ebx & y
  cmp $0, %ebx
  je L2 
 
  # ebx = x << ecx
  mov x, %ebx
  shl %cl, %ebx

  # eax += ebx
  add %ebx, %eax

L2:
  add $1, %ecx
  jmp L1

STOP: 
  call stop
