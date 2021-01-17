extern m7_ippsTDESDecryptCTR:function
extern n8_ippsTDESDecryptCTR:function
extern y8_ippsTDESDecryptCTR:function
extern e9_ippsTDESDecryptCTR:function
extern l9_ippsTDESDecryptCTR:function
extern n0_ippsTDESDecryptCTR:function
extern k0_ippsTDESDecryptCTR:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESDecryptCTR
.Larraddr_ippsTDESDecryptCTR:
    dq m7_ippsTDESDecryptCTR
    dq n8_ippsTDESDecryptCTR
    dq y8_ippsTDESDecryptCTR
    dq e9_ippsTDESDecryptCTR
    dq l9_ippsTDESDecryptCTR
    dq n0_ippsTDESDecryptCTR
    dq k0_ippsTDESDecryptCTR

segment .text
global ippsTDESDecryptCTR:function (ippsTDESDecryptCTR.LEndippsTDESDecryptCTR - ippsTDESDecryptCTR)
.Lin_ippsTDESDecryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESDecryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESDecryptCTR]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESDecryptCTR:
