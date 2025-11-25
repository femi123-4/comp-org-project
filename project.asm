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

 # Read integer from user
    li $v0, 5
    syscall
    move $t0, $v0 # Store N in $t0
    
    # Check if N >= 22
    li $t1, 22
    bge $t0, $t1, valid_input

    # If N < 22, print error message
    li $v0, 4
    la $a0, error_msg
    syscall
    
    # Jump back to input loop
    j input_loop