extern m7_ippsAESDecryptECB:function
extern n8_ippsAESDecryptECB:function
extern y8_ippsAESDecryptECB:function
extern e9_ippsAESDecryptECB:function
extern l9_ippsAESDecryptECB:function
extern n0_ippsAESDecryptECB:function
extern k0_ippsAESDecryptECB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESDecryptECB
.Larraddr_ippsAESDecryptECB:
    dq m7_ippsAESDecryptECB
    dq n8_ippsAESDecryptECB
    dq y8_ippsAESDecryptECB
    dq e9_ippsAESDecryptECB
    dq l9_ippsAESDecryptECB
    dq n0_ippsAESDecryptECB
    dq k0_ippsAESDecryptECB

segment .text
global ippsAESDecryptECB:function (ippsAESDecryptECB.LEndippsAESDecryptECB - ippsAESDecryptECB)
.Lin_ippsAESDecryptECB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESDecryptECB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESDecryptECB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESDecryptECB:
