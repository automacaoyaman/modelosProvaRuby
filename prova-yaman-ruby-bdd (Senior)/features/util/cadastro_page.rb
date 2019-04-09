require 'selenium-webdriver'

class CadastroPage
    
    #**********************Objetos**************************************************************
    def txt_Nome
        nome_elemento = "Campo de texto Nome"
        begin           
            return $driver.find_element(:id, "nome")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    #*********************************************************************************************

    #**********************Métodos**************************************************************
    
    #***************************************************
    # Function        : configurar_ambiente
    # Description     : Função responsável por acessar uma determinada url
    # Parameters      : url
    # Value Returned  : -
    #***************************************************
    def configurar_ambiente url
        $driver.get url
    end

    #*********************************************************************************************
end