extern m7_ippsDLPGenKeyPair:function
extern n8_ippsDLPGenKeyPair:function
extern y8_ippsDLPGenKeyPair:function
extern e9_ippsDLPGenKeyPair:function
extern l9_ippsDLPGenKeyPair:function
extern n0_ippsDLPGenKeyPair:function
extern k0_ippsDLPGenKeyPair:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPGenKeyPair
.Larraddr_ippsDLPGenKeyPair:
    dq m7_ippsDLPGenKeyPair
    dq n8_ippsDLPGenKeyPair
    dq y8_ippsDLPGenKeyPair
    dq e9_ippsDLPGenKeyPair
    dq l9_ippsDLPGenKeyPair
    dq n0_ippsDLPGenKeyPair
    dq k0_ippsDLPGenKeyPair

segment .text
global ippsDLPGenKeyPair:function (ippsDLPGenKeyPair.LEndippsDLPGenKeyPair - ippsDLPGenKeyPair)
.Lin_ippsDLPGenKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPGenKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPGenKeyPair]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPGenKeyPair:
