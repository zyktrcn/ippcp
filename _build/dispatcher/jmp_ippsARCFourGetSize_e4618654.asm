extern m7_ippsARCFourGetSize:function
extern n8_ippsARCFourGetSize:function
extern y8_ippsARCFourGetSize:function
extern e9_ippsARCFourGetSize:function
extern l9_ippsARCFourGetSize:function
extern n0_ippsARCFourGetSize:function
extern k0_ippsARCFourGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsARCFourGetSize
.Larraddr_ippsARCFourGetSize:
    dq m7_ippsARCFourGetSize
    dq n8_ippsARCFourGetSize
    dq y8_ippsARCFourGetSize
    dq e9_ippsARCFourGetSize
    dq l9_ippsARCFourGetSize
    dq n0_ippsARCFourGetSize
    dq k0_ippsARCFourGetSize

segment .text
global ippsARCFourGetSize:function (ippsARCFourGetSize.LEndippsARCFourGetSize - ippsARCFourGetSize)
.Lin_ippsARCFourGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsARCFourGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsARCFourGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsARCFourGetSize:
