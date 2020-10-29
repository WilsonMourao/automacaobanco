class LoginClientePage < SitePrism::Page
  element :select_nome, "select[id=userSelect]"
  element :botao_login, 'button[class*="default"]'
  element :botao_logout, 'button[class*="logout"]'

  def select_option(select_nome, value)
    find(:css, select_nome).find(:option, value).select_option
  end
end
