extern m7_ippsGFpECBindGxyTblStd192r1:function
extern n8_ippsGFpECBindGxyTblStd192r1:function
extern y8_ippsGFpECBindGxyTblStd192r1:function
extern e9_ippsGFpECBindGxyTblStd192r1:function
extern l9_ippsGFpECBindGxyTblStd192r1:function
extern n0_ippsGFpECBindGxyTblStd192r1:function
extern k0_ippsGFpECBindGxyTblStd192r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECBindGxyTblStd192r1
.Larraddr_ippsGFpECBindGxyTblStd192r1:
    dq m7_ippsGFpECBindGxyTblStd192r1
    dq n8_ippsGFpECBindGxyTblStd192r1
    dq y8_ippsGFpECBindGxyTblStd192r1
    dq e9_ippsGFpECBindGxyTblStd192r1
    dq l9_ippsGFpECBindGxyTblStd192r1
    dq n0_ippsGFpECBindGxyTblStd192r1
    dq k0_ippsGFpECBindGxyTblStd192r1

segment .text
global ippsGFpECBindGxyTblStd192r1:function (ippsGFpECBindGxyTblStd192r1.LEndippsGFpECBindGxyTblStd192r1 - ippsGFpECBindGxyTblStd192r1)
.Lin_ippsGFpECBindGxyTblStd192r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECBindGxyTblStd192r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECBindGxyTblStd192r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECBindGxyTblStd192r1:
