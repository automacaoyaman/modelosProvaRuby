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
        @cidade = @url['cidade']
        @cep = @url['cep']
        @estado = @url['estado']
    end

    #***************************************************
    # Function        : armazenar_valores_api
    # Description     : Armazenar os valores de retorno da API em variáveis
    # Parameters      : -
    # Value Returned  : -
    #***************************************************
    def comparar_valores rua, cidade, cep, estado
        if rua != @rua
            fail(ArgumentError.new("Valores incompatíveis para Rua"))
        end
        if cidade != @cidade
            fail(ArgumentError.new("Valores incompatíveis para Cidade"))
        end
        if estado != @estado
            fail(ArgumentError.new("Valores incompatíveis para Estado"))
        end
    end
end