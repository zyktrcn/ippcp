extern m7_ippsSHA384Update:function
extern n8_ippsSHA384Update:function
extern y8_ippsSHA384Update:function
extern e9_ippsSHA384Update:function
extern l9_ippsSHA384Update:function
extern n0_ippsSHA384Update:function
extern k0_ippsSHA384Update:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA384Update
.Larraddr_ippsSHA384Update:
    dq m7_ippsSHA384Update
    dq n8_ippsSHA384Update
    dq y8_ippsSHA384Update
    dq e9_ippsSHA384Update
    dq l9_ippsSHA384Update
    dq n0_ippsSHA384Update
    dq k0_ippsSHA384Update

segment .text
global ippsSHA384Update:function (ippsSHA384Update.LEndippsSHA384Update - ippsSHA384Update)
.Lin_ippsSHA384Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA384Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA384Update]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA384Update:
