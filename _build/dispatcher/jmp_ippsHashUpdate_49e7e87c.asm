extern m7_ippsHashUpdate:function
extern n8_ippsHashUpdate:function
extern y8_ippsHashUpdate:function
extern e9_ippsHashUpdate:function
extern l9_ippsHashUpdate:function
extern n0_ippsHashUpdate:function
extern k0_ippsHashUpdate:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashUpdate
.Larraddr_ippsHashUpdate:
    dq m7_ippsHashUpdate
    dq n8_ippsHashUpdate
    dq y8_ippsHashUpdate
    dq e9_ippsHashUpdate
    dq l9_ippsHashUpdate
    dq n0_ippsHashUpdate
    dq k0_ippsHashUpdate

segment .text
global ippsHashUpdate:function (ippsHashUpdate.LEndippsHashUpdate - ippsHashUpdate)
.Lin_ippsHashUpdate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashUpdate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashUpdate]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashUpdate:
