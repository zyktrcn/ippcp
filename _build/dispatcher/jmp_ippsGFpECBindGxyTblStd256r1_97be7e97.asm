extern m7_ippsGFpECBindGxyTblStd256r1:function
extern n8_ippsGFpECBindGxyTblStd256r1:function
extern y8_ippsGFpECBindGxyTblStd256r1:function
extern e9_ippsGFpECBindGxyTblStd256r1:function
extern l9_ippsGFpECBindGxyTblStd256r1:function
extern n0_ippsGFpECBindGxyTblStd256r1:function
extern k0_ippsGFpECBindGxyTblStd256r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECBindGxyTblStd256r1
.Larraddr_ippsGFpECBindGxyTblStd256r1:
    dq m7_ippsGFpECBindGxyTblStd256r1
    dq n8_ippsGFpECBindGxyTblStd256r1
    dq y8_ippsGFpECBindGxyTblStd256r1
    dq e9_ippsGFpECBindGxyTblStd256r1
    dq l9_ippsGFpECBindGxyTblStd256r1
    dq n0_ippsGFpECBindGxyTblStd256r1
    dq k0_ippsGFpECBindGxyTblStd256r1

segment .text
global ippsGFpECBindGxyTblStd256r1:function (ippsGFpECBindGxyTblStd256r1.LEndippsGFpECBindGxyTblStd256r1 - ippsGFpECBindGxyTblStd256r1)
.Lin_ippsGFpECBindGxyTblStd256r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECBindGxyTblStd256r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECBindGxyTblStd256r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECBindGxyTblStd256r1:
