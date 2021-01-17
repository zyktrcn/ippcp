extern m7_ippsSMS4_CCMStart:function
extern n8_ippsSMS4_CCMStart:function
extern y8_ippsSMS4_CCMStart:function
extern e9_ippsSMS4_CCMStart:function
extern l9_ippsSMS4_CCMStart:function
extern n0_ippsSMS4_CCMStart:function
extern k0_ippsSMS4_CCMStart:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4_CCMStart
.Larraddr_ippsSMS4_CCMStart:
    dq m7_ippsSMS4_CCMStart
    dq n8_ippsSMS4_CCMStart
    dq y8_ippsSMS4_CCMStart
    dq e9_ippsSMS4_CCMStart
    dq l9_ippsSMS4_CCMStart
    dq n0_ippsSMS4_CCMStart
    dq k0_ippsSMS4_CCMStart

segment .text
global ippsSMS4_CCMStart:function (ippsSMS4_CCMStart.LEndippsSMS4_CCMStart - ippsSMS4_CCMStart)
.Lin_ippsSMS4_CCMStart:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4_CCMStart:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4_CCMStart]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4_CCMStart:
