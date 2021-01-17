extern m7_ippsECCPSetStd384r1:function
extern n8_ippsECCPSetStd384r1:function
extern y8_ippsECCPSetStd384r1:function
extern e9_ippsECCPSetStd384r1:function
extern l9_ippsECCPSetStd384r1:function
extern n0_ippsECCPSetStd384r1:function
extern k0_ippsECCPSetStd384r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSetStd384r1
.Larraddr_ippsECCPSetStd384r1:
    dq m7_ippsECCPSetStd384r1
    dq n8_ippsECCPSetStd384r1
    dq y8_ippsECCPSetStd384r1
    dq e9_ippsECCPSetStd384r1
    dq l9_ippsECCPSetStd384r1
    dq n0_ippsECCPSetStd384r1
    dq k0_ippsECCPSetStd384r1

segment .text
global ippsECCPSetStd384r1:function (ippsECCPSetStd384r1.LEndippsECCPSetStd384r1 - ippsECCPSetStd384r1)
.Lin_ippsECCPSetStd384r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSetStd384r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSetStd384r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSetStd384r1:
