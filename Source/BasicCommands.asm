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
BRAYCONN	DB 'Brayconn moment ', 0
HOWGIF		DB 'https://imgur.com/gallery/8cfRt', 0
RESPONSE	DB 'how are you?', 0

.code
public OnMessageASM
OnMessageASM PROC
	;pop rcx
	;mov rcx, [rsp]
	cmp byte ptr [rcx], 3dh
	je myjumplocation
	cmp byte ptr [rcx], 2dh
	je myjumplocationtwo
	cmp byte ptr [rcx], 5fh
	je myjumplocationthree
	mov rax, 0
	ret

myjumplocation:
	mov RAX, offset RESPONSE
	;cmp rax, 1
	;mov rax, offset MTWO
	ret
myjumplocationtwo:
	mov RAX, offset HOWGIF
	ret
myjumplocationthree:
	mov RAX, offset BRAYCONN
	ret
OnMessageASM endp

end
;public StringTrue
;StringTrue proc
	;cmp rax, 