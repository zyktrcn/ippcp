extern m7_ippsECCPInitStd224r1:function
extern n8_ippsECCPInitStd224r1:function
extern y8_ippsECCPInitStd224r1:function
extern e9_ippsECCPInitStd224r1:function
extern l9_ippsECCPInitStd224r1:function
extern n0_ippsECCPInitStd224r1:function
extern k0_ippsECCPInitStd224r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPInitStd224r1
.Larraddr_ippsECCPInitStd224r1:
    dq m7_ippsECCPInitStd224r1
    dq n8_ippsECCPInitStd224r1
    dq y8_ippsECCPInitStd224r1
    dq e9_ippsECCPInitStd224r1
    dq l9_ippsECCPInitStd224r1
    dq n0_ippsECCPInitStd224r1
    dq k0_ippsECCPInitStd224r1

segment .text
global ippsECCPInitStd224r1:function (ippsECCPInitStd224r1.LEndippsECCPInitStd224r1 - ippsECCPInitStd224r1)
.Lin_ippsECCPInitStd224r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPInitStd224r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPInitStd224r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPInitStd224r1:
