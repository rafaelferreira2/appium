class ListaHeroisScreen

    def tap_name_hero(target)
        find_element(xpath: "//android.widget.TextView[contains(@text, '#{target}')]").click
    end

    def find_desc_hero
        find_element(id: "io.qaninja.android.twp:id/textAboutExtended")
    end

end