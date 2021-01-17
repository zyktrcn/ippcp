extern m7_ippsGFpECGetSize:function
extern n8_ippsGFpECGetSize:function
extern y8_ippsGFpECGetSize:function
extern e9_ippsGFpECGetSize:function
extern l9_ippsGFpECGetSize:function
extern n0_ippsGFpECGetSize:function
extern k0_ippsGFpECGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECGetSize
.Larraddr_ippsGFpECGetSize:
    dq m7_ippsGFpECGetSize
    dq n8_ippsGFpECGetSize
    dq y8_ippsGFpECGetSize
    dq e9_ippsGFpECGetSize
    dq l9_ippsGFpECGetSize
    dq n0_ippsGFpECGetSize
    dq k0_ippsGFpECGetSize

segment .text
global ippsGFpECGetSize:function (ippsGFpECGetSize.LEndippsGFpECGetSize - ippsGFpECGetSize)
.Lin_ippsGFpECGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECGetSize:
