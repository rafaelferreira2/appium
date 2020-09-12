#language: pt

Funcionalidade: Avengers

    @lista
    Esquema do Cenario: Lista

        Dado que acesso a tela lista de heróis
        Quando eu clico no heroi <heroi>
        Então devo ver a descrição

        Exemplos:
        | heroi     |
        | "Capitao" |
        | "Thor"    |
        | "Iron"    |
        | "Hulk"    |
        | "Aranha"  |


    @busca
    Cenario: Busca

        Dado que acesso a tela de busca
        Quando eu busco por ""
        Então O botão deve apresentar o texto "CLIQUE LONGO OK"