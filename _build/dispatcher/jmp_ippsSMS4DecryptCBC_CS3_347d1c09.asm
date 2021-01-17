extern m7_ippsSMS4DecryptCBC_CS3:function
extern n8_ippsSMS4DecryptCBC_CS3:function
extern y8_ippsSMS4DecryptCBC_CS3:function
extern e9_ippsSMS4DecryptCBC_CS3:function
extern l9_ippsSMS4DecryptCBC_CS3:function
extern n0_ippsSMS4DecryptCBC_CS3:function
extern k0_ippsSMS4DecryptCBC_CS3:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4DecryptCBC_CS3
.Larraddr_ippsSMS4DecryptCBC_CS3:
    dq m7_ippsSMS4DecryptCBC_CS3
    dq n8_ippsSMS4DecryptCBC_CS3
    dq y8_ippsSMS4DecryptCBC_CS3
    dq e9_ippsSMS4DecryptCBC_CS3
    dq l9_ippsSMS4DecryptCBC_CS3
    dq n0_ippsSMS4DecryptCBC_CS3
    dq k0_ippsSMS4DecryptCBC_CS3

segment .text
global ippsSMS4DecryptCBC_CS3:function (ippsSMS4DecryptCBC_CS3.LEndippsSMS4DecryptCBC_CS3 - ippsSMS4DecryptCBC_CS3)
.Lin_ippsSMS4DecryptCBC_CS3:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4DecryptCBC_CS3:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4DecryptCBC_CS3]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4DecryptCBC_CS3:
