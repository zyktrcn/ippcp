extern m7_ippsHashInit_rmf:function
extern n8_ippsHashInit_rmf:function
extern y8_ippsHashInit_rmf:function
extern e9_ippsHashInit_rmf:function
extern l9_ippsHashInit_rmf:function
extern n0_ippsHashInit_rmf:function
extern k0_ippsHashInit_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashInit_rmf
.Larraddr_ippsHashInit_rmf:
    dq m7_ippsHashInit_rmf
    dq n8_ippsHashInit_rmf
    dq y8_ippsHashInit_rmf
    dq e9_ippsHashInit_rmf
    dq l9_ippsHashInit_rmf
    dq n0_ippsHashInit_rmf
    dq k0_ippsHashInit_rmf

segment .text
global ippsHashInit_rmf:function (ippsHashInit_rmf.LEndippsHashInit_rmf - ippsHashInit_rmf)
.Lin_ippsHashInit_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashInit_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashInit_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashInit_rmf:
