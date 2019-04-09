#language: pt
Funcionalidade: Prova Yaman Ruby BDD

 #***************************************************Positivos*************************************************************************
@cadastro @positivo @1
Esquema do Cenario: Cadastro
    Dado que foi acessado o site "<site>"
    Quando inserir o "<nome>", o "<email>" e a "<senha>" valida
    Então devo clicar em Cadastrar e validar a mensagem "<mensagem>"
    Exemplos:
        |site                                            |nome     |email            |senha       |mensagem                    |
        |https://srbarriga.herokuapp.com/cadastro        |yamano   |prova@yaman.com  |123456789   |Usuário inserido com sucesso|

@login @positivo @2
Esquema do Cenario: Login
    Dado que foi acessado o site "<site>"
    Quando inserir o "<email>" e a "<senha>" previamente cadastradas
    E clicar em Entrar 
    E validar a mensagem "<mensagem>"
    Então clicar em Sair e validar o logout
    Exemplos:
        |site                                         |email            |senha       |mensagem          |
        |https://srbarriga.herokuapp.com/login        |prova@yaman.com  |123456789   |Bem vindo, yamano!|

@conta @positivo @3
Esquema do Cenario: Conta
    Dado que foi acessado o site "<site>"
    Quando inserir o "<email>" e a "<senha>" previamente cadastradas
    E clicar em Entrar 
    E clicar no menu Contas e no submenu Adicionar
    E inserir um valor no campo "<nome>" e clicar em Salvar
    Então validar a mensagem "<mensagem>" e clicar em Sair
    Exemplos:
        |site                                            |email            |senha       |nome        |mensagem                     |
        |https://srbarriga.herokuapp.com/login           |prova@yaman.com  |123456789   |Nova Conta  |Conta adicionada com sucesso!|

 
 #***************************************************Negativos*************************************************************************

@cadastro @negativo @4
Esquema do Cenario: Cadastro
    Dado que foi acessado o site "<site>"
    Quando inserir o "<nome>", o "<email>" e a "<senha>" valida
    Então devo clicar em Cadastrar e validar a mensagem "<mensagem>"
    Exemplos:
        |site                                            |nome     |email            |senha       |mensagem                      |
        |https://srbarriga.herokuapp.com/cadastro        |yamano   |prova@yaman.com  |123456789   |Endereço de email já utilizado|

@conta @negativo @5
Esquema do Cenário: Conta
    Dado que foi acessado o site "<site>"
    Quando inserir o "<email>" e a "<senha>" previamente cadastradas
    E clicar em Entrar 
    E clicar no menu Contas e no submenu Adicionar
    E inserir um valor no campo "<nome>" e clicar em Salvar
    Então validar a mensagem "<mensagem>" e clicar em Sair
    Exemplos:
        |site                                            |email            |senha       |nome        |mensagem                          |
        |https://srbarriga.herokuapp.com/login           |prova@yaman.com  |123456789   |Nova Conta  |Já existe uma conta com esse nome!|