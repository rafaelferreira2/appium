class CadastroScreen

    def insere(nome, email, senha)
        find_element(id: "io.qaninja.android.twp:id/etUsername").send_keys(nome)
        find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(email)
        find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(senha)
        find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
    end

end