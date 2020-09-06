#language: pt

Funcionalidade: Botões

    @clique
    Cenario: Clique simples

        Dado que acesso a tela de clique simples
        Quando eu clico no botão de clique simples
        Então devo ver a notificação: "Isso é um clique simples"

    @cliqueLongo
    Cenario: Clique longo

        Dado que acesso a tela de clique longo
        Quando eu pressiono o botão de clique longo
        Então O botão deve apresentar o texto "CLIQUE LONGO OK"