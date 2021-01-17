extern m7_ippsGFpECSetPointRegular:function
extern n8_ippsGFpECSetPointRegular:function
extern y8_ippsGFpECSetPointRegular:function
extern e9_ippsGFpECSetPointRegular:function
extern l9_ippsGFpECSetPointRegular:function
extern n0_ippsGFpECSetPointRegular:function
extern k0_ippsGFpECSetPointRegular:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSetPointRegular
.Larraddr_ippsGFpECSetPointRegular:
    dq m7_ippsGFpECSetPointRegular
    dq n8_ippsGFpECSetPointRegular
    dq y8_ippsGFpECSetPointRegular
    dq e9_ippsGFpECSetPointRegular
    dq l9_ippsGFpECSetPointRegular
    dq n0_ippsGFpECSetPointRegular
    dq k0_ippsGFpECSetPointRegular

segment .text
global ippsGFpECSetPointRegular:function (ippsGFpECSetPointRegular.LEndippsGFpECSetPointRegular - ippsGFpECSetPointRegular)
.Lin_ippsGFpECSetPointRegular:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSetPointRegular:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSetPointRegular]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSetPointRegular:
