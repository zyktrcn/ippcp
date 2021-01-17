extern m7_ippsSMS4DecryptCBC:function
extern n8_ippsSMS4DecryptCBC:function
extern y8_ippsSMS4DecryptCBC:function
extern e9_ippsSMS4DecryptCBC:function
extern l9_ippsSMS4DecryptCBC:function
extern n0_ippsSMS4DecryptCBC:function
extern k0_ippsSMS4DecryptCBC:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4DecryptCBC
.Larraddr_ippsSMS4DecryptCBC:
    dq m7_ippsSMS4DecryptCBC
    dq n8_ippsSMS4DecryptCBC
    dq y8_ippsSMS4DecryptCBC
    dq e9_ippsSMS4DecryptCBC
    dq l9_ippsSMS4DecryptCBC
    dq n0_ippsSMS4DecryptCBC
    dq k0_ippsSMS4DecryptCBC

segment .text
global ippsSMS4DecryptCBC:function (ippsSMS4DecryptCBC.LEndippsSMS4DecryptCBC - ippsSMS4DecryptCBC)
.Lin_ippsSMS4DecryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4DecryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4DecryptCBC]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4DecryptCBC:
