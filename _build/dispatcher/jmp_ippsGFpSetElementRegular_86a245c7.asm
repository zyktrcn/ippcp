extern m7_ippsGFpSetElementRegular:function
extern n8_ippsGFpSetElementRegular:function
extern y8_ippsGFpSetElementRegular:function
extern e9_ippsGFpSetElementRegular:function
extern l9_ippsGFpSetElementRegular:function
extern n0_ippsGFpSetElementRegular:function
extern k0_ippsGFpSetElementRegular:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpSetElementRegular
.Larraddr_ippsGFpSetElementRegular:
    dq m7_ippsGFpSetElementRegular
    dq n8_ippsGFpSetElementRegular
    dq y8_ippsGFpSetElementRegular
    dq e9_ippsGFpSetElementRegular
    dq l9_ippsGFpSetElementRegular
    dq n0_ippsGFpSetElementRegular
    dq k0_ippsGFpSetElementRegular

segment .text
global ippsGFpSetElementRegular:function (ippsGFpSetElementRegular.LEndippsGFpSetElementRegular - ippsGFpSetElementRegular)
.Lin_ippsGFpSetElementRegular:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpSetElementRegular:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpSetElementRegular]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpSetElementRegular:
