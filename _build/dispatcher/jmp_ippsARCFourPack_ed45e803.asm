extern m7_ippsARCFourPack:function
extern n8_ippsARCFourPack:function
extern y8_ippsARCFourPack:function
extern e9_ippsARCFourPack:function
extern l9_ippsARCFourPack:function
extern n0_ippsARCFourPack:function
extern k0_ippsARCFourPack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsARCFourPack
.Larraddr_ippsARCFourPack:
    dq m7_ippsARCFourPack
    dq n8_ippsARCFourPack
    dq y8_ippsARCFourPack
    dq e9_ippsARCFourPack
    dq l9_ippsARCFourPack
    dq n0_ippsARCFourPack
    dq k0_ippsARCFourPack

segment .text
global ippsARCFourPack:function (ippsARCFourPack.LEndippsARCFourPack - ippsARCFourPack)
.Lin_ippsARCFourPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsARCFourPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsARCFourPack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsARCFourPack:
