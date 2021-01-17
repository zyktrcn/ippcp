extern m7_ippsHashMessage:function
extern n8_ippsHashMessage:function
extern y8_ippsHashMessage:function
extern e9_ippsHashMessage:function
extern l9_ippsHashMessage:function
extern n0_ippsHashMessage:function
extern k0_ippsHashMessage:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashMessage
.Larraddr_ippsHashMessage:
    dq m7_ippsHashMessage
    dq n8_ippsHashMessage
    dq y8_ippsHashMessage
    dq e9_ippsHashMessage
    dq l9_ippsHashMessage
    dq n0_ippsHashMessage
    dq k0_ippsHashMessage

segment .text
global ippsHashMessage:function (ippsHashMessage.LEndippsHashMessage - ippsHashMessage)
.Lin_ippsHashMessage:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashMessage:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashMessage]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashMessage:
