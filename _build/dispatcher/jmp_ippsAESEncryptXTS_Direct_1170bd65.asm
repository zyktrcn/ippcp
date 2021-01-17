extern m7_ippsAESEncryptXTS_Direct:function
extern n8_ippsAESEncryptXTS_Direct:function
extern y8_ippsAESEncryptXTS_Direct:function
extern e9_ippsAESEncryptXTS_Direct:function
extern l9_ippsAESEncryptXTS_Direct:function
extern n0_ippsAESEncryptXTS_Direct:function
extern k0_ippsAESEncryptXTS_Direct:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESEncryptXTS_Direct
.Larraddr_ippsAESEncryptXTS_Direct:
    dq m7_ippsAESEncryptXTS_Direct
    dq n8_ippsAESEncryptXTS_Direct
    dq y8_ippsAESEncryptXTS_Direct
    dq e9_ippsAESEncryptXTS_Direct
    dq l9_ippsAESEncryptXTS_Direct
    dq n0_ippsAESEncryptXTS_Direct
    dq k0_ippsAESEncryptXTS_Direct

segment .text
global ippsAESEncryptXTS_Direct:function (ippsAESEncryptXTS_Direct.LEndippsAESEncryptXTS_Direct - ippsAESEncryptXTS_Direct)
.Lin_ippsAESEncryptXTS_Direct:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESEncryptXTS_Direct:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESEncryptXTS_Direct]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESEncryptXTS_Direct:
