class DialogScreen

    def titulo
        find_element(id: "io.qaninja.android.twp:id/dialogInfoTitle")
    end

    def subtitulo
        find_element(id: "io.qaninja.android.twp:id/dialogInfoSubtitle")
    end

    def conteudo
        find_element(id: "io.qaninja.android.twp:id/dialogInfoText")
    end

    def btn_ok
        find_element(id: "io.qaninja.android.twp:id/dialogInfoOk")
    end

end