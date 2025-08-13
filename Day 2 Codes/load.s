    .section .text
    .global load
    .type load, @function

load:
    add  a4, a0, zero     // Initialize sum register a4 with 0
    add  a2, a0, a1       // Store count (from main) in register a2
    add  a3, a0, zero     // Initialize counter register a3 with 0

loop:
    add  a4, a3, a4       // sum += counter
    addi a3, a3, 1        // counter++
    blt  a3, a2, loop     // If counter < count, repeat loop

    add  a0, a4, zero     // Store sum in a0 (return value)
    ret
