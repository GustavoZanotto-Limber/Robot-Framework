*** Settings ***
Documentation    Smoke Test: Vendedor
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_VENDEDOR
Suite Teardown   Encerrar Tudo


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendedor/Consultas/    

*** Keywords ***

Consultas
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas       right      2
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Pedidos de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Pedidos de Venda
    Consultas                 Pedidos de Venda    
    RPA.Windows.Get Text      Consulta de Pedidos de Venda (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos de Venda
    RPA.Windows.Click         Confirmar
    Fechar janela
    
Contas a Receber
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Contas a Receber
    Consultas                 Contas a Receber 
    RPA.Windows.Get Text      Consulta do Contas a Receber (1)
    repetidor de teclas       tab      11
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta do Contas a Receber (1)    ${Caminho_Screenshots}Contas a Receber
    RPA.Windows.Click         Confirmar
    Fechar janela


    