extern m7_ippsECCPInitStd521r1:function
extern n8_ippsECCPInitStd521r1:function
extern y8_ippsECCPInitStd521r1:function
extern e9_ippsECCPInitStd521r1:function
extern l9_ippsECCPInitStd521r1:function
extern n0_ippsECCPInitStd521r1:function
extern k0_ippsECCPInitStd521r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPInitStd521r1
.Larraddr_ippsECCPInitStd521r1:
    dq m7_ippsECCPInitStd521r1
    dq n8_ippsECCPInitStd521r1
    dq y8_ippsECCPInitStd521r1
    dq e9_ippsECCPInitStd521r1
    dq l9_ippsECCPInitStd521r1
    dq n0_ippsECCPInitStd521r1
    dq k0_ippsECCPInitStd521r1

segment .text
global ippsECCPInitStd521r1:function (ippsECCPInitStd521r1.LEndippsECCPInitStd521r1 - ippsECCPInitStd521r1)
.Lin_ippsECCPInitStd521r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPInitStd521r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPInitStd521r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPInitStd521r1:
