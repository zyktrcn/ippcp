extern m7_ippsECCPGet:function
extern n8_ippsECCPGet:function
extern y8_ippsECCPGet:function
extern e9_ippsECCPGet:function
extern l9_ippsECCPGet:function
extern n0_ippsECCPGet:function
extern k0_ippsECCPGet:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPGet
.Larraddr_ippsECCPGet:
    dq m7_ippsECCPGet
    dq n8_ippsECCPGet
    dq y8_ippsECCPGet
    dq e9_ippsECCPGet
    dq l9_ippsECCPGet
    dq n0_ippsECCPGet
    dq k0_ippsECCPGet

segment .text
global ippsECCPGet:function (ippsECCPGet.LEndippsECCPGet - ippsECCPGet)
.Lin_ippsECCPGet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPGet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPGet]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPGet:
