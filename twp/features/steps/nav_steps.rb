Quando('acesso o Menu') do
  @nav.tap_hamburger
end

Entao('vejo a lista de opções de navegação') do 
  expect(@nav.list.displayed?).to be true
end
