extern m7_ippsSM3Update:function
extern n8_ippsSM3Update:function
extern y8_ippsSM3Update:function
extern e9_ippsSM3Update:function
extern l9_ippsSM3Update:function
extern n0_ippsSM3Update:function
extern k0_ippsSM3Update:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSM3Update
.Larraddr_ippsSM3Update:
    dq m7_ippsSM3Update
    dq n8_ippsSM3Update
    dq y8_ippsSM3Update
    dq e9_ippsSM3Update
    dq l9_ippsSM3Update
    dq n0_ippsSM3Update
    dq k0_ippsSM3Update

segment .text
global ippsSM3Update:function (ippsSM3Update.LEndippsSM3Update - ippsSM3Update)
.Lin_ippsSM3Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSM3Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSM3Update]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSM3Update:
