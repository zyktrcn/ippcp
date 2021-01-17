extern m7_ippsHMACGetSize_rmf:function
extern n8_ippsHMACGetSize_rmf:function
extern y8_ippsHMACGetSize_rmf:function
extern e9_ippsHMACGetSize_rmf:function
extern l9_ippsHMACGetSize_rmf:function
extern n0_ippsHMACGetSize_rmf:function
extern k0_ippsHMACGetSize_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMACGetSize_rmf
.Larraddr_ippsHMACGetSize_rmf:
    dq m7_ippsHMACGetSize_rmf
    dq n8_ippsHMACGetSize_rmf
    dq y8_ippsHMACGetSize_rmf
    dq e9_ippsHMACGetSize_rmf
    dq l9_ippsHMACGetSize_rmf
    dq n0_ippsHMACGetSize_rmf
    dq k0_ippsHMACGetSize_rmf

segment .text
global ippsHMACGetSize_rmf:function (ippsHMACGetSize_rmf.LEndippsHMACGetSize_rmf - ippsHMACGetSize_rmf)
.Lin_ippsHMACGetSize_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMACGetSize_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMACGetSize_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMACGetSize_rmf:
