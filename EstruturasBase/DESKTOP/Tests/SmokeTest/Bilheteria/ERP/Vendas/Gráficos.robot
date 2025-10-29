*** Settings ***
Documentation    Smoke Test: Vendas
Resource         ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Vendas/Gráficos/    
${nome_print}
${nome_exe}=    cde_win_ven
*** Keywords ***

Gráficos
    Cadastros
    Repetidor de Teclas     Right    7

*** Test Cases ***

Vendas/Prestação de Serviços - Evolução Diária
    ${nome_print}=     Set Variable     Vendas_Prestação de Serviços Evolução Diária
    [Tags]   SmokeERP   Vendas   Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Evolução Diária
    RPA.Windows.Get Text      Evolução Diária. (1)
    RPA.Windows.Click         Carregar 
    BaseKeywordsDesktop.Screenshot    Evolução Diária. (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Evolução Diária
    RPA.Windows.Click         OK
    Fechar janela

Vendas/Prestação de Serviços - Evolução Mensal
    ${nome_print}=     Set Variable     Vendas_Prestação de Serviços Evolução Mensal
    [Tags]   SmokeERP   Vendas   Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Evolução Mensal
    RPA.Windows.Get Text      Evolução Mensal. (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Evolução Mensal. (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Evolução Mensal
    RPA.Windows.Click         OK
    Fechar janela

Vendas/Prestação de Serviços - Evolução Anual
    ${nome_print}=     Set Variable     Vendas_Prestação de Serviços Evolução Anual
    [Tags]   SmokeERP   Vendas   Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Evolução Anual 
    RPA.Windows.Get Text      Evolução Anual. (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Evolução Anual. (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Evolução Anual
    RPA.Windows.Click         OK
    Fechar janela

Vendas/Prestação de Serviços - Sintético/Cliente
    ${nome_print}=     Set Variable     Vendas_Prestação de Serviços Sintético_Cliente
    [Tags]   SmokeERP   Vendas   Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Sintético/Cliente
    RPA.Windows.Get Text      Vendas/Prestação de Serviços / Cliente (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Vendas/Prestação de Serviços / Cliente (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Sintético_Cliente
    RPA.Windows.Click         OK
    Fechar janela

Vendas/Prestação de Serviços - Sintético/Setor
    ${nome_print}=     Set Variable     Vendas_Prestação de Serviços Sintético_Setor
    [Tags]   SmokeERP   Vendas   Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Sintético/Setor
    RPA.Windows.Get Text      Vendas/Prestação de Serviços / Setor (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Vendas/Prestação de Serviços / Setor (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Sintético_Setor
    Fechar janela

Vendas/Prestação de Serviços - Sintético/Item
    ${nome_print}=     Set Variable     Vendas_Prestação de Serviços Sintético_Item
    [Tags]   SmokeERP   Vendas   Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click         Vendas/Prestação de Serviços - Sintético/Item
    RPA.Windows.Get Text      Vendas/Prestação de Serviços / Item (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Vendas/Prestação de Serviços / Item (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços Sintético_Item
    Fechar janela