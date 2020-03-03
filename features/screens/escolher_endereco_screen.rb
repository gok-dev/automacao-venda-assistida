class EscolherEnderecoScreen < BaseScreen

  def initialize
      @xpath_tipo_entrega = "//*[contains(@text, 'Rapido - Entrega no mesmo dia')]"
      @botao_ir_para_pagamento = 'button_continue_to_payment'
  end

  def selecionar_tipo_entrega
    scroll_to_element(@xpath_tipo_entrega)
    click_xpath(@xpath_tipo_entrega)
  end

  def clicar_botao_ir_para_pagamento
    click_id(@botao_ir_para_pagamento)
  end

end