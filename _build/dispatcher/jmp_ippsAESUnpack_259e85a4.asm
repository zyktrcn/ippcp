extern m7_ippsAESUnpack:function
extern n8_ippsAESUnpack:function
extern y8_ippsAESUnpack:function
extern e9_ippsAESUnpack:function
extern l9_ippsAESUnpack:function
extern n0_ippsAESUnpack:function
extern k0_ippsAESUnpack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESUnpack
.Larraddr_ippsAESUnpack:
    dq m7_ippsAESUnpack
    dq n8_ippsAESUnpack
    dq y8_ippsAESUnpack
    dq e9_ippsAESUnpack
    dq l9_ippsAESUnpack
    dq n0_ippsAESUnpack
    dq k0_ippsAESUnpack

segment .text
global ippsAESUnpack:function (ippsAESUnpack.LEndippsAESUnpack - ippsAESUnpack)
.Lin_ippsAESUnpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESUnpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESUnpack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESUnpack:
