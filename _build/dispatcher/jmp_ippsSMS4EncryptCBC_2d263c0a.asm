extern m7_ippsSMS4EncryptCBC:function
extern n8_ippsSMS4EncryptCBC:function
extern y8_ippsSMS4EncryptCBC:function
extern e9_ippsSMS4EncryptCBC:function
extern l9_ippsSMS4EncryptCBC:function
extern n0_ippsSMS4EncryptCBC:function
extern k0_ippsSMS4EncryptCBC:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4EncryptCBC
.Larraddr_ippsSMS4EncryptCBC:
    dq m7_ippsSMS4EncryptCBC
    dq n8_ippsSMS4EncryptCBC
    dq y8_ippsSMS4EncryptCBC
    dq e9_ippsSMS4EncryptCBC
    dq l9_ippsSMS4EncryptCBC
    dq n0_ippsSMS4EncryptCBC
    dq k0_ippsSMS4EncryptCBC

segment .text
global ippsSMS4EncryptCBC:function (ippsSMS4EncryptCBC.LEndippsSMS4EncryptCBC - ippsSMS4EncryptCBC)
.Lin_ippsSMS4EncryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4EncryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4EncryptCBC]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4EncryptCBC:
