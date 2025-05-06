*** Settings ***
Documentation    Smoke Test: Balança
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_Balanca


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Balanças/Relatórios/    

*** Keywords ***

Relatórios

    Cadastros
    repetidor de teclas    right    4

*** Test Cases ***

Movimentação de Cereais
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Movimentação de Cereais
    Relatórios
    RPA.Windows.Click         Movimentação de Cereais
    RPA.Windows.Get Text      Movimentação de Cereais (1)
    BaseDesktop.Screenshot    Movimentação de Cereais (1)    ${Caminho_Screenshots}Movimentação de Cereais
    Fechar janela

Lançamentos de Saídas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Lançamentos de Saídas
    Relatórios
    RPA.Windows.Click         Lançamentos de Saídas
    RPA.Windows.Get Text      Lançamentos de Saídas (1)
    BaseDesktop.Screenshot    Lançamentos de Saídas (1)    ${Caminho_Screenshots}Lançamentos de Saídas
    Fechar janela

Relatório de Pesagem de Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Relatório de Pesagem de Terceiros
    Relatórios
    RPA.Windows.Click         Relatório de Pesagem de Terceiro
    RPA.Windows.Get Text      Relatório de Pesagem de Terceiro (1)
    BaseDesktop.Screenshot    Relatório de Pesagem de Terceiro (1)    ${Caminho_Screenshots}Relatório de Pesagem de Terceiros
    Fechar janela

Relatório Bayer/Monsanto
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Relatório Bayer_Monsanto
    Relatórios
    RPA.Windows.Click         Relatório Bayer/Monsanto
    RPA.Windows.Get Text      Relatório Bayer/Monsanto (1)
    BaseDesktop.Screenshot    Relatório Bayer/Monsanto (1)    ${Caminho_Screenshots}Relatório Bayer_Monsanto
    Fechar janela

Encerrar
    Encerrar tudo


