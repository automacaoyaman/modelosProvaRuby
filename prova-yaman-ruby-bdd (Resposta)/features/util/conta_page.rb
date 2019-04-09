require 'selenium-webdriver'

class ContaPage
    
    #**********************Objetos**************************************************************

    def btn_Contas
        nome_elemento = "Clicar no menu Contas"
        begin           
            return $driver.find_element(:xpath, "//*[@id='navbar']/ul/li[2]/a")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    def btn_Adicionar
        nome_elemento = "Clicar submenu Adicionar"
        begin           
            return $driver.find_element(:xpath, "//*[@id='navbar']/ul/li[2]/ul/li[1]/a")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    def txt_Nome
        nome_elemento = "Preencher campo Nome"
        begin           
            return $driver.find_element(:id, "nome")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    def btn_Salvar
        nome_elemento = "Clicar botao Salvar"
        begin           
            return $driver.find_element(:xpath, "/html/body/div[2]/form/div[2]/button")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    def lbl_Conta_adicionada_sucesso
        nome_elemento = "mensagem Conta adicionada com sucesso"
        begin           
            return $driver.find_element(:xpath, "/html/body/div[1]")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    def btn_Sair
        nome_elemento = "Botão Sair"
        begin           
            return $driver.find_element(:xpath, "//*[@id='navbar']/ul/li[5]/a")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    #*********************************************************************************************

    #***************************************************
    # Function        : clicar_Adicionar
    # Description     : Função responsável por acessar o menu Adicionar
    # Parameters      : 
    # Value Returned  : -
    #***************************************************
    def clicar_adicionar
        btn_Contas.click
        btn_Adicionar.click
    end

    #***************************************************
    # Function        : nova_Conta
    # Description     : Função incluir uma nova Conta
    # Parameters      : 
    # Value Returned  : -
    #***************************************************
    def nova_conta nome
        txt_Nome.send_keys nome
        btn_Salvar.click
    end

    #***************************************************
    # Function        : validar_mensagem_conta_adicionada
    # Description     : Função para validar mensagem de Conta cadastrada com sucesso
    # Parameters      : 
    # Value Returned  : -
    #***************************************************
    def validar_mensagem_conta_adicionada mensagem
        sleep(2)
        if mensagem != lbl_Conta_adicionada_sucesso().text
            fail(ArgumentError.new("Conta não cadastrada com sucesso"))
        end
        btn_Sair.click
    end
end