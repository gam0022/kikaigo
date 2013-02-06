.data
a: .long 2,5,1,8,10
b:
.text
.globl main
main:
  xor %eax, %eax
  mov $b, %ebx
  mov $a, %ecx
  sub %ecx, %ebx
  call stop
  sar $2, %ebx
L0:
  dec %ebx
  js L1
  add (%ecx,%ebx,4), %eax
  jmp L0
L1:
  call stop
