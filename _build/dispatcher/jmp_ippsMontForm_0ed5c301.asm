extern m7_ippsMontForm:function
extern n8_ippsMontForm:function
extern y8_ippsMontForm:function
extern e9_ippsMontForm:function
extern l9_ippsMontForm:function
extern n0_ippsMontForm:function
extern k0_ippsMontForm:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMontForm
.Larraddr_ippsMontForm:
    dq m7_ippsMontForm
    dq n8_ippsMontForm
    dq y8_ippsMontForm
    dq e9_ippsMontForm
    dq l9_ippsMontForm
    dq n0_ippsMontForm
    dq k0_ippsMontForm

segment .text
global ippsMontForm:function (ippsMontForm.LEndippsMontForm - ippsMontForm)
.Lin_ippsMontForm:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMontForm:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMontForm]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMontForm:
