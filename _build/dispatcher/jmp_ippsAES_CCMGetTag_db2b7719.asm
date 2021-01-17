extern m7_ippsAES_CCMGetTag:function
extern n8_ippsAES_CCMGetTag:function
extern y8_ippsAES_CCMGetTag:function
extern e9_ippsAES_CCMGetTag:function
extern l9_ippsAES_CCMGetTag:function
extern n0_ippsAES_CCMGetTag:function
extern k0_ippsAES_CCMGetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_CCMGetTag
.Larraddr_ippsAES_CCMGetTag:
    dq m7_ippsAES_CCMGetTag
    dq n8_ippsAES_CCMGetTag
    dq y8_ippsAES_CCMGetTag
    dq e9_ippsAES_CCMGetTag
    dq l9_ippsAES_CCMGetTag
    dq n0_ippsAES_CCMGetTag
    dq k0_ippsAES_CCMGetTag

segment .text
global ippsAES_CCMGetTag:function (ippsAES_CCMGetTag.LEndippsAES_CCMGetTag - ippsAES_CCMGetTag)
.Lin_ippsAES_CCMGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_CCMGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_CCMGetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_CCMGetTag:
