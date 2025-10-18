00000000  E805000000        call 0xa
00000005  E9F683FFFF        jmp 0xffff8400
0000000A  55                push ebp
0000000B  89E5              mov ebp,esp
0000000D  83EC10            sub esp,byte +0x10
00000010  C745FC28000000    mov dword [ebp-0x4],0x28
00000017  FF45FC            inc dword [ebp-0x4]
0000001A  8B45FC            mov eax,[ebp-0x4]
0000001D  C9                leave
0000001E  C3                ret
