extern m7_ippsHashGetInfo_rmf:function
extern n8_ippsHashGetInfo_rmf:function
extern y8_ippsHashGetInfo_rmf:function
extern e9_ippsHashGetInfo_rmf:function
extern l9_ippsHashGetInfo_rmf:function
extern n0_ippsHashGetInfo_rmf:function
extern k0_ippsHashGetInfo_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashGetInfo_rmf
.Larraddr_ippsHashGetInfo_rmf:
    dq m7_ippsHashGetInfo_rmf
    dq n8_ippsHashGetInfo_rmf
    dq y8_ippsHashGetInfo_rmf
    dq e9_ippsHashGetInfo_rmf
    dq l9_ippsHashGetInfo_rmf
    dq n0_ippsHashGetInfo_rmf
    dq k0_ippsHashGetInfo_rmf

segment .text
global ippsHashGetInfo_rmf:function (ippsHashGetInfo_rmf.LEndippsHashGetInfo_rmf - ippsHashGetInfo_rmf)
.Lin_ippsHashGetInfo_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashGetInfo_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashGetInfo_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashGetInfo_rmf:
