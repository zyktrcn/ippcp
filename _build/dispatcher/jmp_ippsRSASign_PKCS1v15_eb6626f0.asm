extern m7_ippsRSASign_PKCS1v15:function
extern n8_ippsRSASign_PKCS1v15:function
extern y8_ippsRSASign_PKCS1v15:function
extern e9_ippsRSASign_PKCS1v15:function
extern l9_ippsRSASign_PKCS1v15:function
extern n0_ippsRSASign_PKCS1v15:function
extern k0_ippsRSASign_PKCS1v15:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSASign_PKCS1v15
.Larraddr_ippsRSASign_PKCS1v15:
    dq m7_ippsRSASign_PKCS1v15
    dq n8_ippsRSASign_PKCS1v15
    dq y8_ippsRSASign_PKCS1v15
    dq e9_ippsRSASign_PKCS1v15
    dq l9_ippsRSASign_PKCS1v15
    dq n0_ippsRSASign_PKCS1v15
    dq k0_ippsRSASign_PKCS1v15

segment .text
global ippsRSASign_PKCS1v15:function (ippsRSASign_PKCS1v15.LEndippsRSASign_PKCS1v15 - ippsRSASign_PKCS1v15)
.Lin_ippsRSASign_PKCS1v15:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSASign_PKCS1v15:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSASign_PKCS1v15]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSASign_PKCS1v15:
