extern m7_ippsECCPBindGxyTblStdSM2:function
extern n8_ippsECCPBindGxyTblStdSM2:function
extern y8_ippsECCPBindGxyTblStdSM2:function
extern e9_ippsECCPBindGxyTblStdSM2:function
extern l9_ippsECCPBindGxyTblStdSM2:function
extern n0_ippsECCPBindGxyTblStdSM2:function
extern k0_ippsECCPBindGxyTblStdSM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPBindGxyTblStdSM2
.Larraddr_ippsECCPBindGxyTblStdSM2:
    dq m7_ippsECCPBindGxyTblStdSM2
    dq n8_ippsECCPBindGxyTblStdSM2
    dq y8_ippsECCPBindGxyTblStdSM2
    dq e9_ippsECCPBindGxyTblStdSM2
    dq l9_ippsECCPBindGxyTblStdSM2
    dq n0_ippsECCPBindGxyTblStdSM2
    dq k0_ippsECCPBindGxyTblStdSM2

segment .text
global ippsECCPBindGxyTblStdSM2:function (ippsECCPBindGxyTblStdSM2.LEndippsECCPBindGxyTblStdSM2 - ippsECCPBindGxyTblStdSM2)
.Lin_ippsECCPBindGxyTblStdSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPBindGxyTblStdSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPBindGxyTblStdSM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPBindGxyTblStdSM2:
