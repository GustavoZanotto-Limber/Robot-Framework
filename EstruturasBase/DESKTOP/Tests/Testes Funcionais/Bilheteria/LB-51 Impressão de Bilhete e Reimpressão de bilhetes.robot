*** Settings ***
Documentation    Testes regressivos: Impressão de Bilhete e Reimpressão de bilhetes
Resource         ../../../Resources/BaseKeywordsDesktop.robot
Resource         ../../../Resources/BDDKeywordsDesktop.robot
Suite Setup      Iniciar sessao e abrir caixa    ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-51 Impressão de Bilhete e Reimpressão de bilhetes/ 
${Caminho_arquivos}=     C:/Users/testes/Documents/Testes Regressivos/
${nome_exe}=    cde_win_bca_front
${nome_print}
*** Keywords ***


*** Test Cases    ***

Cenário 1: Emissão de Bilhete
    ${nome_print}=    Set Variable     Emissão de Bilhete
    [Tags]    Testes_Funcionais    LB-51   
    Dado que realizei uma venda
    Quando imprimo o bilhete
    Então valido se a impressão saiu corretamente   ${Caminho_arquivos}   Impressão do Bilhete.pdf    Impressão do Bilhete.pdf - WPS Office    ${Caminho_Screenshots}        Cenário Emissão de Bilhete

Cenário 2: Reimpressão de Bilhete
    ${nome_print}=    Set Variable     Reimpressão de Bilhete
    [Tags]    Testes_Funcionais    LB-51   
    Dado que realizei uma venda    
    Quando imprimo o bilhete
    #E
    Quando peço a Reimpressão do bilhete
    Então valido se a impressão saiu corretamente    ${Caminho_arquivos}    Reimpressão do bilhete.pdf    Reimpressão do bilhete.pdf - WPS Office    ${Caminho_Screenshots}     Cenário Reimpressão de Bilhete

Cenário 3: Reimpressão de RPS
    ${nome_print}=    Set Variable     Reimpressão de RPS
    [Tags]    Testes_Funcionais    LB-51     
    Dado que realizei uma venda    
    Quando imprimo o bilhete
    #E
    Quando peço a Reimpressão do RPS
    Então valido se a impressão RPS saiu corretamente    ${Caminho_arquivos}    Reimpressão do RPS.pdf    Reimpressão do RPS.pdf - WPS Office    ${Caminho_Screenshots}     Cenário Reimpressão de RPS