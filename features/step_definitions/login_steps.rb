login = LoginPage.new
cliente = LoginClientePage.new

Dado("que acesso a pagina de login") do
  visit "http://www.way2automation.com/angularjs-protractor/banking/#/login"
end

Quando("efetuo o login com:") do |table|
  nome = table.rows_hash["nome"]
  login.botao_login_cliente.click
  cliente.select_option(cliente.select_nome.text, nome)
  cliente.botao_login.click
end

Então("devo ver a mensagem: {string}") do |mensagem|
  expect(page).to have_content mensagem
end
Quando("efetuo login com perfil de gerente") do
  login.botao_login_gerente.click
end

Então("visualizo a tela com as funcionalidades") do
  expect(page).to have_selector("button[ng-class='btnClass1']")
  expect(page).to have_selector("button[ng-class='btnClass2']")
  expect(page).to have_selector("button[ng-class='btnClass3']")
end

Quando("efetuo o Logout") do
  cliente.botao_logout.click
end

Então("devo voltar para a pagina de login") do
  expect(page).to have_content("Your Name :")
  expect(page).to have_selector(:css, "select[id=userSelect]")
end
