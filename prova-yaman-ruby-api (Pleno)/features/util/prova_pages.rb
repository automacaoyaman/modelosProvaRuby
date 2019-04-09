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
end