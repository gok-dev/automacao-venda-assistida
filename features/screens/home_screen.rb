class HomeScreen < BaseScreen

  def initialize
      @logo_pernambucanas = 'imagebutton_toolbar_logo_icon'
      @campo_pesquisa_produto = 'edittext_search_product'
      @nome_produto = 'textview_product_item_name'
  end

  def verificar_home
    wait_for_id(@logo_pernambucanas)
  end

  def pesquisar_produto(produto)
    send_keys_id(@campo_pesquisa_produto, produto)
    clicar_enter
  end

  def selecionar_produto
    click_id(@nome_produto)
  end

end