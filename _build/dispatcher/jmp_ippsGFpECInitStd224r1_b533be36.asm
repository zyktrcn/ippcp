extern m7_ippsGFpECInitStd224r1:function
extern n8_ippsGFpECInitStd224r1:function
extern y8_ippsGFpECInitStd224r1:function
extern e9_ippsGFpECInitStd224r1:function
extern l9_ippsGFpECInitStd224r1:function
extern n0_ippsGFpECInitStd224r1:function
extern k0_ippsGFpECInitStd224r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECInitStd224r1
.Larraddr_ippsGFpECInitStd224r1:
    dq m7_ippsGFpECInitStd224r1
    dq n8_ippsGFpECInitStd224r1
    dq y8_ippsGFpECInitStd224r1
    dq e9_ippsGFpECInitStd224r1
    dq l9_ippsGFpECInitStd224r1
    dq n0_ippsGFpECInitStd224r1
    dq k0_ippsGFpECInitStd224r1

segment .text
global ippsGFpECInitStd224r1:function (ippsGFpECInitStd224r1.LEndippsGFpECInitStd224r1 - ippsGFpECInitStd224r1)
.Lin_ippsGFpECInitStd224r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECInitStd224r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECInitStd224r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECInitStd224r1:
