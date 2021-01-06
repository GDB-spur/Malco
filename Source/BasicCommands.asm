;Testing program
;Spur
;.386
;.model small,c
;.stack 4096
extern strcmp:proc
.data
;Calling certain variables from C

  fmtlist   db     "%s, %d, %lu", 0Ah,0
  string_1  db     "signed byte and unsigned double word", 0
  data_1    db     -2
  data_2    dd     0FFFFFFFFh

 ;Functions

BRAYMESSAGE	DB 'Brayconn moment https://media.discordapp.net/avatars/145351267256893440/e834a22a03021ef131522ffa84ae7d26.png?size=4096', 0
HOWMESSAGE	DB 'https://imgur.com/gallery/8cfRt', 0
HIMESSAGE	DB 'how are you?', 0

  ;Commands
HOW			DB '=how', 0
BRAY		DB '=bray', 0
HI			DB '=hi', 0

.code
public OnMessageASM
OnMessageASM PROC
	;pop rcx
	;mov rcx, [
	mov rdi, rcx
	mov rdx, offset HOW
	call strcmp
	cmp rax, 0
	jz howresponse
	mov rcx, rdi
	mov rdx, offset BRAY
	call strcmp
	cmp rax, 0
	jz brayresponse
	mov rcx, rdi
	mov rdx, offset HI
	call strcmp
	cmp rax, 0
	jz hiresponse
	mov rax, 0
	ret

howresponse:
	mov RAX, offset HOWMESSAGE
	ret
brayresponse:
	mov RAX, offset BRAYMESSAGE
	ret
hiresponse:
	mov RAX, offset HIMESSAGE
	ret
OnMessageASM endp

end
;public StringTrue
;StringTrue proc
	;cmp rax, 