extern m7_ippsGFpGetElementOctString:function
extern n8_ippsGFpGetElementOctString:function
extern y8_ippsGFpGetElementOctString:function
extern e9_ippsGFpGetElementOctString:function
extern l9_ippsGFpGetElementOctString:function
extern n0_ippsGFpGetElementOctString:function
extern k0_ippsGFpGetElementOctString:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpGetElementOctString
.Larraddr_ippsGFpGetElementOctString:
    dq m7_ippsGFpGetElementOctString
    dq n8_ippsGFpGetElementOctString
    dq y8_ippsGFpGetElementOctString
    dq e9_ippsGFpGetElementOctString
    dq l9_ippsGFpGetElementOctString
    dq n0_ippsGFpGetElementOctString
    dq k0_ippsGFpGetElementOctString

segment .text
global ippsGFpGetElementOctString:function (ippsGFpGetElementOctString.LEndippsGFpGetElementOctString - ippsGFpGetElementOctString)
.Lin_ippsGFpGetElementOctString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpGetElementOctString:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpGetElementOctString]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpGetElementOctString:
