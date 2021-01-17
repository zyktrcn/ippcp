extern m7_ippsGFpAdd_PE:function
extern n8_ippsGFpAdd_PE:function
extern y8_ippsGFpAdd_PE:function
extern e9_ippsGFpAdd_PE:function
extern l9_ippsGFpAdd_PE:function
extern n0_ippsGFpAdd_PE:function
extern k0_ippsGFpAdd_PE:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpAdd_PE
.Larraddr_ippsGFpAdd_PE:
    dq m7_ippsGFpAdd_PE
    dq n8_ippsGFpAdd_PE
    dq y8_ippsGFpAdd_PE
    dq e9_ippsGFpAdd_PE
    dq l9_ippsGFpAdd_PE
    dq n0_ippsGFpAdd_PE
    dq k0_ippsGFpAdd_PE

segment .text
global ippsGFpAdd_PE:function (ippsGFpAdd_PE.LEndippsGFpAdd_PE - ippsGFpAdd_PE)
.Lin_ippsGFpAdd_PE:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpAdd_PE:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpAdd_PE]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpAdd_PE:
