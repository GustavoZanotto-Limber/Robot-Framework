*** Settings ***
Documentation    Smoke Test: Front
Resource         ../../../../Resources/BaseDesktop.robot
Resource         ../../../../Resources/Keywords.robot
Suite Setup      Iniciar sessao     ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Caixa Operador/ 
${nome_print}
${nome_exe}=    cde_win_bca_frontR40

*** Keywords ***

*** Test Cases    ***

Abertura / Fechamento
    [Tags]    Caixa Operador    Front    SmokeTest  
    ${nome_print}=                      Set Variable    Abertura_Fechamento
    Caixa Operador
    RPA.Windows.Click                   Abertura / Fechamento
    Fechar caixa caso esteja aberto 
    RPA.Desktop.Press Keys              Enter
    RPA.Windows.Click                   Abrir Caixa
    RPA.Desktop.Press Keys              Enter
    BaseDesktop.Screenshot                          Controle de Caixa (1)    ${Caminho_Screenshots}Abertura_Fechamento
    RPA.Windows.Click                   OK

Suprimento / Sangria
    [Tags]    Caixa Operador    Front    SmokeTest  
    ${nome_print}=          Set Variable    Suprimento _ Sangria
    Caixa Operador
    RPA.Windows.Click       Suprimento / Sangria
    RPA.Windows.Get Text    Movimento de Caixa (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Movimento de Caixa (1)    ${Caminho_Screenshots}Suprimento _ Sangria
    Fechar com Sim


    