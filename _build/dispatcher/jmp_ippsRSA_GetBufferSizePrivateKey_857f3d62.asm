extern m7_ippsRSA_GetBufferSizePrivateKey:function
extern n8_ippsRSA_GetBufferSizePrivateKey:function
extern y8_ippsRSA_GetBufferSizePrivateKey:function
extern e9_ippsRSA_GetBufferSizePrivateKey:function
extern l9_ippsRSA_GetBufferSizePrivateKey:function
extern n0_ippsRSA_GetBufferSizePrivateKey:function
extern k0_ippsRSA_GetBufferSizePrivateKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_GetBufferSizePrivateKey
.Larraddr_ippsRSA_GetBufferSizePrivateKey:
    dq m7_ippsRSA_GetBufferSizePrivateKey
    dq n8_ippsRSA_GetBufferSizePrivateKey
    dq y8_ippsRSA_GetBufferSizePrivateKey
    dq e9_ippsRSA_GetBufferSizePrivateKey
    dq l9_ippsRSA_GetBufferSizePrivateKey
    dq n0_ippsRSA_GetBufferSizePrivateKey
    dq k0_ippsRSA_GetBufferSizePrivateKey

segment .text
global ippsRSA_GetBufferSizePrivateKey:function (ippsRSA_GetBufferSizePrivateKey.LEndippsRSA_GetBufferSizePrivateKey - ippsRSA_GetBufferSizePrivateKey)
.Lin_ippsRSA_GetBufferSizePrivateKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_GetBufferSizePrivateKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_GetBufferSizePrivateKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_GetBufferSizePrivateKey:
