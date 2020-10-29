#language: pt

Funcionalidade: Efetuar Saque

    Sendo um cliente do Banco
    Quero efetuar saques na minha conta bancária

    Cenário: Sacar
        Dado que estou logado como:
            | nome | Draco Malfoy |
            E informo o valor a ser sacado:
            | valor | 100.00 |
        Então devo visualizar na tela a mensagem: "Transaction successful"