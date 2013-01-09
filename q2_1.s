.data
.align 4
a:
  .long 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0

.text
.global main
main:
mov $0, %eax # ループカウンタ
mov $a, %ecx # aの先頭ポインタ

L1:                          # for(eax=0; eax<9; eax++)
  cmp $9, %eax
  je L2
  
  mov (%ecx,%eax, 4), %ebx   # ebx = a[eax]
  add 4(%ecx, %eax, 4), %ebx # ebx += a[eax+1]
  mov %ebx, 8(%ecx, %eax, 4) # a[eax+2] = ebx

  add $1, %eax
  jmp L1

  L2:
  call stop
