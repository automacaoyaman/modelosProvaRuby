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

    def txt_Email
        nome_elemento = "Campo de texto Email"
        begin           
            return $driver.find_element(:id, "email")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    def txt_Password
        nome_elemento = "Campo de texto Senha"
        begin           
            return $driver.find_element(:id, "senha")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    def btn_Cadastrar
        nome_elemento = "Botão Cadastrar"
        begin           
            return $driver.find_element(:xpath, "/html/body/div[2]/form/input")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    def lbl_Cadastro_sucesso
        nome_elemento = "Mensagem Usuário inserido com sucesso"
        begin           
            return $driver.find_element(:xpath, "/html/body/div[1]")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    #*********************************************************************************************
    
    #***************************************************
    # Function        : configurar_ambiente
    # Description     : Função responsável por acessar uma determinada url
    # Parameters      : url
    # Value Returned  : -
    #***************************************************
    def configurar_ambiente url
        $driver.get url
    end

    #***************************************************
    # Function        : cadastrar_usuario
    # Description     : Função responsável por cadastrar um novo usuário
    # Parameters      : nome, email, senha
    # Value Returned  : -
    #***************************************************
    def cadastrar_usuario nome, email, senha
        txt_Nome.send_keys nome
        txt_Email.send_keys email
        txt_Password.send_keys senha
    end

    #***************************************************
    # Function        : validar_mensagem_cadastrado_sucesso
    # Description     : Função responsável por validar mensagem Usuário inserido com sucesso
    # Parameters      : mensagem
    # Value Returned  : -
    #***************************************************
    def validar_mensagem_cadastrado_sucesso mensagem
        btn_Cadastrar.click
        sleep(2)
        if mensagem != lbl_Cadastro_sucesso().text
            fail(ArgumentError.new("Cadastro não realizado com sucesso"))
        end
    end
end