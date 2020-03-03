class IdentificacaoPromotorScreen < BaseScreen

    def initialize
        @texto_voce_esta_aqui = 'textview_twooptions_title'
        @botao_estou_aqui = 'button_twooptions_one'
        @botao_estou_em_outra_loja = 'button_twooptions_two'
        @campo_texto_codigo_loja = 'textview_auto_complete'
        @botao_ok = 'button_twooptions_one'
        @campo_chapa = 'textinputedittext_promoter_login_plate'
        @campo_senha = 'textinputedittext_promoter_login_password'
        @botao_entrar = 'button_promoter_login_submit'
    end

    def selecionar_loja
        wait_for_id(@texto_voce_esta_aqui)
        click_id(@botao_estou_aqui)
    end

    def preencher_chapa(chapa)
        send_keys_id(@campo_chapa, chapa)
    end

    def preencher_senha(senha)
        send_keys_id(@campo_senha, senha)
    end

    def clicar_entrar
        click_id(@botao_entrar)
    end

    def realizar_login(chapa, senha)
        preencher_chapa(chapa)
        preencher_senha(senha)
        clicar_entrar
        sleep 10
    end
end

