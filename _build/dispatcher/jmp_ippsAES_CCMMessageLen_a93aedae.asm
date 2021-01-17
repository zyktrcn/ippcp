extern m7_ippsAES_CCMMessageLen:function
extern n8_ippsAES_CCMMessageLen:function
extern y8_ippsAES_CCMMessageLen:function
extern e9_ippsAES_CCMMessageLen:function
extern l9_ippsAES_CCMMessageLen:function
extern n0_ippsAES_CCMMessageLen:function
extern k0_ippsAES_CCMMessageLen:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_CCMMessageLen
.Larraddr_ippsAES_CCMMessageLen:
    dq m7_ippsAES_CCMMessageLen
    dq n8_ippsAES_CCMMessageLen
    dq y8_ippsAES_CCMMessageLen
    dq e9_ippsAES_CCMMessageLen
    dq l9_ippsAES_CCMMessageLen
    dq n0_ippsAES_CCMMessageLen
    dq k0_ippsAES_CCMMessageLen

segment .text
global ippsAES_CCMMessageLen:function (ippsAES_CCMMessageLen.LEndippsAES_CCMMessageLen - ippsAES_CCMMessageLen)
.Lin_ippsAES_CCMMessageLen:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_CCMMessageLen:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_CCMMessageLen]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_CCMMessageLen:
