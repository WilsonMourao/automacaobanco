saque = SacarPage.new

Dado("informo o valor a ser sacado:") do |table|
  @valor = table.rows_hash["valor"]
  saque.func_sacar
  saque.campo_valor.send_keys @valor
  saque.botao_sacar.click
end

Então("devo visualizar na tela a mensagem: {string}") do |message|
  expect(page).to have_content message
end
