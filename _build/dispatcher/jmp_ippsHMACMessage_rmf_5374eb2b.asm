extern m7_ippsHMACMessage_rmf:function
extern n8_ippsHMACMessage_rmf:function
extern y8_ippsHMACMessage_rmf:function
extern e9_ippsHMACMessage_rmf:function
extern l9_ippsHMACMessage_rmf:function
extern n0_ippsHMACMessage_rmf:function
extern k0_ippsHMACMessage_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMACMessage_rmf
.Larraddr_ippsHMACMessage_rmf:
    dq m7_ippsHMACMessage_rmf
    dq n8_ippsHMACMessage_rmf
    dq y8_ippsHMACMessage_rmf
    dq e9_ippsHMACMessage_rmf
    dq l9_ippsHMACMessage_rmf
    dq n0_ippsHMACMessage_rmf
    dq k0_ippsHMACMessage_rmf

segment .text
global ippsHMACMessage_rmf:function (ippsHMACMessage_rmf.LEndippsHMACMessage_rmf - ippsHMACMessage_rmf)
.Lin_ippsHMACMessage_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMACMessage_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMACMessage_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMACMessage_rmf:
