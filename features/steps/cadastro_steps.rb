Dado("que acesso a tela de cadastro") do
    @nav.tap_hamburger
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("CADASTRO")
end

Quando("submeto as informações da pessoa {string}") do |pessoa|
    pessoas = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/cadastro.yml"))
    pessoa_alvo = pessoas["#{pessoa}"]

    @cadastro.insere(pessoa_alvo)
end