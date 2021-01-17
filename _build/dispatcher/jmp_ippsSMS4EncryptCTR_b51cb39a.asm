extern m7_ippsSMS4EncryptCTR:function
extern n8_ippsSMS4EncryptCTR:function
extern y8_ippsSMS4EncryptCTR:function
extern e9_ippsSMS4EncryptCTR:function
extern l9_ippsSMS4EncryptCTR:function
extern n0_ippsSMS4EncryptCTR:function
extern k0_ippsSMS4EncryptCTR:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4EncryptCTR
.Larraddr_ippsSMS4EncryptCTR:
    dq m7_ippsSMS4EncryptCTR
    dq n8_ippsSMS4EncryptCTR
    dq y8_ippsSMS4EncryptCTR
    dq e9_ippsSMS4EncryptCTR
    dq l9_ippsSMS4EncryptCTR
    dq n0_ippsSMS4EncryptCTR
    dq k0_ippsSMS4EncryptCTR

segment .text
global ippsSMS4EncryptCTR:function (ippsSMS4EncryptCTR.LEndippsSMS4EncryptCTR - ippsSMS4EncryptCTR)
.Lin_ippsSMS4EncryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4EncryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4EncryptCTR]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4EncryptCTR:
