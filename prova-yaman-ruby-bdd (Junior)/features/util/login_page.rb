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

    #**********************Métodos****************************************************************

    
    #implementar os métodos


    #*********************************************************************************************
end