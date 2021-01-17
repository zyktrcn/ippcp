extern m7_ippsHMAC_GetSize:function
extern n8_ippsHMAC_GetSize:function
extern y8_ippsHMAC_GetSize:function
extern e9_ippsHMAC_GetSize:function
extern l9_ippsHMAC_GetSize:function
extern n0_ippsHMAC_GetSize:function
extern k0_ippsHMAC_GetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMAC_GetSize
.Larraddr_ippsHMAC_GetSize:
    dq m7_ippsHMAC_GetSize
    dq n8_ippsHMAC_GetSize
    dq y8_ippsHMAC_GetSize
    dq e9_ippsHMAC_GetSize
    dq l9_ippsHMAC_GetSize
    dq n0_ippsHMAC_GetSize
    dq k0_ippsHMAC_GetSize

segment .text
global ippsHMAC_GetSize:function (ippsHMAC_GetSize.LEndippsHMAC_GetSize - ippsHMAC_GetSize)
.Lin_ippsHMAC_GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMAC_GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMAC_GetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMAC_GetSize:
