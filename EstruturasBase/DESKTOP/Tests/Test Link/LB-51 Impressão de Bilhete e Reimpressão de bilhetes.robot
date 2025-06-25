*** Settings ***
Documentation    Testes regressivos: Test Link
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Resource         ../../Resources/Keywords.robot
Suite Setup      Iniciar sessao     cde_win_bca_frontR30
Suite Teardown   Encerrar Tudo

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-51 Impressão de Bilhete e Reimpressão de bilhetes/ 
${caminho_logs}=     C:/Users/Gustavo Zanotto/Documents/Testes Regressivos/
*** Keywords ***


*** Test Cases    ***

Cenário: Emissão de Bilhete
    [Tags]    Testes Funcionais    Impressão de Bilhetes
    #[Teardown]    Caso aconteça erro    ${Caminho_Screenshots}        Cenário Emissão de Bilhete
    #Dado que realizei uma venda
    #Quando imprimo o bilhete
    Então valido se a impressão saiu corretamente   ${caminho_logs}   Impressão do Bilhete.pdf    Impressão do Bilhete.pdf - WPS Office    ${Caminho_Screenshots}        Cenário Emissão de Bilhete

Cenário: Reimpressão de Bilhete
    [Tags]    Testes Funcionais    Impressão de Bilhetes
    #[Teardown]    Caso aconteça erro    ${Caminho_Screenshots}        Cenário Reimpressão de Bilhete
    Dado que realizei uma venda    
    #E
    Quando imprimo o bilhete
    Quando peço a Reimpressão do bilhete
    Então valido se a impressão saiu corretamente    ${caminho_logs}    Reimpressão do bilhete.pdf    Reimpressão do bilhete.pdf - WPS Office    ${Caminho_Screenshots}     Cenário Reimpressão de Bilhete