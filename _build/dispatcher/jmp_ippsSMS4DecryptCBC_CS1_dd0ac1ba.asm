extern m7_ippsSMS4DecryptCBC_CS1:function
extern n8_ippsSMS4DecryptCBC_CS1:function
extern y8_ippsSMS4DecryptCBC_CS1:function
extern e9_ippsSMS4DecryptCBC_CS1:function
extern l9_ippsSMS4DecryptCBC_CS1:function
extern n0_ippsSMS4DecryptCBC_CS1:function
extern k0_ippsSMS4DecryptCBC_CS1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4DecryptCBC_CS1
.Larraddr_ippsSMS4DecryptCBC_CS1:
    dq m7_ippsSMS4DecryptCBC_CS1
    dq n8_ippsSMS4DecryptCBC_CS1
    dq y8_ippsSMS4DecryptCBC_CS1
    dq e9_ippsSMS4DecryptCBC_CS1
    dq l9_ippsSMS4DecryptCBC_CS1
    dq n0_ippsSMS4DecryptCBC_CS1
    dq k0_ippsSMS4DecryptCBC_CS1

segment .text
global ippsSMS4DecryptCBC_CS1:function (ippsSMS4DecryptCBC_CS1.LEndippsSMS4DecryptCBC_CS1 - ippsSMS4DecryptCBC_CS1)
.Lin_ippsSMS4DecryptCBC_CS1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4DecryptCBC_CS1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4DecryptCBC_CS1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4DecryptCBC_CS1:
