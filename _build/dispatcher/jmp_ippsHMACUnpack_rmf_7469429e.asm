extern m7_ippsHMACUnpack_rmf:function
extern n8_ippsHMACUnpack_rmf:function
extern y8_ippsHMACUnpack_rmf:function
extern e9_ippsHMACUnpack_rmf:function
extern l9_ippsHMACUnpack_rmf:function
extern n0_ippsHMACUnpack_rmf:function
extern k0_ippsHMACUnpack_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMACUnpack_rmf
.Larraddr_ippsHMACUnpack_rmf:
    dq m7_ippsHMACUnpack_rmf
    dq n8_ippsHMACUnpack_rmf
    dq y8_ippsHMACUnpack_rmf
    dq e9_ippsHMACUnpack_rmf
    dq l9_ippsHMACUnpack_rmf
    dq n0_ippsHMACUnpack_rmf
    dq k0_ippsHMACUnpack_rmf

segment .text
global ippsHMACUnpack_rmf:function (ippsHMACUnpack_rmf.LEndippsHMACUnpack_rmf - ippsHMACUnpack_rmf)
.Lin_ippsHMACUnpack_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMACUnpack_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMACUnpack_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMACUnpack_rmf:
