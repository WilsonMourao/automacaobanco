class AbrirContaPage < SitePrism::Page
  element :select_cliente, "select[id=userSelect]"
  element :select_moeda, "select[id=currency]"
  element :botao_process, "button[value]"

  def select_option(select, value)
    select value, from: select
  end
end
