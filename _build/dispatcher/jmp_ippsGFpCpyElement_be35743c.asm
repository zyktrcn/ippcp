extern m7_ippsGFpCpyElement:function
extern n8_ippsGFpCpyElement:function
extern y8_ippsGFpCpyElement:function
extern e9_ippsGFpCpyElement:function
extern l9_ippsGFpCpyElement:function
extern n0_ippsGFpCpyElement:function
extern k0_ippsGFpCpyElement:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpCpyElement
.Larraddr_ippsGFpCpyElement:
    dq m7_ippsGFpCpyElement
    dq n8_ippsGFpCpyElement
    dq y8_ippsGFpCpyElement
    dq e9_ippsGFpCpyElement
    dq l9_ippsGFpCpyElement
    dq n0_ippsGFpCpyElement
    dq k0_ippsGFpCpyElement

segment .text
global ippsGFpCpyElement:function (ippsGFpCpyElement.LEndippsGFpCpyElement - ippsGFpCpyElement)
.Lin_ippsGFpCpyElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpCpyElement:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpCpyElement]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpCpyElement:
