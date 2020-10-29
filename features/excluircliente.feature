#language: pt

Funcionalidade: Excluir Cliente

    Sendo um Bank Manager
    Quero excluir clientes

    Cenário: Excluir Cliente
        Dado que acesso a pagina do gerente
            E acesso a tela de Clientes
        Quando eu excluo o cliente:
            | nome | Draco |
        Então o mesmo nao deve mais constar na tabela de clientes