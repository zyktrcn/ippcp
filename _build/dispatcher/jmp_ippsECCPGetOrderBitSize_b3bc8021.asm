extern m7_ippsECCPGetOrderBitSize:function
extern n8_ippsECCPGetOrderBitSize:function
extern y8_ippsECCPGetOrderBitSize:function
extern e9_ippsECCPGetOrderBitSize:function
extern l9_ippsECCPGetOrderBitSize:function
extern n0_ippsECCPGetOrderBitSize:function
extern k0_ippsECCPGetOrderBitSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPGetOrderBitSize
.Larraddr_ippsECCPGetOrderBitSize:
    dq m7_ippsECCPGetOrderBitSize
    dq n8_ippsECCPGetOrderBitSize
    dq y8_ippsECCPGetOrderBitSize
    dq e9_ippsECCPGetOrderBitSize
    dq l9_ippsECCPGetOrderBitSize
    dq n0_ippsECCPGetOrderBitSize
    dq k0_ippsECCPGetOrderBitSize

segment .text
global ippsECCPGetOrderBitSize:function (ippsECCPGetOrderBitSize.LEndippsECCPGetOrderBitSize - ippsECCPGetOrderBitSize)
.Lin_ippsECCPGetOrderBitSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPGetOrderBitSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPGetOrderBitSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPGetOrderBitSize:
