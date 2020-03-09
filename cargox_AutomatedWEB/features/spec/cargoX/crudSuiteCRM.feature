#language: pt
#utf-8

@cargo_x @crud 
Funcionalidade: CRUD - Web SuiteCRM
	Eu como um usuário
	Quero utilizar o SuiteCRM
	A fim de executar Cadastro, Edição e Deleção de Tasks no site SuiteCRM.

    Contexto:
        Dado que estou logado na homepage

@cadastro_SuiteCRM
Cenário: Cadastro de tasks no SuiteCRM
	E clico em Create Tasks
	Quando preencho os dados de criação da tasks
	Então cadastro uma task com sucesso

@edicao_SuiteCRM
Cenário: Edicao de tasks no SuiteCRM
	E clico em Activities >> Tasks
	Quando clico no icone de Edição
	E edito os dados clicando em save
	Então a task reflete a edição executada com sucesso

@delecao_SuiteCRM
Cenário: Deleção de tasks no SuiteCRM
	E clico em Activities >> Tasks
	E seleciono a Task desejada
	Quando abro o Bulk Action
	E seleciono a opção Delete
	Então minha task é deletada com sucesso