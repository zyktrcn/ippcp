extern m7_ippsGFpECBindGxyTblStd384r1:function
extern n8_ippsGFpECBindGxyTblStd384r1:function
extern y8_ippsGFpECBindGxyTblStd384r1:function
extern e9_ippsGFpECBindGxyTblStd384r1:function
extern l9_ippsGFpECBindGxyTblStd384r1:function
extern n0_ippsGFpECBindGxyTblStd384r1:function
extern k0_ippsGFpECBindGxyTblStd384r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECBindGxyTblStd384r1
.Larraddr_ippsGFpECBindGxyTblStd384r1:
    dq m7_ippsGFpECBindGxyTblStd384r1
    dq n8_ippsGFpECBindGxyTblStd384r1
    dq y8_ippsGFpECBindGxyTblStd384r1
    dq e9_ippsGFpECBindGxyTblStd384r1
    dq l9_ippsGFpECBindGxyTblStd384r1
    dq n0_ippsGFpECBindGxyTblStd384r1
    dq k0_ippsGFpECBindGxyTblStd384r1

segment .text
global ippsGFpECBindGxyTblStd384r1:function (ippsGFpECBindGxyTblStd384r1.LEndippsGFpECBindGxyTblStd384r1 - ippsGFpECBindGxyTblStd384r1)
.Lin_ippsGFpECBindGxyTblStd384r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECBindGxyTblStd384r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECBindGxyTblStd384r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECBindGxyTblStd384r1:
