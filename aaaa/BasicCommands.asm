.386
.model flat,stdcall
.stack4096
ExitProcess proto,dwExitCode:dword

.data


.code
main proc
	mov eax, 7
	add eax, 4
	push, eax

	invoke ExitProcess, 0

main endp

end main