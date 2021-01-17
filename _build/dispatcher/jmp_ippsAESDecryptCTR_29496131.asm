extern m7_ippsAESDecryptCTR:function
extern n8_ippsAESDecryptCTR:function
extern y8_ippsAESDecryptCTR:function
extern e9_ippsAESDecryptCTR:function
extern l9_ippsAESDecryptCTR:function
extern n0_ippsAESDecryptCTR:function
extern k0_ippsAESDecryptCTR:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESDecryptCTR
.Larraddr_ippsAESDecryptCTR:
    dq m7_ippsAESDecryptCTR
    dq n8_ippsAESDecryptCTR
    dq y8_ippsAESDecryptCTR
    dq e9_ippsAESDecryptCTR
    dq l9_ippsAESDecryptCTR
    dq n0_ippsAESDecryptCTR
    dq k0_ippsAESDecryptCTR

segment .text
global ippsAESDecryptCTR:function (ippsAESDecryptCTR.LEndippsAESDecryptCTR - ippsAESDecryptCTR)
.Lin_ippsAESDecryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESDecryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESDecryptCTR]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESDecryptCTR:
