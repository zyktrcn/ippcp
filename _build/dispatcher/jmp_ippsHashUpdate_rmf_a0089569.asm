extern m7_ippsHashUpdate_rmf:function
extern n8_ippsHashUpdate_rmf:function
extern y8_ippsHashUpdate_rmf:function
extern e9_ippsHashUpdate_rmf:function
extern l9_ippsHashUpdate_rmf:function
extern n0_ippsHashUpdate_rmf:function
extern k0_ippsHashUpdate_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashUpdate_rmf
.Larraddr_ippsHashUpdate_rmf:
    dq m7_ippsHashUpdate_rmf
    dq n8_ippsHashUpdate_rmf
    dq y8_ippsHashUpdate_rmf
    dq e9_ippsHashUpdate_rmf
    dq l9_ippsHashUpdate_rmf
    dq n0_ippsHashUpdate_rmf
    dq k0_ippsHashUpdate_rmf

segment .text
global ippsHashUpdate_rmf:function (ippsHashUpdate_rmf.LEndippsHashUpdate_rmf - ippsHashUpdate_rmf)
.Lin_ippsHashUpdate_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashUpdate_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashUpdate_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashUpdate_rmf:
