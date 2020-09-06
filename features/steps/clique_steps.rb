Dado('que acesso a tela de clique simples') do
    @nav.tap_hamburger
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE SIMPLES")
end

Dado('que acesso a tela de clique longo') do
  @nav.tap_hamburger
  @nav.tap_by_text("BOTÕES")
  @nav.tap_by_text("CLIQUE LONGO")
end
  
Quando('eu clico no botão de clique simples') do
  button = "//android.widget.Button[@text='CLIQUE AQUI']"
  find_element(xpath: button).click
end

Quando('eu pressiono o botão de clique longo') do
  button = "//android.widget.Button[@text='CLIQUE AQUI']"
  touch_action.long_press(button).perform
  sleep 5
end

Então("O botão deve apresentar o texto") do |txt_botao|
  @radio_result = find_element(xpath: @radio_locator)
  expect(@radio_result.checked).to eql "true"
end