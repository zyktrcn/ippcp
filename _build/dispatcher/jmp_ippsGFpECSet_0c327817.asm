extern m7_ippsGFpECSet:function
extern n8_ippsGFpECSet:function
extern y8_ippsGFpECSet:function
extern e9_ippsGFpECSet:function
extern l9_ippsGFpECSet:function
extern n0_ippsGFpECSet:function
extern k0_ippsGFpECSet:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSet
.Larraddr_ippsGFpECSet:
    dq m7_ippsGFpECSet
    dq n8_ippsGFpECSet
    dq y8_ippsGFpECSet
    dq e9_ippsGFpECSet
    dq l9_ippsGFpECSet
    dq n0_ippsGFpECSet
    dq k0_ippsGFpECSet

segment .text
global ippsGFpECSet:function (ippsGFpECSet.LEndippsGFpECSet - ippsGFpECSet)
.Lin_ippsGFpECSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSet]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSet:
