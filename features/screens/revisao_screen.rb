class RevisaoScreen < BaseScreen

  def initialize
    @botao_ir_para_pagamento = 'button_continue_to_payment'
  end

  def clicar_botao_ir_para_pagamento
    scroll_to_element(@botao_ir_para_pagamento)
    click_id(@botao_ir_para_pagamento)
  end

end