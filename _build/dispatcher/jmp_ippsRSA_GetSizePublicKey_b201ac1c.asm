extern m7_ippsRSA_GetSizePublicKey:function
extern n8_ippsRSA_GetSizePublicKey:function
extern y8_ippsRSA_GetSizePublicKey:function
extern e9_ippsRSA_GetSizePublicKey:function
extern l9_ippsRSA_GetSizePublicKey:function
extern n0_ippsRSA_GetSizePublicKey:function
extern k0_ippsRSA_GetSizePublicKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_GetSizePublicKey
.Larraddr_ippsRSA_GetSizePublicKey:
    dq m7_ippsRSA_GetSizePublicKey
    dq n8_ippsRSA_GetSizePublicKey
    dq y8_ippsRSA_GetSizePublicKey
    dq e9_ippsRSA_GetSizePublicKey
    dq l9_ippsRSA_GetSizePublicKey
    dq n0_ippsRSA_GetSizePublicKey
    dq k0_ippsRSA_GetSizePublicKey

segment .text
global ippsRSA_GetSizePublicKey:function (ippsRSA_GetSizePublicKey.LEndippsRSA_GetSizePublicKey - ippsRSA_GetSizePublicKey)
.Lin_ippsRSA_GetSizePublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_GetSizePublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_GetSizePublicKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_GetSizePublicKey:
