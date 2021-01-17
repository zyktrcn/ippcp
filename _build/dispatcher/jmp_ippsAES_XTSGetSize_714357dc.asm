extern m7_ippsAES_XTSGetSize:function
extern n8_ippsAES_XTSGetSize:function
extern y8_ippsAES_XTSGetSize:function
extern e9_ippsAES_XTSGetSize:function
extern l9_ippsAES_XTSGetSize:function
extern n0_ippsAES_XTSGetSize:function
extern k0_ippsAES_XTSGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_XTSGetSize
.Larraddr_ippsAES_XTSGetSize:
    dq m7_ippsAES_XTSGetSize
    dq n8_ippsAES_XTSGetSize
    dq y8_ippsAES_XTSGetSize
    dq e9_ippsAES_XTSGetSize
    dq l9_ippsAES_XTSGetSize
    dq n0_ippsAES_XTSGetSize
    dq k0_ippsAES_XTSGetSize

segment .text
global ippsAES_XTSGetSize:function (ippsAES_XTSGetSize.LEndippsAES_XTSGetSize - ippsAES_XTSGetSize)
.Lin_ippsAES_XTSGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_XTSGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_XTSGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_XTSGetSize:
