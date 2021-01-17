extern m7_ippsRSA_GenerateKeys:function
extern n8_ippsRSA_GenerateKeys:function
extern y8_ippsRSA_GenerateKeys:function
extern e9_ippsRSA_GenerateKeys:function
extern l9_ippsRSA_GenerateKeys:function
extern n0_ippsRSA_GenerateKeys:function
extern k0_ippsRSA_GenerateKeys:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_GenerateKeys
.Larraddr_ippsRSA_GenerateKeys:
    dq m7_ippsRSA_GenerateKeys
    dq n8_ippsRSA_GenerateKeys
    dq y8_ippsRSA_GenerateKeys
    dq e9_ippsRSA_GenerateKeys
    dq l9_ippsRSA_GenerateKeys
    dq n0_ippsRSA_GenerateKeys
    dq k0_ippsRSA_GenerateKeys

segment .text
global ippsRSA_GenerateKeys:function (ippsRSA_GenerateKeys.LEndippsRSA_GenerateKeys - ippsRSA_GenerateKeys)
.Lin_ippsRSA_GenerateKeys:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_GenerateKeys:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_GenerateKeys]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_GenerateKeys:
