class SacarPage < SitePrism::Page
  element :func_sacar, 'button[ng-class*="Class3"]'
  element :campo_valor, 'input[placeholder="amount"]'
  element :botao_sacar, 'button[class*="default"]'
end
