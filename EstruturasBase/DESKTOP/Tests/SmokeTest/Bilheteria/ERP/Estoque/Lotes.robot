*** Settings ***
Documentation    Smoke Test: Estoque
Resource         ../../../../../Resources/BILHETERIA/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Estoque/Lotes/    
${nome_print}
${nome_exe}=    cde_win_est
*** Keywords ***

Lotes 
    Cadastros
    repetidor de teclas     right     3

*** Test Cases ***

Manutenção de Lotes
    ${nome_print}=     Set Variable     Manutenção de Lotes
    [Tags]     Estoque    Lotes   SmokeTest
    Lotes 
    RPA.Windows.Click       Manutenção de Lotes
    RPA.Windows.Get Text    Manutenção de Lotes (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Manutenção de Lotes (1)    ${Caminho_Screenshots}Manutenção de Lotes
    Fechar janela

Saldo de Lotes/Sintético
    ${nome_print}=     Set Variable     Saldo de Lotes_Sintético
    [Tags]     Estoque    Lotes   SmokeTest
    Lotes 
    RPA.Windows.Click       Saldo de Lotes/Sintético
    RPA.Windows.Get Text    Consulta de Lotes/Sintético (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Lotes/Sintético (1)    ${Caminho_Screenshots}Saldo de Lotes_Sintético
    Fechar janela

Movimentação de Lotes
    ${nome_print}=     Set Variable     Movimentação de Lotes
    [Tags]     Estoque    Lotes   SmokeTest
    Lotes 
    RPA.Windows.Click       Movimentação de Lotes
    RPA.Windows.Get Text    Relatório de Movimentação de Lotes (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Relatório de Movimentação de Lotes (1)    ${Caminho_Screenshots}Movimentação de Lotes
    RPA.Windows.Click       OK
    Fechar janela