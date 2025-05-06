*** Settings ***
Documentation    Smoke Test: Compras
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Compras/Gráficos/    

*** Keywords ***

Gráficos
    Cadastros
    repetidor de teclas    Right    5

*** Test Cases ***

Compras/Aquisição de Serviços - Evolução Diária
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Evolução Diária
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Diária
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - Evolução Diária. (1)
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços - Evolução Diária. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Diária
    Fechar janela

Compras/Aquisição de Serviços - Evolução Mensal
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Evolução Mensal
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Mensal
    RPA.Windows.Get Text    Compras - Evolução Mensal. (1)
    BaseDesktop.Screenshot  Compras - Evolução Mensal. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Mensal
    Fechar janela

Compras/Aquisição de Serviços - Evolução Anual
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Evolução Anual
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Anual
    RPA.Windows.Get Text    Compras - Evolução Anual. (1)
    BaseDesktop.Screenshot  Compras - Evolução Anual. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Anual
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Fornecedor
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Sintético_Fornecedor
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Fornecedor
    RPA.Windows.Get Text    Compras/Aquisição de Serviços / Fornecedor. (1)
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços / Fornecedor. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Fornecedor
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Setor
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Sintético_Setor
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Setor
    RPA.Windows.Get Text    Compras - Aquisição de Serviços Sintético / Setor. (1)
    BaseDesktop.Screenshot  Compras - Aquisição de Serviços Sintético / Setor. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Setor
    Fechar janela

Encerrar
    Encerrar tudo