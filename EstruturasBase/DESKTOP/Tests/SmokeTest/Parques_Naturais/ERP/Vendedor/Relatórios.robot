*** Settings ***
Documentation    Smoke Test: Vendedor
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_VENDEDOR
Suite Teardown   Encerrar Tudo


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendedor/Relatórios/    

*** Keywords ***

Relatórios
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas       right      3
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Análise da Disponibilidade do Estoque
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Análise da Disponibilidade do Estoque
    Relatórios                Análise da Disponibilidade do Estoque   
    RPA.Windows.Get Text      Análise da Disponibilidade do Estoque (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Análise da Disponibilidade do Estoque (1)    ${Caminho_Screenshots}Análise da Disponibilidade do Estoque
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório de Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Relatório de Cobrança
    Relatórios                Relatório de Cobrança  
    RPA.Windows.Get Text      Relatório de Cobrança
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Cobrança   ${Caminho_Screenshots}Relatório de Cobrança
    RPA.Windows.Click         Confirmar
    Fechar janela

Posição Financeira/Vendedor/Terceiro
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Posição Financeira/Vendedor/Terceiro
    Relatórios                Posição Financeira/Vendedor/Terceiro  
    RPA.Windows.Get Text      Posição Financeira por Representante/Terceiro
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Posição Financeira por Representante/Terceiro   ${Caminho_Screenshots}Posição Financeira/Vendedor/Terceiro
    RPA.Windows.Click         Confirmar
    Fechar janela


    



