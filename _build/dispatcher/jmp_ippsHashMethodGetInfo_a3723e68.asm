extern m7_ippsHashMethodGetInfo:function
extern n8_ippsHashMethodGetInfo:function
extern y8_ippsHashMethodGetInfo:function
extern e9_ippsHashMethodGetInfo:function
extern l9_ippsHashMethodGetInfo:function
extern n0_ippsHashMethodGetInfo:function
extern k0_ippsHashMethodGetInfo:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashMethodGetInfo
.Larraddr_ippsHashMethodGetInfo:
    dq m7_ippsHashMethodGetInfo
    dq n8_ippsHashMethodGetInfo
    dq y8_ippsHashMethodGetInfo
    dq e9_ippsHashMethodGetInfo
    dq l9_ippsHashMethodGetInfo
    dq n0_ippsHashMethodGetInfo
    dq k0_ippsHashMethodGetInfo

segment .text
global ippsHashMethodGetInfo:function (ippsHashMethodGetInfo.LEndippsHashMethodGetInfo - ippsHashMethodGetInfo)
.Lin_ippsHashMethodGetInfo:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashMethodGetInfo:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashMethodGetInfo]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashMethodGetInfo:
