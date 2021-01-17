extern m7_ippsDLGetResultString:function
extern n8_ippsDLGetResultString:function
extern y8_ippsDLGetResultString:function
extern e9_ippsDLGetResultString:function
extern l9_ippsDLGetResultString:function
extern n0_ippsDLGetResultString:function
extern k0_ippsDLGetResultString:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLGetResultString
.Larraddr_ippsDLGetResultString:
    dq m7_ippsDLGetResultString
    dq n8_ippsDLGetResultString
    dq y8_ippsDLGetResultString
    dq e9_ippsDLGetResultString
    dq l9_ippsDLGetResultString
    dq n0_ippsDLGetResultString
    dq k0_ippsDLGetResultString

segment .text
global ippsDLGetResultString:function (ippsDLGetResultString.LEndippsDLGetResultString - ippsDLGetResultString)
.Lin_ippsDLGetResultString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLGetResultString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLGetResultString]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLGetResultString:
