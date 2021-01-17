extern m7_ippsRSA_MB_Sign_PSS_rmf:function
extern n8_ippsRSA_MB_Sign_PSS_rmf:function
extern y8_ippsRSA_MB_Sign_PSS_rmf:function
extern e9_ippsRSA_MB_Sign_PSS_rmf:function
extern l9_ippsRSA_MB_Sign_PSS_rmf:function
extern n0_ippsRSA_MB_Sign_PSS_rmf:function
extern k0_ippsRSA_MB_Sign_PSS_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_MB_Sign_PSS_rmf
.Larraddr_ippsRSA_MB_Sign_PSS_rmf:
    dq m7_ippsRSA_MB_Sign_PSS_rmf
    dq n8_ippsRSA_MB_Sign_PSS_rmf
    dq y8_ippsRSA_MB_Sign_PSS_rmf
    dq e9_ippsRSA_MB_Sign_PSS_rmf
    dq l9_ippsRSA_MB_Sign_PSS_rmf
    dq n0_ippsRSA_MB_Sign_PSS_rmf
    dq k0_ippsRSA_MB_Sign_PSS_rmf

segment .text
global ippsRSA_MB_Sign_PSS_rmf:function (ippsRSA_MB_Sign_PSS_rmf.LEndippsRSA_MB_Sign_PSS_rmf - ippsRSA_MB_Sign_PSS_rmf)
.Lin_ippsRSA_MB_Sign_PSS_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_MB_Sign_PSS_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_MB_Sign_PSS_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_MB_Sign_PSS_rmf:
