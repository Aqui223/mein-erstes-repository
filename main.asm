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
	.ascii "Hi\n"
	len = . - msg
