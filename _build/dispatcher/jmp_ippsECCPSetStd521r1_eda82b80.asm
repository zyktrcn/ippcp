extern m7_ippsECCPSetStd521r1:function
extern n8_ippsECCPSetStd521r1:function
extern y8_ippsECCPSetStd521r1:function
extern e9_ippsECCPSetStd521r1:function
extern l9_ippsECCPSetStd521r1:function
extern n0_ippsECCPSetStd521r1:function
extern k0_ippsECCPSetStd521r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSetStd521r1
.Larraddr_ippsECCPSetStd521r1:
    dq m7_ippsECCPSetStd521r1
    dq n8_ippsECCPSetStd521r1
    dq y8_ippsECCPSetStd521r1
    dq e9_ippsECCPSetStd521r1
    dq l9_ippsECCPSetStd521r1
    dq n0_ippsECCPSetStd521r1
    dq k0_ippsECCPSetStd521r1

segment .text
global ippsECCPSetStd521r1:function (ippsECCPSetStd521r1.LEndippsECCPSetStd521r1 - ippsECCPSetStd521r1)
.Lin_ippsECCPSetStd521r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSetStd521r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSetStd521r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSetStd521r1: