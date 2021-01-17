extern m7_ippsHashMessage_rmf:function
extern n8_ippsHashMessage_rmf:function
extern y8_ippsHashMessage_rmf:function
extern e9_ippsHashMessage_rmf:function
extern l9_ippsHashMessage_rmf:function
extern n0_ippsHashMessage_rmf:function
extern k0_ippsHashMessage_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashMessage_rmf
.Larraddr_ippsHashMessage_rmf:
    dq m7_ippsHashMessage_rmf
    dq n8_ippsHashMessage_rmf
    dq y8_ippsHashMessage_rmf
    dq e9_ippsHashMessage_rmf
    dq l9_ippsHashMessage_rmf
    dq n0_ippsHashMessage_rmf
    dq k0_ippsHashMessage_rmf

segment .text
global ippsHashMessage_rmf:function (ippsHashMessage_rmf.LEndippsHashMessage_rmf - ippsHashMessage_rmf)
.Lin_ippsHashMessage_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashMessage_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashMessage_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashMessage_rmf:
