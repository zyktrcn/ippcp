extern m7_ippsHashMethod_MD5:function
extern n8_ippsHashMethod_MD5:function
extern y8_ippsHashMethod_MD5:function
extern e9_ippsHashMethod_MD5:function
extern l9_ippsHashMethod_MD5:function
extern n0_ippsHashMethod_MD5:function
extern k0_ippsHashMethod_MD5:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashMethod_MD5
.Larraddr_ippsHashMethod_MD5:
    dq m7_ippsHashMethod_MD5
    dq n8_ippsHashMethod_MD5
    dq y8_ippsHashMethod_MD5
    dq e9_ippsHashMethod_MD5
    dq l9_ippsHashMethod_MD5
    dq n0_ippsHashMethod_MD5
    dq k0_ippsHashMethod_MD5

segment .text
global ippsHashMethod_MD5:function (ippsHashMethod_MD5.LEndippsHashMethod_MD5 - ippsHashMethod_MD5)
.Lin_ippsHashMethod_MD5:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashMethod_MD5:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashMethod_MD5]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashMethod_MD5:
