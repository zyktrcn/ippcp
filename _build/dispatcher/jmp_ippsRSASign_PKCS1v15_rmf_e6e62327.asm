extern m7_ippsRSASign_PKCS1v15_rmf:function
extern n8_ippsRSASign_PKCS1v15_rmf:function
extern y8_ippsRSASign_PKCS1v15_rmf:function
extern e9_ippsRSASign_PKCS1v15_rmf:function
extern l9_ippsRSASign_PKCS1v15_rmf:function
extern n0_ippsRSASign_PKCS1v15_rmf:function
extern k0_ippsRSASign_PKCS1v15_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSASign_PKCS1v15_rmf
.Larraddr_ippsRSASign_PKCS1v15_rmf:
    dq m7_ippsRSASign_PKCS1v15_rmf
    dq n8_ippsRSASign_PKCS1v15_rmf
    dq y8_ippsRSASign_PKCS1v15_rmf
    dq e9_ippsRSASign_PKCS1v15_rmf
    dq l9_ippsRSASign_PKCS1v15_rmf
    dq n0_ippsRSASign_PKCS1v15_rmf
    dq k0_ippsRSASign_PKCS1v15_rmf

segment .text
global ippsRSASign_PKCS1v15_rmf:function (ippsRSASign_PKCS1v15_rmf.LEndippsRSASign_PKCS1v15_rmf - ippsRSASign_PKCS1v15_rmf)
.Lin_ippsRSASign_PKCS1v15_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSASign_PKCS1v15_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSASign_PKCS1v15_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSASign_PKCS1v15_rmf:
