class BaseScreen

  #Método para esperar um elemento mapeado estar visível na tela por xpath durante 10s. 
    def wait_for_xpath(xpath, timeout = 20)
      $driver.wait_true(timeout) do
      $driver.exists { $driver.find_element(:xpath, xpath) }
      end
    end 
  
  #Método para esperar um elemento mapeado estar visível na tela por id durante 10s.
    def wait_for_id(id, timeout = 20)
      $driver.wait_true(timeout) do 
        $driver.exists { $driver.find_element(:id, id) }
      end
    end
      
  #Método para clicar um elemento mapeado na tela por id.
    def click_id(id)
      $driver.find_element(:id, id).click
    end  
  
  #Método para clicar um elemento mapeado na tela por xpath.
    def click_xpath(xpath)
      $driver.find_element(:xpath, xpath).click
    end
  
  #Método para preencher um campo mapeado na tela por id.
    def send_keys_id(id, field)
      $driver.find_element(:id, id).click
      $driver.find_element(:id, id).send_keys(field)
    end
  
  #Método para preencher um campo mapeado na tela por xpath.
    def send_keys_xpath(xpath, field)
      $driver.find_element(:xpath, xpath).send_keys(field)
    end

  #Método para clicar no enter do teclado.
    def clicar_enter
      $driver.ress_keycode(66)
    end

  #Método para scrollar até o elemento
    def scroll_to_element(element)
      scroll_to(element)
    end
end