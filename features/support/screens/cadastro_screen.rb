class CadastroScreen

    def insere(pessoa)
        find_element(id: "io.qaninja.android.twp:id/etUsername").send_keys(pessoa["nome"])
        find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(pessoa["email"])
        find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(pessoa["senha"])
        select_perfil(pessoa["perfil"])
        find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
    end

    def select_perfil(perfil)
        find_element(id: "io.qaninja.android.twp:id/spinnerJob").click
        find_element(xpath: "//*[@text='#{perfil}']").click
    end

end