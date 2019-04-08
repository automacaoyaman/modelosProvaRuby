
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
end

E("clicar em Entrar") do
end

E("validar a mensagem {string}") do |mensagem|
end

Então("clicar em Sair e validar o logout") do
end

#---------------------------------Conta-----------------------------------------------------------------------

E("clicar no menu Contas e no submenu Adicionar") do
  @@contaPage = ContaPage.new
end