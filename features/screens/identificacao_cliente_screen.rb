class IdentificacaoClienteScreen < BaseScreen

  def initialize
      @texto_identificacao_do_cliente = 'textview_customer_login_title'
      @campo_cpf_cliente = 'maskedtextinputedit_customer_login_cpf'
      @botao_entrar = 'button_customer_login'
  end

  def verificar_pagina_identificacao_cliente
    wait_for_id(@texto_identificacao_do_cliente)
  end

  def preencher_cpf_cliente(cpf)
    send_keys_id(@campo_cpf_cliente, cpf)
  end

  def clicar_entrar
    click_id(@botao_entrar)
  end

  def confirmar_cliente(cpf)
    preencher_cpf_cliente(cpf)
    hide_keyboard
    clicar_entrar
  end

end