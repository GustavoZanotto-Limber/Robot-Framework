*** Settings ***
Documentation    Smoke Test: Balança
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Balanças/Consultas/    
${nome_print}
${nome_exe}=    cde_win_Balanca

*** Keywords ***

Consultas
    Cadastros
    repetidor de teclas    right    3

*** Test Cases ***

Romaneios
    ${nome_print}=     Set Variable     Romaneios
    [Tags]     Balancas    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Romaneios 
    RPA.Windows.Get Text      Consulta de Romaneios (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Romaneios (1)    ${Caminho_Screenshots}Romaneios
    Fechar janela

Romaneios Excluídos
    ${nome_print}=     Set Variable     Romaneios Excluídos
    [Tags]     Balancas    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Romaneios Excluídos
    RPA.Windows.Get Text      Consulta Romaneios Excluídos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Consulta Romaneios Excluídos (1)    ${Caminho_Screenshots}Romaneios Excluídos
    RPA.Windows.Click         Confirmar
    Fechar janela

Movimentações da Balança
    ${nome_print}=     Set Variable     Movimentações da Balança
    [Tags]     Balancas    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Movimentações da Balança
    RPA.Windows.Get Text      Movimentação da Balança (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Movimentação da Balança (1)    ${Caminho_Screenshots}Movimentações da Balança
    RPA.Windows.Click         OK
    Fechar janela

Lançamentos de Saída
    ${nome_print}=     Set Variable     Lançamentos de Saída
    [Tags]     Balancas    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Lançamentos de Saída
    RPA.Windows.Get Text      Lançamentos de Saída (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Lançamentos de Saída (1)    ${Caminho_Screenshots}Lançamentos de Saída
    Fechar janela

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]     Balancas    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseKeywordsDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela

Saldo de Terceiro
    ${nome_print}=     Set Variable     Saldo de Terceiro
    [Tags]     Balancas    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Saldo de Terceiro 
    RPA.Windows.Get Text      Saldos de Terceiros (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Saldos de Terceiros (1)    ${Caminho_Screenshots}Saldo de Terceiro
    Fechar janela

Movimentação de Terceiro
    ${nome_print}=     Set Variable     Movimentação de Terceiro
    [Tags]     Balancas    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Movimentação de Terceiro 
    RPA.Windows.Get Text      Movimentação de Terceiros (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Movimentação de Terceiros (1)    ${Caminho_Screenshots}Movimentação de Terceiro
    RPA.Windows.Click         OK
    Fechar janela