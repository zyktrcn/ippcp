extern m7_ippsGFpECInitStd128r2:function
extern n8_ippsGFpECInitStd128r2:function
extern y8_ippsGFpECInitStd128r2:function
extern e9_ippsGFpECInitStd128r2:function
extern l9_ippsGFpECInitStd128r2:function
extern n0_ippsGFpECInitStd128r2:function
extern k0_ippsGFpECInitStd128r2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECInitStd128r2
.Larraddr_ippsGFpECInitStd128r2:
    dq m7_ippsGFpECInitStd128r2
    dq n8_ippsGFpECInitStd128r2
    dq y8_ippsGFpECInitStd128r2
    dq e9_ippsGFpECInitStd128r2
    dq l9_ippsGFpECInitStd128r2
    dq n0_ippsGFpECInitStd128r2
    dq k0_ippsGFpECInitStd128r2

segment .text
global ippsGFpECInitStd128r2:function (ippsGFpECInitStd128r2.LEndippsGFpECInitStd128r2 - ippsGFpECInitStd128r2)
.Lin_ippsGFpECInitStd128r2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECInitStd128r2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECInitStd128r2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECInitStd128r2:
