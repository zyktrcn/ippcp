extern m7_ippsSMS4DecryptOFB:function
extern n8_ippsSMS4DecryptOFB:function
extern y8_ippsSMS4DecryptOFB:function
extern e9_ippsSMS4DecryptOFB:function
extern l9_ippsSMS4DecryptOFB:function
extern n0_ippsSMS4DecryptOFB:function
extern k0_ippsSMS4DecryptOFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4DecryptOFB
.Larraddr_ippsSMS4DecryptOFB:
    dq m7_ippsSMS4DecryptOFB
    dq n8_ippsSMS4DecryptOFB
    dq y8_ippsSMS4DecryptOFB
    dq e9_ippsSMS4DecryptOFB
    dq l9_ippsSMS4DecryptOFB
    dq n0_ippsSMS4DecryptOFB
    dq k0_ippsSMS4DecryptOFB

segment .text
global ippsSMS4DecryptOFB:function (ippsSMS4DecryptOFB.LEndippsSMS4DecryptOFB - ippsSMS4DecryptOFB)
.Lin_ippsSMS4DecryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4DecryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4DecryptOFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4DecryptOFB:
