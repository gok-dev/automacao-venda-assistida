Dado("que o usuário realiza o login preenchendo chapa {string} e senha {string}") do |chapa, senha|
  @identificacao_promotor_screen = IdentificacaoPromotorScreen.new
  @identificacao_promotor_screen.selecionar_loja
  @identificacao_promotor_screen.realizar_login(chapa, senha)
end

Dado("preenche o cpf do cliente {string}") do |cpf_cliente|
  @identificacao_cliente_screen = IdentificacaoClienteScreen.new
  @identificacao_cliente_screen.verificar_pagina_identificacao_cliente  
  @identificacao_cliente_screen.confirmar_cliente(cpf_cliente)
end

Dado("na home de venda assistida selecionar um produto que seja elegível para seguro") do
  @home_screen = HomeScreen.new
  @home_screen.verificar_home
  @home_screen.pesquisar_produto('718444')
  @home_screen.selecionar_produto 
end

Dado("selecionar um seguro para este produto") do
  @garantias_e_seguros_screen = GarantiasESegurosScreen.new
  @garantias_e_seguros_screen.selecionar_seguro
  @garantias_e_seguros_screen.clicar_adicionar_a_sacola
end

Quando("finalizar a compra") do
  @sacola_screen = SacolaScreen.new
  @sacola_screen.clicar_botao_ir_para_pagamento
  @escolher_endereco_screen = EscolherEnderecoScreen.new
  @escolher_endereco_screen.selecionar_tipo_entrega
  @escolher_endereco_screen.clicar_botao_ir_para_pagamento
  @pagamento_screen = PagamentoScreen.new
  @pagamento_screen.selecionar_metodo_pagamento
  @pagamento_screen.clicar_botao_ir_para_pagamento
  @revisao_screen = RevisaoScreen.new
  @revisao_screen.clicar_botao_ir_para_pagamento
end

Então("deve visualizar o número do pedido") do
  @pedido_finalizado_screen = PedidoFinalizadoScreen.new
  @pedido_finalizado_screen.verificar_texto_obrigado
  puts(@pedido_finalizado_screen.verificar_numero_do_pedido)
end