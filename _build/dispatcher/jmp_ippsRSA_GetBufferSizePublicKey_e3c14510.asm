extern m7_ippsRSA_GetBufferSizePublicKey:function
extern n8_ippsRSA_GetBufferSizePublicKey:function
extern y8_ippsRSA_GetBufferSizePublicKey:function
extern e9_ippsRSA_GetBufferSizePublicKey:function
extern l9_ippsRSA_GetBufferSizePublicKey:function
extern n0_ippsRSA_GetBufferSizePublicKey:function
extern k0_ippsRSA_GetBufferSizePublicKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_GetBufferSizePublicKey
.Larraddr_ippsRSA_GetBufferSizePublicKey:
    dq m7_ippsRSA_GetBufferSizePublicKey
    dq n8_ippsRSA_GetBufferSizePublicKey
    dq y8_ippsRSA_GetBufferSizePublicKey
    dq e9_ippsRSA_GetBufferSizePublicKey
    dq l9_ippsRSA_GetBufferSizePublicKey
    dq n0_ippsRSA_GetBufferSizePublicKey
    dq k0_ippsRSA_GetBufferSizePublicKey

segment .text
global ippsRSA_GetBufferSizePublicKey:function (ippsRSA_GetBufferSizePublicKey.LEndippsRSA_GetBufferSizePublicKey - ippsRSA_GetBufferSizePublicKey)
.Lin_ippsRSA_GetBufferSizePublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_GetBufferSizePublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_GetBufferSizePublicKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_GetBufferSizePublicKey: