extern m7_ippsGFpConj:function
extern n8_ippsGFpConj:function
extern y8_ippsGFpConj:function
extern e9_ippsGFpConj:function
extern l9_ippsGFpConj:function
extern n0_ippsGFpConj:function
extern k0_ippsGFpConj:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpConj
.Larraddr_ippsGFpConj:
    dq m7_ippsGFpConj
    dq n8_ippsGFpConj
    dq y8_ippsGFpConj
    dq e9_ippsGFpConj
    dq l9_ippsGFpConj
    dq n0_ippsGFpConj
    dq k0_ippsGFpConj

segment .text
global ippsGFpConj:function (ippsGFpConj.LEndippsGFpConj - ippsGFpConj)
.Lin_ippsGFpConj:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpConj:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpConj]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpConj:
