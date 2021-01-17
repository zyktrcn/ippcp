extern m7_ippsECCPSetStdSM2:function
extern n8_ippsECCPSetStdSM2:function
extern y8_ippsECCPSetStdSM2:function
extern e9_ippsECCPSetStdSM2:function
extern l9_ippsECCPSetStdSM2:function
extern n0_ippsECCPSetStdSM2:function
extern k0_ippsECCPSetStdSM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSetStdSM2
.Larraddr_ippsECCPSetStdSM2:
    dq m7_ippsECCPSetStdSM2
    dq n8_ippsECCPSetStdSM2
    dq y8_ippsECCPSetStdSM2
    dq e9_ippsECCPSetStdSM2
    dq l9_ippsECCPSetStdSM2
    dq n0_ippsECCPSetStdSM2
    dq k0_ippsECCPSetStdSM2

segment .text
global ippsECCPSetStdSM2:function (ippsECCPSetStdSM2.LEndippsECCPSetStdSM2 - ippsECCPSetStdSM2)
.Lin_ippsECCPSetStdSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSetStdSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSetStdSM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSetStdSM2:
