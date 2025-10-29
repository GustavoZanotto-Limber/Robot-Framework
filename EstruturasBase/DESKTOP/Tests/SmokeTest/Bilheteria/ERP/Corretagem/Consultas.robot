*** Settings ***
Documentation    Smoke Test: Corretagem
Resource         ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Corretagem/Consultas/    
${nome_print}
${nome_exe}=    cde_win_crt
*** Keywords ***

Consultas
    Cadastros 
    repetidor de teclas    right    3

*** Test Cases ***

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]   SmokeERP    Corretagem    Consultas   SmokeTest    
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseKeywordsDesktop.Screenshot    Consultas Personalizadas (1)      ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela

Log de Alterações
    ${nome_print}=     Set Variable     Log de Alterações
    [Tags]   SmokeERP    Corretagem    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Log de Alterações
    RPA.Windows.Get Text      Consulta Log de Alterações (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta Log de Alterações (1)      ${Caminho_Screenshots}Log de Alterações
    Fechar janela