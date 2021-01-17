extern m7_ippsGFpSetElementHash:function
extern n8_ippsGFpSetElementHash:function
extern y8_ippsGFpSetElementHash:function
extern e9_ippsGFpSetElementHash:function
extern l9_ippsGFpSetElementHash:function
extern n0_ippsGFpSetElementHash:function
extern k0_ippsGFpSetElementHash:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpSetElementHash
.Larraddr_ippsGFpSetElementHash:
    dq m7_ippsGFpSetElementHash
    dq n8_ippsGFpSetElementHash
    dq y8_ippsGFpSetElementHash
    dq e9_ippsGFpSetElementHash
    dq l9_ippsGFpSetElementHash
    dq n0_ippsGFpSetElementHash
    dq k0_ippsGFpSetElementHash

segment .text
global ippsGFpSetElementHash:function (ippsGFpSetElementHash.LEndippsGFpSetElementHash - ippsGFpSetElementHash)
.Lin_ippsGFpSetElementHash:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpSetElementHash:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpSetElementHash]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpSetElementHash:
