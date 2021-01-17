extern m7_ippsGFpECPrivateKey:function
extern n8_ippsGFpECPrivateKey:function
extern y8_ippsGFpECPrivateKey:function
extern e9_ippsGFpECPrivateKey:function
extern l9_ippsGFpECPrivateKey:function
extern n0_ippsGFpECPrivateKey:function
extern k0_ippsGFpECPrivateKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECPrivateKey
.Larraddr_ippsGFpECPrivateKey:
    dq m7_ippsGFpECPrivateKey
    dq n8_ippsGFpECPrivateKey
    dq y8_ippsGFpECPrivateKey
    dq e9_ippsGFpECPrivateKey
    dq l9_ippsGFpECPrivateKey
    dq n0_ippsGFpECPrivateKey
    dq k0_ippsGFpECPrivateKey

segment .text
global ippsGFpECPrivateKey:function (ippsGFpECPrivateKey.LEndippsGFpECPrivateKey - ippsGFpECPrivateKey)
.Lin_ippsGFpECPrivateKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECPrivateKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECPrivateKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECPrivateKey:
