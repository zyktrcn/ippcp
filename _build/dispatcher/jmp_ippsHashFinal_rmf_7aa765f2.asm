extern m7_ippsHashFinal_rmf:function
extern n8_ippsHashFinal_rmf:function
extern y8_ippsHashFinal_rmf:function
extern e9_ippsHashFinal_rmf:function
extern l9_ippsHashFinal_rmf:function
extern n0_ippsHashFinal_rmf:function
extern k0_ippsHashFinal_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashFinal_rmf
.Larraddr_ippsHashFinal_rmf:
    dq m7_ippsHashFinal_rmf
    dq n8_ippsHashFinal_rmf
    dq y8_ippsHashFinal_rmf
    dq e9_ippsHashFinal_rmf
    dq l9_ippsHashFinal_rmf
    dq n0_ippsHashFinal_rmf
    dq k0_ippsHashFinal_rmf

segment .text
global ippsHashFinal_rmf:function (ippsHashFinal_rmf.LEndippsHashFinal_rmf - ippsHashFinal_rmf)
.Lin_ippsHashFinal_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashFinal_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashFinal_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashFinal_rmf:
