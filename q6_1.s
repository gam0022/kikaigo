.data
STR1: 
  .string "%d %d %d %d %x %x %x %x\n"
  .text
  .align 4

.globl main
main:
  # eax, ebx, ecx, edx にそれぞれ値を格納する
  mov $123, %eax
  mov $345, %ebx
  mov $89,  %ecx
  mov $99,  %edx

  # スタックに引数を積む
  push %edx
  push %ecx
  push %ebx
  push %eax
  push %edx
  push %ecx
  push %ebx
  push %eax
  push $STR1

  # C言語の関数を呼び出す
  call printf

  # スタックから引数を消す
  add $32, %esp
  ret
