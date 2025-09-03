*** Settings ***
Documentation    Testes regressivos: Cadastro e alteracao de Programacao de Horario
Resource         ../../Resources/BaseWeb.robot
Resource         ../../Resources/KeywordWeb.robot
Suite Setup      Abrir CARD e logar 
#Suite Teardown   Fechar navegador
Test Teardown    Caso aconteca erro WEB    ${Caminho_Screenshots}Erros/    ${nome_print}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-42 Cadastro e alteracao de Programacao de Horario/ 
${nome_print}
${texto_bilhete}

*** Keywords ***



*** Test Cases    ***

Cenário 1: Cadastro de um bilhete por Horario/Vaga
    ${nome_print}=    Set Variable     Cadastro de um bilhete por Horario_Vaga
    [Tags]    Testes_Funcionais    LB-42
    Dado que estou na tela de criação de bilhete
    Quando insiro as informações para um novo cadastro de bilhete 
    #Então salvo o cadastro de Programacao de Horario
