  Dado("que foi realizada a conexao {string}") do |url|
    @@provaPage = ProvaPage.new
    @@provaPage.realizar_conexao_api(url)
  end
  
  Quando("receber os valores da API") do
    @@provaPage.armazenar_valores_api()
  end
  
  Então("devo comparar se o retorno dos valores da API estao em conformidade com a {string}, {string}, {string} e {string}") do |rua, cidade, cep, estado|
    @@provaPage.comparar_valores(rua, cidade, cep, estado)
  end