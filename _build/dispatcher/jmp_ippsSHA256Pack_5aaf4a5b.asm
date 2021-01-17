extern m7_ippsSHA256Pack:function
extern n8_ippsSHA256Pack:function
extern y8_ippsSHA256Pack:function
extern e9_ippsSHA256Pack:function
extern l9_ippsSHA256Pack:function
extern n0_ippsSHA256Pack:function
extern k0_ippsSHA256Pack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA256Pack
.Larraddr_ippsSHA256Pack:
    dq m7_ippsSHA256Pack
    dq n8_ippsSHA256Pack
    dq y8_ippsSHA256Pack
    dq e9_ippsSHA256Pack
    dq l9_ippsSHA256Pack
    dq n0_ippsSHA256Pack
    dq k0_ippsSHA256Pack

segment .text
global ippsSHA256Pack:function (ippsSHA256Pack.LEndippsSHA256Pack - ippsSHA256Pack)
.Lin_ippsSHA256Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA256Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA256Pack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA256Pack:
