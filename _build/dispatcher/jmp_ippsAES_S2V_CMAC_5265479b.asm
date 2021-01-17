extern m7_ippsAES_S2V_CMAC:function
extern n8_ippsAES_S2V_CMAC:function
extern y8_ippsAES_S2V_CMAC:function
extern e9_ippsAES_S2V_CMAC:function
extern l9_ippsAES_S2V_CMAC:function
extern n0_ippsAES_S2V_CMAC:function
extern k0_ippsAES_S2V_CMAC:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_S2V_CMAC
.Larraddr_ippsAES_S2V_CMAC:
    dq m7_ippsAES_S2V_CMAC
    dq n8_ippsAES_S2V_CMAC
    dq y8_ippsAES_S2V_CMAC
    dq e9_ippsAES_S2V_CMAC
    dq l9_ippsAES_S2V_CMAC
    dq n0_ippsAES_S2V_CMAC
    dq k0_ippsAES_S2V_CMAC

segment .text
global ippsAES_S2V_CMAC:function (ippsAES_S2V_CMAC.LEndippsAES_S2V_CMAC - ippsAES_S2V_CMAC)
.Lin_ippsAES_S2V_CMAC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_S2V_CMAC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_S2V_CMAC]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_S2V_CMAC:
