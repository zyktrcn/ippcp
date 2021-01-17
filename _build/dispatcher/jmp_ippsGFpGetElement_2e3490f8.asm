extern m7_ippsGFpGetElement:function
extern n8_ippsGFpGetElement:function
extern y8_ippsGFpGetElement:function
extern e9_ippsGFpGetElement:function
extern l9_ippsGFpGetElement:function
extern n0_ippsGFpGetElement:function
extern k0_ippsGFpGetElement:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpGetElement
.Larraddr_ippsGFpGetElement:
    dq m7_ippsGFpGetElement
    dq n8_ippsGFpGetElement
    dq y8_ippsGFpGetElement
    dq e9_ippsGFpGetElement
    dq l9_ippsGFpGetElement
    dq n0_ippsGFpGetElement
    dq k0_ippsGFpGetElement

segment .text
global ippsGFpGetElement:function (ippsGFpGetElement.LEndippsGFpGetElement - ippsGFpGetElement)
.Lin_ippsGFpGetElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpGetElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpGetElement]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpGetElement:
