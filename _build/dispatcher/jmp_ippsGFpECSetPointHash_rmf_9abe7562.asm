extern m7_ippsGFpECSetPointHash_rmf:function
extern n8_ippsGFpECSetPointHash_rmf:function
extern y8_ippsGFpECSetPointHash_rmf:function
extern e9_ippsGFpECSetPointHash_rmf:function
extern l9_ippsGFpECSetPointHash_rmf:function
extern n0_ippsGFpECSetPointHash_rmf:function
extern k0_ippsGFpECSetPointHash_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSetPointHash_rmf
.Larraddr_ippsGFpECSetPointHash_rmf:
    dq m7_ippsGFpECSetPointHash_rmf
    dq n8_ippsGFpECSetPointHash_rmf
    dq y8_ippsGFpECSetPointHash_rmf
    dq e9_ippsGFpECSetPointHash_rmf
    dq l9_ippsGFpECSetPointHash_rmf
    dq n0_ippsGFpECSetPointHash_rmf
    dq k0_ippsGFpECSetPointHash_rmf

segment .text
global ippsGFpECSetPointHash_rmf:function (ippsGFpECSetPointHash_rmf.LEndippsGFpECSetPointHash_rmf - ippsGFpECSetPointHash_rmf)
.Lin_ippsGFpECSetPointHash_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSetPointHash_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSetPointHash_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSetPointHash_rmf:
