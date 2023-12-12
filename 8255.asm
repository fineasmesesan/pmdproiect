;subrutina de programare a circuitului 8255 ​ 

​

section .text ​

global main ​

main: ​

call init_8251 ​

; Transmiterea unui caracter ​

MOV AL, 'A' ​

call send_char ​

jmp $ ; OPRIRE
