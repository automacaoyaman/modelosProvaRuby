  Dado("que foi realizada a conexao {string}") do |url|
    @@provaPage = ProvaPage.new
    @@provaPage.realizar_conexao_api(url)
  end
  
  Quando("armazenar os valores da API referente a rua, cidade, cep e estado") do
  end
  
  Então("devo comparar se o retorno dos valores da API estao em conformidade com a {string}, {string}, {string} e {string}") do ||
  end