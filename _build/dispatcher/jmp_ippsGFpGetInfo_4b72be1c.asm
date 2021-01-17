extern m7_ippsGFpGetInfo:function
extern n8_ippsGFpGetInfo:function
extern y8_ippsGFpGetInfo:function
extern e9_ippsGFpGetInfo:function
extern l9_ippsGFpGetInfo:function
extern n0_ippsGFpGetInfo:function
extern k0_ippsGFpGetInfo:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpGetInfo
.Larraddr_ippsGFpGetInfo:
    dq m7_ippsGFpGetInfo
    dq n8_ippsGFpGetInfo
    dq y8_ippsGFpGetInfo
    dq e9_ippsGFpGetInfo
    dq l9_ippsGFpGetInfo
    dq n0_ippsGFpGetInfo
    dq k0_ippsGFpGetInfo

segment .text
global ippsGFpGetInfo:function (ippsGFpGetInfo.LEndippsGFpGetInfo - ippsGFpGetInfo)
.Lin_ippsGFpGetInfo:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpGetInfo:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpGetInfo]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpGetInfo:
