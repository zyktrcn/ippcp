extern m7_ippsGFpSub_PE:function
extern n8_ippsGFpSub_PE:function
extern y8_ippsGFpSub_PE:function
extern e9_ippsGFpSub_PE:function
extern l9_ippsGFpSub_PE:function
extern n0_ippsGFpSub_PE:function
extern k0_ippsGFpSub_PE:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpSub_PE
.Larraddr_ippsGFpSub_PE:
    dq m7_ippsGFpSub_PE
    dq n8_ippsGFpSub_PE
    dq y8_ippsGFpSub_PE
    dq e9_ippsGFpSub_PE
    dq l9_ippsGFpSub_PE
    dq n0_ippsGFpSub_PE
    dq k0_ippsGFpSub_PE

segment .text
global ippsGFpSub_PE:function (ippsGFpSub_PE.LEndippsGFpSub_PE - ippsGFpSub_PE)
.Lin_ippsGFpSub_PE:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpSub_PE:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpSub_PE]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpSub_PE:
