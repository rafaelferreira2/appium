class BuscaHeroisScreen

    def search_hero(hero)
        find_element(id: "io.qaninja.android.twp:id/etSearch").send_keys(hero)
    end

    def nome_heroi
        find_element(id: "io.qaninja.android.twp:id/textName").text
    end

    def nome_pessoal_heroi
        find_element(id: "io.qaninja.android.twp:id/textEmail").text
    end

end