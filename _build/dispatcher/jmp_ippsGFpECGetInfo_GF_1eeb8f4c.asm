extern m7_ippsGFpECGetInfo_GF:function
extern n8_ippsGFpECGetInfo_GF:function
extern y8_ippsGFpECGetInfo_GF:function
extern e9_ippsGFpECGetInfo_GF:function
extern l9_ippsGFpECGetInfo_GF:function
extern n0_ippsGFpECGetInfo_GF:function
extern k0_ippsGFpECGetInfo_GF:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECGetInfo_GF
.Larraddr_ippsGFpECGetInfo_GF:
    dq m7_ippsGFpECGetInfo_GF
    dq n8_ippsGFpECGetInfo_GF
    dq y8_ippsGFpECGetInfo_GF
    dq e9_ippsGFpECGetInfo_GF
    dq l9_ippsGFpECGetInfo_GF
    dq n0_ippsGFpECGetInfo_GF
    dq k0_ippsGFpECGetInfo_GF

segment .text
global ippsGFpECGetInfo_GF:function (ippsGFpECGetInfo_GF.LEndippsGFpECGetInfo_GF - ippsGFpECGetInfo_GF)
.Lin_ippsGFpECGetInfo_GF:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECGetInfo_GF:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECGetInfo_GF]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECGetInfo_GF:
