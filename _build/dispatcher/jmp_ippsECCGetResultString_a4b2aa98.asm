extern m7_ippsECCGetResultString:function
extern n8_ippsECCGetResultString:function
extern y8_ippsECCGetResultString:function
extern e9_ippsECCGetResultString:function
extern l9_ippsECCGetResultString:function
extern n0_ippsECCGetResultString:function
extern k0_ippsECCGetResultString:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCGetResultString
.Larraddr_ippsECCGetResultString:
    dq m7_ippsECCGetResultString
    dq n8_ippsECCGetResultString
    dq y8_ippsECCGetResultString
    dq e9_ippsECCGetResultString
    dq l9_ippsECCGetResultString
    dq n0_ippsECCGetResultString
    dq k0_ippsECCGetResultString

segment .text
global ippsECCGetResultString:function (ippsECCGetResultString.LEndippsECCGetResultString - ippsECCGetResultString)
.Lin_ippsECCGetResultString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCGetResultString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCGetResultString]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCGetResultString:
