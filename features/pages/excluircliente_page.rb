class ExcluirClientePage < SitePrism::Page
  set_url "http://www.way2automation.com/angularjs-protractor/banking/#/manager/list"
  element :campo_buscar, 'input[placeholder="Search Customer"]'
  element :botao_excluir, "button[ng-click='deleteCust(cust)']"
end
