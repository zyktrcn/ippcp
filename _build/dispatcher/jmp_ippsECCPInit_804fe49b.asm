extern m7_ippsECCPInit:function
extern n8_ippsECCPInit:function
extern y8_ippsECCPInit:function
extern e9_ippsECCPInit:function
extern l9_ippsECCPInit:function
extern n0_ippsECCPInit:function
extern k0_ippsECCPInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPInit
.Larraddr_ippsECCPInit:
    dq m7_ippsECCPInit
    dq n8_ippsECCPInit
    dq y8_ippsECCPInit
    dq e9_ippsECCPInit
    dq l9_ippsECCPInit
    dq n0_ippsECCPInit
    dq k0_ippsECCPInit

segment .text
global ippsECCPInit:function (ippsECCPInit.LEndippsECCPInit - ippsECCPInit)
.Lin_ippsECCPInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPInit:
