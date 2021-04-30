Dado('que acesso a tela Botões de Radio') do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO")
  end
  
  Quando('eu escolho a opção Ruby') do
    @radio_locator = "//android.widget.RadioButton[contains(@text,'Ruby')]"
    find_element(xpath: @radio_locator).click
    @radio_result = find_element(xpath: @radio_locator)
  end
  
  Entao('esta opção deve ser marcada') do    
    expect(@radio_result.checked).to eql "true"
  end

  Dado("que eu acesso a tela Checkbox") do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("CHECKBOX")
  end
  Quando("eu marco a opção Ruby") do
    @check_locator = "//android.widget.CheckBox[contains(@text,'Ruby')]"
    find_element(xpath: @check_locator).click
  end

  Entao("esta opção deve estar marcada") do
    @check_result = find_element(xpath: @check_locator)
    expect(@check_result.checked).to eql "true"
  end

  Quando("eu marco as seguintes techs:") do |table|
    @techs = table.hashes
    #log(item["tech"])

    @techs.each do |item|
      #log(item["tech"])
      check_locator = "//android.widget.CheckBox[contains(@text,'#{item["tech"]}')]"
      find_element(xpath: check_locator).click
    end
  end

  Entao("todas essas opções devem estar marcadas") do
    @techs.each do |item|
      check_locator = "//android.widget.CheckBox[contains(@text,'#{item["tech"]}')]"
      check_result = find_element(xpath: check_locator)
      expect(check_result.checked).to eql "true"
    end
  end