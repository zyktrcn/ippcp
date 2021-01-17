extern m7_ippsECCPSetStd:function
extern n8_ippsECCPSetStd:function
extern y8_ippsECCPSetStd:function
extern e9_ippsECCPSetStd:function
extern l9_ippsECCPSetStd:function
extern n0_ippsECCPSetStd:function
extern k0_ippsECCPSetStd:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSetStd
.Larraddr_ippsECCPSetStd:
    dq m7_ippsECCPSetStd
    dq n8_ippsECCPSetStd
    dq y8_ippsECCPSetStd
    dq e9_ippsECCPSetStd
    dq l9_ippsECCPSetStd
    dq n0_ippsECCPSetStd
    dq k0_ippsECCPSetStd

segment .text
global ippsECCPSetStd:function (ippsECCPSetStd.LEndippsECCPSetStd - ippsECCPSetStd)
.Lin_ippsECCPSetStd:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSetStd:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSetStd]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSetStd:
