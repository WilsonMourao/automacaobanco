#language: pt

Funcionalidade: Abrir Conta

    Sendo um gerente do Banco
    Quero abrir contas para os clientes
        
    Cenário: Abrir Conta
        Dado que acesso a pagina de abertura de conta 
        Quando abro conta para o cliente:
        |nome|Draco Malfoy|
        |moeda|Dollar|
        Então vejo a mensagem: "Account created successfully with account Number :"