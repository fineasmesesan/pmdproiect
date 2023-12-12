rutina de emisie caracter pe interfaţă paralelă;​

; Definirea adreselor porturilor 8255​

PORTA equ 0x00   ; Adresa portului A​

PORTB equ 0x01   ; Adresa portului B​

PORTC equ 0x02   ; Adresa portului C (poate fi configurat și ca port de date pentru 8255)​

​

section .text​

global main​

​

main:​

    ; Inițializare port B ca port de ieșire​

    mov al, 0xFF       ; Configurare port B ca ieșire (toți biții sunt setați la 1 pentru transmisie)​

    out PORTB, al      ; Scrie configurația în registrul de control al portului B​

​

    ; Transmitere a unui caracter​

    mov al, 'A'       ​

    call send_char    ​

    jmp $             ​

; Rutina pentru trimiterea unui caracter​

send_char:​

    ; Scrie caracterul în portul B pentru a-l transmite​

    out PORTB, al​

    ret​
