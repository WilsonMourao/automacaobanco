class LoginPage < SitePrism::Page
  element :botao_login_cliente, 'button[ng-click*="customer"]'
  element :botao_login_gerente, 'button[ng-click*="manager"]'
end
