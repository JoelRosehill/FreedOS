[BITS 32]        ; We're in 32-bit mode
[GLOBAL _start]  ; Make _start visible to the linker
[EXTERN main]    ; Declare the C main function

section .text
_start:
    ; Set up a stack (optional but recommended)
    mov esp, stack_top  

    ; Call main function in kernel.c
    call main

    ; Hang the CPU (halt forever)
    jmp $

section .bss
resb 4096         ; Reserve 4KB for stack
stack_top:
