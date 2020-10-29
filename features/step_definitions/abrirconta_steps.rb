conta = AbrirContaPage.new
Dado("que acesso a pagina de abertura de conta") do
  visit "http://www.way2automation.com/angularjs-protractor/banking/#/login"
  click_button("Bank Manager Login")
  click_button("Open Account")
end

Quando("abro conta para o cliente:") do |table|
  nome = table.rows_hash["nome"]
  moeda = table.rows_hash["moeda"]
  conta.select_option("userSelect", nome)
  conta.select_option("currency", moeda)
  conta.botao_process.click
end

Então("vejo a mensagem: {string}") do |expect_message|
  expect(page.driver.browser.switch_to.alert.text).to have_content expect_message
  page.accept_alert
end
