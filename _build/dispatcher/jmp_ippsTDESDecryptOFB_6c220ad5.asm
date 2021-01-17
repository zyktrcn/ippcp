extern m7_ippsTDESDecryptOFB:function
extern n8_ippsTDESDecryptOFB:function
extern y8_ippsTDESDecryptOFB:function
extern e9_ippsTDESDecryptOFB:function
extern l9_ippsTDESDecryptOFB:function
extern n0_ippsTDESDecryptOFB:function
extern k0_ippsTDESDecryptOFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESDecryptOFB
.Larraddr_ippsTDESDecryptOFB:
    dq m7_ippsTDESDecryptOFB
    dq n8_ippsTDESDecryptOFB
    dq y8_ippsTDESDecryptOFB
    dq e9_ippsTDESDecryptOFB
    dq l9_ippsTDESDecryptOFB
    dq n0_ippsTDESDecryptOFB
    dq k0_ippsTDESDecryptOFB

segment .text
global ippsTDESDecryptOFB:function (ippsTDESDecryptOFB.LEndippsTDESDecryptOFB - ippsTDESDecryptOFB)
.Lin_ippsTDESDecryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESDecryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESDecryptOFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESDecryptOFB:
