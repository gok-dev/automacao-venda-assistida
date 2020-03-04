class GarantiasESegurosScreen < BaseScreen

  def initialize
      @xpath_garantia_estendida_12_meses = "//*[contains(@text, 'Garantia Estendida Reparo 12 meses')]"
      @xpath_seguro_roubo_e_furto_12_meses = "//*[contains(@text, 'Seguro Roubo e Furto - 12 meses')]"
      @preco_final = 'textview_product_detail_final_price'
      @botao_adicionar_a_sacola = 'button_product_detail_add_to_cart'
      
  end

  def selecionar_seguro
    click_xpath(@xpath_garantia_estendida_12_meses)
    sleep 1
    $driver.swipe start_x: 1000, start_y: 1000, end_x: 1000, end_y: 300
    click_xpath(@xpath_seguro_roubo_e_furto_12_meses)
    sleep 1
    $driver.swipe start_x: 1000, start_y: 1000, end_x: 1000, end_y: 300
  end

  def clicar_adicionar_a_sacola
    #scroll_to_element(@botao_adicionar_a_sacola)
    click_id(@botao_adicionar_a_sacola)
  end

end