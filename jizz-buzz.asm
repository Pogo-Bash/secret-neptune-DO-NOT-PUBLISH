section .data
    fizz db "Fizz",0
    buzz db "Buzz",0
    fizzbuzz db "FizzBuzz",0

section .text
    global _start

_start:
    mov ecx, 1       ; initialize loop counter
loop_start:
    cmp ecx, 101     ; check if loop counter has reached 101
    jge end_loop     ; exit loop if it has
    push ecx         ; save loop counter on stack

    mov eax, ecx     ; copy loop counter to EAX
    xor edx, edx     ; zero out EDX register for division
    mov ebx, 3       ; divisor for Fizz
    div ebx          ; divide EAX by 3
    cmp edx, 0       ; check if remainder is 0
    jne buzz_check   ; if not, check Buzz
    push fizzbuzz    ; print FizzBuzz
    jmp print_str

buzz_check:
    mov eax, ecx     ; copy loop counter to EAX
    xor edx, edx     ; zero out EDX register for division
    mov ebx, 5       ; divisor for Buzz
    div ebx          ; divide EAX by 5
    cmp edx, 0       ; check if remainder is 0
    jne print_num    ; if not, print number
    push buzz        ; print Buzz
    jmp print_str

print_num:
    pop eax          ; restore loop counter from stack
    push eax         ; convert to string
    push num_format  ; format string for printing number
    call printf      ; print number
    add esp, 8       ; clean up stack after function call
    jmp end_loop

print_str:
    push eax         ; print string
    call printf
    add esp, 8       ; clean up stack after function call
    jmp end_loop

end_loop:
    mov eax, 1       ; exit program with status 0
    xor ebx, ebx
    int 0x80

section .data
    num_format db "%d", 10, 0

section .text
    extern printf
