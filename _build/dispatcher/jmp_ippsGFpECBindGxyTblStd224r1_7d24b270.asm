extern m7_ippsGFpECBindGxyTblStd224r1:function
extern n8_ippsGFpECBindGxyTblStd224r1:function
extern y8_ippsGFpECBindGxyTblStd224r1:function
extern e9_ippsGFpECBindGxyTblStd224r1:function
extern l9_ippsGFpECBindGxyTblStd224r1:function
extern n0_ippsGFpECBindGxyTblStd224r1:function
extern k0_ippsGFpECBindGxyTblStd224r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECBindGxyTblStd224r1
.Larraddr_ippsGFpECBindGxyTblStd224r1:
    dq m7_ippsGFpECBindGxyTblStd224r1
    dq n8_ippsGFpECBindGxyTblStd224r1
    dq y8_ippsGFpECBindGxyTblStd224r1
    dq e9_ippsGFpECBindGxyTblStd224r1
    dq l9_ippsGFpECBindGxyTblStd224r1
    dq n0_ippsGFpECBindGxyTblStd224r1
    dq k0_ippsGFpECBindGxyTblStd224r1

segment .text
global ippsGFpECBindGxyTblStd224r1:function (ippsGFpECBindGxyTblStd224r1.LEndippsGFpECBindGxyTblStd224r1 - ippsGFpECBindGxyTblStd224r1)
.Lin_ippsGFpECBindGxyTblStd224r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECBindGxyTblStd224r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECBindGxyTblStd224r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECBindGxyTblStd224r1:
