#language: pt

Funcionalidade: Venda de seguros para produtos
	Como vendedor de uma loja pernambucanas
	Quero conseguir contratar seguros e/ou garantias para produtos
	Para agregar valor a venda do produto ao cliente

  @doing
  Cenário: Contratar seguro com sucesso exibindo número do pedido
    Dado que o usuário realiza o login preenchendo chapa '999998' e senha '#Batata75'
    E preenche o cpf do cliente '32625270845'
    E na home de venda assistida selecionar um produto que seja elegível para seguro
    E selecionar um seguro para este produto
    Quando finalizar a compra
    Então deve visualizar o número do pedido
