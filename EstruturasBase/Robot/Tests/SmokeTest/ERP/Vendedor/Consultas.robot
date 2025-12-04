*** Settings ***
Documentation    Smoke Test: Vendedor
Resource         ../../../../Resources/Base/Base_Desktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Vendedor/Consultas/    
${nome_print}
${nome_exe}=    cde_win_VENDEDOR
*** Keywords ***

Consultas
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas       right      2
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Pedidos de Venda
    ${nome_print}=     Set Variable     Pedidos de Venda
    [Tags]   SmokeERP   Vendedor   Consultas   SmokeTest
    Consultas                 Pedidos de Venda    
    RPA.Windows.Get Text      Consulta de Pedidos de Venda (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Base_Desktop.Screenshot    Consulta de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos de Venda
    RPA.Windows.Click         Confirmar
    Fechar janela
    
Contas a Receber
    ${nome_print}=     Set Variable     Contas a Receber
    [Tags]   SmokeERP   Vendedor   Consultas   SmokeTest
    Consultas                 Contas a Receber 
    RPA.Windows.Get Text      Consulta do Contas a Receber (1)
    repetidor de teclas       tab      11
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Base_Desktop.Screenshot    Consulta do Contas a Receber (1)    ${Caminho_Screenshots}Contas a Receber
    RPA.Windows.Click         Confirmar
    Fechar janela