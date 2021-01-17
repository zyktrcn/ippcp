extern m7_ippsSMS4EncryptCFB:function
extern n8_ippsSMS4EncryptCFB:function
extern y8_ippsSMS4EncryptCFB:function
extern e9_ippsSMS4EncryptCFB:function
extern l9_ippsSMS4EncryptCFB:function
extern n0_ippsSMS4EncryptCFB:function
extern k0_ippsSMS4EncryptCFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4EncryptCFB
.Larraddr_ippsSMS4EncryptCFB:
    dq m7_ippsSMS4EncryptCFB
    dq n8_ippsSMS4EncryptCFB
    dq y8_ippsSMS4EncryptCFB
    dq e9_ippsSMS4EncryptCFB
    dq l9_ippsSMS4EncryptCFB
    dq n0_ippsSMS4EncryptCFB
    dq k0_ippsSMS4EncryptCFB

segment .text
global ippsSMS4EncryptCFB:function (ippsSMS4EncryptCFB.LEndippsSMS4EncryptCFB - ippsSMS4EncryptCFB)
.Lin_ippsSMS4EncryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4EncryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4EncryptCFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4EncryptCFB:
