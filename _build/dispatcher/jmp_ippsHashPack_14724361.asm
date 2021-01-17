extern m7_ippsHashPack:function
extern n8_ippsHashPack:function
extern y8_ippsHashPack:function
extern e9_ippsHashPack:function
extern l9_ippsHashPack:function
extern n0_ippsHashPack:function
extern k0_ippsHashPack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashPack
.Larraddr_ippsHashPack:
    dq m7_ippsHashPack
    dq n8_ippsHashPack
    dq y8_ippsHashPack
    dq e9_ippsHashPack
    dq l9_ippsHashPack
    dq n0_ippsHashPack
    dq k0_ippsHashPack

segment .text
global ippsHashPack:function (ippsHashPack.LEndippsHashPack - ippsHashPack)
.Lin_ippsHashPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashPack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashPack:
