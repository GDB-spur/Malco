;Testing program
;Spur
;.386
;.model flat,stdcall
;.stack 4096

.data

MSG			DB 'MASM', 0
MTWO		DB 'Brayconn '
MTHREE		DB ',how are you?', 0

.code
public OnMessageASM
OnMessageASM PROC
	mov rax, offset MTWO
	;mov rax, offset MTHREE
	ret
OnMessageASM endp

end