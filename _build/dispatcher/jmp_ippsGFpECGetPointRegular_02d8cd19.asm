extern m7_ippsGFpECGetPointRegular:function
extern n8_ippsGFpECGetPointRegular:function
extern y8_ippsGFpECGetPointRegular:function
extern e9_ippsGFpECGetPointRegular:function
extern l9_ippsGFpECGetPointRegular:function
extern n0_ippsGFpECGetPointRegular:function
extern k0_ippsGFpECGetPointRegular:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECGetPointRegular
.Larraddr_ippsGFpECGetPointRegular:
    dq m7_ippsGFpECGetPointRegular
    dq n8_ippsGFpECGetPointRegular
    dq y8_ippsGFpECGetPointRegular
    dq e9_ippsGFpECGetPointRegular
    dq l9_ippsGFpECGetPointRegular
    dq n0_ippsGFpECGetPointRegular
    dq k0_ippsGFpECGetPointRegular

segment .text
global ippsGFpECGetPointRegular:function (ippsGFpECGetPointRegular.LEndippsGFpECGetPointRegular - ippsGFpECGetPointRegular)
.Lin_ippsGFpECGetPointRegular:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECGetPointRegular:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECGetPointRegular]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECGetPointRegular:
