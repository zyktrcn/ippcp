extern m7_ippsHashGetSize:function
extern n8_ippsHashGetSize:function
extern y8_ippsHashGetSize:function
extern e9_ippsHashGetSize:function
extern l9_ippsHashGetSize:function
extern n0_ippsHashGetSize:function
extern k0_ippsHashGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashGetSize
.Larraddr_ippsHashGetSize:
    dq m7_ippsHashGetSize
    dq n8_ippsHashGetSize
    dq y8_ippsHashGetSize
    dq e9_ippsHashGetSize
    dq l9_ippsHashGetSize
    dq n0_ippsHashGetSize
    dq k0_ippsHashGetSize

segment .text
global ippsHashGetSize:function (ippsHashGetSize.LEndippsHashGetSize - ippsHashGetSize)
.Lin_ippsHashGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashGetSize:
