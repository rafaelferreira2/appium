#language: pt

Funcionalidade: Avengers

    @remove
    Esquema do Cenario: Remover heroi

        Dado que acesso a tela lista de heróis
        Quando apago o heroi <heroi>
        Então devo ver a seguinte mensagem: "Item removido! (posição = "

        Exemplos:
        | heroi    |
        | "Capitao" |
        | "Thor"    |
        | "Iron"    |
        | "Hulk"    |
        | "Aranha"  |
        

    @lista
    Esquema do Cenario: Lista toque nome

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
    Esquema do Cenario: Busca

        Dado que acesso a tela de busca de herois
        Quando eu busco pelo heroi <heroi>
        Então devo ver o nome do heroi
        E o nome pessoal do heroi

        Exemplos:
        | heroi     |
        | "Capitao" |
        | "Thor"    |
        | "Iron"    |
        | "Hulk"    |
        | "Aranha"  |