extern m7_ippsBigNumGetSize:function
extern n8_ippsBigNumGetSize:function
extern y8_ippsBigNumGetSize:function
extern e9_ippsBigNumGetSize:function
extern l9_ippsBigNumGetSize:function
extern n0_ippsBigNumGetSize:function
extern k0_ippsBigNumGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsBigNumGetSize
.Larraddr_ippsBigNumGetSize:
    dq m7_ippsBigNumGetSize
    dq n8_ippsBigNumGetSize
    dq y8_ippsBigNumGetSize
    dq e9_ippsBigNumGetSize
    dq l9_ippsBigNumGetSize
    dq n0_ippsBigNumGetSize
    dq k0_ippsBigNumGetSize

segment .text
global ippsBigNumGetSize:function (ippsBigNumGetSize.LEndippsBigNumGetSize - ippsBigNumGetSize)
.Lin_ippsBigNumGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsBigNumGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsBigNumGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsBigNumGetSize:
