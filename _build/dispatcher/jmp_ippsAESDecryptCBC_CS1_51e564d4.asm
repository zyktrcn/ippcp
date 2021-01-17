extern m7_ippsAESDecryptCBC_CS1:function
extern n8_ippsAESDecryptCBC_CS1:function
extern y8_ippsAESDecryptCBC_CS1:function
extern e9_ippsAESDecryptCBC_CS1:function
extern l9_ippsAESDecryptCBC_CS1:function
extern n0_ippsAESDecryptCBC_CS1:function
extern k0_ippsAESDecryptCBC_CS1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESDecryptCBC_CS1
.Larraddr_ippsAESDecryptCBC_CS1:
    dq m7_ippsAESDecryptCBC_CS1
    dq n8_ippsAESDecryptCBC_CS1
    dq y8_ippsAESDecryptCBC_CS1
    dq e9_ippsAESDecryptCBC_CS1
    dq l9_ippsAESDecryptCBC_CS1
    dq n0_ippsAESDecryptCBC_CS1
    dq k0_ippsAESDecryptCBC_CS1

segment .text
global ippsAESDecryptCBC_CS1:function (ippsAESDecryptCBC_CS1.LEndippsAESDecryptCBC_CS1 - ippsAESDecryptCBC_CS1)
.Lin_ippsAESDecryptCBC_CS1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESDecryptCBC_CS1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESDecryptCBC_CS1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESDecryptCBC_CS1:
