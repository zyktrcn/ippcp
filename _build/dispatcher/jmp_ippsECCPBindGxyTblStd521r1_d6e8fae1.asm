extern m7_ippsECCPBindGxyTblStd521r1:function
extern n8_ippsECCPBindGxyTblStd521r1:function
extern y8_ippsECCPBindGxyTblStd521r1:function
extern e9_ippsECCPBindGxyTblStd521r1:function
extern l9_ippsECCPBindGxyTblStd521r1:function
extern n0_ippsECCPBindGxyTblStd521r1:function
extern k0_ippsECCPBindGxyTblStd521r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPBindGxyTblStd521r1
.Larraddr_ippsECCPBindGxyTblStd521r1:
    dq m7_ippsECCPBindGxyTblStd521r1
    dq n8_ippsECCPBindGxyTblStd521r1
    dq y8_ippsECCPBindGxyTblStd521r1
    dq e9_ippsECCPBindGxyTblStd521r1
    dq l9_ippsECCPBindGxyTblStd521r1
    dq n0_ippsECCPBindGxyTblStd521r1
    dq k0_ippsECCPBindGxyTblStd521r1

segment .text
global ippsECCPBindGxyTblStd521r1:function (ippsECCPBindGxyTblStd521r1.LEndippsECCPBindGxyTblStd521r1 - ippsECCPBindGxyTblStd521r1)
.Lin_ippsECCPBindGxyTblStd521r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPBindGxyTblStd521r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPBindGxyTblStd521r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPBindGxyTblStd521r1:
