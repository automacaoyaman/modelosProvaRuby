#Executar antes de iniciar qualquer teste
Before do | scenario |
    Selenium::WebDriver::Chrome.driver_path="C:/Workspace/Provas Yaman/Ruby BDD/prova-yaman-ruby-bdd (Junior)/chromedriver.exe"
    $driver = Selenium::WebDriver.for :chrome
    $driver.manage.window.maximize
end

#Executado após finalizar qualquer teste
After do | scenario |
    scenario_name = scenario.name
    #Gera evidencias screenshot
    encoded_img = $driver.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png')
    $driver.save_screenshot("./screenshot/#{scenario_name}_screenshot.png")
    #fechar browser
    $driver.close
end