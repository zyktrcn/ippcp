extern m7_ippsHashUnpack_rmf:function
extern n8_ippsHashUnpack_rmf:function
extern y8_ippsHashUnpack_rmf:function
extern e9_ippsHashUnpack_rmf:function
extern l9_ippsHashUnpack_rmf:function
extern n0_ippsHashUnpack_rmf:function
extern k0_ippsHashUnpack_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashUnpack_rmf
.Larraddr_ippsHashUnpack_rmf:
    dq m7_ippsHashUnpack_rmf
    dq n8_ippsHashUnpack_rmf
    dq y8_ippsHashUnpack_rmf
    dq e9_ippsHashUnpack_rmf
    dq l9_ippsHashUnpack_rmf
    dq n0_ippsHashUnpack_rmf
    dq k0_ippsHashUnpack_rmf

segment .text
global ippsHashUnpack_rmf:function (ippsHashUnpack_rmf.LEndippsHashUnpack_rmf - ippsHashUnpack_rmf)
.Lin_ippsHashUnpack_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashUnpack_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashUnpack_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashUnpack_rmf:
