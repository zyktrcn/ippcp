extern m7_ippsECCPValidate:function
extern n8_ippsECCPValidate:function
extern y8_ippsECCPValidate:function
extern e9_ippsECCPValidate:function
extern l9_ippsECCPValidate:function
extern n0_ippsECCPValidate:function
extern k0_ippsECCPValidate:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPValidate
.Larraddr_ippsECCPValidate:
    dq m7_ippsECCPValidate
    dq n8_ippsECCPValidate
    dq y8_ippsECCPValidate
    dq e9_ippsECCPValidate
    dq l9_ippsECCPValidate
    dq n0_ippsECCPValidate
    dq k0_ippsECCPValidate

segment .text
global ippsECCPValidate:function (ippsECCPValidate.LEndippsECCPValidate - ippsECCPValidate)
.Lin_ippsECCPValidate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPValidate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPValidate]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPValidate:
