.text
.globl innerprod
innerprod:
  push %ebp
  movl %esp, %ebp

  # 局所変数の確保
  subl $8, %esp

  # ループカウンタ
  mov $0, %ebx

  # v1 の先頭アドレス
  mov 12(%ebp), %esi
  # v2 の先頭アドレス
  mov 16(%ebp), %edi

  # レジスタスタックに0をロード
  fldz

L1:
  cmp 8(%ebp), %ebx
  je L2

  fstpl -8(%ebp)

  fldl (%esi, %ebx, 8)
  fmull (%edi, %ebx, 8)

  faddl -8(%ebp)

  inc %ebx
  jmp L1

L2:
  leave
  ret
