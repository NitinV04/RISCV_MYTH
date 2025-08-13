    .section .text
    .global load
    .type load, @function

load:
    add  a4, a0, zero     // Initialize sum register a4 with 0x0
    add  a2, a0, a1       // Store count (from main) into register a2
    add  a3, a0, zero     // Initialize intermediate counter register a3 by 0
loop:
    add  a4, a3, a4       // Incremental addition: sum += counter
    addi a3, a3, 1        // Increment counter by 1
    blt  a3, a2, loop     // If counter < count, repeat loop
    add  a0, a4, zero     // Store final result into a0 (return value)
    ret
