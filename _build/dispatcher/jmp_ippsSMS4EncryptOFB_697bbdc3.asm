extern m7_ippsSMS4EncryptOFB:function
extern n8_ippsSMS4EncryptOFB:function
extern y8_ippsSMS4EncryptOFB:function
extern e9_ippsSMS4EncryptOFB:function
extern l9_ippsSMS4EncryptOFB:function
extern n0_ippsSMS4EncryptOFB:function
extern k0_ippsSMS4EncryptOFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4EncryptOFB
.Larraddr_ippsSMS4EncryptOFB:
    dq m7_ippsSMS4EncryptOFB
    dq n8_ippsSMS4EncryptOFB
    dq y8_ippsSMS4EncryptOFB
    dq e9_ippsSMS4EncryptOFB
    dq l9_ippsSMS4EncryptOFB
    dq n0_ippsSMS4EncryptOFB
    dq k0_ippsSMS4EncryptOFB

segment .text
global ippsSMS4EncryptOFB:function (ippsSMS4EncryptOFB.LEndippsSMS4EncryptOFB - ippsSMS4EncryptOFB)
.Lin_ippsSMS4EncryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4EncryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4EncryptOFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4EncryptOFB:
