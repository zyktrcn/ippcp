extern m7_ippsAES_CCMGetSize:function
extern n8_ippsAES_CCMGetSize:function
extern y8_ippsAES_CCMGetSize:function
extern e9_ippsAES_CCMGetSize:function
extern l9_ippsAES_CCMGetSize:function
extern n0_ippsAES_CCMGetSize:function
extern k0_ippsAES_CCMGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_CCMGetSize
.Larraddr_ippsAES_CCMGetSize:
    dq m7_ippsAES_CCMGetSize
    dq n8_ippsAES_CCMGetSize
    dq y8_ippsAES_CCMGetSize
    dq e9_ippsAES_CCMGetSize
    dq l9_ippsAES_CCMGetSize
    dq n0_ippsAES_CCMGetSize
    dq k0_ippsAES_CCMGetSize

segment .text
global ippsAES_CCMGetSize:function (ippsAES_CCMGetSize.LEndippsAES_CCMGetSize - ippsAES_CCMGetSize)
.Lin_ippsAES_CCMGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_CCMGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_CCMGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_CCMGetSize:
