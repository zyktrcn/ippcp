extern m7_ippsSMS4EncryptCBC_CS2:function
extern n8_ippsSMS4EncryptCBC_CS2:function
extern y8_ippsSMS4EncryptCBC_CS2:function
extern e9_ippsSMS4EncryptCBC_CS2:function
extern l9_ippsSMS4EncryptCBC_CS2:function
extern n0_ippsSMS4EncryptCBC_CS2:function
extern k0_ippsSMS4EncryptCBC_CS2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4EncryptCBC_CS2
.Larraddr_ippsSMS4EncryptCBC_CS2:
    dq m7_ippsSMS4EncryptCBC_CS2
    dq n8_ippsSMS4EncryptCBC_CS2
    dq y8_ippsSMS4EncryptCBC_CS2
    dq e9_ippsSMS4EncryptCBC_CS2
    dq l9_ippsSMS4EncryptCBC_CS2
    dq n0_ippsSMS4EncryptCBC_CS2
    dq k0_ippsSMS4EncryptCBC_CS2

segment .text
global ippsSMS4EncryptCBC_CS2:function (ippsSMS4EncryptCBC_CS2.LEndippsSMS4EncryptCBC_CS2 - ippsSMS4EncryptCBC_CS2)
.Lin_ippsSMS4EncryptCBC_CS2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4EncryptCBC_CS2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4EncryptCBC_CS2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4EncryptCBC_CS2:
