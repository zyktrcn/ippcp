extern m7_ippsPRNGenRDRAND:function
extern n8_ippsPRNGenRDRAND:function
extern y8_ippsPRNGenRDRAND:function
extern e9_ippsPRNGenRDRAND:function
extern l9_ippsPRNGenRDRAND:function
extern n0_ippsPRNGenRDRAND:function
extern k0_ippsPRNGenRDRAND:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPRNGenRDRAND
.Larraddr_ippsPRNGenRDRAND:
    dq m7_ippsPRNGenRDRAND
    dq n8_ippsPRNGenRDRAND
    dq y8_ippsPRNGenRDRAND
    dq e9_ippsPRNGenRDRAND
    dq l9_ippsPRNGenRDRAND
    dq n0_ippsPRNGenRDRAND
    dq k0_ippsPRNGenRDRAND

segment .text
global ippsPRNGenRDRAND:function (ippsPRNGenRDRAND.LEndippsPRNGenRDRAND - ippsPRNGenRDRAND)
.Lin_ippsPRNGenRDRAND:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPRNGenRDRAND:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPRNGenRDRAND]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPRNGenRDRAND:
