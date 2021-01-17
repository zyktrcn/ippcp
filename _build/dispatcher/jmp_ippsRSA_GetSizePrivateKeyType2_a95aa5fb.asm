extern m7_ippsRSA_GetSizePrivateKeyType2:function
extern n8_ippsRSA_GetSizePrivateKeyType2:function
extern y8_ippsRSA_GetSizePrivateKeyType2:function
extern e9_ippsRSA_GetSizePrivateKeyType2:function
extern l9_ippsRSA_GetSizePrivateKeyType2:function
extern n0_ippsRSA_GetSizePrivateKeyType2:function
extern k0_ippsRSA_GetSizePrivateKeyType2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_GetSizePrivateKeyType2
.Larraddr_ippsRSA_GetSizePrivateKeyType2:
    dq m7_ippsRSA_GetSizePrivateKeyType2
    dq n8_ippsRSA_GetSizePrivateKeyType2
    dq y8_ippsRSA_GetSizePrivateKeyType2
    dq e9_ippsRSA_GetSizePrivateKeyType2
    dq l9_ippsRSA_GetSizePrivateKeyType2
    dq n0_ippsRSA_GetSizePrivateKeyType2
    dq k0_ippsRSA_GetSizePrivateKeyType2

segment .text
global ippsRSA_GetSizePrivateKeyType2:function (ippsRSA_GetSizePrivateKeyType2.LEndippsRSA_GetSizePrivateKeyType2 - ippsRSA_GetSizePrivateKeyType2)
.Lin_ippsRSA_GetSizePrivateKeyType2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_GetSizePrivateKeyType2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_GetSizePrivateKeyType2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_GetSizePrivateKeyType2:
