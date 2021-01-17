extern m7_ippsGFpECGetPointOctString:function
extern n8_ippsGFpECGetPointOctString:function
extern y8_ippsGFpECGetPointOctString:function
extern e9_ippsGFpECGetPointOctString:function
extern l9_ippsGFpECGetPointOctString:function
extern n0_ippsGFpECGetPointOctString:function
extern k0_ippsGFpECGetPointOctString:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECGetPointOctString
.Larraddr_ippsGFpECGetPointOctString:
    dq m7_ippsGFpECGetPointOctString
    dq n8_ippsGFpECGetPointOctString
    dq y8_ippsGFpECGetPointOctString
    dq e9_ippsGFpECGetPointOctString
    dq l9_ippsGFpECGetPointOctString
    dq n0_ippsGFpECGetPointOctString
    dq k0_ippsGFpECGetPointOctString

segment .text
global ippsGFpECGetPointOctString:function (ippsGFpECGetPointOctString.LEndippsGFpECGetPointOctString - ippsGFpECGetPointOctString)
.Lin_ippsGFpECGetPointOctString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECGetPointOctString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECGetPointOctString]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECGetPointOctString:
