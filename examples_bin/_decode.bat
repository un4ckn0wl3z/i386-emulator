@echo off
%~d0
cd %~dp0
for %%f in (*.bin) do ndisasm -b 32 "%%f" > "%%~nf.asm"
