extern m7_ippsRSASign_PSS:function
extern n8_ippsRSASign_PSS:function
extern y8_ippsRSASign_PSS:function
extern e9_ippsRSASign_PSS:function
extern l9_ippsRSASign_PSS:function
extern n0_ippsRSASign_PSS:function
extern k0_ippsRSASign_PSS:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSASign_PSS
.Larraddr_ippsRSASign_PSS:
    dq m7_ippsRSASign_PSS
    dq n8_ippsRSASign_PSS
    dq y8_ippsRSASign_PSS
    dq e9_ippsRSASign_PSS
    dq l9_ippsRSASign_PSS
    dq n0_ippsRSASign_PSS
    dq k0_ippsRSASign_PSS

segment .text
global ippsRSASign_PSS:function (ippsRSASign_PSS.LEndippsRSASign_PSS - ippsRSASign_PSS)
.Lin_ippsRSASign_PSS:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSASign_PSS:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSASign_PSS]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSASign_PSS:
