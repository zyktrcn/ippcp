extern m7_ippsAESDecryptCBC:function
extern n8_ippsAESDecryptCBC:function
extern y8_ippsAESDecryptCBC:function
extern e9_ippsAESDecryptCBC:function
extern l9_ippsAESDecryptCBC:function
extern n0_ippsAESDecryptCBC:function
extern k0_ippsAESDecryptCBC:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESDecryptCBC
.Larraddr_ippsAESDecryptCBC:
    dq m7_ippsAESDecryptCBC
    dq n8_ippsAESDecryptCBC
    dq y8_ippsAESDecryptCBC
    dq e9_ippsAESDecryptCBC
    dq l9_ippsAESDecryptCBC
    dq n0_ippsAESDecryptCBC
    dq k0_ippsAESDecryptCBC

segment .text
global ippsAESDecryptCBC:function (ippsAESDecryptCBC.LEndippsAESDecryptCBC - ippsAESDecryptCBC)
.Lin_ippsAESDecryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESDecryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESDecryptCBC]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESDecryptCBC:
