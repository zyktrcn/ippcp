extern m7_ippsTDESDecryptCBC:function
extern n8_ippsTDESDecryptCBC:function
extern y8_ippsTDESDecryptCBC:function
extern e9_ippsTDESDecryptCBC:function
extern l9_ippsTDESDecryptCBC:function
extern n0_ippsTDESDecryptCBC:function
extern k0_ippsTDESDecryptCBC:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESDecryptCBC
.Larraddr_ippsTDESDecryptCBC:
    dq m7_ippsTDESDecryptCBC
    dq n8_ippsTDESDecryptCBC
    dq y8_ippsTDESDecryptCBC
    dq e9_ippsTDESDecryptCBC
    dq l9_ippsTDESDecryptCBC
    dq n0_ippsTDESDecryptCBC
    dq k0_ippsTDESDecryptCBC

segment .text
global ippsTDESDecryptCBC:function (ippsTDESDecryptCBC.LEndippsTDESDecryptCBC - ippsTDESDecryptCBC)
.Lin_ippsTDESDecryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESDecryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESDecryptCBC]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESDecryptCBC:
