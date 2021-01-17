extern m7_ippsHMACInit_rmf:function
extern n8_ippsHMACInit_rmf:function
extern y8_ippsHMACInit_rmf:function
extern e9_ippsHMACInit_rmf:function
extern l9_ippsHMACInit_rmf:function
extern n0_ippsHMACInit_rmf:function
extern k0_ippsHMACInit_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMACInit_rmf
.Larraddr_ippsHMACInit_rmf:
    dq m7_ippsHMACInit_rmf
    dq n8_ippsHMACInit_rmf
    dq y8_ippsHMACInit_rmf
    dq e9_ippsHMACInit_rmf
    dq l9_ippsHMACInit_rmf
    dq n0_ippsHMACInit_rmf
    dq k0_ippsHMACInit_rmf

segment .text
global ippsHMACInit_rmf:function (ippsHMACInit_rmf.LEndippsHMACInit_rmf - ippsHMACInit_rmf)
.Lin_ippsHMACInit_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMACInit_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMACInit_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMACInit_rmf:
