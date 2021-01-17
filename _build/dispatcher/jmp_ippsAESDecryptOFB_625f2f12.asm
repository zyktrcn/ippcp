extern m7_ippsAESDecryptOFB:function
extern n8_ippsAESDecryptOFB:function
extern y8_ippsAESDecryptOFB:function
extern e9_ippsAESDecryptOFB:function
extern l9_ippsAESDecryptOFB:function
extern n0_ippsAESDecryptOFB:function
extern k0_ippsAESDecryptOFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESDecryptOFB
.Larraddr_ippsAESDecryptOFB:
    dq m7_ippsAESDecryptOFB
    dq n8_ippsAESDecryptOFB
    dq y8_ippsAESDecryptOFB
    dq e9_ippsAESDecryptOFB
    dq l9_ippsAESDecryptOFB
    dq n0_ippsAESDecryptOFB
    dq k0_ippsAESDecryptOFB

segment .text
global ippsAESDecryptOFB:function (ippsAESDecryptOFB.LEndippsAESDecryptOFB - ippsAESDecryptOFB)
.Lin_ippsAESDecryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESDecryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESDecryptOFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESDecryptOFB:
