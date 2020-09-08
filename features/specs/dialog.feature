#language: pt

Funcionalidade: Dialog

    @dialog
    Cenario: Dialog

        Dado que acesso a tela de dialog
        Quando eu clico em "INFO"
        Então devo ver o dialog com o título "Dialog"
        E o subtitulo "Tio Ben Facts"
        E o conteudo "Com grandes poderes vêm grandes responsabilidades."
        E clico no dialog