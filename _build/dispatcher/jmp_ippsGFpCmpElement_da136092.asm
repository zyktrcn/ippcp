extern m7_ippsGFpCmpElement:function
extern n8_ippsGFpCmpElement:function
extern y8_ippsGFpCmpElement:function
extern e9_ippsGFpCmpElement:function
extern l9_ippsGFpCmpElement:function
extern n0_ippsGFpCmpElement:function
extern k0_ippsGFpCmpElement:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpCmpElement
.Larraddr_ippsGFpCmpElement:
    dq m7_ippsGFpCmpElement
    dq n8_ippsGFpCmpElement
    dq y8_ippsGFpCmpElement
    dq e9_ippsGFpCmpElement
    dq l9_ippsGFpCmpElement
    dq n0_ippsGFpCmpElement
    dq k0_ippsGFpCmpElement

segment .text
global ippsGFpCmpElement:function (ippsGFpCmpElement.LEndippsGFpCmpElement - ippsGFpCmpElement)
.Lin_ippsGFpCmpElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpCmpElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpCmpElement]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpCmpElement:
