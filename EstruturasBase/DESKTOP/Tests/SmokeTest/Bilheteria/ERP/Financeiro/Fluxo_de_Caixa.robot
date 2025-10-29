*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Financeiro/Fluxo de Caixa/    
${nome_print}
${nome_exe}=    cde_win_fin
*** Keywords ***

Fluxo de Caixa
    Cadastros
    repetidor de teclas    right    11

*** Test Cases ***

Fluxo de Caixa a Realizar (Projetado)
    ${nome_print}=     Set Variable     Fluxo de Caixa a Realizar (Projetado)
    [Tags]   SmokeERP    Financeiro    Fluxo de Caixa   SmokeTest
    Fluxo de Caixa
    RPA.Windows.Click         Fluxo de Caixa a Realizar (Projetado)
    RPA.Windows.Get Text      Fluxo de Caixa Projetado (A Realizar) (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Fluxo de Caixa Projetado (A Realizar) (1)    ${Caminho_Screenshots}Fluxo de Caixa a Realizar (Projetado)
    RPA.Windows.Click         OK
    Fechar janela

Fluxo de Caixa Realizado    
    ${nome_print}=     Set Variable     Fluxo de Caixa Realizado
    [Tags]   SmokeERP    Financeiro    Fluxo de Caixa   SmokeTest
    Fluxo de Caixa
    RPA.Windows.Click         Fluxo de Caixa Realizado
    RPA.Windows.Get Text      Fluxo de Caixa a Realizado (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Fluxo de Caixa a Realizado (1)    ${Caminho_Screenshots}Fluxo de Caixa Realizado
    RPA.Windows.Click         OK
    Fechar janela