*** Settings ***
Documentation    Testes regressivos: Impressão de Bilhete e Reimpressão de bilhetes
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Resource         ../../Resources/Keywords.robot
Suite Setup      Iniciar sessao e abrir caixa    ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-51 Impressão de Bilhete e Reimpressão de bilhetes/ 
${Caminho_arquivos}=     C:/Users/Gustavo Zanotto/Documents/Testes Regressivos/
${nome_exe}=    cde_win_bca_frontR30
${nome_print}
*** Keywords ***


*** Test Cases    ***

Cenário: Emissão de Bilhete
    ${nome_print}=    Set Variable     Emissão de Bilhete
    [Tags]    Testes Funcionais    LB-51   
    Dado que realizei uma venda
    Quando imprimo o bilhete
    Então valido se a impressão saiu corretamente   ${Caminho_arquivos}   Impressão do Bilhete.pdf    Impressão do Bilhete.pdf - WPS Office    ${Caminho_Screenshots}        Cenário Emissão de Bilhete

Cenário: Reimpressão de Bilhete
    ${nome_print}=    Set Variable     Reimpressão de Bilhete
    [Tags]    Testes Funcionais    LB-51   
    Dado que realizei uma venda    
    Quando imprimo o bilhete
    #E
    Quando peço a Reimpressão do bilhete
    Então valido se a impressão saiu corretamente    ${Caminho_arquivos}    Reimpressão do bilhete.pdf    Reimpressão do bilhete.pdf - WPS Office    ${Caminho_Screenshots}     Cenário Reimpressão de Bilhete

Cenário: Reimpressão de RPS
    ${nome_print}=    Set Variable     Reimpressão de RPS
    [Tags]    Testes Funcionais    LB-51   
    Dado que realizei uma venda    
    Quando imprimo o bilhete
    #E
    Quando peço a Reimpressão do RPS
    Então valido se a impressão RPS saiu corretamente    ${Caminho_arquivos}    Reimpressão do RPS.pdf    Reimpressão do RPS.pdf - WPS Office    ${Caminho_Screenshots}     Cenário Reimpressão de RPS