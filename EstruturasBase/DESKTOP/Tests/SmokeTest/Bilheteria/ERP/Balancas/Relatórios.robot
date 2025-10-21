*** Settings ***
Documentation    Smoke Test: Balança
Resource         ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Balanças/Relatórios/    
${nome_print}
${nome_exe}=    cde_win_Balanca

*** Keywords ***

Relatórios
    Cadastros
    repetidor de teclas    right    4

*** Test Cases ***

Movimentação de Cereais
    ${nome_print}=     Set Variable     Movimentação de Cereais
    [Tags]     Balancas    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Movimentação de Cereais
    RPA.Windows.Get Text      Movimentação de Cereais (1)
    repetidor de teclas       Tab         2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Movimentação de Cereais (1)    ${Caminho_Screenshots}Movimentação de Cereais
    RPA.Windows.Click         Confirmar
    Fechar janela

Lançamentos de Saídas
    ${nome_print}=     Set Variable     Lançamentos de Saídas
    [Tags]     Balancas    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Lançamentos de Saídas
    RPA.Windows.Get Text      Lançamentos de Saídas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Lançamentos de Saídas (1)    ${Caminho_Screenshots}Lançamentos de Saídas
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório de Pesagem de Terceiros
    ${nome_print}=     Set Variable     Relatório de Pesagem de Terceiros
    [Tags]     Balancas    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Relatório de Pesagem de Terceiro
    RPA.Windows.Get Text      Relatório de Pesagem de Terceiro (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Pesagem de Terceiro (1)    ${Caminho_Screenshots}Relatório de Pesagem de Terceiros
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório Bayer/Monsanto
    ${nome_print}=     Set Variable     Relatório Bayer_Monsanto
    [Tags]     Balancas    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Relatório Bayer/Monsanto
    RPA.Windows.Get Text      Relatório Bayer/Monsanto (1)
    repetidor de teclas       Tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório Bayer/Monsanto (1)    ${Caminho_Screenshots}Relatório Bayer_Monsanto
    RPA.Windows.Click         Confirmar
    Fechar janela