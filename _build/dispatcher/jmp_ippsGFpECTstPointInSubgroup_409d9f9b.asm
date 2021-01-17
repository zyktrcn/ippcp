extern m7_ippsGFpECTstPointInSubgroup:function
extern n8_ippsGFpECTstPointInSubgroup:function
extern y8_ippsGFpECTstPointInSubgroup:function
extern e9_ippsGFpECTstPointInSubgroup:function
extern l9_ippsGFpECTstPointInSubgroup:function
extern n0_ippsGFpECTstPointInSubgroup:function
extern k0_ippsGFpECTstPointInSubgroup:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECTstPointInSubgroup
.Larraddr_ippsGFpECTstPointInSubgroup:
    dq m7_ippsGFpECTstPointInSubgroup
    dq n8_ippsGFpECTstPointInSubgroup
    dq y8_ippsGFpECTstPointInSubgroup
    dq e9_ippsGFpECTstPointInSubgroup
    dq l9_ippsGFpECTstPointInSubgroup
    dq n0_ippsGFpECTstPointInSubgroup
    dq k0_ippsGFpECTstPointInSubgroup

segment .text
global ippsGFpECTstPointInSubgroup:function (ippsGFpECTstPointInSubgroup.LEndippsGFpECTstPointInSubgroup - ippsGFpECTstPointInSubgroup)
.Lin_ippsGFpECTstPointInSubgroup:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECTstPointInSubgroup:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECTstPointInSubgroup]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECTstPointInSubgroup:
