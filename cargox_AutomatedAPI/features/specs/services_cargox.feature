#language: pt
#utf-8

@cargo_x @service 
Funcionalidade: Services - API Azure Websites
    Eu como um usuário
	Quero utilizar o Azure WebSites
	A fim de executar POST, GET, PUT e DELETE.
    
    Contexto:
        Dado que tenho acesso a API

    @post_azure
    Cenário: Cadastro Azure Websites
        Quando informo os dados no formato esperado pelo serviço
        Então deve se ter a confirmação do cadastro

    @get_azure
    Cenário: Consulta Azure Websites
        E tenho um livro cadastrado
        Quando realizar uma consulta de um livro cadastrado na base
        Então verifico os dados retornados com sucesso
    
    @put_azure
    Cenário: Edição Azure Websites
        E tenho um livro cadastrado
        Quando realizo a edição dos dados de um livro cadastrado na base
        Então verifico os dados editados retornados com sucesso
    
    @delete_azure
    Cenário: Deleção Azure Websites
        E tenho um livro cadastrado
        Quando realizo a deleção dos dados de um livro cadastrado na base
        Então verifico a deleção dos dados na base
    