
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

Quando('apago o heroi {string}') do |heroi|

    herois = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/herois.yml"))
    heroi_alvo = herois["#{heroi}"]

    # start_X  = positão inicial na horizontal
    # start_y  = positão inicial na vertical
    # offset_x = positão final na horizontal
    # offset_Y = positão final na vertical
    # duration = duração em milisegundos

    # Checkpoint pra garantir que está na tela correta
    find_element(id: "io.qaninja.android.twp:id/rvList")

    # coord = { start_x: 0.93, start_y: 0.18, offset_x: 0.48, offset_y: 0.18, duration: 2000 }
    coordenada_heroi = { 
        start_x: heroi_alvo["swipe"]["start_x"], start_y: heroi_alvo["swipe"]["start_y"],
        offset_x: heroi_alvo["swipe"]["offset_x"], offset_y: heroi_alvo["swipe"]["offset_y"], duration: 2000 
    }

    Appium::TouchAction::new.swipe(coordenada_heroi).perform

    find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end

Então('devo ver a seguinte mensagem: {string}') do |texto_esperado|
    texto_encontrado = find_element(id: "io.qaninja.android.twp:id/snackbar_text").text
    # expect(texto_encontrado).to eql texto_esperado
    expect(texto_encontrado).to start_with texto_esperado
end