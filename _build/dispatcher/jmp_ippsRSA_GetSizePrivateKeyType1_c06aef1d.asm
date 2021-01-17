extern m7_ippsRSA_GetSizePrivateKeyType1:function
extern n8_ippsRSA_GetSizePrivateKeyType1:function
extern y8_ippsRSA_GetSizePrivateKeyType1:function
extern e9_ippsRSA_GetSizePrivateKeyType1:function
extern l9_ippsRSA_GetSizePrivateKeyType1:function
extern n0_ippsRSA_GetSizePrivateKeyType1:function
extern k0_ippsRSA_GetSizePrivateKeyType1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_GetSizePrivateKeyType1
.Larraddr_ippsRSA_GetSizePrivateKeyType1:
    dq m7_ippsRSA_GetSizePrivateKeyType1
    dq n8_ippsRSA_GetSizePrivateKeyType1
    dq y8_ippsRSA_GetSizePrivateKeyType1
    dq e9_ippsRSA_GetSizePrivateKeyType1
    dq l9_ippsRSA_GetSizePrivateKeyType1
    dq n0_ippsRSA_GetSizePrivateKeyType1
    dq k0_ippsRSA_GetSizePrivateKeyType1

segment .text
global ippsRSA_GetSizePrivateKeyType1:function (ippsRSA_GetSizePrivateKeyType1.LEndippsRSA_GetSizePrivateKeyType1 - ippsRSA_GetSizePrivateKeyType1)
.Lin_ippsRSA_GetSizePrivateKeyType1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_GetSizePrivateKeyType1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_GetSizePrivateKeyType1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_GetSizePrivateKeyType1:
