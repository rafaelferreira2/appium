#language: pt

Funcionalidade: Avengers

    @lista
    Cenario: Lista

        Dado que acesso a tela lista
        Quando eu clico no botão de clique simples
        Então devo ver a notificação: "Isso é um clique simples"

    @busca
    Cenario: Busca

        Dado que acesso a tela de busca
        Quando eu pressiono o botão de clique longo
        Então O botão deve apresentar o texto "CLIQUE LONGO OK"