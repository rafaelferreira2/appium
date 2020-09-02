#language: pt

Funcionalidade: Inputs

    @check
    Cenario: Checkbox

        Dado que acesso a tela Botões de Checkbox
        Quando eu marco as opções "Python" e "Cobol"
        Então as opções devem ser marcadas

    @radio
    Cenario: Radio Button

        Dado que acesso a tela Botões de Radio
        Quando eu escolho a opção Ruby
        Então esta opção deve ser marcada