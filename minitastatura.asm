​

; Definirea porturilor pentru linii și coloane​

LINIE_PORT equ 0x00  ; Adresa portului pentru linii (de exemplu, linia 1, 2 și 3)​

COLOANA_PORT equ 0x01  ; Adresa portului pentru coloane (de exemplu, coloana 1, 2 și 3)​

section .text​

global main​

main:​

    ; Inițializare porturi pentru linii ca intrări și porturi pentru coloane ca ieșiri​

    mov al, 0b00000111    ; Configurare port linii ca intrări (primele 3 biți sunt 1)​

    out LINIE_PORT, al     ; Scrie configurația în registrul de control al porturilor pentru linii​

    mov al, 0b11111000    ; Configurare port coloane ca ieșiri (ultimii 3 biți sunt 1)​

    out COLOANA_PORT, al   ; Scrie configurația în registrul de control al porturilor pentru coloane​

    call scan_keyboard     ; Apelul rutinei de scanare a tastaturii​

    jmp $                  ​

; Rutina pentru scanarea mini-tastaturii​

scan_keyboard:​

    ; Iterăm prin fiecare coloană și verificăm fiecare linie pentru a detecta butonul apăsat​

    mov cx, 3  ; Numărul de coloane​

scan_col:​

    ; Setăm coloana curentă la 0 și celelalte la 1 pentru a citi starea butoanelor pe rând​

    mov al, 0b11111000    ; Configurare port coloane ca ieșiri (ultimii 3 biți sunt 1)​

    out COLOANA_PORT, al   ; Scrie configurația în registrul de control al porturilor pentru coloane​

    ; Setăm coloana curentă la 0​

    ; De exemplu, pentru a verifica coloana 1, setăm primul bit la 0​

    mov al, 0b11111110    ; Primul bit este 0, restul sunt 1​

    out COLOANA_PORT, al   ; Scrie configurația în registrul de control al porturilor pentru coloane​

    ; Verificăm starea fiecărei linii​

    mov dx, LINIE_PORT     ; Adresa portului pentru linii​

    in al, dx              ; Citim starea butoanelor de pe linii în registrul AL​

   ; Trecem la următoarea coloană​

    inc COLOANA_PORT       ; Trecem la următoarea coloană​

    loop scan_col          ; Continuăm să verificăm toate coloanele​

    ret
