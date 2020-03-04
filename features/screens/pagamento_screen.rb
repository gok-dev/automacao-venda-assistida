class PagamentoScreen < BaseScreen

  def initialize
      @xpath_cartao_pernambucanas = "//*[contains(@text, 'Cartão Pernambucanas')]"
      @xpath_boleto = "//*[contains(@text, 'Boleto')]"
      @botao_ir_para_pagamento = 'button_continue_to_payment'
  end

  def selecionar_metodo_pagamento
    click_xpath(@xpath_boleto)
  end

  def clicar_botao_ir_para_pagamento
    click_id(@botao_ir_para_pagamento)
  end

end