extern m7_ippsHashGetTag:function
extern n8_ippsHashGetTag:function
extern y8_ippsHashGetTag:function
extern e9_ippsHashGetTag:function
extern l9_ippsHashGetTag:function
extern n0_ippsHashGetTag:function
extern k0_ippsHashGetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashGetTag
.Larraddr_ippsHashGetTag:
    dq m7_ippsHashGetTag
    dq n8_ippsHashGetTag
    dq y8_ippsHashGetTag
    dq e9_ippsHashGetTag
    dq l9_ippsHashGetTag
    dq n0_ippsHashGetTag
    dq k0_ippsHashGetTag

segment .text
global ippsHashGetTag:function (ippsHashGetTag.LEndippsHashGetTag - ippsHashGetTag)
.Lin_ippsHashGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashGetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashGetTag:
