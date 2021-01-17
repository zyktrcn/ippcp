extern m7_ippsECCPInitStdSM2:function
extern n8_ippsECCPInitStdSM2:function
extern y8_ippsECCPInitStdSM2:function
extern e9_ippsECCPInitStdSM2:function
extern l9_ippsECCPInitStdSM2:function
extern n0_ippsECCPInitStdSM2:function
extern k0_ippsECCPInitStdSM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPInitStdSM2
.Larraddr_ippsECCPInitStdSM2:
    dq m7_ippsECCPInitStdSM2
    dq n8_ippsECCPInitStdSM2
    dq y8_ippsECCPInitStdSM2
    dq e9_ippsECCPInitStdSM2
    dq l9_ippsECCPInitStdSM2
    dq n0_ippsECCPInitStdSM2
    dq k0_ippsECCPInitStdSM2

segment .text
global ippsECCPInitStdSM2:function (ippsECCPInitStdSM2.LEndippsECCPInitStdSM2 - ippsECCPInitStdSM2)
.Lin_ippsECCPInitStdSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPInitStdSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPInitStdSM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPInitStdSM2:
