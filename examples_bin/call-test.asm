00000000  B8F1000000        mov eax,0xf1
00000005  BB29000000        mov ebx,0x29
0000000A  E805000000        call 0x14
0000000F  E9EC83FFFF        jmp 0xffff8400
00000014  89C1              mov ecx,eax
00000016  01D9              add ecx,ebx
00000018  C3                ret
