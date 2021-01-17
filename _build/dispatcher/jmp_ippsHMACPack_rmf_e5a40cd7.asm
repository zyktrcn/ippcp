extern m7_ippsHMACPack_rmf:function
extern n8_ippsHMACPack_rmf:function
extern y8_ippsHMACPack_rmf:function
extern e9_ippsHMACPack_rmf:function
extern l9_ippsHMACPack_rmf:function
extern n0_ippsHMACPack_rmf:function
extern k0_ippsHMACPack_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMACPack_rmf
.Larraddr_ippsHMACPack_rmf:
    dq m7_ippsHMACPack_rmf
    dq n8_ippsHMACPack_rmf
    dq y8_ippsHMACPack_rmf
    dq e9_ippsHMACPack_rmf
    dq l9_ippsHMACPack_rmf
    dq n0_ippsHMACPack_rmf
    dq k0_ippsHMACPack_rmf

segment .text
global ippsHMACPack_rmf:function (ippsHMACPack_rmf.LEndippsHMACPack_rmf - ippsHMACPack_rmf)
.Lin_ippsHMACPack_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMACPack_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMACPack_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMACPack_rmf:
