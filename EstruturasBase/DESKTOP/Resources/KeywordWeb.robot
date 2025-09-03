*** Settings ***   
Library    OperatingSystem
Library    SeleniumLibrary    screenshot_root_directory=EstruturasBase\\DESKTOP\\ScreenShots\\Selenium
Library    Process
Library    Collections
Library    String
Resource   BaseWeb.robot

*** Variables ***
${qtd_vagas}
${Espaço}=    ${SPACE}

*** Keywords ***

# ****** BDDs **********
#----------------------------------------DADO----------------------------------------

Dado que estou na tela de criação de bilhete
    Mudar Página   https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/novo
    Sleep    1s




#---------------------------------------QUANDO---------------------------------------

Quando insiro as informações para um novo cadastro de bilhete
    Tirar notificação
    Sleep    1s
    Criar Bilhete     Bilhete Automatizado: Por Horario     ZANOTTO NAO MEXER   1



#---------------------------------------ENTAO----------------------------------------




