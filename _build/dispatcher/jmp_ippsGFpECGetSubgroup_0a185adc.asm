extern m7_ippsGFpECGetSubgroup:function
extern n8_ippsGFpECGetSubgroup:function
extern y8_ippsGFpECGetSubgroup:function
extern e9_ippsGFpECGetSubgroup:function
extern l9_ippsGFpECGetSubgroup:function
extern n0_ippsGFpECGetSubgroup:function
extern k0_ippsGFpECGetSubgroup:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECGetSubgroup
.Larraddr_ippsGFpECGetSubgroup:
    dq m7_ippsGFpECGetSubgroup
    dq n8_ippsGFpECGetSubgroup
    dq y8_ippsGFpECGetSubgroup
    dq e9_ippsGFpECGetSubgroup
    dq l9_ippsGFpECGetSubgroup
    dq n0_ippsGFpECGetSubgroup
    dq k0_ippsGFpECGetSubgroup

segment .text
global ippsGFpECGetSubgroup:function (ippsGFpECGetSubgroup.LEndippsGFpECGetSubgroup - ippsGFpECGetSubgroup)
.Lin_ippsGFpECGetSubgroup:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECGetSubgroup:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECGetSubgroup]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECGetSubgroup:
