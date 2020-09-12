
Dado('que acesso a tela lista de heróis') do
    @nav.tap_hamburger
    @nav.tap_by_text("AVENGERS")
    @nav.tap_by_text("LISTA")
end

Dado('que acesso a tela de busca de herois') do
    @nav.tap_hamburger
    @nav.tap_by_text("AVENGERS")
    @nav.tap_by_text("BUSCA")
end

Quando('eu clico no heroi {string}') do |heroi|
    herois = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/herois.yml"))
    @heroi_alvo = herois["#{heroi}"]
    @listaHerois.tap_name_hero(@heroi_alvo["nome"])
    sleep 5
end

Quando('eu busco pelo heroi {string}') do |heroi|
    herois = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/herois.yml"))
    @heroi_alvo = herois["#{heroi}"]

    @buscaHerois.search_hero(@heroi_alvo["nome"])
    sleep 5
end

Então("devo ver a descrição") do
    description = @listaHerois.find_desc_hero.text
    expect(description).to eql @heroi_alvo["descricao"]    
end

Então("devo ver o nome do heroi") do
    nome = @buscaHerois.nome_heroi
    expect(nome).to eql @heroi_alvo["nome"]    
end

Então("o nome pessoal do heroi") do
    nome_pessoal = @buscaHerois.nome_pessoal_heroi
    expect(nome_pessoal).to eql @heroi_alvo["personal"]    
end