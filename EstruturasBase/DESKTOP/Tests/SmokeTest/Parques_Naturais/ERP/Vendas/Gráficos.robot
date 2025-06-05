*** Settings ***
Documentation    Smoke Test: Vendas
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_ven


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendas/Gráficos/    

*** Keywords ***

Gráficos
    Cadastros
    Repetidor de Teclas     Right    6

*** Test Cases ***

Vendas/Prestação de Serviços - Evolução Diária
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Vendas_Prestação de Serviços Evolução Diária
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Evolução Diária
    RPA.Windows.Get Text      Evolução Diária. (1)
    RPA.Windows.Click         Carregar 
    BaseDesktop.Screenshot    Evolução Diária. (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Evolução Diária
    RPA.Windows.Click         OK
    Fechar janela

Vendas/Prestação de Serviços - Evolução Mensal
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Vendas_Prestação de Serviços Evolução Mensal
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Evolução Mensal
    RPA.Windows.Get Text      Evolução Mensal. (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Evolução Mensal. (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Evolução Mensal
    RPA.Windows.Click         OK
    Fechar janela

Vendas/Prestação de Serviços - Evolução Anual
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Vendas_Prestação de Serviços Evolução Anual
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Evolução Anual 
    RPA.Windows.Get Text      Evolução Anual. (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Evolução Anual. (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Evolução Anual
    RPA.Windows.Click         OK
    Fechar janela

Vendas/Prestação de Serviços - Sintético/Cliente
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Vendas_Prestação de Serviços Sintético_Cliente
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Sintético/Cliente
    RPA.Windows.Get Text      Vendas/Prestação de Serviços / Cliente (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços / Cliente (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Sintético_Cliente
    RPA.Windows.Click         OK
    Fechar janela

Vendas/Prestação de Serviços - Sintético/Setor
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Vendas_Prestação de Serviços Sintético_Setor
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Sintético/Setor
    RPA.Windows.Get Text      Vendas/Prestação de Serviços / Setor (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços / Setor (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Sintético_Setor
    Fechar janela

Vendas/Prestação de Serviços - Sintético/Item
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Vendas_Prestação de Serviços Sintético_Item
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Sintético/Item
    RPA.Windows.Get Text      Vendas/Prestação de Serviços / Item (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços / Item (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Sintético_Item
    Fechar janela

Encerrar 
    Encerrar tudo