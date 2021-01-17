extern m7_ippsECCPSet:function
extern n8_ippsECCPSet:function
extern y8_ippsECCPSet:function
extern e9_ippsECCPSet:function
extern l9_ippsECCPSet:function
extern n0_ippsECCPSet:function
extern k0_ippsECCPSet:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSet
.Larraddr_ippsECCPSet:
    dq m7_ippsECCPSet
    dq n8_ippsECCPSet
    dq y8_ippsECCPSet
    dq e9_ippsECCPSet
    dq l9_ippsECCPSet
    dq n0_ippsECCPSet
    dq k0_ippsECCPSet

segment .text
global ippsECCPSet:function (ippsECCPSet.LEndippsECCPSet - ippsECCPSet)
.Lin_ippsECCPSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSet]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSet:
