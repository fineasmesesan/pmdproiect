;rutina de emisie caracter pe interfata seriala;​

; Definirea adreselor registrelor 8251​

DATA_REGISTER equ 0x00    ; Adresa registrelor de date pentru transmitere si receptie​

STATUS_REGISTER equ 0x01  ; Adresa registrelor de stare​

section .text​

global main​

main:​

    ; Transmitere a unui caracter​

    mov al, 'A'             ​

    call send_char          ​

​

    ; A?teptare pentru a se asigura ca transmiterea a fost finalizata​

    call wait_for_transmission_complete​

​

    ; Primirea unui caracter​

    call receive_char      ​

    jmp $       
