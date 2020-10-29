class DepositarPage < SitePrism::Page
  element :func_depositar, 'button[ng-class="btnClass2"]'
  element :campo_valor, 'input[placeholder="amount"]'
  element :botao_depositar, 'button[class*="default"]'
end
