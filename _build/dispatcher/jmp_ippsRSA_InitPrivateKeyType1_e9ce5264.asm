extern m7_ippsRSA_InitPrivateKeyType1:function
extern n8_ippsRSA_InitPrivateKeyType1:function
extern y8_ippsRSA_InitPrivateKeyType1:function
extern e9_ippsRSA_InitPrivateKeyType1:function
extern l9_ippsRSA_InitPrivateKeyType1:function
extern n0_ippsRSA_InitPrivateKeyType1:function
extern k0_ippsRSA_InitPrivateKeyType1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_InitPrivateKeyType1
.Larraddr_ippsRSA_InitPrivateKeyType1:
    dq m7_ippsRSA_InitPrivateKeyType1
    dq n8_ippsRSA_InitPrivateKeyType1
    dq y8_ippsRSA_InitPrivateKeyType1
    dq e9_ippsRSA_InitPrivateKeyType1
    dq l9_ippsRSA_InitPrivateKeyType1
    dq n0_ippsRSA_InitPrivateKeyType1
    dq k0_ippsRSA_InitPrivateKeyType1

segment .text
global ippsRSA_InitPrivateKeyType1:function (ippsRSA_InitPrivateKeyType1.LEndippsRSA_InitPrivateKeyType1 - ippsRSA_InitPrivateKeyType1)
.Lin_ippsRSA_InitPrivateKeyType1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_InitPrivateKeyType1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_InitPrivateKeyType1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_InitPrivateKeyType1:
