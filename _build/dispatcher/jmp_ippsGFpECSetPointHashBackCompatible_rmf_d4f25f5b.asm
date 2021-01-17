extern m7_ippsGFpECSetPointHashBackCompatible_rmf:function
extern n8_ippsGFpECSetPointHashBackCompatible_rmf:function
extern y8_ippsGFpECSetPointHashBackCompatible_rmf:function
extern e9_ippsGFpECSetPointHashBackCompatible_rmf:function
extern l9_ippsGFpECSetPointHashBackCompatible_rmf:function
extern n0_ippsGFpECSetPointHashBackCompatible_rmf:function
extern k0_ippsGFpECSetPointHashBackCompatible_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSetPointHashBackCompatible_rmf
.Larraddr_ippsGFpECSetPointHashBackCompatible_rmf:
    dq m7_ippsGFpECSetPointHashBackCompatible_rmf
    dq n8_ippsGFpECSetPointHashBackCompatible_rmf
    dq y8_ippsGFpECSetPointHashBackCompatible_rmf
    dq e9_ippsGFpECSetPointHashBackCompatible_rmf
    dq l9_ippsGFpECSetPointHashBackCompatible_rmf
    dq n0_ippsGFpECSetPointHashBackCompatible_rmf
    dq k0_ippsGFpECSetPointHashBackCompatible_rmf

segment .text
global ippsGFpECSetPointHashBackCompatible_rmf:function (ippsGFpECSetPointHashBackCompatible_rmf.LEndippsGFpECSetPointHashBackCompatible_rmf - ippsGFpECSetPointHashBackCompatible_rmf)
.Lin_ippsGFpECSetPointHashBackCompatible_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSetPointHashBackCompatible_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSetPointHashBackCompatible_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSetPointHashBackCompatible_rmf:
