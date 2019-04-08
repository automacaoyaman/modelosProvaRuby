class ProvaPage

    #***************************************************
    # Function        : realizar_conexao_api
    # Description     : Realizar a requisição da API
    # Parameters      : url
    # Value Returned  : -
    #***************************************************
    def realizar_conexao_api url
        @url = HTTParty.get(url)
    end

    #***************************************************
    # Function        : armazenar_valores_api
    # Description     : Armazenar os valores de retorno da API em variáveis
    # Parameters      : -
    # Value Returned  : -
    #***************************************************
    def armazenar_valores_api
        @rua = @url['logradouro']
    end
end