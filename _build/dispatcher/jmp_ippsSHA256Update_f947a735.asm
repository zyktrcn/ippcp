extern m7_ippsSHA256Update:function
extern n8_ippsSHA256Update:function
extern y8_ippsSHA256Update:function
extern e9_ippsSHA256Update:function
extern l9_ippsSHA256Update:function
extern n0_ippsSHA256Update:function
extern k0_ippsSHA256Update:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA256Update
.Larraddr_ippsSHA256Update:
    dq m7_ippsSHA256Update
    dq n8_ippsSHA256Update
    dq y8_ippsSHA256Update
    dq e9_ippsSHA256Update
    dq l9_ippsSHA256Update
    dq n0_ippsSHA256Update
    dq k0_ippsSHA256Update

segment .text
global ippsSHA256Update:function (ippsSHA256Update.LEndippsSHA256Update - ippsSHA256Update)
.Lin_ippsSHA256Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA256Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA256Update]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA256Update:
