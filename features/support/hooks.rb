Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  @nav = Navigator.new
  @login = LoginScreen.new
  @dialog = DialogScreen.new
  @cadastro = CadastroScreen.new
  @listaHerois = ListaHeroisScreen.new
  @buscaHerois = BuscaHeroisScreen.new

  find_element(xpath: "//android.widget.Button[@text='COMEÇAR']").click
end

After do |scenario|
  binary_shot = driver.screenshot_as(:base64)

  temp_shot = "logs/temp_shot.png"

  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  driver.quit_driver
end
