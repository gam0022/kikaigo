.text
.globl bitscan
bitscan:
  push %ebp
  movl %esp, %ebp

  # 返り値
  mov $-1, %eax
  # ループカウンタ(捜査するビット)
  mov $0, %ebx
  # 右シフトした結果を格納するレジスタ
  mov 8(%ebp), %ecx
  # ecx & 1 を格納するレジスタ edx

L1:
  cmp $32, %ebx
  je L3

  mov %ecx, %edx
  and $1, %edx

  cmp $0, %edx
  je L2

  # 1を発見した時
  mov %ebx, %eax
  jmp L3

L2:
  shr $1, %ecx
  inc %ebx
  jmp L1

L3:
  leave
  ret
