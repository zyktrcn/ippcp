extern m7_ippsHashPack_rmf:function
extern n8_ippsHashPack_rmf:function
extern y8_ippsHashPack_rmf:function
extern e9_ippsHashPack_rmf:function
extern l9_ippsHashPack_rmf:function
extern n0_ippsHashPack_rmf:function
extern k0_ippsHashPack_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashPack_rmf
.Larraddr_ippsHashPack_rmf:
    dq m7_ippsHashPack_rmf
    dq n8_ippsHashPack_rmf
    dq y8_ippsHashPack_rmf
    dq e9_ippsHashPack_rmf
    dq l9_ippsHashPack_rmf
    dq n0_ippsHashPack_rmf
    dq k0_ippsHashPack_rmf

segment .text
global ippsHashPack_rmf:function (ippsHashPack_rmf.LEndippsHashPack_rmf - ippsHashPack_rmf)
.Lin_ippsHashPack_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashPack_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashPack_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashPack_rmf:
