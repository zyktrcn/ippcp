extern m7_ippsAES_CCMTagLen:function
extern n8_ippsAES_CCMTagLen:function
extern y8_ippsAES_CCMTagLen:function
extern e9_ippsAES_CCMTagLen:function
extern l9_ippsAES_CCMTagLen:function
extern n0_ippsAES_CCMTagLen:function
extern k0_ippsAES_CCMTagLen:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_CCMTagLen
.Larraddr_ippsAES_CCMTagLen:
    dq m7_ippsAES_CCMTagLen
    dq n8_ippsAES_CCMTagLen
    dq y8_ippsAES_CCMTagLen
    dq e9_ippsAES_CCMTagLen
    dq l9_ippsAES_CCMTagLen
    dq n0_ippsAES_CCMTagLen
    dq k0_ippsAES_CCMTagLen

segment .text
global ippsAES_CCMTagLen:function (ippsAES_CCMTagLen.LEndippsAES_CCMTagLen - ippsAES_CCMTagLen)
.Lin_ippsAES_CCMTagLen:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_CCMTagLen:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_CCMTagLen]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_CCMTagLen:
