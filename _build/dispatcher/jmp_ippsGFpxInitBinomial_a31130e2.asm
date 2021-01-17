extern m7_ippsGFpxInitBinomial:function
extern n8_ippsGFpxInitBinomial:function
extern y8_ippsGFpxInitBinomial:function
extern e9_ippsGFpxInitBinomial:function
extern l9_ippsGFpxInitBinomial:function
extern n0_ippsGFpxInitBinomial:function
extern k0_ippsGFpxInitBinomial:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpxInitBinomial
.Larraddr_ippsGFpxInitBinomial:
    dq m7_ippsGFpxInitBinomial
    dq n8_ippsGFpxInitBinomial
    dq y8_ippsGFpxInitBinomial
    dq e9_ippsGFpxInitBinomial
    dq l9_ippsGFpxInitBinomial
    dq n0_ippsGFpxInitBinomial
    dq k0_ippsGFpxInitBinomial

segment .text
global ippsGFpxInitBinomial:function (ippsGFpxInitBinomial.LEndippsGFpxInitBinomial - ippsGFpxInitBinomial)
.Lin_ippsGFpxInitBinomial:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpxInitBinomial:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpxInitBinomial]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpxInitBinomial:
