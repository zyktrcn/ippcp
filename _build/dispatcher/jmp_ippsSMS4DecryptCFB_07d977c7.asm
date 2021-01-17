extern m7_ippsSMS4DecryptCFB:function
extern n8_ippsSMS4DecryptCFB:function
extern y8_ippsSMS4DecryptCFB:function
extern e9_ippsSMS4DecryptCFB:function
extern l9_ippsSMS4DecryptCFB:function
extern n0_ippsSMS4DecryptCFB:function
extern k0_ippsSMS4DecryptCFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4DecryptCFB
.Larraddr_ippsSMS4DecryptCFB:
    dq m7_ippsSMS4DecryptCFB
    dq n8_ippsSMS4DecryptCFB
    dq y8_ippsSMS4DecryptCFB
    dq e9_ippsSMS4DecryptCFB
    dq l9_ippsSMS4DecryptCFB
    dq n0_ippsSMS4DecryptCFB
    dq k0_ippsSMS4DecryptCFB

segment .text
global ippsSMS4DecryptCFB:function (ippsSMS4DecryptCFB.LEndippsSMS4DecryptCFB - ippsSMS4DecryptCFB)
.Lin_ippsSMS4DecryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4DecryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4DecryptCFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4DecryptCFB:
