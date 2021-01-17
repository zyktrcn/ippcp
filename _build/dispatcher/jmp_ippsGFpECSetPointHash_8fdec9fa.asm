extern m7_ippsGFpECSetPointHash:function
extern n8_ippsGFpECSetPointHash:function
extern y8_ippsGFpECSetPointHash:function
extern e9_ippsGFpECSetPointHash:function
extern l9_ippsGFpECSetPointHash:function
extern n0_ippsGFpECSetPointHash:function
extern k0_ippsGFpECSetPointHash:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSetPointHash
.Larraddr_ippsGFpECSetPointHash:
    dq m7_ippsGFpECSetPointHash
    dq n8_ippsGFpECSetPointHash
    dq y8_ippsGFpECSetPointHash
    dq e9_ippsGFpECSetPointHash
    dq l9_ippsGFpECSetPointHash
    dq n0_ippsGFpECSetPointHash
    dq k0_ippsGFpECSetPointHash

segment .text
global ippsGFpECSetPointHash:function (ippsGFpECSetPointHash.LEndippsGFpECSetPointHash - ippsGFpECSetPointHash)
.Lin_ippsGFpECSetPointHash:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSetPointHash:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSetPointHash]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSetPointHash:
