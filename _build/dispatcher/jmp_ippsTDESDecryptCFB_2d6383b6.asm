extern m7_ippsTDESDecryptCFB:function
extern n8_ippsTDESDecryptCFB:function
extern y8_ippsTDESDecryptCFB:function
extern e9_ippsTDESDecryptCFB:function
extern l9_ippsTDESDecryptCFB:function
extern n0_ippsTDESDecryptCFB:function
extern k0_ippsTDESDecryptCFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESDecryptCFB
.Larraddr_ippsTDESDecryptCFB:
    dq m7_ippsTDESDecryptCFB
    dq n8_ippsTDESDecryptCFB
    dq y8_ippsTDESDecryptCFB
    dq e9_ippsTDESDecryptCFB
    dq l9_ippsTDESDecryptCFB
    dq n0_ippsTDESDecryptCFB
    dq k0_ippsTDESDecryptCFB

segment .text
global ippsTDESDecryptCFB:function (ippsTDESDecryptCFB.LEndippsTDESDecryptCFB - ippsTDESDecryptCFB)
.Lin_ippsTDESDecryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESDecryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESDecryptCFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESDecryptCFB:
