extern m7_ippsGFpECScratchBufferSize:function
extern n8_ippsGFpECScratchBufferSize:function
extern y8_ippsGFpECScratchBufferSize:function
extern e9_ippsGFpECScratchBufferSize:function
extern l9_ippsGFpECScratchBufferSize:function
extern n0_ippsGFpECScratchBufferSize:function
extern k0_ippsGFpECScratchBufferSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECScratchBufferSize
.Larraddr_ippsGFpECScratchBufferSize:
    dq m7_ippsGFpECScratchBufferSize
    dq n8_ippsGFpECScratchBufferSize
    dq y8_ippsGFpECScratchBufferSize
    dq e9_ippsGFpECScratchBufferSize
    dq l9_ippsGFpECScratchBufferSize
    dq n0_ippsGFpECScratchBufferSize
    dq k0_ippsGFpECScratchBufferSize

segment .text
global ippsGFpECScratchBufferSize:function (ippsGFpECScratchBufferSize.LEndippsGFpECScratchBufferSize - ippsGFpECScratchBufferSize)
.Lin_ippsGFpECScratchBufferSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECScratchBufferSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECScratchBufferSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECScratchBufferSize:
