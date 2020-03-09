
E("que estou logado na homepage") do
  step %{que tenho acesso ao site SuiteCRM}
  step %{preencher os dados de login}
  step %{clicar no botão login}
  step %{a aplicação se estabelece na tela inicial do SuiteCRM}
end

E("clico em Create Tasks") do
  @home_page.field_create
  @home_page.field_create_tasks
end

Quando("preencho os dados de criação da tasks") do
  @nameTask = "Teste Cargo X #{Time.now}"
  @tasks_page.cadastro_task(@nameTask)
  @tasks_page.save_button
end

Então("cadastro uma task com sucesso") do
  expect(page).to have_content(@nameTask)
end

E("clico em Activities >> Tasks") do
  @home_page.field_activities
  @home_page.field_activities_tasks
end

Quando("clico no icone de Edição") do
  @tasks_page.edit_task
end

Quando("edito os dados clicando em save") do
  @nameTaskEdited = "Edição Teste Cargo X #{Time.now}"
  @tasks_page.edit_task_info(@nameTaskEdited)
  @tasks_page.save_button
end

Então("a task reflete a edição executada com sucesso") do
  expect(page).to have_content(@nameTaskEdited)
end

E("seleciono a Task desejada") do
  @tasks_page.select_box
end

Quando("abro o Bulk Action") do
  @tasks_page.bulk
end

E("seleciono a opção Delete") do
  @tasks_page.delete_task
end

Então("minha task é deletada com sucesso") do
  puts "Task deletada com Sucesso"
end
