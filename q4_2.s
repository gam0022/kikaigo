.text
.global main
main:
  pushl $12
  call fib
  add $4, %esp
  call stop

fib:
  push %ebp
  movl %esp, %ebp

  # 局所変数の確保
  subl $8, %esp

  # ebp[-1] に第1引数を格納
  movl 8(%ebp), %ebx
  movl %ebx, -4(%ebp)

  # ebp[-2]返り値を格納
  movl $0, -8(%ebp)

  # 引数 <= 1ならジャンプ
  cmp $1, -4(%ebp)
  jbe L

  # ebp[-2] += fib(n-1)
  decl -4(%ebp)
  pushl -4(%ebp)
  call fib
  add $4, %esp
  add %eax, -8(%ebp)

  # ebp[-2] += fib(n-2)
  decl -4(%ebp)
  pushl -4(%ebp)
  call fib
  add $4, %esp
  add %eax, -8(%ebp)

  # eaxに返り値を格納して終了
  mov -8(%ebp), %eax
  leave
  ret

L:
  # n<=1 なら返り値は1
  mov $1, %eax
  leave
  ret
