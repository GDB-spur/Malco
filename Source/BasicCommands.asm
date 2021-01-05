;Testing program
;Spur
;.386
;.model small,c
;.stack 4096

.data
;Calling certain variables from C

  fmtlist   db     "%s, %d, %lu", 0Ah,0
  string_1  db     "signed byte and unsigned double word", 0
  data_1    db     -2
  data_2    dd     0FFFFFFFFh

 ;Functions

MSG			DB 'MASM', 0
MONE		DB 'Brayconn, ', 0
MTWO		DB 'Txin, Smudge, Kayo, Spur, ', 0
MTHREE		DB 'how are you?', 0

.code
public OnMessageASM
OnMessageASM PROC
	;pop rcx
	;mov rcx, [rsp]
	cmp byte ptr [rcx], 3Dh
	je myjumplocation
	mov rax, 0
	ret

myjumplocation:
	mov RAX, offset MTHREE
	;cmp rax, 1
	;mov rax, offset MTWO
	ret
OnMessageASM endp

end

public OnMessageASMTWO
OnMessageASMTWO PROC
	mov rax, offset MSG
	ret
OnMessageASMTWO endp
end

;public StringTrue
;StringTrue proc
	;cmp rax, 