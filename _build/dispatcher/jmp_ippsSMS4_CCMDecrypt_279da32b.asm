extern m7_ippsSMS4_CCMDecrypt:function
extern n8_ippsSMS4_CCMDecrypt:function
extern y8_ippsSMS4_CCMDecrypt:function
extern e9_ippsSMS4_CCMDecrypt:function
extern l9_ippsSMS4_CCMDecrypt:function
extern n0_ippsSMS4_CCMDecrypt:function
extern k0_ippsSMS4_CCMDecrypt:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4_CCMDecrypt
.Larraddr_ippsSMS4_CCMDecrypt:
    dq m7_ippsSMS4_CCMDecrypt
    dq n8_ippsSMS4_CCMDecrypt
    dq y8_ippsSMS4_CCMDecrypt
    dq e9_ippsSMS4_CCMDecrypt
    dq l9_ippsSMS4_CCMDecrypt
    dq n0_ippsSMS4_CCMDecrypt
    dq k0_ippsSMS4_CCMDecrypt

segment .text
global ippsSMS4_CCMDecrypt:function (ippsSMS4_CCMDecrypt.LEndippsSMS4_CCMDecrypt - ippsSMS4_CCMDecrypt)
.Lin_ippsSMS4_CCMDecrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4_CCMDecrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4_CCMDecrypt]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4_CCMDecrypt:
