00000000  E81A000000        call 0x1f
00000005  E9F683FFFF        jmp 0xffff8400
0000000A  55                push ebp
0000000B  89E5              mov ebp,esp
0000000D  837D0800          cmp dword [ebp+0x8],byte +0x0
00000011  7805              js 0x18
00000013  8B4508            mov eax,[ebp+0x8]
00000016  EB05              jmp short 0x1d
00000018  8B4508            mov eax,[ebp+0x8]
0000001B  F7D8              neg eax
0000001D  5D                pop ebp
0000001E  C3                ret
0000001F  55                push ebp
00000020  89E5              mov ebp,esp
00000022  B803000000        mov eax,0x3
00000027  5D                pop ebp
00000028  C3                ret
