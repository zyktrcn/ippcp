extern m7_ippsAESDecryptCBC_CS3:function
extern n8_ippsAESDecryptCBC_CS3:function
extern y8_ippsAESDecryptCBC_CS3:function
extern e9_ippsAESDecryptCBC_CS3:function
extern l9_ippsAESDecryptCBC_CS3:function
extern n0_ippsAESDecryptCBC_CS3:function
extern k0_ippsAESDecryptCBC_CS3:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESDecryptCBC_CS3
.Larraddr_ippsAESDecryptCBC_CS3:
    dq m7_ippsAESDecryptCBC_CS3
    dq n8_ippsAESDecryptCBC_CS3
    dq y8_ippsAESDecryptCBC_CS3
    dq e9_ippsAESDecryptCBC_CS3
    dq l9_ippsAESDecryptCBC_CS3
    dq n0_ippsAESDecryptCBC_CS3
    dq k0_ippsAESDecryptCBC_CS3

segment .text
global ippsAESDecryptCBC_CS3:function (ippsAESDecryptCBC_CS3.LEndippsAESDecryptCBC_CS3 - ippsAESDecryptCBC_CS3)
.Lin_ippsAESDecryptCBC_CS3:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESDecryptCBC_CS3:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESDecryptCBC_CS3]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESDecryptCBC_CS3:
