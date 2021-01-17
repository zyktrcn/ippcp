extern m7_ippsGFpECGet:function
extern n8_ippsGFpECGet:function
extern y8_ippsGFpECGet:function
extern e9_ippsGFpECGet:function
extern l9_ippsGFpECGet:function
extern n0_ippsGFpECGet:function
extern k0_ippsGFpECGet:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECGet
.Larraddr_ippsGFpECGet:
    dq m7_ippsGFpECGet
    dq n8_ippsGFpECGet
    dq y8_ippsGFpECGet
    dq e9_ippsGFpECGet
    dq l9_ippsGFpECGet
    dq n0_ippsGFpECGet
    dq k0_ippsGFpECGet

segment .text
global ippsGFpECGet:function (ippsGFpECGet.LEndippsGFpECGet - ippsGFpECGet)
.Lin_ippsGFpECGet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECGet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECGet]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECGet:
