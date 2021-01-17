extern m7_ippsDLPGetDP:function
extern n8_ippsDLPGetDP:function
extern y8_ippsDLPGetDP:function
extern e9_ippsDLPGetDP:function
extern l9_ippsDLPGetDP:function
extern n0_ippsDLPGetDP:function
extern k0_ippsDLPGetDP:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPGetDP
.Larraddr_ippsDLPGetDP:
    dq m7_ippsDLPGetDP
    dq n8_ippsDLPGetDP
    dq y8_ippsDLPGetDP
    dq e9_ippsDLPGetDP
    dq l9_ippsDLPGetDP
    dq n0_ippsDLPGetDP
    dq k0_ippsDLPGetDP

segment .text
global ippsDLPGetDP:function (ippsDLPGetDP.LEndippsDLPGetDP - ippsDLPGetDP)
.Lin_ippsDLPGetDP:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPGetDP:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPGetDP]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPGetDP:
