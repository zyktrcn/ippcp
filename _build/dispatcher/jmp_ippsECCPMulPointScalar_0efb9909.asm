extern m7_ippsECCPMulPointScalar:function
extern n8_ippsECCPMulPointScalar:function
extern y8_ippsECCPMulPointScalar:function
extern e9_ippsECCPMulPointScalar:function
extern l9_ippsECCPMulPointScalar:function
extern n0_ippsECCPMulPointScalar:function
extern k0_ippsECCPMulPointScalar:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPMulPointScalar
.Larraddr_ippsECCPMulPointScalar:
    dq m7_ippsECCPMulPointScalar
    dq n8_ippsECCPMulPointScalar
    dq y8_ippsECCPMulPointScalar
    dq e9_ippsECCPMulPointScalar
    dq l9_ippsECCPMulPointScalar
    dq n0_ippsECCPMulPointScalar
    dq k0_ippsECCPMulPointScalar

segment .text
global ippsECCPMulPointScalar:function (ippsECCPMulPointScalar.LEndippsECCPMulPointScalar - ippsECCPMulPointScalar)
.Lin_ippsECCPMulPointScalar:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPMulPointScalar:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPMulPointScalar]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPMulPointScalar:
