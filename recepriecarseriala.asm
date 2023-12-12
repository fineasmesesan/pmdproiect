    ;rutina pentru recepția unui caracter la interfata seriala​

receive_char:​

    ; Așteptăm până când există date disponibile pentru recepție​

    receive_char_loop:​

        in al, STATUS_REGISTER​

        test al, 0x01       ; Testează bitul 0 pentru date disponibile (pot varia detaliile bitului în funcție de specificul 8251)​

        jz receive_char_loop ; Continuă să aștepți până când există date disponibile pentru recepție​

​

    ; Citim caracterul din registrul de date pentru recepție​

    in al, DATA_REGISTER​

    ret
