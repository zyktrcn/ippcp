extern m7_ippsHashFinal:function
extern n8_ippsHashFinal:function
extern y8_ippsHashFinal:function
extern e9_ippsHashFinal:function
extern l9_ippsHashFinal:function
extern n0_ippsHashFinal:function
extern k0_ippsHashFinal:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashFinal
.Larraddr_ippsHashFinal:
    dq m7_ippsHashFinal
    dq n8_ippsHashFinal
    dq y8_ippsHashFinal
    dq e9_ippsHashFinal
    dq l9_ippsHashFinal
    dq n0_ippsHashFinal
    dq k0_ippsHashFinal

segment .text
global ippsHashFinal:function (ippsHashFinal.LEndippsHashFinal - ippsHashFinal)
.Lin_ippsHashFinal:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashFinal:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashFinal]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashFinal:
