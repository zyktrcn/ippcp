extern m7_ippsRSA_SetPublicKey:function
extern n8_ippsRSA_SetPublicKey:function
extern y8_ippsRSA_SetPublicKey:function
extern e9_ippsRSA_SetPublicKey:function
extern l9_ippsRSA_SetPublicKey:function
extern n0_ippsRSA_SetPublicKey:function
extern k0_ippsRSA_SetPublicKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_SetPublicKey
.Larraddr_ippsRSA_SetPublicKey:
    dq m7_ippsRSA_SetPublicKey
    dq n8_ippsRSA_SetPublicKey
    dq y8_ippsRSA_SetPublicKey
    dq e9_ippsRSA_SetPublicKey
    dq l9_ippsRSA_SetPublicKey
    dq n0_ippsRSA_SetPublicKey
    dq k0_ippsRSA_SetPublicKey

segment .text
global ippsRSA_SetPublicKey:function (ippsRSA_SetPublicKey.LEndippsRSA_SetPublicKey - ippsRSA_SetPublicKey)
.Lin_ippsRSA_SetPublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_SetPublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_SetPublicKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_SetPublicKey:
