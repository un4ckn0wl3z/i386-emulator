00000000  E82A000000        call 0x2f
00000005  E9F683FFFF        jmp 0xffff8400
0000000A  55                push ebp
0000000B  89E5              mov ebp,esp
0000000D  83EC10            sub esp,byte +0x10
00000010  C745FC00000000    mov dword [ebp-0x4],0x0
00000017  EB09              jmp short 0x22
00000019  8B4508            mov eax,[ebp+0x8]
0000001C  0145FC            add [ebp-0x4],eax
0000001F  FF4508            inc dword [ebp+0x8]
00000022  8B4508            mov eax,[ebp+0x8]
00000025  3B450C            cmp eax,[ebp+0xc]
00000028  7EEF              jng 0x19
0000002A  8B45FC            mov eax,[ebp-0x4]
0000002D  C9                leave
0000002E  C3                ret
0000002F  55                push ebp
00000030  89E5              mov ebp,esp
00000032  6A0A              push byte +0xa
00000034  6A01              push byte +0x1
00000036  E8CFFFFFFF        call 0xa
0000003B  83C408            add esp,byte +0x8
0000003E  C9                leave
0000003F  C3                ret
