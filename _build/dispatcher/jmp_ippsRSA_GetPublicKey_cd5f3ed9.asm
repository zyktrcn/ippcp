extern m7_ippsRSA_GetPublicKey:function
extern n8_ippsRSA_GetPublicKey:function
extern y8_ippsRSA_GetPublicKey:function
extern e9_ippsRSA_GetPublicKey:function
extern l9_ippsRSA_GetPublicKey:function
extern n0_ippsRSA_GetPublicKey:function
extern k0_ippsRSA_GetPublicKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_GetPublicKey
.Larraddr_ippsRSA_GetPublicKey:
    dq m7_ippsRSA_GetPublicKey
    dq n8_ippsRSA_GetPublicKey
    dq y8_ippsRSA_GetPublicKey
    dq e9_ippsRSA_GetPublicKey
    dq l9_ippsRSA_GetPublicKey
    dq n0_ippsRSA_GetPublicKey
    dq k0_ippsRSA_GetPublicKey

segment .text
global ippsRSA_GetPublicKey:function (ippsRSA_GetPublicKey.LEndippsRSA_GetPublicKey - ippsRSA_GetPublicKey)
.Lin_ippsRSA_GetPublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_GetPublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_GetPublicKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_GetPublicKey:
