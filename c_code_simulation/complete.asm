main:
        addi    sp, sp, -368
        sw      ra, 364(sp)
        sw      s0, 360(sp)
        addi    s0, sp, 368
        li      a0, 4
        sw      a0, -352(s0)
        sw      a0, -16(s0)
        sw      a0, -20(s0)
        li      a0, 2
        sw      a0, -348(s0)
        sw      a0, -24(s0)
        sw      a0, -28(s0)
        li      a0, 9
        sw      a0, -356(s0)
        sw      a0, -32(s0)
        lui     a1, %hi(L__const.main.input)
        addi    a1, a1, %lo(L__const.main.input)
        addi    a0, s0, -96
        sw      a0, -364(s0)
        li      a2, 64
        call    memcpy
        lw      a2, -352(s0)
        lw      a3, -348(s0)
        lw      a0, -364(s0)
        li      a1, 8
        sw      a1, -100(s0)
        sw      a2, -104(s0)
        li      a1, 7
        sw      a1, -108(s0)
        li      a1, 3
        sw      a1, -112(s0)
        li      a1, 6
        sw      a1, -116(s0)
        sw      a3, -120(s0)
        li      a1, 5
        sw      a1, -124(s0)
        li      a1, 1
        sw      a1, -128(s0)
        addi    a4, s0, -272
        sw      a4, -360(s0)
        mv      a1, a2
        call    extract_windows
        lw      a0, -360(s0)
        lw      a3, -356(s0)
        lw      a4, -352(s0)
        lw      a5, -348(s0)
        addi    a1, s0, -128
        addi    a2, s0, -344
        call    matrix_multiply
        lw      a0, -12(s0)
        lw      ra, 364(sp)
        lw      s0, 360(sp)
        addi    sp, sp, 368
        li      a7, 10
        ecall

matrix_multiply:
        addi    sp, sp, -48
        sw      ra, 44(sp)
        sw      s0, 40(sp)
        addi    s0, sp, 48
        sw      a0, -12(s0)
        sw      a1, -16(s0)
        sw      a2, -20(s0)
        sw      a3, -24(s0)
        sw      a4, -28(s0)
        sw      a5, -32(s0)
        li      a0, 0
        sw      a0, -36(s0)
        j       LBB0_1
LBB0_1:
        lw      a0, -36(s0)
        lw      a1, -24(s0)
        bge     a0, a1, LBB0_12
        j       LBB0_2
LBB0_2:
        li      a0, 0
        sw      a0, -40(s0)
        j       LBB0_3
LBB0_3:
        lw      a0, -40(s0)
        lw      a1, -32(s0)
        bge     a0, a1, LBB0_10
        j       LBB0_4
LBB0_4:
        lw      a0, -20(s0)
        lw      a1, -36(s0)
        lw      a2, -32(s0)
        mul     a1, a1, a2
        lw      a2, -40(s0)
        add     a1, a1, a2
        slli    a1, a1, 2
        add     a1, a0, a1
        li      a0, 0
        sw      a0, 0(a1)
        sw      a0, -44(s0)
        j       LBB0_5
LBB0_5:
        lw      a0, -44(s0)
        lw      a1, -28(s0)
        bge     a0, a1, LBB0_8
        j       LBB0_6
LBB0_6:
        lw      a0, -12(s0)
        lw      a1, -36(s0)
        lw      a2, -28(s0)
        mul     a2, a1, a2
        lw      a3, -44(s0)
        add     a2, a2, a3
        slli    a2, a2, 2
        add     a0, a0, a2
        lw      a0, 0(a0)
        lw      a2, -16(s0)
        lw      a4, -32(s0)
        mul     a5, a3, a4
        lw      a3, -40(s0)
        add     a5, a5, a3
        slli    a5, a5, 2
        add     a2, a2, a5
        lw      a2, 0(a2)
        mul     a2, a0, a2
        lw      a0, -20(s0)
        mul     a1, a1, a4
        add     a1, a1, a3
        slli    a1, a1, 2
        add     a1, a0, a1
        lw      a0, 0(a1)
        add     a0, a0, a2
        sw      a0, 0(a1)
        j       LBB0_7
LBB0_7:
        lw      a0, -44(s0)
        addi    a0, a0, 1
        sw      a0, -44(s0)
        j       LBB0_5
LBB0_8:
        j       LBB0_9
LBB0_9:
        lw      a0, -40(s0)
        addi    a0, a0, 1
        sw      a0, -40(s0)
        j       LBB0_3
LBB0_10:
        j       LBB0_11
LBB0_11:
        lw      a0, -36(s0)
        addi    a0, a0, 1
        sw      a0, -36(s0)
        j       LBB0_1
LBB0_12:
        lw      ra, 44(sp)
        lw      s0, 40(sp)
        addi    sp, sp, 48
        ret

extract_windows:
        addi    sp, sp, -48
        sw      ra, 44(sp)
        sw      s0, 40(sp)
        addi    s0, sp, 48
        sw      a0, -12(s0)
        sw      a1, -16(s0)
        sw      a2, -20(s0)
        sw      a3, -24(s0)
        sw      a4, -28(s0)
        li      a0, 0
        sw      a0, -32(s0)
        sw      a0, -36(s0)
        j       LBB1_1
LBB1_1:
        lw      a1, -36(s0)
        lw      a0, -16(s0)
        lw      a2, -24(s0)
        sub     a0, a0, a2
        blt     a0, a1, LBB1_16
        j       LBB1_2
LBB1_2:
        li      a0, 0
        sw      a0, -40(s0)
        j       LBB1_3
LBB1_3:
        lw      a1, -40(s0)
        lw      a0, -20(s0)
        lw      a2, -24(s0)
        sub     a0, a0, a2
        blt     a0, a1, LBB1_14
        j       LBB1_4
LBB1_4:
        li      a0, 0
        sw      a0, -44(s0)
        j       LBB1_5
LBB1_5:
        lw      a0, -44(s0)
        lw      a1, -24(s0)
        bge     a0, a1, LBB1_12
        j       LBB1_6
LBB1_6:
        li      a0, 0
        sw      a0, -48(s0)
        j       LBB1_7
LBB1_7:
        lw      a0, -48(s0)
        lw      a1, -24(s0)
        bge     a0, a1, LBB1_10
        j       LBB1_8
LBB1_8:
        lw      a0, -12(s0)
        lw      a1, -36(s0)
        lw      a2, -44(s0)
        add     a1, a1, a2
        lw      a2, -20(s0)
        mul     a1, a1, a2
        lw      a2, -40(s0)
        lw      a3, -48(s0)
        add     a2, a2, a3
        add     a1, a1, a2
        slli    a1, a1, 2
        add     a0, a0, a1
        lw      a0, 0(a0)
        lw      a1, -28(s0)
        lw      a2, -32(s0)
        addi    a3, a2, 1
        sw      a3, -32(s0)
        slli    a2, a2, 2
        add     a1, a1, a2
        sw      a0, 0(a1)
        j       LBB1_9
LBB1_9:
        lw      a0, -48(s0)
        addi    a0, a0, 1
        sw      a0, -48(s0)
        j       LBB1_7
LBB1_10:
        j       LBB1_11
LBB1_11:
        lw      a0, -44(s0)
        addi    a0, a0, 1
        sw      a0, -44(s0)
        j       LBB1_5
LBB1_12:
        j       LBB1_13
LBB1_13:
        lw      a0, -40(s0)
        addi    a0, a0, 1
        sw      a0, -40(s0)
        j       LBB1_3
LBB1_14:
        j       LBB1_15
LBB1_15:
        lw      a0, -36(s0)
        addi    a0, a0, 1
        sw      a0, -36(s0)
        j       LBB1_1
LBB1_16:
        lw      ra, 44(sp)
        lw      s0, 40(sp)
        addi    sp, sp, 48
        ret


memcpy:
    beqz a2, memcpy_done   # If n == 0, return immediately
    mv t0, a0             # Save original destination pointer

memcpy_loop:
    lb t1, 0(a1)          # Load byte from source
    sb t1, 0(a0)          # Store byte to destination
    addi a1, a1, 1        # Increment source pointer
    addi a0, a0, 1        # Increment destination pointer
    addi a2, a2, -1       # Decrement count
    bnez a2, memcpy_loop  # Loop until count reaches 0

memcpy_done:
    mv a0, t0             # Return original destination pointer
    ret

L__const.main.input:
        .word   1
        .word   2
        .word   3
        .word   4
        .word   4
        .word   5
        .word   6
        .word   7
        .word   7
        .word   8
        .word   9
        .word   10
        .word   10
        .word   11
        .word   12
        .word   13
