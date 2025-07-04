*** Settings ***
Documentation    Testes regressivos: Emissão de Bilhetes e Reimpressão de bilhetes
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Resource         ../../Resources/Keywords.robot
Suite Setup      Iniciar sessao e abrir caixa    ${nome_exe}   
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}
Library    RPA.Salesforce

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/Emissão de Bilhetes e Reimpressão de bilhetes/ 
${caminho_logs}=     C:/Users/Gustavo Zanotto/Documents/Testes Regressivos/
${nome_exe}=    cde_win_bca_frontR30
${nome_print}
*** Keywords ***


*** Test Cases    ***

Cenário 1: Emissão de bilhetes para diferentes categorias
    ${nome_print}=    Set Variable     Emissão de Bilhetes para diferentes categorias
    [Tags]    Testes Funcionais    LB-45   
    Dado que realizei uma venda com multiplas categorias
    Quando finalizo o pagamento    3
    Então valido a venda foi realizada com sucesso
    