extern m7_ippsGFpECBindGxyTblStdSM2:function
extern n8_ippsGFpECBindGxyTblStdSM2:function
extern y8_ippsGFpECBindGxyTblStdSM2:function
extern e9_ippsGFpECBindGxyTblStdSM2:function
extern l9_ippsGFpECBindGxyTblStdSM2:function
extern n0_ippsGFpECBindGxyTblStdSM2:function
extern k0_ippsGFpECBindGxyTblStdSM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECBindGxyTblStdSM2
.Larraddr_ippsGFpECBindGxyTblStdSM2:
    dq m7_ippsGFpECBindGxyTblStdSM2
    dq n8_ippsGFpECBindGxyTblStdSM2
    dq y8_ippsGFpECBindGxyTblStdSM2
    dq e9_ippsGFpECBindGxyTblStdSM2
    dq l9_ippsGFpECBindGxyTblStdSM2
    dq n0_ippsGFpECBindGxyTblStdSM2
    dq k0_ippsGFpECBindGxyTblStdSM2

segment .text
global ippsGFpECBindGxyTblStdSM2:function (ippsGFpECBindGxyTblStdSM2.LEndippsGFpECBindGxyTblStdSM2 - ippsGFpECBindGxyTblStdSM2)
.Lin_ippsGFpECBindGxyTblStdSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECBindGxyTblStdSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECBindGxyTblStdSM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECBindGxyTblStdSM2:
