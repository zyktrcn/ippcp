extern m7_ippsHashMethod_SHA512_256:function
extern n8_ippsHashMethod_SHA512_256:function
extern y8_ippsHashMethod_SHA512_256:function
extern e9_ippsHashMethod_SHA512_256:function
extern l9_ippsHashMethod_SHA512_256:function
extern n0_ippsHashMethod_SHA512_256:function
extern k0_ippsHashMethod_SHA512_256:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashMethod_SHA512_256
.Larraddr_ippsHashMethod_SHA512_256:
    dq m7_ippsHashMethod_SHA512_256
    dq n8_ippsHashMethod_SHA512_256
    dq y8_ippsHashMethod_SHA512_256
    dq e9_ippsHashMethod_SHA512_256
    dq l9_ippsHashMethod_SHA512_256
    dq n0_ippsHashMethod_SHA512_256
    dq k0_ippsHashMethod_SHA512_256

segment .text
global ippsHashMethod_SHA512_256:function (ippsHashMethod_SHA512_256.LEndippsHashMethod_SHA512_256 - ippsHashMethod_SHA512_256)
.Lin_ippsHashMethod_SHA512_256:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashMethod_SHA512_256:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashMethod_SHA512_256]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashMethod_SHA512_256:
