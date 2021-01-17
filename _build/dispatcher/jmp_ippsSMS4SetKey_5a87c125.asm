extern m7_ippsSMS4SetKey:function
extern n8_ippsSMS4SetKey:function
extern y8_ippsSMS4SetKey:function
extern e9_ippsSMS4SetKey:function
extern l9_ippsSMS4SetKey:function
extern n0_ippsSMS4SetKey:function
extern k0_ippsSMS4SetKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4SetKey
.Larraddr_ippsSMS4SetKey:
    dq m7_ippsSMS4SetKey
    dq n8_ippsSMS4SetKey
    dq y8_ippsSMS4SetKey
    dq e9_ippsSMS4SetKey
    dq l9_ippsSMS4SetKey
    dq n0_ippsSMS4SetKey
    dq k0_ippsSMS4SetKey

segment .text
global ippsSMS4SetKey:function (ippsSMS4SetKey.LEndippsSMS4SetKey - ippsSMS4SetKey)
.Lin_ippsSMS4SetKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4SetKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4SetKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4SetKey:
