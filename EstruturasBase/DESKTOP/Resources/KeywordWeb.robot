*** Settings ***   
Library    OperatingSystem
Library    SeleniumLibrary 
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

Dado que estou na tela de Programacao de Horario
    Mudar Página   https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/novo
    Sleep    1s




#---------------------------------------QUANDO---------------------------------------





#---------------------------------------ENTAO----------------------------------------




