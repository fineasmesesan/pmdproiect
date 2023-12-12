;rutina de aprindere/ stingere a unui led;-- e conectat la portul PORTX0​

section .text​

global main​

​

main:​

    ; Inițializare port pentru LED ca ieșire​

    mov al, 0b00000001   ; Setăm primul bit al registrului pentru a configura pinul ca ieșire (PORTX0)​

    out PORTX, al        ; Scriem configurația în registrul de control al portului PORTX​

​

    ; Aprindem LED-ul​

    mov al, 0b00000001   ; Setăm primul bit pentru a aprinde LED-ul (PORTX0)​

    out PORTX, al        ; Scriem această valoare în port pentru a aprinde LED-ul​

    ; Așteptăm o perioadă de timp (poate fi o rutină de întârziere)​

    ; Stingem LED-ul​

    mov al, 0b00000000   ; Setăm zero pentru a stinge LED-ul (PORTX0)​

    out PORTX, al        ; Scriem această valoare în port pentru a stinge LED-u​

    jmp $      
