*** Settings ***
Documentation    Testes regressivos: Impressão de Bilhete e Reimpressão de bilhetes
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Resource         ../../../../Resources/BDD/BDDKeywordsDesktop.robot
Suite Setup      Iniciar Suite
Suite Teardown   Encerrar Tudo    ${nome_print}    ${nome_exe}
Test Teardown    Encerrar Cenário    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/Testes Regressivos/Bilheteria/Front - Padrao/LB-51   Impressão de Bilhete e Reimpressão de bilhetes/ 
${Caminho_arquivos}
${nome_exe}=    cde_win_bca_front
${nome_print}
*** Keywords ***

Iniciar Suite
    ${caminho}=       Replace String    ${EXECDIR}       \\Robot_Framework     ${EMPTY}
    Set Suite Variable    ${Caminho_arquivos}     ${caminho}\\Documents\\Testes_Regressivos\\
    Iniciar sessao e abrir caixa    ${nome_exe} 

Encerrar Cenário
    [Arguments]    ${nome_print}    ${nome_exe}
    Run Keyword if test Failed    ALT F4
    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Test Cases    ***

Cenário 1: Emissão de Bilhete
    ${nome_print}=    Set Variable     Emissão de Bilhete
    [Tags]    Testes_Funcionais    LB-51  Regressivos_BIL   
    Dado que realizei uma venda
    Quando imprimo o bilhete
    Então valido se a impressão saiu corretamente   ${Caminho_arquivos}   Impressão do Bilhete.pdf    Impressão do Bilhete.pdf - WPS Office    ${Caminho_Screenshots}        Cenário Emissão de Bilhete

Cenário 2: Reimpressão de Bilhete
    ${nome_print}=    Set Variable     Reimpressão de Bilhete
    [Tags]    Testes_Funcionais    LB-51  Regressivos_BIL   
    Dado que realizei uma venda    
    Quando imprimo o bilhete
    #E
    Quando peço a Reimpressão do bilhete
    Então valido se a impressão saiu corretamente    ${Caminho_arquivos}    Reimpressão do bilhete.pdf    Reimpressão do bilhete.pdf - WPS Office    ${Caminho_Screenshots}     Cenário Reimpressão de Bilhete

Cenário 3: Reimpressão de RPS
    ${nome_print}=    Set Variable     Reimpressão de RPS
    [Tags]    Testes_Funcionais    LB-51  Regressivos_BIL     
    Dado que realizei uma venda    
    Quando imprimo o bilhete
    #E
    Quando peço a Reimpressão do RPS
    Então valido se a impressão RPS saiu corretamente    ${Caminho_arquivos}    Reimpressão do RPS.pdf    Reimpressão do RPS.pdf - WPS Office    ${Caminho_Screenshots}     Cenário Reimpressão de RPS