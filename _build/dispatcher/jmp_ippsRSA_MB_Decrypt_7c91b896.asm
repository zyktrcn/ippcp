extern m7_ippsRSA_MB_Decrypt:function
extern n8_ippsRSA_MB_Decrypt:function
extern y8_ippsRSA_MB_Decrypt:function
extern e9_ippsRSA_MB_Decrypt:function
extern l9_ippsRSA_MB_Decrypt:function
extern n0_ippsRSA_MB_Decrypt:function
extern k0_ippsRSA_MB_Decrypt:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_MB_Decrypt
.Larraddr_ippsRSA_MB_Decrypt:
    dq m7_ippsRSA_MB_Decrypt
    dq n8_ippsRSA_MB_Decrypt
    dq y8_ippsRSA_MB_Decrypt
    dq e9_ippsRSA_MB_Decrypt
    dq l9_ippsRSA_MB_Decrypt
    dq n0_ippsRSA_MB_Decrypt
    dq k0_ippsRSA_MB_Decrypt

segment .text
global ippsRSA_MB_Decrypt:function (ippsRSA_MB_Decrypt.LEndippsRSA_MB_Decrypt - ippsRSA_MB_Decrypt)
.Lin_ippsRSA_MB_Decrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_MB_Decrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_MB_Decrypt]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_MB_Decrypt:
