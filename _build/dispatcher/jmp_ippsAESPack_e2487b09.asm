extern m7_ippsAESPack:function
extern n8_ippsAESPack:function
extern y8_ippsAESPack:function
extern e9_ippsAESPack:function
extern l9_ippsAESPack:function
extern n0_ippsAESPack:function
extern k0_ippsAESPack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESPack
.Larraddr_ippsAESPack:
    dq m7_ippsAESPack
    dq n8_ippsAESPack
    dq y8_ippsAESPack
    dq e9_ippsAESPack
    dq l9_ippsAESPack
    dq n0_ippsAESPack
    dq k0_ippsAESPack

segment .text
global ippsAESPack:function (ippsAESPack.LEndippsAESPack - ippsAESPack)
.Lin_ippsAESPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESPack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESPack:
