extern m7_ippsGFpElementGetSize:function
extern n8_ippsGFpElementGetSize:function
extern y8_ippsGFpElementGetSize:function
extern e9_ippsGFpElementGetSize:function
extern l9_ippsGFpElementGetSize:function
extern n0_ippsGFpElementGetSize:function
extern k0_ippsGFpElementGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpElementGetSize
.Larraddr_ippsGFpElementGetSize:
    dq m7_ippsGFpElementGetSize
    dq n8_ippsGFpElementGetSize
    dq y8_ippsGFpElementGetSize
    dq e9_ippsGFpElementGetSize
    dq l9_ippsGFpElementGetSize
    dq n0_ippsGFpElementGetSize
    dq k0_ippsGFpElementGetSize

segment .text
global ippsGFpElementGetSize:function (ippsGFpElementGetSize.LEndippsGFpElementGetSize - ippsGFpElementGetSize)
.Lin_ippsGFpElementGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpElementGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpElementGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpElementGetSize:
