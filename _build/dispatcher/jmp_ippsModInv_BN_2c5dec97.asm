extern m7_ippsModInv_BN:function
extern n8_ippsModInv_BN:function
extern y8_ippsModInv_BN:function
extern e9_ippsModInv_BN:function
extern l9_ippsModInv_BN:function
extern n0_ippsModInv_BN:function
extern k0_ippsModInv_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsModInv_BN
.Larraddr_ippsModInv_BN:
    dq m7_ippsModInv_BN
    dq n8_ippsModInv_BN
    dq y8_ippsModInv_BN
    dq e9_ippsModInv_BN
    dq l9_ippsModInv_BN
    dq n0_ippsModInv_BN
    dq k0_ippsModInv_BN

segment .text
global ippsModInv_BN:function (ippsModInv_BN.LEndippsModInv_BN - ippsModInv_BN)
.Lin_ippsModInv_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsModInv_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsModInv_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsModInv_BN:
