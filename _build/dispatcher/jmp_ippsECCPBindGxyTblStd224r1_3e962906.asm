extern m7_ippsECCPBindGxyTblStd224r1:function
extern n8_ippsECCPBindGxyTblStd224r1:function
extern y8_ippsECCPBindGxyTblStd224r1:function
extern e9_ippsECCPBindGxyTblStd224r1:function
extern l9_ippsECCPBindGxyTblStd224r1:function
extern n0_ippsECCPBindGxyTblStd224r1:function
extern k0_ippsECCPBindGxyTblStd224r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPBindGxyTblStd224r1
.Larraddr_ippsECCPBindGxyTblStd224r1:
    dq m7_ippsECCPBindGxyTblStd224r1
    dq n8_ippsECCPBindGxyTblStd224r1
    dq y8_ippsECCPBindGxyTblStd224r1
    dq e9_ippsECCPBindGxyTblStd224r1
    dq l9_ippsECCPBindGxyTblStd224r1
    dq n0_ippsECCPBindGxyTblStd224r1
    dq k0_ippsECCPBindGxyTblStd224r1

segment .text
global ippsECCPBindGxyTblStd224r1:function (ippsECCPBindGxyTblStd224r1.LEndippsECCPBindGxyTblStd224r1 - ippsECCPBindGxyTblStd224r1)
.Lin_ippsECCPBindGxyTblStd224r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPBindGxyTblStd224r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPBindGxyTblStd224r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPBindGxyTblStd224r1:
