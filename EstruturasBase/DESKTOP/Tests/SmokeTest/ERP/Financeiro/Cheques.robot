*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Financeiro/Cheques/    
${nome_print}
${nome_exe}=    cde_win_fin
*** Keywords ***

Cheques
    Cadastros
    repetidor de teclas    right    12

*** Test Cases ***

Cheques Emitidos
    ${nome_print}=     Set Variable     Cheques Emitidos
    [Tags]     Financeiro    Cheques   SmokeTest
    Cheques
    RPA.Windows.Click         Cheques Emitidos
    RPA.Windows.Get Text      Manutenção de Cheques (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Manutenção de Cheques (1)    ${Caminho_Screenshots}Cheques Emitidos
    RPA.Windows.Click       Confirmar
    Fechar janela

Cheques de Terceiros
    ${nome_print}=     Set Variable     Cheques de Terceiros
    [Tags]     Financeiro    Cheques   SmokeTest
    Cheques
    RPA.Windows.Click         Cheques de Terceiros
    RPA.Windows.Get Text      Movimentação de Cheques de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Movimentação de Cheques de Terceiros (1)    ${Caminho_Screenshots}Cheques de Terceiros
    Fechar com Sim

Relatório de Cheque de Terceiros
    ${nome_print}=     Set Variable     Relatório de Cheque de Terceiros
    [Tags]     Financeiro    Cheques   SmokeTest
    Cheques
    RPA.Windows.Click         Relatório de Cheques de Terceiros
    RPA.Windows.Get Text      Relatório de Cheque de Terceiros (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Cheque de Terceiros (1)    ${Caminho_Screenshots}Relatório de Cheque de Terceiros
    RPA.Windows.Click       Confirmar
    Fechar janela

Relatório de Cheques Emitidos
    ${nome_print}=     Set Variable     Relatório de Cheques Emitidos
    [Tags]     Financeiro    Cheques   SmokeTest
    Cheques
    RPA.Windows.Click         Relatório de Cheques Emitidos
    RPA.Windows.Get Text      Relatório de Cheques (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Cheques (1)    ${Caminho_Screenshots}Relatório de Cheques Emitidos
    RPA.Windows.Click       Confirmar
    Fechar janela

Relatórios de Cheques Cancelados/Excluídos
    ${nome_print}=     Set Variable     Relatórios de Cheques Cancelados_Excluídos
    [Tags]     Financeiro    Cheques   SmokeTest
    Cheques
    RPA.Windows.Click         Relatório de Cheques Cancelados/Excluídos
    RPA.Windows.Get Text      Relatório de cheques cancelados (1)
    repetidor de teclas       Tab     2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de cheques cancelados (1)    ${Caminho_Screenshots}Relatórios de Cheques Cancelados_Excluídos
    RPA.Windows.Click       Confirmar
    Fechar janela

Layouts de Cheques para Emissão
    ${nome_print}=     Set Variable     Layouts de Cheques para Emissão
    [Tags]     Financeiro    Cheques   SmokeTest
    Cheques
    RPA.Windows.Click         Layouts de Cheques para Emissão
    RPA.Windows.Get Text      Configuração de Cheques (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Configuração de Cheques (1)    ${Caminho_Screenshots}Layouts de Cheques para Emissão
    Fechar com Sim

Imprimir Multiplos Cheques
    ${nome_print}=     Set Variable     Imprimir Multiplos Cheques
    [Tags]     Financeiro    Cheques   SmokeTest
    Cheques
    RPA.Windows.Click         Imprimir Multiplos Cheques
    RPA.Windows.Get Text      Imprimir Cheques (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Imprimir Cheques (1)    ${Caminho_Screenshots}Imprimir Multiplos Cheques
    Fechar janela