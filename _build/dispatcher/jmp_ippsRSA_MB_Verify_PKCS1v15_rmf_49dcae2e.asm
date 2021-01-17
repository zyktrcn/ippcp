extern m7_ippsRSA_MB_Verify_PKCS1v15_rmf:function
extern n8_ippsRSA_MB_Verify_PKCS1v15_rmf:function
extern y8_ippsRSA_MB_Verify_PKCS1v15_rmf:function
extern e9_ippsRSA_MB_Verify_PKCS1v15_rmf:function
extern l9_ippsRSA_MB_Verify_PKCS1v15_rmf:function
extern n0_ippsRSA_MB_Verify_PKCS1v15_rmf:function
extern k0_ippsRSA_MB_Verify_PKCS1v15_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_MB_Verify_PKCS1v15_rmf
.Larraddr_ippsRSA_MB_Verify_PKCS1v15_rmf:
    dq m7_ippsRSA_MB_Verify_PKCS1v15_rmf
    dq n8_ippsRSA_MB_Verify_PKCS1v15_rmf
    dq y8_ippsRSA_MB_Verify_PKCS1v15_rmf
    dq e9_ippsRSA_MB_Verify_PKCS1v15_rmf
    dq l9_ippsRSA_MB_Verify_PKCS1v15_rmf
    dq n0_ippsRSA_MB_Verify_PKCS1v15_rmf
    dq k0_ippsRSA_MB_Verify_PKCS1v15_rmf

segment .text
global ippsRSA_MB_Verify_PKCS1v15_rmf:function (ippsRSA_MB_Verify_PKCS1v15_rmf.LEndippsRSA_MB_Verify_PKCS1v15_rmf - ippsRSA_MB_Verify_PKCS1v15_rmf)
.Lin_ippsRSA_MB_Verify_PKCS1v15_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_MB_Verify_PKCS1v15_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_MB_Verify_PKCS1v15_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_MB_Verify_PKCS1v15_rmf:
