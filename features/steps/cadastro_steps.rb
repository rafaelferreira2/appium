Dado("que acesso a tela de cadastro") do
    @nav.tap_hamburger
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("CADASTRO")
end

Quando("submeto minhas informações:") do |table|
    user = table.rows_hash
    @cadastro.insere(user[:nome], user[:email], user[:senha])
end