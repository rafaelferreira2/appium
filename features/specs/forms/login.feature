#language: pt

@login
Funcionalidade: Login

    @login_ok
    Cenario: Login com sucesso

        Dado que acesso a tela de Login
        Quando submeto minhas credenciais:
            |email|eu@papito.io|
            |senha|qaninja|
        Então devo ver a notificação: "Show! Suas credenciais são validas."

    @email_null
    Cenario: Email em branco

        Dado que acesso a tela de Login
        Quando submeto minhas credenciais:
            |email||
            |senha|teste|
        Então devo ver o alerta: "Por favor, informe um email bom!"

    @pass_error
    Cenario: Senha inválida

        Dado que acesso a tela de Login
        Quando submeto minhas credenciais:
            |email|eu@papito.io|
            |senha|teste|
        Então devo ver a notificação: "Senha inválida!"

    @pass_null
    Cenario: Senha em branco

        Dado que acesso a tela de Login
        Quando submeto minhas credenciais:
            |email|eu@papito.io|
            |senha||
        Então devo ver o alerta: "Oops! Senha em branco!"