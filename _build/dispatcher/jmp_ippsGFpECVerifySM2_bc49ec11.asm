extern m7_ippsGFpECVerifySM2:function
extern n8_ippsGFpECVerifySM2:function
extern y8_ippsGFpECVerifySM2:function
extern e9_ippsGFpECVerifySM2:function
extern l9_ippsGFpECVerifySM2:function
extern n0_ippsGFpECVerifySM2:function
extern k0_ippsGFpECVerifySM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECVerifySM2
.Larraddr_ippsGFpECVerifySM2:
    dq m7_ippsGFpECVerifySM2
    dq n8_ippsGFpECVerifySM2
    dq y8_ippsGFpECVerifySM2
    dq e9_ippsGFpECVerifySM2
    dq l9_ippsGFpECVerifySM2
    dq n0_ippsGFpECVerifySM2
    dq k0_ippsGFpECVerifySM2

segment .text
global ippsGFpECVerifySM2:function (ippsGFpECVerifySM2.LEndippsGFpECVerifySM2 - ippsGFpECVerifySM2)
.Lin_ippsGFpECVerifySM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECVerifySM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECVerifySM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECVerifySM2:
