extern m7_ippsDESGetSize:function
extern n8_ippsDESGetSize:function
extern y8_ippsDESGetSize:function
extern e9_ippsDESGetSize:function
extern l9_ippsDESGetSize:function
extern n0_ippsDESGetSize:function
extern k0_ippsDESGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDESGetSize
.Larraddr_ippsDESGetSize:
    dq m7_ippsDESGetSize
    dq n8_ippsDESGetSize
    dq y8_ippsDESGetSize
    dq e9_ippsDESGetSize
    dq l9_ippsDESGetSize
    dq n0_ippsDESGetSize
    dq k0_ippsDESGetSize

segment .text
global ippsDESGetSize:function (ippsDESGetSize.LEndippsDESGetSize - ippsDESGetSize)
.Lin_ippsDESGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDESGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDESGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDESGetSize:
