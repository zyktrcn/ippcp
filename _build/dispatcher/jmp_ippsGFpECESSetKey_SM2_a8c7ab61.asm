extern m7_ippsGFpECESSetKey_SM2:function
extern n8_ippsGFpECESSetKey_SM2:function
extern y8_ippsGFpECESSetKey_SM2:function
extern e9_ippsGFpECESSetKey_SM2:function
extern l9_ippsGFpECESSetKey_SM2:function
extern n0_ippsGFpECESSetKey_SM2:function
extern k0_ippsGFpECESSetKey_SM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECESSetKey_SM2
.Larraddr_ippsGFpECESSetKey_SM2:
    dq m7_ippsGFpECESSetKey_SM2
    dq n8_ippsGFpECESSetKey_SM2
    dq y8_ippsGFpECESSetKey_SM2
    dq e9_ippsGFpECESSetKey_SM2
    dq l9_ippsGFpECESSetKey_SM2
    dq n0_ippsGFpECESSetKey_SM2
    dq k0_ippsGFpECESSetKey_SM2

segment .text
global ippsGFpECESSetKey_SM2:function (ippsGFpECESSetKey_SM2.LEndippsGFpECESSetKey_SM2 - ippsGFpECESSetKey_SM2)
.Lin_ippsGFpECESSetKey_SM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECESSetKey_SM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECESSetKey_SM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECESSetKey_SM2:
