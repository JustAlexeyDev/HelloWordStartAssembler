section .bss

section .data
  hello db "Hello, world", 0

section .text
  global main

  extern GetStdHandle
  extern WriteConsoleA
  extern ExitProcess

  main:
    push -11
    call GetStdHandle
    mov ebx, eax

    push 0
    push 0
    push 12
    push hello
    push ebx
    call WriteConsoleA

  jump_forever:
    jmp jump_forever

    push 0
    call ExitProcess

