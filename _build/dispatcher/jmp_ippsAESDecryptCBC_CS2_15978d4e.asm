extern m7_ippsAESDecryptCBC_CS2:function
extern n8_ippsAESDecryptCBC_CS2:function
extern y8_ippsAESDecryptCBC_CS2:function
extern e9_ippsAESDecryptCBC_CS2:function
extern l9_ippsAESDecryptCBC_CS2:function
extern n0_ippsAESDecryptCBC_CS2:function
extern k0_ippsAESDecryptCBC_CS2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESDecryptCBC_CS2
.Larraddr_ippsAESDecryptCBC_CS2:
    dq m7_ippsAESDecryptCBC_CS2
    dq n8_ippsAESDecryptCBC_CS2
    dq y8_ippsAESDecryptCBC_CS2
    dq e9_ippsAESDecryptCBC_CS2
    dq l9_ippsAESDecryptCBC_CS2
    dq n0_ippsAESDecryptCBC_CS2
    dq k0_ippsAESDecryptCBC_CS2

segment .text
global ippsAESDecryptCBC_CS2:function (ippsAESDecryptCBC_CS2.LEndippsAESDecryptCBC_CS2 - ippsAESDecryptCBC_CS2)
.Lin_ippsAESDecryptCBC_CS2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESDecryptCBC_CS2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESDecryptCBC_CS2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESDecryptCBC_CS2:
