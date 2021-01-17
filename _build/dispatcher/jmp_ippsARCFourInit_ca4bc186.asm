extern m7_ippsARCFourInit:function
extern n8_ippsARCFourInit:function
extern y8_ippsARCFourInit:function
extern e9_ippsARCFourInit:function
extern l9_ippsARCFourInit:function
extern n0_ippsARCFourInit:function
extern k0_ippsARCFourInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsARCFourInit
.Larraddr_ippsARCFourInit:
    dq m7_ippsARCFourInit
    dq n8_ippsARCFourInit
    dq y8_ippsARCFourInit
    dq e9_ippsARCFourInit
    dq l9_ippsARCFourInit
    dq n0_ippsARCFourInit
    dq k0_ippsARCFourInit

segment .text
global ippsARCFourInit:function (ippsARCFourInit.LEndippsARCFourInit - ippsARCFourInit)
.Lin_ippsARCFourInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsARCFourInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsARCFourInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsARCFourInit:
