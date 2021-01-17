extern m7_ippsRSA_ValidateKeys:function
extern n8_ippsRSA_ValidateKeys:function
extern y8_ippsRSA_ValidateKeys:function
extern e9_ippsRSA_ValidateKeys:function
extern l9_ippsRSA_ValidateKeys:function
extern n0_ippsRSA_ValidateKeys:function
extern k0_ippsRSA_ValidateKeys:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_ValidateKeys
.Larraddr_ippsRSA_ValidateKeys:
    dq m7_ippsRSA_ValidateKeys
    dq n8_ippsRSA_ValidateKeys
    dq y8_ippsRSA_ValidateKeys
    dq e9_ippsRSA_ValidateKeys
    dq l9_ippsRSA_ValidateKeys
    dq n0_ippsRSA_ValidateKeys
    dq k0_ippsRSA_ValidateKeys

segment .text
global ippsRSA_ValidateKeys:function (ippsRSA_ValidateKeys.LEndippsRSA_ValidateKeys - ippsRSA_ValidateKeys)
.Lin_ippsRSA_ValidateKeys:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_ValidateKeys:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_ValidateKeys]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_ValidateKeys:
