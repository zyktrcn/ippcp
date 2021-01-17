extern m7_ippsSHA384Pack:function
extern n8_ippsSHA384Pack:function
extern y8_ippsSHA384Pack:function
extern e9_ippsSHA384Pack:function
extern l9_ippsSHA384Pack:function
extern n0_ippsSHA384Pack:function
extern k0_ippsSHA384Pack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA384Pack
.Larraddr_ippsSHA384Pack:
    dq m7_ippsSHA384Pack
    dq n8_ippsSHA384Pack
    dq y8_ippsSHA384Pack
    dq e9_ippsSHA384Pack
    dq l9_ippsSHA384Pack
    dq n0_ippsSHA384Pack
    dq k0_ippsSHA384Pack

segment .text
global ippsSHA384Pack:function (ippsSHA384Pack.LEndippsSHA384Pack - ippsSHA384Pack)
.Lin_ippsSHA384Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA384Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA384Pack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA384Pack:
