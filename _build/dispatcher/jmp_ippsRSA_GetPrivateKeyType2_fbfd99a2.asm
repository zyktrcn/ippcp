extern m7_ippsRSA_GetPrivateKeyType2:function
extern n8_ippsRSA_GetPrivateKeyType2:function
extern y8_ippsRSA_GetPrivateKeyType2:function
extern e9_ippsRSA_GetPrivateKeyType2:function
extern l9_ippsRSA_GetPrivateKeyType2:function
extern n0_ippsRSA_GetPrivateKeyType2:function
extern k0_ippsRSA_GetPrivateKeyType2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_GetPrivateKeyType2
.Larraddr_ippsRSA_GetPrivateKeyType2:
    dq m7_ippsRSA_GetPrivateKeyType2
    dq n8_ippsRSA_GetPrivateKeyType2
    dq y8_ippsRSA_GetPrivateKeyType2
    dq e9_ippsRSA_GetPrivateKeyType2
    dq l9_ippsRSA_GetPrivateKeyType2
    dq n0_ippsRSA_GetPrivateKeyType2
    dq k0_ippsRSA_GetPrivateKeyType2

segment .text
global ippsRSA_GetPrivateKeyType2:function (ippsRSA_GetPrivateKeyType2.LEndippsRSA_GetPrivateKeyType2 - ippsRSA_GetPrivateKeyType2)
.Lin_ippsRSA_GetPrivateKeyType2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_GetPrivateKeyType2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_GetPrivateKeyType2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_GetPrivateKeyType2:
