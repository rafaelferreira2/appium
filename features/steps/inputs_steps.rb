Dado("que acesso a tela Botões de Radio") do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO")
  end


  Dado("que acesso a tela Botões de Checkbox") do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("CHECKBOX")
end
  
Quando("eu escolho a opção Ruby") do
    @radio_locator = "//android.widget.RadioButton[contains(@text, 'Ruby')]"
    find_element(xpath: @radio_locator).click
end

Quando("eu marco as opções {string} e {string}") do |target1, target2|
  @first_locator = "//android.widget.CheckBox[contains(@text,'#{target1}')]"
  find_element(xpath: @first_locator).click

  @second_locator = "//android.widget.CheckBox[contains(@text, '#{target2}')]"
  find_element(xpath: @second_locator).click
  sleep 3
  
end
  
Então("esta opção deve ser marcada") do
    @radio_result = find_element(xpath: @radio_locator)
    expect(@radio_result.checked).to eql "true"
end

Então("as opções devem ser marcadas") do
  @first_result = find_element(xpath: @first_locator)
  @second_result = find_element(xpath: @second_locator)
  sleep 8

  expect(@first_result.checked).to eql "true"
  expect(@second_result.checked).to eql "true"
end