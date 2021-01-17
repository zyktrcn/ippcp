extern m7_ippsGFpxGetSize:function
extern n8_ippsGFpxGetSize:function
extern y8_ippsGFpxGetSize:function
extern e9_ippsGFpxGetSize:function
extern l9_ippsGFpxGetSize:function
extern n0_ippsGFpxGetSize:function
extern k0_ippsGFpxGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpxGetSize
.Larraddr_ippsGFpxGetSize:
    dq m7_ippsGFpxGetSize
    dq n8_ippsGFpxGetSize
    dq y8_ippsGFpxGetSize
    dq e9_ippsGFpxGetSize
    dq l9_ippsGFpxGetSize
    dq n0_ippsGFpxGetSize
    dq k0_ippsGFpxGetSize

segment .text
global ippsGFpxGetSize:function (ippsGFpxGetSize.LEndippsGFpxGetSize - ippsGFpxGetSize)
.Lin_ippsGFpxGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpxGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpxGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpxGetSize:
