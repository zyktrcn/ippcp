extern m7_ippsHMAC_Unpack:function
extern n8_ippsHMAC_Unpack:function
extern y8_ippsHMAC_Unpack:function
extern e9_ippsHMAC_Unpack:function
extern l9_ippsHMAC_Unpack:function
extern n0_ippsHMAC_Unpack:function
extern k0_ippsHMAC_Unpack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHMAC_Unpack
.Larraddr_ippsHMAC_Unpack:
    dq m7_ippsHMAC_Unpack
    dq n8_ippsHMAC_Unpack
    dq y8_ippsHMAC_Unpack
    dq e9_ippsHMAC_Unpack
    dq l9_ippsHMAC_Unpack
    dq n0_ippsHMAC_Unpack
    dq k0_ippsHMAC_Unpack

segment .text
global ippsHMAC_Unpack:function (ippsHMAC_Unpack.LEndippsHMAC_Unpack - ippsHMAC_Unpack)
.Lin_ippsHMAC_Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHMAC_Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHMAC_Unpack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHMAC_Unpack:
