#language: pt

@cadastro
Funcionalidade: Cadastro

    @cadastro_ok
    Cenario: Cadastro com sucesso

        Dado que acesso a tela de cadastro
        Quando submeto as informações da pessoa <pessoa>
        Então devo ver a notificação: "Tudo certo, recebemos seus dados!"

        Exemplos:
        | pessoa   |
        | "dev"    |
        | "qa"     |
        | "devops" |
        | "ux"     |

    @nome_null
    Cenario: Nome em branco

        Dado que acesso a tela de cadastro
        Quando submeto minhas informações:
            |nome||
            |email|sf.rafael20@gmail.com|
            |senha|teste652|
        Então devo ver o alerta: "Informe seu nome"

    @email_null
    Cenario: Email em branco

        Dado que acesso a tela de cadastro
        Quando submeto minhas informações:
            |nome|Rafael Ferreira|
            |email||
            |senha|teste652|
        Então devo ver o alerta: "Por favor, informe um email bom!"

    @senha_null
    Cenario: Senha em branco

        Dado que acesso a tela de cadastro
        Quando submeto minhas informações:
            |nome|Rafael Ferreira|
            |email|sf.rafael20@gmail.com|
            |senha||
        Então devo ver o alerta: "Oops! Senha em branco!"