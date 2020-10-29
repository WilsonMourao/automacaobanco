contexto = AdicionarClientePage.new
Dado("que acesso a pagina de cadastro de clientes") do
  visit "http://www.way2automation.com/angularjs-protractor/banking/#/login"
  click_button("Bank Manager Login")
  find("button[ng-click='addCust()']").click
end

Quando("submeto o cadastro do cliente com:") do |table|
  nome = table.rows_hash["nome"]
  sobrenome = table.rows_hash["sobrenome"]
  cep = table.rows_hash["codigo_postal"]

  contexto.campo_nome.send_keys("Maria")
  contexto.campo_sobrenome.send_keys("Menezes")
  contexto.campo_codPostal.send_keys("BT87G45")
  contexto.botao_addCustomer.click
end

Então("aparece a mensagem: {string}") do |expect_message|
  expect(page.driver.browser.switch_to.alert.text).to have_content expect_message
  page.accept_alert
end
