extern m7_ippsTDESDecryptECB:function
extern n8_ippsTDESDecryptECB:function
extern y8_ippsTDESDecryptECB:function
extern e9_ippsTDESDecryptECB:function
extern l9_ippsTDESDecryptECB:function
extern n0_ippsTDESDecryptECB:function
extern k0_ippsTDESDecryptECB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESDecryptECB
.Larraddr_ippsTDESDecryptECB:
    dq m7_ippsTDESDecryptECB
    dq n8_ippsTDESDecryptECB
    dq y8_ippsTDESDecryptECB
    dq e9_ippsTDESDecryptECB
    dq l9_ippsTDESDecryptECB
    dq n0_ippsTDESDecryptECB
    dq k0_ippsTDESDecryptECB

segment .text
global ippsTDESDecryptECB:function (ippsTDESDecryptECB.LEndippsTDESDecryptECB - ippsTDESDecryptECB)
.Lin_ippsTDESDecryptECB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESDecryptECB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESDecryptECB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESDecryptECB:
