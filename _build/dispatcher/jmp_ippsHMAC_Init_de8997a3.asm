extern m7_ippsHMAC_Init:function
extern n8_ippsHMAC_Init:function
extern y8_ippsHMAC_Init:function
extern e9_ippsHMAC_Init:function
extern l9_ippsHMAC_Init:function
extern n0_ippsHMAC_Init:function
extern k0_ippsHMAC_Init:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMAC_Init
.Larraddr_ippsHMAC_Init:
    dq m7_ippsHMAC_Init
    dq n8_ippsHMAC_Init
    dq y8_ippsHMAC_Init
    dq e9_ippsHMAC_Init
    dq l9_ippsHMAC_Init
    dq n0_ippsHMAC_Init
    dq k0_ippsHMAC_Init

segment .text
global ippsHMAC_Init:function (ippsHMAC_Init.LEndippsHMAC_Init - ippsHMAC_Init)
.Lin_ippsHMAC_Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMAC_Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMAC_Init]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMAC_Init:
