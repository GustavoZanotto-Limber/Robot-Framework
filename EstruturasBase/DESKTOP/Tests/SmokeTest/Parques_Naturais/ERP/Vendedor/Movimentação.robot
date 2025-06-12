*** Settings ***
Documentation    Smoke Test: Vendedor
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_VENDEDOR


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendedor/Movimentação/    

*** Keywords ***

Movimentação
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas       right      1
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Pedidos de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Pedidos de Venda
    Movimentação              Pedidos de Venda    
    RPA.Windows.Get Text      Pedidos de Venda (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos de Venda
    Fechar janela
    RPA.Windows.Click         Sim

Orçamentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Orçamentos
    Movimentação              Orçamentos    
    RPA.Windows.Get Text      Orçamentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Orçamentos (1)    ${Caminho_Screenshots}Orçamentos
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         Sim

Processos Personalizados
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Processos Personalizados
    Movimentação              Processos Personalizados    
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseDesktop.Screenshot    Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click         Sair
    Fechar janela

Encerrar
    Encerrar tudo