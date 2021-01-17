extern m7_ippsDLPGet:function
extern n8_ippsDLPGet:function
extern y8_ippsDLPGet:function
extern e9_ippsDLPGet:function
extern l9_ippsDLPGet:function
extern n0_ippsDLPGet:function
extern k0_ippsDLPGet:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPGet
.Larraddr_ippsDLPGet:
    dq m7_ippsDLPGet
    dq n8_ippsDLPGet
    dq y8_ippsDLPGet
    dq e9_ippsDLPGet
    dq l9_ippsDLPGet
    dq n0_ippsDLPGet
    dq k0_ippsDLPGet

segment .text
global ippsDLPGet:function (ippsDLPGet.LEndippsDLPGet - ippsDLPGet)
.Lin_ippsDLPGet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPGet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPGet]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPGet:
