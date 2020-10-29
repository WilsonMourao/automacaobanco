#language: pt

Funcionalidade: Adicionar Cliente

    Sendo um Bank Manager
    Quero cadastrar clientes
        
    Cenário: Cadastrar Cliente
        Dado que acesso a pagina de cadastro de clientes
        Quando submeto o cadastro do cliente com:
            | nome          | Maria   |
            | sobrenome     | Menezes |
            | codigo_postal | BT65876 |
        Então aparece a mensagem: "Customer added successfully with customer id :"
