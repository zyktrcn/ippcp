extern m7_ippsHMAC_Message:function
extern n8_ippsHMAC_Message:function
extern y8_ippsHMAC_Message:function
extern e9_ippsHMAC_Message:function
extern l9_ippsHMAC_Message:function
extern n0_ippsHMAC_Message:function
extern k0_ippsHMAC_Message:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMAC_Message
.Larraddr_ippsHMAC_Message:
    dq m7_ippsHMAC_Message
    dq n8_ippsHMAC_Message
    dq y8_ippsHMAC_Message
    dq e9_ippsHMAC_Message
    dq l9_ippsHMAC_Message
    dq n0_ippsHMAC_Message
    dq k0_ippsHMAC_Message

segment .text
global ippsHMAC_Message:function (ippsHMAC_Message.LEndippsHMAC_Message - ippsHMAC_Message)
.Lin_ippsHMAC_Message:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMAC_Message:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMAC_Message]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMAC_Message:
