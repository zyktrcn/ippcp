extern m7_ippsHashDuplicate_rmf:function
extern n8_ippsHashDuplicate_rmf:function
extern y8_ippsHashDuplicate_rmf:function
extern e9_ippsHashDuplicate_rmf:function
extern l9_ippsHashDuplicate_rmf:function
extern n0_ippsHashDuplicate_rmf:function
extern k0_ippsHashDuplicate_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashDuplicate_rmf
.Larraddr_ippsHashDuplicate_rmf:
    dq m7_ippsHashDuplicate_rmf
    dq n8_ippsHashDuplicate_rmf
    dq y8_ippsHashDuplicate_rmf
    dq e9_ippsHashDuplicate_rmf
    dq l9_ippsHashDuplicate_rmf
    dq n0_ippsHashDuplicate_rmf
    dq k0_ippsHashDuplicate_rmf

segment .text
global ippsHashDuplicate_rmf:function (ippsHashDuplicate_rmf.LEndippsHashDuplicate_rmf - ippsHashDuplicate_rmf)
.Lin_ippsHashDuplicate_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashDuplicate_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashDuplicate_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashDuplicate_rmf:
