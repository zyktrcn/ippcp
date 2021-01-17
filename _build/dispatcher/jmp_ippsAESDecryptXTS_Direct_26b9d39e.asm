extern m7_ippsAESDecryptXTS_Direct:function
extern n8_ippsAESDecryptXTS_Direct:function
extern y8_ippsAESDecryptXTS_Direct:function
extern e9_ippsAESDecryptXTS_Direct:function
extern l9_ippsAESDecryptXTS_Direct:function
extern n0_ippsAESDecryptXTS_Direct:function
extern k0_ippsAESDecryptXTS_Direct:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESDecryptXTS_Direct
.Larraddr_ippsAESDecryptXTS_Direct:
    dq m7_ippsAESDecryptXTS_Direct
    dq n8_ippsAESDecryptXTS_Direct
    dq y8_ippsAESDecryptXTS_Direct
    dq e9_ippsAESDecryptXTS_Direct
    dq l9_ippsAESDecryptXTS_Direct
    dq n0_ippsAESDecryptXTS_Direct
    dq k0_ippsAESDecryptXTS_Direct

segment .text
global ippsAESDecryptXTS_Direct:function (ippsAESDecryptXTS_Direct.LEndippsAESDecryptXTS_Direct - ippsAESDecryptXTS_Direct)
.Lin_ippsAESDecryptXTS_Direct:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESDecryptXTS_Direct:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESDecryptXTS_Direct]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESDecryptXTS_Direct:
