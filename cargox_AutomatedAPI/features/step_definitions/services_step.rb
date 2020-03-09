Dado("que tenho acesso a API") do
  puts "API Azure Web Sites #{ENV["uri_api"]}"
end

Quando("informo os dados no formato esperado pelo serviço") do
  @response_books = @services_client.create_book(create_payload_book)
  @id_book = @response_books['ID']
end

Então("") do
  expect(@response_books.code).to eq(202)
  puts "Post books: #{@response_books}"
enddeve se ter a confirmação do cadastro

E(" tenho um livro cadastrado") do
  step %{que tenho acesso a API}
  step %{informo os dados no formato esperado pelo serviço}
  step %{deve se ter a confirmação do cadastro}
end

Quando("realizar uma consulta de um livro cadastrado na base") do
  @response_consult_books = @services_client.execute_get(@id_book)
end

Então("verifico os dados retornados com sucesso") do
  expect(@response_consult_books.code).to eq(200)
  puts "Consult books: #{@response_books}"
end

Quando("realizo a edição dos dados de um livro cadastrado na base") do
  @response_edit_books = @services_client.execute_put(edit_payload_book, @id_book)
end

Então("verifico os dados editados retornados com sucesso") do
  expect(@response_edit_books.code).to eq(200)
  puts "Edit books: #{@response_edit_books}"
end

Quando("realizo a deleção dos dados de um livro cadastrado na base") do
  @response_delete_books = @services_client.execute_delete(@id_book)
end

Então("verifico a deleção dos dados na base") do
  expect(@response_delete_books.code).to eq(200)
  puts "Delete books: #{@response_delete_books}"
  @consult_books_deleted = @services_client.execute_get(@id_book)
end