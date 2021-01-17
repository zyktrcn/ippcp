extern m7_ippsECCPBindGxyTblStd256r1:function
extern n8_ippsECCPBindGxyTblStd256r1:function
extern y8_ippsECCPBindGxyTblStd256r1:function
extern e9_ippsECCPBindGxyTblStd256r1:function
extern l9_ippsECCPBindGxyTblStd256r1:function
extern n0_ippsECCPBindGxyTblStd256r1:function
extern k0_ippsECCPBindGxyTblStd256r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPBindGxyTblStd256r1
.Larraddr_ippsECCPBindGxyTblStd256r1:
    dq m7_ippsECCPBindGxyTblStd256r1
    dq n8_ippsECCPBindGxyTblStd256r1
    dq y8_ippsECCPBindGxyTblStd256r1
    dq e9_ippsECCPBindGxyTblStd256r1
    dq l9_ippsECCPBindGxyTblStd256r1
    dq n0_ippsECCPBindGxyTblStd256r1
    dq k0_ippsECCPBindGxyTblStd256r1

segment .text
global ippsECCPBindGxyTblStd256r1:function (ippsECCPBindGxyTblStd256r1.LEndippsECCPBindGxyTblStd256r1 - ippsECCPBindGxyTblStd256r1)
.Lin_ippsECCPBindGxyTblStd256r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPBindGxyTblStd256r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPBindGxyTblStd256r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPBindGxyTblStd256r1:
