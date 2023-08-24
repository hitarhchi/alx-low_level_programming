section .data
    hello db "Hello, Holberton", 0
    format db "%s", 0

section .text
    extern printf

global main
main:
    push rbp                 ; Preserve base pointer
    mov rdi, format          ; Load format string
    mov rsi, hello           ; Load string to print
    call printf             ; Call printf function

    add rsp, 8               ; Adjust stack pointer (clean up arguments)
    pop rbp                  ; Restore base pointer

    ret                      ; Return from the program
