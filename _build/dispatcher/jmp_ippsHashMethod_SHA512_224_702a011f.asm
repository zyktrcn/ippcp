extern m7_ippsHashMethod_SHA512_224:function
extern n8_ippsHashMethod_SHA512_224:function
extern y8_ippsHashMethod_SHA512_224:function
extern e9_ippsHashMethod_SHA512_224:function
extern l9_ippsHashMethod_SHA512_224:function
extern n0_ippsHashMethod_SHA512_224:function
extern k0_ippsHashMethod_SHA512_224:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashMethod_SHA512_224
.Larraddr_ippsHashMethod_SHA512_224:
    dq m7_ippsHashMethod_SHA512_224
    dq n8_ippsHashMethod_SHA512_224
    dq y8_ippsHashMethod_SHA512_224
    dq e9_ippsHashMethod_SHA512_224
    dq l9_ippsHashMethod_SHA512_224
    dq n0_ippsHashMethod_SHA512_224
    dq k0_ippsHashMethod_SHA512_224

segment .text
global ippsHashMethod_SHA512_224:function (ippsHashMethod_SHA512_224.LEndippsHashMethod_SHA512_224 - ippsHashMethod_SHA512_224)
.Lin_ippsHashMethod_SHA512_224:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashMethod_SHA512_224:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashMethod_SHA512_224]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashMethod_SHA512_224:
