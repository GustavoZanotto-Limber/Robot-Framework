*** Settings ***
Documentation    Smoke Test: Vendedor
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendedor/Movimentação/    
${nome_print}
${nome_exe}=    cde_win_VENDEDOR
*** Keywords ***

Movimentação
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas       right      1
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Pedidos de Venda
    ${nome_print}=     Set Variable     Pedidos de Venda
    [Tags]    Vendedor   Movimentação   SmokeTest
    Movimentação              Pedidos de Venda    
    RPA.Windows.Get Text      Pedidos de Venda (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos de Venda
    Fechar com Sim

Orçamentos
    ${nome_print}=     Set Variable     Orçamentos
    [Tags]    Vendedor   Movimentação   SmokeTest
    Movimentação              Orçamentos    
    RPA.Windows.Get Text      Orçamentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Orçamentos (1)    ${Caminho_Screenshots}Orçamentos
    RPA.Windows.Click         OK
    Fechar com Sim

Processos Personalizados
    ${nome_print}=     Set Variable     Processos Personalizados
    [Tags]    Vendedor   Movimentação   SmokeTest
    Movimentação              Processos Personalizados    
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseDesktop.Screenshot    Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click         Sair
    Fechar janela