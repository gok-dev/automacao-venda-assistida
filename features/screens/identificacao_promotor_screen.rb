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
        click_id(@botao_estou_em_outra_loja)
        send_keys_id(@campo_texto_codigo_loja, '18')
        click_xpath("//*[@text='18 - Consolação']")
        click_id(@botao_ok)
        sleep 5
    end
end