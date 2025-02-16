main:
        addi    sp, sp, -256
        sw      ra, 252(sp)
        sw      s0, 248(sp)
        addi    s0, sp, 256
        li      a0, 4
        sw      a0, -252(s0)
        sw      a0, -16(s0)
        sw      a0, -20(s0)
        li      a0, 2
        sw      a0, -248(s0)
        sw      a0, -24(s0)
        li      a0, 9
        sw      a0, -28(s0)
        lui     a1, %hi(L__const.main.input)
        addi    a1, a1, %lo(L__const.main.input)
        addi    a0, s0, -92
        sw      a0, -244(s0)
        li      a2, 64
        call    memcpy
        lw      a2, -252(s0)
        lw      a3, -248(s0)
        lw      a0, -244(s0)
        mv      a1, sp
        sw      a1, -96(s0)
        addi    a4, s0, -240
        mv      a1, a2
        call    extract_windows
        lw      a0, -96(s0)
        mv      sp, a0
        lw      a0, -12(s0)
        lw      ra, 252(sp)
        lw      s0, 248(sp)
        addi    sp, sp, 256
        li      a7, 10
        ecall
        


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
        j       LBB0_1
LBB0_1:
        lw      a1, -36(s0)
        lw      a0, -16(s0)
        lw      a2, -24(s0)
        sub     a0, a0, a2
        blt     a0, a1, LBB0_16
        j       LBB0_2
LBB0_2:
        li      a0, 0
        sw      a0, -40(s0)
        j       LBB0_3
LBB0_3:
        lw      a1, -40(s0)
        lw      a0, -20(s0)
        lw      a2, -24(s0)
        sub     a0, a0, a2
        blt     a0, a1, LBB0_14
        j       LBB0_4
LBB0_4:
        li      a0, 0
        sw      a0, -44(s0)
        j       LBB0_5
LBB0_5:
        lw      a0, -44(s0)
        lw      a1, -24(s0)
        bge     a0, a1, LBB0_12
        j       LBB0_6
LBB0_6:
        li      a0, 0
        sw      a0, -48(s0)
        j       LBB0_7
LBB0_7:
        lw      a0, -48(s0)
        lw      a1, -24(s0)
        bge     a0, a1, LBB0_10
        j       LBB0_8
LBB0_8:
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
        j       LBB0_9
LBB0_9:
        lw      a0, -48(s0)
        addi    a0, a0, 1
        sw      a0, -48(s0)
        j       LBB0_7
LBB0_10:
        j       LBB0_11
LBB0_11:
        lw      a0, -44(s0)
        addi    a0, a0, 1
        sw      a0, -44(s0)
        j       LBB0_5
LBB0_12:
        j       LBB0_13
LBB0_13:
        lw      a0, -40(s0)
        addi    a0, a0, 1
        sw      a0, -40(s0)
        j       LBB0_3
LBB0_14:
        j       LBB0_15
LBB0_15:
        lw      a0, -36(s0)
        addi    a0, a0, 1
        sw      a0, -36(s0)
        j       LBB0_1
LBB0_16:
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
