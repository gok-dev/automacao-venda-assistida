class SacolaScreen < BaseScreen

  def initialize
      @valor_total_carrinho = 'textview_cart_total_value'
      @botao_ir_para_pagamento = 'button_continue_to_payment'
  end

  def clicar_botao_ir_para_pagamento
    click_id(@botao_ir_para_pagamento)
  end

end