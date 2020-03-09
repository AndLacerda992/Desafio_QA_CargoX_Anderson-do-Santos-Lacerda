Dado("que tenho acesso ao site SuiteCRM") do
  visit(ENV_TEST["url_suitecrm"])
  sleep 2
end

Quando("preencher os dados de login") do
  @login_page.field_user
  @login_page.field_password
end

E("clicar no botão login") do
  @login_page.button_login
end

Então("a aplicação se estabelece na tela inicial do SuiteCRM") do
  expect(page).to have_content("SUITECRM DASHBOARD")
end
