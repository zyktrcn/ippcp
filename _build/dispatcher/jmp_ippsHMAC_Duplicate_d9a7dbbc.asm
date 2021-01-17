extern m7_ippsHMAC_Duplicate:function
extern n8_ippsHMAC_Duplicate:function
extern y8_ippsHMAC_Duplicate:function
extern e9_ippsHMAC_Duplicate:function
extern l9_ippsHMAC_Duplicate:function
extern n0_ippsHMAC_Duplicate:function
extern k0_ippsHMAC_Duplicate:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMAC_Duplicate
.Larraddr_ippsHMAC_Duplicate:
    dq m7_ippsHMAC_Duplicate
    dq n8_ippsHMAC_Duplicate
    dq y8_ippsHMAC_Duplicate
    dq e9_ippsHMAC_Duplicate
    dq l9_ippsHMAC_Duplicate
    dq n0_ippsHMAC_Duplicate
    dq k0_ippsHMAC_Duplicate

segment .text
global ippsHMAC_Duplicate:function (ippsHMAC_Duplicate.LEndippsHMAC_Duplicate - ippsHMAC_Duplicate)
.Lin_ippsHMAC_Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMAC_Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMAC_Duplicate]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMAC_Duplicate:
