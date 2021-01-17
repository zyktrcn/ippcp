extern m7_ippsHMACFinal_rmf:function
extern n8_ippsHMACFinal_rmf:function
extern y8_ippsHMACFinal_rmf:function
extern e9_ippsHMACFinal_rmf:function
extern l9_ippsHMACFinal_rmf:function
extern n0_ippsHMACFinal_rmf:function
extern k0_ippsHMACFinal_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMACFinal_rmf
.Larraddr_ippsHMACFinal_rmf:
    dq m7_ippsHMACFinal_rmf
    dq n8_ippsHMACFinal_rmf
    dq y8_ippsHMACFinal_rmf
    dq e9_ippsHMACFinal_rmf
    dq l9_ippsHMACFinal_rmf
    dq n0_ippsHMACFinal_rmf
    dq k0_ippsHMACFinal_rmf

segment .text
global ippsHMACFinal_rmf:function (ippsHMACFinal_rmf.LEndippsHMACFinal_rmf - ippsHMACFinal_rmf)
.Lin_ippsHMACFinal_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMACFinal_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMACFinal_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMACFinal_rmf:
