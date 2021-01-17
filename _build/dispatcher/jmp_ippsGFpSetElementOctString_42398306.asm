extern m7_ippsGFpSetElementOctString:function
extern n8_ippsGFpSetElementOctString:function
extern y8_ippsGFpSetElementOctString:function
extern e9_ippsGFpSetElementOctString:function
extern l9_ippsGFpSetElementOctString:function
extern n0_ippsGFpSetElementOctString:function
extern k0_ippsGFpSetElementOctString:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpSetElementOctString
.Larraddr_ippsGFpSetElementOctString:
    dq m7_ippsGFpSetElementOctString
    dq n8_ippsGFpSetElementOctString
    dq y8_ippsGFpSetElementOctString
    dq e9_ippsGFpSetElementOctString
    dq l9_ippsGFpSetElementOctString
    dq n0_ippsGFpSetElementOctString
    dq k0_ippsGFpSetElementOctString

segment .text
global ippsGFpSetElementOctString:function (ippsGFpSetElementOctString.LEndippsGFpSetElementOctString - ippsGFpSetElementOctString)
.Lin_ippsGFpSetElementOctString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpSetElementOctString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpSetElementOctString]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpSetElementOctString:
