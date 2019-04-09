require 'selenium-webdriver'

class LoginPage

    #**********************Objetos**************************************************************

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

    def btn_Entrar
        nome_elemento = "Botão Entrar"
        begin           
            return $driver.find_element(:xpath, "/html/body/div[2]/form/button")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    def lbl_Bem_vindo
        nome_elemento = "Mensagem Bem vindo"
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

    def lbl_logout
        nome_elemento = "Validar logout"
        begin           
            return $driver.find_element(:xpath, "/html/body/nav/div/div[1]/a")
        rescue => exception
            fail(ArgumentError.new("Objeto <" + nome_elemento + "> não encontrado"))
        end
    end

    #*********************************************************************************************

    #***************************************************
    # Function        : logar_usuario
    # Description     : Função responsável por logar com usuário já cadastrado
    # Parameters      : email, senha
    # Value Returned  : -
    #***************************************************
    def logar_usuario email, senha
        txt_Email.send_keys email
        txt_Password.send_keys senha
    end

    #***************************************************
    # Function        : clicar_entrar
    # Description     : Função responsável por clicar no botão Entrar
    # Parameters      : 
    # Value Returned  : -
    #***************************************************
    def clicar_entrar
        btn_Entrar.click
    end

    #***************************************************
    # Function        : validar_mensagem_bem_vindo
    # Description     : Função responsável por validar mensagem Bem vindo
    # Parameters      : mensagem
    # Value Returned  : -
    #***************************************************
    def validar_mensagem_bem_vindo mensagem
        sleep(2)
        if mensagem != lbl_Bem_vindo().text
            fail(ArgumentError.new("Login não realizado com sucesso"))
        end
    end

    #***************************************************
    # Function        : validar_logout
    # Description     : Função responsável por validar o logout
    # Parameters      : mensagem
    # Value Returned  : -
    #***************************************************
    def validar_logout
        btn_Sair.click
        sleep(2)
        if !lbl_Bem_vindo().text
            fail(ArgumentError.new("Logout não realizado com sucesso"))
        end
    end
end