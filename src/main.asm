; src/main.asm
;
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode : dword
.data
    sum DWORD 0
.code
main proc
    mov eax, 30
    mov ebx, 20
    add eax, ebx
    mov sum, eax
    invoke ExitProcess, 0
main endp
end main
