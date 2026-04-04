.text
	.global _start

_start:
	movl $len, %edx
	lea msg, %ecx
	movl $1, %ebx
	movl $4, %eax
	int $0x80

	movl $0, %ebx
	movl $1, %eax
	int $0x80

.data
msg:
	.ascii "\x1b[H\x1b[2J\x1b[3J"
	len = . - msg
