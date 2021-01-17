extern m7_ippsTDESEncryptCTR:function
extern n8_ippsTDESEncryptCTR:function
extern y8_ippsTDESEncryptCTR:function
extern e9_ippsTDESEncryptCTR:function
extern l9_ippsTDESEncryptCTR:function
extern n0_ippsTDESEncryptCTR:function
extern k0_ippsTDESEncryptCTR:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESEncryptCTR
.Larraddr_ippsTDESEncryptCTR:
    dq m7_ippsTDESEncryptCTR
    dq n8_ippsTDESEncryptCTR
    dq y8_ippsTDESEncryptCTR
    dq e9_ippsTDESEncryptCTR
    dq l9_ippsTDESEncryptCTR
    dq n0_ippsTDESEncryptCTR
    dq k0_ippsTDESEncryptCTR

segment .text
global ippsTDESEncryptCTR:function (ippsTDESEncryptCTR.LEndippsTDESEncryptCTR - ippsTDESEncryptCTR)
.Lin_ippsTDESEncryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESEncryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESEncryptCTR]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESEncryptCTR:
