extern m7_ippsSMS4_CCMGetTag:function
extern n8_ippsSMS4_CCMGetTag:function
extern y8_ippsSMS4_CCMGetTag:function
extern e9_ippsSMS4_CCMGetTag:function
extern l9_ippsSMS4_CCMGetTag:function
extern n0_ippsSMS4_CCMGetTag:function
extern k0_ippsSMS4_CCMGetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4_CCMGetTag
.Larraddr_ippsSMS4_CCMGetTag:
    dq m7_ippsSMS4_CCMGetTag
    dq n8_ippsSMS4_CCMGetTag
    dq y8_ippsSMS4_CCMGetTag
    dq e9_ippsSMS4_CCMGetTag
    dq l9_ippsSMS4_CCMGetTag
    dq n0_ippsSMS4_CCMGetTag
    dq k0_ippsSMS4_CCMGetTag

segment .text
global ippsSMS4_CCMGetTag:function (ippsSMS4_CCMGetTag.LEndippsSMS4_CCMGetTag - ippsSMS4_CCMGetTag)
.Lin_ippsSMS4_CCMGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4_CCMGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4_CCMGetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4_CCMGetTag:
