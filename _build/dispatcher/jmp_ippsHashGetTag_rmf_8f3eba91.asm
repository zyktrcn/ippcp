extern m7_ippsHashGetTag_rmf:function
extern n8_ippsHashGetTag_rmf:function
extern y8_ippsHashGetTag_rmf:function
extern e9_ippsHashGetTag_rmf:function
extern l9_ippsHashGetTag_rmf:function
extern n0_ippsHashGetTag_rmf:function
extern k0_ippsHashGetTag_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashGetTag_rmf
.Larraddr_ippsHashGetTag_rmf:
    dq m7_ippsHashGetTag_rmf
    dq n8_ippsHashGetTag_rmf
    dq y8_ippsHashGetTag_rmf
    dq e9_ippsHashGetTag_rmf
    dq l9_ippsHashGetTag_rmf
    dq n0_ippsHashGetTag_rmf
    dq k0_ippsHashGetTag_rmf

segment .text
global ippsHashGetTag_rmf:function (ippsHashGetTag_rmf.LEndippsHashGetTag_rmf - ippsHashGetTag_rmf)
.Lin_ippsHashGetTag_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashGetTag_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashGetTag_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashGetTag_rmf:
