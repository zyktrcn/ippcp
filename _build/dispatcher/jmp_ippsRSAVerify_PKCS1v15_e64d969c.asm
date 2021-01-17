extern m7_ippsRSAVerify_PKCS1v15:function
extern n8_ippsRSAVerify_PKCS1v15:function
extern y8_ippsRSAVerify_PKCS1v15:function
extern e9_ippsRSAVerify_PKCS1v15:function
extern l9_ippsRSAVerify_PKCS1v15:function
extern n0_ippsRSAVerify_PKCS1v15:function
extern k0_ippsRSAVerify_PKCS1v15:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSAVerify_PKCS1v15
.Larraddr_ippsRSAVerify_PKCS1v15:
    dq m7_ippsRSAVerify_PKCS1v15
    dq n8_ippsRSAVerify_PKCS1v15
    dq y8_ippsRSAVerify_PKCS1v15
    dq e9_ippsRSAVerify_PKCS1v15
    dq l9_ippsRSAVerify_PKCS1v15
    dq n0_ippsRSAVerify_PKCS1v15
    dq k0_ippsRSAVerify_PKCS1v15

segment .text
global ippsRSAVerify_PKCS1v15:function (ippsRSAVerify_PKCS1v15.LEndippsRSAVerify_PKCS1v15 - ippsRSAVerify_PKCS1v15)
.Lin_ippsRSAVerify_PKCS1v15:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSAVerify_PKCS1v15:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSAVerify_PKCS1v15]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSAVerify_PKCS1v15:
