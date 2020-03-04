class PedidoFinalizadoScreen < BaseScreen

  def initialize
      @texto_obrigado = 'textview_result_message'
      @numero_pedido = 'textview_result_order'
      @botao_sair = 'button_result_exit'
  end

  def verificar_texto_obrigado
    wait_for_id(@texto_obrigado)
  end

  def verificar_numero_do_pedido
    recuperar_texto(@numero_pedido)
  end

end