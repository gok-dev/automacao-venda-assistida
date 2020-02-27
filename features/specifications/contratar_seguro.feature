#language: pt

Funcionalidade: Venda de seguros para produtos
	Como vendedor de uma loja pernambucanas
	Quero conseguir contratar seguros e/ou garantias para produtos
	Para agregar valor a venda do produto ao cliente

  @doing
  Cenário: Contratar seguro com sucesso exibindo número do pedido
    Dado que o usuário está na home de venda assistida
    E selecionar um produto que seja elegível para seguro
    E selecionar um seguro para este produto
    Quando finalizar a compra
    Então deve visualizar o número do pedido
