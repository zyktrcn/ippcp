extern m7_ippsECCPSignNR:function
extern n8_ippsECCPSignNR:function
extern y8_ippsECCPSignNR:function
extern e9_ippsECCPSignNR:function
extern l9_ippsECCPSignNR:function
extern n0_ippsECCPSignNR:function
extern k0_ippsECCPSignNR:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSignNR
.Larraddr_ippsECCPSignNR:
    dq m7_ippsECCPSignNR
    dq n8_ippsECCPSignNR
    dq y8_ippsECCPSignNR
    dq e9_ippsECCPSignNR
    dq l9_ippsECCPSignNR
    dq n0_ippsECCPSignNR
    dq k0_ippsECCPSignNR

segment .text
global ippsECCPSignNR:function (ippsECCPSignNR.LEndippsECCPSignNR - ippsECCPSignNR)
.Lin_ippsECCPSignNR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSignNR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSignNR]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSignNR:
