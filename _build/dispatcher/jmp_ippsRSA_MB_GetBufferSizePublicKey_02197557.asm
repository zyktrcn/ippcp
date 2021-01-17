extern m7_ippsRSA_MB_GetBufferSizePublicKey:function
extern n8_ippsRSA_MB_GetBufferSizePublicKey:function
extern y8_ippsRSA_MB_GetBufferSizePublicKey:function
extern e9_ippsRSA_MB_GetBufferSizePublicKey:function
extern l9_ippsRSA_MB_GetBufferSizePublicKey:function
extern n0_ippsRSA_MB_GetBufferSizePublicKey:function
extern k0_ippsRSA_MB_GetBufferSizePublicKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_MB_GetBufferSizePublicKey
.Larraddr_ippsRSA_MB_GetBufferSizePublicKey:
    dq m7_ippsRSA_MB_GetBufferSizePublicKey
    dq n8_ippsRSA_MB_GetBufferSizePublicKey
    dq y8_ippsRSA_MB_GetBufferSizePublicKey
    dq e9_ippsRSA_MB_GetBufferSizePublicKey
    dq l9_ippsRSA_MB_GetBufferSizePublicKey
    dq n0_ippsRSA_MB_GetBufferSizePublicKey
    dq k0_ippsRSA_MB_GetBufferSizePublicKey

segment .text
global ippsRSA_MB_GetBufferSizePublicKey:function (ippsRSA_MB_GetBufferSizePublicKey.LEndippsRSA_MB_GetBufferSizePublicKey - ippsRSA_MB_GetBufferSizePublicKey)
.Lin_ippsRSA_MB_GetBufferSizePublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_MB_GetBufferSizePublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_MB_GetBufferSizePublicKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_MB_GetBufferSizePublicKey:
