extern m7_ippsGFpIsZeroElement:function
extern n8_ippsGFpIsZeroElement:function
extern y8_ippsGFpIsZeroElement:function
extern e9_ippsGFpIsZeroElement:function
extern l9_ippsGFpIsZeroElement:function
extern n0_ippsGFpIsZeroElement:function
extern k0_ippsGFpIsZeroElement:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpIsZeroElement
.Larraddr_ippsGFpIsZeroElement:
    dq m7_ippsGFpIsZeroElement
    dq n8_ippsGFpIsZeroElement
    dq y8_ippsGFpIsZeroElement
    dq e9_ippsGFpIsZeroElement
    dq l9_ippsGFpIsZeroElement
    dq n0_ippsGFpIsZeroElement
    dq k0_ippsGFpIsZeroElement

segment .text
global ippsGFpIsZeroElement:function (ippsGFpIsZeroElement.LEndippsGFpIsZeroElement - ippsGFpIsZeroElement)
.Lin_ippsGFpIsZeroElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpIsZeroElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpIsZeroElement]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpIsZeroElement:
