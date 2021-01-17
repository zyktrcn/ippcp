extern m7_ippsSMS4_CCMGetSize:function
extern n8_ippsSMS4_CCMGetSize:function
extern y8_ippsSMS4_CCMGetSize:function
extern e9_ippsSMS4_CCMGetSize:function
extern l9_ippsSMS4_CCMGetSize:function
extern n0_ippsSMS4_CCMGetSize:function
extern k0_ippsSMS4_CCMGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4_CCMGetSize
.Larraddr_ippsSMS4_CCMGetSize:
    dq m7_ippsSMS4_CCMGetSize
    dq n8_ippsSMS4_CCMGetSize
    dq y8_ippsSMS4_CCMGetSize
    dq e9_ippsSMS4_CCMGetSize
    dq l9_ippsSMS4_CCMGetSize
    dq n0_ippsSMS4_CCMGetSize
    dq k0_ippsSMS4_CCMGetSize

segment .text
global ippsSMS4_CCMGetSize:function (ippsSMS4_CCMGetSize.LEndippsSMS4_CCMGetSize - ippsSMS4_CCMGetSize)
.Lin_ippsSMS4_CCMGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4_CCMGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4_CCMGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4_CCMGetSize:
