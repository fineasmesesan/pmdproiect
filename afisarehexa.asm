;rutina de afişare a unui caracter hexa pe un rang cu segmente.​

section .data​

    ; Maparea segmentelor pentru cifrele hexazecimale​

    seg_map db 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71​

section .text​

global main​

main:​

    ; Afișarea unui caracter hexazecimal pe un display cu 7 segmente​

    mov bl, 'A'         ; Caracterul hexazecimal de afișat (în acest caz 'A')​

    ; Verificăm dacă caracterul este literă ('A' - 'F') sau cifră ('0' - '9')​

    cmp bl, '0'​

    jb is_letter        ; Dacă caracterul este mai mic decât '0', este o literă​

    cmp bl, '9'​

    ja is_letter        ; Dacă caracterul este mai mare decât '9', este o literă​

    ; Este o cifră ('0' - '9')​

    sub bl, '0'         ; Conversie caracter în valoare numerică​

    jmp display_digit​

is_letter:​

    sub bl, 'A' - 10    ; Conversie caracter în valoare numerică hexazecimală​

display_digit:​

    ; Încarcăm configurația segmentelor pentru caracterul hexazecimal într-un registru (de exemplu, AL)​

    mov al, [seg_map + bl]    ; Accesăm configurația pentru segmente corespunzătoare caracterului​

    ; Afișăm configurația pe display-ul cu 7 segmente​

    ; Exemplu: afișăm configurația pe un port specific sau folosim o rutină specifică de afișare​

jmp $    
