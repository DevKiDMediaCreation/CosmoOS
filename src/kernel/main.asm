org 0x0
bits 16

%define ENDL 0x0D, 0x0A

start:
	; print msg
	mov si, msg_hello
	call puts

.halt:
	cli
	hlt

; prints a string to the screen.
; Params: - ds:si points to string
puts:
	; save registers we will modify
	push si
	push ax

.loop:
	lodsb               ; loads next character in al
	or al, al           ; check if next char is null
	jz .done

	mov ah, 0x0e        ; Call Bios Interrupt
	mov bh, 0
	int 0x10
	jmp .loop

.done:
	pop ax
	pop si
	ret


msg_hello: db 'Hello world! :: KERNEL RUNS. TEST SUCCESFULLY', ENDL, 0
