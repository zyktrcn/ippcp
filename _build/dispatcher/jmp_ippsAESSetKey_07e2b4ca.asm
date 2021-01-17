extern m7_ippsAESSetKey:function
extern n8_ippsAESSetKey:function
extern y8_ippsAESSetKey:function
extern e9_ippsAESSetKey:function
extern l9_ippsAESSetKey:function
extern n0_ippsAESSetKey:function
extern k0_ippsAESSetKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESSetKey
.Larraddr_ippsAESSetKey:
    dq m7_ippsAESSetKey
    dq n8_ippsAESSetKey
    dq y8_ippsAESSetKey
    dq e9_ippsAESSetKey
    dq l9_ippsAESSetKey
    dq n0_ippsAESSetKey
    dq k0_ippsAESSetKey

segment .text
global ippsAESSetKey:function (ippsAESSetKey.LEndippsAESSetKey - ippsAESSetKey)
.Lin_ippsAESSetKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESSetKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESSetKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESSetKey:
