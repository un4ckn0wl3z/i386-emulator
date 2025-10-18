00000000  E812000000        call 0x17
00000005  E9F683FFFF        jmp 0xffff8400
0000000A  55                push ebp
0000000B  89E5              mov ebp,esp
0000000D  8B5508            mov edx,[ebp+0x8]
00000010  8B450C            mov eax,[ebp+0xc]
00000013  01D0              add eax,edx
00000015  5D                pop ebp
00000016  C3                ret
00000017  55                push ebp
00000018  89E5              mov ebp,esp
0000001A  6A05              push byte +0x5
0000001C  6A02              push byte +0x2
0000001E  E8E7FFFFFF        call 0xa
00000023  83C408            add esp,byte +0x8
00000026  C9                leave
00000027  C3                ret
