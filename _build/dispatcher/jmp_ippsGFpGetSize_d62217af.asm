extern m7_ippsGFpGetSize:function
extern n8_ippsGFpGetSize:function
extern y8_ippsGFpGetSize:function
extern e9_ippsGFpGetSize:function
extern l9_ippsGFpGetSize:function
extern n0_ippsGFpGetSize:function
extern k0_ippsGFpGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpGetSize
.Larraddr_ippsGFpGetSize:
    dq m7_ippsGFpGetSize
    dq n8_ippsGFpGetSize
    dq y8_ippsGFpGetSize
    dq e9_ippsGFpGetSize
    dq l9_ippsGFpGetSize
    dq n0_ippsGFpGetSize
    dq k0_ippsGFpGetSize

segment .text
global ippsGFpGetSize:function (ippsGFpGetSize.LEndippsGFpGetSize - ippsGFpGetSize)
.Lin_ippsGFpGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpGetSize:
