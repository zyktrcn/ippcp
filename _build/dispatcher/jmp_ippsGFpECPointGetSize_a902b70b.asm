extern m7_ippsGFpECPointGetSize:function
extern n8_ippsGFpECPointGetSize:function
extern y8_ippsGFpECPointGetSize:function
extern e9_ippsGFpECPointGetSize:function
extern l9_ippsGFpECPointGetSize:function
extern n0_ippsGFpECPointGetSize:function
extern k0_ippsGFpECPointGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECPointGetSize
.Larraddr_ippsGFpECPointGetSize:
    dq m7_ippsGFpECPointGetSize
    dq n8_ippsGFpECPointGetSize
    dq y8_ippsGFpECPointGetSize
    dq e9_ippsGFpECPointGetSize
    dq l9_ippsGFpECPointGetSize
    dq n0_ippsGFpECPointGetSize
    dq k0_ippsGFpECPointGetSize

segment .text
global ippsGFpECPointGetSize:function (ippsGFpECPointGetSize.LEndippsGFpECPointGetSize - ippsGFpECPointGetSize)
.Lin_ippsGFpECPointGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECPointGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECPointGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECPointGetSize:
