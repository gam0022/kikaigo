.text
.globl sum
sum:
  push %ebp
  movl %esp, %ebp

  # 計算結果を代入
  mov $0, %eax
  # ループカウンタ
  mov $0, %ebx
  # 配列の先頭アドレス
  mov 12(%ebp), %ecx

L1:
  cmp 8(%ebp), %ebx
  je L2
  add (%ecx, %ebx, 4), %eax
  inc %ebx
  jmp L1

L2:
  leave
  ret
