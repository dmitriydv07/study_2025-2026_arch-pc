;------------------------------------------------------------------
; Программа вывода сообщения на экран и ввода строки с клавиатуры
;------------------------------------------------------------------

SECTION .data                 ; Секция инициированных данных
    msg     db 'Введите строку:', 10
    msgLen  equ $ - msg        ; Длина переменной 'msg'

SECTION .bss                  ; Секция неинициированных данных
    buf1    resb 80            ; Буфер размером 80 байт

SECTION .text                 ; Код программы
    global _start              ; Начало программы

_start:
    mov eax, 4                 ; sys_write
    mov ebx, 1                 ; stdout
    mov ecx, msg               ; адрес строки
    mov edx, msgLen            ; длина строки
    int 80h

    mov eax, 3                 ; sys_read
    mov ebx, 0                 ; stdin
    mov ecx, buf1              ; буфер
    mov edx, 80
    int 80h

    mov eax, 1                 ; sys_exit
    mov ebx, 0
    int 80h
