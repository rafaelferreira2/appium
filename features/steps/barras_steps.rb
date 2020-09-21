Dado('que acesso a tela de barras') do
    @nav.tap_hamburger
    @nav.tap_by_text("SEEK BAR")
    @nav.tap_by_text("SEEK")
end

Quando('arrasto a primeira barra') do
    
    #Checkpoint
    find_element(:id, "io.qaninja.android.twp:id/toolbarTitle")

    Appium::TouchAction::new
        .press({x: 158, y: 320}).wait(2000)
        .move_to({x: 600, y: 320})
        .release.perform
end

Quando('clico em um ponto da segunda barra') do
    Appium::TouchAction::new
        .press({x: 644, y: 449}).wait(2000)
        .move_to({x: 200, y: 449})
        .release.perform
end

Então("deve ter sido alterada") do
    sleep 5
end