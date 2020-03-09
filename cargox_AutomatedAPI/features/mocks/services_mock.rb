def create_payload_book
  {
    "Title": "Livro Dom Casmurro",
    "Description": "dojo@cargox.com.br",
    "PageCount": 256,
    "Excerpt": "Sumário resumido",
    "PublishDate": "#{Date.today}"
  }
end

def edit_payload_book
  {
    "Excerpt": "Edição Especial do Dia das Mães"
  }
end
