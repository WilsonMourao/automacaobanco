#language: pt

Funcionalidade: Efetuar Depósito

    Sendo um cliente do Banco
    Quero efetuar depósito na minha conta bancária

    Cenário: Depositar
        Dado que estou logado como:
            | nome | Draco Malfoy |
            E informo o valor a ser depositado:
            | valor | 100.00 |
        Então visualizo a mensagem: "Deposit Successful"