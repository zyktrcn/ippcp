extern m7_ippcpGetLibVersion:function
extern n8_ippcpGetLibVersion:function
extern y8_ippcpGetLibVersion:function
extern e9_ippcpGetLibVersion:function
extern l9_ippcpGetLibVersion:function
extern n0_ippcpGetLibVersion:function
extern k0_ippcpGetLibVersion:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippcpGetLibVersion
.Larraddr_ippcpGetLibVersion:
    dq m7_ippcpGetLibVersion
    dq n8_ippcpGetLibVersion
    dq y8_ippcpGetLibVersion
    dq e9_ippcpGetLibVersion
    dq l9_ippcpGetLibVersion
    dq n0_ippcpGetLibVersion
    dq k0_ippcpGetLibVersion

segment .text
global ippcpGetLibVersion:function (ippcpGetLibVersion.LEndippcpGetLibVersion - ippcpGetLibVersion)
.Lin_ippcpGetLibVersion:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippcpGetLibVersion:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippcpGetLibVersion]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippcpGetLibVersion:
