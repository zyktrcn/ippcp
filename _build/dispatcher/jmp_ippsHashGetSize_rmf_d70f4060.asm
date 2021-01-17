extern m7_ippsHashGetSize_rmf:function
extern n8_ippsHashGetSize_rmf:function
extern y8_ippsHashGetSize_rmf:function
extern e9_ippsHashGetSize_rmf:function
extern l9_ippsHashGetSize_rmf:function
extern n0_ippsHashGetSize_rmf:function
extern k0_ippsHashGetSize_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashGetSize_rmf
.Larraddr_ippsHashGetSize_rmf:
    dq m7_ippsHashGetSize_rmf
    dq n8_ippsHashGetSize_rmf
    dq y8_ippsHashGetSize_rmf
    dq e9_ippsHashGetSize_rmf
    dq l9_ippsHashGetSize_rmf
    dq n0_ippsHashGetSize_rmf
    dq k0_ippsHashGetSize_rmf

segment .text
global ippsHashGetSize_rmf:function (ippsHashGetSize_rmf.LEndippsHashGetSize_rmf - ippsHashGetSize_rmf)
.Lin_ippsHashGetSize_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashGetSize_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashGetSize_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashGetSize_rmf:
