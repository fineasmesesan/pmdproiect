;subrutina de programre a circuitului 8251 ​

​

section .text ​

global main ​

main:​

; Initializare 8251 ​

call init_8251  ​

; Transmitere caracter​

MOV AL, 'A'  ;​

call send_char  ​

jmp $  ; oprire
