extern m7_ippsGFpSetElement:function
extern n8_ippsGFpSetElement:function
extern y8_ippsGFpSetElement:function
extern e9_ippsGFpSetElement:function
extern l9_ippsGFpSetElement:function
extern n0_ippsGFpSetElement:function
extern k0_ippsGFpSetElement:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpSetElement
.Larraddr_ippsGFpSetElement:
    dq m7_ippsGFpSetElement
    dq n8_ippsGFpSetElement
    dq y8_ippsGFpSetElement
    dq e9_ippsGFpSetElement
    dq l9_ippsGFpSetElement
    dq n0_ippsGFpSetElement
    dq k0_ippsGFpSetElement

segment .text
global ippsGFpSetElement:function (ippsGFpSetElement.LEndippsGFpSetElement - ippsGFpSetElement)
.Lin_ippsGFpSetElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpSetElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpSetElement]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpSetElement:
