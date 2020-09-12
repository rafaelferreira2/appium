
Dado('que acesso a tela lista de heróis') do
    @nav.tap_hamburger
    @nav.tap_by_text("AVENGERS")
    @nav.tap_by_text("LISTA")
end

Quando('eu clico no heroi {string}') do |heroi|
    herois = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/herois.yml"))
    @heroi_alvo = herois["#{heroi}"]
    @listaHerois.tap_name_hero(@heroi_alvo["nome"])
    sleep 5
end

Então("devo ver a descrição") do
    description = @listaHerois.find_desc_hero.text
    expect(description).to eql @heroi_alvo["descricao"]    
end