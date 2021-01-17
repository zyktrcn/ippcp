extern m7_ippsAESDecryptCFB:function
extern n8_ippsAESDecryptCFB:function
extern y8_ippsAESDecryptCFB:function
extern e9_ippsAESDecryptCFB:function
extern l9_ippsAESDecryptCFB:function
extern n0_ippsAESDecryptCFB:function
extern k0_ippsAESDecryptCFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESDecryptCFB
.Larraddr_ippsAESDecryptCFB:
    dq m7_ippsAESDecryptCFB
    dq n8_ippsAESDecryptCFB
    dq y8_ippsAESDecryptCFB
    dq e9_ippsAESDecryptCFB
    dq l9_ippsAESDecryptCFB
    dq n0_ippsAESDecryptCFB
    dq k0_ippsAESDecryptCFB

segment .text
global ippsAESDecryptCFB:function (ippsAESDecryptCFB.LEndippsAESDecryptCFB - ippsAESDecryptCFB)
.Lin_ippsAESDecryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESDecryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESDecryptCFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESDecryptCFB:
