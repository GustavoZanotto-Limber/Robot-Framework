*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Orçamento/    
${nome_print}
${nome_exe}=    cde_win_fin
*** Keywords ***

Orçamentos
    Cadastros
    repetidor de teclas    right    10

*** Test Cases ***

Liberação Orçamentária
    ${nome_print}=     Set Variable     Liberação Orçamentária
    [Tags]     Financeiro    Orçamento   SmokeTest
    Orçamentos
    RPA.Windows.Click         Liberação Orçamentária
    RPA.Windows.Get Text      Liberação Orçamentária (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Liberação Orçamentária (1)    ${Caminho_Screenshots}Liberação Orçamentária
    Fechar janela
    RPA.Windows.Click         Sim

Previsão Orçamentária
    ${nome_print}=     Set Variable     Previsão Orçamentária
    [Tags]     Financeiro    Orçamento   SmokeTest
    Orçamentos
    RPA.Windows.Click         Previsão Orçamentária
    RPA.Windows.Get Text      Previsão Orçamentária (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Previsão Orçamentária (1)    ${Caminho_Screenshots}Previsão Orçamentária
    Fechar janela
    RPA.Windows.Click         Sim

Transferência de Orçamentos
    ${nome_print}=     Set Variable     Transferência de Orçamentos
    [Tags]     Financeiro    Orçamento   SmokeTest
    Orçamentos
    RPA.Windows.Click         Transferência de Orçamentos
    RPA.Windows.Get Text      Transferência de Orçamentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Transferência de Orçamentos (1)    ${Caminho_Screenshots}Transferência de Orçamentos
    Fechar com Sim

Previsão X Realizado
    ${nome_print}=     Set Variable     Previsão X Realizado
    [Tags]     Financeiro    Orçamento   SmokeTest
    Orçamentos
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Consulta de Acompanhamento Previsto X Realizado (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Acompanhamento Previsto X Realizado (1)    ${Caminho_Screenshots}Consultas/Previsão X Realizado
    RPA.Windows.Click         OK
    Fechar janela

Previsão X Realizado 2
    ${nome_print}=     Set Variable     Previsão X Realizado 2
    [Tags]     Financeiro    Orçamento   SmokeTest
    Orçamentos
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Consulta Previsto X Realizado (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta Previsto X Realizado (1)    ${Caminho_Screenshots}Previsão X Realizado 2
    Fechar janela