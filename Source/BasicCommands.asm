;Testing program
;Spur
;.386
;.model flat,stdcall
;.stack 4096

.data

MSG			DB 'MASM', 0

.code
public OnMessageASM
OnMessageASM PROC
	mov rax, 1337
	ret
OnMessageASM endp

end