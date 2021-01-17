extern m7_ippsGFpECSetSubgroup:function
extern n8_ippsGFpECSetSubgroup:function
extern y8_ippsGFpECSetSubgroup:function
extern e9_ippsGFpECSetSubgroup:function
extern l9_ippsGFpECSetSubgroup:function
extern n0_ippsGFpECSetSubgroup:function
extern k0_ippsGFpECSetSubgroup:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSetSubgroup
.Larraddr_ippsGFpECSetSubgroup:
    dq m7_ippsGFpECSetSubgroup
    dq n8_ippsGFpECSetSubgroup
    dq y8_ippsGFpECSetSubgroup
    dq e9_ippsGFpECSetSubgroup
    dq l9_ippsGFpECSetSubgroup
    dq n0_ippsGFpECSetSubgroup
    dq k0_ippsGFpECSetSubgroup

segment .text
global ippsGFpECSetSubgroup:function (ippsGFpECSetSubgroup.LEndippsGFpECSetSubgroup - ippsGFpECSetSubgroup)
.Lin_ippsGFpECSetSubgroup:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSetSubgroup:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSetSubgroup]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSetSubgroup:
