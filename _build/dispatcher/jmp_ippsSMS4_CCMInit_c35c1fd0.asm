extern m7_ippsSMS4_CCMInit:function
extern n8_ippsSMS4_CCMInit:function
extern y8_ippsSMS4_CCMInit:function
extern e9_ippsSMS4_CCMInit:function
extern l9_ippsSMS4_CCMInit:function
extern n0_ippsSMS4_CCMInit:function
extern k0_ippsSMS4_CCMInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4_CCMInit
.Larraddr_ippsSMS4_CCMInit:
    dq m7_ippsSMS4_CCMInit
    dq n8_ippsSMS4_CCMInit
    dq y8_ippsSMS4_CCMInit
    dq e9_ippsSMS4_CCMInit
    dq l9_ippsSMS4_CCMInit
    dq n0_ippsSMS4_CCMInit
    dq k0_ippsSMS4_CCMInit

segment .text
global ippsSMS4_CCMInit:function (ippsSMS4_CCMInit.LEndippsSMS4_CCMInit - ippsSMS4_CCMInit)
.Lin_ippsSMS4_CCMInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4_CCMInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4_CCMInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4_CCMInit:
