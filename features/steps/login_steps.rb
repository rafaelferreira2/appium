Dado("que acesso a tela de Login") do
    @nav.tap_hamburger
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("LOGIN")
end
  
Quando("submeto minhas credenciais:") do |table|
    user = table.rows_hash
    @login.sign_in(user[:email], user[:senha])
end
  
Então("devo ver a notificação: {string}") do |notice|
    expect(@login.toast.text).to eql notice
end

Então("devo ver o alerta: {string}") do |notice|
    expect(@login.alert.text).to eql notice
end