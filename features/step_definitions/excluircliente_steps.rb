excluir = ExcluirClientePage.new

Dado("que acesso a pagina do gerente") do
  visit "http://www.way2automation.com/angularjs-protractor/banking/#/login"
  click_button("Bank Manager Login")
end

Dado("acesso a tela de Clientes") do
  click_button("Customers")
end

Quando("eu excluo o cliente:") do |table|
  nome = table.rows_hash["nome"]
  excluir.campo_buscar.send_keys nome
  excluir.botao_excluir.click
end

Então("o mesmo nao deve mais constar na tabela de clientes") do
  expect(page).to_not have_content nome
end
