#language: pt
#utf-8

@cargo_x @login 
Funcionalidade: Login SuiteCRM
	Eu como um usuário
	Quero logar no SuiteCRM
	A fim de me estabelecar na homepage da aplicação

	Contexto:
		Dado que tenho acesso ao site SuiteCRM

@login_SuiteCRM
Cenário: Autenticação no SuiteCRM com usuário válido
	Quando preencher os dados de login
	E clicar no botão login
	Então a aplicação se estabelece na tela inicial do SuiteCRM
