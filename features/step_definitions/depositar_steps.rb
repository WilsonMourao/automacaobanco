login = LoginPage.new
cliente = LoginClientePage.new
depositar = DepositarPage.new

Dado("que estou logado como:") do |table|
  nome = table.rows_hash["nome"]
  visit "http://www.way2automation.com/angularjs-protractor/banking/#/login"
  login.botao_login_cliente.click
  cliente.select_option(cliente.select_nome.text, nome)
  cliente.botao_login.click
end

Quando("informo o valor a ser depositado:") do |table|
  valor = table.rows_hash["valor"]
  depositar.func_depositar
  depositar.campo_valor.send_keys(valor)
  depositar.botao_depositar.click
end

Então("visualizo a mensagem: {string}") do |message|
  expect(page).to have_content message
end
