```assembly
mov ax, 1000h ; Load a 16-bit value into AX
mov bx, 20000h ; Load a 16-bit value into BX that would cause overflow
add ax, bx   ; Add BX to AX
jo overflow_handler ; Jump to overflow_handler if overflow occurred
; ... code continues if no overflow ...

jmp end_program

overflow_handler:
; ... handle overflow condition ... 
; e.g., set an error flag, display a message
mov cx, 1 ; Set error flag
end_program:
```