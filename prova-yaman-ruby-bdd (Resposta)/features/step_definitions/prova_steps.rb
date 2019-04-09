
#---------------------------------Cadastro---------------------------------------------------------------------

Dado("que foi acessado o site {string}") do |site|
  @@cadastroPage = CadastroPage.new
  @@cadastroPage.configurar_ambiente(site)
end

Quando("inserir o {string}, o {string} e a {string} valida") do |nome, email, senha|
  @@cadastroPage.cadastrar_usuario(nome, email, senha)
end

Então("devo clicar em Cadastrar e validar a mensagem {string}") do |mensagem|
  @@cadastroPage.validar_mensagem_cadastrado_sucesso(mensagem)
end

#---------------------------------Login-----------------------------------------------------------------------

Quando("inserir o {string} e a {string} previamente cadastradas") do |email, senha|
  @@loginPage = LoginPage.new
  @@loginPage.logar_usuario(email, senha)
end

E("clicar em Entrar") do
  @@loginPage.clicar_entrar()
end

E("validar a mensagem {string}") do |mensagem|
  @@loginPage.validar_mensagem_bem_vindo(mensagem)
end

Então("clicar em Sair e validar o logout") do
  @@loginPage.validar_logout()
end

#---------------------------------Conta-----------------------------------------------------------------------

E("clicar no menu Contas e no submenu Adicionar") do
  @@contaPage = ContaPage.new
  @@contaPage.clicar_adicionar()
end

E("inserir um valor no campo {string} e clicar em Salvar") do |nome|
  @@contaPage.nova_conta(nome)
end

Então("validar a mensagem {string} e clicar em Sair") do |mensagem|
  @@contaPage.validar_mensagem_conta_adicionada(mensagem)
end