extern m7_ippsHMAC_GetTag:function
extern n8_ippsHMAC_GetTag:function
extern y8_ippsHMAC_GetTag:function
extern e9_ippsHMAC_GetTag:function
extern l9_ippsHMAC_GetTag:function
extern n0_ippsHMAC_GetTag:function
extern k0_ippsHMAC_GetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMAC_GetTag
.Larraddr_ippsHMAC_GetTag:
    dq m7_ippsHMAC_GetTag
    dq n8_ippsHMAC_GetTag
    dq y8_ippsHMAC_GetTag
    dq e9_ippsHMAC_GetTag
    dq l9_ippsHMAC_GetTag
    dq n0_ippsHMAC_GetTag
    dq k0_ippsHMAC_GetTag

segment .text
global ippsHMAC_GetTag:function (ippsHMAC_GetTag.LEndippsHMAC_GetTag - ippsHMAC_GetTag)
.Lin_ippsHMAC_GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMAC_GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMAC_GetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMAC_GetTag:
