extern m7_ippsARCFourReset:function
extern n8_ippsARCFourReset:function
extern y8_ippsARCFourReset:function
extern e9_ippsARCFourReset:function
extern l9_ippsARCFourReset:function
extern n0_ippsARCFourReset:function
extern k0_ippsARCFourReset:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsARCFourReset
.Larraddr_ippsARCFourReset:
    dq m7_ippsARCFourReset
    dq n8_ippsARCFourReset
    dq y8_ippsARCFourReset
    dq e9_ippsARCFourReset
    dq l9_ippsARCFourReset
    dq n0_ippsARCFourReset
    dq k0_ippsARCFourReset

segment .text
global ippsARCFourReset:function (ippsARCFourReset.LEndippsARCFourReset - ippsARCFourReset)
.Lin_ippsARCFourReset:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsARCFourReset:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsARCFourReset]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsARCFourReset:
