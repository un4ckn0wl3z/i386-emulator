00000000  83EC10            sub esp,byte +0x10
00000003  89E5              mov ebp,esp
00000005  B802000000        mov eax,0x2
0000000A  C7450405000000    mov dword [ebp+0x4],0x5
00000011  014504            add [ebp+0x4],eax
00000014  8B7504            mov esi,[ebp+0x4]
00000017  FF4504            inc dword [ebp+0x4]
0000001A  8B7D04            mov edi,[ebp+0x4]
0000001D  E9DE83FFFF        jmp 0xffff8400
