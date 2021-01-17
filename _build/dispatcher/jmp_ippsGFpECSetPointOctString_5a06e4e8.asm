extern m7_ippsGFpECSetPointOctString:function
extern n8_ippsGFpECSetPointOctString:function
extern y8_ippsGFpECSetPointOctString:function
extern e9_ippsGFpECSetPointOctString:function
extern l9_ippsGFpECSetPointOctString:function
extern n0_ippsGFpECSetPointOctString:function
extern k0_ippsGFpECSetPointOctString:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSetPointOctString
.Larraddr_ippsGFpECSetPointOctString:
    dq m7_ippsGFpECSetPointOctString
    dq n8_ippsGFpECSetPointOctString
    dq y8_ippsGFpECSetPointOctString
    dq e9_ippsGFpECSetPointOctString
    dq l9_ippsGFpECSetPointOctString
    dq n0_ippsGFpECSetPointOctString
    dq k0_ippsGFpECSetPointOctString

segment .text
global ippsGFpECSetPointOctString:function (ippsGFpECSetPointOctString.LEndippsGFpECSetPointOctString - ippsGFpECSetPointOctString)
.Lin_ippsGFpECSetPointOctString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSetPointOctString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSetPointOctString]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSetPointOctString:
