.data
    prompt:         .asciiz "Please enter an integer N (N >= 22): "
    error_msg:      .asciiz "Illegal Number!\n"
    space:          .asciiz " "
    newline:        .asciiz "\n"

.text
.globl main

main:
    # Step 1: Input validation loop
input_loop:
    # Print prompt message
    li $v0, 4
    la $a0, prompt
    syscall