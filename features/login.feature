#language: pt

Funcionalidade: Realizar Login

    Sendo um funcionário do Banco
    Quero efetuar login para entrar no sistema
        
    Cenário: Efetuar Login Cliente
        Dado que acesso a pagina de login 
        Quando efetuo o login com:
        |nome|Hermione Granger|
        Então devo ver a mensagem: "Welcome "

        Cenário: Efetuar Login Gerente
         Dado que acesso a pagina de login
         Quando efetuo login com perfil de gerente
         Então visualizo a tela com as funcionalidades

         Cenário: Efetuar Logout Cliente
         Dado que acesso a pagina de login 
         E efetuo o login com:
         |nome|Hermione Granger|
         Quando efetuo o Logout
         Então devo voltar para a pagina de login