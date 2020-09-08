Dado("que acesso a tela de dialog") do
    @nav.tap_hamburger
    @nav.tap_by_text("DIALOGS")
end

Quando("eu clico em {string}") do |target|
    @nav.tap_by_text("#{target}")
end

Então("devo ver o dialog com o título {string}") do |titulo|
    expect(@dialog.titulo.text).to eql titulo
end

Então("o subtitulo {string}") do |subtitulo|
    expect(@dialog.subtitulo.text).to eql subtitulo
end

Então("o conteudo {string}") do |conteudo|
    expect(@dialog.conteudo.text).to eql conteudo
end

Então("clico no dialog") do
    @dialog.btn_ok.click
    sleep 1
end