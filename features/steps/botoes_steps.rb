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
  find_element(id: "io.qaninja.android.twp:id/short_click").click
end

Quando('eu pressiono o botão de clique longo') do
  @button_locator = "io.qaninja.android.twp:id/long_click"
  button = find_element(:id, @button_locator)
  Appium::TouchAction::new.press(element: button).wait(3000).release.perform
end

Então("O botão deve apresentar o texto {string}") do |txt_botao|
  btn_text = find_element(id: @button_locator).text
  expect(btn_text).to eql "CLIQUE LONGO OK"
end