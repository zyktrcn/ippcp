extern m7_ippsARCFourCheckKey:function
extern n8_ippsARCFourCheckKey:function
extern y8_ippsARCFourCheckKey:function
extern e9_ippsARCFourCheckKey:function
extern l9_ippsARCFourCheckKey:function
extern n0_ippsARCFourCheckKey:function
extern k0_ippsARCFourCheckKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsARCFourCheckKey
.Larraddr_ippsARCFourCheckKey:
    dq m7_ippsARCFourCheckKey
    dq n8_ippsARCFourCheckKey
    dq y8_ippsARCFourCheckKey
    dq e9_ippsARCFourCheckKey
    dq l9_ippsARCFourCheckKey
    dq n0_ippsARCFourCheckKey
    dq k0_ippsARCFourCheckKey

segment .text
global ippsARCFourCheckKey:function (ippsARCFourCheckKey.LEndippsARCFourCheckKey - ippsARCFourCheckKey)
.Lin_ippsARCFourCheckKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsARCFourCheckKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsARCFourCheckKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsARCFourCheckKey:
