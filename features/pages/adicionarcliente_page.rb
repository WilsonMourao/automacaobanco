class AdicionarClientePage < SitePrism::Page
  element :campo_nome, 'input[placeholder="First Name"]'
  element :campo_sobrenome, 'input[placeholder="Last Name"]'
  element :campo_codPostal, 'input[placeholder="Post Code"]'
  element :botao_addCustomer, "button[value]"
end
